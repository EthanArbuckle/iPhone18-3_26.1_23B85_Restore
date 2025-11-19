@interface SUCoreDDMDeclaration
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstallOverdue;
- (BOOL)isValidDeclarationWithReason:(id *)a3;
- (SUCoreDDMDeclaration)initWithCoder:(id)a3;
- (SUCoreDDMDeclaration)initWithDeclarationKeys:(id)a3;
- (id)_dateFromString:(id)a3;
- (id)_stringFromDate:(id)a3;
- (id)copy;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreDDMDeclaration

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v4 enforcedInstallDate];

  if (!v7 || (-[SUCoreDDMDeclaration enforcedInstallDate](self, "enforcedInstallDate"), v8 = objc_claimAutoreleasedReturnValue(), [v4 enforcedInstallDate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "compare:", v9), v9, v8, !v10))
  {
LABEL_14:
    v11 = [(SUCoreDDMDeclaration *)self versionString];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v11;
    v13 = [v4 versionString];

    if (!v13 || (-[SUCoreDDMDeclaration versionString](self, "versionString"), v14 = objc_claimAutoreleasedReturnValue(), [v4 versionString], v15 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v14, "compare:options:", v15, 64), v15, v14, !v10))
    {
LABEL_7:
      v10 = [(SUCoreDDMDeclaration *)self buildVersionString];
      if (v10)
      {
        v16 = [v4 buildVersionString];

        if (v16)
        {
          v17 = [(SUCoreDDMDeclaration *)self buildVersionString];
          v18 = [v4 buildVersionString];
          v10 = [v17 compare:v18 options:64];
        }

        else
        {
          v10 = 0;
        }
      }
    }
  }

  return v10;
}

- (SUCoreDDMDeclaration)initWithDeclarationKeys:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SUCoreDDMDeclaration;
  v5 = [(SUCoreDDMDeclaration *)&v24 init];
  if (v5)
  {
    v6 = [v4 safeStringForKey:@"RMStoreDeclarationKey"];
    declarationKey = v5->_declarationKey;
    v5->_declarationKey = v6;

    v8 = [v4 safeStringForKey:@"TargetLocalDateTime"];
    v9 = [(SUCoreDDMDeclaration *)v5 _dateFromString:v8];
    enforcedInstallDate = v5->_enforcedInstallDate;
    v5->_enforcedInstallDate = v9;

    v11 = [v4 safeStringForKey:@"TargetOSVersion"];
    versionString = v5->_versionString;
    v5->_versionString = v11;

    v13 = [v4 safeStringForKey:@"TargetBuildVersion"];
    buildVersionString = v5->_buildVersionString;
    v5->_buildVersionString = v13;

    v5->_enableNotifications = 1;
    v15 = [v4 safeStringForKey:@"DetailsURL"];
    detailsURL = v5->_detailsURL;
    v5->_detailsURL = v15;

    v17 = [v4 safeStringForKey:@"CompanyName"];
    companyName = v5->_companyName;
    v5->_companyName = v17;

    v19 = [v4 safeDictionaryForKey:@"AdditionalOptions"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = v19;

    v21 = [MEMORY[0x277D64418] sharedDevice];
    device = v5->_device;
    v5->_device = v21;
  }

  return v5;
}

- (SUCoreDDMDeclaration)initWithCoder:(id)a3
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

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"ddmDeclaration"];

  v9 = [(SUCoreDDMDeclaration *)self initWithDeclarationKeys:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDDMDeclaration *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"ddmDeclaration"];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)_dateFromString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v4 setTimeZone:v5];

  [v4 setFormatOptions:819];
  v6 = [v4 dateFromString:v3];

  return v6;
}

- (id)_stringFromDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  [v4 setTimeZone:v5];

  [v4 setFormatOptions:819];
  v6 = [v4 stringFromDate:v3];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCoreDDMDeclaration *)self declarationKey];
  v5 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v6 = [(SUCoreDDMDeclaration *)self _stringFromDate:v5];
  v7 = [(SUCoreDDMDeclaration *)self versionString];
  v8 = [(SUCoreDDMDeclaration *)self buildVersionString];
  v9 = [(SUCoreDDMDeclaration *)self detailsURL];
  v10 = [(SUCoreDDMDeclaration *)self companyName];
  v11 = [(SUCoreDDMDeclaration *)self enableNotifications];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = [v3 stringWithFormat:@"SUCoreDDMDeclaration (DeclarationKey:%@|EnforcedInstallDate:%@|VersionString:%@|BuildVersionString:%@|DetailsURL:%@|companyName:%@|NotificationsEnabled:%@)", v4, v6, v7, v8, v9, v10, v12];

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SUCoreDDMDeclaration *)self declarationKey];
  [v3 setSafeObject:v4 forKey:@"RMStoreDeclarationKey"];

  v5 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v6 = [(SUCoreDDMDeclaration *)self _stringFromDate:v5];
  [v3 setSafeObject:v6 forKey:@"TargetLocalDateTime"];

  v7 = [(SUCoreDDMDeclaration *)self versionString];
  [v3 setSafeObject:v7 forKey:@"TargetOSVersion"];

  v8 = [(SUCoreDDMDeclaration *)self buildVersionString];
  [v3 setSafeObject:v8 forKey:@"TargetBuildVersion"];

  v9 = [(SUCoreDDMDeclaration *)self companyName];
  [v3 setSafeObject:v9 forKey:@"CompanyName"];

  v10 = [(SUCoreDDMDeclaration *)self additionalOptions];
  [v3 setSafeObject:v10 forKey:@"AdditionalOptions"];

  v11 = [(SUCoreDDMDeclaration *)self detailsURL];
  [v3 setSafeObject:v11 forKey:@"DetailsURL"];

  v12 = [v3 copy];

  return v12;
}

