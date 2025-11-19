@interface _UITraitOverrides
- (BOOL)containsTrait:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)resolvesNaturalAlignmentWithBaseWritingDirection;
- (NSObject)_environmentWrapper;
- (NSString)description;
- (NSString)typesettingLanguage;
- (UIColor)_tintColor;
- (_UITraitOverrides)initWithCoder:(id)a3;
- (double)_typesettingLanguageAwareLineHeightRatio;
- (double)_valueForCGFloatTraitToken:(id)a3;
- (double)valueForCGFloatTrait:(Class)a3;
- (id).cxx_construct;
- (id)_description;
- (id)_objectForTraitToken:(id)a3;
- (id)_overridesDescriptionMatching:(int)a3 includingInternalOverrides:(char)a4 isNested:;
- (id)_swiftImplCopy;
- (id)_traitCollectionByApplyingAllOverridesToTraitCollection:(void *)a3 withOverrides:(void *)a4 defaultValueOverrides:;
- (id)_traitOverridesDescriptionMatching:(void *)a1;
- (id)objectForTrait:(Class)a3;
- (int64_t)_valueForNSIntegerTraitToken:(id)a3;
- (int64_t)imageDynamicRange;
- (int64_t)listEnvironment;
- (int64_t)sceneCaptureState;
- (int64_t)splitViewControllerLayoutEnvironment;
- (int64_t)tabAccessoryEnvironment;
- (int64_t)valueForNSIntegerTrait:(Class)a3;
- (uint64_t)_containsTraitToken:(uint64_t)a1;
- (uint64_t)_hasChildTransformWithIdentifier:(uint64_t)a1;
- (uint64_t)_hasTransformWithIdentifier:(uint64_t)a1;
- (uint64_t)_isEmpty;
- (unint64_t)_hasChildTransforms;
- (unint64_t)_hasTransforms;
- (unint64_t)_valueForNSUIntegerTraitToken:(id)a3;
- (unint64_t)valueForNSUIntegerTrait:(Class)a3;
- (void)_addChildTransformWithIdentifier:(void *)a3 transform:;
- (void)_addTransformWithIdentifier:(void *)a3 transform:;
- (void)_applyAllOverridesUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:(void *)a4 overrides:(void *)a5 defaultValueOverrides:;
- (void)_applyOverridesUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:;
- (void)_applyTransformsForChild:(void *)a3 usingTraitCollectionProvider:(void *)a4 mutableTraitCollectionProvider:;
- (void)_applyTransformsUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:;
- (void)_childTraitTransformDidChange;
- (void)_overridesAppliedAfter;
- (void)_overridesAppliedBefore;
- (void)_removeChildTransformWithIdentifier:(uint64_t)a1;
- (void)_removeTraitToken:(uint64_t)a1;
- (void)_removeTransformWithIdentifier:(uint64_t)a1;
- (void)_replaceOverrideTraitCollection:(uint64_t)a1;
- (void)_replaceWithOverrides:(uint64_t)a1;
- (void)_setCGFloatValue:(double)a3 forTraitToken:(id)a4;
- (void)_setDelegate:(uint64_t)a1;
- (void)_setEnvironmentWrapper:(id)a3;
- (void)_setNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4;
- (void)_setNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4;
- (void)_setObject:(id)a3 forTraitToken:(id)a4;
- (void)_setOverrideTraitCollection:(void *)a3 defaultValueOverrides:;
- (void)_setOverrideTraitCollection:(void *)a3 defaultValueOverrides:(void *)a4 overridesAppliedBefore:(void *)a5 overridesAppliedAfter:;
- (void)_setTintColor:(id)a3;
- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)a3;
- (void)_traitCollectionByApplyingOverridesToTraitCollection:(void *)a1;
- (void)_traitOverridesDidChange;
- (void)_traitOverridesWillChange:(id)a3 withApplicator:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)initWithDelegate:(void *)a1;
- (void)removeTrait:(Class)a3;
- (void)setCGFloatValue:(double)a3 forTrait:(Class)a4;
- (void)setImageDynamicRange:(int64_t)a3;
- (void)setListEnvironment:(int64_t)a3;
- (void)setNSIntegerValue:(int64_t)a3 forTrait:(Class)a4;
- (void)setNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4;
- (void)setObject:(id)a3 forTrait:(Class)a4;
- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3;
- (void)setSceneCaptureState:(int64_t)a3;
- (void)setSplitViewControllerLayoutEnvironment:(int64_t)a3;
- (void)setTabAccessoryEnvironment:(int64_t)a3;
- (void)setTypesettingLanguage:(id)a3;
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
  if (!a1 || a1[11] && ![_UITraitOverrides _isEmpty])
  {
    return 0;
  }

  if (a1[12] && ![_UITraitOverrides _isEmpty])
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    if (_UITraitTokenSetCount(v2 + 16))
    {
      return 0;
    }
  }

  v5 = a1[1];
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[11];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:a1];
      v5 = v2[11];
      v2[11] = v4;

      v3 = v2[11];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)_swiftImplCopy
{
  if (a1)
  {
    v2 = [[_UITraitOverrides alloc] initWithDelegate:?];
    v3 = v2;
    if (v2)
    {
      objc_storeStrong(v2 + 1, *(a1 + 8));
      objc_storeStrong(v3 + 2, *(a1 + 16));
      v4 = [(_UITraitOverrides *)*(a1 + 88) _swiftImplCopy];
      v5 = v3[11];
      v3[11] = v4;

      v6 = [(_UITraitOverrides *)*(a1 + 96) _swiftImplCopy];
      v7 = v3[12];
      v3[12] = v6;
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[12];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:a1];
      v5 = v2[12];
      v2[12] = v4;

      v3 = v2[12];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)initWithDelegate:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = _UITraitOverrides;
    v4 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v4;
    if (v4)
    {
      [(_UITraitOverrides *)v4 _setDelegate:v3];
      v5 = +[UITraitCollection _emptyTraitCollection];
      v6 = a1[1];
      a1[1] = v5;

      v7 = +[_UITraitTokenSet emptySet];
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

- (void)_setDelegate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 80));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((a1 + 80), obj);
      *(a1 + 72) = *(a1 + 72) & 0xFE | objc_opt_respondsToSelector() & 1;
      v3 = obj;
    }
  }
}

