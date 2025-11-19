@interface PVMotionEffectComponent
- (PVMotionEffect)motionEffect;
- (PVMotionEffectComponent)initWithMotionEffect:(id)a3;
- (void)effect:(id)a3 updateProperties:(id)a4 allProperties:(id)a5;
- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5;
- (void)motionEffect:(id)a3 didLoad:(const void *)a4;
- (void)motionEffect:(id)a3 willOpenMedia:(const void *)a4 properties:(id)a5;
- (void)motionEffect:(id)a3 willRender:(const void *)a4 properties:(id)a5 time:(id *)a6;
- (void)motionEffectDidFailToLoad:(id)a3;
- (void)motionEffectDidStartLoading:(id)a3;
@end

@implementation PVMotionEffectComponent

- (PVMotionEffectComponent)initWithMotionEffect:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PVMotionEffectComponent;
  v5 = [(PVEffectComponent *)&v8 initWithEffect:v4];
  v6 = v5;
  if (v5)
  {
    [(PVMotionEffectComponent *)v5 setMotionEffect:v4];
  }

  return v6;
}

- (void)effect:(id)a3 updateProperties:(id)a4 allProperties:(id)a5
{
  v9.receiver = self;
  v9.super_class = PVMotionEffectComponent;
  [(PVEffectComponent *)&v9 effect:a3 updateProperties:a4 allProperties:a5];
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsLoadedOrReady];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffectDidStartLoading:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v5 = objc_loadWeakRetained(&self->_motionEffect);
  [v5 assertDocumentStatusIsInProgress];
}

- (void)motionEffect:(id)a3 didLoad:(const void *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v6 = objc_loadWeakRetained(&self->_motionEffect);
  [v6 assertDocumentStatusIsLoaded];
}

- (void)motionEffect:(id)a3 willOpenMedia:(const void *)a4 properties:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsLoaded];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffect:(id)a3 didBecomeReady:(const void *)a4 properties:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v7 = objc_loadWeakRetained(&self->_motionEffect);
  [v7 assertDocumentStatusIsReady];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertInspectablePropertiesAreLocked];
}

- (void)motionEffect:(id)a3 willRender:(const void *)a4 properties:(id)a5 time:(id *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_motionEffect);
  [WeakRetained assertDocumentIsLocked];

  v8 = objc_loadWeakRetained(&self->_motionEffect);
  [v8 assertDocumentStatusIsReady];

  v9 = objc_loadWeakRetained(&self->_motionEffect);
  [v9 assertInspectablePropertiesAreLocked];
}

- (void)motionEffectDidFailToLoad:(id)a3
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