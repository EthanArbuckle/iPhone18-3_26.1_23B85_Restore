@interface TSPDownloadObserverManager
- (TSPDownloadObserverManager)init;
- (void)addDownloadObserver:(id)a3 forData:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)notifyDownloadObserversForData:(id)a3 withStatus:(int64_t)a4 info:(id)a5 wait:(BOOL)a6;
@end

@implementation TSPDownloadObserverManager

- (TSPDownloadObserverManager)init
{
  v11.receiver = self;
  v11.super_class = TSPDownloadObserverManager;
  v2 = [(TSPDownloadObserverManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TSPCachedDocumentResourceDownloadObserverManager.Action", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = objc_alloc(MEMORY[0x277CCAB00]);
    v8 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v6, v7, 517, 0, 1);
    downloadObserversMap = v2->_downloadObserversMap;
    v2->_downloadObserversMap = v8;
  }

  return v2;
}

- (void)addDownloadObserver:(id)a3 forData:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 && v11)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276ADD5C4;
    block[3] = &unk_27A6E6F58;
    block[4] = self;
    v14 = v11;
    v18 = v14;
    v19 = v10;
    v21 = a5;
    v20 = v12;
    dispatch_async(accessQueue, block);
    objc_msgSend_didAddDownloadObserver(v14, v15, v16);
  }
}

- (void)notifyDownloadObserversForData:(id)a3 withStatus:(int64_t)a4 info:(id)a5 wait:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276ADD764;
    v14[3] = &unk_27A6E6F80;
    v14[4] = self;
    v15 = v10;
    v17 = a4;
    v16 = v11;
    v12 = _Block_copy(v14);
    accessQueue = self->_accessQueue;
    if (v6)
    {
      dispatch_sync(accessQueue, v12);
    }

    else
    {
      dispatch_async(accessQueue, v12);
    }
  }
}

@end