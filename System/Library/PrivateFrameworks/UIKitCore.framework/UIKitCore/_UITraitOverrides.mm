@interface _UITraitOverrides
- (BOOL)containsTrait:(Class)trait;
- (BOOL)isEqual:(id)equal;
- (BOOL)resolvesNaturalAlignmentWithBaseWritingDirection;
- (NSObject)_environmentWrapper;
- (NSString)description;
- (NSString)typesettingLanguage;
- (UIColor)_tintColor;
- (_UITraitOverrides)initWithCoder:(id)coder;
- (double)_typesettingLanguageAwareLineHeightRatio;
- (double)_valueForCGFloatTraitToken:(id)token;
- (double)valueForCGFloatTrait:(Class)trait;
- (id).cxx_construct;
- (id)_description;
- (id)_objectForTraitToken:(id)token;
- (id)_overridesDescriptionMatching:(int)matching includingInternalOverrides:(char)overrides isNested:;
- (id)_swiftImplCopy;
- (id)_traitCollectionByApplyingAllOverridesToTraitCollection:(void *)collection withOverrides:(void *)overrides defaultValueOverrides:;
- (id)_traitOverridesDescriptionMatching:(void *)matching;
- (id)objectForTrait:(Class)trait;
- (int64_t)_valueForNSIntegerTraitToken:(id)token;
- (int64_t)imageDynamicRange;
- (int64_t)listEnvironment;
- (int64_t)sceneCaptureState;
- (int64_t)splitViewControllerLayoutEnvironment;
- (int64_t)tabAccessoryEnvironment;
- (int64_t)valueForNSIntegerTrait:(Class)trait;
- (uint64_t)_containsTraitToken:(uint64_t)token;
- (uint64_t)_hasChildTransformWithIdentifier:(uint64_t)identifier;
- (uint64_t)_hasTransformWithIdentifier:(uint64_t)identifier;
- (uint64_t)_isEmpty;
- (unint64_t)_hasChildTransforms;
- (unint64_t)_hasTransforms;
- (unint64_t)_valueForNSUIntegerTraitToken:(id)token;
- (unint64_t)valueForNSUIntegerTrait:(Class)trait;
- (void)_addChildTransformWithIdentifier:(void *)identifier transform:;
- (void)_addTransformWithIdentifier:(void *)identifier transform:;
- (void)_applyAllOverridesUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:(void *)collectionProvider overrides:(void *)overrides defaultValueOverrides:;
- (void)_applyOverridesUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:;
- (void)_applyTransformsForChild:(void *)child usingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:;
- (void)_applyTransformsUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:;
- (void)_childTraitTransformDidChange;
- (void)_overridesAppliedAfter;
- (void)_overridesAppliedBefore;
- (void)_removeChildTransformWithIdentifier:(uint64_t)identifier;
- (void)_removeTraitToken:(uint64_t)token;
- (void)_removeTransformWithIdentifier:(uint64_t)identifier;
- (void)_replaceOverrideTraitCollection:(uint64_t)collection;
- (void)_replaceWithOverrides:(uint64_t)overrides;
- (void)_setCGFloatValue:(double)value forTraitToken:(id)token;
- (void)_setDelegate:(uint64_t)delegate;
- (void)_setEnvironmentWrapper:(id)wrapper;
- (void)_setNSIntegerValue:(int64_t)value forTraitToken:(id)token;
- (void)_setNSUIntegerValue:(unint64_t)value forTraitToken:(id)token;
- (void)_setObject:(id)object forTraitToken:(id)token;
- (void)_setOverrideTraitCollection:(void *)collection defaultValueOverrides:;
- (void)_setOverrideTraitCollection:(void *)collection defaultValueOverrides:(void *)overrides overridesAppliedBefore:(void *)before overridesAppliedAfter:;
- (void)_setTintColor:(id)color;
- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)ratio;
- (void)_traitCollectionByApplyingOverridesToTraitCollection:(void *)collection;
- (void)_traitOverridesDidChange;
- (void)_traitOverridesWillChange:(id)change withApplicator:(id)applicator;
- (void)encodeWithCoder:(id)coder;
- (void)initWithDelegate:(void *)delegate;
- (void)removeTrait:(Class)trait;
- (void)setCGFloatValue:(double)value forTrait:(Class)trait;
- (void)setImageDynamicRange:(int64_t)range;
- (void)setListEnvironment:(int64_t)environment;
- (void)setNSIntegerValue:(int64_t)value forTrait:(Class)trait;
- (void)setNSUIntegerValue:(unint64_t)value forTrait:(Class)trait;
- (void)setObject:(id)object forTrait:(Class)trait;
- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)direction;
- (void)setSceneCaptureState:(int64_t)state;
- (void)setSplitViewControllerLayoutEnvironment:(int64_t)environment;
- (void)setTabAccessoryEnvironment:(int64_t)environment;
- (void)setTypesettingLanguage:(id)language;
@end

@implementation _UITraitOverrides

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

- (unint64_t)_hasTransforms
{
  if (result)
  {
    v1 = result;
    return *(result + 88) && ([_UITraitOverrides _hasTransforms]& 1) != 0 || v1[12] && ([_UITraitOverrides _hasTransforms]& 1) != 0 || v1[3] != v1[4];
  }

  return result;
}

