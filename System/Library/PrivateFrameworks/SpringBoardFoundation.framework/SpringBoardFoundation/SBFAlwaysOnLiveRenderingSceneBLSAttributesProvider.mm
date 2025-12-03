@interface SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider
- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithFBSScene:(id)scene;
- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithUIScene:(id)scene;
- (id)_init;
@end

@implementation SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider;
  return [(SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider *)&v3 init];
}

- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[SBFSAlwaysOnLiveRenderingAssertionFBSScene alloc] initWithScene:sceneCopy];

  return &v5->super;
}

- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithUIScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[SBFSAlwaysOnLiveRenderingAssertionUIScene alloc] initWithScene:sceneCopy];

  return &v5->super;
}

@end