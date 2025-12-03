@interface WFAutomationNotificationContentView
- (WFAutomationNotificationContentView)initWithFrame:(CGRect)frame;
- (void)updateUIFromNotification:(id)notification;
@end

@implementation WFAutomationNotificationContentView

- (void)updateUIFromNotification:(id)notification
{
  request = [notification request];
  content = [request content];

  title = [content title];
  titleLabel = [(WFAutomationNotificationContentView *)self titleLabel];
  [titleLabel setText:title];

  body = [content body];
  descriptionLabel = [(WFAutomationNotificationContentView *)self descriptionLabel];
  [descriptionLabel setText:body];

  userInfo = [content userInfo];
  v10 = WFActionIconsFromNotificationUserInfo();
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  actionIconsView = [(WFAutomationNotificationContentView *)self actionIconsView];
  [actionIconsView setIcons:v12];
}

- (WFAutomationNotificationContentView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = WFAutomationNotificationContentView;
  v3 = [(WFAutomationNotificationContentView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAxis:1];
    [(UIStackView *)v3->_stackView setAlignment:0];
    [(UIStackView *)v3->_stackView setDistribution:0];
    [(UIStackView *)v3->_stackView setSpacing:5.0];
    [(UIStackView *)v3->_stackView setLayoutMargins:6.0, 10.0, 6.0, 10.0];
    [(UIStackView *)v3->_stackView setLayoutMarginsRelativeArrangement:1];
    [(WFAutomationNotificationContentView *)v3 addSubview:v3->_stackView];
    v6 = v3->_stackView;
    layoutMarginsGuide = [(WFAutomationNotificationContentView *)v3 layoutMarginsGuide];
    v8 = [(UIStackView *)v6 wf_addConstraintsToFillLayoutGuide:layoutMarginsGuide];

    v9 = [[WFRowOfIconsView alloc] initWithMaxNumberOfIcons:8 height:30.0];
    actionIconsView = v3->_actionIconsView;
    v3->_actionIconsView = v9;

    [(WFRowOfIconsView *)v3->_actionIconsView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(WFRowOfIconsView *)v3->_actionIconsView setContentCompressionResistancePriority:1 forAxis:v11];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_actionIconsView];
    [(UIStackView *)v3->_stackView setCustomSpacing:v3->_actionIconsView afterView:10.0];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v12;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    v14 = MEMORY[0x277D74300];
    v15 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
    v16 = [v15 fontDescriptorWithSymbolicTraits:2];
    v17 = [v14 fontWithDescriptor:v16 size:0.0];
    [(UILabel *)v3->_titleLabel setFont:v17];

    [(UILabel *)v3->_titleLabel setText:@" "];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_titleLabel];
    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v19;

    [(UILabel *)v3->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:3];
    v21 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)v3->_descriptionLabel setFont:v21];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3->_descriptionLabel setTextColor:secondaryLabelColor];

    LODWORD(v23) = 1148846080;
    [(UILabel *)v3->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v23];
    [(UILabel *)v3->_descriptionLabel setText:@" "];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_descriptionLabel];
    v24 = v3;
  }

  return v3;
}

@end