- (unint64_t)_hasChildTransforms
{
  if (result)
  {
    v1 = result;
    return *(result + 88) && ([_UITraitOverrides _hasChildTransforms]& 1) != 0 || v1[12] && ([_UITraitOverrides _hasChildTransforms]& 1) != 0 || v1[6] != v1[7];
  }

  return result;
}

- (uint64_t)_isEmpty
{
  if (!self || self[11] && ![_UITraitOverrides _isEmpty])
  {
    return 0;
  }

  if (self[12] && ![_UITraitOverrides _isEmpty])
  {
    return 0;
  }

  v2 = self[2];
  if (v2)
  {
    if (_UITraitTokenSetCount(v2 + 16))
    {
      return 0;
    }
  }

  v5 = self[1];
  v6 = +[UITraitCollection _emptyTraitCollection];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (v7 && v8)
    {
      v3 = [v7 isEqual:v8];
    }
  }

  return v3;
}

- (void)_overridesAppliedBefore
{
  if (self)
  {
    selfCopy = self;
    v3 = self[11];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:self];
      v5 = selfCopy[11];
      selfCopy[11] = v4;

      v3 = selfCopy[11];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)_swiftImplCopy
{
  if (self)
  {
    v2 = [[_UITraitOverrides alloc] initWithDelegate:?];
    v3 = v2;
    if (v2)
    {
      objc_storeStrong(v2 + 1, *(self + 8));
      objc_storeStrong(v3 + 2, *(self + 16));
      _swiftImplCopy = [(_UITraitOverrides *)*(self + 88) _swiftImplCopy];
      v5 = v3[11];
      v3[11] = _swiftImplCopy;

      _swiftImplCopy2 = [(_UITraitOverrides *)*(self + 96) _swiftImplCopy];
      v7 = v3[12];
      v3[12] = _swiftImplCopy2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_traitOverridesDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _traitOverridesDidChange];
}

- (void)_overridesAppliedAfter
{
  if (self)
  {
    selfCopy = self;
    v3 = self[12];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:self];
      v5 = selfCopy[12];
      selfCopy[12] = v4;

      v3 = selfCopy[12];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)initWithDelegate:(void *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v10.receiver = delegate;
    v10.super_class = _UITraitOverrides;
    v4 = objc_msgSendSuper2(&v10, sel_init);
    delegate = v4;
    if (v4)
    {
      [(_UITraitOverrides *)v4 _setDelegate:v3];
      v5 = +[UITraitCollection _emptyTraitCollection];
      v6 = delegate[1];
      delegate[1] = v5;

      v7 = +[_UITraitTokenSet emptySet];
      v8 = delegate[2];
      delegate[2] = v7;
    }
  }

  return delegate;
}

- (void)_setDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((delegate + 80));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 80), obj);
      *(delegate + 72) = *(delegate + 72) & 0xFE | objc_opt_respondsToSelector() & 1;
      v3 = obj;
    }
  }
}

- (_UITraitOverrides)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _UITraitOverrides;
  v5 = [(_UITraitOverrides *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrides"];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    if (!*(v5 + 1))
    {
      v8 = +[UITraitCollection _emptyTraitCollection];
      v9 = *(v5 + 1);
      *(v5 + 1) = v8;
    }

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"defaultValueOverrides"];

    if (v13)
    {
      v14 = [[_UITraitTokenSet alloc] initWithNSSetRepresentation:v13];
    }

    else
    {
      v14 = +[_UITraitTokenSet emptySet];
    }

    v15 = *(v5 + 2);
    *(v5 + 2) = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overridesAppliedBefore"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    [(_UITraitOverrides *)*(v5 + 11) _setDelegate:v5];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overridesAppliedAfter"];
    v19 = *(v5 + 12);
    *(v5 + 12) = v18;

    [(_UITraitOverrides *)*(v5 + 12) _setDelegate:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  overrides = self->_overrides;
  v5 = +[UITraitCollection _emptyTraitCollection];
  v6 = overrides;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(UITraitCollection *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [coderCopy encodeObject:self->_overrides forKey:@"overrides"];
  }

LABEL_9:
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides && _UITraitTokenSetCount(&defaultValueOverrides->_storage))
  {
    nSSetRepresentation = [(_UITraitTokenSet *)self->_defaultValueOverrides NSSetRepresentation];
    [coderCopy encodeObject:nSSetRepresentation forKey:@"defaultValueOverrides"];
  }

  overridesAppliedBefore = self->_overridesAppliedBefore;
  if (overridesAppliedBefore)
  {
    [coderCopy encodeObject:overridesAppliedBefore forKey:@"overridesAppliedBefore"];
  }

  overridesAppliedAfter = self->_overridesAppliedAfter;
  if (overridesAppliedAfter)
  {
    [coderCopy encodeObject:overridesAppliedAfter forKey:@"overridesAppliedAfter"];
  }
}

- (void)_applyAllOverridesUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:(void *)collectionProvider overrides:(void *)overrides defaultValueOverrides:
{
  v14 = a2;
  providerCopy = provider;
  collectionProviderCopy = collectionProvider;
  overridesCopy = overrides;
  if (self)
  {
    v12 = *(self + 88);
    if (v12)
    {
      [(_UITraitOverrides *)v12 _applyOverridesUsingTraitCollectionProvider:v14 mutableTraitCollectionProvider:providerCopy];
    }

    [UITraitCollection _applyOverrides:collectionProviderCopy defaultValueOverrides:overridesCopy usingTraitCollectionProvider:providerCopy mutableTraitCollectionProvider:providerCopy];
    v13 = *(self + 96);
    if (v13)
    {
      [(_UITraitOverrides *)v13 _applyOverridesUsingTraitCollectionProvider:v14 mutableTraitCollectionProvider:providerCopy];
    }
  }
}

