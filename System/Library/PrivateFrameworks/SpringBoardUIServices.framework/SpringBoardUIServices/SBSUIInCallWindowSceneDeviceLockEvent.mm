@interface SBSUIInCallWindowSceneDeviceLockEvent
- (SBSUIInCallWindowSceneDeviceLockEvent)initWithSourceType:(int64_t)type;
@end

@implementation SBSUIInCallWindowSceneDeviceLockEvent

- (SBSUIInCallWindowSceneDeviceLockEvent)initWithSourceType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SBSUIInCallWindowSceneDeviceLockEvent;
  result = [(SBSUIInCallWindowSceneDeviceLockEvent *)&v5 init];
  if (result)
  {
    result->_sourceType = type;
  }

  return result;
}

@end