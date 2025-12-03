@interface VideosExtrasArtworkLayoutTriggeringView
- (void)_imageDidChange;
@end

@implementation VideosExtrasArtworkLayoutTriggeringView

- (void)_imageDidChange
{
  superview = [(VideosExtrasArtworkLayoutTriggeringView *)self superview];
  [superview setNeedsLayout];
}

@end