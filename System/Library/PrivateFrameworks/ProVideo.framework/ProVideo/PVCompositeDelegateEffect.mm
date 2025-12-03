@interface PVCompositeDelegateEffect
+ (void)registerEffects;
- (BOOL)loadEffect;
- (PVCompositeDelegateEffect)initWithEffectID:(id)d;
- (void)releaseEffect;
@end

@implementation PVCompositeDelegateEffect

+ (void)registerEffects
{
  v4 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"CompositeDelegate", @"FFEffectProperty_DisplayName", @"Internal", @"FFEffectProperty_Category", @"effect.video.compositor", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:@"F3D8E4D0-686B-44C6-8966-E50856A94959" withProperties:v4];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"CompositeDelegate", @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v3 = +[PVContentRegistry sharedInstance];
  [v3 registerContentClass:objc_opt_class() forID:@"F3D8E4D0-686B-44C6-8966-E50856A94959" type:@"effect.video.compositor" withProperties:v2];
}

- (PVCompositeDelegateEffect)initWithEffectID:(id)d
{
  v4.receiver = self;
  v4.super_class = PVCompositeDelegateEffect;
  result = [(PVEffect *)&v4 initWithEffectID:d];
  if (result)
  {
    atomic_store(0, &result->_loaded);
  }

  return result;
}

- (BOOL)loadEffect
{
  renderDelegate = [(PVCompositeDelegateEffect *)self renderDelegate];
  if (renderDelegate)
  {
    v4 = renderDelegate;
    renderDelegate2 = [(PVCompositeDelegateEffect *)self renderDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && !atomic_fetch_add(&self->_loaded.__a_.__a_value, 1u))
    {
      renderDelegate3 = [(PVCompositeDelegateEffect *)self renderDelegate];
      userContext = [(PVCompositeDelegateEffect *)self userContext];
      [renderDelegate3 loadWithUserContext:userContext];
    }
  }

  v10.receiver = self;
  v10.super_class = PVCompositeDelegateEffect;
  return [(PVEffect *)&v10 loadEffect];
}

- (void)releaseEffect
{
  renderDelegate = [(PVCompositeDelegateEffect *)self renderDelegate];
  if (renderDelegate)
  {
    v4 = renderDelegate;
    renderDelegate2 = [(PVCompositeDelegateEffect *)self renderDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && atomic_fetch_add(&self->_loaded.__a_.__a_value, 0xFFFFFFFF) == 1)
    {
      renderDelegate3 = [(PVCompositeDelegateEffect *)self renderDelegate];
      userContext = [(PVCompositeDelegateEffect *)self userContext];
      [renderDelegate3 unloadWithUserContext:userContext];
    }
  }

  v9.receiver = self;
  v9.super_class = PVCompositeDelegateEffect;
  [(PVEffect *)&v9 releaseEffect];
}

@end