@interface NSObject(WBSDeallocationSentinel)
- (void)safari_removeDeallocationSentinelForObserver:()WBSDeallocationSentinel;
- (void)safari_setDeallocationSentinelForObserver:()WBSDeallocationSentinel withContext:;
@end

@implementation NSObject(WBSDeallocationSentinel)

- (void)safari_setDeallocationSentinelForObserver:()WBSDeallocationSentinel withContext:
{
  v6 = a4;
  v7 = a3;
  value = [[_WBSDeallocationSentinel alloc] initWithObserver:v7 context:v6];

  objc_setAssociatedObject(self, v7, value, 1);
}

- (void)safari_removeDeallocationSentinelForObserver:()WBSDeallocationSentinel
{
  v4 = a3;
  v5 = objc_getAssociatedObject(self, v4);
  [v5 setObserver:0];
  objc_setAssociatedObject(self, v4, 0, 1);
}

@end