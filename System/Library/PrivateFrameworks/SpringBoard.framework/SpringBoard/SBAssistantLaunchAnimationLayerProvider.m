@interface SBAssistantLaunchAnimationLayerProvider
- (SBAssistantLaunchAnimationLayerProvider)initWithDropletLayer:(id)a3;
- (void)setTransitioningLayer:(id)a3;
@end

@implementation SBAssistantLaunchAnimationLayerProvider

- (SBAssistantLaunchAnimationLayerProvider)initWithDropletLayer:(id)a3
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBAssistantLaunchAnimationLayerProvider;
  v7 = [(SBAssistantLaunchAnimationLayerProvider *)&v9 init];
  if (v7)
  {
    if (!v6)
    {
      [(SBAssistantLaunchAnimationLayerProvider *)a2 initWithDropletLayer:v7];
    }

    objc_storeStrong(&v7->_dropletLayer, a3);
  }

  return v7;
}

- (void)setTransitioningLayer:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBAssistantLaunchAnimationLayerProvider.m" lineNumber:34 description:@"read-only"];
}

- (void)initWithDropletLayer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAssistantLaunchAnimationLayerProvider.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"dropletLayer"}];
}

@end