@interface PSUICellularDiagnosticsSpecifier
- (BOOL)cellularIssueFound;
- (PSUICellularDiagnosticsSpecifier)init;
- (PSUICellularDiagnosticsSpecifier)initWithRadioCache:(id)a3;
- (id)getCellularUpdatedDetailsLink;
- (id)getCellularUpdatedTime;
- (id)getDiagnosticsStatusDescription;
- (id)getDiagnosticsStatusString:(id)a3;
- (id)getDiagnosticsStatusText;
- (void)updateCellularDiagnosticsStatus;
@end

@implementation PSUICellularDiagnosticsSpecifier

- (PSUICellularDiagnosticsSpecifier)init
{
  v3 = +[PSUICoreTelephonyRadioCache sharedInstance];
  v4 = [(PSUICellularDiagnosticsSpecifier *)self initWithRadioCache:v3];

  return v4;
}

- (PSUICellularDiagnosticsSpecifier)initWithRadioCache:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PSUICellularDiagnosticsSpecifier *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[PSUICellularDiagnosticsSpecifier initWithRadioCache:]";
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CELLULAR_DIAGNOSTICS_STATUS" value:&stru_287733598 table:@"Cellular"];
  v9 = objc_opt_class();
  v18.receiver = self;
  v18.super_class = PSUICellularDiagnosticsSpecifier;
  v10 = [(PSUICellularDiagnosticsSpecifier *)&v18 initWithName:v8 target:self set:0 get:sel_getDiagnosticsStatusString_ detail:v9 cell:2 edit:0];

  if (v10)
  {
    [(PSUICellularDiagnosticsSpecifier *)v10 setIdentifier:@"CELLULAR_DIAGNOSTICS_ID"];
    objc_storeStrong(&v10->_radioCache, a3);
    v10->_cellularIssueDetected = 0;
    v10->_cellularDiagCode = -255;
    v10->_cellularDiagSubCode = 0;
    [(PSUICellularDiagnosticsSpecifier *)v10 updateCellularDiagnosticsStatus];
    v11 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v12 = [MEMORY[0x277D75348] systemGrayColor];
    v13 = [v11 imageWithTintColor:v12];

    v14 = [v13 imageWithRenderingMode:1];

    [(PSUICellularDiagnosticsSpecifier *)v10 setProperty:v14 forKey:*MEMORY[0x277D3FFC0]];
    v15 = MEMORY[0x277CBEC38];
    [(PSUICellularDiagnosticsSpecifier *)v10 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
    [(PSUICellularDiagnosticsSpecifier *)v10 setProperty:v15 forKey:*MEMORY[0x277D40018]];
    [(PSUICellularDiagnosticsSpecifier *)v10 updateBasebandConfigUpdateInfo];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)getCellularUpdatedTime
{
  v2 = [(PSUICoreTelephonyRadioCache *)self->_radioCache getBasebandConfigUpdateTime];
  if (![v2 length])
  {

    v2 = 0;
  }

  return v2;
}

- (id)getCellularUpdatedDetailsLink
{
  v2 = [(PSUICoreTelephonyRadioCache *)self->_radioCache getBasebandConfigUpdateDetails];
  if (![v2 length])
  {

    v2 = 0;
  }

  return v2;
}

- (BOOL)cellularIssueFound
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularDiagnosticsSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cellularIssueDetected = self->_cellularIssueDetected;
    v7 = 136315394;
    v8 = "[PSUICellularDiagnosticsSpecifier cellularIssueFound]";
    v9 = 1024;
    v10 = cellularIssueDetected;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  result = self->_cellularIssueDetected;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateCellularDiagnosticsStatus
{
  v10 = *MEMORY[0x277D85DE8];
  self->_cellularStatus = [(PSUICoreTelephonyRadioCache *)self->_radioCache checkCellularHealthStatus];
  self->_cellularDiagCode = [(PSUICoreTelephonyRadioCache *)self->_radioCache getCellularHealthDiagnosticsCode];
  self->_cellularDiagSubCode = [(PSUICoreTelephonyRadioCache *)self->_radioCache getCellularHealthDiagnosticsSubCode];
  self->_cellularIssueDetected = self->_cellularStatus == 1;
  v3 = [(PSUICellularDiagnosticsSpecifier *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cellularStatus = self->_cellularStatus;
    v6 = 136315394;
    v7 = "[PSUICellularDiagnosticsSpecifier updateCellularDiagnosticsStatus]";
    v8 = 1024;
    v9 = cellularStatus;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)getDiagnosticsStatusString:(id)a3
{
  [(PSUICellularDiagnosticsSpecifier *)self updateCellularDiagnosticsStatus];

  return [(PSUICellularDiagnosticsSpecifier *)self getDiagnosticsStatusText];
}

- (id)getDiagnosticsStatusText
{
  cellularStatus = self->_cellularStatus;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (cellularStatus == 1)
  {
    v5 = @"CELLULAR_DIAGNOSTICS_STATUS_ISSUE_DETECTED";
  }

  else
  {
    v5 = @"CELLULAR_DIAGNOSTICS_STATUS_HEALTHY";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_287733598 table:@"Cellular"];

  return v6;
}

- (id)getDiagnosticsStatusDescription
{
  cellularStatus = self->_cellularStatus;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (cellularStatus == 1)
  {
    v5 = @"CELLULAR_DIAGNOSTICS_MESSAGE_ISSUE_DETECTED";
  }

  else
  {
    v5 = @"CELLULAR_DIAGNOSTICS_MESSAGE_HEALTHY";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_287733598 table:@"Cellular"];

  return v6;
}

@end