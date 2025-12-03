@interface SBWindowDefaultLayoutStrategy
+ (id)_strategyWithClipping:(BOOL)clipping;
- (CGRect)frameWithInterfaceOrientation:(int64_t)orientation windowScene:(id)scene;
- (id)_init;
@end

@implementation SBWindowDefaultLayoutStrategy

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBWindowDefaultLayoutStrategy;
  return [(SBWindowDefaultLayoutStrategy *)&v3 init];
}

+ (id)_strategyWithClipping:(BOOL)clipping
{
  clippingCopy = clipping;
  if (_strategyWithClipping____once != -1)
  {
    +[SBWindowDefaultLayoutStrategy _strategyWithClipping:];
  }

  v4 = &_strategyWithClipping____clipStrategy;
  if (!clippingCopy)
  {
    v4 = &_strategyWithClipping____noClipStrategy;
  }

  v5 = *v4;

  return v5;
}

uint64_t __55__SBWindowDefaultLayoutStrategy__strategyWithClipping___block_invoke()
{
  kdebug_trace();
  v0 = [[SBWindowDefaultLayoutStrategy alloc] _init];
  v1 = _strategyWithClipping____clipStrategy;
  _strategyWithClipping____clipStrategy = v0;

  *(_strategyWithClipping____clipStrategy + 8) = 1;
  v2 = [[SBWindowDefaultLayoutStrategy alloc] _init];
  v3 = _strategyWithClipping____noClipStrategy;
  _strategyWithClipping____noClipStrategy = v2;

  return kdebug_trace();
}

- (CGRect)frameWithInterfaceOrientation:(int64_t)orientation windowScene:(id)scene
{
  sceneCopy = scene;
  v6 = sceneCopy;
  if (sceneCopy)
  {
    [sceneCopy _referenceBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    Width = v13;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    Width = v19;
  }

  if ((orientation - 3) <= 1)
  {
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = Width;
    Height = CGRectGetHeight(v25);
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = Width;
    Width = CGRectGetWidth(v26);
    v12 = Height;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = Width;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

@end