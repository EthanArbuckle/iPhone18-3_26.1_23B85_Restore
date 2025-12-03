@interface _UIAlertControllerLayoutObservingContainerView
- (void)layoutSubviews;
@end

@implementation _UIAlertControllerLayoutObservingContainerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerLayoutObservingContainerView;
  [(UIView *)&v5 layoutSubviews];
  postLayoutBlock = [(_UIAlertControllerLayoutObservingContainerView *)self postLayoutBlock];

  if (postLayoutBlock)
  {
    postLayoutBlock2 = [(_UIAlertControllerLayoutObservingContainerView *)self postLayoutBlock];
    postLayoutBlock2[2]();
  }
}

@end