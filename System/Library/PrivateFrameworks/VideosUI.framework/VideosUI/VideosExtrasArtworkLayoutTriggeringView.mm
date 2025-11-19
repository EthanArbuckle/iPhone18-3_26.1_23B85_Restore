@interface VideosExtrasArtworkLayoutTriggeringView
- (void)_imageDidChange;
@end

@implementation VideosExtrasArtworkLayoutTriggeringView

- (void)_imageDidChange
{
  v2 = [(VideosExtrasArtworkLayoutTriggeringView *)self superview];
  [v2 setNeedsLayout];
}

@end