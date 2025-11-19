@interface PSUIRemoveSIMWarningSpecifier
+ (id)getTransferredTitle:(id)a3;
- (PSUIRemoveSIMWarningSpecifier)initWithPlanUniversalReference:(id)a3;
@end

@implementation PSUIRemoveSIMWarningSpecifier

- (PSUIRemoveSIMWarningSpecifier)initWithPlanUniversalReference:(id)a3
{
  v4 = a3;
  v5 = +[PSUICellularPlanManagerCache sharedInstance];
  v6 = [v5 planFromReferenceSafe:v4];

  if (v6)
  {
    v7 = [PSUIRemoveSIMWarningSpecifier getTransferredTitle:v6];
  }

  else
  {
    v7 = 0;
  }

  if ([v6 transferredStatus] == 4)
  {
    v16.receiver = self;
    v16.super_class = PSUIRemoveSIMWarningSpecifier;
    v8 = [(PSUIRemoveSIMWarningSpecifier *)&v16 initWithName:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v9 = v8;
    if (v8)
    {
      [(PSUIRemoveSIMWarningSpecifier *)v8 setIdentifier:@"PLAN_TRANSFER_COMPLETED_GROUP"];
      [(PSUIRemoveSIMWarningSpecifier *)v9 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
      v10 = *MEMORY[0x277D3FF40];
      v11 = &unk_287748F90;
      v12 = v9;
LABEL_9:
      [(PSUIRemoveSIMWarningSpecifier *)v12 setProperty:v11 forKey:v10];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PSUIRemoveSIMWarningSpecifier;
    v9 = [(PSUIRemoveSIMWarningSpecifier *)&v15 initWithName:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
    if (v9)
    {
      [(PSUIRemoveSIMWarningSpecifier *)v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
      v10 = 0x287733C58;
      v12 = v9;
      v11 = v7;
      goto LABEL_9;
    }
  }

  v13 = v9;

  return v13;
}

+ (id)getTransferredTitle:(id)a3
{
  v3 = a3;
  if (![v3 type] && objc_msgSend(v3, "transferredStatus") == 4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CONVERSION_COMPLETED_REMOVE_SIM" value:&stru_287733598 table:@"Gemini-Gemini"];
    goto LABEL_17;
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v4 localizedStringForKey:@"TRANSFER_COMPLETED_DELETE_IPAD_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    v10 = [v3 transferredToDeviceDisplayName];
    v5 = [v8 stringWithFormat:v9, v10];
  }

  else
  {
    v11 = [v3 phoneNumber];
    v12 = [v11 length];

    v13 = [v3 type];
    v14 = MEMORY[0x277CCACA8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v15;
    if (v12)
    {
      if (v13 == 2)
      {
        v16 = @"TRANSFER_COMPLETED_DELETE_ESIM_WITH_NUMBER_%@_%@";
      }

      else
      {
        v16 = @"TRANSFER_COMPLETED_REMOVE_SIM_WITH_NUMBER_%@_%@";
      }

      v9 = [v15 localizedStringForKey:v16 value:&stru_287733598 table:@"Gemini-Gemini"];
      v17 = [v3 phoneNumber];
      v18 = [SettingsCellularUtils formattedPhoneNumber:v17];
      v19 = [v3 transferredToDeviceDisplayName];
      v5 = [v14 stringWithFormat:v9, v18, v19];

      goto LABEL_16;
    }

    if (v13 == 2)
    {
      v20 = @"TRANSFER_COMPLETED_DELETE_ESIM_CARRIER_%@_%@";
    }

    else
    {
      v20 = @"TRANSFER_COMPLETED_REMOVE_SIM_CARRIER_%@_%@";
    }

    v9 = [v15 localizedStringForKey:v20 value:&stru_287733598 table:@"Gemini-Gemini"];
    v10 = [v3 carrierName];
    v21 = [v3 transferredToDeviceDisplayName];
    v5 = [v14 stringWithFormat:v9, v10, v21];
  }

LABEL_16:
LABEL_17:

  return v5;
}

@end