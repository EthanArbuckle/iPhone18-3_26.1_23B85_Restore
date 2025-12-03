@interface OBButtonTray(RUI)
- (void)addHeaderView:()RUI;
@end

@implementation OBButtonTray(RUI)

- (void)addHeaderView:()RUI
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  privacyContainer = [self privacyContainer];
  [privacyContainer addSubview:v4];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [self setPreservesSuperviewLayoutMargins:1];
  v17 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v4 leadingAnchor];
  layoutMarginsGuide = [self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v21;
  trailingAnchor = [v4 trailingAnchor];
  layoutMarginsGuide2 = [self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v6;
  topAnchor = [v4 topAnchor];
  privacyContainer2 = [self privacyContainer];
  topAnchor2 = [privacyContainer2 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v10;
  bottomAnchor = [v4 bottomAnchor];

  privacyContainer3 = [self privacyContainer];
  bottomAnchor2 = [privacyContainer3 bottomAnchor];
  [self _privacyLinkControllerBottomPadding];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v14];
  v25[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v17 activateConstraints:v16];
}

@end