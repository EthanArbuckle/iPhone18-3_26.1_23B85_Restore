@interface WFWidgetConfigurationContainerView
- (CGRect)configurationCardViewFrame;
- (WFWidgetConfigurationContainerView)initWithCardView:(id)a3 preferredSize:(CGSize)a4;
- (WFWidgetConfigurationContainerViewDelegate)delegate;
- (void)configureConstraints;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)requestDismissal;
- (void)setConfigurationCardViewFrame:(CGRect)a3;
- (void)setupConfiguredCardFrameConstraints;
- (void)setupConfiguredSheetFrameConstraints;
- (void)setupDefaultConstraintsWithPreferredSize:(CGSize)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFWidgetConfigurationContainerView

- (WFWidgetConfigurationContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDF38]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKey:*MEMORY[0x1E69DDF40]];
  [v9 doubleValue];
  v11 = v10;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__WFWidgetConfigurationContainerView_keyboardWillChangeFrame___block_invoke;
  v12[3] = &unk_1E83086B0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 << 16 delay:v12 options:0 animations:v11 completion:0.0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFWidgetConfigurationContainerView;
  v4 = a3;
  [(WFWidgetConfigurationContainerView *)&v10 traitCollectionDidChange:v4];
  v5 = [(WFWidgetConfigurationContainerView *)self traitCollection:v10.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(WFWidgetConfigurationContainerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    v5 = [(WFWidgetConfigurationContainerView *)self delegate];
    [v5 widgetConfigurationContainerViewUserInterfaceStyleDidChange:self];
  }
}

- (void)requestDismissal
{
  v5 = [(WFWidgetConfigurationContainerView *)self cardView];
  v3 = [v5 delegate];
  v4 = [(WFWidgetConfigurationContainerView *)self cardView];
  [v3 widgetConfigurationCardViewDidRequestToClose:v4];
}

