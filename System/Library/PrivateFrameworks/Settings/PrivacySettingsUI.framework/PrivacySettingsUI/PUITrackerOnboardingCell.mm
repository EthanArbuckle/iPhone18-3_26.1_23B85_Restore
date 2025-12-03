@interface PUITrackerOnboardingCell
- (PUITrackerOnboardingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PUITrackerOnboardingCell

- (PUITrackerOnboardingCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = PUI_LocalizedStringForAppReport(@"TRACKER_ACTIVITY_ONBOARDING_TITLE");
  v15.receiver = self;
  v15.super_class = PUITrackerOnboardingCell;
  v8 = [(PUIOnboardingCell *)&v15 initWithStyle:style reuseIdentifier:identifierCopy title:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:60.0];
    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"shield.lefthalf.filled" withConfiguration:v9];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [(PUIOnboardingCell *)v8 setSymbolImage:v10 tintColor:systemGreenColor];

    [(PUITrackerOnboardingCell *)v8 setSeparatorInset:0.0, 0.0, 0.0, 0.0];
    v12 = PUI_LocalizedStringForAppReport(@"ONBOARDING_PARAGRAPH_1");
    v13 = PUI_LocalizedStringForAppReport(@"ONBOARDING_PARAGRAPH_1_FOOTER_LINK");
    [(PUIOnboardingCell *)v8 setDetailText:v12 linkText:v13];
  }

  return v8;
}

@end