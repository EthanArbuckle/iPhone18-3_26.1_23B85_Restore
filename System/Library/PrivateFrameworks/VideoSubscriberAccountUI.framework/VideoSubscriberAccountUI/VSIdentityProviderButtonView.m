@interface VSIdentityProviderButtonView
- (CGSize)sizeThatFits:(CGSize)a3;
- (VSIdentityProviderButtonView)initWithCoder:(id)a3;
- (VSIdentityProviderButtonView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)addButton:(id)a3;
- (void)removeAllButtons;
@end

@implementation VSIdentityProviderButtonView

- (VSIdentityProviderButtonView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderButtonView;
  v3 = [(VSIdentityProviderButtonView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    commonInit_3(v3);
  }

  return v4;
}

- (VSIdentityProviderButtonView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSIdentityProviderButtonView;
  v3 = [(VSIdentityProviderButtonView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_3(v3);
  }

  return v4;
}

- (void)addButton:(id)a3
{
  v4 = a3;
  [(VSIdentityProviderButtonView *)self invalidateIntrinsicContentSize];
  [(VSIdentityProviderButtonView *)self layoutSubviews];
  v5 = [(VSIdentityProviderButtonView *)self buttons];
  [v5 addObject:v4];

  v6 = [(VSIdentityProviderButtonView *)self buttonsView];
  [v6 addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(VSIdentityProviderButtonView *)self buttonsView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v4 centerXAnchor];
  v9 = [(VSIdentityProviderButtonView *)self buttonsView];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v33 addObject:v11];

  v12 = [v4 centerYAnchor];
  v13 = [(VSIdentityProviderButtonView *)self buttonsView];
  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v33 addObject:v15];

  v16 = MEMORY[0x277CCAAD0];
  v17 = [(VSIdentityProviderButtonView *)self buttonsView];
  v18 = [v16 constraintWithItem:v4 attribute:7 relatedBy:0 toItem:v17 attribute:7 multiplier:1.0 constant:0.0];

  [v33 addObject:v18];
  v19 = MEMORY[0x277CCAAD0];
  v20 = [(VSIdentityProviderButtonView *)self buttonsView];
  v21 = [(VSIdentityProviderButtonView *)self contentView];
  v22 = [v19 constraintWithItem:v20 attribute:7 relatedBy:0 toItem:v21 attribute:7 multiplier:0.85 constant:0.0];
  [v33 addObject:v22];

  v23 = [(VSIdentityProviderButtonView *)self buttonsView];
  v24 = [v23 centerXAnchor];
  v25 = [(VSIdentityProviderButtonView *)self contentView];
  v26 = [v25 centerXAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  [v33 addObject:v27];

  v28 = [(VSIdentityProviderButtonView *)self buttonsView];
  v29 = [v28 centerYAnchor];
  v30 = [(VSIdentityProviderButtonView *)self contentView];
  v31 = [v30 centerYAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:25.0];
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
  v3 = [(VSIdentityProviderButtonView *)self buttons];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [(VSIdentityProviderButtonView *)self buttons];
  [v8 removeAllObjects];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VSIdentityProviderButtonView;
  v8 = [(VSIdentityProviderButtonView *)&v14 hitTest:v7 withEvent:x, y];
  v9 = [(VSIdentityProviderButtonView *)self buttons];
  v10 = [v9 firstObject];

  if (v10)
  {
    [(VSIdentityProviderButtonView *)self convertPoint:v10 toView:x, y];
    v11 = [v10 hitTest:v7 withEvent:?];
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(VSIdentityProviderButtonView *)self _height:a3.width];
  v5 = v4 + 40.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end