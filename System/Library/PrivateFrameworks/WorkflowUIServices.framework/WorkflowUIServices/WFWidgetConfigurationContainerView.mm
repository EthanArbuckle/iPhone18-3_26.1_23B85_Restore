@interface WFWidgetConfigurationContainerView
- (CGRect)configurationCardViewFrame;
- (WFWidgetConfigurationContainerView)initWithCardView:(id)view preferredSize:(CGSize)size;
- (WFWidgetConfigurationContainerViewDelegate)delegate;
- (void)configureConstraints;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)requestDismissal;
- (void)setConfigurationCardViewFrame:(CGRect)frame;
- (void)setupConfiguredCardFrameConstraints;
- (void)setupConfiguredSheetFrameConstraints;
- (void)setupDefaultConstraintsWithPreferredSize:(CGSize)size;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFWidgetConfigurationContainerView

- (WFWidgetConfigurationContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)keyboardWillChangeFrame:(id)frame
{
  frameCopy = frame;
  userInfo = [frameCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69DDF38]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  userInfo2 = [frameCopy userInfo];

  v9 = [userInfo2 objectForKey:*MEMORY[0x1E69DDF40]];
  [v9 doubleValue];
  v11 = v10;

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__WFWidgetConfigurationContainerView_keyboardWillChangeFrame___block_invoke;
  v12[3] = &unk_1E83086B0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:unsignedIntegerValue << 16 delay:v12 options:0 animations:v11 completion:0.0];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = WFWidgetConfigurationContainerView;
  changeCopy = change;
  [(WFWidgetConfigurationContainerView *)&v10 traitCollectionDidChange:changeCopy];
  delegate2 = [(WFWidgetConfigurationContainerView *)self traitCollection:v10.receiver];
  userInterfaceStyle = [delegate2 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    delegate = [(WFWidgetConfigurationContainerView *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    delegate2 = [(WFWidgetConfigurationContainerView *)self delegate];
    [delegate2 widgetConfigurationContainerViewUserInterfaceStyleDidChange:self];
  }
}

- (void)requestDismissal
{
  cardView = [(WFWidgetConfigurationContainerView *)self cardView];
  delegate = [cardView delegate];
  cardView2 = [(WFWidgetConfigurationContainerView *)self cardView];
  [delegate widgetConfigurationCardViewDidRequestToClose:cardView2];
}

- (void)configureConstraints
{
  if ([(WFWidgetConfigurationContainerView *)self widgetConfigurationStyle]== 2)
  {
    v3 = MEMORY[0x1E696ACD8];
    configuredCardLayoutConstraints = [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
    [v3 deactivateConstraints:configuredCardLayoutConstraints];

    v5 = MEMORY[0x1E696ACD8];
    defaultCardLayoutConstraints = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
    [v5 deactivateConstraints:defaultCardLayoutConstraints];

    v7 = MEMORY[0x1E696ACD8];
    configuredSheetLayoutConstraints = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
  }

  else
  {
    IsNull = CGRectIsNull(self->_configurationCardViewFrame);
    v10 = MEMORY[0x1E696ACD8];
    if (IsNull)
    {
      configuredCardLayoutConstraints2 = [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
      [v10 deactivateConstraints:configuredCardLayoutConstraints2];

      v12 = MEMORY[0x1E696ACD8];
      configuredSheetLayoutConstraints2 = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
      [v12 deactivateConstraints:configuredSheetLayoutConstraints2];

      v7 = MEMORY[0x1E696ACD8];
      [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
    }

    else
    {
      defaultCardLayoutConstraints2 = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
      [v10 deactivateConstraints:defaultCardLayoutConstraints2];

      v15 = MEMORY[0x1E696ACD8];
      configuredSheetLayoutConstraints3 = [(WFWidgetConfigurationContainerView *)self configuredSheetLayoutConstraints];
      [v15 deactivateConstraints:configuredSheetLayoutConstraints3];

      v7 = MEMORY[0x1E696ACD8];
      [(WFWidgetConfigurationContainerView *)self configuredCardLayoutConstraints];
    }
    configuredSheetLayoutConstraints = ;
  }

  v17 = configuredSheetLayoutConstraints;
  [v7 activateConstraints:?];
}

- (void)setConfigurationCardViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  self->_configurationCardViewFrame = frame;
  if (!CGRectIsNull(frame))
  {
    configuratedCardOriginXConstraint = [(WFWidgetConfigurationContainerView *)self configuratedCardOriginXConstraint];
    [configuratedCardOriginXConstraint setConstant:x];

    configuratedCardOriginYConstraint = [(WFWidgetConfigurationContainerView *)self configuratedCardOriginYConstraint];
    [configuratedCardOriginYConstraint setConstant:y];

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectIsEmpty(v20))
    {
      preferredCardWidthLayoutConstraint = [(WFWidgetConfigurationContainerView *)self preferredCardWidthLayoutConstraint];
      [preferredCardWidthLayoutConstraint constant];
      v12 = v11;
      configuratedCardWidthConstraint = [(WFWidgetConfigurationContainerView *)self configuratedCardWidthConstraint];
      [configuratedCardWidthConstraint setConstant:v12];

      preferredCardHeightLayoutConstraint = [(WFWidgetConfigurationContainerView *)self preferredCardHeightLayoutConstraint];
      [preferredCardHeightLayoutConstraint constant];
      v16 = v15;
      configuratedCardHeightConstraint = [(WFWidgetConfigurationContainerView *)self configuratedCardHeightConstraint];
      [configuratedCardHeightConstraint setConstant:v16];
    }

    else
    {
      configuratedCardWidthConstraint2 = [(WFWidgetConfigurationContainerView *)self configuratedCardWidthConstraint];
      [configuratedCardWidthConstraint2 setConstant:width];

      preferredCardHeightLayoutConstraint = [(WFWidgetConfigurationContainerView *)self configuratedCardHeightConstraint];
      [preferredCardHeightLayoutConstraint setConstant:height];
    }
  }

  [(WFWidgetConfigurationContainerView *)self configureConstraints];
}

- (CGRect)configurationCardViewFrame
{
  cardView = [(WFWidgetConfigurationContainerView *)self cardView];
  [cardView frame];
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
  leftAnchor = [(WFWidgetConfigurationCardView *)self->_cardView leftAnchor];
  leftAnchor2 = [(WFWidgetConfigurationContainerView *)self leftAnchor];
  v5 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  configuredSheetOriginXConstraint = self->_configuredSheetOriginXConstraint;
  self->_configuredSheetOriginXConstraint = v5;

  topAnchor = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  topAnchor2 = [(WFWidgetConfigurationContainerView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  configuredSheetOriginYConstraint = self->_configuredSheetOriginYConstraint;
  self->_configuredSheetOriginYConstraint = v9;

  widthAnchor = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  widthAnchor2 = [(WFWidgetConfigurationContainerView *)self widthAnchor];
  v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  configuredSheetWidthConstraint = self->_configuredSheetWidthConstraint;
  self->_configuredSheetWidthConstraint = v13;

  heightAnchor = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  heightAnchor2 = [(WFWidgetConfigurationContainerView *)self heightAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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
  leftAnchor = [(WFWidgetConfigurationCardView *)self->_cardView leftAnchor];
  leftAnchor2 = [(WFWidgetConfigurationContainerView *)self leftAnchor];
  v5 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
  configuratedCardOriginXConstraint = self->_configuratedCardOriginXConstraint;
  self->_configuratedCardOriginXConstraint = v5;

  topAnchor = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  topAnchor2 = [(WFWidgetConfigurationContainerView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  configuratedCardOriginYConstraint = self->_configuratedCardOriginYConstraint;
  self->_configuratedCardOriginYConstraint = v9;

  widthAnchor = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  v12 = [widthAnchor constraintEqualToConstant:0.0];
  configuratedCardWidthConstraint = self->_configuratedCardWidthConstraint;
  self->_configuratedCardWidthConstraint = v12;

  heightAnchor = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:0.0];
  configuratedCardHeightConstraint = self->_configuratedCardHeightConstraint;
  self->_configuratedCardHeightConstraint = v15;

  bottomAnchor = [(WFWidgetConfigurationCardView *)self->_cardView bottomAnchor];
  keyboardLayoutGuide = [(WFWidgetConfigurationContainerView *)self keyboardLayoutGuide];
  topAnchor3 = [keyboardLayoutGuide topAnchor];
  v20 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor3 constant:-24.0];

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

- (void)setupDefaultConstraintsWithPreferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v42[8] = *MEMORY[0x1E69E9840];
  widthAnchor = [(WFWidgetConfigurationCardView *)self->_cardView widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:width];
  preferredCardWidthLayoutConstraint = self->_preferredCardWidthLayoutConstraint;
  self->_preferredCardWidthLayoutConstraint = v7;

  heightAnchor = [(WFWidgetConfigurationCardView *)self->_cardView heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:height];
  preferredCardHeightLayoutConstraint = self->_preferredCardHeightLayoutConstraint;
  self->_preferredCardHeightLayoutConstraint = v10;

  centerXAnchor = [(WFWidgetConfigurationCardView *)self->_cardView centerXAnchor];
  readableContentGuide = [(WFWidgetConfigurationContainerView *)self readableContentGuide];
  centerXAnchor2 = [readableContentGuide centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v42[0] = v38;
  centerYAnchor = [(WFWidgetConfigurationCardView *)self->_cardView centerYAnchor];
  readableContentGuide2 = [(WFWidgetConfigurationContainerView *)self readableContentGuide];
  centerYAnchor2 = [readableContentGuide2 centerYAnchor];
  v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v42[1] = v34;
  leadingAnchor = [(WFWidgetConfigurationCardView *)self->_cardView leadingAnchor];
  layoutMarginsGuide = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v42[2] = v30;
  trailingAnchor = [(WFWidgetConfigurationCardView *)self->_cardView trailingAnchor];
  layoutMarginsGuide2 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v12 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v42[3] = v12;
  topAnchor = [(WFWidgetConfigurationCardView *)self->_cardView topAnchor];
  layoutMarginsGuide3 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v16 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v42[4] = v16;
  bottomAnchor = [(WFWidgetConfigurationCardView *)self->_cardView bottomAnchor];
  layoutMarginsGuide4 = [(WFWidgetConfigurationContainerView *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v20 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v21 = self->_preferredCardWidthLayoutConstraint;
  v42[5] = v20;
  v42[6] = v21;
  v42[7] = self->_preferredCardHeightLayoutConstraint;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:8];
  defaultCardLayoutConstraints = self->_defaultCardLayoutConstraints;
  self->_defaultCardLayoutConstraints = v22;

  defaultCardLayoutConstraints = [(WFWidgetConfigurationContainerView *)self defaultCardLayoutConstraints];
  [defaultCardLayoutConstraints enumerateObjectsUsingBlock:&__block_literal_global];

  LODWORD(v25) = 1148010496;
  [(NSLayoutConstraint *)self->_preferredCardWidthLayoutConstraint setPriority:v25];
  LODWORD(v26) = 1148010496;
  [(NSLayoutConstraint *)self->_preferredCardHeightLayoutConstraint setPriority:v26];
}

- (WFWidgetConfigurationContainerView)initWithCardView:(id)view preferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWidgetConfigurationContainerView.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"cardView"}];
  }

  v18.receiver = self;
  v18.super_class = WFWidgetConfigurationContainerView;
  v10 = [(WFWidgetConfigurationContainerView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cardView, view);
    [(WFWidgetConfigurationCardView *)v11->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFWidgetConfigurationContainerView *)v11 addSubview:viewCopy];
    [(WFWidgetConfigurationContainerView *)v11 setupDefaultConstraintsWithPreferredSize:width, height];
    [(WFWidgetConfigurationContainerView *)v11 setupConfiguredCardFrameConstraints];
    [(WFWidgetConfigurationContainerView *)v11 setupConfiguredSheetFrameConstraints];
    v12 = MEMORY[0x1E696ACD8];
    defaultCardLayoutConstraints = [(WFWidgetConfigurationContainerView *)v11 defaultCardLayoutConstraints];
    [v12 activateConstraints:defaultCardLayoutConstraints];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v11 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
    v15 = v11;
  }

  return v11;
}

@end