@interface PVMotionEffectComponent
- (PVMotionEffect)motionEffect;
- (PVMotionEffectComponent)initWithMotionEffect:(id)effect;
- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties;
- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties;
- (void)motionEffect:(id)effect didLoad:(const void *)load;
- (void)motionEffect:(id)effect willOpenMedia:(const void *)media properties:(id)properties;
- (void)motionEffect:(id)effect willRender:(const void *)render properties:(id)properties time:(id *)time;
- (void)motionEffectDidFailToLoad:(id)load;
- (void)motionEffectDidStartLoading:(id)loading;
@end

@implementation PVMotionEffectComponent

- (PVMotionEffectComponent)initWithMotionEffect:(id)effect
{
  effectCopy = effect;
  v8.receiver = self;
  v8.super_class = PVMotionEffectComponent;
  v5 = [(PVEffectComponent *)&v8 initWithEffect:effectCopy];
  v6 = v5;
  if (v5)
  {
    [(PVMotionEffectComponent *)v5 setMotionEffect:effectCopy];
  }

  return v6;
}

- (void)effect:(id)effect updateProperties:(id)properties allProperties:(id)allProperties
{
  v9.receiver = self;
  v9.super_class = PVMotionEffectComponent;
  [(PVEffectComponent *)&v9 effect:effect updateProperties:properties allProperties:allProperties];
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsLoadedOrReady];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffectDidStartLoading:(id)loading
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v5 = objc_loadWeakRetained(&self->_motionEffect);
  [v5 assertDocumentStatusIsInProgress];
}

- (void)motionEffect:(id)effect didLoad:(const void *)load
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v6 = objc_loadWeakRetained(&self->_motionEffect);
  [v6 assertDocumentStatusIsLoaded];
}

- (void)motionEffect:(id)effect willOpenMedia:(const void *)media properties:(id)properties
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsLoaded];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffect:(id)effect didBecomeReady:(const void *)ready properties:(id)properties
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsReady];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffect:(id)effect willRender:(const void *)render properties:(id)properties time:(id *)time
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertDocumentStatusIsReady];

  v9 = objc_loadWeakRetained(&self->_motionEffect);
  [v9 assertInspectablePropertiesAreLocked];
}

- (void)motionEffectDidFailToLoad:(id)load
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v5 = objc_loadWeakRetained(&self->_motionEffect);
  [v5 assertDocumentStatusIsError];
}

- (PVMotionEffect)motionEffect
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);

  return WeakRetained;
}

@end