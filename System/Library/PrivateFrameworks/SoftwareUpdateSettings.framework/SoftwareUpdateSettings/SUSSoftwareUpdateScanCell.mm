@interface SUSSoftwareUpdateScanCell
- (SUSSoftwareUpdateScanCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)preferredHeightWithTable:(id)table;
- (id)contentUnavailableConfigurationForState:(int)state;
- (id)upToDateManagedText;
- (id)upToDateText;
- (id)upToDateWithAlternate;
- (void)layoutSubviews;
- (void)setState:(int)state;
@end

@implementation SUSSoftwareUpdateScanCell

- (SUSSoftwareUpdateScanCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  selfCopy = self;
  v16 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v13 = 0;
  objc_storeStrong(&v13, specifier);
  v5 = selfCopy;
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = SUSSoftwareUpdateScanCell;
  selfCopy = [(PSTableCell *)&v12 initWithStyle:styleCopy reuseIdentifier:location specifier:v13];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(SUSSoftwareUpdateScanCell *)selfCopy setSelectionStyle:0];
    v9 = selfCopy;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUSSoftwareUpdateScanCell *)v9 setBackgroundColor:?];
    *&v6 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
    [(SUSSoftwareUpdateScanCell *)selfCopy setHoverStyle:0, v6];
    selfCopy->_state = -1;
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)setState:(int)state
{
  if (state != self->_state)
  {
    self->_state = state;
    v3 = [(SUSSoftwareUpdateScanCell *)self contentUnavailableConfigurationForState:state];
    [(SUSSoftwareUpdateScanCell *)self setContentConfiguration:?];
    [(SUSSoftwareUpdateScanCell *)self setNeedsLayout];
  }
}

- (double)preferredHeightWithTable:(id)table
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  objc_storeStrong(location, 0);
  return -1.0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v6 = a2;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SUSSoftwareUpdateScanCell *)self setSeparatorColor:?];
  *&v2 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  v5.receiver = selfCopy;
  v5.super_class = SUSSoftwareUpdateScanCell;
  [(PSTableCell *)&v5 layoutSubviews];
}

- (id)contentUnavailableConfigurationForState:(int)state
{
  selfCopy = self;
  v25 = a2;
  stateCopy = state;
  v23 = 0;
  if (state == 1)
  {
    loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
    v4 = v23;
    v23 = loadingConfiguration;
    MEMORY[0x277D82BD8](v4);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v21 localizedStringForKey:@"CHECKING_FOR_UPDATES" value:&stru_287B74428 table:@"Software Update"];
    [v23 setText:?];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  else if (stateCopy && stateCopy != 5)
  {
    if (stateCopy == 4)
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v16 localizedStringForKey:@"MANAGED_DEVICE_HIDDEN_WITHIN_DELAY" value:&stru_287B74428 table:@"Software Update"];
      emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
      v8 = v23;
      v23 = emptyConfiguration;
      *&v9 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      [v23 setText:{selfCopy->_currentVersion, v9}];
      [v23 setSecondaryText:v22];
      objc_storeStrong(&v22, 0);
    }

    else if (stateCopy == 2)
    {
      emptyConfiguration2 = [MEMORY[0x277D75390] emptyConfiguration];
      v11 = v23;
      v23 = emptyConfiguration2;
      [emptyConfiguration2 setText:{selfCopy->_errorTitle, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
      [v23 setSecondaryText:selfCopy->_errorMessage];
      if (selfCopy->_errorPrimaryButton)
      {
        if (selfCopy->_errorPrimaryButtonAction)
        {
          button = [v23 button];
          [button setTitle:selfCopy->_errorPrimaryButton];
          buttonProperties = [v23 buttonProperties];
          [buttonProperties setPrimaryAction:selfCopy->_errorPrimaryButtonAction];
          MEMORY[0x277D82BD8](buttonProperties);
        }
      }
    }
  }

  else
  {
    emptyConfiguration3 = [MEMORY[0x277D75390] emptyConfiguration];
    v6 = v23;
    v23 = emptyConfiguration3;
    [emptyConfiguration3 setText:{selfCopy->_currentVersion, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
    if ([(SUSSoftwareUpdateScanCell *)selfCopy updatesDeferred]|| [(SUSSoftwareUpdateScanCell *)selfCopy suPathsRestricted])
    {
      upToDateManagedText = [(SUSSoftwareUpdateScanCell *)selfCopy upToDateManagedText];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](upToDateManagedText);
    }

    else if (stateCopy == 5)
    {
      upToDateWithAlternate = [(SUSSoftwareUpdateScanCell *)selfCopy upToDateWithAlternate];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](upToDateWithAlternate);
    }

    else
    {
      upToDateText = [(SUSSoftwareUpdateScanCell *)selfCopy upToDateText];
      [v23 setSecondaryText:?];
      MEMORY[0x277D82BD8](upToDateText);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  location = [currentDevice systemVersion];
  *&v2 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  if (location)
  {
    v11 = [location componentsSeparatedByString:{@".", v2}];
    firstObject = [v11 firstObject];
    v4 = v14[0];
    v14[0] = firstObject;
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