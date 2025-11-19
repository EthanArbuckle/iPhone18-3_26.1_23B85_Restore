@interface UISApplicationInitializationContext(SpringBoard)
+ (id)sb_embeddedDisplayDefaultContext;
+ (id)sb_embeddedDisplayDefaultContextForSystemUIScenes;
@end

@implementation UISApplicationInitializationContext(SpringBoard)

+ (id)sb_embeddedDisplayDefaultContext
{
  v2 = [MEMORY[0x277CF0CA8] sharedInstance];
  v3 = [v2 deviceClass] == 2;
  v4 = [a1 alloc];
  v5 = [MEMORY[0x277D77778] sb_embeddedDisplayDefaultContext];
  v6 = [MEMORY[0x277D77770] sb_defaultContext];
  v7 = [v4 initWithMainDisplayContext:v5 launchDisplayContext:0 deviceContext:v6 persistedSceneIdentifiers:0 supportAppSceneRequests:v3];

  return v7;
}

+ (id)sb_embeddedDisplayDefaultContextForSystemUIScenes
{
  v1 = [a1 alloc];
  v2 = [MEMORY[0x277D77778] sb_mainThreadFree_embeddedDisplayDefaultContext];
  v3 = [MEMORY[0x277D77770] sb_defaultContext];
  v4 = [v1 initWithMainDisplayContext:v2 launchDisplayContext:0 deviceContext:v3 persistedSceneIdentifiers:0 supportAppSceneRequests:1];

  return v4;
}

@end