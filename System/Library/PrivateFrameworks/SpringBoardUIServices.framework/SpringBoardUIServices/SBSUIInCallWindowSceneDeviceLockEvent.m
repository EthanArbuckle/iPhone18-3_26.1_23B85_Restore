@interface SBSUIInCallWindowSceneDeviceLockEvent
- (SBSUIInCallWindowSceneDeviceLockEvent)initWithSourceType:(int64_t)a3;
@end

@implementation SBSUIInCallWindowSceneDeviceLockEvent

- (SBSUIInCallWindowSceneDeviceLockEvent)initWithSourceType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBSUIInCallWindowSceneDeviceLockEvent;
  result = [(SBSUIInCallWindowSceneDeviceLockEvent *)&v5 init];
  if (result)
  {
    result->_sourceType = a3;
  }

  return result;
}

@end