@interface PHBusinessCallingController
- (PHBusinessCallingController)initWithCoreTelephonyClient:(id)a3;
- (id)groupFooterTextFor:(id)a3;
- (id)isBusinessCallingEnabled;
- (id)specifiers;
@end

@implementation PHBusinessCallingController

- (PHBusinessCallingController)initWithCoreTelephonyClient:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PHBusinessCallingController;
  v5 = [(PHBusinessCallingController *)&v11 init];
  if (v5)
  {
    v6 = [[PHBrandedCallingController alloc] initWithCoreTelephonyClient:v4 parentListController:v5];
    brandedCallingController = v5->_brandedCallingController;
    v5->_brandedCallingController = v6;

    v8 = objc_alloc_init(PHBusinessConnectCallingController);
    businessConnectCallingController = v5->_businessConnectCallingController;
    v5->_businessConnectCallingController = v8;
  }

  return v5;
}

- (id)specifiers
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PHBrandedCallingController *)self->_brandedCallingController activeContextsSupportingBrandedCalling];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BusinessCallingGroup" name:&stru_282D54710];
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"BUSINESS_CALLING_SPECIFIER_TITLE" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel_isBusinessCallingEnabled detail:objc_opt_class() cell:2 edit:0];

    [v10 setProperty:self->_brandedCallingController forKey:@"PHBrandedCallingControllerKey"];
    v11 = [(PHBrandedCallingController *)self->_brandedCallingController activeContextsSupportingBrandedCalling];
    v12 = [(PHBusinessCallingController *)self groupFooterTextFor:v11];
    [v6 setProperty:v12 forKey:*MEMORY[0x277D3FF88]];

    v16[0] = v6;
    v16[1] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v3 addObjectsFromArray:v13];
  }

  else
  {
    v6 = [(PHBusinessConnectCallingController *)self->_businessConnectCallingController specifiers];
    [v3 addObjectsFromArray:v6];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)isBusinessCallingEnabled
{
  v3 = [(PHBusinessConnectCallingController *)self->_businessConnectCallingController getBusinessConnectCallingEnabled];
  if ([v3 BOOLValue])
  {

    v4 = @"BUSINESS_CALLING_ON";
  }

  else
  {
    v5 = [(PHBrandedCallingController *)self->_brandedCallingController featureEnabledForAtLeastOneContext];

    if (v5)
    {
      v4 = @"BUSINESS_CALLING_ON";
    }

    else
    {
      v4 = @"BUSINESS_CALLING_OFF";
    }
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v4 value:&stru_282D54710 table:@"CallDirectorySettings"];

  return v7;
}

- (id)groupFooterTextFor:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BUSINESS_CALLING_SINGLE_CARRIER_FOOTER_TEXT" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v7 = [v3 objectAtIndexedSubscript:0];
    v8 = [v7 carrierName];
    v9 = [v4 stringWithFormat:v6, v8];
LABEL_5:

    goto LABEL_7;
  }

  if ([v3 count] == 2)
  {
    v10 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"BUSINESS_CALLING_TWO_CARRIER_FOOTER_TEXT" value:&stru_282D54710 table:@"CallDirectorySettings"];
    v7 = [v3 objectAtIndexedSubscript:0];
    v8 = [v7 carrierName];
    v11 = [v3 objectAtIndexedSubscript:1];
    v12 = [v11 carrierName];
    v9 = [v10 stringWithFormat:v6, v8, v12];

    goto LABEL_5;
  }

  v9 = &stru_282D54710;
LABEL_7:

  return v9;
}

@end