@interface SUCoreDDMDeclarationGlobalSettings
- (BOOL)isValidDeclarationWithReason:(id *)reason;
- (SUCoreDDMDeclarationGlobalSettings)initWithCoder:(id)coder;
- (SUCoreDDMDeclarationGlobalSettings)initWithDeclarationKeys:(id)keys;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreDDMDeclarationGlobalSettings

- (SUCoreDDMDeclarationGlobalSettings)initWithDeclarationKeys:(id)keys
{
  keysCopy = keys;
  v41.receiver = self;
  v41.super_class = SUCoreDDMDeclarationGlobalSettings;
  v5 = [(SUCoreDDMDeclarationGlobalSettings *)&v41 init];
  if (v5)
  {
    v6 = [keysCopy objectForKeyedSubscript:@"enableGlobalNotifications"];
    enableGlobalNotifications = v5->_enableGlobalNotifications;
    v5->_enableGlobalNotifications = v6;

    v8 = [keysCopy objectForKeyedSubscript:@"majorOSDeferralPeriod"];
    majorOSDeferralPeriod = v5->_majorOSDeferralPeriod;
    v5->_majorOSDeferralPeriod = v8;

    v10 = [keysCopy objectForKeyedSubscript:@"minorOSDeferralPeriod"];
    minorOSDeferralPeriod = v5->_minorOSDeferralPeriod;
    v5->_minorOSDeferralPeriod = v10;

    v12 = [keysCopy objectForKeyedSubscript:@"systemUpdatesDeferralPeriod"];
    systemUpdatesDeferralPeriod = v5->_systemUpdatesDeferralPeriod;
    v5->_systemUpdatesDeferralPeriod = v12;

    v14 = [keysCopy objectForKeyedSubscript:@"combinedUpdatesDeferralPeriod"];
    combinedUpdatesDeferralPeriod = v5->_combinedUpdatesDeferralPeriod;
    v5->_combinedUpdatesDeferralPeriod = v14;

    v16 = [keysCopy objectForKeyedSubscript:@"recommendationCadence"];
    recommendationCadence = v5->_recommendationCadence;
    v5->_recommendationCadence = v16;

    v18 = [keysCopy objectForKeyedSubscript:@"automaticallyInstallOSUpdates"];
    automaticallyInstallOSUpdates = v5->_automaticallyInstallOSUpdates;
    v5->_automaticallyInstallOSUpdates = v18;

    v20 = [keysCopy objectForKeyedSubscript:@"automaticallyInstallSystemAndSecurityUpdates"];
    automaticallyInstallSystemAndSecurityUpdates = v5->_automaticallyInstallSystemAndSecurityUpdates;
    v5->_automaticallyInstallSystemAndSecurityUpdates = v20;

    v22 = [keysCopy objectForKeyedSubscript:@"automaticallyCheck"];
    automaticallyCheck = v5->_automaticallyCheck;
    v5->_automaticallyCheck = v22;

    v24 = [keysCopy objectForKeyedSubscript:@"automaticallyDownload"];
    automaticallyDownload = v5->_automaticallyDownload;
    v5->_automaticallyDownload = v24;

    v26 = [keysCopy objectForKeyedSubscript:@"adminInstallRequired"];
    adminInstallRequired = v5->_adminInstallRequired;
    v5->_adminInstallRequired = v26;

    v28 = [keysCopy objectForKeyedSubscript:@"enableRapidSecurityResponse"];
    enableRapidSecurityResponse = v5->_enableRapidSecurityResponse;
    v5->_enableRapidSecurityResponse = v28;

    v30 = [keysCopy objectForKeyedSubscript:@"enableRapidSecurityResponseRollback"];
    enableRapidSecurityResponseRollback = v5->_enableRapidSecurityResponseRollback;
    v5->_enableRapidSecurityResponseRollback = v30;

    v32 = [keysCopy objectForKeyedSubscript:@"serializedKeys"];
    serializedKeys = v5->_serializedKeys;
    v5->_serializedKeys = v32;

    v34 = [keysCopy objectForKeyedSubscript:@"programEnrollment"];
    programEnrollment = v5->_programEnrollment;
    v5->_programEnrollment = v34;

    v36 = [keysCopy objectForKeyedSubscript:@"offerPrograms"];
    offerPrograms = v5->_offerPrograms;
    v5->_offerPrograms = v36;

    v38 = [keysCopy objectForKeyedSubscript:@"requireProgram"];
    requireProgram = v5->_requireProgram;
    v5->_requireProgram = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(SUCoreDDMDeclarationGlobalSettings *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"SUCoreDDMDeclarationGlobalSettings"];
}

- (SUCoreDDMDeclarationGlobalSettings)initWithCoder:(id)coder
{
  v12[14] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
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

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"SUCoreDDMDeclarationGlobalSettings"];

  v9 = [(SUCoreDDMDeclarationGlobalSettings *)self initWithDeclarationKeys:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  enableGlobalNotifications = [(SUCoreDDMDeclarationGlobalSettings *)self enableGlobalNotifications];
  [dictionary setSafeObject:enableGlobalNotifications forKey:@"enableGlobalNotifications"];

  majorOSDeferralPeriod = [(SUCoreDDMDeclarationGlobalSettings *)self majorOSDeferralPeriod];
  [dictionary setSafeObject:majorOSDeferralPeriod forKey:@"majorOSDeferralPeriod"];

  minorOSDeferralPeriod = [(SUCoreDDMDeclarationGlobalSettings *)self minorOSDeferralPeriod];
  [dictionary setSafeObject:minorOSDeferralPeriod forKey:@"minorOSDeferralPeriod"];

  systemUpdatesDeferralPeriod = [(SUCoreDDMDeclarationGlobalSettings *)self systemUpdatesDeferralPeriod];
  [dictionary setSafeObject:systemUpdatesDeferralPeriod forKey:@"systemUpdatesDeferralPeriod"];

  combinedUpdatesDeferralPeriod = [(SUCoreDDMDeclarationGlobalSettings *)self combinedUpdatesDeferralPeriod];
  [dictionary setSafeObject:combinedUpdatesDeferralPeriod forKey:@"combinedUpdatesDeferralPeriod"];

  recommendationCadence = [(SUCoreDDMDeclarationGlobalSettings *)self recommendationCadence];
  [dictionary setSafeObject:recommendationCadence forKey:@"recommendationCadence"];

  automaticallyInstallOSUpdates = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
  [dictionary setSafeObject:automaticallyInstallOSUpdates forKey:@"automaticallyInstallOSUpdates"];

  automaticallyInstallSystemAndSecurityUpdates = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallSystemAndSecurityUpdates];
  [dictionary setSafeObject:automaticallyInstallSystemAndSecurityUpdates forKey:@"automaticallyInstallSystemAndSecurityUpdates"];

  automaticallyCheck = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyCheck];
  [dictionary setSafeObject:automaticallyCheck forKey:@"automaticallyCheck"];

  automaticallyDownload = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];
  [dictionary setSafeObject:automaticallyDownload forKey:@"automaticallyDownload"];

  adminInstallRequired = [(SUCoreDDMDeclarationGlobalSettings *)self adminInstallRequired];
  [dictionary setSafeObject:adminInstallRequired forKey:@"adminInstallRequired"];

  enableRapidSecurityResponse = [(SUCoreDDMDeclarationGlobalSettings *)self enableRapidSecurityResponse];
  [dictionary setSafeObject:enableRapidSecurityResponse forKey:@"enableRapidSecurityResponse"];

  enableRapidSecurityResponseRollback = [(SUCoreDDMDeclarationGlobalSettings *)self enableRapidSecurityResponseRollback];
  [dictionary setSafeObject:enableRapidSecurityResponseRollback forKey:@"enableRapidSecurityResponseRollback"];

  serializedKeys = [(SUCoreDDMDeclarationGlobalSettings *)self serializedKeys];
  [dictionary setSafeObject:serializedKeys forKey:@"serializedKeys"];

  programEnrollment = [(SUCoreDDMDeclarationGlobalSettings *)self programEnrollment];
  [dictionary setSafeObject:programEnrollment forKey:@"programEnrollment"];

  offerPrograms = [(SUCoreDDMDeclarationGlobalSettings *)self offerPrograms];
  [dictionary setSafeObject:offerPrograms forKey:@"offerPrograms"];

  requireProgram = [(SUCoreDDMDeclarationGlobalSettings *)self requireProgram];
  [dictionary setSafeObject:requireProgram forKey:@"requireProgram"];

  v21 = [dictionary copy];

  return v21;
}