- (_UITraitOverrides)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _UITraitOverrides;
  v5 = [(_UITraitOverrides *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrides"];
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
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"defaultValueOverrides"];

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

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overridesAppliedBefore"];
    v17 = *(v5 + 11);
    *(v5 + 11) = v16;

    [(_UITraitOverrides *)*(v5 + 11) _setDelegate:v5];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overridesAppliedAfter"];
    v19 = *(v5 + 12);
    *(v5 + 12) = v18;

    [(_UITraitOverrides *)*(v5 + 12) _setDelegate:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
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

    [v14 encodeObject:self->_overrides forKey:@"overrides"];
  }

LABEL_9:
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides && _UITraitTokenSetCount(&defaultValueOverrides->_storage))
  {
    v11 = [(_UITraitTokenSet *)self->_defaultValueOverrides NSSetRepresentation];
    [v14 encodeObject:v11 forKey:@"defaultValueOverrides"];
  }

  overridesAppliedBefore = self->_overridesAppliedBefore;
  if (overridesAppliedBefore)
  {
    [v14 encodeObject:overridesAppliedBefore forKey:@"overridesAppliedBefore"];
  }

  overridesAppliedAfter = self->_overridesAppliedAfter;
  if (overridesAppliedAfter)
  {
    [v14 encodeObject:overridesAppliedAfter forKey:@"overridesAppliedAfter"];
  }
}

- (void)_applyAllOverridesUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:(void *)a4 overrides:(void *)a5 defaultValueOverrides:
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = *(a1 + 88);
    if (v12)
    {
      [(_UITraitOverrides *)v12 _applyOverridesUsingTraitCollectionProvider:v14 mutableTraitCollectionProvider:v9];
    }

    [UITraitCollection _applyOverrides:v10 defaultValueOverrides:v11 usingTraitCollectionProvider:v9 mutableTraitCollectionProvider:v9];
    v13 = *(a1 + 96);
    if (v13)
    {
      [(_UITraitOverrides *)v13 _applyOverridesUsingTraitCollectionProvider:v14 mutableTraitCollectionProvider:v9];
    }
  }
}

