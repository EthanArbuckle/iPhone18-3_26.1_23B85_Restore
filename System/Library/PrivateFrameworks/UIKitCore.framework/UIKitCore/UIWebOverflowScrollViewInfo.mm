@interface UIWebOverflowScrollViewInfo
- (UIWebOverflowScrollViewInfo)initWithScrollView:(id)view;
- (void)dealloc;
@end

@implementation UIWebOverflowScrollViewInfo

- (UIWebOverflowScrollViewInfo)initWithScrollView:(id)view
{
  v7.receiver = self;
  v7.super_class = UIWebOverflowScrollViewInfo;
  v4 = [(UIWebOverflowScrollViewInfo *)&v7 init];
  if (v4)
  {
    viewCopy = view;
    v4->_scrollView = viewCopy;
    v4->_scrollViewLayer = [(UIView *)viewCopy layer];
    v4->_oldSuperview = [view superview];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebOverflowScrollViewInfo;
  [(UIWebOverflowScrollViewInfo *)&v3 dealloc];
}

@end