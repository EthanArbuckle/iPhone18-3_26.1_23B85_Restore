@interface SDMDMConfiguration
+ (id)defaultConfigurationForSetupAssistantFlowWithTokens:(id)a3;
- (BOOL)isMissingConfigurationDate;
- (SDMDMConfiguration)initWithCoder:(id)a3;
- (SDMDMConfiguration)initWithPolicy:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SDMDMConfiguration

- (SDMDMConfiguration)initWithPolicy:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = SDMDMConfiguration;
  v4 = [(SDMDMConfiguration *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_policy = a3;
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

+ (id)defaultConfigurationForSetupAssistantFlowWithTokens:(id)a3
{
  v3 = a3;
  v4 = [[SDMDMConfiguration alloc] initWithPolicy:1];
  [(SDMDMConfiguration *)v4 setTokens:v3];

  return v4;
}

- (SDMDMConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SDMDMConfiguration;
  v5 = [(SDMDMConfiguration *)&v16 init];
  if (v5)
  {
    v5->_restrictUserPrograms = [v4 decodeBoolForKey:@"restrictUserPrograms"];
    v5->_disableBetaEnrollment = [v4 decodeBoolForKey:@"disableBetaEnrollment"];
    v5->_policy = [v4 decodeIntegerForKey:@"policy"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tokens"];
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

    if ([v4 containsValueForKey:@"configurationDate"])
    {
      [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationDate"];
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
  v2 = [(SDMDMConfiguration *)self configurationDate];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 isEqualToDate:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SDMDMConfiguration restrictUserPrograms](self forKey:{"restrictUserPrograms"), @"restrictUserPrograms"}];
  [v4 encodeBool:-[SDMDMConfiguration disableBetaEnrollment](self forKey:{"disableBetaEnrollment"), @"disableBetaEnrollment"}];
  [v4 encodeInteger:-[SDMDMConfiguration policy](self forKey:{"policy"), @"policy"}];
  v5 = [(SDMDMConfiguration *)self tokens];
  [v4 encodeObject:v5 forKey:@"tokens"];

  v6 = [(SDMDMConfiguration *)self configurationDate];
  [v4 encodeObject:v6 forKey:@"configurationDate"];
}

@end