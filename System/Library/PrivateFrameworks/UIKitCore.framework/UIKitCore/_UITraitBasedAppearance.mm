@interface _UITraitBasedAppearance
+ (BOOL)_hasCustomizationsForTraitCollection:(id)a3 class:(Class)a4 guideClass:(Class)a5;
+ (id)_appearanceForTraitCollection:(id)a3 forClass:(Class)a4 withContainerList:(id)a5;
- (BOOL)_isValidAppearanceForCustomizableObject:(id)a3;
- (void)_invalidateAppearanceInWindow:(id)a3;
- (void)dealloc;
@end

@implementation _UITraitBasedAppearance

+ (BOOL)_hasCustomizationsForTraitCollection:(id)a3 class:(Class)a4 guideClass:(Class)a5
{
  v8 = [a1 _hasAnyCustomizations];
  if (v8)
  {
    v9 = [objc_opt_class() _rootAppearancesNode];
    v10 = existingAppearancesNodeInNodeForClass(v9, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:a4 withGuideClass:a5]);

    LOBYTE(v8) = _recursiveExamineAppearancesForTraitCollections(v10, a3);
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UITraitBasedAppearance;
  [(_UIAppearance *)&v3 dealloc];
}

+ (id)_appearanceForTraitCollection:(id)a3 forClass:(Class)a4 withContainerList:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = [(UITraitCollection *)a3 _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified];
    if (v10)
    {
      v15 = v10;
      _UIIsPrivateMainBundle();
      if (dyld_program_sdk_at_least())
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      else if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v19 = [v15 _traitsDescription];
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Invalid trait collection for appearance customization, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
        }
      }

      else
      {
        v16 = *(__UILogGetCategoryCachedImpl("Assert", &_appearanceForTraitCollection_forClass_withContainerList____s_category) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = [v15 _traitsDescription];
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Invalid trait collection for appearance customization, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
        }
      }
    }

    v11 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:a4 withGuideClass:0];
    v12 = [a1 _appearanceNodeForClassInfo:v11 containerList:a5];
    v13 = [v12 objectForKey:a3];
    if (!v13)
    {
      v13 = [a1 _newAppearanceWithClassInfo:v11 containerList:a5];
      v13[5] = a3;
      [v12 setObject:v13 forKey:a3];
      [v12 setObject:MEMORY[0x1E695E118] forKey:@"_UIAppearanceHasExtendedAppearancesKey"];
      [a1 _setHasAnyCustomizations];
    }

    return v13;
  }

  else
  {

    return [_UIAppearance _appearanceForClass:a4 withContainerList:a5];
  }
}

- (BOOL)_isValidAppearanceForCustomizableObject:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 _appearanceTraitCollection];
  traitCollection = self->_traitCollection;

  return [(UITraitCollection *)v5 _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:?];
}

- (void)_invalidateAppearanceInWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UITraitBasedAppearance;
  [(_UIAppearance *)&v5 _invalidateAppearanceInWindow:?];
  [a3 _invalidateAppearanceForTraitCollection:{-[_UITraitBasedAppearance _traitCollection](self, "_traitCollection")}];
}

@end