- (void)_applyOverridesUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    [(_UITraitOverrides *)a1 _applyAllOverridesUsingTraitCollectionProvider:v6 mutableTraitCollectionProvider:v5 overrides:*(a1 + 8) defaultValueOverrides:*(a1 + 16)];
  }
}

- (id)_traitCollectionByApplyingAllOverridesToTraitCollection:(void *)a3 withOverrides:(void *)a4 defaultValueOverrides:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (!v7)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__traitCollectionByApplyingAllOverridesToTraitCollection_withOverrides_defaultValueOverrides_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"baseTraitCollection != nil"}];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __113___UITraitOverrides__traitCollectionByApplyingAllOverridesToTraitCollection_withOverrides_defaultValueOverrides___block_invoke;
    v12[3] = &unk_1E71200F8;
    v12[4] = a1;
    v13 = v8;
    v14 = v9;
    a1 = [(UITraitCollection *)v7 _traitCollectionByModifyingTraitsCopyOnWrite:v12];
  }

  return a1;
}

- (void)_traitOverridesWillChange:(id)a3 withApplicator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___UITraitOverrides__traitOverridesWillChange_withApplicator___block_invoke;
    v9[3] = &unk_1E7120120;
    v10 = v6;
    v11 = self;
    v12 = v7;
    [WeakRetained _traitOverridesWillChange:self withApplicator:v9];
  }
}

- (void)_traitCollectionByApplyingOverridesToTraitCollection:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [(_UITraitOverrides *)a1 _traitCollectionByApplyingAllOverridesToTraitCollection:v3 withOverrides:a1[1] defaultValueOverrides:a1[2]];
  }

  return a1;
}

- (void)_childTraitTransformDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained _childTraitTransformDidChange];
}

- (void)_replaceWithOverrides:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1 || a1 == v3)
  {
    goto LABEL_19;
  }

  v15 = v3;
  v5 = v3[1];
  v6 = *(a1 + 8);
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
  v6 = *(a1 + 16);
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
    [(_UITraitOverrides *)a1 _setOverrideTraitCollection:v4[2] defaultValueOverrides:v4[11] overridesAppliedBefore:v15[12] overridesAppliedAfter:?];
    v4 = v15;
    goto LABEL_19;
  }

  v4 = v15;
LABEL_16:
  v13 = _UINullableTraitOverridesEqual(*(a1 + 88), v4[11]);
  v4 = v15;
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = _UINullableTraitOverridesEqual(*(a1 + 96), v15[12]);
  v4 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)_setOverrideTraitCollection:(void *)a3 defaultValueOverrides:(void *)a4 overridesAppliedBefore:(void *)a5 overridesAppliedAfter:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    if (*(a1 + 72))
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __116___UITraitOverrides__setOverrideTraitCollection_defaultValueOverrides_overridesAppliedBefore_overridesAppliedAfter___block_invoke;
      v15[3] = &unk_1E7120148;
      v15[4] = a1;
      v16 = v10;
      v17 = v11;
      [WeakRetained _traitOverridesWillChange:a1 withApplicator:v15];
    }

    [(_UITraitOverrides *)v12 _setDelegate:a1];
    [(_UITraitOverrides *)v13 _setDelegate:a1];
    objc_storeStrong((a1 + 8), a2);
    objc_storeStrong((a1 + 16), a3);
    objc_storeStrong((a1 + 88), a4);
    objc_storeStrong((a1 + 96), a5);
    [WeakRetained _traitOverridesDidChange];
  }
}

- (void)_setOverrideTraitCollection:(void *)a3 defaultValueOverrides:
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    [(_UITraitOverrides *)a1 _setOverrideTraitCollection:v6 defaultValueOverrides:v5 overridesAppliedBefore:*(a1 + 88) overridesAppliedAfter:*(a1 + 96)];
  }
}

- (void)_replaceOverrideTraitCollection:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = +[UITraitCollection _emptyTraitCollection];
  }

  v5 = *(a1 + 16);
  if (v5 && _UITraitTokenSetCount(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 8);
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
    [(_UITraitOverrides *)a1 _setOverrideTraitCollection:v4 defaultValueOverrides:v6];
LABEL_7:

LABEL_8:
    v7 = v4;
  }
}

