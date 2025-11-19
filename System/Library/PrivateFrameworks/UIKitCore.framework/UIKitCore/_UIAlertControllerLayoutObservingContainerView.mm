@interface _UIAlertControllerLayoutObservingContainerView
- (void)layoutSubviews;
@end

@implementation _UIAlertControllerLayoutObservingContainerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UIAlertControllerLayoutObservingContainerView;
  [(UIView *)&v5 layoutSubviews];
  v3 = [(_UIAlertControllerLayoutObservingContainerView *)self postLayoutBlock];

  if (v3)
  {
    v4 = [(_UIAlertControllerLayoutObservingContainerView *)self postLayoutBlock];
    v4[2]();
  }
}

@end