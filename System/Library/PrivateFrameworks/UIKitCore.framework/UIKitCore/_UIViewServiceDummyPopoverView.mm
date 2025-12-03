@interface _UIViewServiceDummyPopoverView
- (void)setUseToolbarShine:(BOOL)shine;
@end

@implementation _UIViewServiceDummyPopoverView

- (void)setUseToolbarShine:(BOOL)shine
{
  shineCopy = shine;
  popoverController = [(_UIPopoverView *)self popoverController];
  [popoverController _popoverView:self didSetUseToolbarShine:shineCopy];
}

@end