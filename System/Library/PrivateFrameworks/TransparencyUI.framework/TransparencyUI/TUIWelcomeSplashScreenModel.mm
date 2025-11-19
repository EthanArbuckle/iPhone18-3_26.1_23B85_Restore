@interface TUIWelcomeSplashScreenModel
- (TUIWelcomeSplashScreenModel)init;
@end

@implementation TUIWelcomeSplashScreenModel

- (TUIWelcomeSplashScreenModel)init
{
  v21.receiver = self;
  v21.super_class = TUIWelcomeSplashScreenModel;
  v2 = [(TUIWelcomeSplashScreenModel *)&v21 init];
  v3 = v2;
  if (v2)
  {
    symbolName = v2->_symbolName;
    v2->_symbolName = @"person.crop.circle.badge.checkmark";

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DEVICE_VERIFICATION_SPECIFIER_TITLE" value:&stru_287F92480 table:@"Localizable"];
    title = v3->_title;
    v3->_title = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DEVICE_VERIFICATION_WELCOME_FOOTER" value:&stru_287F92480 table:@"Localizable"];
    detailText = v3->_detailText;
    v3->_detailText = v9;

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CONTINUE" value:&stru_287F92480 table:@"Localizable"];
    primaryButton = v3->_primaryButton;
    v3->_primaryButton = v12;

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SETUP_LATER" value:&stru_287F92480 table:@"Localizable"];
    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = v15;

    objc_storeStrong(&v3->_helpLinkURL, @"https://support.apple.com/ht213465");
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"LEARN_MORE" value:&stru_287F92480 table:@"Localizable"];
    helpLinkTitle = v3->_helpLinkTitle;
    v3->_helpLinkTitle = v18;
  }

  return v3;
}

@end