@interface SBPressGestureStateInfo
- (SBPressGestureStateInfo)init;
@end

@implementation SBPressGestureStateInfo

- (SBPressGestureStateInfo)init
{
  v3.receiver = self;
  v3.super_class = SBPressGestureStateInfo;
  result = [(SBPressGestureStateInfo *)&v3 init];
  if (result)
  {
    result->_isCoalescing = 0;
    result->_expirationTime = -1.0;
  }

  return result;
}

@end