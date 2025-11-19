@interface _UIOPrototypeMenuBarSummonButtonViewController
- (CGPoint)locationForCorner:(int64_t)a3;
- (_UIOPrototypeMenuBarSummonButtonViewController)init;
- (id)_imageForButton;
- (int64_t)closestCornerForPoint:(CGPoint)a3;
- (void)handlePan:(id)a3;
- (void)setCorner:(int64_t)a3;
- (void)setMenuBarPresented:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation _UIOPrototypeMenuBarSummonButtonViewController

- (_UIOPrototypeMenuBarSummonButtonViewController)init
{
  v3.receiver = self;
  v3.super_class = _UIOPrototypeMenuBarSummonButtonViewController;
  result = [(UIViewController *)&v3 init];
  if (result)
  {
    result->_corner = 2;
  }

  return result;
}

- (void)setCorner:(int64_t)a3
{
  if (self->_corner != a3)
  {
    self->_corner = a3;
    v4 = [(UIViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (int64_t)closestCornerForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(UIViewController *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v8;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  MidY = CGRectGetMidY(v20);
  v17 = 2;
  if (MidX < x)
  {
    v17 = 3;
  }

  if (MidY >= y)
  {
    return MidX < x;
  }

  else
  {
    return v17;
  }
}

- (CGPoint)locationForCorner:(int64_t)a3
{
  v5 = [(UIViewController *)self view];
  v6 = [v5 safeAreaLayoutGuide];
  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  corner = self->_corner;
  if (corner <= 1)
  {
    if (corner)
    {
      if (corner == 1)
      {
        v23.origin.x = v8;
        v23.origin.y = v10;
        v23.size.width = v12;
        v23.size.height = v14;
        v3 = CGRectGetMaxX(v23) + -75.0;
        v24.origin.x = v8;
        v24.origin.y = v10;
        v24.size.width = v12;
        v24.size.height = v14;
        MinY = CGRectGetMinY(v24);
        v18 = 75.0;
LABEL_11:
        v15 = MinY + v18;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v27.origin.x = v8;
    v27.origin.y = v10;
    v27.size.width = v12;
    v27.size.height = v14;
    v19 = 75.0;
    v3 = CGRectGetMinX(v27) + 75.0;
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    MaxY = CGRectGetMinY(v28);
LABEL_9:
    v15 = MaxY + v19;
    goto LABEL_12;
  }

  if (corner == 2)
  {
    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    v3 = CGRectGetMinX(v29) + 75.0;
    v30.origin.x = v8;
    v30.origin.y = v10;
    v30.size.width = v12;
    v30.size.height = v14;
    MinY = CGRectGetMaxY(v30);
    v18 = -75.0;
    goto LABEL_11;
  }

  if (corner == 3)
  {
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    v19 = -75.0;
    v3 = CGRectGetMaxX(v25) + -75.0;
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    MaxY = CGRectGetMaxY(v26);
    goto LABEL_9;
  }

LABEL_12:
  v21 = v3;
  result.y = v15;
  result.x = v21;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIOPrototypeMenuBarSummonButtonViewController;
  [(UIViewController *)&v3 viewDidLayoutSubviews];
  [(_UIOPrototypeMenuBarSummonButtonViewController *)self locationForCorner:self->_corner];
  [(UIView *)self->_button setCenter:?];
}

- (void)setMenuBarPresented:(BOOL)a3
{
  if (self->_menuBarPresented != a3)
  {
    self->_menuBarPresented = a3;
    button = self->_button;
    if (button)
    {
      v6 = [(UIButton *)button configuration];
      v5 = [(_UIOPrototypeMenuBarSummonButtonViewController *)self _imageForButton];
      [v6 setImage:v5];

      [(UIButton *)self->_button setConfiguration:v6];
    }
  }
}

- (id)_imageForButton
{
  if (self->_menuBarPresented)
  {
    v2 = @"menubar.arrow.up.rectangle";
  }

  else
  {
    v2 = @"menubar.arrow.down.rectangle";
  }

  v3 = [UIImage systemImageNamed:v2];

  return v3;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = _UIOPrototypeMenuBarSummonButtonViewController;
  [(UIViewController *)&v32 viewDidLoad];
  v3 = +[UIButtonConfiguration grayButtonConfiguration];
  v4 = [(_UIOPrototypeMenuBarSummonButtonViewController *)self _imageForButton];
  [v3 setImage:v4];

  v5 = [UIImageSymbolConfiguration configurationWithPointSize:30.0];
  v6 = [UIImageSymbolConfiguration configurationWithWeight:6];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  [v3 setPreferredSymbolConfigurationForImage:v7];
  v8 = [UIBlurEffect effectWithStyle:10];
  v9 = [v3 background];
  [v9 setVisualEffect:v8];

  [v3 setCornerStyle:4];
  [v3 setContentInsets:{20.0, 18.0, 20.0, 18.0}];
  v10 = +[UIColor systemFillColor];
  v11 = [v3 background];
  [v11 setStrokeColor:v10];

  v12 = [v3 background];
  [v12 setStrokeWidth:0.5];

  v13 = [v3 background];
  v14 = [v13 shadowProperties];
  [v14 setRadius:5.0];

  v15 = +[UIColor blackColor];
  v16 = [v3 background];
  v17 = [v16 shadowProperties];
  [v17 setColor:v15];

  v18 = [v3 background];
  v19 = [v18 shadowProperties];
  [v19 setOpacity:0.15];

  objc_initWeak(&location, self);
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __61___UIOPrototypeMenuBarSummonButtonViewController_viewDidLoad__block_invoke;
  v29 = &unk_1E70F7450;
  objc_copyWeak(&v30, &location);
  v20 = [UIAction actionWithHandler:&v26];
  v21 = [UIButton buttonWithConfiguration:v3 primaryAction:v20, v26, v27, v28, v29];
  button = self->_button;
  self->_button = v21;

  v23 = +[UIColor systemBlueColor];
  [(UIButton *)self->_button setTintColor:v23];

  [(UIView *)self->_button setAlpha:0.0];
  [(UIView *)self->_button setUserInteractionEnabled:0];
  [(UIView *)self->_button sizeToFit];
  v24 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_handlePan_];
  [(UIView *)self->_button addGestureRecognizer:v24];
  v25 = [(UIViewController *)self view];
  [v25 addSubview:self->_button];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIOPrototypeMenuBarSummonButtonViewController;
  [(UIViewController *)&v5 viewDidAppear:a3];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64___UIOPrototypeMenuBarSummonButtonViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v4 completion:0];
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60___UIOPrototypeMenuBarSummonButtonViewController_handlePan___block_invoke;
  v11[3] = &unk_1E70F9780;
  v12 = v4;
  v13 = self;
  v14 = v7;
  v15 = v9;
  v10 = v4;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v11 completion:0];
}

@end