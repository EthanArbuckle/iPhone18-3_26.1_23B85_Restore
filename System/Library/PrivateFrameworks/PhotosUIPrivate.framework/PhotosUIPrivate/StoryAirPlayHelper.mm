@interface StoryAirPlayHelper
- (id)contentViewControllerForAirPlayController:(id)controller;
- (void)airPlayControllerScreenAvailabilityChanged:(id)changed;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation StoryAirPlayHelper

- (id)contentViewControllerForAirPlayController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1B3739B64();

  return v6;
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1B3739CDC(changed);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1B3739E70(dismissCopy);
}

@end