@interface SUCoreDDMDeclaration
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstallOverdue;
- (BOOL)isValidDeclarationWithReason:(id *)reason;
- (SUCoreDDMDeclaration)initWithCoder:(id)coder;
- (SUCoreDDMDeclaration)initWithDeclarationKeys:(id)keys;
- (id)_dateFromString:(id)string;
- (id)_stringFromDate:(id)date;
- (id)copy;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreDDMDeclaration

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  if (!enforcedInstallDate)
  {
    goto LABEL_14;
  }

  v6 = enforcedInstallDate;
  enforcedInstallDate2 = [compareCopy enforcedInstallDate];

  if (!enforcedInstallDate2 || (-[SUCoreDDMDeclaration enforcedInstallDate](self, "enforcedInstallDate"), v8 = objc_claimAutoreleasedReturnValue(), [compareCopy enforcedInstallDate], v9 = objc_claimAutoreleasedReturnValue(), buildVersionString = objc_msgSend(v8, "compare:", v9), v9, v8, !buildVersionString))
  {
LABEL_14:
    versionString = [(SUCoreDDMDeclaration *)self versionString];
    if (!versionString)
    {
      goto LABEL_7;
    }

    v12 = versionString;
    versionString2 = [compareCopy versionString];

    if (!versionString2 || (-[SUCoreDDMDeclaration versionString](self, "versionString"), v14 = objc_claimAutoreleasedReturnValue(), [compareCopy versionString], v15 = objc_claimAutoreleasedReturnValue(), buildVersionString = objc_msgSend(v14, "compare:options:", v15, 64), v15, v14, !buildVersionString))
    {
LABEL_7:
      buildVersionString = [(SUCoreDDMDeclaration *)self buildVersionString];
      if (buildVersionString)
      {
        buildVersionString2 = [compareCopy buildVersionString];

        if (buildVersionString2)
        {
          buildVersionString3 = [(SUCoreDDMDeclaration *)self buildVersionString];
          buildVersionString4 = [compareCopy buildVersionString];
          buildVersionString = [buildVersionString3 compare:buildVersionString4 options:64];
        }

        else
        {
          buildVersionString = 0;
        }
      }
    }
  }

  return buildVersionString;
}

- (SUCoreDDMDeclaration)initWithDeclarationKeys:(id)keys
{
  keysCopy = keys;
  v24.receiver = self;
  v24.super_class = SUCoreDDMDeclaration;
  v5 = [(SUCoreDDMDeclaration *)&v24 init];
  if (v5)
  {
    v6 = [keysCopy safeStringForKey:@"RMStoreDeclarationKey"];
    declarationKey = v5->_declarationKey;
    v5->_declarationKey = v6;

    v8 = [keysCopy safeStringForKey:@"TargetLocalDateTime"];
    v9 = [(SUCoreDDMDeclaration *)v5 _dateFromString:v8];
    enforcedInstallDate = v5->_enforcedInstallDate;
    v5->_enforcedInstallDate = v9;

    v11 = [keysCopy safeStringForKey:@"TargetOSVersion"];
    versionString = v5->_versionString;
    v5->_versionString = v11;

    v13 = [keysCopy safeStringForKey:@"TargetBuildVersion"];
    buildVersionString = v5->_buildVersionString;
    v5->_buildVersionString = v13;

    v5->_enableNotifications = 1;
    v15 = [keysCopy safeStringForKey:@"DetailsURL"];
    detailsURL = v5->_detailsURL;
    v5->_detailsURL = v15;

    v17 = [keysCopy safeStringForKey:@"CompanyName"];
    companyName = v5->_companyName;
    v5->_companyName = v17;

    v19 = [keysCopy safeDictionaryForKey:@"AdditionalOptions"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = v19;

    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    device = v5->_device;
    v5->_device = mEMORY[0x277D64418];
  }

  return v5;
}

- (SUCoreDDMDeclaration)initWithCoder:(id)coder
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

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ddmDeclaration"];

  v9 = [(SUCoreDDMDeclaration *)self initWithDeclarationKeys:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(SUCoreDDMDeclaration *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"ddmDeclaration"];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)_dateFromString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v4 setTimeZone:localTimeZone];

  [v4 setFormatOptions:819];
  v6 = [v4 dateFromString:stringCopy];

  return v6;
}

