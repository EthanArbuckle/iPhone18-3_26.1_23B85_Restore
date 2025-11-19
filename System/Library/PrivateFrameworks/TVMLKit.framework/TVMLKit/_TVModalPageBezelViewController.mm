@interface _TVModalPageBezelViewController
- (CGSize)contentSize;
- (_TVModalPageBezelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setBezelBackgroundColor:(id)a3;
- (void)setBezelCornerRadius:(double)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _TVModalPageBezelViewController

- (_TVModalPageBezelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = _TVModalPageBezelViewController;
  result = [(_TVModalPageBezelViewController *)&v5 initWithNibName:a3 bundle:a4];
  if (result)
  {
    result->_contentSize = xmmword_26CE87E10;
  }

  return result;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = _TVModalPageBezelViewController;
  [(_TVModalPageBezelViewController *)&v8 viewDidLoad];
  v3 = [(UIViewController *)self->_contentViewController view];
  v4 = [v3 layer];
  [v4 setCornerRadius:self->_bezelCornerRadius];

  v5 = [(UIViewController *)self->_contentViewController view];
  v6 = v5;
  if (self->_bezelBackgroundColor)
  {
    [v5 setBackgroundColor:?];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVModalPageBezelViewController;
  [(_TVModalPageBezelViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(_TVModalPageBezelViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIViewController *)self->_contentViewController view];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  CGRectGetWidth(v16);
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  CGRectGetHeight(v17);
  v13 = [(_TVModalPageBezelViewController *)self view];
  [v13 bounds];
  UIRectCenteredIntegralRect();
  [v12 setFrame:?];

  v14 = [(UIViewController *)self->_contentViewController view];
  [v14 setAutoresizingMask:45];
}

- (void)setBezelCornerRadius:(double)a3
{
  if (vabdd_f64(self->_bezelCornerRadius, a3) > 0.00000011920929)
  {
    self->_bezelCornerRadius = a3;
    v5 = [(UIViewController *)self->_contentViewController view];
    v4 = [v5 layer];
    [v4 setCornerRadius:self->_bezelCornerRadius];
  }
}

- (void)setBezelBackgroundColor:(id)a3
{
  v8 = a3;
  if (([(UIColor *)self->_bezelBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_bezelBackgroundColor, a3);
    v5 = [(UIViewController *)self->_contentViewController view];
    v6 = v5;
    if (self->_bezelBackgroundColor)
    {
      [v5 setBackgroundColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] systemBackgroundColor];
      [v6 setBackgroundColor:v7];
    }
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    a3.width = 524.0;
  }

  if (a3.height <= 0.0)
  {
    a3.height = 547.0;
  }

  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    v5 = [(_TVModalPageBezelViewController *)self view];
    [v5 setNeedsLayout];
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  contentViewController = self->_contentViewController;
  v11 = v5;
  if (contentViewController != v5)
  {
    if (contentViewController)
    {
      [(UIViewController *)contentViewController willMoveToParentViewController:0];
      v7 = [(UIViewController *)self->_contentViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_contentViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    if (self->_contentViewController)
    {
      [(_TVModalPageBezelViewController *)self addChildViewController:?];
      v8 = [(_TVModalPageBezelViewController *)self view];
      v9 = [(UIViewController *)self->_contentViewController view];
      [v8 addSubview:v9];

      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
      v10 = [(_TVModalPageBezelViewController *)self view];
      [v10 setNeedsLayout];
    }
  }
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end