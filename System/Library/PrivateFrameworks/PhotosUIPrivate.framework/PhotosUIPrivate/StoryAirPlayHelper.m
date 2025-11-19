@interface StoryAirPlayHelper
- (id)contentViewControllerForAirPlayController:(id)a3;
- (void)airPlayControllerScreenAvailabilityChanged:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation StoryAirPlayHelper

- (id)contentViewControllerForAirPlayController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B3739B64();

  return v6;
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3739CDC(a3);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3739E70(v4);
}

@end