- (id)_stringFromDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v4 setTimeZone:localTimeZone];

  [v4 setFormatOptions:819];
  v6 = [v4 stringFromDate:dateCopy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  declarationKey = [(SUCoreDDMDeclaration *)self declarationKey];
  enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v6 = [(SUCoreDDMDeclaration *)self _stringFromDate:enforcedInstallDate];
  versionString = [(SUCoreDDMDeclaration *)self versionString];
  buildVersionString = [(SUCoreDDMDeclaration *)self buildVersionString];
  detailsURL = [(SUCoreDDMDeclaration *)self detailsURL];
  companyName = [(SUCoreDDMDeclaration *)self companyName];
  enableNotifications = [(SUCoreDDMDeclaration *)self enableNotifications];
  v12 = @"NO";
  if (enableNotifications)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"SUCoreDDMDeclaration (DeclarationKey:%@|EnforcedInstallDate:%@|VersionString:%@|BuildVersionString:%@|DetailsURL:%@|companyName:%@|NotificationsEnabled:%@)", declarationKey, v6, versionString, buildVersionString, detailsURL, companyName, v12];

  return v13;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  declarationKey = [(SUCoreDDMDeclaration *)self declarationKey];
  [dictionary setSafeObject:declarationKey forKey:@"RMStoreDeclarationKey"];

  enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v6 = [(SUCoreDDMDeclaration *)self _stringFromDate:enforcedInstallDate];
  [dictionary setSafeObject:v6 forKey:@"TargetLocalDateTime"];

  versionString = [(SUCoreDDMDeclaration *)self versionString];
  [dictionary setSafeObject:versionString forKey:@"TargetOSVersion"];

  buildVersionString = [(SUCoreDDMDeclaration *)self buildVersionString];
  [dictionary setSafeObject:buildVersionString forKey:@"TargetBuildVersion"];

  companyName = [(SUCoreDDMDeclaration *)self companyName];
  [dictionary setSafeObject:companyName forKey:@"CompanyName"];

  additionalOptions = [(SUCoreDDMDeclaration *)self additionalOptions];
  [dictionary setSafeObject:additionalOptions forKey:@"AdditionalOptions"];

  detailsURL = [(SUCoreDDMDeclaration *)self detailsURL];
  [dictionary setSafeObject:detailsURL forKey:@"DetailsURL"];

  v12 = [dictionary copy];

  return v12;
}

- (BOOL)isInstallOverdue
{
  enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [enforcedInstallDate compare:v3] == -1;

  return v4;
}

