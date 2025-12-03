@interface PRSBehaviorAggregator
+ (BOOL)shouldUseSharedDataStore;
+ (BOOL)supportsPosterCustomization;
+ (NSString)dataStoreContainerDirectoryPath;
+ (PRSBehaviorAggregator)sharedInstance;
- (NSURL)sharedDirectoryURL;
- (NSURL)sharedResourcesDirectoryURL;
- (PRSBehaviorAggregator)initWithIdentifier:(id)identifier;
@end

@implementation PRSBehaviorAggregator

+ (BOOL)supportsPosterCustomization
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  return isSharedIPad ^ 1;
}

- (PRSBehaviorAggregator)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PRSBehaviorAggregator;
  v6 = [(PRSBehaviorAggregator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

+ (PRSBehaviorAggregator)sharedInstance
{
  if (sharedInstance___once != -1)
  {
    +[PRSBehaviorAggregator sharedInstance];
  }

  v3 = sharedInstance___aggregator;

  return v3;
}

uint64_t __39__PRSBehaviorAggregator_sharedInstance__block_invoke()
{
  sharedInstance___aggregator = [[PRSBehaviorAggregator alloc] initWithIdentifier:@"com.apple.PosterBoard"];

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)shouldUseSharedDataStore
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  return isSharedIPad;
}

- (NSURL)sharedDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  identifier = self->_identifier;
  v4 = BSSystemSharedDirectoryForIdentifier();
  v5 = [v2 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

- (NSURL)sharedResourcesDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  identifier = self->_identifier;
  v4 = BSSystemSharedResourcesDirectoryForIdentifier();
  v5 = [v2 fileURLWithPath:v4 isDirectory:1];

  return v5;
}

+ (NSString)dataStoreContainerDirectoryPath
{
  if ([self shouldUseSharedDataStore])
  {
    v2 = @"/var/containers/Data/System/";
  }

  else
  {
    v2 = @"/var/mobile/Containers/Data/Application/";
  }

  return v2;
}

@end