- (BOOL)isInstallOverdue
{
  v2 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
  v3 = [MEMORY[0x277CBEAA8] now];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (BOOL)isValidDeclarationWithReason:(id *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreDDMDeclaration *)self declarationKey];

  if (!v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: invalid declaration key"];
    v9 = +[SUCoreDDMUtilities sharedLogger];
    v10 = [v9 oslog];

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];

  if (!v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: invalid enforced install date"];
    v11 = +[SUCoreDDMUtilities sharedLogger];
    v10 = [v11 oslog];

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(SUCoreDDMDeclaration *)self versionString];
  if (v7)
  {

LABEL_13:
    v8 = [(SUCoreDDMDeclaration *)self device];
    if (!v8)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: failed to get a core device"];
      v22 = +[SUCoreDDMUtilities sharedLogger];
      v23 = [v22 oslog];

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDDMDeclaration isValidDeclarationWithReason:];
      }

      if (a3)
      {
        v24 = v15;
        v13 = 0;
        *a3 = v15;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_43;
    }

    v15 = [(SUCoreDDMDeclaration *)self versionString];
    v16 = [v8 productVersion];
    v17 = [(SUCoreDDMDeclaration *)self buildVersionString];
    v18 = [(SUCoreDDMDeclaration *)self versionString];

    if (!v18)
    {
      goto LABEL_23;
    }

    if (([v8 isCorrectlyFormattedProductVersion:v15] & 1) == 0)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target OS version (%@) has an invalid format", v15];
      v31 = +[SUCoreDDMUtilities sharedLogger];
      v21 = [v31 oslog];

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if ([v16 compare:v15 options:64] == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target OS version (%@) is older than current version (%@)", v15, v16];
      v20 = +[SUCoreDDMUtilities sharedLogger];
      v21 = [v20 oslog];

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
LABEL_23:
      v25 = [(SUCoreDDMDeclaration *)self buildVersionString];

      if (!v25 || ([v8 isCorrectlyFormattedBuildVersion:v17] & 1) != 0)
      {
        if ([(SUCoreDDMDeclaration *)self isInstallOverdue])
        {
          v26 = +[SUCoreDDMUtilities sharedLogger];
          v27 = [v26 oslog];

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
            v29 = [(SUCoreDDMDeclaration *)self _stringFromDate:v28];
            *buf = 136315394;
            v38 = "[SUCoreDDMDeclaration isValidDeclarationWithReason:]";
            v39 = 2112;
            v40 = v29;
            _os_log_impl(&dword_23193C000, v27, OS_LOG_TYPE_DEFAULT, "%s: Past-due declaration: enforced install date is in the past (%@)", buf, 0x16u);
          }
        }

        v30 = +[SUCoreDDMUtilities sharedLogger];
        v19 = [v30 oslog];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v38 = "[SUCoreDDMDeclaration isValidDeclarationWithReason:]";
          v39 = 2112;
          v40 = self;
          _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "%s: %@ is (likely) good to go!", buf, 0x16u);
        }

        v13 = 1;
        goto LABEL_42;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: target build version (%@) has an invalid format", v17];
      v33 = +[SUCoreDDMUtilities sharedLogger];
      v21 = [v33 oslog];

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_39:

        if (a3)
        {
          v34 = v19;
          v13 = 0;
          *a3 = v19;
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

  v14 = [(SUCoreDDMDeclaration *)self buildVersionString];

  if (v14)
  {
    goto LABEL_13;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid declaration: no target version set"];
  v32 = +[SUCoreDDMUtilities sharedLogger];
  v10 = [v32 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
LABEL_8:
    [SUCoreDDMDeclaration isValidDeclarationWithReason:];
  }

LABEL_9:

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
  }

  else
  {
    v13 = 0;
  }

LABEL_44:

  v35 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x277D643F8];
      v7 = [(SUCoreDDMDeclaration *)self enforcedInstallDate];
      v8 = [(SUCoreDDMDeclaration *)v5 enforcedInstallDate];
      if ([v6 dateIsEqual:v7 to:v8])
      {
        v9 = MEMORY[0x277D643F8];
        v10 = [(SUCoreDDMDeclaration *)self versionString];
        v11 = [(SUCoreDDMDeclaration *)v5 versionString];
        if ([v9 stringIsEqual:v10 to:v11])
        {
          v12 = MEMORY[0x277D643F8];
          v13 = [(SUCoreDDMDeclaration *)self buildVersionString];
          v14 = [(SUCoreDDMDeclaration *)v5 buildVersionString];
          v28 = v13;
          v15 = v13;
          v16 = v14;
          if ([v12 stringIsEqual:v15 to:v14])
          {
            v26 = MEMORY[0x277D643F8];
            v17 = [(SUCoreDDMDeclaration *)self detailsURL];
            v18 = [(SUCoreDDMDeclaration *)v5 detailsURL];
            v19 = v26;
            v25 = v18;
            v27 = v17;
            if ([v19 stringIsEqual:v17 to:?])
            {
              v24 = MEMORY[0x277D643F8];
              v20 = [(SUCoreDDMDeclaration *)self companyName];
              v21 = [(SUCoreDDMDeclaration *)v5 companyName];
              v22 = [v24 stringIsEqual:v20 to:v21];
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