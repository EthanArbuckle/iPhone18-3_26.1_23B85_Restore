@interface KNAnimationRegistryWithFallbacks
- (KNAnimationRegistryWithFallbacks)init;
- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type;
- (void)registerFallbackEffectIdentifer:(id)identifer forEffectIdentifer:(id)effectIdentifer;
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

- (id)animationInfoForEffectIdentifier:(id)identifier animationType:(int64_t)type
{
  identifierCopy = identifier;
  fallbacks = self->_fallbacks;
  if (!fallbacks || (objc_msgSend_objectForKeyedSubscript_(fallbacks, v6, identifierCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = identifierCopy;
  }

  v11 = objc_msgSend_animationInfoForEffectIdentifier_animationType_(self->_registry, v9, v10, type);

  return v11;
}

- (void)registerFallbackEffectIdentifer:(id)identifer forEffectIdentifer:(id)effectIdentifer
{
  identiferCopy = identifer;
  effectIdentiferCopy = effectIdentifer;
  fallbacks = self->_fallbacks;
  if (!fallbacks)
  {
    v9 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v6, 1);
    v10 = self->_fallbacks;
    self->_fallbacks = v9;

    fallbacks = self->_fallbacks;
  }

  objc_msgSend_setObject_forKeyedSubscript_(fallbacks, v6, identiferCopy, effectIdentiferCopy);
}

@end