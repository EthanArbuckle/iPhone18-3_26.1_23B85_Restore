@interface TSKQueuedObserverSet
+ (id)queuedObserverSetWithChangeType:(int)a3 observer:(id)a4 changeSource:(id)a5 isClass:(BOOL)a6;
- (void)dealloc;
@end

@implementation TSKQueuedObserverSet

+ (id)queuedObserverSetWithChangeType:(int)a3 observer:(id)a4 changeSource:(id)a5 isClass:(BOOL)a6
{
  v10 = objc_alloc_init(TSKQueuedObserverSet);
  v10->mChangeType = a3;
  v10->mObserver = a4;
  v10->mChangeSource = a5;
  v10->mIsClass = a6;

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKQueuedObserverSet;
  [(TSKQueuedObserverSet *)&v3 dealloc];
}

@end