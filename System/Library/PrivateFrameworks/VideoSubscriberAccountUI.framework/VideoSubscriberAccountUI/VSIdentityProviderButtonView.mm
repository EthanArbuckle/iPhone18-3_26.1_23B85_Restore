@interface VSIdentityProviderButtonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (VSIdentityProviderButtonView)initWithCoder:(id)coder;
- (VSIdentityProviderButtonView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)addButton:(id)button;
- (void)removeAllButtons;
@end

@implementation VSIdentityProviderButtonView

- (VSIdentityProviderButtonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderButtonView;
  v3 = [(VSIdentityProviderButtonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_3(v3);
  }

  return v4;
}

- (VSIdentityProviderButtonView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderButtonView;
  v3 = [(VSIdentityProviderButtonView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_3(v3);
  }

  return v4;
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  [(VSIdentityProviderButtonView *)self invalidateIntrinsicContentSize];
  [(VSIdentityProviderButtonView *)self layoutSubviews];
  buttons = [(VSIdentityProviderButtonView *)self buttons];
  [buttons addObject:buttonCopy];

  buttonsView = [(VSIdentityProviderButtonView *)self buttonsView];
  [buttonsView addSubview:buttonCopy];

  [buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  buttonsView2 = [(VSIdentityProviderButtonView *)self buttonsView];
  [buttonsView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerXAnchor = [buttonCopy centerXAnchor];
  buttonsView3 = [(VSIdentityProviderButtonView *)self buttonsView];
  centerXAnchor2 = [buttonsView3 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v33 addObject:v11];

  centerYAnchor = [buttonCopy centerYAnchor];
  buttonsView4 = [(VSIdentityProviderButtonView *)self buttonsView];
  centerYAnchor2 = [buttonsView4 centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v33 addObject:v15];

  v16 = MEMORY[0x277CCAAD0];
  buttonsView5 = [(VSIdentityProviderButtonView *)self buttonsView];
  v18 = [v16 constraintWithItem:buttonCopy attribute:7 relatedBy:0 toItem:buttonsView5 attribute:7 multiplier:1.0 constant:0.0];

  [v33 addObject:v18];
  v19 = MEMORY[0x277CCAAD0];
  buttonsView6 = [(VSIdentityProviderButtonView *)self buttonsView];
  contentView = [(VSIdentityProviderButtonView *)self contentView];
  v22 = [v19 constraintWithItem:buttonsView6 attribute:7 relatedBy:0 toItem:contentView attribute:7 multiplier:0.85 constant:0.0];
  [v33 addObject:v22];

  buttonsView7 = [(VSIdentityProviderButtonView *)self buttonsView];
  centerXAnchor3 = [buttonsView7 centerXAnchor];
  contentView2 = [(VSIdentityProviderButtonView *)self contentView];
  centerXAnchor4 = [contentView2 centerXAnchor];
  v27 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v33 addObject:v27];

  buttonsView8 = [(VSIdentityProviderButtonView *)self buttonsView];
  centerYAnchor3 = [buttonsView8 centerYAnchor];
  contentView3 = [(VSIdentityProviderButtonView *)self contentView];
  centerYAnchor4 = [contentView3 centerYAnchor];
  v32 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:25.0];
  [v33 addObject:v32];

  [MEMORY[0x277CCAAD0] activateConstraints:v33];
}

- (void)removeAllButtons
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  buttons = [(VSIdentityProviderButtonView *)self buttons];
  v4 = [buttons countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(buttons);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [buttons countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  buttons2 = [(VSIdentityProviderButtonView *)self buttons];
  [buttons2 removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = VSIdentityProviderButtonView;
  v8 = [(VSIdentityProviderButtonView *)&v14 hitTest:eventCopy withEvent:x, y];
  buttons = [(VSIdentityProviderButtonView *)self buttons];
  firstObject = [buttons firstObject];

  if (firstObject)
  {
    [(VSIdentityProviderButtonView *)self convertPoint:firstObject toView:x, y];
    v11 = [firstObject hitTest:eventCopy withEvent:?];
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(VSIdentityProviderButtonView *)self _height:fits.width];
  v5 = v4 + 40.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end