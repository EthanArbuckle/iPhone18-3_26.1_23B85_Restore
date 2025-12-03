@interface _UITraitBasedAppearance
+ (BOOL)_hasCustomizationsForTraitCollection:(id)collection class:(Class)class guideClass:(Class)guideClass;
+ (id)_appearanceForTraitCollection:(id)collection forClass:(Class)class withContainerList:(id)list;
- (BOOL)_isValidAppearanceForCustomizableObject:(id)object;
- (void)_invalidateAppearanceInWindow:(id)window;
- (void)dealloc;
@end

@implementation _UITraitBasedAppearance

+ (BOOL)_hasCustomizationsForTraitCollection:(id)collection class:(Class)class guideClass:(Class)guideClass
{
  _hasAnyCustomizations = [self _hasAnyCustomizations];
  if (_hasAnyCustomizations)
  {
    _rootAppearancesNode = [objc_opt_class() _rootAppearancesNode];
    v10 = existingAppearancesNodeInNodeForClass(_rootAppearancesNode, [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:class withGuideClass:guideClass]);

    LOBYTE(_hasAnyCustomizations) = _recursiveExamineAppearancesForTraitCollections(v10, collection);
  }

  return _hasAnyCustomizations;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UITraitBasedAppearance;
  [(_UIAppearance *)&v3 dealloc];
}

+ (id)_appearanceForTraitCollection:(id)collection forClass:(Class)class withContainerList:(id)list
{
  v20 = *MEMORY[0x1E69E9840];
  if (collection)
  {
    _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified = [(UITraitCollection *)collection _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified];
    if (_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified)
    {
      v15 = _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified;
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
          _traitsDescription = [v15 _traitsDescription];
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Invalid trait collection for appearance customization, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
        }
      }

      else
      {
        v16 = *(__UILogGetCategoryCachedImpl("Assert", &_appearanceForTraitCollection_forClass_withContainerList____s_category) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          _traitsDescription = [v15 _traitsDescription];
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Invalid trait collection for appearance customization, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
        }
      }
    }

    v11 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:class withGuideClass:0];
    v12 = [self _appearanceNodeForClassInfo:v11 containerList:list];
    v13 = [v12 objectForKey:collection];
    if (!v13)
    {
      v13 = [self _newAppearanceWithClassInfo:v11 containerList:list];
      v13[5] = collection;
      [v12 setObject:v13 forKey:collection];
      [v12 setObject:MEMORY[0x1E695E118] forKey:@"_UIAppearanceHasExtendedAppearancesKey"];
      [self _setHasAnyCustomizations];
    }

    return v13;
  }

  else
  {

    return [_UIAppearance _appearanceForClass:class withContainerList:list];
  }
}

- (BOOL)_isValidAppearanceForCustomizableObject:(id)object
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _appearanceTraitCollection = [object _appearanceTraitCollection];
  traitCollection = self->_traitCollection;

  return [(UITraitCollection *)_appearanceTraitCollection _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:?];
}

- (void)_invalidateAppearanceInWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = _UITraitBasedAppearance;
  [(_UIAppearance *)&v5 _invalidateAppearanceInWindow:?];
  [window _invalidateAppearanceForTraitCollection:{-[_UITraitBasedAppearance _traitCollection](self, "_traitCollection")}];
}

@end