- (void)_applyOverridesUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:
{
  v6 = a2;
  providerCopy = provider;
  if (self)
  {
    [(_UITraitOverrides *)self _applyAllOverridesUsingTraitCollectionProvider:v6 mutableTraitCollectionProvider:providerCopy overrides:*(self + 8) defaultValueOverrides:*(self + 16)];
  }
}

- (id)_traitCollectionByApplyingAllOverridesToTraitCollection:(void *)collection withOverrides:(void *)overrides defaultValueOverrides:
{
  v7 = a2;
  collectionCopy = collection;
  overridesCopy = overrides;
  if (self)
  {
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__traitCollectionByApplyingAllOverridesToTraitCollection_withOverrides_defaultValueOverrides_ object:self file:@"_UITraitOverrides.mm" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"baseTraitCollection != nil"}];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __113___UITraitOverrides__traitCollectionByApplyingAllOverridesToTraitCollection_withOverrides_defaultValueOverrides___block_invoke;
    v12[3] = &unk_1E71200F8;
    v12[4] = self;
    v13 = collectionCopy;
    v14 = overridesCopy;
    self = [(UITraitCollection *)v7 _traitCollectionByModifyingTraitsCopyOnWrite:v12];
  }

  return self;
}

- (void)_traitOverridesWillChange:(id)change withApplicator:(id)applicator
{
  changeCopy = change;
  applicatorCopy = applicator;
  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___UITraitOverrides__traitOverridesWillChange_withApplicator___block_invoke;
    v9[3] = &unk_1E7120120;
    v10 = changeCopy;
    selfCopy = self;
    v12 = applicatorCopy;
    [WeakRetained _traitOverridesWillChange:self withApplicator:v9];
  }
}

- (void)_traitCollectionByApplyingOverridesToTraitCollection:(void *)collection
{
  v3 = a2;
  if (collection)
  {
    collection = [(_UITraitOverrides *)collection _traitCollectionByApplyingAllOverridesToTraitCollection:v3 withOverrides:collection[1] defaultValueOverrides:collection[2]];
  }

  return collection;
}

- (void)_childTraitTransformDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _childTraitTransformDidChange];
}

- (void)_replaceWithOverrides:(uint64_t)overrides
{
  v3 = a2;
  v4 = v3;
  if (!overrides || overrides == v3)
  {
    goto LABEL_19;
  }

  v15 = v3;
  v5 = v3[1];
  v6 = *(overrides + 8);
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    v4 = v15;
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_14;
    }

    v9 = [v6 isEqual:v7];

    v4 = v15;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v10 = v4[2];
  v6 = *(overrides + 16);
  v11 = v10;
  v8 = v11;
  if (v6 != v11)
  {
    if (v6 && v11)
    {
      v12 = [v6 isEqual:v11];

      v4 = v15;
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_14:

    v4 = v15;
LABEL_18:
    [(_UITraitOverrides *)overrides _setOverrideTraitCollection:v4[2] defaultValueOverrides:v4[11] overridesAppliedBefore:v15[12] overridesAppliedAfter:?];
    v4 = v15;
    goto LABEL_19;
  }

  v4 = v15;
LABEL_16:
  v13 = _UINullableTraitOverridesEqual(*(overrides + 88), v4[11]);
  v4 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = _UINullableTraitOverridesEqual(*(overrides + 96), v15[12]);
  v4 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_setOverrideTraitCollection:(void *)collection defaultValueOverrides:(void *)overrides overridesAppliedBefore:(void *)before overridesAppliedAfter:
{
  v10 = a2;
  collectionCopy = collection;
  overridesCopy = overrides;
  beforeCopy = before;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 80));
    if (*(self + 72))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __116___UITraitOverrides__setOverrideTraitCollection_defaultValueOverrides_overridesAppliedBefore_overridesAppliedAfter___block_invoke;
      v15[3] = &unk_1E7120148;
      v15[4] = self;
      v16 = v10;
      v17 = collectionCopy;
      [WeakRetained _traitOverridesWillChange:self withApplicator:v15];
    }

    [(_UITraitOverrides *)overridesCopy _setDelegate:self];
    [(_UITraitOverrides *)beforeCopy _setDelegate:self];
    objc_storeStrong((self + 8), a2);
    objc_storeStrong((self + 16), collection);
    objc_storeStrong((self + 88), overrides);
    objc_storeStrong((self + 96), before);
    [WeakRetained _traitOverridesDidChange];
  }
}

- (void)_setOverrideTraitCollection:(void *)collection defaultValueOverrides:
{
  v6 = a2;
  collectionCopy = collection;
  if (self)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:collectionCopy overridesAppliedBefore:*(self + 88) overridesAppliedAfter:*(self + 96)];
  }
}

