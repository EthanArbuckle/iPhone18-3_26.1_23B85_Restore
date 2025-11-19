@interface PRSDataStoreArchiveConfiguration
+ (id)cliOptions;
+ (id)dataStoreArchiveConfigurationFromArgs:(id)a3;
- (PRSDataStoreArchiveConfiguration)init;
- (PRSDataStoreArchiveConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRSDataStoreArchiveConfiguration

+ (id)cliOptions
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = kPRSDataStoreArchiveConfigurationKeyStripScreenshots;
  v5[1] = kPRSDataStoreArchiveConfigurationKeyStripDescriptors;
  v5[2] = kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations;
  v5[3] = kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)dataStoreArchiveConfigurationFromArgs:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripScreenshots];
  v6 = [v5 BOOLValue];

  v7 = [v3 objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
  v8 = [v7 BOOLValue];

  v9 = [v3 objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
  v10 = [v9 BOOLValue];

  v11 = [v3 objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];

  v12 = [v11 BOOLValue];
  [v4 setStripScreenshots:v6];
  [v4 setStripDescriptors:v8];
  [v4 setStripContentsOfConfigurations:v10];
  [v4 setReapNonLatestEntries:v12];

  return v4;
}

- (PRSDataStoreArchiveConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PRSDataStoreArchiveConfiguration;
  return [(PRSDataStoreArchiveConfiguration *)&v3 init];
}

- (PRSDataStoreArchiveConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PRSDataStoreArchiveConfiguration;
  v5 = [(PRSDataStoreArchiveConfiguration *)&v7 init];
  if (v5)
  {
    v5->_stripScreenshots = [v4 decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripScreenshots];
    v5->_stripDescriptors = [v4 decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
    v5->_stripContentsOfConfigurations = [v4 decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
    v5->_reapNonLatestEntries = [v4 decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  stripScreenshots = self->_stripScreenshots;
  v5 = kPRSDataStoreArchiveConfigurationKeyStripScreenshots;
  v6 = a3;
  [v6 encodeBool:stripScreenshots forKey:v5];
  [v6 encodeBool:self->_stripDescriptors forKey:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
  [v6 encodeBool:self->_stripContentsOfConfigurations forKey:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
  [v6 encodeBool:self->_reapNonLatestEntries forKey:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRSDataStoreArchiveConfiguration allocWithZone:?]];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripScreenshots:self->_stripScreenshots];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripDescriptors:self->_stripDescriptors];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripContentsOfConfigurations:self->_stripContentsOfConfigurations];
  [(PRSDataStoreArchiveConfiguration *)v4 setReapNonLatestEntries:self->_reapNonLatestEntries];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PRSDataStoreArchiveConfiguration *)[PRSMutableDataStoreArchiveConfiguration allocWithZone:?]];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripScreenshots:self->_stripScreenshots];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripDescriptors:self->_stripDescriptors];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripContentsOfConfigurations:self->_stripContentsOfConfigurations];
  [(PRSDataStoreArchiveConfiguration *)v4 setReapNonLatestEntries:self->_reapNonLatestEntries];
  return v4;
}

@end