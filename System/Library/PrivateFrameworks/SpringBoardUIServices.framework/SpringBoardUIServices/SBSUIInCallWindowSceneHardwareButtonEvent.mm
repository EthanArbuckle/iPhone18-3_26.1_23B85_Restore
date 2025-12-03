@interface SBSUIInCallWindowSceneHardwareButtonEvent
- (SBSUIInCallWindowSceneHardwareButtonEvent)initWithButtonEventType:(int64_t)type;
@end

@implementation SBSUIInCallWindowSceneHardwareButtonEvent

- (SBSUIInCallWindowSceneHardwareButtonEvent)initWithButtonEventType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = SBSUIInCallWindowSceneHardwareButtonEvent;
  result = [(SBSUIInCallWindowSceneHardwareButtonEvent *)&v5 init];
  if (result)
  {
    result->_buttonEventType = type;
  }

  return result;
}

@end