- (void)_replaceOverrideTraitCollection:(uint64_t)collection
{
  v3 = a2;
  v4 = v3;
  if (!collection)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = +[UITraitCollection _emptyTraitCollection];
  }

  v5 = *(collection + 16);
  if (v5 && _UITraitTokenSetCount(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = *(collection + 8);
  v8 = v4;
  if (v6 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v6)
  {

    goto LABEL_6;
  }

  v10 = v8;
  v9 = [v6 isEqual:v8];

  v7 = v10;
  if ((v9 & 1) == 0)
  {
LABEL_6:
    v6 = +[_UITraitTokenSet emptySet];
    [(_UITraitOverrides *)collection _setOverrideTraitCollection:v4 defaultValueOverrides:v6];
LABEL_7:

LABEL_8:
    v7 = v4;
  }
}

- (BOOL)containsTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenOrPlaceholderForTrait:trait];
  if ([UITraitCollection _isPlaceholderTraitToken:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UITraitOverrides *)self _containsTraitToken:v4];
  }

  return v5;
}

- (uint64_t)_containsTraitToken:(uint64_t)token
{
  v3 = a2;
  v4 = v3;
  if (token)
  {
    v5 = *(token + 16);
    if (v5 && (v6 = _UIGetTraitTokenValue(v3), (_UITraitTokenSetContains((v5 + 16), v6) & 1) != 0))
    {
      token = 1;
    }

    else
    {
      token = [*(token + 8) _isTraitTokenSpecified:v4];
    }
  }

  return token;
}

- (void)removeTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenOrPlaceholderForTrait:trait];
  if (![UITraitCollection _isPlaceholderTraitToken:?])
  {
    [(_UITraitOverrides *)self _removeTraitToken:v4];
  }
}

- (void)_removeTraitToken:(uint64_t)token
{
  v6 = a2;
  if (token)
  {
    v3 = *(token + 16);
    if (v3 && (v4 = _UIGetTraitTokenValue(v6), _UITraitTokenSetContains((v3 + 16), v4)))
    {
      v5 = [(_UITraitTokenSet *)*(token + 16) setByRemovingTraitToken:v6];
      [(_UITraitOverrides *)token _setOverrideTraitCollection:v5 defaultValueOverrides:?];
    }

    else
    {
      if (![*(token + 8) _isTraitTokenSpecified:v6])
      {
        goto LABEL_8;
      }

      v5 = [*(token + 8) _traitCollectionByRemovingTraitToken:v6];
      [(_UITraitOverrides *)token _setOverrideTraitCollection:v5 defaultValueOverrides:*(token + 16)];
    }
  }

LABEL_8:
}

- (double)valueForCGFloatTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenForCGFloatTrait:trait];
  [(_UITraitOverrides *)self _valueForCGFloatTraitToken:v4];
  v6 = v5;

  return v6;
}

- (double)_valueForCGFloatTraitToken:(id)token
{
  tokenCopy = token;
  if (([(_UITraitOverrides *)self _containsTraitToken:tokenCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [UITraitCollection _nameForTraitToken:tokenCopy];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:284 description:{@"Can't return value for trait %@ that has no override", v10}];
  }

  [(UITraitCollection *)self->_overrides _valueForCGFloatTraitToken:tokenCopy];
  v7 = v6;

  return v7;
}

- (void)setCGFloatValue:(double)value forTrait:(Class)trait
{
  v6 = [UITraitCollection _traitTokenForCGFloatTrait:trait];
  [(_UITraitOverrides *)self _setCGFloatValue:value forTraitToken:?];
}

- (void)_setCGFloatValue:(double)value forTraitToken:(id)token
{
  tokenCopy = token;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(tokenCopy);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  [v10 _valueForCGFloatTraitToken:tokenCopy];
  v12 = v11;

  if (v12 == value)
  {
    v13 = 0;
  }

  else
  {
    v13 = defaultValueOverrides;
  }

  if (v13 == 1)
  {
    v14 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:tokenCopy];
LABEL_13:
    v17 = v14;

    v7 = v17;
    v16 = tokenCopy;
    goto LABEL_14;
  }

  if (v12 == value)
  {
    v15 = defaultValueOverrides;
  }

  else
  {
    v15 = 1;
  }

  v16 = tokenCopy;
  if ((v15 & 1) == 0)
  {
    v14 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:tokenCopy];
    goto LABEL_13;
  }

LABEL_14:
  [(UITraitCollection *)self->_overrides _valueForCGFloatTraitToken:v16];
  if (v18 != value)
  {
    v19 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingCGFloatValue:tokenCopy forTraitToken:value];

    v6 = v19;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (int64_t)valueForNSIntegerTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenForNSIntegerTrait:trait];
  v5 = [(_UITraitOverrides *)self _valueForNSIntegerTraitToken:v4];

  return v5;
}

- (int64_t)_valueForNSIntegerTraitToken:(id)token
{
  tokenCopy = token;
  if (([(_UITraitOverrides *)self _containsTraitToken:tokenCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:tokenCopy];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:318 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _valueForNSIntegerTraitToken:tokenCopy];

  return v6;
}

- (void)setNSIntegerValue:(int64_t)value forTrait:(Class)trait
{
  v6 = [UITraitCollection _traitTokenForNSIntegerTrait:trait];
  [(_UITraitOverrides *)self _setNSIntegerValue:value forTraitToken:?];
}

- (void)_setNSIntegerValue:(int64_t)value forTraitToken:(id)token
{
  tokenCopy = token;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(tokenCopy);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  v11 = [v10 _valueForNSIntegerTraitToken:tokenCopy];

  if (v11 == value)
  {
    v12 = 0;
  }

  else
  {
    v12 = defaultValueOverrides;
  }

  if (v12 == 1)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:tokenCopy];
LABEL_13:
    v16 = v13;

    v7 = v16;
    v15 = tokenCopy;
    goto LABEL_14;
  }

  if (v11 == value)
  {
    v14 = defaultValueOverrides;
  }

  else
  {
    v14 = 1;
  }

  v15 = tokenCopy;
  if ((v14 & 1) == 0)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:tokenCopy];
    goto LABEL_13;
  }

