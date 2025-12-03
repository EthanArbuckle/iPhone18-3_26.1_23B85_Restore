@interface PRSDataStoreArchiveConfiguration
+ (id)cliOptions;
+ (id)dataStoreArchiveConfigurationFromArgs:(id)args;
- (PRSDataStoreArchiveConfiguration)init;
- (PRSDataStoreArchiveConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

+ (id)dataStoreArchiveConfigurationFromArgs:(id)args
{
  argsCopy = args;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [argsCopy objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripScreenshots];
  bOOLValue = [v5 BOOLValue];

  v7 = [argsCopy objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [argsCopy objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
  bOOLValue3 = [v9 BOOLValue];

  v11 = [argsCopy objectForKeyedSubscript:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];

  bOOLValue4 = [v11 BOOLValue];
  [v4 setStripScreenshots:bOOLValue];
  [v4 setStripDescriptors:bOOLValue2];
  [v4 setStripContentsOfConfigurations:bOOLValue3];
  [v4 setReapNonLatestEntries:bOOLValue4];

  return v4;
}

- (PRSDataStoreArchiveConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PRSDataStoreArchiveConfiguration;
  return [(PRSDataStoreArchiveConfiguration *)&v3 init];
}

- (PRSDataStoreArchiveConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PRSDataStoreArchiveConfiguration;
  v5 = [(PRSDataStoreArchiveConfiguration *)&v7 init];
  if (v5)
  {
    v5->_stripScreenshots = [coderCopy decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripScreenshots];
    v5->_stripDescriptors = [coderCopy decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
    v5->_stripContentsOfConfigurations = [coderCopy decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
    v5->_reapNonLatestEntries = [coderCopy decodeBoolForKey:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  stripScreenshots = self->_stripScreenshots;
  v5 = kPRSDataStoreArchiveConfigurationKeyStripScreenshots;
  coderCopy = coder;
  [coderCopy encodeBool:stripScreenshots forKey:v5];
  [coderCopy encodeBool:self->_stripDescriptors forKey:kPRSDataStoreArchiveConfigurationKeyStripDescriptors];
  [coderCopy encodeBool:self->_stripContentsOfConfigurations forKey:kPRSDataStoreArchiveConfigurationKeyStripContentsOfConfigurations];
  [coderCopy encodeBool:self->_reapNonLatestEntries forKey:kPRSDataStoreArchiveConfigurationKeyReapNonLatestEntries];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PRSDataStoreArchiveConfiguration allocWithZone:?]];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripScreenshots:self->_stripScreenshots];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripDescriptors:self->_stripDescriptors];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripContentsOfConfigurations:self->_stripContentsOfConfigurations];
  [(PRSDataStoreArchiveConfiguration *)v4 setReapNonLatestEntries:self->_reapNonLatestEntries];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRSDataStoreArchiveConfiguration *)[PRSMutableDataStoreArchiveConfiguration allocWithZone:?]];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripScreenshots:self->_stripScreenshots];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripDescriptors:self->_stripDescriptors];
  [(PRSDataStoreArchiveConfiguration *)v4 setStripContentsOfConfigurations:self->_stripContentsOfConfigurations];
  [(PRSDataStoreArchiveConfiguration *)v4 setReapNonLatestEntries:self->_reapNonLatestEntries];
  return v4;
}

@end