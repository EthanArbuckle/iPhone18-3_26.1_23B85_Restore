@interface UISApplicationInitializationContext(SpringBoard)
+ (id)sb_embeddedDisplayDefaultContext;
+ (id)sb_embeddedDisplayDefaultContextForSystemUIScenes;
@end

@implementation UISApplicationInitializationContext(SpringBoard)

+ (id)sb_embeddedDisplayDefaultContext
{
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [mEMORY[0x277CF0CA8] deviceClass] == 2;
  v4 = [self alloc];
  sb_embeddedDisplayDefaultContext = [MEMORY[0x277D77778] sb_embeddedDisplayDefaultContext];
  sb_defaultContext = [MEMORY[0x277D77770] sb_defaultContext];
  v7 = [v4 initWithMainDisplayContext:sb_embeddedDisplayDefaultContext launchDisplayContext:0 deviceContext:sb_defaultContext persistedSceneIdentifiers:0 supportAppSceneRequests:v3];

  return v7;
}

+ (id)sb_embeddedDisplayDefaultContextForSystemUIScenes
{
  v1 = [self alloc];
  sb_mainThreadFree_embeddedDisplayDefaultContext = [MEMORY[0x277D77778] sb_mainThreadFree_embeddedDisplayDefaultContext];
  sb_defaultContext = [MEMORY[0x277D77770] sb_defaultContext];
  v4 = [v1 initWithMainDisplayContext:sb_mainThreadFree_embeddedDisplayDefaultContext launchDisplayContext:0 deviceContext:sb_defaultContext persistedSceneIdentifiers:0 supportAppSceneRequests:1];

  return v4;
}

@end