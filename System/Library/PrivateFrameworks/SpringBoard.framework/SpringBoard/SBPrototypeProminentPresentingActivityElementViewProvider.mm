@interface SBPrototypeProminentPresentingActivityElementViewProvider
- (SAUILayoutHosting)layoutHost;
- (SBPrototypeProminentPresentingActivityElementViewProvider)init;
- (UIView)leadingView;
- (UIView)trailingView;
- (int64_t)systemApertureLayoutCustomizingOptions;
- (void)setProminent:(BOOL)prominent;
- (void)setShowsTrailing:(BOOL)trailing;
@end

@implementation SBPrototypeProminentPresentingActivityElementViewProvider

- (SBPrototypeProminentPresentingActivityElementViewProvider)init
{
  v3.receiver = self;
  v3.super_class = SBPrototypeProminentPresentingActivityElementViewProvider;
  result = [(SBPrototypeProminentPresentingActivityElementViewProvider *)&v3 init];
  if (result)
  {
    result->_preferredLayoutMode = 2;
    *&result->_prominent = 1;
  }

  return result;
}

- (void)setProminent:(BOOL)prominent
{
  if (self->_prominent != prominent)
  {
    self->_prominent = prominent;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)setShowsTrailing:(BOOL)trailing
{
  if (self->_showsTrailing != trailing)
  {
    self->_showsTrailing = trailing;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (int64_t)systemApertureLayoutCustomizingOptions
{
  if (self->_showsTrailing)
  {
    return self->_prominent;
  }

  else
  {
    return self->_prominent | 2;
  }
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = objc_alloc_init(SBPrototypeHeightFittingSizeView);
    v5 = self->_leadingView;
    self->_leadingView = &v4->super;

    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = MEMORY[0x277D755B8];
    v8 = MEMORY[0x277D755D0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v10 = [v8 configurationWithHierarchicalColor:whiteColor];
    v11 = [v7 systemImageNamed:@"flashlight.on.fill" withConfiguration:v10];
    v12 = [v6 initWithImage:v11];

    [v12 setContentMode:1];
    [(UIView *)self->_leadingView addSubview:v12];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v12 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_leadingView leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 setActive:1];

    trailingAnchor = [v12 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_leadingView trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v18 setActive:1];

    topAnchor = [v12 topAnchor];
    topAnchor2 = [(UIView *)self->_leadingView topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v21 setActive:1];

    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_leadingView bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v24 setActive:1];

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(UIView *)v4 setText:@"ON"];
    v5 = MEMORY[0x277D74300];
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
    v7 = [v5 fontWithDescriptor:v6 size:0.0];
    [(UIView *)v4 setFont:v7];

    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [(UIView *)v4 setTextColor:systemYellowColor];

    v9 = self->_trailingView;
    self->_trailingView = v4;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

@end