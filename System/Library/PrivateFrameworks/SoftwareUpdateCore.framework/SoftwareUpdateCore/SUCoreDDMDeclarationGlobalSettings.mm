@interface SUCoreDDMDeclarationGlobalSettings
- (BOOL)isValidDeclarationWithReason:(id *)a3;
- (SUCoreDDMDeclarationGlobalSettings)initWithCoder:(id)a3;
- (SUCoreDDMDeclarationGlobalSettings)initWithDeclarationKeys:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreDDMDeclarationGlobalSettings

- (SUCoreDDMDeclarationGlobalSettings)initWithDeclarationKeys:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SUCoreDDMDeclarationGlobalSettings;
  v5 = [(SUCoreDDMDeclarationGlobalSettings *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enableGlobalNotifications"];
    enableGlobalNotifications = v5->_enableGlobalNotifications;
    v5->_enableGlobalNotifications = v6;

    v8 = [v4 objectForKeyedSubscript:@"majorOSDeferralPeriod"];
    majorOSDeferralPeriod = v5->_majorOSDeferralPeriod;
    v5->_majorOSDeferralPeriod = v8;

    v10 = [v4 objectForKeyedSubscript:@"minorOSDeferralPeriod"];
    minorOSDeferralPeriod = v5->_minorOSDeferralPeriod;
    v5->_minorOSDeferralPeriod = v10;

    v12 = [v4 objectForKeyedSubscript:@"systemUpdatesDeferralPeriod"];
    systemUpdatesDeferralPeriod = v5->_systemUpdatesDeferralPeriod;
    v5->_systemUpdatesDeferralPeriod = v12;

    v14 = [v4 objectForKeyedSubscript:@"combinedUpdatesDeferralPeriod"];
    combinedUpdatesDeferralPeriod = v5->_combinedUpdatesDeferralPeriod;
    v5->_combinedUpdatesDeferralPeriod = v14;

    v16 = [v4 objectForKeyedSubscript:@"recommendationCadence"];
    recommendationCadence = v5->_recommendationCadence;
    v5->_recommendationCadence = v16;

    v18 = [v4 objectForKeyedSubscript:@"automaticallyInstallOSUpdates"];
    automaticallyInstallOSUpdates = v5->_automaticallyInstallOSUpdates;
    v5->_automaticallyInstallOSUpdates = v18;

    v20 = [v4 objectForKeyedSubscript:@"automaticallyInstallSystemAndSecurityUpdates"];
    automaticallyInstallSystemAndSecurityUpdates = v5->_automaticallyInstallSystemAndSecurityUpdates;
    v5->_automaticallyInstallSystemAndSecurityUpdates = v20;

    v22 = [v4 objectForKeyedSubscript:@"automaticallyCheck"];
    automaticallyCheck = v5->_automaticallyCheck;
    v5->_automaticallyCheck = v22;

    v24 = [v4 objectForKeyedSubscript:@"automaticallyDownload"];
    automaticallyDownload = v5->_automaticallyDownload;
    v5->_automaticallyDownload = v24;

    v26 = [v4 objectForKeyedSubscript:@"adminInstallRequired"];
    adminInstallRequired = v5->_adminInstallRequired;
    v5->_adminInstallRequired = v26;

    v28 = [v4 objectForKeyedSubscript:@"enableRapidSecurityResponse"];
    enableRapidSecurityResponse = v5->_enableRapidSecurityResponse;
    v5->_enableRapidSecurityResponse = v28;

    v30 = [v4 objectForKeyedSubscript:@"enableRapidSecurityResponseRollback"];
    enableRapidSecurityResponseRollback = v5->_enableRapidSecurityResponseRollback;
    v5->_enableRapidSecurityResponseRollback = v30;

    v32 = [v4 objectForKeyedSubscript:@"serializedKeys"];
    serializedKeys = v5->_serializedKeys;
    v5->_serializedKeys = v32;

    v34 = [v4 objectForKeyedSubscript:@"programEnrollment"];
    programEnrollment = v5->_programEnrollment;
    v5->_programEnrollment = v34;

    v36 = [v4 objectForKeyedSubscript:@"offerPrograms"];
    offerPrograms = v5->_offerPrograms;
    v5->_offerPrograms = v36;

    v38 = [v4 objectForKeyedSubscript:@"requireProgram"];
    requireProgram = v5->_requireProgram;
    v5->_requireProgram = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDDMDeclarationGlobalSettings *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"SUCoreDDMDeclarationGlobalSettings"];
}