LABEL_14:
  if ([(UITraitCollection *)self->_overrides _valueForNSIntegerTraitToken:v15]!= value)
  {
    v17 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingNSIntegerValue:value forTraitToken:tokenCopy];

    v6 = v17;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (unint64_t)valueForNSUIntegerTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenForNSUIntegerTrait:trait];
  v5 = [(_UITraitOverrides *)self _valueForNSUIntegerTraitToken:v4];

  return v5;
}

- (unint64_t)_valueForNSUIntegerTraitToken:(id)token
{
  tokenCopy = token;
  if (([(_UITraitOverrides *)self _containsTraitToken:tokenCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:tokenCopy];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:354 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _valueForNSUIntegerTraitToken:tokenCopy];

  return v6;
}

- (void)setNSUIntegerValue:(unint64_t)value forTrait:(Class)trait
{
  v6 = [UITraitCollection _traitTokenForNSUIntegerTrait:trait];
  [(_UITraitOverrides *)self _setNSUIntegerValue:value forTraitToken:?];
}

- (void)_setNSUIntegerValue:(unint64_t)value forTraitToken:(id)token
{
  tokenCopy = token;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(tokenCopy);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  v11 = [v10 _valueForNSUIntegerTraitToken:tokenCopy];

  if (v11 == value)
  {
    v12 = 0;
  }

  else
  {
    v12 = defaultValueOverrides;
  }

  if (v12 == 1)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:tokenCopy];
LABEL_13:
    v16 = v13;

    v7 = v16;
    v15 = tokenCopy;
    goto LABEL_14;
  }

  if (v11 == value)
  {
    v14 = defaultValueOverrides;
  }

  else
  {
    v14 = 1;
  }

  v15 = tokenCopy;
  if ((v14 & 1) == 0)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:tokenCopy];
    goto LABEL_13;
  }

LABEL_14:
  if ([(UITraitCollection *)self->_overrides _valueForNSUIntegerTraitToken:v15]!= value)
  {
    v17 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingNSUIntegerValue:value forTraitToken:tokenCopy];

    v6 = v17;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (id)objectForTrait:(Class)trait
{
  v4 = [UITraitCollection _traitTokenForObjectTrait:trait];
  v5 = [(_UITraitOverrides *)self _objectForTraitToken:v4];

  return v5;
}

- (id)_objectForTraitToken:(id)token
{
  tokenCopy = token;
  if (([(_UITraitOverrides *)self _containsTraitToken:tokenCopy]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:tokenCopy];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:390 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _objectForTraitToken:tokenCopy];

  return v6;
}

- (void)setObject:(id)object forTrait:(Class)trait
{
  objectCopy = object;
  v6 = [UITraitCollection _traitTokenForObjectTrait:trait];
  [(_UITraitOverrides *)self _setObject:objectCopy forTraitToken:v6];
}

- (void)_setObject:(id)object forTraitToken:(id)token
{
  objectCopy = object;
  tokenCopy = token;
  v8 = self->_overrides;
  v9 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v11 = _UIGetTraitTokenValue(tokenCopy);
    v12 = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[UITraitCollection _emptyTraitCollection];
  v14 = [v13 _objectForTraitToken:tokenCopy];
  v15 = objectCopy;
  v16 = v15;
  if (v14 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 0;
    if (v15 && v14)
    {
      v17 = [v14 isEqual:v15];
    }
  }

  if (!v12 || (v17 & 1) != 0)
  {
    if (v12 & 1 | ((v17 & 1) == 0))
    {
      goto LABEL_14;
    }

    v18 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:tokenCopy];
  }

  else
  {
    v18 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:tokenCopy];
  }

  v19 = v18;

  v9 = v19;
LABEL_14:
  v20 = [(UITraitCollection *)self->_overrides _objectForTraitToken:tokenCopy];
  v21 = v16;
  v23 = v21;
  if (v20 == v21)
  {
  }

  else
  {
    if (v21 && v20)
    {
      v22 = [(UITraitCollection *)v20 isEqual:v21];

      if (v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    [(UITraitCollection *)self->_overrides _traitCollectionByReplacingObject:v23 forTraitToken:tokenCopy];
    v8 = v20 = v8;
  }

LABEL_23:
  if (v8 != self->_overrides || v9 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v8 defaultValueOverrides:v9];
  }
}

- (NSObject)_environmentWrapper
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:420 description:{@"%@ does not support -%@", v6, v7}];

  return 0;
}

- (void)_setEnvironmentWrapper:(id)wrapper
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:425 description:{@"%@ does not support -%@", v6, v7}];
}

- (UIColor)_tintColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:429 description:{@"%@ does not support -%@", v6, v7}];

  return 0;
}

- (void)_setTintColor:(id)color
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:434 description:{@"%@ does not support -%@", v6, v7}];
}

- (NSString)typesettingLanguage
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self objectForTrait:v3];

  return v4;
}

- (void)setTypesettingLanguage:(id)language
{
  v5 = [language copy];
  v4 = objc_opt_self();
  [(_UITraitOverrides *)self setObject:v5 forTrait:v4];
}

