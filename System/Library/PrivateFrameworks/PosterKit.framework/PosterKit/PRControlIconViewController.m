@interface PRControlIconViewController
- (CGRect)visibleBounds;
- (PRControlIconViewController)initWithControlDescriptor:(id)a3 delegate:(id)a4;
- (PRControlIconViewControllerDelegate)delegate;
- (id)_buttonFromControlDescriptor:(id)a3;
- (void)_tapRecognized:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)updateIntent:(id)a3;
- (void)viewDidLoad;
@end

@implementation PRControlIconViewController

- (PRControlIconViewController)initWithControlDescriptor:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PRControlIconViewController;
  v9 = [(PRControlIconViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlDescriptor, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PRControlIconViewController;
  [(PRControlIconViewController *)&v8 viewDidLoad];
  v3 = [(PRControlIconViewController *)self _buttonFromControlDescriptor:self->_controlDescriptor];
  button = self->_button;
  self->_button = v3;

  v5 = [(PRControlIconViewController *)self view];
  [v5 addSubview:self->_button];

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapRecognized_];
  v7 = [(PRControlIconViewController *)self view];
  [v7 addGestureRecognizer:v6];
}

- (void)_tapRecognized:(id)a3
{
  v4 = [(PRControlIconViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PRControlIconViewController *)self delegate];
    [v6 controlIconViewControllerDidReceiveTap:self];
  }
}

- (id)_buttonFromControlDescriptor:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E6999620]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setClickSuppressed:1];
  v5 = [PRQuickActionControlView alloc];
  v6 = [(PRControlDescriptor *)self->_controlDescriptor controlIdentity];
  v7 = [(PRQuickActionControlView *)v5 initWithControl:v6 type:[(PRControlDescriptor *)self->_controlDescriptor controlType]];

  [v4 setGlyphView:v7];

  return v4;
}

- (void)updateIntent:(id)a3
{
  v11 = a3;
  v4 = [(PRControlDescriptor *)self->_controlDescriptor intent];
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(PRControlDescriptor *)self->_controlDescriptor copyWithIntent:v11];
    controlDescriptor = self->_controlDescriptor;
    self->_controlDescriptor = v5;

    button = self->_button;
    if (button)
    {
      [(CSProminentButtonControl *)button removeFromSuperview];
    }

    v8 = [(PRControlIconViewController *)self _buttonFromControlDescriptor:self->_controlDescriptor];
    v9 = self->_button;
    self->_button = v8;

    v10 = [(PRControlIconViewController *)self view];
    [v10 addSubview:self->_button];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  self->_iconImageInfo.size.width = v3;
  self->_iconImageInfo.size.height = v4;
  self->_iconImageInfo.scale = v5;
  self->_iconImageInfo.continuousCornerRadius = v6;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PRControlIconViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end