- (BOOL)containsTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenOrPlaceholderForTrait:a3];
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

- (uint64_t)_containsTraitToken:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5 && (v6 = _UIGetTraitTokenValue(v3), (_UITraitTokenSetContains((v5 + 16), v6) & 1) != 0))
    {
      a1 = 1;
    }

    else
    {
      a1 = [*(a1 + 8) _isTraitTokenSpecified:v4];
    }
  }

  return a1;
}

- (void)removeTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenOrPlaceholderForTrait:a3];
  if (![UITraitCollection _isPlaceholderTraitToken:?])
  {
    [(_UITraitOverrides *)self _removeTraitToken:v4];
  }
}

- (void)_removeTraitToken:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3 && (v4 = _UIGetTraitTokenValue(v6), _UITraitTokenSetContains((v3 + 16), v4)))
    {
      v5 = [(_UITraitTokenSet *)*(a1 + 16) setByRemovingTraitToken:v6];
      [(_UITraitOverrides *)a1 _setOverrideTraitCollection:v5 defaultValueOverrides:?];
    }

    else
    {
      if (![*(a1 + 8) _isTraitTokenSpecified:v6])
      {
        goto LABEL_8;
      }

      v5 = [*(a1 + 8) _traitCollectionByRemovingTraitToken:v6];
      [(_UITraitOverrides *)a1 _setOverrideTraitCollection:v5 defaultValueOverrides:*(a1 + 16)];
    }
  }

LABEL_8:
}

- (double)valueForCGFloatTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenForCGFloatTrait:a3];
  [(_UITraitOverrides *)self _valueForCGFloatTraitToken:v4];
  v6 = v5;

  return v6;
}

- (double)_valueForCGFloatTraitToken:(id)a3
{
  v5 = a3;
  if (([(_UITraitOverrides *)self _containsTraitToken:v5]& 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [UITraitCollection _nameForTraitToken:v5];
    [v9 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:284 description:{@"Can't return value for trait %@ that has no override", v10}];
  }

  [(UITraitCollection *)self->_overrides _valueForCGFloatTraitToken:v5];
  v7 = v6;

  return v7;
}

- (void)setCGFloatValue:(double)a3 forTrait:(Class)a4
{
  v6 = [UITraitCollection _traitTokenForCGFloatTrait:a4];
  [(_UITraitOverrides *)self _setCGFloatValue:a3 forTraitToken:?];
}

- (void)_setCGFloatValue:(double)a3 forTraitToken:(id)a4
{
  v20 = a4;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(v20);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  [v10 _valueForCGFloatTraitToken:v20];
  v12 = v11;

  if (v12 == a3)
  {
    v13 = 0;
  }

  else
  {
    v13 = defaultValueOverrides;
  }

  if (v13 == 1)
  {
    v14 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:v20];
LABEL_13:
    v17 = v14;

    v7 = v17;
    v16 = v20;
    goto LABEL_14;
  }

  if (v12 == a3)
  {
    v15 = defaultValueOverrides;
  }

  else
  {
    v15 = 1;
  }

  v16 = v20;
  if ((v15 & 1) == 0)
  {
    v14 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:v20];
    goto LABEL_13;
  }

LABEL_14:
  [(UITraitCollection *)self->_overrides _valueForCGFloatTraitToken:v16];
  if (v18 != a3)
  {
    v19 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingCGFloatValue:v20 forTraitToken:a3];

    v6 = v19;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (int64_t)valueForNSIntegerTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenForNSIntegerTrait:a3];
  v5 = [(_UITraitOverrides *)self _valueForNSIntegerTraitToken:v4];

  return v5;
}

- (int64_t)_valueForNSIntegerTraitToken:(id)a3
{
  v5 = a3;
  if (([(_UITraitOverrides *)self _containsTraitToken:v5]& 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:v5];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:318 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _valueForNSIntegerTraitToken:v5];

  return v6;
}

- (void)setNSIntegerValue:(int64_t)a3 forTrait:(Class)a4
{
  v6 = [UITraitCollection _traitTokenForNSIntegerTrait:a4];
  [(_UITraitOverrides *)self _setNSIntegerValue:a3 forTraitToken:?];
}

