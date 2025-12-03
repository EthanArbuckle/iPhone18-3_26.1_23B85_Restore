@interface BRCImportBookmark
+ (id)extractBookmarkDataFromTemplateItem:(id)item isTrashBookmark:(BOOL *)bookmark;
- (BRCImportBookmark)initWithBookmarkData:(id)data isTrashBookmark:(BOOL)bookmark session:(id)session;
@end

@implementation BRCImportBookmark

+ (id)extractBookmarkDataFromTemplateItem:(id)item isTrashBookmark:(BOOL *)bookmark
{
  itemCopy = item;
  parentItemIdentifier = [itemCopy parentItemIdentifier];
  if ([parentItemIdentifier isEqualToString:*MEMORY[0x277CC6358]])
  {
    extendedAttributes = [itemCopy extendedAttributes];
    v8 = [extendedAttributes objectForKeyedSubscript:@"com.apple.clouddocs.private.trash-parent-bookmark#B"];
    if (v8)
    {
      v9 = v8;

      goto LABEL_12;
    }

    extendedAttributes2 = [itemCopy extendedAttributes];
    v9 = [extendedAttributes2 objectForKeyedSubscript:@"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.trash-parent-bookmark#N"];

    if (v9)
    {
LABEL_12:
      v13 = brc_bread_crumbs();
      v15 = 1;
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [BRCImportBookmark extractBookmarkDataFromTemplateItem:v13 isTrashBookmark:v14];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  extendedAttributes3 = [itemCopy extendedAttributes];
  v11 = [extendedAttributes3 objectForKeyedSubscript:@"com.apple.clouddocs.private.share-bookmark#B"];
  if (v11)
  {
    v9 = v11;

LABEL_8:
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCImportBookmark extractBookmarkDataFromTemplateItem:v13 isTrashBookmark:v14];
    }

    v15 = 0;
LABEL_14:

    if (!bookmark)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  extendedAttributes4 = [itemCopy extendedAttributes];
  v9 = [extendedAttributes4 objectForKeyedSubscript:@"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.share-bookmark#N"];

  if (v9)
  {
    goto LABEL_8;
  }

  v15 = 0;
  if (bookmark)
  {
LABEL_15:
    *bookmark = v15;
  }

LABEL_16:

  return v9;
}

- (BRCImportBookmark)initWithBookmarkData:(id)data isTrashBookmark:(BOOL)bookmark session:(id)session
{
  dataCopy = data;
  sessionCopy = session;
  v15.receiver = self;
  v15.super_class = BRCImportBookmark;
  v10 = [(BRCImportBookmark *)&v15 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  if (!dataCopy)
  {
    v12 = 0;
    v10->_isTrashBookmark = bookmark;
LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(dataCopy, "bytes")}];
  v11->_isTrashBookmark = bookmark;
  if (!v12 || ![BRCLocalItem parseBookmarkData:v12 inAccountSession:sessionCopy itemID:&v11->_itemID mangledID:&v11->_mangledID unsaltedBookmarkData:0 error:0])
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = v11;
LABEL_9:

  return v13;
}

+ (void)extractBookmarkDataFromTemplateItem:(uint64_t)a1 isTrashBookmark:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Trashed item has bookmark data for import%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)extractBookmarkDataFromTemplateItem:(uint64_t)a1 isTrashBookmark:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Shared item has bookmark data for import%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end