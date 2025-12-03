@interface WBReadingList
+ (WBReadingList)defaultReadingList;
- (BOOL)addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text error:(id *)error;
- (WBReadingList)init;
- (id)_init;
@end

@implementation WBReadingList

+ (WBReadingList)defaultReadingList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WBReadingList_defaultReadingList__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultReadingList_onceToken != -1)
  {
    dispatch_once(&defaultReadingList_onceToken, block);
  }

  v2 = defaultReadingList_wbReadingList;

  return v2;
}

uint64_t __35__WBReadingList_defaultReadingList__block_invoke(uint64_t a1)
{
  defaultReadingList_wbReadingList = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (WBReadingList)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Misuse of WBReadingList interface. Use class method defaultReadingList." userInfo:0];
  objc_exception_throw(v2);
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = WBReadingList;
  v2 = [(WBReadingList *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBReadingListPrivate);
    v4 = v2->_private;
    v2->_private = v3;

    v5 = dispatch_queue_create("com.apple.WebBookmarks.AddToReadingListQueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = v2;
  }

  return v2;
}

- (BOOL)addReadingListItemWithURL:(id)l title:(id)title previewText:(id)text error:(id *)error
{
  lCopy = l;
  titleCopy = title;
  textCopy = text;
  v13 = [WBReadingList supportsURL:lCopy];
  if (!v13)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBReadingList addReadingListItemWithURL:v15 title:? previewText:? error:?];
      if (!error)
      {
        goto LABEL_6;
      }
    }

    else if (!error)
    {
      goto LABEL_6;
    }

    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"WBErrorDomain" code:1 userInfo:0];
    goto LABEL_6;
  }

  serialQueue = self->_serialQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__WBReadingList_addReadingListItemWithURL_title_previewText_error___block_invoke;
  v17[3] = &unk_279E75C98;
  v17[4] = self;
  v18 = lCopy;
  v19 = titleCopy;
  v20 = textCopy;
  dispatch_async(serialQueue, v17);

LABEL_6:
  return v13;
}

@end