@interface SUSSoftwareUpdateScanCell
- (SUSSoftwareUpdateScanCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)preferredHeightWithTable:(id)a3;
- (id)contentUnavailableConfigurationForState:(int)a3;
- (id)upToDateManagedText;
- (id)upToDateText;
- (id)upToDateWithAlternate;
- (void)layoutSubviews;
- (void)setState:(int)a3;
@end

@implementation SUSSoftwareUpdateScanCell

- (SUSSoftwareUpdateScanCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
  v5 = v17;
  v17 = 0;
  v12.receiver = v5;
  v12.super_class = SUSSoftwareUpdateScanCell;
  v17 = [(PSTableCell *)&v12 initWithStyle:v15 reuseIdentifier:location specifier:v13];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    [(SUSSoftwareUpdateScanCell *)v17 setSelectionStyle:0];
    v9 = v17;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(SUSSoftwareUpdateScanCell *)v9 setBackgroundColor:?];
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(SUSSoftwareUpdateScanCell *)v17 setHoverStyle:0, v6];
    v17->_state = -1;
  }

  v8 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  return v8;
}

- (void)setState:(int)a3
{
  if (a3 != self->_state)
  {
    self->_state = a3;
    v3 = [(SUSSoftwareUpdateScanCell *)self contentUnavailableConfigurationForState:a3];
    [(SUSSoftwareUpdateScanCell *)self setContentConfiguration:?];
    [(SUSSoftwareUpdateScanCell *)self setNeedsLayout];
  }
}

- (double)preferredHeightWithTable:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return -1.0;
}

- (void)layoutSubviews
{
  v7 = self;
  v6 = a2;
  v4 = [MEMORY[0x277D75348] clearColor];
  [(SUSSoftwareUpdateScanCell *)self setSeparatorColor:?];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5.receiver = v7;
  v5.super_class = SUSSoftwareUpdateScanCell;
  [(PSTableCell *)&v5 layoutSubviews];
}

- (id)contentUnavailableConfigurationForState:(int)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  if (a3 == 1)
  {
    v3 = [MEMORY[0x277D75390] loadingConfiguration];
    v4 = v23;
    v23 = v3;
    MEMORY[0x277D82BD8](v4);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v21 localizedStringForKey:@"CHECKING_FOR_UPDATES" value:&stru_287B74428 table:@"Software Update"];
    [v23 setText:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  else if (v24 && v24 != 5)
  {
    if (v24 == 4)
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v16 localizedStringForKey:@"MANAGED_DEVICE_HIDDEN_WITHIN_DELAY" value:&stru_287B74428 table:@"Software Update"];
      v7 = [MEMORY[0x277D75390] emptyConfiguration];
      v8 = v23;
      v23 = v7;
      *&v9 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      [v23 setText:{v26->_currentVersion, v9}];
      [v23 setSecondaryText:v22];
      objc_storeStrong(&v22, 0);
    }

    else if (v24 == 2)
    {
      v10 = [MEMORY[0x277D75390] emptyConfiguration];
      v11 = v23;
      v23 = v10;
      [v10 setText:{v26->_errorTitle, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
      [v23 setSecondaryText:v26->_errorMessage];
      if (v26->_errorPrimaryButton)
      {
        if (v26->_errorPrimaryButtonAction)
        {
          v14 = [v23 button];
          [v14 setTitle:v26->_errorPrimaryButton];
          v15 = [v23 buttonProperties];
          [v15 setPrimaryAction:v26->_errorPrimaryButtonAction];
          MEMORY[0x277D82BD8](v15);
        }
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277D75390] emptyConfiguration];
    v6 = v23;
    v23 = v5;
    [v5 setText:{v26->_currentVersion, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
    if ([(SUSSoftwareUpdateScanCell *)v26 updatesDeferred]|| [(SUSSoftwareUpdateScanCell *)v26 suPathsRestricted])
    {
      v19 = [(SUSSoftwareUpdateScanCell *)v26 upToDateManagedText];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](v19);
    }

    else if (v24 == 5)
    {
      v18 = [(SUSSoftwareUpdateScanCell *)v26 upToDateWithAlternate];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v17 = [(SUSSoftwareUpdateScanCell *)v26 upToDateText];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](v17);
    }
  }

  v13 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);

  return v13;
}

- (id)upToDateText
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UP_TO_DATE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)upToDateWithAlternate
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = 0;
  v12 = [MEMORY[0x277D75418] currentDevice];
  location = [v12 systemVersion];
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (location)
  {
    v11 = [location componentsSeparatedByString:{@".", v2}];
    v3 = [v11 firstObject];
    v4 = v14[0];
    v14[0] = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UP_TO_DATE_WITH_ALTERNATE"];
  v7 = [v9 localizedStringForKey:? value:? table:?];
  v10 = [v6 stringWithFormat:v14[0]];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);

  return v10;
}

- (id)upToDateManagedText
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"MANAGED_DEVICE_DELAY_EXPIRED_UNAVAILABLE"];
  v5 = [v4 localizedStringForKey:? value:? table:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

@end