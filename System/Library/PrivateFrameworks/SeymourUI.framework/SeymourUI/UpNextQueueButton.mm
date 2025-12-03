@interface UpNextQueueButton
- (void)primaryActionTriggered:(id)triggered;
@end

@implementation UpNextQueueButton

- (void)primaryActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  selfCopy = self;
  sub_20BAB8204(triggeredCopy);
}

@end