- (void)_setNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4
{
  v18 = a4;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(v18);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  v11 = [v10 _valueForNSIntegerTraitToken:v18];

  if (v11 == a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = defaultValueOverrides;
  }

  if (v12 == 1)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:v18];
LABEL_13:
    v16 = v13;

    v7 = v16;
    v15 = v18;
    goto LABEL_14;
  }

  if (v11 == a3)
  {
    v14 = defaultValueOverrides;
  }

  else
  {
    v14 = 1;
  }

  v15 = v18;
  if ((v14 & 1) == 0)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:v18];
    goto LABEL_13;
  }

LABEL_14:
  if ([(UITraitCollection *)self->_overrides _valueForNSIntegerTraitToken:v15]!= a3)
  {
    v17 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingNSIntegerValue:a3 forTraitToken:v18];

    v6 = v17;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (unint64_t)valueForNSUIntegerTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenForNSUIntegerTrait:a3];
  v5 = [(_UITraitOverrides *)self _valueForNSUIntegerTraitToken:v4];

  return v5;
}

- (unint64_t)_valueForNSUIntegerTraitToken:(id)a3
{
  v5 = a3;
  if (([(_UITraitOverrides *)self _containsTraitToken:v5]& 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:v5];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:354 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _valueForNSUIntegerTraitToken:v5];

  return v6;
}

- (void)setNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4
{
  v6 = [UITraitCollection _traitTokenForNSUIntegerTrait:a4];
  [(_UITraitOverrides *)self _setNSUIntegerValue:a3 forTraitToken:?];
}

- (void)_setNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4
{
  v18 = a4;
  v6 = self->_overrides;
  v7 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v9 = _UIGetTraitTokenValue(v18);
    LODWORD(defaultValueOverrides) = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v9);
  }

  v10 = +[UITraitCollection _emptyTraitCollection];
  v11 = [v10 _valueForNSUIntegerTraitToken:v18];

  if (v11 == a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = defaultValueOverrides;
  }

  if (v12 == 1)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:v18];
LABEL_13:
    v16 = v13;

    v7 = v16;
    v15 = v18;
    goto LABEL_14;
  }

  if (v11 == a3)
  {
    v14 = defaultValueOverrides;
  }

  else
  {
    v14 = 1;
  }

  v15 = v18;
  if ((v14 & 1) == 0)
  {
    v13 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:v18];
    goto LABEL_13;
  }

LABEL_14:
  if ([(UITraitCollection *)self->_overrides _valueForNSUIntegerTraitToken:v15]!= a3)
  {
    v17 = [(UITraitCollection *)self->_overrides _traitCollectionByReplacingNSUIntegerValue:a3 forTraitToken:v18];

    v6 = v17;
  }

  if (v6 != self->_overrides || v7 != self->_defaultValueOverrides)
  {
    [(_UITraitOverrides *)self _setOverrideTraitCollection:v6 defaultValueOverrides:v7];
  }
}

- (id)objectForTrait:(Class)a3
{
  v4 = [UITraitCollection _traitTokenForObjectTrait:a3];
  v5 = [(_UITraitOverrides *)self _objectForTraitToken:v4];

  return v5;
}

- (id)_objectForTraitToken:(id)a3
{
  v5 = a3;
  if (([(_UITraitOverrides *)self _containsTraitToken:v5]& 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [UITraitCollection _nameForTraitToken:v5];
    [v8 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:390 description:{@"Can't return value for trait %@ that has no override", v9}];
  }

  v6 = [(UITraitCollection *)self->_overrides _objectForTraitToken:v5];

  return v6;
}

- (void)setObject:(id)a3 forTrait:(Class)a4
{
  v7 = a3;
  v6 = [UITraitCollection _traitTokenForObjectTrait:a4];
  [(_UITraitOverrides *)self _setObject:v7 forTraitToken:v6];
}

- (void)_setObject:(id)a3 forTraitToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_overrides;
  v9 = self->_defaultValueOverrides;
  defaultValueOverrides = self->_defaultValueOverrides;
  if (defaultValueOverrides)
  {
    v11 = _UIGetTraitTokenValue(v7);
    v12 = _UITraitTokenSetContains(&defaultValueOverrides->_storage, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[UITraitCollection _emptyTraitCollection];
  v14 = [v13 _objectForTraitToken:v7];
  v15 = v6;
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

    v18 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByAddingTraitToken:v7];
  }

  else
  {
    v18 = [(_UITraitTokenSet *)self->_defaultValueOverrides setByRemovingTraitToken:v7];
  }

  v19 = v18;

  v9 = v19;
LABEL_14:
  v20 = [(UITraitCollection *)self->_overrides _objectForTraitToken:v7];
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

    [(UITraitCollection *)self->_overrides _traitCollectionByReplacingObject:v23 forTraitToken:v7];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:420 description:{@"%@ does not support -%@", v6, v7}];

  return 0;
}

