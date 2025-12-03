@interface LumaTrackingView.Coordinator
- (void)lumaTrackingView:(id)view didTransitionToLevel:(int64_t)level;
@end

@implementation LumaTrackingView.Coordinator

- (void)lumaTrackingView:(id)view didTransitionToLevel:(int64_t)level
{
  viewCopy = view;
  selfCopy = self;
  sub_1C1013CFC();
}

@end