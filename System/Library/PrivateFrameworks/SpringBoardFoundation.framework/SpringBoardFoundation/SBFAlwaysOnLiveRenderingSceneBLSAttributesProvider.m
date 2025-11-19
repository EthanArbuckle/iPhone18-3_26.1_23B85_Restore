@interface SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider
- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithFBSScene:(id)a3;
- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithUIScene:(id)a3;
- (id)_init;
@end

@implementation SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider;
  return [(SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider *)&v3 init];
}

- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[SBFSAlwaysOnLiveRenderingAssertionFBSScene alloc] initWithScene:v4];

  return &v5->super;
}

- (SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider)initWithUIScene:(id)a3
{
  v4 = a3;
  v5 = [[SBFSAlwaysOnLiveRenderingAssertionUIScene alloc] initWithScene:v4];

  return &v5->super;
}

@end