- (void)_setEnvironmentWrapper:(id)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:425 description:{@"%@ does not support -%@", v6, v7}];
}

- (UIColor)_tintColor
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:429 description:{@"%@ does not support -%@", v6, v7}];

  return 0;
}

- (void)_setTintColor:(id)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v8 handleFailureInMethod:a2 object:self file:@"_UITraitOverrides.mm" lineNumber:434 description:{@"%@ does not support -%@", v6, v7}];
}

- (NSString)typesettingLanguage
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self objectForTrait:v3];

  return v4;
}

- (void)setTypesettingLanguage:(id)a3
{
  v5 = [a3 copy];
  v4 = objc_opt_self();
  [(_UITraitOverrides *)self setObject:v5 forTrait:v4];
}

- (int64_t)imageDynamicRange
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setImageDynamicRange:(int64_t)a3
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:a3 forTrait:v5];
}

- (int64_t)sceneCaptureState
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setSceneCaptureState:(int64_t)a3
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:a3 forTrait:v5];
}

- (int64_t)listEnvironment
{
  v3 = objc_opt_class();

  return [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];
}

- (void)setListEnvironment:(int64_t)a3
{
  v5 = objc_opt_class();

  [(_UITraitOverrides *)self setNSIntegerValue:a3 forTrait:v5];
}

- (int64_t)tabAccessoryEnvironment
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (void)setTabAccessoryEnvironment:(int64_t)a3
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setNSIntegerValue:a3 forTrait:?];
}

- (int64_t)splitViewControllerLayoutEnvironment
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (void)setSplitViewControllerLayoutEnvironment:(int64_t)a3
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setNSIntegerValue:a3 forTrait:?];
}

- (double)_typesettingLanguageAwareLineHeightRatio
{
  v3 = objc_opt_self();
  [(_UITraitOverrides *)self valueForCGFloatTrait:v3];
  v5 = v4;

  return v5;
}

- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)a3
{
  v5 = objc_opt_self();
  [(_UITraitOverrides *)self setCGFloatValue:a3 forTrait:?];
}

- (BOOL)resolvesNaturalAlignmentWithBaseWritingDirection
{
  v3 = objc_opt_self();
  v4 = [(_UITraitOverrides *)self objectForTrait:v3];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = objc_opt_self();
  [(_UITraitOverrides *)self setObject:v5 forTrait:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (id)_overridesDescriptionMatching:(int)a3 includingInternalOverrides:(char)a4 isNested:
{
  v48 = *MEMORY[0x1E69E9840];
  v35 = a2;
  v39 = a1;
  if (!a1)
  {
    v36 = 0;
    goto LABEL_54;
  }

  v36 = [MEMORY[0x1E696AD60] string];
  if (a3)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      if (([(_UITraitOverrides *)v5 _isEmpty]& 1) == 0)
      {
        v6 = [(_UITraitOverrides *)*(a1 + 88) _overridesDescriptionMatching:v35 includingInternalOverrides:1 isNested:1];
        if (![v35 length] || objc_msgSend(v6, "length"))
        {
          [v36 appendFormat:@"overridesAppliedBefore = %@", v6];
        }
      }
    }
  }

  v38 = v35;
  v37 = [MEMORY[0x1E696AD60] string];
  v7 = *(v39 + 8);
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
    v11 = [*(v39 + 8) _traitsDescriptionMatching:v13];
    if (![v13 length] || objc_msgSend(v11, "length"))
    {
      [v37 appendString:v11];
    }

    goto LABEL_19;
  }