- (int64_t)imageDynamicRange
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setImageDynamicRange:(int64_t)range
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:range forTrait:v5];
}

- (int64_t)sceneCaptureState
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setSceneCaptureState:(int64_t)state
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:state forTrait:v5];
}

- (int64_t)listEnvironment
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setListEnvironment:(int64_t)environment
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:environment forTrait:v5];
}

- (int64_t)tabAccessoryEnvironment
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (void)setTabAccessoryEnvironment:(int64_t)environment
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setNSIntegerValue:environment forTrait:?];
}

- (int64_t)splitViewControllerLayoutEnvironment
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (void)setSplitViewControllerLayoutEnvironment:(int64_t)environment
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setNSIntegerValue:environment forTrait:?];
}

- (double)_typesettingLanguageAwareLineHeightRatio
{
  v3 = objc_opt_self();
  [(_UITraitOverrides *)self valueForCGFloatTrait:v3];
  v5 = v4;

  return v5;
}

- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)ratio
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setCGFloatValue:ratio forTrait:?];
}

- (BOOL)resolvesNaturalAlignmentWithBaseWritingDirection
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self objectForTrait:v3];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)direction
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:direction];
  v4 = objc_opt_self();
  [(_UITraitOverrides *)self setObject:v5 forTrait:v4];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if ([(UITraitCollection *)self->_overrides isEqual:v6[1]]&& [(_UITraitTokenSet *)self->_defaultValueOverrides isEqual:v6[2]]&& _UINullableTraitOverridesEqual(self->_overridesAppliedBefore, v6[11]))
    {
      v7 = _UINullableTraitOverridesEqual(self->_overridesAppliedAfter, v6[12]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_overridesDescriptionMatching:(int)matching includingInternalOverrides:(char)overrides isNested:
{
  v48 = *MEMORY[0x1E69E9840];
  v35 = a2;
  selfCopy = self;
  if (!self)
  {
    string = 0;
    goto LABEL_54;
  }

  string = [MEMORY[0x1E696AD60] string];
  if (matching)
  {
    v5 = *(self + 88);
    if (v5)
    {
      if (([(_UITraitOverrides *)v5 _isEmpty]& 1) == 0)
      {
        v6 = [(_UITraitOverrides *)*(self + 88) _overridesDescriptionMatching:v35 includingInternalOverrides:1 isNested:1];
        if (![v35 length] || objc_msgSend(v6, "length"))
        {
          [string appendFormat:@"overridesAppliedBefore = %@", v6];
        }
      }
    }
  }

  v38 = v35;
  string2 = [MEMORY[0x1E696AD60] string];
  v7 = *(selfCopy + 8);
  v8 = +[UITraitCollection _emptyTraitCollection];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    v13 = v38;
LABEL_19:

    goto LABEL_20;
  }

  if (!v9 || !v10)
  {

    v13 = v38;
    goto LABEL_16;
  }

  v12 = [v9 isEqual:v10];

  v13 = v38;
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v11 = [*(selfCopy + 8) _traitsDescriptionMatching:v13];
    if (![v13 length] || objc_msgSend(v11, "length"))
    {
      [string2 appendString:v11];
    }

    goto LABEL_19;
  }

LABEL_20:
  v14 = *(selfCopy + 16);
  if (v14)
  {
    v13 = v38;
    if (_UITraitTokenSetCount(v14 + 16))
    {
      v15 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = *(selfCopy + 16);
      if (v16)
      {
        v17 = _UITraitTokenSetCount(v16 + 16);
      }

      else
      {
        v17 = 0;
      }

      v18 = [v15 initWithCapacity:v17];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = *(selfCopy + 16);
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v20)
      {
        v21 = *v41;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v41 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v40 + 1) + 8 * i);
            objc_opt_self();
            v45 = 0u;
            v46 = 0u;
            v44 = 0u;
            _UIGetTraitMetadata(v23, 0, &v44);
            v24 = v45;
            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = (defaultValue)", v24];
            [v18 addObject:v25];
          }

          v20 = [v19 countByEnumeratingWithState:&v40 objects:v47 count:16];
        }

        while (v20);
      }

      v13 = v38;
      if ([v38 length])
      {
        lowercaseString = [v38 lowercaseString];

        v27 = MEMORY[0x1E696AE18];
        *&v44 = MEMORY[0x1E69E9820];
        *(&v44 + 1) = 3221225472;
        *&v45 = __54___UITraitOverrides__rawOverridesDescriptionMatching___block_invoke;
        *(&v45 + 1) = &unk_1E7120170;
        v13 = lowercaseString;
        *&v46 = v13;
        v28 = [v27 predicateWithBlock:&v44];
        [v18 filterUsingPredicate:v28];
      }

      if ([v18 count])
      {
        if ([string2 length])
        {
          [string2 appendString:{@", "}];
        }

        v29 = [v18 componentsJoinedByString:{@", "}];
        [string2 appendString:v29];
      }
    }
  }

  if ([string2 length])
  {
    if ([string length])
    {
      [string appendString:@"; "];
    }

    if ((overrides & 1) == 0)
    {
      [string appendString:@"overrides = "];
    }

    [string appendFormat:@"{ %@ }", string2];
  }

  if (matching)
  {
    v30 = *(selfCopy + 96);
    if (v30)
    {
      if (([(_UITraitOverrides *)v30 _isEmpty]& 1) == 0)
      {
        v31 = [(_UITraitOverrides *)*(selfCopy + 96) _overridesDescriptionMatching:v38 includingInternalOverrides:1 isNested:1];
        if (![v38 length] || objc_msgSend(v31, "length"))
        {
          if ([string length])
          {
            [string appendString:@"; "];
          }

          [string appendFormat:@"overridesAppliedAfter = %@", v31];
        }
      }
    }
  }