- (BOOL)isValidDeclarationWithReason:(id *)reason
{
  v41 = *MEMORY[0x277D85DE8];
  declarationKey = [(SUCoreDDMDeclaration *)self declarationKey];

  if (!declarationKey)
  {
    device = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: invalid declaration key"];
    v9 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v9 oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];

  if (!enforcedInstallDate)
  {
    device = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: invalid enforced install date"];
    v11 = +[SUCoreDDMUtilities sharedLogger];
    oslog = [v11 oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  versionString = [(SUCoreDDMDeclaration *)self versionString];
  if (versionString)
  {

LABEL_13:
    device = [(SUCoreDDMDeclaration *)self device];
    if (!device)
    {
      versionString2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: failed to get a core device"];
      v22 = +[SUCoreDDMUtilities sharedLogger];
      oslog2 = [v22 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDDMDeclaration isValidDeclarationWithReason:];
      }

      if (reason)
      {
        v24 = versionString2;
        v13 = 0;
        *reason = versionString2;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }

    versionString2 = [(SUCoreDDMDeclaration *)self versionString];
    productVersion = [device productVersion];
    buildVersionString = [(SUCoreDDMDeclaration *)self buildVersionString];
    versionString3 = [(SUCoreDDMDeclaration *)self versionString];

    if (!versionString3)
    {
      goto LABEL_23;
    }

    if (([device isCorrectlyFormattedProductVersion:versionString2] & 1) == 0)
    {
      oslog5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target OS version (%@) has an invalid format", versionString2];
      v31 = +[SUCoreDDMUtilities sharedLogger];
      oslog3 = [v31 oslog];

      if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if ([productVersion compare:versionString2 options:64] == 1)
    {
      oslog5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target OS version (%@) is older than current version (%@)", versionString2, productVersion];
      v20 = +[SUCoreDDMUtilities sharedLogger];
      oslog3 = [v20 oslog];

      if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
LABEL_23:
      buildVersionString2 = [(SUCoreDDMDeclaration *)self buildVersionString];

      if (!buildVersionString2 || ([device isCorrectlyFormattedBuildVersion:buildVersionString] & 1) != 0)
      {
        if ([(SUCoreDDMDeclaration *)self isInstallOverdue])
        {
          v26 = +[SUCoreDDMUtilities sharedLogger];
          oslog4 = [v26 oslog];

          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            enforcedInstallDate2 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
            v29 = [(SUCoreDDMDeclaration *)self _stringFromDate:enforcedInstallDate2];
            *buf = 136315394;
            v38 = "[SUCoreDDMDeclaration isValidDeclarationWithReason:]";
            v39 = 2112;
            selfCopy = v29;
            _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%s: Past-due declaration: enforced install date is in the past (%@)", buf, 0x16u);
          }
        }

        v30 = +[SUCoreDDMUtilities sharedLogger];
        oslog5 = [v30 oslog];

        if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v38 = "[SUCoreDDMDeclaration isValidDeclarationWithReason:]";
          v39 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "%s: %@ is (likely) good to go!", buf, 0x16u);
        }

        v13 = 1;
        goto LABEL_42;
      }

      oslog5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target build version (%@) has an invalid format", buildVersionString];
      v33 = +[SUCoreDDMUtilities sharedLogger];
      oslog3 = [v33 oslog];

      if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
LABEL_39:

        if (reason)
        {
          v34 = oslog5;
          v13 = 0;
          *reason = oslog5;
        }

        else
        {
          v13 = 0;
        }

LABEL_42:

LABEL_43:
        goto LABEL_44;
      }
    }

LABEL_38:
    [SUCoreDDMDeclaration isValidDeclarationWithReason:];
    goto LABEL_39;
  }

  buildVersionString3 = [(SUCoreDDMDeclaration *)self buildVersionString];

  if (buildVersionString3)
  {
    goto LABEL_13;
  }

  device = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: no target version set"];
  v32 = +[SUCoreDDMUtilities sharedLogger];
  oslog = [v32 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
LABEL_8:
    [SUCoreDDMDeclaration isValidDeclarationWithReason:];
  }

LABEL_9:

  if (reason)
  {
    v12 = device;
    v13 = 0;
    *reason = device;
  }

  else
  {
    v13 = 0;
  }

LABEL_44:

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x277D643F8];
      enforcedInstallDate = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
      enforcedInstallDate2 = [(SUCoreDDMDeclaration *)v5 enforcedInstallDate];
      if ([v6 dateIsEqual:enforcedInstallDate to:enforcedInstallDate2])
      {
        v9 = MEMORY[0x277D643F8];
        versionString = [(SUCoreDDMDeclaration *)self versionString];
        versionString2 = [(SUCoreDDMDeclaration *)v5 versionString];
        if ([v9 stringIsEqual:versionString to:versionString2])
        {
          v12 = MEMORY[0x277D643F8];
          buildVersionString = [(SUCoreDDMDeclaration *)self buildVersionString];
          buildVersionString2 = [(SUCoreDDMDeclaration *)v5 buildVersionString];
          v28 = buildVersionString;
          v15 = buildVersionString;
          v16 = buildVersionString2;
          if ([v12 stringIsEqual:v15 to:buildVersionString2])
          {
            v26 = MEMORY[0x277D643F8];
            detailsURL = [(SUCoreDDMDeclaration *)self detailsURL];
            detailsURL2 = [(SUCoreDDMDeclaration *)v5 detailsURL];
            v19 = v26;
            v25 = detailsURL2;
            v27 = detailsURL;
            if ([v19 stringIsEqual:detailsURL to:?])
            {
              v24 = MEMORY[0x277D643F8];
              companyName = [(SUCoreDDMDeclaration *)self companyName];
              companyName2 = [(SUCoreDDMDeclaration *)v5 companyName];
              v22 = [v24 stringIsEqual:companyName to:companyName2];
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (void)isValidDeclarationWithReason:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_2(&dword_23193C000, v0, v1, "%s: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end