LABEL_20:
  v14 = *(v39 + 16);
  if (v14)
  {
    v13 = v38;
    if (_UITraitTokenSetCount(v14 + 16))
    {
      v15 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = *(v39 + 16);
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
      v19 = *(v39 + 16);
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
        v26 = [v38 lowercaseString];

        v27 = MEMORY[0x1E696AE18];
        *&v44 = MEMORY[0x1E69E9820];
        *(&v44 + 1) = 3221225472;
        *&v45 = __54___UITraitOverrides__rawOverridesDescriptionMatching___block_invoke;
        *(&v45 + 1) = &unk_1E7120170;
        v13 = v26;
        *&v46 = v13;
        v28 = [v27 predicateWithBlock:&v44];
        [v18 filterUsingPredicate:v28];
      }

      if ([v18 count])
      {
        if ([v37 length])
        {
          [v37 appendString:{@", "}];
        }

        v29 = [v18 componentsJoinedByString:{@", "}];
        [v37 appendString:v29];
      }
    }
  }

  if ([v37 length])
  {
    if ([v36 length])
    {
      [v36 appendString:@"; "];
    }

    if ((a4 & 1) == 0)
    {
      [v36 appendString:@"overrides = "];
    }

    [v36 appendFormat:@"{ %@ }", v37];
  }

  if (a3)
  {
    v30 = *(v39 + 96);
    if (v30)
    {
      if (([(_UITraitOverrides *)v30 _isEmpty]& 1) == 0)
      {
        v31 = [(_UITraitOverrides *)*(v39 + 96) _overridesDescriptionMatching:v38 includingInternalOverrides:1 isNested:1];
        if (![v38 length] || objc_msgSend(v31, "length"))
        {
          if ([v36 length])
          {
            [v36 appendString:@"; "];
          }

          [v36 appendFormat:@"overridesAppliedAfter = %@", v31];
        }
      }
    }
  }

LABEL_54:

  return v36;
}

- (id)_traitOverridesDescriptionMatching:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    a1 = [(_UITraitOverrides *)a1 _overridesDescriptionMatching:v3 includingInternalOverrides:has_internal_diagnostics isNested:0];
  }

  return a1;
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

- (uint64_t)_hasTransformWithIdentifier:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v4 == v5)
    {
      a1 = 0;
    }

    else
    {
      v6 = v4 + 16;
      do
      {
        v7 = [v3 isEqualToString:*(v6 - 16)];
        a1 = v7;
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

  return a1;
}

- (void)_addTransformWithIdentifier:(void *)a3 transform:
{
  v25 = a2;
  v5 = a3;
  if (!a1)
  {
    goto LABEL_23;
  }

  if (![v25 length])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:sel__addTransformWithIdentifier_transform_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:675 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_27:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:sel__addTransformWithIdentifier_transform_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:676 description:{@"Invalid parameter not satisfying: %@", @"transform != NULL"}];

    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_4:
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7 >= v6)
  {
    v9 = *(a1 + 24);
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
    v14[1] = _Block_copy(v5);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v17 = v14 + v15 - v16;
    if (v15 != v16)
    {
      v18 = *(a1 + 24);
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
      v15 = *(a1 + 24);
    }

    v8 = v14 + 2;
    *(a1 + 24) = v17;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = v25;
    v7[1] = _Block_copy(v5);
    v8 = v7 + 2;
  }

  *(a1 + 32) = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _traitOverridesDidChange];

LABEL_23:
}

- (void)_removeTransformWithIdentifier:(uint64_t)a1
{
  v15 = a2;
  if (a1)
  {
    if (![v15 length])
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel__removeTransformWithIdentifier_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:686 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v3 = *(a1 + 24);
    if (v3 != *(a1 + 32))
    {
      v4 = -v3;
      while (![v15 isEqualToString:*v3])
      {
        v3 += 16;
        v4 -= 16;
        if (v3 == *(a1 + 32))
        {
          goto LABEL_15;
        }
      }

      v5 = -v4;
      v6 = 16 - v4;
      v7 = *(a1 + 32);
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

      std::vector<_UIIdentifiedTraitCollectionTransform>::__base_destruct_at_end[abi:nn200100](a1 + 24, v8);
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      [WeakRetained _traitOverridesDidChange];
    }
  }

LABEL_15:
}

