@interface CACNetworkState
+ (BOOL)currentPathIsSatisfied;
@end

@implementation CACNetworkState

+ (BOOL)currentPathIsSatisfied
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return *(static CACNetworkState.shared + OBJC_IVAR___CACNetworkState_satisfied) & 1;
}

@end