@interface _TVModalPageBezelViewController
- (CGSize)contentSize;
- (_TVModalPageBezelViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setBezelBackgroundColor:(id)color;
- (void)setBezelCornerRadius:(double)radius;
- (void)setContentSize:(CGSize)size;
- (void)setContentViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _TVModalPageBezelViewController

- (_TVModalPageBezelViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = _TVModalPageBezelViewController;
  result = [(_TVModalPageBezelViewController *)&v5 initWithNibName:name bundle:bundle];
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
  view = [(UIViewController *)self->_contentViewController view];
  layer = [view layer];
  [layer setCornerRadius:self->_bezelCornerRadius];

  view2 = [(UIViewController *)self->_contentViewController view];
  v6 = view2;
  if (self->_bezelBackgroundColor)
  {
    [view2 setBackgroundColor:?];
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:systemBackgroundColor];
  }
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVModalPageBezelViewController;
  [(_TVModalPageBezelViewController *)&v15 viewDidLayoutSubviews];
  view = [(_TVModalPageBezelViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(UIViewController *)self->_contentViewController view];
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
  view3 = [(_TVModalPageBezelViewController *)self view];
  [view3 bounds];
  UIRectCenteredIntegralRect();
  [view2 setFrame:?];

  view4 = [(UIViewController *)self->_contentViewController view];
  [view4 setAutoresizingMask:45];
}

- (void)setBezelCornerRadius:(double)radius
{
  if (vabdd_f64(self->_bezelCornerRadius, radius) > 0.00000011920929)
  {
    self->_bezelCornerRadius = radius;
    view = [(UIViewController *)self->_contentViewController view];
    layer = [view layer];
    [layer setCornerRadius:self->_bezelCornerRadius];
  }
}

- (void)setBezelBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_bezelBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_bezelBackgroundColor, color);
    view = [(UIViewController *)self->_contentViewController view];
    v6 = view;
    if (self->_bezelBackgroundColor)
    {
      [view setBackgroundColor:?];
    }

    else
    {
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [v6 setBackgroundColor:systemBackgroundColor];
    }
  }
}

- (void)setContentSize:(CGSize)size
{
  if (size.width <= 0.0)
  {
    size.width = 524.0;
  }

  if (size.height <= 0.0)
  {
    size.height = 547.0;
  }

  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    view = [(_TVModalPageBezelViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  v11 = controllerCopy;
  if (contentViewController != controllerCopy)
  {
    if (contentViewController)
    {
      [(UIViewController *)contentViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_contentViewController view];
      [view removeFromSuperview];

      [(UIViewController *)self->_contentViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    if (self->_contentViewController)
    {
      [(_TVModalPageBezelViewController *)self addChildViewController:?];
      view2 = [(_TVModalPageBezelViewController *)self view];
      view3 = [(UIViewController *)self->_contentViewController view];
      [view2 addSubview:view3];

      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
      view4 = [(_TVModalPageBezelViewController *)self view];
      [view4 setNeedsLayout];
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