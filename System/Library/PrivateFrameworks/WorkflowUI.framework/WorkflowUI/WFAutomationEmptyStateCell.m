@interface WFAutomationEmptyStateCell
- (WFAutomationEmptyStateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForAutomationType:(unint64_t)a3 buttonTarget:(id)a4 action:(SEL)a5;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutConstraints;
@end

@implementation WFAutomationEmptyStateCell

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFAutomationEmptyStateCell;
  v4 = a3;
  [(WFAutomationEmptyStateCell *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 horizontalSizeClass];

  v6 = [MEMORY[0x277D75C80] currentTraitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v5 != v7)
  {
    [(WFAutomationEmptyStateCell *)self updateLayoutConstraints];
  }
}

- (void)updateLayoutConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(WFAutomationEmptyStateCell *)self currentConstraints];
  [v3 deactivateConstraints:v4];

  v5 = [MEMORY[0x277D75C80] currentTraitCollection];
  v6 = [v5 horizontalSizeClass];

  v11 = [(WFAutomationEmptyStateCell *)self automationTypeView];
  v7 = [(WFAutomationEmptyStateCell *)self contentView];
  v8 = v7;
  if (v6 == 1)
  {
    v9 = [v11 wf_addConstraintsToFillSuperview:v7 insets:{0.0, 0.0, 24.0, 0.0}];
    [(WFAutomationEmptyStateCell *)self setCurrentConstraints:v9];
  }

  else
  {
    v9 = [v7 readableContentGuide];
    v10 = [v11 wf_addConstraintsToFillLayoutGuide:v9];
    [(WFAutomationEmptyStateCell *)self setCurrentConstraints:v10];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFAutomationEmptyStateCell;
  [(WFAutomationEmptyStateCell *)&v4 prepareForReuse];
  v3 = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [v3 prepareForReuse];
}

- (void)configureForAutomationType:(unint64_t)a3 buttonTarget:(id)a4 action:(SEL)a5
{
  v8 = a4;
  v9 = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [v9 configureForAutomationType:a3];

  v10 = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [v10 setButtonTarget:v8 action:a5];
}

- (WFAutomationEmptyStateCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = WFAutomationEmptyStateCell;
  v4 = [(WFAutomationEmptyStateCell *)&v13 initWithStyle:0 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(WFAutomationEmptyStateCell *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] clearColor];
    v7 = [(WFAutomationEmptyStateCell *)v4 contentView];
    [v7 setBackgroundColor:v6];

    [(WFAutomationEmptyStateCell *)v4 setSelectionStyle:0];
    v8 = objc_opt_new();
    [(WFAutomationTypeExplanationPlatterView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(WFAutomationEmptyStateCell *)v4 contentView];
    [v9 addSubview:v8];

    automationTypeView = v4->_automationTypeView;
    v4->_automationTypeView = v8;

    [(WFAutomationEmptyStateCell *)v4 updateLayoutConstraints];
    v11 = v4;
  }

  return v4;
}

@end