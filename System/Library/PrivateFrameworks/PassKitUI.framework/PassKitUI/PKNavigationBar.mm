@interface PKNavigationBar
- (void)didAddSubview:(id)subview;
@end

@implementation PKNavigationBar

- (void)didAddSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = PKNavigationBar;
  subviewCopy = subview;
  [(PKNavigationBar *)&v4 didAddSubview:subviewCopy];
  [subviewCopy setExclusiveTouch:{1, v4.receiver, v4.super_class}];
}

@end