- (void)_applyTransformsUsingTraitCollectionProvider:(void *)a3 mutableTraitCollectionProvider:
{
  v10 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = a1[11];
    if (v6)
    {
      [(_UITraitOverrides *)v6 _applyTransformsUsingTraitCollectionProvider:v10 mutableTraitCollectionProvider:v5];
    }

    v7 = a1[3];
    v8 = a1[4];
    while (v7 != v8)
    {
      (*(*(v7 + 8) + 16))();
      v7 += 16;
    }

    v9 = a1[12];
    if (v9)
    {
      [(_UITraitOverrides *)v9 _applyTransformsUsingTraitCollectionProvider:v10 mutableTraitCollectionProvider:v5];
    }
  }
}

- (uint64_t)_hasChildTransformWithIdentifier:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    if (v4 == v5)
    {
      a1 = 0;
    }

    else
    {
      v6 = v4 + 16;
      do
      {
        v7 = [v3 isEqualToString:*(v6 - 16)];
        a1 = v7;
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

  return a1;
}

- (void)_addChildTransformWithIdentifier:(void *)a3 transform:
{
  v25 = a2;
  v5 = a3;
  if (!a1)
  {
    goto LABEL_23;
  }

  if (![v25 length])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:sel__addChildTransformWithIdentifier_transform_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:731 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (v5)
    {
      goto LABEL_4;
    }

LABEL_27:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:sel__addChildTransformWithIdentifier_transform_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:732 description:{@"Invalid parameter not satisfying: %@", @"childTransform != NULL"}];

    goto LABEL_4;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (v7 >= v6)
  {
    v9 = *(a1 + 48);
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
    v14[1] = _Block_copy(v5);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = v14 + v15 - v16;
    if (v15 != v16)
    {
      v18 = *(a1 + 48);
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
      v15 = *(a1 + 48);
    }

    v8 = v14 + 2;
    *(a1 + 48) = v17;
    *(a1 + 56) = v8;
    *(a1 + 64) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v7 = v25;
    v7[1] = _Block_copy(v5);
    v8 = v7 + 2;
  }

  *(a1 + 56) = v8;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _childTraitTransformDidChange];

LABEL_23:
}

- (void)_removeChildTransformWithIdentifier:(uint64_t)a1
{
  v15 = a2;
  if (a1)
  {
    if (![v15 length])
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel__removeChildTransformWithIdentifier_ object:a1 file:@"_UITraitOverrides.mm" lineNumber:743 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];
    }

    v3 = *(a1 + 48);
    if (v3 != *(a1 + 56))
    {
      v4 = -v3;
      while (![v15 isEqualToString:*v3])
      {
        v3 += 16;
        v4 -= 16;
        if (v3 == *(a1 + 56))
        {
          goto LABEL_15;
        }
      }

      v5 = -v4;
      v6 = 16 - v4;
      v7 = *(a1 + 56);
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

      std::vector<_UIIdentifiedTraitCollectionTransform>::__base_destruct_at_end[abi:nn200100](a1 + 48, v8);
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      [WeakRetained _childTraitTransformDidChange];
    }
  }

LABEL_15:
}

- (void)_applyTransformsForChild:(void *)a3 usingTraitCollectionProvider:(void *)a4 mutableTraitCollectionProvider:
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a1[11];
    if (v9)
    {
      [(_UITraitOverrides *)v9 _applyTransformsForChild:v13 usingTraitCollectionProvider:v7 mutableTraitCollectionProvider:v8];
    }

    v10 = a1[6];
    v11 = a1[7];
    while (v10 != v11)
    {
      (*(*(v10 + 8) + 16))();
      v10 += 16;
    }

    v12 = a1[12];
    if (v12)
    {
      [(_UITraitOverrides *)v12 _applyTransformsForChild:v13 usingTraitCollectionProvider:v7 mutableTraitCollectionProvider:v8];
    }
  }
}

@end