LABEL_54:

  return string;
}

- (id)_traitOverridesDescriptionMatching:(void *)matching
{
  v3 = a2;
  if (matching)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    matching = [(_UITraitOverrides *)matching _overridesDescriptionMatching:v3 includingInternalOverrides:has_internal_diagnostics isNested:0];
  }

  return matching;
}

- (id)_description
{
  v3 = [(_UITraitOverrides *)self _overridesDescriptionMatching:1 includingInternalOverrides:0 isNested:?];
  if (![(__CFString *)v3 length])
  {

    v3 = @"no overrides";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p %@>", v6, self, v3];;

  return v7;
}

- (NSString)description
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4 = [(_UITraitOverrides *)self _overridesDescriptionMatching:has_internal_diagnostics includingInternalOverrides:0 isNested:?];
  if (![(__CFString *)v4 length])
  {

    v4 = @"no overrides";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p %@>", v7, self, v4];;

  return v8;
}

- (uint64_t)_hasTransformWithIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    v4 = *(identifier + 24);
    v5 = *(identifier + 32);
    if (v4 == v5)
    {
      identifier = 0;
    }

    else
    {
      v6 = v4 + 16;
      do
      {
        v7 = [v3 isEqualToString:*(v6 - 16)];
        identifier = v7;
        if (v6 == v5)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        v6 += 16;
      }

      while ((v8 & 1) == 0);
    }
  }

  return identifier;
}

