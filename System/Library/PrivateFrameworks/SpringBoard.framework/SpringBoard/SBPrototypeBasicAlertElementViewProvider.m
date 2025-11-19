@interface SBPrototypeBasicAlertElementViewProvider
- (UIView)leadingView;
- (UIView)minimalView;
- (UIView)trailingView;
- (void)setLayoutAxis:(unint64_t)a3;
@end

@implementation SBPrototypeBasicAlertElementViewProvider

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = MEMORY[0x277D755B8];
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D75348] whiteColor];
    v8 = [v6 configurationWithHierarchicalColor:v7];
    v9 = [v5 systemImageNamed:@"sparkles" withConfiguration:v8];
    v10 = [v4 initWithImage:v9];
    v11 = self->_leadingView;
    self->_leadingView = v10;

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
    [(UIView *)v4 setText:@"Demo"];
    v5 = MEMORY[0x277D74300];
    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
    v7 = [v5 fontWithDescriptor:v6 size:0.0];
    [(UIView *)v4 setFont:v7];

    v8 = [MEMORY[0x277D75348] systemRedColor];
    [(UIView *)v4 setTextColor:v8];

    v9 = self->_trailingView;
    self->_trailingView = v4;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (UIView)minimalView
{
  minimalCompoundView = self->_minimalCompoundView;
  if (!minimalCompoundView)
  {
    v4 = objc_alloc_init(_SBPrototypeBasicAlertElementCompoundView);
    v5 = self->_minimalCompoundView;
    self->_minimalCompoundView = v4;

    v6 = self->_minimalCompoundView;
    v7 = MEMORY[0x277D755B8];
    v8 = MEMORY[0x277D755D0];
    v9 = [MEMORY[0x277D75348] whiteColor];
    v10 = [v8 configurationWithHierarchicalColor:v9];
    v11 = [v7 systemImageNamed:@"sparkles" withConfiguration:v10];
    [(_SBPrototypeBasicAlertElementCompoundView *)v6 setLeadingImage:v11];

    v12 = self->_minimalCompoundView;
    v13 = MEMORY[0x277D755B8];
    v14 = MEMORY[0x277D755D0];
    v15 = [MEMORY[0x277D75348] whiteColor];
    v16 = [v14 configurationWithHierarchicalColor:v15];
    v17 = [v13 systemImageNamed:@"bubbles.and.sparkles.fill" withConfiguration:v16];
    [(_SBPrototypeBasicAlertElementCompoundView *)v12 setTrailingImage:v17];

    minimalCompoundView = self->_minimalCompoundView;
  }

  return minimalCompoundView;
}

- (void)setLayoutAxis:(unint64_t)a3
{
  if (a3 - 1 <= 1 && [(SBPrototypeBasicAlertElementViewProvider *)self layoutAxis]!= a3)
  {
    minimalCompoundView = self->_minimalCompoundView;

    [(_SBPrototypeBasicAlertElementCompoundView *)minimalCompoundView setLayoutAxis:a3];
  }
}

@end