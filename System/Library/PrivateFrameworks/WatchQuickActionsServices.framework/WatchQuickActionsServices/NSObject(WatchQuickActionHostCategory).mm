@interface NSObject(WatchQuickActionHostCategory)
- (void)setQuickActionHostObserver:()WatchQuickActionHostCategory;
@end

@implementation NSObject(WatchQuickActionHostCategory)

- (void)setQuickActionHostObserver:()WatchQuickActionHostCategory
{
  v7 = a3;
  v4 = objc_getAssociatedObject(self, &WQAHostObserverIdentifier);
  v5 = v4;
  if (v4)
  {
    [v4 setHostObserver:0];
  }

  if (v7)
  {
    v6 = objc_opt_new();
    [v6 setHostObserver:v7];
    objc_setAssociatedObject(self, &WQAHostObserverIdentifier, v6, 1);
  }

  else
  {
    objc_setAssociatedObject(self, &WQAHostObserverIdentifier, 0, 1);
  }
}

@end