- (void)configureConstraints
{
  if ([(WFWidgetConfigurationContainerView *)self widgetConfigurationStyle]== 2)
  {
    v3 = MEMORY[0x1E696ACD8];
    v4 = [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
    [v3 deactivateConstraints:v4];

    v5 = MEMORY[0x1E696ACD8];
    v6 = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
    [v5 deactivateConstraints:v6];

    v7 = MEMORY[0x1E696ACD8];
    v8 = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
  }

  else
  {
    IsNull = CGRectIsNull(self->_configurationCardViewFrame);
    v10 = MEMORY[0x1E696ACD8];
    if (IsNull)
    {
      v11 = [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
      [v10 deactivateConstraints:v11];

      v12 = MEMORY[0x1E696ACD8];
      v13 = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
      [v12 deactivateConstraints:v13];

      v7 = MEMORY[0x1E696ACD8];
      [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
    }

    else
    {
      v14 = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
      [v10 deactivateConstraints:v14];

      v15 = MEMORY[0x1E696ACD8];
      v16 = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
      [v15 deactivateConstraints:v16];

      v7 = MEMORY[0x1E696ACD8];
      [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
    }
    v8 = ;
  }

  v17 = v8;
  [v7 activateConstraints:?];
}

- (void)setConfigurationCardViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  self->_configurationCardViewFrame = a3;
  if (!CGRectIsNull(a3))
  {
    v8 = [(WFWidgetConfigurationContainerView *)self configuratedCardOriginXConstraint];
    [v8 setConstant:x];

    v9 = [(WFWidgetConfigurationContainerView *)self configuratedCardOriginYConstraint];
    [v9 setConstant:y];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectIsEmpty(v20))
    {
      v10 = [(WFWidgetConfigurationContainerView *)self preferredCardWidthLayoutConstraint];
      [v10 constant];
      v12 = v11;
      v13 = [(WFWidgetConfigurationContainerView *)self configuratedCardWidthConstraint];
      [v13 setConstant:v12];

      v14 = [(WFWidgetConfigurationContainerView *)self preferredCardHeightLayoutConstraint];
      [v14 constant];
      v16 = v15;
      v17 = [(WFWidgetConfigurationContainerView *)self configuratedCardHeightConstraint];
      [v17 setConstant:v16];
    }

    else
    {
      v18 = [(WFWidgetConfigurationContainerView *)self configuratedCardWidthConstraint];
      [v18 setConstant:width];

      v14 = [(WFWidgetConfigurationContainerView *)self configuratedCardHeightConstraint];
      [v14 setConstant:height];
    }
  }

  [(WFWidgetConfigurationContainerView *)self configureConstraints];
}

- (CGRect)configurationCardViewFrame
{
  v2 = [(WFWidgetConfigurationContainerView *)self cardView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setupConfiguredSheetFrameConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = [(WFWidgetConfigurationCardView *)self->_cardView leftAnchor];
  v4 = [(WFWidgetConfigurationContainerView *)self leftAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  configuredSheetOriginXConstraint = self->_configuredSheetOriginXConstraint;
  self->_configuredSheetOriginXConstraint = v5;

  v7 = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  v8 = [(WFWidgetConfigurationContainerView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  configuredSheetOriginYConstraint = self->_configuredSheetOriginYConstraint;
  self->_configuredSheetOriginYConstraint = v9;

  v11 = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  v12 = [(WFWidgetConfigurationContainerView *)self widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  configuredSheetWidthConstraint = self->_configuredSheetWidthConstraint;
  self->_configuredSheetWidthConstraint = v13;

  v15 = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  v16 = [(WFWidgetConfigurationContainerView *)self heightAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  configuredSheetHeightConstraint = self->_configuredSheetHeightConstraint;
  self->_configuredSheetHeightConstraint = v17;

  v19 = self->_configuredSheetOriginYConstraint;
  v23[0] = self->_configuredSheetOriginXConstraint;
  v23[1] = v19;
  v20 = self->_configuredSheetHeightConstraint;
  v23[2] = self->_configuredSheetWidthConstraint;
  v23[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  configuredSheetLayoutConstraints = self->_configuredSheetLayoutConstraints;
  self->_configuredSheetLayoutConstraints = v21;
}

- (void)setupConfiguredCardFrameConstraints
{
  v31[5] = *MEMORY[0x1E69E9840];
  v3 = [(WFWidgetConfigurationCardView *)self->_cardView leftAnchor];
  v4 = [(WFWidgetConfigurationContainerView *)self leftAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:0.0];
  configuratedCardOriginXConstraint = self->_configuratedCardOriginXConstraint;
  self->_configuratedCardOriginXConstraint = v5;

  v7 = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  v8 = [(WFWidgetConfigurationContainerView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];
  configuratedCardOriginYConstraint = self->_configuratedCardOriginYConstraint;
  self->_configuratedCardOriginYConstraint = v9;

  v11 = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  v12 = [v11 constraintEqualToConstant:0.0];
  configuratedCardWidthConstraint = self->_configuratedCardWidthConstraint;
  self->_configuratedCardWidthConstraint = v12;

  v14 = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  v15 = [v14 constraintEqualToConstant:0.0];
  configuratedCardHeightConstraint = self->_configuratedCardHeightConstraint;
  self->_configuratedCardHeightConstraint = v15;

  v17 = [(WFWidgetConfigurationCardView *)self->_cardView bottomAnchor];
  v18 = [(WFWidgetConfigurationContainerView *)self keyboardLayoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintLessThanOrEqualToAnchor:v19 constant:-24.0];

  LODWORD(v21) = 1148813312;
  [v20 setPriority:v21];
  LODWORD(v22) = 1148682240;
  [(NSLayoutConstraint *)self->_configuratedCardOriginXConstraint setPriority:v22];
  LODWORD(v23) = 1148682240;
  [(NSLayoutConstraint *)self->_configuratedCardOriginYConstraint setPriority:v23];
  LODWORD(v24) = 1148764160;
  [(NSLayoutConstraint *)self->_configuratedCardWidthConstraint setPriority:v24];
  LODWORD(v25) = 1148764160;
  [(NSLayoutConstraint *)self->_configuratedCardHeightConstraint setPriority:v25];
  v26 = self->_configuratedCardOriginYConstraint;
  v27 = self->_configuratedCardWidthConstraint;
  v28 = self->_configuratedCardHeightConstraint;
  v31[0] = self->_configuratedCardOriginXConstraint;
  v31[1] = v26;
  v31[2] = v27;
  v31[3] = v28;
  v31[4] = v20;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
  configuredCardLayoutConstraints = self->_configuredCardLayoutConstraints;
  self->_configuredCardLayoutConstraints = v29;
}

- (void)setupDefaultConstraintsWithPreferredSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v42[8] = *MEMORY[0x1E69E9840];
  v6 = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  v7 = [v6 constraintEqualToConstant:width];
  preferredCardWidthLayoutConstraint = self->_preferredCardWidthLayoutConstraint;
  self->_preferredCardWidthLayoutConstraint = v7;

  v9 = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  v10 = [v9 constraintEqualToConstant:height];
  preferredCardHeightLayoutConstraint = self->_preferredCardHeightLayoutConstraint;
  self->_preferredCardHeightLayoutConstraint = v10;

  v40 = [(WFWidgetConfigurationCardView *)self->_cardView centerXAnchor];
  v41 = [(WFWidgetConfigurationContainerView *)self readableContentGuide];
  v39 = [v41 centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v42[0] = v38;
  v36 = [(WFWidgetConfigurationCardView *)self->_cardView centerYAnchor];
  v37 = [(WFWidgetConfigurationContainerView *)self readableContentGuide];
  v35 = [v37 centerYAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v42[1] = v34;
  v32 = [(WFWidgetConfigurationCardView *)self->_cardView leadingAnchor];
  v33 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
  v42[2] = v30;
  v28 = [(WFWidgetConfigurationCardView *)self->_cardView trailingAnchor];
  v29 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  v27 = [v29 trailingAnchor];
  v12 = [v28 constraintLessThanOrEqualToAnchor:v27];
  v42[3] = v12;
  v13 = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  v14 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintGreaterThanOrEqualToAnchor:v15];
  v42[4] = v16;
  v17 = [(WFWidgetConfigurationCardView *)self->_cardView bottomAnchor];
  v18 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintLessThanOrEqualToAnchor:v19];
  v21 = self->_preferredCardWidthLayoutConstraint;
  v42[5] = v20;
  v42[6] = v21;
  v42[7] = self->_preferredCardHeightLayoutConstraint;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:8];
  defaultCardLayoutConstraints = self->_defaultCardLayoutConstraints;
  self->_defaultCardLayoutConstraints = v22;

  v24 = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
  [v24 enumerateObjectsUsingBlock:&__block_literal_global];

  LODWORD(v25) = 1148010496;
  [(NSLayoutConstraint *)self->_preferredCardWidthLayoutConstraint setPriority:v25];
  LODWORD(v26) = 1148010496;
  [(NSLayoutConstraint *)self->_preferredCardHeightLayoutConstraint setPriority:v26];
}

- (WFWidgetConfigurationContainerView)initWithCardView:(id)a3 preferredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  if (!v9)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFWidgetConfigurationContainerView.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"cardView"}];
  }

  v18.receiver = self;
  v18.super_class = WFWidgetConfigurationContainerView;
  v10 = [(WFWidgetConfigurationContainerView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cardView, a3);
    [(WFWidgetConfigurationCardView *)v11->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFWidgetConfigurationContainerView *)v11 addSubview:v9];
    [(WFWidgetConfigurationContainerView *)v11 setupDefaultConstraintsWithPreferredSize:width, height];
    [(WFWidgetConfigurationContainerView *)v11 setupConfiguredCardFrameConstraints];
    [(WFWidgetConfigurationContainerView *)v11 setupConfiguredSheetFrameConstraints];
    v12 = MEMORY[0x1E696ACD8];
    v13 = [(WFWidgetConfigurationContainerView *)v11 defaultCardLayoutConstraints];
    [v12 activateConstraints:v13];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v11 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE078] object:0];
    [v14 addObserver:v11 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
    v15 = v11;
  }

  return v11;
}

@end