- (SUCoreDDMDeclarationGlobalSettings)initWithCoder:(id)a3
{
  v12[14] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v12[7] = objc_opt_class();
  v12[8] = objc_opt_class();
  v12[9] = objc_opt_class();
  v12[10] = objc_opt_class();
  v12[11] = objc_opt_class();
  v12[12] = objc_opt_class();
  v12[13] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:14];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"SUCoreDDMDeclarationGlobalSettings"];

  v9 = [(SUCoreDDMDeclarationGlobalSettings *)self initWithDeclarationKeys:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SUCoreDDMDeclarationGlobalSettings *)self enableGlobalNotifications];
  [v3 setSafeObject:v4 forKey:@"enableGlobalNotifications"];

  v5 = [(SUCoreDDMDeclarationGlobalSettings *)self majorOSDeferralPeriod];
  [v3 setSafeObject:v5 forKey:@"majorOSDeferralPeriod"];

  v6 = [(SUCoreDDMDeclarationGlobalSettings *)self minorOSDeferralPeriod];
  [v3 setSafeObject:v6 forKey:@"minorOSDeferralPeriod"];

  v7 = [(SUCoreDDMDeclarationGlobalSettings *)self systemUpdatesDeferralPeriod];
  [v3 setSafeObject:v7 forKey:@"systemUpdatesDeferralPeriod"];

  v8 = [(SUCoreDDMDeclarationGlobalSettings *)self combinedUpdatesDeferralPeriod];
  [v3 setSafeObject:v8 forKey:@"combinedUpdatesDeferralPeriod"];

  v9 = [(SUCoreDDMDeclarationGlobalSettings *)self recommendationCadence];
  [v3 setSafeObject:v9 forKey:@"recommendationCadence"];

  v10 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
  [v3 setSafeObject:v10 forKey:@"automaticallyInstallOSUpdates"];

  v11 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallSystemAndSecurityUpdates];
  [v3 setSafeObject:v11 forKey:@"automaticallyInstallSystemAndSecurityUpdates"];

  v12 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyCheck];
  [v3 setSafeObject:v12 forKey:@"automaticallyCheck"];

  v13 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];
  [v3 setSafeObject:v13 forKey:@"automaticallyDownload"];

  v14 = [(SUCoreDDMDeclarationGlobalSettings *)self adminInstallRequired];
  [v3 setSafeObject:v14 forKey:@"adminInstallRequired"];

  v15 = [(SUCoreDDMDeclarationGlobalSettings *)self enableRapidSecurityResponse];
  [v3 setSafeObject:v15 forKey:@"enableRapidSecurityResponse"];

  v16 = [(SUCoreDDMDeclarationGlobalSettings *)self enableRapidSecurityResponseRollback];
  [v3 setSafeObject:v16 forKey:@"enableRapidSecurityResponseRollback"];

  v17 = [(SUCoreDDMDeclarationGlobalSettings *)self serializedKeys];
  [v3 setSafeObject:v17 forKey:@"serializedKeys"];

  v18 = [(SUCoreDDMDeclarationGlobalSettings *)self programEnrollment];
  [v3 setSafeObject:v18 forKey:@"programEnrollment"];

  v19 = [(SUCoreDDMDeclarationGlobalSettings *)self offerPrograms];
  [v3 setSafeObject:v19 forKey:@"offerPrograms"];

  v20 = [(SUCoreDDMDeclarationGlobalSettings *)self requireProgram];
  [v3 setSafeObject:v20 forKey:@"requireProgram"];

  v21 = [v3 copy];

  return v21;
}

- (BOOL)isValidDeclarationWithReason:(id *)a3
{
  v5 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];

  if (!v5)
  {
    v12 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
    if (v12)
    {
      v8 = v12;
      v13 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
      v14 = [v13 intValue];

      v10 = v14 == 1;
      LODWORD(v8) = v14 != 1;
      v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'AlwaysOn' while automatically download is 'Allowed'";
      goto LABEL_7;
    }

LABEL_11:
    v11 = 0;
    LODWORD(v8) = 1;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v6 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];
  v7 = [v6 intValue];

  if (v7)
  {
    goto LABEL_11;
  }

  v8 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];

  if (!v8)
  {
    v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'Allowed' while automatically download is 'AlwaysOff'";
    if (!a3)
    {
      return v8;
    }

    goto LABEL_12;
  }

  v8 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
  v9 = [v8 intValue];

  v10 = v9 == 1;
  LODWORD(v8) = v9 != 1;
  v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'AlwaysOn' while automatically download is 'AlwaysOff'";
LABEL_7:
  if (!v10)
  {
    v11 = 0;
  }

  if (a3)
  {
LABEL_12:
    if (v8)
    {
      v15 = [(SUCoreDDMDeclarationGlobalSettings *)self description];
      v16 = v15;
      if (v15)
      {
        *a3 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_28469CC48];
      }
    }

    else
    {
      *a3 = v11;
    }
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCoreDDMDeclarationGlobalSettings *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"SUCoreDDMDeclarationGlobalSettings: %@", v3];

  return v4;
}

@end