@interface SBSystemNotesContentPresentationContext
- (SBSystemNotesContentPresentationContext)initWithLaunchBundleID:(id)d presentationMode:(int64_t)mode source:(unint64_t)source positionConfiguration:(id)configuration;
- (SBSystemNotesContentPresentationContext)initWithRequestedConfiguration:(id)configuration source:(unint64_t)source positionConfiguration:(id)positionConfiguration;
@end

@implementation SBSystemNotesContentPresentationContext

- (SBSystemNotesContentPresentationContext)initWithLaunchBundleID:(id)d presentationMode:(int64_t)mode source:(unint64_t)source positionConfiguration:(id)configuration
{
  v10 = MEMORY[0x277D66C98];
  configurationCopy = configuration;
  dCopy = d;
  v13 = [[v10 alloc] initWithSceneBundleIdentifier:dCopy userActivity:0 preferredPresentationMode:mode];

  v14 = [(SBSystemNotesContentPresentationContext *)self initWithRequestedConfiguration:v13 source:source positionConfiguration:configurationCopy];
  return v14;
}

- (SBSystemNotesContentPresentationContext)initWithRequestedConfiguration:(id)configuration source:(unint64_t)source positionConfiguration:(id)positionConfiguration
{
  configurationCopy = configuration;
  positionConfigurationCopy = positionConfiguration;
  v14.receiver = self;
  v14.super_class = SBSystemNotesContentPresentationContext;
  v11 = [(SBSystemNotesContentPresentationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestedConfiguration, configuration);
    v12->_source = source;
    objc_storeStrong(&v12->_positionConfiguration, positionConfiguration);
  }

  return v12;
}

@end