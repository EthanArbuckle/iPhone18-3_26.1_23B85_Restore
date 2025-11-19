@interface PTEffectResources
- (PTFaceAttributesNetwork)faceAttributesNetwork;
@end

@implementation PTEffectResources

- (PTFaceAttributesNetwork)faceAttributesNetwork
{
  os_unfair_lock_lock(&sPTEffectResourcesLock);
  if (!self->_faceAttributesNetwork)
  {
    v3 = objc_opt_new();
    faceAttributesNetwork = self->_faceAttributesNetwork;
    self->_faceAttributesNetwork = v3;
  }

  os_unfair_lock_unlock(&sPTEffectResourcesLock);
  v5 = self->_faceAttributesNetwork;

  return v5;
}

@end