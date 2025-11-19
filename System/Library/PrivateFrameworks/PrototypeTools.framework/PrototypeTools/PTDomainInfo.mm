@interface PTDomainInfo
- (BOOL)isEqual:(id)a3;
- (NSString)uniqueIdentifier;
- (PTDomainInfo)initWithCoder:(id)a3;
- (PTDomainInfo)initWithDomain:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)loadSettingsClassBundleIfNecessary;
@end

@implementation PTDomainInfo

- (PTDomainInfo)initWithDomain:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PTDomainInfo;
  v5 = [(PTDomainInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v6 domainGroupName];
    domainGroupName = v5->_domainGroupName;
    v5->_domainGroupName = v7;

    v9 = [v6 domainName];
    domainName = v5->_domainName;
    v5->_domainName = v9;

    v11 = [v6 rootSettingsClass];
    if (v11)
    {
      v12 = v11;
      v13 = NSStringFromClass(v11);
      settingsClassName = v5->_settingsClassName;
      v5->_settingsClassName = v13;

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:v12];
      v16 = [v15 bundlePath];
      settingsFrameworkBundlePath = v5->_settingsFrameworkBundlePath;
      v5->_settingsFrameworkBundlePath = v16;
    }
  }

  return v5;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [(NSString *)self->_domainGroupName componentsSeparatedByCharactersInSet:v4];
    v6 = [v5 componentsJoinedByString:&stru_282FA6D50];

    v7 = [(NSString *)self->_domainName componentsSeparatedByCharactersInSet:v4];
    v8 = [v7 componentsJoinedByString:&stru_282FA6D50];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v6, v8];
    v10 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v9;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  return uniqueIdentifier;
}

- (void)loadSettingsClassBundleIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = [(PTDomainInfo *)v2 settingsClassName];
  v4 = v3;
  if (v3 && !NSClassFromString(v3))
  {
    v5 = [(PTDomainInfo *)v2 settingsFrameworkBundlePath];
    if (!v5)
    {
LABEL_18:

      goto LABEL_19;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
    v7 = v6;
    if (!v6)
    {
      v9 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v4;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_21E61D000, v9, OS_LOG_TYPE_DEFAULT, "No bundle found for settings class '%@' at path %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    v17 = 0;
    v8 = [v6 loadAndReturnError:&v17];
    v9 = v17;
    if ((v8 & 1) == 0)
    {
      v11 = PTLogObjectForTopic(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v9 localizedDescription];
        *buf = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_21E61D000, v11, OS_LOG_TYPE_DEFAULT, "Unable to load settings bundle at path %@: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v10 = NSClassFromString(v4);
    v11 = PTLogObjectForTopic(2);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v19 = v4;
        v13 = "Successfully loaded bundle for settings class '%@'";
        v14 = v11;
        v15 = 12;
LABEL_15:
        _os_log_impl(&dword_21E61D000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }

    else if (v12)
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      v13 = "Unable to find settings class '%@' even after loading bundle at path %@";
      v14 = v11;
      v15 = 22;
      goto LABEL_15;
    }

LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualStrings() && BSEqualStrings() && BSEqualStrings())
  {
    v4 = BSEqualStrings();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_domainGroupName];
  v5 = [v3 appendString:self->_domainName];
  v6 = [v3 appendString:self->_settingsClassName];
  v7 = [v3 appendString:self->_settingsFrameworkBundlePath];
  v8 = [v3 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  domainName = self->_domainName;
  v5 = a3;
  [v5 encodeObject:domainName forKey:@"domainName"];
  [v5 encodeObject:self->_settingsClassName forKey:@"settingsClassName"];
  [v5 encodeObject:self->_settingsFrameworkBundlePath forKey:@"settingsBundlePath"];
  [v5 encodeObject:self->_domainGroupName forKey:@"groupName"];
}

- (PTDomainInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PTDomainInfo;
  v5 = [(PTDomainInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domainName = v5->_domainName;
    v5->_domainName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingsClassName"];
    settingsClassName = v5->_settingsClassName;
    v5->_settingsClassName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settingsBundlePath"];
    settingsFrameworkBundlePath = v5->_settingsFrameworkBundlePath;
    v5->_settingsFrameworkBundlePath = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    domainGroupName = v5->_domainGroupName;
    v5->_domainGroupName = v12;
  }

  return v5;
}

@end