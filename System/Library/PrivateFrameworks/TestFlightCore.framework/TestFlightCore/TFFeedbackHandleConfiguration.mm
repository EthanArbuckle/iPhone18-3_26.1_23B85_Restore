@interface TFFeedbackHandleConfiguration
+ (id)configurationFromUserInfo:(id)a3;
- (TFFeedbackHandleConfiguration)initWithBundleIdentifier:(id)a3;
- (TFFeedbackHandleConfiguration)initWithBundleURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodedAsUserInfo;
@end

@implementation TFFeedbackHandleConfiguration

- (TFFeedbackHandleConfiguration)initWithBundleURL:(id)a3
{
  v4 = [TFBundle bundleIdentifierForBundleURL:a3];
  v5 = [v4 copy];

  v6 = [(TFFeedbackHandleConfiguration *)self initWithBundleIdentifier:v5];
  return v6;
}

- (TFFeedbackHandleConfiguration)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TFFeedbackHandleConfiguration;
  v5 = [(TFFeedbackHandleConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)encodedAsUserInfo
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v4 = [(TFFeedbackHandleConfiguration *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"CONFIG_BUNDLE_ID"];

  v5 = [(TFFeedbackHandleConfiguration *)self incidentId];

  if (v5)
  {
    v6 = [(TFFeedbackHandleConfiguration *)self incidentId];
    [v3 setObject:v6 forKeyedSubscript:@"CONFIG_INCIDENT_ID"];
  }

  return v3;
}

+ (id)configurationFromUserInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CONFIG_BUNDLE_ID"];
  if (v4)
  {
    v5 = [[TFFeedbackHandleConfiguration alloc] initWithBundleIdentifier:v4];
    v6 = [v3 objectForKeyedSubscript:@"CONFIG_INCIDENT_ID"];
    if (v6)
    {
      [(TFFeedbackHandleConfiguration *)v5 setIncidentId:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TFFeedbackHandleConfiguration alloc];
  v5 = [(TFFeedbackHandleConfiguration *)self bundleIdentifier];
  v6 = [(TFFeedbackHandleConfiguration *)v4 initWithBundleIdentifier:v5];

  v7 = [(TFFeedbackHandleConfiguration *)self incidentId];
  [(TFFeedbackHandleConfiguration *)v6 setIncidentId:v7];

  return v6;
}

@end