- (void)_addTransformWithIdentifier:(void *)identifier transform:
{
  v25 = a2;
  identifierCopy = identifier;
  if (!self)
  {
    goto LABEL_23;
  }

  if (![v25 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__addTransformWithIdentifier_transform_ object:self file:@"_UITraitOverrides.mm" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

LABEL_27:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__addTransformWithIdentifier_transform_ object:self file:@"_UITraitOverrides.mm" lineNumber:676 description:{@"Invalid parameter not satisfying: %@", @"transform != NULL"}];

    goto LABEL_4;
  }

  if (!identifierCopy)
  {
    goto LABEL_27;
  }

LABEL_4:
  v7 = *(self + 32);
  v6 = *(self + 40);
  if (v7 >= v6)
  {
    v9 = *(self + 24);
    v10 = (v7 - v9) >> 4;
    if ((v10 + 1) >> 60)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 3;
    if (v11 >> 3 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v14 = (16 * v10);
    *v14 = v25;
    v14[1] = _Block_copy(identifierCopy);
    v15 = *(self + 24);
    v16 = *(self + 32);
    v17 = v14 + v15 - v16;
    if (v15 != v16)
    {
      v18 = *(self + 24);
      v19 = (v14 + v15 - v16);
      do
      {
        v20 = *v18;
        *v18 = 0;
        v18[1] = 0;
        v18 += 2;
        *v19++ = v20;
      }

      while (v18 != v16);
      do
      {

        v21 = *v15;
        v15 += 2;
      }

      while (v15 != v16);
      v15 = *(self + 24);
    }

    v8 = v14 + 2;
    *(self + 24) = v17;
    *(self + 32) = v8;
    *(self + 40) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = v25;
    v7[1] = _Block_copy(identifierCopy);
    v8 = v7 + 2;
  }

  *(self + 32) = v8;
  WeakRetained = objc_loadWeakRetained((self + 80));
  [WeakRetained _traitOverridesDidChange];

LABEL_23:
}

- (void)_removeTransformWithIdentifier:(uint64_t)identifier
{
  v15 = a2;
  if (identifier)
  {
    if (![v15 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeTransformWithIdentifier_ object:identifier file:@"_UITraitOverrides.mm" lineNumber:686 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v3 = *(identifier + 24);
    if (v3 != *(identifier + 32))
    {
      v4 = -v3;
      while (![v15 isEqualToString:*v3])
      {
        v3 += 16;
        v4 -= 16;
        if (v3 == *(identifier + 32))
        {
          goto LABEL_15;
        }
      }

      v5 = -v4;
      v6 = 16 - v4;
      v7 = *(identifier + 32);
      if (v6 == v7)
      {
        v8 = v5;
      }

      else
      {
        v8 = v5;
        do
        {
          v9 = v8[2];
          v8 += 2;
          *v8 = 0;
          v10 = *v5;
          *v5 = v9;

          v11 = *(v5 + 24);
          *(v5 + 24) = 0;
          v12 = *(v5 + 8);
          *(v5 + 8) = v11;

          v6 += 16;
          v5 = v8;
        }

        while (v6 != v7);
      }

      std::vector<_UIIdentifiedTraitCollectionTransform>::__base_destruct_at_end[abi:nn200100](identifier + 24, v8);
      WeakRetained = objc_loadWeakRetained((identifier + 80));
      [WeakRetained _traitOverridesDidChange];
    }
  }

LABEL_15:
}

- (void)_applyTransformsUsingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:
{
  v10 = a2;
  providerCopy = provider;
  if (self)
  {
    v6 = self[11];
    if (v6)
    {
      [(_UITraitOverrides *)v6 _applyTransformsUsingTraitCollectionProvider:v10 mutableTraitCollectionProvider:providerCopy];
    }

    v7 = self[3];
    v8 = self[4];
    while (v7 != v8)
    {
      (*(*(v7 + 8) + 16))();
      v7 += 16;
    }

    v9 = self[12];
    if (v9)
    {
      [(_UITraitOverrides *)v9 _applyTransformsUsingTraitCollectionProvider:v10 mutableTraitCollectionProvider:providerCopy];
    }
  }
}

- (uint64_t)_hasChildTransformWithIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    v4 = *(identifier + 48);
    v5 = *(identifier + 56);
    if (v4 == v5)
    {
      identifier = 0;
    }

    else
    {
      v6 = v4 + 16;
      do
      {
        v7 = [v3 isEqualToString:*(v6 - 16)];
        identifier = v7;
        if (v6 == v5)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        v6 += 16;
      }

      while ((v8 & 1) == 0);
    }
  }

  return identifier;
}

- (void)_addChildTransformWithIdentifier:(void *)identifier transform:
{
  v25 = a2;
  identifierCopy = identifier;
  if (!self)
  {
    goto LABEL_23;
  }

  if (![v25 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__addChildTransformWithIdentifier_transform_ object:self file:@"_UITraitOverrides.mm" lineNumber:731 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (identifierCopy)
    {
      goto LABEL_4;
    }

LABEL_27:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__addChildTransformWithIdentifier_transform_ object:self file:@"_UITraitOverrides.mm" lineNumber:732 description:{@"Invalid parameter not satisfying: %@", @"childTransform != NULL"}];

    goto LABEL_4;
  }

  if (!identifierCopy)
  {
    goto LABEL_27;
  }

LABEL_4:
  v7 = *(self + 56);
  v6 = *(self + 64);
  if (v7 >= v6)
  {
    v9 = *(self + 48);
    v10 = (v7 - v9) >> 4;
    if ((v10 + 1) >> 60)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v11 = v6 - v9;
    v12 = v11 >> 3;
    if (v11 >> 3 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v14 = (16 * v10);
    *v14 = v25;
    v14[1] = _Block_copy(identifierCopy);
    v15 = *(self + 48);
    v16 = *(self + 56);
    v17 = v14 + v15 - v16;
    if (v15 != v16)
    {
      v18 = *(self + 48);
      v19 = (v14 + v15 - v16);
      do
      {
        v20 = *v18;
        *v18 = 0;
        v18[1] = 0;
        v18 += 2;
        *v19++ = v20;
      }

      while (v18 != v16);
      do
      {

        v21 = *v15;
        v15 += 2;
      }

      while (v15 != v16);
      v15 = *(self + 48);
    }

    v8 = v14 + 2;
    *(self + 48) = v17;
    *(self + 56) = v8;
    *(self + 64) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = v25;
    v7[1] = _Block_copy(identifierCopy);
    v8 = v7 + 2;
  }

  *(self + 56) = v8;
  WeakRetained = objc_loadWeakRetained((self + 80));
  [WeakRetained _childTraitTransformDidChange];

LABEL_23:
}

- (void)_removeChildTransformWithIdentifier:(uint64_t)identifier
{
  v15 = a2;
  if (identifier)
  {
    if (![v15 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeChildTransformWithIdentifier_ object:identifier file:@"_UITraitOverrides.mm" lineNumber:743 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v3 = *(identifier + 48);
    if (v3 != *(identifier + 56))
    {
      v4 = -v3;
      while (![v15 isEqualToString:*v3])
      {
        v3 += 16;
        v4 -= 16;
        if (v3 == *(identifier + 56))
        {
          goto LABEL_15;
        }
      }

      v5 = -v4;
      v6 = 16 - v4;
      v7 = *(identifier + 56);
      if (v6 == v7)
      {
        v8 = v5;
      }

      else
      {
        v8 = v5;
        do
        {
          v9 = v8[2];
          v8 += 2;
          *v8 = 0;
          v10 = *v5;
          *v5 = v9;

          v11 = *(v5 + 24);
          *(v5 + 24) = 0;
          v12 = *(v5 + 8);
          *(v5 + 8) = v11;

          v6 += 16;
          v5 = v8;
        }

        while (v6 != v7);
      }

      std::vector<_UIIdentifiedTraitCollectionTransform>::__base_destruct_at_end[abi:nn200100](identifier + 48, v8);
      WeakRetained = objc_loadWeakRetained((identifier + 80));
      [WeakRetained _childTraitTransformDidChange];
    }
  }

LABEL_15:
}

- (void)_applyTransformsForChild:(void *)child usingTraitCollectionProvider:(void *)provider mutableTraitCollectionProvider:
{
  v13 = a2;
  childCopy = child;
  providerCopy = provider;
  if (self)
  {
    v9 = self[11];
    if (v9)
    {
      [(_UITraitOverrides *)v9 _applyTransformsForChild:v13 usingTraitCollectionProvider:childCopy mutableTraitCollectionProvider:providerCopy];
    }

    v10 = self[6];
    v11 = self[7];
    while (v10 != v11)
    {
      (*(*(v10 + 8) + 16))();
      v10 += 16;
    }

    v12 = self[12];
    if (v12)
    {
      [(_UITraitOverrides *)v12 _applyTransformsForChild:v13 usingTraitCollectionProvider:childCopy mutableTraitCollectionProvider:providerCopy];
    }
  }
}

@end