@interface TSKDocumentRootICloudObserver
- (TSKDocumentRootICloudObserver)initWithBlock:(id)block;
- (void)dealloc;
- (void)invokeWithDocumentRoot:(id)root;
@end

@implementation TSKDocumentRootICloudObserver

- (TSKDocumentRootICloudObserver)initWithBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = TSKDocumentRootICloudObserver;
  v4 = [(TSKDocumentRootICloudObserver *)&v8 init];
  if (v4)
  {
    v5 = [block copy];
    v6 = atomic_fetch_add_explicit(&nextICloudObserverID, 1uLL, memory_order_relaxed) + 1;
    v4->_block = v5;
    v4->_identifer = v6;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKDocumentRootICloudObserver;
  [(TSKDocumentRootICloudObserver *)&v3 dealloc];
}

- (void)invokeWithDocumentRoot:(id)root
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRootICloudObserver invokeWithDocumentRoot:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 112, @"This operation must only be performed on the main thread."}];
  }

  v6 = *(self->_block + 2);

  v6();
}

@end