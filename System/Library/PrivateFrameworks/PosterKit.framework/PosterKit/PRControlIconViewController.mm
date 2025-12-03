@interface PRControlIconViewController
- (CGRect)visibleBounds;
- (PRControlIconViewController)initWithControlDescriptor:(id)descriptor delegate:(id)delegate;
- (PRControlIconViewControllerDelegate)delegate;
- (id)_buttonFromControlDescriptor:(id)descriptor;
- (void)_tapRecognized:(id)recognized;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)updateIntent:(id)intent;
- (void)viewDidLoad;
@end

@implementation PRControlIconViewController

- (PRControlIconViewController)initWithControlDescriptor:(id)descriptor delegate:(id)delegate
{
  descriptorCopy = descriptor;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PRControlIconViewController;
  v9 = [(PRControlIconViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controlDescriptor, descriptor);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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

  view = [(PRControlIconViewController *)self view];
  [view addSubview:self->_button];

  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapRecognized_];
  view2 = [(PRControlIconViewController *)self view];
  [view2 addGestureRecognizer:v6];
}

- (void)_tapRecognized:(id)recognized
{
  delegate = [(PRControlIconViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PRControlIconViewController *)self delegate];
    [delegate2 controlIconViewControllerDidReceiveTap:self];
  }
}

- (id)_buttonFromControlDescriptor:(id)descriptor
{
  v4 = objc_alloc_init(MEMORY[0x1E6999620]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setClickSuppressed:1];
  v5 = [PRQuickActionControlView alloc];
  controlIdentity = [(PRControlDescriptor *)self->_controlDescriptor controlIdentity];
  v7 = [(PRQuickActionControlView *)v5 initWithControl:controlIdentity type:[(PRControlDescriptor *)self->_controlDescriptor controlType]];

  [v4 setGlyphView:v7];

  return v4;
}

- (void)updateIntent:(id)intent
{
  intentCopy = intent;
  intent = [(PRControlDescriptor *)self->_controlDescriptor intent];
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [(PRControlDescriptor *)self->_controlDescriptor copyWithIntent:intentCopy];
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

    view = [(PRControlIconViewController *)self view];
    [view addSubview:self->_button];
  }
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
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