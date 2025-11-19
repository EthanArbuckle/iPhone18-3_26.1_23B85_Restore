@interface UIWebOverflowScrollViewInfo
- (UIWebOverflowScrollViewInfo)initWithScrollView:(id)a3;
- (void)dealloc;
@end

@implementation UIWebOverflowScrollViewInfo

- (UIWebOverflowScrollViewInfo)initWithScrollView:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIWebOverflowScrollViewInfo;
  v4 = [(UIWebOverflowScrollViewInfo *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_scrollView = v5;
    v4->_scrollViewLayer = [(UIView *)v5 layer];
    v4->_oldSuperview = [a3 superview];
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