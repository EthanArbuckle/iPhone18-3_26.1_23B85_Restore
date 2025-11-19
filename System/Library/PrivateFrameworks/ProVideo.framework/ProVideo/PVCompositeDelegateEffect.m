@interface PVCompositeDelegateEffect
+ (void)registerEffects;
- (BOOL)loadEffect;
- (PVCompositeDelegateEffect)initWithEffectID:(id)a3;
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

- (PVCompositeDelegateEffect)initWithEffectID:(id)a3
{
  v4.receiver = self;
  v4.super_class = PVCompositeDelegateEffect;
  result = [(PVEffect *)&v4 initWithEffectID:a3];
  if (result)
  {
    atomic_store(0, &result->_loaded);
  }

  return result;
}

- (BOOL)loadEffect
{
  v3 = [(PVCompositeDelegateEffect *)self renderDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(PVCompositeDelegateEffect *)self renderDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && !atomic_fetch_add(&self->_loaded.__a_.__a_value, 1u))
    {
      v7 = [(PVCompositeDelegateEffect *)self renderDelegate];
      v8 = [(PVCompositeDelegateEffect *)self userContext];
      [v7 loadWithUserContext:v8];
    }
  }

  v10.receiver = self;
  v10.super_class = PVCompositeDelegateEffect;
  return [(PVEffect *)&v10 loadEffect];
}

- (void)releaseEffect
{
  v3 = [(PVCompositeDelegateEffect *)self renderDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(PVCompositeDelegateEffect *)self renderDelegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && atomic_fetch_add(&self->_loaded.__a_.__a_value, 0xFFFFFFFF) == 1)
    {
      v7 = [(PVCompositeDelegateEffect *)self renderDelegate];
      v8 = [(PVCompositeDelegateEffect *)self userContext];
      [v7 unloadWithUserContext:v8];
    }
  }

  v9.receiver = self;
  v9.super_class = PVCompositeDelegateEffect;
  [(PVEffect *)&v9 releaseEffect];
}

@end