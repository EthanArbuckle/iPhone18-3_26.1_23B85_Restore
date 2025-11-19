@interface KNAnimationRegistryWithFallbacks
- (KNAnimationRegistryWithFallbacks)init;
- (id)animationInfoForEffectIdentifier:(id)a3 animationType:(int64_t)a4;
- (void)registerFallbackEffectIdentifer:(id)a3 forEffectIdentifer:(id)a4;
@end

@implementation KNAnimationRegistryWithFallbacks

- (KNAnimationRegistryWithFallbacks)init
{
  v8.receiver = self;
  v8.super_class = KNAnimationRegistryWithFallbacks;
  v4 = [(KNAnimationRegistryWithFallbacks *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_instance(KNAnimationRegistry, v2, v3);
    registry = v4->_registry;
    v4->_registry = v5;
  }

  return v4;
}

- (id)animationInfoForEffectIdentifier:(id)a3 animationType:(int64_t)a4
{
  v7 = a3;
  fallbacks = self->_fallbacks;
  if (!fallbacks || (objc_msgSend_objectForKeyedSubscript_(fallbacks, v6, v7), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = v7;
  }

  v11 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(self->_registry, v9, v10, a4);

  return v11;
}

- (void)registerFallbackEffectIdentifer:(id)a3 forEffectIdentifer:(id)a4
{
  v11 = a3;
  v7 = a4;
  fallbacks = self->_fallbacks;
  if (!fallbacks)
  {
    v9 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v6, 1);
    v10 = self->_fallbacks;
    self->_fallbacks = v9;

    fallbacks = self->_fallbacks;
  }

  objc_msgSend_setObject_forKeyedSubscript_(fallbacks, v6, v11, v7);
}

@end