@interface NoopFilePresenter
- (NoopFilePresenter)initWithURL:(id)a3;
@end

@implementation NoopFilePresenter

- (NoopFilePresenter)initWithURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NoopFilePresenter;
  v6 = [(NoopFilePresenter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentedItemURL, a3);
    v8 = objc_alloc_init(NSOperationQueue);
    presentedItemOperationQueue = v7->_presentedItemOperationQueue;
    v7->_presentedItemOperationQueue = v8;

    [(NSOperationQueue *)v7->_presentedItemOperationQueue setMaxConcurrentOperationCount:1];
    [NSFileCoordinator addFilePresenter:v7];
  }

  return v7;
}

@end