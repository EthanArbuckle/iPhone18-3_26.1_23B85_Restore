@interface _UIViewServiceDummyPopoverView
- (void)setUseToolbarShine:(BOOL)a3;
@end

@implementation _UIViewServiceDummyPopoverView

- (void)setUseToolbarShine:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPopoverView *)self popoverController];
  [v5 _popoverView:self didSetUseToolbarShine:v3];
}

@end