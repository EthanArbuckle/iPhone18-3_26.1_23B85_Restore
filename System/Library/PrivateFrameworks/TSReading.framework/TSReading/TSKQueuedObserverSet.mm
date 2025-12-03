@interface TSKQueuedObserverSet
+ (id)queuedObserverSetWithChangeType:(int)type observer:(id)observer changeSource:(id)source isClass:(BOOL)class;
- (void)dealloc;
@end

@implementation TSKQueuedObserverSet

+ (id)queuedObserverSetWithChangeType:(int)type observer:(id)observer changeSource:(id)source isClass:(BOOL)class
{
  v10 = objc_alloc_init(TSKQueuedObserverSet);
  v10->mChangeType = type;
  v10->mObserver = observer;
  v10->mChangeSource = source;
  v10->mIsClass = class;

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKQueuedObserverSet;
  [(TSKQueuedObserverSet *)&v3 dealloc];
}

@end