@interface SpatialPhoto.CinematicCameraAnimator
- (void)tick:(id)tick;
@end

@implementation SpatialPhoto.CinematicCameraAnimator

- (void)tick:(id)tick
{
  tickCopy = tick;

  sub_25E6D22A4(tickCopy);
}

@end