@interface TUIUpdateDevicesModel
- (TUIUpdateDevicesModel)init;
@end

@implementation TUIUpdateDevicesModel

- (TUIUpdateDevicesModel)init
{
  v20.receiver = self;
  v20.super_class = TUIUpdateDevicesModel;
  v2 = [(TUIUpdateDevicesModel *)&v20 init];
  v3 = v2;
  if (v2)
  {
    symbolName = v2->_symbolName;
    v2->_symbolName = @"exclamationmark.triangle";

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UPDATE_DEVICES_ERROR_TITLE" value:&stru_287F92480 table:@"Localizable"];
    title = v3->_title;
    v3->_title = v6;

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"UPDATE_DEVICES_ERROR_DETAIL" value:&stru_287F92480 table:@"Localizable"];
    detailText = v3->_detailText;
    v3->_detailText = v9;

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"UPDATE_DEVICES_ERROR_PRIMARY_BUTTON" value:&stru_287F92480 table:@"Localizable"];
    primaryButton = v3->_primaryButton;
    v3->_primaryButton = v12;

    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"UPDATE_DEVICES_ERROR_SECONDARY_BUTTON" value:&stru_287F92480 table:@"Localizable"];
    secondaryButton = v3->_secondaryButton;
    v3->_secondaryButton = v15;

    helpLinkTitle = v3->_helpLinkTitle;
    v3->_helpLinkTitle = 0;

    helpLinkURL = v3->_helpLinkURL;
    v3->_helpLinkURL = 0;
  }

  return v3;
}

@end