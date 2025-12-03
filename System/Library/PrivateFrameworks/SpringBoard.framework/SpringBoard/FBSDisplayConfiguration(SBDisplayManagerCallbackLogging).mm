@interface FBSDisplayConfiguration(SBDisplayManagerCallbackLogging)
- (id)_sbLoggingDescription;
@end

@implementation FBSDisplayConfiguration(SBDisplayManagerCallbackLogging)

- (id)_sbLoggingDescription
{
  v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __81__FBSDisplayConfiguration_SBDisplayManagerCallbackLogging___sbLoggingDescription__block_invoke;
  v9 = &unk_2783A92D8;
  v10 = v2;
  selfCopy = self;
  v3 = v2;
  [v3 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v6];
  build = [v3 build];

  return build;
}

@end