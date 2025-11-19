@interface BRCImportBookmark
+ (id)extractBookmarkDataFromTemplateItem:(id)a3 isTrashBookmark:(BOOL *)a4;
- (BRCImportBookmark)initWithBookmarkData:(id)a3 isTrashBookmark:(BOOL)a4 session:(id)a5;
@end

@implementation BRCImportBookmark

+ (id)extractBookmarkDataFromTemplateItem:(id)a3 isTrashBookmark:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 parentItemIdentifier];
  if ([v6 isEqualToString:*MEMORY[0x277CC6358]])
  {
    v7 = [v5 extendedAttributes];
    v8 = [v7 objectForKeyedSubscript:@"com.apple.clouddocs.private.trash-parent-bookmark#B"];
    if (v8)
    {
      v9 = v8;

      goto LABEL_12;
    }

    v16 = [v5 extendedAttributes];
    v9 = [v16 objectForKeyedSubscript:@"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.trash-parent-bookmark#N"];

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

  v10 = [v5 extendedAttributes];
  v11 = [v10 objectForKeyedSubscript:@"com.apple.clouddocs.private.share-bookmark#B"];
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

    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = [v5 extendedAttributes];
  v9 = [v12 objectForKeyedSubscript:@"com.apple.finder.copy.preserveinbackups.com.apple.clouddocs.private.share-bookmark#N"];

  if (v9)
  {
    goto LABEL_8;
  }

  v15 = 0;
  if (a4)
  {
LABEL_15:
    *a4 = v15;
  }

LABEL_16:

  return v9;
}

- (BRCImportBookmark)initWithBookmarkData:(id)a3 isTrashBookmark:(BOOL)a4 session:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = BRCImportBookmark;
  v10 = [(BRCImportBookmark *)&v15 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    v12 = 0;
    v10->_isTrashBookmark = a4;
LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v8, "bytes")}];
  v11->_isTrashBookmark = a4;
  if (!v12 || ![BRCLocalItem parseBookmarkData:v12 inAccountSession:v9 itemID:&v11->_itemID mangledID:&v11->_mangledID unsaltedBookmarkData:0 error:0])
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