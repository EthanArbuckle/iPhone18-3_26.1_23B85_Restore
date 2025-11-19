@interface WBReadingListPrivate
- (WBReadingListPrivate)init;
- (void)_addReadingListItemWithURL:(id)a3 title:(id)a4 previewText:(id)a5;
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

- (void)_addReadingListItemWithURL:(id)a3 title:(id)a4 previewText:(id)a5
{
  v21 = a4;
  v8 = a5;
  v9 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = [v9 absoluteString];

  v12 = [v11 UTF8String];
  if (v21)
  {
    v13 = [WebBookmark _trimmedTitle:?];
    v14 = [v13 UTF8String];

    if (v8)
    {
LABEL_3:
      v15 = [WebBookmark _trimmedPreviewText:v8];
      v16 = [v15 UTF8String];

      goto LABEL_6;
    }
  }

  else
  {
    v14 = "";
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v16 = "";
LABEL_6:
  xpc_dictionary_set_string(v10, kWebBookmarksAddressKey, v12);
  xpc_dictionary_set_string(v10, kWebBookmarksTitleKey, v14);
  xpc_dictionary_set_string(v10, kWebBookmarksPreviewTextKey, v16);
  v17 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksAddToReadingListMessageName];
  xpc_dictionary_set_value(v17, kWebBookmarksItemKey, v10);
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v17];
  v18 = +[WBFeatureManager sharedFeatureManager];
  v19 = [v18 isOfflineReadingListAvailable];

  if (v19)
  {
    v20 = objc_alloc_init(SafariFetcherServerProxy);
    [(SafariFetcherServerProxy *)v20 startReadingListFetcher];
  }
}

@end