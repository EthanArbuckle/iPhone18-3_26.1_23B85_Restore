@interface SDMDMConfiguration
+ (id)defaultConfigurationForSetupAssistantFlowWithTokens:(id)tokens;
- (BOOL)isMissingConfigurationDate;
- (SDMDMConfiguration)initWithCoder:(id)coder;
- (SDMDMConfiguration)initWithPolicy:(int64_t)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SDMDMConfiguration

- (SDMDMConfiguration)initWithPolicy:(int64_t)policy
{
  v11.receiver = self;
  v11.super_class = SDMDMConfiguration;
  v4 = [(SDMDMConfiguration *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_policy = policy;
    *&v4->_restrictUserPrograms = 0;
    v6 = objc_opt_new();
    tokens = v5->_tokens;
    v5->_tokens = v6;

    v8 = [MEMORY[0x277CBEAA8] now];
    configurationDate = v5->_configurationDate;
    v5->_configurationDate = v8;
  }

  return v5;
}

+ (id)defaultConfigurationForSetupAssistantFlowWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = [[SDMDMConfiguration alloc] initWithPolicy:1];
  [(SDMDMConfiguration *)v4 setTokens:tokensCopy];

  return v4;
}

- (SDMDMConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SDMDMConfiguration;
  v5 = [(SDMDMConfiguration *)&v16 init];
  if (v5)
  {
    v5->_restrictUserPrograms = [coderCopy decodeBoolForKey:@"restrictUserPrograms"];
    v5->_disableBetaEnrollment = [coderCopy decodeBoolForKey:@"disableBetaEnrollment"];
    v5->_policy = [coderCopy decodeIntegerForKey:@"policy"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"tokens"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    tokens = v5->_tokens;
    v5->_tokens = v11;

    if ([coderCopy containsValueForKey:@"configurationDate"])
    {
      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationDate"];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v13 = ;
    configurationDate = v5->_configurationDate;
    v5->_configurationDate = v13;
  }

  return v5;
}

- (BOOL)isMissingConfigurationDate
{
  configurationDate = [(SDMDMConfiguration *)self configurationDate];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [configurationDate isEqualToDate:distantPast];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SDMDMConfiguration restrictUserPrograms](self forKey:{"restrictUserPrograms"), @"restrictUserPrograms"}];
  [coderCopy encodeBool:-[SDMDMConfiguration disableBetaEnrollment](self forKey:{"disableBetaEnrollment"), @"disableBetaEnrollment"}];
  [coderCopy encodeInteger:-[SDMDMConfiguration policy](self forKey:{"policy"), @"policy"}];
  tokens = [(SDMDMConfiguration *)self tokens];
  [coderCopy encodeObject:tokens forKey:@"tokens"];

  configurationDate = [(SDMDMConfiguration *)self configurationDate];
  [coderCopy encodeObject:configurationDate forKey:@"configurationDate"];
}

@end