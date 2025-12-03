@interface WBReadingListPrivate
- (WBReadingListPrivate)init;
- (void)_addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text;
@end

@implementation WBReadingListPrivate

- (WBReadingListPrivate)init
{
  v8.receiver = self;
  v8.super_class = WBReadingListPrivate;
  v2 = [(WBReadingListPrivate *)&v8 init];
  if (v2)
  {
    v3 = [WebBookmarksXPCConnection alloc];
    v4 = [(WebBookmarksXPCConnection *)v3 initClientForMachService:kWebBookmarksdServiceName];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = v2;
  }

  return v2;
}

- (void)_addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text
{
  titleCopy = title;
  textCopy = text;
  lCopy = l;
  v10 = xpc_dictionary_create(0, 0, 0);
  absoluteString = [lCopy absoluteString];

  uTF8String = [absoluteString UTF8String];
  if (titleCopy)
  {
    v13 = [WebBookmark _trimmedTitle:?];
    uTF8String2 = [v13 UTF8String];

    if (textCopy)
    {
LABEL_3:
      v15 = [WebBookmark _trimmedPreviewText:textCopy];
      uTF8String3 = [v15 UTF8String];

      goto LABEL_6;
    }
  }

  else
  {
    uTF8String2 = "";
    if (textCopy)
    {
      goto LABEL_3;
    }
  }

  uTF8String3 = "";
LABEL_6:
  xpc_dictionary_set_string(v10, kWebBookmarksAddressKey, uTF8String);
  xpc_dictionary_set_string(v10, kWebBookmarksTitleKey, uTF8String2);
  xpc_dictionary_set_string(v10, kWebBookmarksPreviewTextKey, uTF8String3);
  v17 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksAddToReadingListMessageName];
  xpc_dictionary_set_value(v17, kWebBookmarksItemKey, v10);
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v17];
  v18 = +[WBFeatureManager sharedFeatureManager];
  isOfflineReadingListAvailable = [v18 isOfflineReadingListAvailable];

  if (isOfflineReadingListAvailable)
  {
    v20 = objc_alloc_init(SafariFetcherServerProxy);
    [(SafariFetcherServerProxy *)v20 startReadingListFetcher];
  }
}

@end