- (BOOL)isValidDeclarationWithReason:(id *)reason
{
  automaticallyDownload = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];

  if (!automaticallyDownload)
  {
    automaticallyInstallOSUpdates = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
    if (automaticallyInstallOSUpdates)
    {
      automaticallyInstallOSUpdates3 = automaticallyInstallOSUpdates;
      automaticallyInstallOSUpdates2 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
      intValue = [automaticallyInstallOSUpdates2 intValue];

      v10 = intValue == 1;
      LODWORD(automaticallyInstallOSUpdates3) = intValue != 1;
      v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'AlwaysOn' while automatically download is 'Allowed'";
      goto LABEL_7;
    }

LABEL_11:
    v11 = 0;
    LODWORD(automaticallyInstallOSUpdates3) = 1;
    if (!reason)
    {
      return automaticallyInstallOSUpdates3;
    }

    goto LABEL_12;
  }

  automaticallyDownload2 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyDownload];
  intValue2 = [automaticallyDownload2 intValue];

  if (intValue2)
  {
    goto LABEL_11;
  }

  automaticallyInstallOSUpdates3 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];

  if (!automaticallyInstallOSUpdates3)
  {
    v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'Allowed' while automatically download is 'AlwaysOff'";
    if (!reason)
    {
      return automaticallyInstallOSUpdates3;
    }

    goto LABEL_12;
  }

  automaticallyInstallOSUpdates3 = [(SUCoreDDMDeclarationGlobalSettings *)self automaticallyInstallOSUpdates];
  intValue3 = [automaticallyInstallOSUpdates3 intValue];

  v10 = intValue3 == 1;
  LODWORD(automaticallyInstallOSUpdates3) = intValue3 != 1;
  v11 = @"Invalid global settings declaration: attempt to set automatically install OS updates to 'AlwaysOn' while automatically download is 'AlwaysOff'";
LABEL_7:
  if (!v10)
  {
    v11 = 0;
  }

  if (reason)
  {
LABEL_12:
    if (automaticallyInstallOSUpdates3)
    {
      v15 = [(SUCoreDDMDeclarationGlobalSettings *)self description];
      v16 = v15;
      if (v15)
      {
        *reason = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_28469CC48];
      }
    }

    else
    {
      *reason = v11;
    }
  }

  return automaticallyInstallOSUpdates3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  dictionaryRepresentation = [(SUCoreDDMDeclarationGlobalSettings *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"SUCoreDDMDeclarationGlobalSettings: %@", dictionaryRepresentation];

  return v4;
}

@end