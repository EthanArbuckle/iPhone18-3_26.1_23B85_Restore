@interface TUIMissingAppleIDModel
- (TUIMissingAppleIDModel)initWithFlow:(unint64_t)flow;
@end

@implementation TUIMissingAppleIDModel

- (TUIMissingAppleIDModel)initWithFlow:(unint64_t)flow
{
  v24.receiver = self;
  v24.super_class = TUIMissingAppleIDModel;
  v4 = [(TUIMissingAppleIDModel *)&v24 init];
  v5 = v4;
  if (v4)
  {
    symbolName = v4->_symbolName;
    v4->_symbolName = @"bubble.left.and.bubble.right";

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"MISSING_APPLEID_ERROR_TITLE" value:&stru_287F92480 table:@"Localizable"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = v10;
    if (flow == 2)
    {
      v12 = @"MISSING_APPLEID_OPTOUT_ERROR_DETAIL";
    }

    else
    {
      v12 = @"MISSING_APPLEID_OPTIN_ERROR_DETAIL";
    }

    v13 = [v10 localizedStringForKey:v12 value:&stru_287F92480 table:@"Localizable"];
    detailText = v5->_detailText;
    v5->_detailText = v13;

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"MISSING_APPLEID_ERROR_PRIMARY_BUTTON" value:&stru_287F92480 table:@"Localizable"];
    primaryButton = v5->_primaryButton;
    v5->_primaryButton = v16;

    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"SETUP_LATER" value:&stru_287F92480 table:@"Localizable"];
    secondaryButton = v5->_secondaryButton;
    v5->_secondaryButton = v19;

    helpLinkTitle = v5->_helpLinkTitle;
    v5->_helpLinkTitle = 0;

    helpLinkURL = v5->_helpLinkURL;
    v5->_helpLinkURL = 0;
  }

  return v5;
}

@end