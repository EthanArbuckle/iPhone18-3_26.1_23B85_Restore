@interface TFFeedbackHandleConfiguration
+ (id)configurationFromUserInfo:(id)info;
- (TFFeedbackHandleConfiguration)initWithBundleIdentifier:(id)identifier;
- (TFFeedbackHandleConfiguration)initWithBundleURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodedAsUserInfo;
@end

@implementation TFFeedbackHandleConfiguration

- (TFFeedbackHandleConfiguration)initWithBundleURL:(id)l
{
  v4 = [TFBundle bundleIdentifierForBundleURL:l];
  v5 = [v4 copy];

  v6 = [(TFFeedbackHandleConfiguration *)self initWithBundleIdentifier:v5];
  return v6;
}

- (TFFeedbackHandleConfiguration)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = TFFeedbackHandleConfiguration;
  v5 = [(TFFeedbackHandleConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)encodedAsUserInfo
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  bundleIdentifier = [(TFFeedbackHandleConfiguration *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"CONFIG_BUNDLE_ID"];

  incidentId = [(TFFeedbackHandleConfiguration *)self incidentId];

  if (incidentId)
  {
    incidentId2 = [(TFFeedbackHandleConfiguration *)self incidentId];
    [v3 setObject:incidentId2 forKeyedSubscript:@"CONFIG_INCIDENT_ID"];
  }

  return v3;
}

+ (id)configurationFromUserInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"CONFIG_BUNDLE_ID"];
  if (v4)
  {
    v5 = [[TFFeedbackHandleConfiguration alloc] initWithBundleIdentifier:v4];
    v6 = [infoCopy objectForKeyedSubscript:@"CONFIG_INCIDENT_ID"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TFFeedbackHandleConfiguration alloc];
  bundleIdentifier = [(TFFeedbackHandleConfiguration *)self bundleIdentifier];
  v6 = [(TFFeedbackHandleConfiguration *)v4 initWithBundleIdentifier:bundleIdentifier];

  incidentId = [(TFFeedbackHandleConfiguration *)self incidentId];
  [(TFFeedbackHandleConfiguration *)v6 setIncidentId:incidentId];

  return v6;
}

@end