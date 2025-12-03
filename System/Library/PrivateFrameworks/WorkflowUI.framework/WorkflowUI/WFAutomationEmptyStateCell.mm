@interface WFAutomationEmptyStateCell
- (WFAutomationEmptyStateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForAutomationType:(unint64_t)type buttonTarget:(id)target action:(SEL)action;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutConstraints;
@end

@implementation WFAutomationEmptyStateCell

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFAutomationEmptyStateCell;
  changeCopy = change;
  [(WFAutomationEmptyStateCell *)&v8 traitCollectionDidChange:changeCopy];
  horizontalSizeClass = [changeCopy horizontalSizeClass];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  horizontalSizeClass2 = [currentTraitCollection horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    [(WFAutomationEmptyStateCell *)self updateLayoutConstraints];
  }
}

- (void)updateLayoutConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  currentConstraints = [(WFAutomationEmptyStateCell *)self currentConstraints];
  [v3 deactivateConstraints:currentConstraints];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  horizontalSizeClass = [currentTraitCollection horizontalSizeClass];

  automationTypeView = [(WFAutomationEmptyStateCell *)self automationTypeView];
  contentView = [(WFAutomationEmptyStateCell *)self contentView];
  v8 = contentView;
  if (horizontalSizeClass == 1)
  {
    readableContentGuide = [automationTypeView wf_addConstraintsToFillSuperview:contentView insets:{0.0, 0.0, 24.0, 0.0}];
    [(WFAutomationEmptyStateCell *)self setCurrentConstraints:readableContentGuide];
  }

  else
  {
    readableContentGuide = [contentView readableContentGuide];
    v10 = [automationTypeView wf_addConstraintsToFillLayoutGuide:readableContentGuide];
    [(WFAutomationEmptyStateCell *)self setCurrentConstraints:v10];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFAutomationEmptyStateCell;
  [(WFAutomationEmptyStateCell *)&v4 prepareForReuse];
  automationTypeView = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [automationTypeView prepareForReuse];
}

- (void)configureForAutomationType:(unint64_t)type buttonTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  automationTypeView = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [automationTypeView configureForAutomationType:type];

  automationTypeView2 = [(WFAutomationEmptyStateCell *)self automationTypeView];
  [automationTypeView2 setButtonTarget:targetCopy action:action];
}

- (WFAutomationEmptyStateCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = WFAutomationEmptyStateCell;
  v4 = [(WFAutomationEmptyStateCell *)&v13 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFAutomationEmptyStateCell *)v4 setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    contentView = [(WFAutomationEmptyStateCell *)v4 contentView];
    [contentView setBackgroundColor:clearColor2];

    [(WFAutomationEmptyStateCell *)v4 setSelectionStyle:0];
    v8 = objc_opt_new();
    [(WFAutomationTypeExplanationPlatterView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(WFAutomationEmptyStateCell *)v4 contentView];
    [contentView2 addSubview:v8];

    automationTypeView = v4->_automationTypeView;
    v4->_automationTypeView = v8;

    [(WFAutomationEmptyStateCell *)v4 updateLayoutConstraints];
    v11 = v4;
  }

  return v4;
}

@end