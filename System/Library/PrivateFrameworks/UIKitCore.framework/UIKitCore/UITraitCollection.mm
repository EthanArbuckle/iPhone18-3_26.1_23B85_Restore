@interface UITraitCollection
+ (BOOL)_isPlaceholderTraitToken:(id)a3;
+ (NSArray)_systemTraitTokensAffectingImageLookup;
+ (NSArray)systemTraitsAffectingColorAppearance;
+ (NSArray)systemTraitsAffectingImageLookup;
+ (UITraitCollection)traitCollectionWithAccessibilityContrast:(UIAccessibilityContrast)accessibilityContrast;
+ (UITraitCollection)traitCollectionWithActiveAppearance:(UIUserInterfaceActiveAppearance)userInterfaceActiveAppearance;
+ (UITraitCollection)traitCollectionWithArtworkSubtype:(unint64_t)a3;
+ (UITraitCollection)traitCollectionWithCGFloatValue:(CGFloat)value forTrait:(UICGFloatTrait)trait;
+ (UITraitCollection)traitCollectionWithDisplayCornerRadius:(double)a3;
+ (UITraitCollection)traitCollectionWithDisplayGamut:(UIDisplayGamut)displayGamut;
+ (UITraitCollection)traitCollectionWithDisplayScale:(CGFloat)scale;
+ (UITraitCollection)traitCollectionWithForceTouchCapability:(UIForceTouchCapability)capability;
+ (UITraitCollection)traitCollectionWithHDRHeadroomUsageLimit:(int64_t)a3;
+ (UITraitCollection)traitCollectionWithHorizontalSizeClass:(UIUserInterfaceSizeClass)horizontalSizeClass;
+ (UITraitCollection)traitCollectionWithImageDynamicRange:(UIImageDynamicRange)imageDynamicRange;
+ (UITraitCollection)traitCollectionWithInteractionModel:(unint64_t)a3;
+ (UITraitCollection)traitCollectionWithLayoutDirection:(UITraitEnvironmentLayoutDirection)layoutDirection;
+ (UITraitCollection)traitCollectionWithLegibilityWeight:(UILegibilityWeight)legibilityWeight;
+ (UITraitCollection)traitCollectionWithListEnvironment:(int64_t)a3;
+ (UITraitCollection)traitCollectionWithNSIntegerValue:(NSInteger)value forTrait:(UINSIntegerTrait)trait;
+ (UITraitCollection)traitCollectionWithNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4;
+ (UITraitCollection)traitCollectionWithObject:(id)object forTrait:(UIObjectTrait)trait;
+ (UITraitCollection)traitCollectionWithPreferredContentSizeCategory:(UIContentSizeCategory)preferredContentSizeCategory;
+ (UITraitCollection)traitCollectionWithPrimaryInteractionModel:(unint64_t)a3;
+ (UITraitCollection)traitCollectionWithResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3;
+ (UITraitCollection)traitCollectionWithSceneCaptureState:(UISceneCaptureState)sceneCaptureState;
+ (UITraitCollection)traitCollectionWithTabAccessoryEnvironment:(int64_t)a3;
+ (UITraitCollection)traitCollectionWithToolbarItemPresentationSize:(UINSToolbarItemPresentationSize)toolbarItemPresentationSize;
+ (UITraitCollection)traitCollectionWithTouchLevel:(int64_t)a3;
+ (UITraitCollection)traitCollectionWithTraits:(UITraitMutations)mutations;
+ (UITraitCollection)traitCollectionWithTraitsFromCollections:(NSArray *)traitCollections;
+ (UITraitCollection)traitCollectionWithTypesettingLanguage:(NSString *)language;
+ (UITraitCollection)traitCollectionWithUserInterfaceIdiom:(UIUserInterfaceIdiom)idiom;
+ (UITraitCollection)traitCollectionWithUserInterfaceLevel:(UIUserInterfaceLevel)userInterfaceLevel;
+ (UITraitCollection)traitCollectionWithUserInterfaceStyle:(UIUserInterfaceStyle)userInterfaceStyle;
+ (UITraitCollection)traitCollectionWithVerticalSizeClass:(UIUserInterfaceSizeClass)verticalSizeClass;
+ (char)_currentTraitCollectionIfExists;
+ (char)_currentTraitCollectionWithFallback:(int)a3 markFallback:;
+ (char)_currentTraitCollectionWithUnmarkedFallback;
+ (const)_traitTokenForCGFloatTrait:(uint64_t)a1;
+ (const)_traitTokenForNSIntegerTrait:(uint64_t)a1;
+ (const)_traitTokenForNSUIntegerTrait:(uint64_t)a1;
+ (const)_traitTokenForObjectTrait:(uint64_t)a1;
+ (const)_traitTokenOrPlaceholderForTrait:(uint64_t)a1;
+ (id)_backgroundThreadFallbackTraitCollection;
+ (id)_defineCGFloatTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(double)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9;
+ (id)_defineNSIntegerTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(int64_t)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9;
+ (id)_defineObjectTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(id)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9;
+ (id)_descriptionForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4;
+ (id)_existingTraitTokenReservingPlaceholderIfNecessaryWithName:(id)a3 identifier:(id)a4;
+ (id)_fallbackTraitCollection;
+ (id)_identifierForTrait:(Class)a3;
+ (id)_nameForTrait:(Class)a3;
+ (id)_traitCollectionForSidebarAppearance;
+ (id)_traitCollectionWithBacklightLuminance:(int64_t)a3;
+ (id)_traitCollectionWithCGFloatValue:(double)a3 forTraitToken:(id)a4;
+ (id)_traitCollectionWithEnvironmentWrapper:(id)a3;
+ (id)_traitCollectionWithFocusSystemState:(int64_t)a3;
+ (id)_traitCollectionWithGlassElevationLevel:(int64_t)a3;
+ (id)_traitCollectionWithHeadroomSuppressionLimit:(double)a3;
+ (id)_traitCollectionWithHeadroomUsage:(int64_t)a3;
+ (id)_traitCollectionWithInterfaceProtectionState:(int64_t)a3;
+ (id)_traitCollectionWithNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4;
+ (id)_traitCollectionWithNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4;
+ (id)_traitCollectionWithObject:(id)a3 forTraitToken:(id)a4;
+ (id)_traitCollectionWithPresentationSemanticContext:(int64_t)a3;
+ (id)_traitCollectionWithSplitViewControllerContext:(int64_t)a3;
+ (id)_traitCollectionWithSystemIconAppearance:(uint64_t)a1;
+ (id)_traitCollectionWithTypesettingLanguageAwareLineHeightRatio:(double)a3;
+ (id)_traitCollectionWithUserInterfaceRenderingMode:(int64_t)a3;
+ (id)_traitCollectionWithValue:(__int128 *)a3 forTraitWithMetadata:;
+ (id)_traitCollectionWithValue:(id)a3 forTraitNamed:(id)a4;
+ (id)_traitCollectionWithVibrancy:(int64_t)a3;
+ (id)_traitTokensIncludingPlaceholdersForTraits:(uint64_t)a1;
+ (uint64_t)_defaultTraitCollection;
+ (uint64_t)_emptyTraitCollection;
+ (uint64_t)_nameForTraitToken:(uint64_t)a1;
+ (uint64_t)_performWithCurrentTraitCollection:(uint64_t)a3 usingBlock:;
+ (uint64_t)_performWithFallbackEnvironment:(uint64_t)a3 block:;
+ (uint64_t)_traitCollectionWithTintColor:(uint64_t)a1;
+ (void)_applyOverrides:(uint64_t)a3 defaultValueOverrides:(uint64_t)a4 usingTraitCollectionProvider:(uint64_t)a5 mutableTraitCollectionProvider:;
+ (void)_setBackgroundThreadFallbackTraitCollection:(uint64_t)a1;
+ (void)_systemTraitTokensAffectingImageLookupSet;
+ (void)initialize;
+ (void)setCurrentTraitCollection:(UITraitCollection *)currentTraitCollection;
- (BOOL)_barPlattersHidden;
- (BOOL)_containedInBarBackgroundMaterial;
- (BOOL)_controlsShouldAddGlass;
- (BOOL)_hasGlassBackgroundStyle;
- (BOOL)_hasScrollPocketContainerModel;
- (BOOL)_hasSpecifiedEssentialTraits;
- (BOOL)_hasSplitViewControllerContextSidebarColumn;
- (BOOL)_isEqualToTraitCollectionForResolvedProvider:(id)a3;
- (BOOL)_isEqualToTraitCollectionForResolvingImage:(uint64_t)a1;
- (BOOL)_isLargeContentViewerEnabled;
- (BOOL)_isTraitSpecified:(Class)a3;
- (BOOL)_isTraitTokenSpecified:(id)a3;
- (BOOL)hasDifferentColorAppearanceComparedToTraitCollection:(UITraitCollection *)traitCollection;
- (BOOL)isEqual:(id)a3;
- (CGFloat)valueForCGFloatTrait:(UICGFloatTrait)trait;
- (NSArray)_specifiedTraitTokensArray;
- (NSInteger)valueForNSIntegerTrait:(UINSIntegerTrait)trait;
- (NSObject)_environmentWrapper;
- (NSSet)_specifiedTraits;
- (NSSet)changedTraitsFromTraitCollection:(UITraitCollection *)traitCollection;
- (NSString)description;
- (NSString)typesettingLanguage;
- (UIColor)_tintColor;
- (UIContentSizeCategory)preferredContentSizeCategory;
- (UIImageConfiguration)imageConfiguration;
- (UIImageDynamicRange)imageDynamicRange;
- (UISceneCaptureState)sceneCaptureState;
- (UITraitCollection)init;
- (UITraitCollection)initWithCoder:(NSCoder *)coder;
- (UITraitCollection)traitCollectionByModifyingTraits:(UITraitMutations)mutations;
- (UITraitCollection)traitCollectionByReplacingCGFloatValue:(CGFloat)value forTrait:(UICGFloatTrait)trait;
- (UITraitCollection)traitCollectionByReplacingNSIntegerValue:(NSInteger)value forTrait:(UINSIntegerTrait)trait;
- (UITraitCollection)traitCollectionByReplacingObject:(id)object forTrait:(UIObjectTrait)trait;
- (__CFString)_appearanceName;
- (__CFString)_styleEffectAppearanceName;
- (__CFString)_valueForBuiltInTraitWithMetadata:(void *)a1;
- (__CFString)_valueForTraitWithMetadata:(unint64_t)a1;
- (char)_initWithBuiltinTraitStorage:(void *)a3 tintColor:(void *)a4 clientDefinedTraits:(void *)a5 environmentWrapper:;
- (char)_initWithTraitMutations:(char *)a1;
- (char)_traitCollectionByFilteringTraitTokenSet:(char *)result;
- (char)_traitCollectionByReplacingTintColor:(char *)result;
- (char)_traitCollectionRelevantForImageConfiguration;
- (double)_headroomSuppressionLimit;
- (double)_typesettingLanguageAwareLineHeightRatio;
- (double)_valueForCGFloatTraitToken:(id)a3;
- (id)_changedTraitTokensArrayFromTraitCollection:(id)a3;
- (id)_namedImageDescription;
- (id)_objectForTraitToken:(id)a3;
- (id)_systemIconAppearance;
- (id)_traitCollectionByApplyingOverrides:(uint64_t)a3 defaultValueOverrides:;
- (id)_traitCollectionByFilteringTraitTokens:(id)a3;
- (id)_traitCollectionByModifyingTraitsCopyOnWrite:(void *)a1;
- (id)_traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:(id)result;
- (id)_traitCollectionByRemovingEnvironmentWrapper;
- (id)_traitCollectionByRemovingTrait:(Class)a3;
- (id)_traitCollectionByRemovingTraitToken:(id)a3;
- (id)_traitCollectionByReplacingCGFloatValue:(double)a3 forTraitToken:(id)a4;
- (id)_traitCollectionByReplacingNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4;
- (id)_traitCollectionByReplacingNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4;
- (id)_traitCollectionByReplacingObject:(id)a3 forTraitToken:(id)a4;
- (id)_traitCollectionByReplacingValue:(__int128 *)a3 forTraitWithMetadata:;
- (id)_traitsDescriptionMatching:(id)a3;
- (id)_valueForTraitNamed:(id)a3;
- (id)objectForTrait:(UIObjectTrait)trait;
- (id)traitCollectionByFilteringTraits:(id)a3;
- (id)traitCollectionByReplacingNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4;
- (int64_t)_compare:(id)a3;
- (int64_t)_glassElevationLevel;
- (int64_t)_headroomUsage;
- (int64_t)_interfaceProtectionState;
- (int64_t)_monochromaticTreatment;
- (int64_t)_updateFidelity;
- (int64_t)_valueForNSIntegerTraitToken:(id)a3;
- (int64_t)glassUserInterfaceStyle;
- (int64_t)hdrHeadroomUsageLimit;
- (int64_t)listEnvironment;
- (int64_t)splitViewControllerLayoutEnvironment;
- (int64_t)tabAccessoryEnvironment;
- (uint64_t)_containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:(uint64_t)a1;
- (uint64_t)_createTraitTokenSetForChangesFromTraitCollection:(uint64_t)a3@<X8>;
- (uint64_t)_descriptionWithPrivateTraits:(uint64_t)result;
- (uint64_t)_matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:(uint64_t)a1;
- (uint64_t)_resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:(void *)a1;
- (uint64_t)_specifiedTraitTokens;
- (uint64_t)_specifiedTraitTokensLocked;
- (uint64_t)_traitsDescriptionMatching:(_BOOL4)a3 includePrivateTraits:;
- (unint64_t)_selectionIsKey;
- (unint64_t)_semanticContext;
- (unint64_t)_valueForNSUIntegerTraitToken:(id)a3;
- (unint64_t)hash;
- (unint64_t)valueForNSUIntegerTrait:(Class)a3;
- (void)_computeSpecifiedTraitTokensAcquireLock:(uint64_t)a3@<X8>;
- (void)_enumerateThemeAppearanceNamesForLookup:(void *)result;
- (void)_enumerateThemeKeysForLookup:(void *)result;
- (void)_fallbackTraitCollection;
- (void)_incrementedBackgroundLevel;
- (void)_setCGFloatValue:(double)a3 forTraitToken:(id)a4;
- (void)_setEnvironmentWrapper:(id)a3;
- (void)_setNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4;
- (void)_setNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4;
- (void)_setObject:(id)a3 forTraitToken:(id)a4;
- (void)_setTintColor:(id)a3;
- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)a3;
- (void)_setValue:(uint64_t)a3 forTraitWithMetadata:(__n128)a4;
- (void)_themeKey;
- (void)_traitCollectionWithIncrementedBackgroundLevel;
- (void)_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessibilityContrast:(int64_t)a3;
- (void)setActiveAppearance:(int64_t)a3;
- (void)setCGFloatValue:(double)a3 forTrait:(Class)a4;
- (void)setDisplayGamut:(int64_t)a3;
- (void)setDisplayScale:(double)a3;
- (void)setForceTouchCapability:(int64_t)a3;
- (void)setHorizontalSizeClass:(int64_t)a3;
- (void)setImageDynamicRange:(int64_t)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setLegibilityWeight:(int64_t)a3;
- (void)setListEnvironment:(int64_t)a3;
- (void)setNSIntegerValue:(int64_t)a3 forTrait:(Class)a4;
- (void)setNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4;
- (void)setObject:(id)a3 forTrait:(Class)a4;
- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3;
- (void)setSceneCaptureState:(int64_t)a3;
- (void)setSplitViewControllerLayoutEnvironment:(int64_t)a3;
- (void)setTabAccessoryEnvironment:(int64_t)a3;
- (void)setToolbarItemPresentationSize:(int64_t)a3;
- (void)setTypesettingLanguage:(id)a3;
- (void)setUserInterfaceIdiom:(int64_t)a3;
- (void)setUserInterfaceLevel:(int64_t)a3;
- (void)setUserInterfaceStyle:(int64_t)a3;
- (void)setVerticalSizeClass:(int64_t)a3;
@end

@implementation UITraitCollection

+ (id)_fallbackTraitCollection
{
  objc_opt_self();
  if (pthread_main_np() == 1)
  {

    return _UIGetCurrentFallbackTraitCollection();
  }

  else
  {

    return +[UITraitCollection _backgroundThreadFallbackTraitCollection];
  }
}

- (void)_fallbackTraitCollection
{
  v2 = self;

  return v2;
}

+ (char)_currentTraitCollectionIfExists
{
  objc_opt_self();

  return [UITraitCollection _currentTraitCollectionWithFallback:0 markFallback:?];
}

- (uint64_t)_specifiedTraitTokens
{
  if (result)
  {
    v1 = result;
    if ((*(result + 288) & 1) == 0)
    {
      [(UITraitCollection *)result _computeSpecifiedTraitTokensAcquireLock:v3];
      v2 = v3[1];
      *(v1 + 248) = v3[0];
      *(v1 + 264) = v2;
      *(v1 + 280) = v4;
      *(v1 + 288) |= 1u;
    }

    return v1 + 248;
  }

  return result;
}

- (UIImageConfiguration)imageConfiguration
{
  v2 = [[UIImageConfiguration alloc] _initWithTraitCollection:self];

  return v2;
}

- (char)_traitCollectionRelevantForImageConfiguration
{
  if (!object)
  {
    return 0;
  }

  if ((object[288] & 8) == 0)
  {
    +[UITraitCollection _systemTraitTokensAffectingImageLookupSet];
    v2 = [(UITraitCollection *)object _traitCollectionByFilteringTraitTokenSet:?];
    v3 = v2;
    if (v2)
    {
      if (v2 != object)
      {
        objc_setAssociatedObject(object, &_MergedGlobals_1152, v2, 1);
        object[288] |= 8u;
      }

      objc_setAssociatedObject(v3, &_MergedGlobals_1152, v3, 0);
      v3[288] |= 8u;
    }

    return v3;
  }

  return objc_getAssociatedObject(object, &_MergedGlobals_1152);
}

+ (char)_currentTraitCollectionWithUnmarkedFallback
{
  objc_opt_self();

  return [UITraitCollection _currentTraitCollectionWithFallback:0 markFallback:?];
}

+ (uint64_t)_emptyTraitCollection
{
  objc_opt_self();
  if (qword_1ED49EBC0 != -1)
  {
    dispatch_once(&qword_1ED49EBC0, &__block_literal_global_388);
  }

  return qword_1ED49EBB8;
}

- (UIColor)_tintColor
{
  v2 = self->_tintColor;

  return v2;
}

+ (void)_systemTraitTokensAffectingImageLookupSet
{
  objc_opt_self();
  if (_systemTraitTokensAffectingImageLookupSet_onceToken[0] != -1)
  {

    dispatch_once(_systemTraitTokensAffectingImageLookupSet_onceToken, &__block_literal_global_72_0);
  }
}

- (NSString)typesettingLanguage
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self objectForTrait:v3];
}

- (unint64_t)hash
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[4] = &v8;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIBuiltinTraitStorageHash_block_invoke;
  v7[3] = &unk_1E710CE88;
  v7[4] = &v8;
  v5[4] = &v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UIBuiltinTraitStorageHash_block_invoke_2;
  v6[3] = &unk_1E710CEB0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___UIBuiltinTraitStorageHash_block_invoke_3;
  v5[3] = &unk_1E710CED8;
  v13[4] = v6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke;
  v14[3] = &unk_1E710D678;
  v14[4] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_2;
  v13[3] = &unk_1E710D6A0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_3;
  v12[3] = &unk_1E710D6C8;
  v12[4] = v5;
  _UIBuiltinTraitStorageEnumeratePairWithBlock(&self->_builtinTraits, &self->_builtinTraits, 1, v14, v13, v12);
  v3 = v9[3];
  _Block_object_dispose(&v8, 8);
  if ([(NSDictionary *)self->_clientDefinedTraits count])
  {
    v3 ^= [(NSDictionary *)self->_clientDefinedTraits hash];
  }

  return [self->_environmentWrapper hash]^ v3;
}

- (double)_typesettingLanguageAwareLineHeightRatio
{
  v3 = objc_opt_self();

  [(UITraitCollection *)self valueForCGFloatTrait:v3];
  return result;
}

- (void)dealloc
{
  set = self->_specifiedTraitTokens.set;
  if (set)
  {
  }

  v4.receiver = self;
  v4.super_class = UITraitCollection;
  [(UITraitCollection *)&v4 dealloc];
}

- (__CFString)_styleEffectAppearanceName
{
  if (result)
  {
    if ([(__CFString *)result userInterfaceStyle]== 2)
    {
      return @"UIAppearanceDark";
    }

    else
    {
      return @"UIAppearanceLight";
    }
  }

  return result;
}

char *__42__UITraitCollection__emptyTraitCollection__block_invoke()
{
  result = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
  qword_1ED49EBB8 = result;
  return result;
}

+ (void)initialize
{
  if (objc_opt_self() == a1)
  {

    _UIInitializeBuiltInTraits();
  }
}

- (UIContentSizeCategory)preferredContentSizeCategory
{
  _UIRecordTraitUsage(self, 7uLL);
  preferredContentSizeCategory = self->_builtinTraits.preferredContentSizeCategory;

  return _NSStringFromUIContentSizeCategory(preferredContentSizeCategory);
}

void __62__UITraitCollection__systemTraitTokensAffectingImageLookupSet__block_invoke(int8x16_t a1)
{
  _UITraitTokenSetInsert(&unk_1ED49EC18, 3uLL, a1);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 0, v1);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 1uLL, v2);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 8uLL, v3);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 4uLL, v4);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 5uLL, v5);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 2uLL, v6);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 0xBuLL, v7);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 0x11uLL, v8);
  _UITraitTokenSetInsert(&unk_1ED49EC18, 7uLL, v9);

  _UITraitTokenSetInsert(&unk_1ED49EC18, 9uLL, v10);
}

- (UITraitCollection)init
{
  v2 = +[UITraitCollection _emptyTraitCollection];

  return v2;
}

- (void)_incrementedBackgroundLevel
{
  if (result)
  {
    v1 = [result userInterfaceLevel];
    v2 = dyld_program_sdk_at_least();
    if (v1 == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = v1;
    }

    if (v3 < 1)
    {
      ++v3;
    }

    if (v2)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

- (void)_traitCollectionWithIncrementedBackgroundLevel
{
  if (result)
  {
    v1 = result;
    v2 = [result userInterfaceLevel];
    v3 = dyld_program_sdk_at_least();
    if (v2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = v2;
    }

    if (v4 < 1)
    {
      ++v4;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }

    return [v1 _traitCollectionByReplacingNSIntegerValue:v5 forTraitToken:0x1EFE32488];
  }

  return result;
}

- (BOOL)_hasSplitViewControllerContextSidebarColumn
{
  _UIRecordTraitUsage(self, 0x15uLL);
  if (self->_builtinTraits.splitViewControllerContext == 3)
  {
    return 1;
  }

  return [(UITraitCollection *)self _hasSplitViewControllerContextPrimaryColumn];
}

- (BOOL)_isLargeContentViewerEnabled
{
  v3 = +[UILargeContentViewerInteraction isEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(UITraitCollection *)self userInterfaceIdiom]< UIUserInterfaceIdiomTV;
  }

  return v3;
}

- (int64_t)_glassElevationLevel
{
  v3 = objc_opt_self();
  v4 = [(UITraitCollection *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (int64_t)_monochromaticTreatment
{
  v3 = objc_opt_self();
  v4 = [(UITraitCollection *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (NSObject)_environmentWrapper
{
  v2 = self->_environmentWrapper;

  return v2;
}

- (int64_t)_headroomUsage
{
  v3 = objc_opt_self();
  v4 = [(UITraitCollection *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (id)_traitCollectionByRemovingEnvironmentWrapper
{
  if (self->_environmentWrapper)
  {
    v3 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:self->_tintColor tintColor:self->_clientDefinedTraits clientDefinedTraits:0 environmentWrapper:?];
    _UITraitCollectionWasCopied(self, v3);
    v4 = *(v3 + 31);
    if (v4)
    {
    }

    set = self->_specifiedTraitTokens.set;
    p_specifiedTraitTokens = &self->_specifiedTraitTokens;
    v5 = set;
    if (set)
    {
      v8 = v5;
    }

    v9 = *&p_specifiedTraitTokens->set;
    v10 = *&p_specifiedTraitTokens->bitSet[1];
    *(v3 + 35) = p_specifiedTraitTokens->bitSet[3];
    *(v3 + 248) = v9;
    *(v3 + 264) = v10;
    v3[288] |= 1u;
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (int64_t)_updateFidelity
{
  v3 = objc_opt_self();
  v4 = [(UITraitCollection *)self valueForNSIntegerTrait:v3];

  return v4;
}

- (uint64_t)_specifiedTraitTokensLocked
{
  if (result)
  {
    v1 = result;
    if ((*(result + 288) & 1) == 0)
    {
      [(UITraitCollection *)result _computeSpecifiedTraitTokensAcquireLock:v3];
      v2 = v3[1];
      *(v1 + 248) = v3[0];
      *(v1 + 264) = v2;
      *(v1 + 280) = v4;
      *(v1 + 288) |= 1u;
    }

    return v1 + 248;
  }

  return result;
}

- (NSString)description
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  return [(UITraitCollection *)self _descriptionWithPrivateTraits:?];
}

+ (uint64_t)_defaultTraitCollection
{
  objc_opt_self();
  if (qword_1ED49EBD0 != -1)
  {
    dispatch_once(&qword_1ED49EBD0, &__block_literal_global_390);
  }

  return qword_1ED49EBC8;
}

UITraitCollection *__44__UITraitCollection__defaultTraitCollection__block_invoke()
{
  v0 = [objc_opt_self() mainScreen];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__UITraitCollection__defaultTraitCollection__block_invoke_2;
  v2[3] = &unk_1E710D5F8;
  v2[4] = v0;
  result = [UITraitCollection traitCollectionWithTraits:v2];
  qword_1ED49EBC8 = result;
  return result;
}

uint64_t __44__UITraitCollection__defaultTraitCollection__block_invoke_2(uint64_t a1, void *a2)
{
  if (dyld_program_sdk_at_least())
  {
    [*(a1 + 32) scale];
    [a2 setDisplayScale:?];
  }

  v4 = [*(a1 + 32) gamut];

  return [a2 setDisplayGamut:v4];
}

- (void)_themeKey
{
  if (result)
  {
    v1 = MEMORY[0x1E696AD98];
    v2 = _UIThemeKeyValueFromTraitCollection(result);

    return [v1 numberWithUnsignedInteger:v2];
  }

  return result;
}

+ (id)_backgroundThreadFallbackTraitCollection
{
  objc_opt_self();
  os_unfair_lock_lock(&_backgroundThreadFallbackTraitCollectionLock);
  v0 = _backgroundThreadFallbackTraitCollection;
  os_unfair_lock_unlock(&_backgroundThreadFallbackTraitCollectionLock);
  if (v0)
  {

    return v0;
  }

  else
  {

    return +[UITraitCollection _defaultTraitCollection];
  }
}

+ (NSArray)systemTraitsAffectingColorAppearance
{
  v2 = [a1 _systemTraitTokensAffectingColorAppearance];

  return _UITraitsForTraitTokens(v2);
}

- (id)_namedImageDescription
{
  v10 = 0;
  v11 = 0.0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = -1;
  [_UIAssetManager _convertTraitCollection:&v11 toCUIScale:&v10 CUIIdiom:0 UIKitIdiom:0 UIKitUserInterfaceStyle:&v8 subtype:&v9 CUIDisplayGamut:&v7 UIKitLayoutDirection:&v6 CUILayoutDirection:?];
  v3 = objc_alloc_init(MEMORY[0x1E6999400]);
  [v3 setScale:v11];
  [v3 setDisplayGamut:v9];
  [v3 setIdiom:v10];
  [v3 setSubtype:v8];
  [v3 setSizeClassHorizontal:{-[UITraitCollection horizontalSizeClass](self, "horizontalSizeClass")}];
  [v3 setSizeClassVertical:{-[UITraitCollection verticalSizeClass](self, "verticalSizeClass")}];
  [v3 setLayoutDirection:v6];
  v4 = [(UITraitCollection *)self _appearanceName];
  [v3 setAppearanceName:v4];

  return v3;
}

- (__CFString)_appearanceName
{
  if (result)
  {
    v1 = result;
    v2 = [(__CFString *)result userInterfaceStyle];
    v3 = [(__CFString *)v1 accessibilityContrast];
    v4 = @"UIAppearanceLight";
    if (v3 == 1)
    {
      v4 = @"UIAppearanceHighContrastLight";
      v5 = @"UIAppearanceHighContrastDark";
    }

    else
    {
      v5 = @"UIAppearanceDark";
    }

    v6 = @"UIAppearanceAny";
    if (v3 == 1)
    {
      v6 = @"UIAppearanceHighContrastAny";
    }

    if (v2 != 2)
    {
      v5 = v6;
    }

    if (v2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

- (unint64_t)_selectionIsKey
{
  if (result)
  {
    v1 = result;
    _UIRecordTraitUsage(result, 0x19uLL);
    return *(v1 + 200);
  }

  return result;
}

- (BOOL)_hasSpecifiedEssentialTraits
{
  if (result)
  {
    return *(result + 16) > 0.0;
  }

  return result;
}

- (int64_t)listEnvironment
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

+ (NSArray)systemTraitsAffectingImageLookup
{
  v2 = [a1 _systemTraitTokensAffectingImageLookup];

  return _UITraitsForTraitTokens(v2);
}

+ (NSArray)_systemTraitTokensAffectingImageLookup
{
  if (qword_1ED49E8D8 != -1)
  {
    dispatch_once(&qword_1ED49E8D8, &__block_literal_global_320);
  }

  return qword_1ED49E8D0;
}

void __59__UITraitCollection__systemTraitTokensAffectingImageLookup__block_invoke()
{
  +[UITraitCollection _systemTraitTokensAffectingImageLookupSet];
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:_UITraitTokenSetCount(qword_1ED49EC18)];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __59__UITraitCollection__systemTraitTokensAffectingImageLookup__block_invoke_2;
  v1[3] = &unk_1E710D738;
  v1[4] = v0;
  _UITraitTokenSetEnumerate(qword_1ED49EC18, v1);
  qword_1ED49E8D0 = v0;
}

uint64_t __59__UITraitCollection__systemTraitTokensAffectingImageLookup__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

- (int64_t)glassUserInterfaceStyle
{
  v2 = self;
  v3 = sub_188E68530();

  return v3;
}

- (BOOL)_isEqualToTraitCollectionForResolvedProvider:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_188F6CF30(v3);

  return v3 & 1;
}

- (BOOL)_hasGlassBackgroundStyle
{
  v3 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self;
  sub_188E1B6FC(v5);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  LOBYTE(self) = (*(*(v7 - 8) + 48))(v5, 2, v7) == 0;
  sub_188A828FC(v5, type metadata accessor for _GlassBackgroundStyle);
  return self;
}

- (BOOL)_hasScrollPocketContainerModel
{
  v2 = self;
  v3 = sub_188A84438();

  if (v3)
  {
  }

  return v3 != 0;
}

- (BOOL)_controlsShouldAddGlass
{
  v2 = self;
  v3 = sub_189227580();

  return v3;
}

- (BOOL)_containedInBarBackgroundMaterial
{
  v2 = self;
  v3 = sub_1892275B4(&type metadata for UIContainedInBarMaterialTraitDefinition, sub_1890B2D2C, sub_18901C418);

  return v3;
}

- (BOOL)_barPlattersHidden
{
  v3 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self;
  if ([(UITraitCollection *)v6 _hasSplitViewControllerContextPrimaryColumn]|| [(UITraitCollection *)v6 _splitViewControllerContext]== 5)
  {
    sub_188E1B6FC(v5);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
    v8 = (*(*(v7 - 8) + 48))(v5, 2, v7) == 0;
    sub_188AD77B4(v5);
  }

  else
  {

    return 0;
  }

  return v8;
}

- (double)_headroomSuppressionLimit
{
  v3 = objc_opt_self();
  [(UITraitCollection *)self valueForCGFloatTrait:v3];
  v5 = v4;

  return v5;
}

+ (id)_traitCollectionWithHeadroomSuppressionLimit:(double)a3
{
  v4 = objc_opt_self();
  v5 = [UITraitCollection traitCollectionWithCGFloatValue:v4 forTrait:a3];

  return v5;
}

+ (const)_traitTokenForCGFloatTrait:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v3 = _UITraitTokenForTraitLocked(2, a2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

+ (const)_traitTokenForNSIntegerTrait:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v3 = _UITraitTokenForTraitLocked(3, a2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

+ (const)_traitTokenForNSUIntegerTrait:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v3 = _UITraitTokenForTraitLocked(4, a2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

+ (const)_traitTokenForObjectTrait:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v3 = _UITraitTokenForTraitLocked(1, a2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

+ (const)_traitTokenOrPlaceholderForTrait:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v3 = _UITraitTokenForTraitLocked(0, a2);
  os_unfair_lock_unlock(&_UITraitLock);
  return v3;
}

+ (id)_traitTokensIncludingPlaceholdersForTraits:(uint64_t)a1
{
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__UITraitCollection__traitTokensIncludingPlaceholdersForTraits___block_invoke;
  v5[3] = &unk_1E7101E78;
  v5[4] = a2;
  v5[5] = v3;
  _UIPerformWithTraitLock(v5);
  return v3;
}

uint64_t __64__UITraitCollection__traitTokensIncludingPlaceholdersForTraits___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addObject:{_UITraitTokenForTraitLocked(0, *(*(&v7 + 1) + 8 * v6++))}];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

+ (id)_nameForTrait:(Class)a3
{
  os_unfair_lock_lock(&_UITraitLock);
  v4 = _UITraitTokenForTraitLocked(0, a3);
  os_unfair_lock_unlock(&_UITraitLock);
  objc_opt_self();
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(v4, 0, &v6);
  return v7;
}

+ (uint64_t)_nameForTraitToken:(uint64_t)a1
{
  objc_opt_self();
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  _UIGetTraitMetadata(a2, 0, &v4);
  return v5;
}

+ (id)_identifierForTrait:(Class)a3
{
  os_unfair_lock_lock(&_UITraitLock);
  v4 = _UITraitTokenForTraitLocked(0, a3);
  os_unfair_lock_unlock(&_UITraitLock);
  objc_opt_self();
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(v4, 0, &v6);
  return *(&v7 + 1);
}

+ (UITraitCollection)traitCollectionWithTraits:(UITraitMutations)mutations
{
  if (!mutations)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = [[UITraitCollection alloc] _initWithTraitMutations:?];

  return v4;
}

- (char)_initWithTraitMutations:(char *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v4 = [(UITraitCollection *)v2 _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
    v2 = v4;
    if (v4)
    {
      v6 = v4 + 248;
      v5 = *(v4 + 31);
      if (v5)
      {
      }

      *(v2 + 35) = 0;
      *v6 = 0u;
      *(v2 + 264) = 0u;
      v2[288] |= 3u;
      (*(a2 + 16))(a2, v2);
      v2[288] &= ~2u;
    }
  }

  return v2;
}

- (UITraitCollection)traitCollectionByModifyingTraits:(UITraitMutations)mutations
{
  if (!mutations)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__UITraitCollection_traitCollectionByModifyingTraits___block_invoke;
  v6[3] = &unk_1E710CF78;
  v6[4] = mutations;
  return [(UITraitCollection *)self _traitCollectionByModifyingTraitsCopyOnWrite:v6];
}

uint64_t __54__UITraitCollection_traitCollectionByModifyingTraits___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a3);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (id)_traitCollectionByModifyingTraitsCopyOnWrite:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__116;
    v14 = __Block_byref_object_dispose__116;
    v15 = 0;
    v8[5] = &v10;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__UITraitCollection__traitCollectionByModifyingTraitsCopyOnWrite___block_invoke;
    v9[3] = &unk_1E710D0B0;
    v9[4] = v2;
    v9[5] = &v10;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__UITraitCollection__traitCollectionByModifyingTraitsCopyOnWrite___block_invoke_2;
    v8[3] = &unk_1E710D0B0;
    v8[4] = v2;
    (*(a2 + 16))(a2, v9, v8);
    v4 = v11;
    v5 = v11[5];
    if (v5)
    {
      *(v5 + 288) &= ~2u;
      v6 = v4[5];
    }

    else
    {
      v6 = v2;
      v11[5] = v6;
    }

    v2 = v6;
    _Block_object_dispose(&v10, 8);
  }

  return v2;
}

+ (id)_existingTraitTokenReservingPlaceholderIfNecessaryWithName:(id)a3 identifier:(id)a4
{
  v5 = 0uLL;
  v6 = a3;
  v7 = a4;
  memset(v8, 0, sizeof(v8));
  return _UIDefineNewTrait(&v5);
}

+ (BOOL)_isPlaceholderTraitToken:(id)a3
{
  memset(v4, 0, sizeof(v4));
  _UIGetTraitMetadata(a3, 0, v4);
  return *(&v4[0] + 1) == 0;
}

+ (id)_defineCGFloatTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(double)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9
{
  v18 = 0;
  v17 = 0;
  *&v10 = a9;
  *(&v10 + 1) = 2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a8;
  return _UIDefineNewTrait(&v10);
}

+ (UITraitCollection)traitCollectionWithCGFloatValue:(CGFloat)value forTrait:(UICGFloatTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(2, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [a1 _traitCollectionWithCGFloatValue:v7 forTraitToken:value];
}

+ (id)_traitCollectionWithCGFloatValue:(double)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 2uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  return [UITraitCollection _traitCollectionWithValue:v6 forTraitWithMetadata:?];
}

+ (id)_traitCollectionWithValue:(__int128 *)a3 forTraitWithMetadata:
{
  objc_opt_self();
  v5 = +[UITraitCollection _emptyTraitCollection];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  v8[2] = a3[2];
  return [(UITraitCollection *)v5 _traitCollectionByReplacingValue:a2 forTraitWithMetadata:v8];
}

- (UITraitCollection)traitCollectionByReplacingCGFloatValue:(CGFloat)value forTrait:(UICGFloatTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(2, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _traitCollectionByReplacingCGFloatValue:v7 forTraitToken:value];
}

- (id)_traitCollectionByReplacingCGFloatValue:(double)a3 forTraitToken:(id)a4
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _UIGetTraitMetadata(a4, 2uLL, &v8);
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  return [(UITraitCollection *)self _traitCollectionByReplacingValue:v7 forTraitWithMetadata:?];
}

- (id)_traitCollectionByReplacingValue:(__int128 *)a3 forTraitWithMetadata:
{
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __75__UITraitCollection__traitCollectionByReplacingValue_forTraitWithMetadata___block_invoke;
    v4[3] = &unk_1E710D5A8;
    v4[4] = result;
    v4[5] = a2;
    v3 = a3[1];
    v5 = *a3;
    v6 = v3;
    v7 = a3[2];
    return [(UITraitCollection *)result _traitCollectionByModifyingTraitsCopyOnWrite:v4];
  }

  return result;
}

- (CGFloat)valueForCGFloatTrait:(UICGFloatTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(2, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  [(UITraitCollection *)self _valueForCGFloatTraitToken:v5];
  return result;
}

- (double)_valueForCGFloatTraitToken:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(a3, 2uLL, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return COERCE_DOUBLE([(UITraitCollection *)self _valueForTraitWithMetadata:v5]);
}

- (__CFString)_valueForTraitWithMetadata:(unint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  _UIRecordTraitUsage(a1, *a2);
  if (*a2 <= 0x1AuLL)
  {
    v4 = *(a2 + 16);
    valuePtr[0] = *a2;
    valuePtr[1] = v4;
    valuePtr[2] = *(a2 + 32);
    return [(UITraitCollection *)a1 _valueForBuiltInTraitWithMetadata:?];
  }

  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v5 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = [*(a1 + 224) objectForKey:v8];
  if (!v10)
  {
    if ((v9 & 1) == 0)
    {
      return v5;
    }

    if (v7 > 2)
    {
      if (v7 != 3 && v7 != 4)
      {
        goto LABEL_24;
      }
    }

    else if (v7 != 1 && v7 != 2)
    {
LABEL_24:
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v6}];
      return 0;
    }

    return *v5;
  }

  v11 = v10;
  v5 = 0;
  if (v7 > 2)
  {
    if (v7 == 3 || v7 == 4)
    {
      *&valuePtr[0] = 0;
      v12 = kCFNumberNSIntegerType;
      goto LABEL_17;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return v5;
      }

      *&valuePtr[0] = 0;
      v12 = kCFNumberCGFloatType;
LABEL_17:
      CFNumberGetValue(v10, v12, valuePtr);
      return *&valuePtr[0];
    }

    if (v10 == [MEMORY[0x1E695DFB0] null])
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  return v5;
}

- (void)setCGFloatValue:(double)a3 forTrait:(Class)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    os_unfair_lock_lock(&_UITraitLock);
    v7 = _UITraitTokenForTraitLocked(2, a4);
    os_unfair_lock_unlock(&_UITraitLock);

    [(UITraitCollection *)self _setCGFloatValue:v7 forTraitToken:a3];
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &setCGFloatValue_forTrait____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

- (void)_setCGFloatValue:(double)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 2uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [(UITraitCollection *)self _setValue:v6 forTraitWithMetadata:v9];
}

- (void)_setValue:(uint64_t)a3 forTraitWithMetadata:(__n128)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 288) & 2) != 0)
  {
    switch(*a3)
    {
      case 0:
        *(a1 + 8) = a2;
        goto LABEL_63;
      case 1:
        *(a1 + 80) = a2;
        goto LABEL_63;
      case 2:
        *(a1 + 88) = a2;
        goto LABEL_63;
      case 3:
        *(a1 + 16) = a2;
        goto LABEL_63;
      case 4:
        *(a1 + 64) = a2;
        goto LABEL_63;
      case 5:
        *(a1 + 72) = a2;
        goto LABEL_63;
      case 6:
        *(a1 + 96) = a2;
        goto LABEL_63;
      case 7:
        *(a1 + 104) = _UIContentSizeCategoryFromStringInternal(a2, buf);
        goto LABEL_63;
      case 8:
        *(a1 + 24) = a2;
        goto LABEL_63;
      case 9:
        *(a1 + 152) = a2;
        goto LABEL_63;
      case 0xALL:
        *(a1 + 160) = a2;
        goto LABEL_63;
      case 0xBLL:
        *(a1 + 120) = a2;
        goto LABEL_63;
      case 0xCLL:
        *(a1 + 184) = a2;
        goto LABEL_63;
      case 0xDLL:
        *(a1 + 216) = a2;
        goto LABEL_63;
      case 0xELL:
        *(a1 + 32) = a2;
        goto LABEL_63;
      case 0xFLL:
        *(a1 + 40) = a2;
        goto LABEL_63;
      case 0x10:
        *(a1 + 48) = a2;
        goto LABEL_63;
      case 0x11:
        *(a1 + 56) = a2;
        goto LABEL_63;
      case 0x12:
        *(a1 + 112) = a2;
        goto LABEL_63;
      case 0x13:
        *(a1 + 128) = a2;
        goto LABEL_63;
      case 0x14:
        *(a1 + 136) = a2;
        goto LABEL_63;
      case 0x15:
        *(a1 + 144) = a2;
        goto LABEL_63;
      case 0x16:
        *(a1 + 168) = a2;
        goto LABEL_63;
      case 0x17:
        *(a1 + 176) = a2;
        goto LABEL_63;
      case 0x18:
        *(a1 + 192) = a2;
        goto LABEL_63;
      case 0x19:
        *(a1 + 200) = a2;
        goto LABEL_63;
      case 0x1ALL:
        *(a1 + 208) = a2;
        goto LABEL_63;
      default:
        v7 = *(a3 + 8);
        v8 = *(a3 + 16);
        v9 = *(a3 + 24);
        v10 = *(a3 + 32);
        v11 = *(a3 + 40);
        v12 = *(a1 + 224);
        if (v12)
        {
          if ((*(a3 + 40) & 1) == 0)
          {
LABEL_17:
            if (v10 == a2)
            {
LABEL_18:
              [v12 removeObjectForKey:v9];
              goto LABEL_63;
            }

            if (v7 > 2)
            {
              if (v7 == 3)
              {
                v14 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
              }

              else
              {
                if (v7 != 4)
                {
                  goto LABEL_63;
                }

                v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
              }

              goto LABEL_61;
            }

            if (v7 != 1)
            {
              if (v7 != 2)
              {
                goto LABEL_63;
              }

              v14 = [MEMORY[0x1E696AD98] numberWithDouble:*&a2];
              goto LABEL_61;
            }

LABEL_27:
            if (a2 && v10)
            {
              if ([a2 isEqual:v10])
              {
                goto LABEL_18;
              }
            }

            else if (!a2)
            {
              v14 = [MEMORY[0x1E695DFB0] null];
LABEL_61:
              v15 = v14;
              goto LABEL_62;
            }

            v15 = a2;
LABEL_62:
            [v12 setObject:v15 forKey:v9];
LABEL_63:
            v16 = *(a3 + 8);
            v17 = *(a3 + 32);
            if ((*(a3 + 40) & 1) == 0)
            {
              goto LABEL_72;
            }

            v18 = *(a3 + 16);
            if (v16 > 2)
            {
              if (v16 != 3 && v16 != 4)
              {
LABEL_71:
                v19 = [MEMORY[0x1E696AAA8] currentHandler];
                [v19 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v18}];
                v17 = 0;
LABEL_72:
                if (v17 == a2)
                {
LABEL_73:
                  v20 = *a3;
                  v21 = (a1 + 248);
LABEL_74:

                  _UITraitTokenSetRemove(v21, v20, a4);
                  return;
                }

                if (v16 != 1)
                {
                  goto LABEL_82;
                }

                goto LABEL_78;
              }
            }

            else
            {
              if (v16 == 1)
              {
                v17 = *v17;
                if (v17 == a2)
                {
                  goto LABEL_73;
                }

LABEL_78:
                if (a2 && v17)
                {
                  v22 = [a2 isEqual:?];
                  v20 = *a3;
                  v21 = (a1 + 248);
                  if (v22)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_83;
                }

LABEL_82:
                v20 = *a3;
                v21 = (a1 + 248);
LABEL_83:

                _UITraitTokenSetInsert(v21, v20, a4);
                return;
              }

              if (v16 != 2)
              {
                goto LABEL_71;
              }
            }

            v17 = *v17;
            goto LABEL_72;
          }
        }

        else
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
          *(a1 + 224) = v12;
          if ((v11 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v7 > 2)
        {
          if (v7 != 3 && v7 != 4)
          {
LABEL_16:
            v13 = [MEMORY[0x1E696AAA8] currentHandler];
            [v13 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v8}];
            v10 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          if (v7 == 1)
          {
            v10 = *v10;
            if (v10 == a2)
            {
              goto LABEL_18;
            }

            goto LABEL_27;
          }

          if (v7 != 2)
          {
            goto LABEL_16;
          }
        }

        v10 = *v10;
        goto LABEL_17;
    }
  }

  if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &_setValue_forTraitWithMetadata____s_category) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = NSStringFromSelector(sel__setValue_forTraitWithMetadata_);
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (id)_defineNSIntegerTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(int64_t)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9
{
  v18 = 0;
  v17 = 0;
  *&v10 = a9;
  *(&v10 + 1) = 3;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a8;
  return _UIDefineNewTrait(&v10);
}

+ (UITraitCollection)traitCollectionWithNSIntegerValue:(NSInteger)value forTrait:(UINSIntegerTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(3, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [a1 _traitCollectionWithNSIntegerValue:value forTraitToken:v7];
}

+ (id)_traitCollectionWithNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 3uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  return [UITraitCollection _traitCollectionWithValue:a3 forTraitWithMetadata:v6];
}

- (UITraitCollection)traitCollectionByReplacingNSIntegerValue:(NSInteger)value forTrait:(UINSIntegerTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(3, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _traitCollectionByReplacingNSIntegerValue:value forTraitToken:v7];
}

- (id)_traitCollectionByReplacingNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _UIGetTraitMetadata(a4, 3uLL, &v8);
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  return [(UITraitCollection *)self _traitCollectionByReplacingValue:a3 forTraitWithMetadata:v7];
}

- (NSInteger)valueForNSIntegerTrait:(UINSIntegerTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(3, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _valueForNSIntegerTraitToken:v5];
}

- (int64_t)_valueForNSIntegerTraitToken:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(a3, 3uLL, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [(UITraitCollection *)self _valueForTraitWithMetadata:v5];
}

- (void)setNSIntegerValue:(int64_t)a3 forTrait:(Class)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    os_unfair_lock_lock(&_UITraitLock);
    v7 = _UITraitTokenForTraitLocked(3, a4);
    os_unfair_lock_unlock(&_UITraitLock);

    [(UITraitCollection *)self _setNSIntegerValue:a3 forTraitToken:v7];
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &setNSIntegerValue_forTrait____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

- (void)_setNSIntegerValue:(int64_t)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 3uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [(UITraitCollection *)self _setValue:a3 forTraitWithMetadata:v6, v9];
}

+ (UITraitCollection)traitCollectionWithNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(4, a4);
  os_unfair_lock_unlock(&_UITraitLock);

  return [a1 _traitCollectionWithNSUIntegerValue:a3 forTraitToken:v7];
}

+ (id)_traitCollectionWithNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 4uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  return [UITraitCollection _traitCollectionWithValue:a3 forTraitWithMetadata:v6];
}

- (id)traitCollectionByReplacingNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(4, a4);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _traitCollectionByReplacingNSUIntegerValue:a3 forTraitToken:v7];
}

- (id)_traitCollectionByReplacingNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _UIGetTraitMetadata(a4, 4uLL, &v8);
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  return [(UITraitCollection *)self _traitCollectionByReplacingValue:a3 forTraitWithMetadata:v7];
}

- (unint64_t)valueForNSUIntegerTrait:(Class)a3
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(4, a3);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _valueForNSUIntegerTraitToken:v5];
}

- (unint64_t)_valueForNSUIntegerTraitToken:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(a3, 4uLL, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [(UITraitCollection *)self _valueForTraitWithMetadata:v5];
}

- (void)setNSUIntegerValue:(unint64_t)a3 forTrait:(Class)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    os_unfair_lock_lock(&_UITraitLock);
    v7 = _UITraitTokenForTraitLocked(4, a4);
    os_unfair_lock_unlock(&_UITraitLock);

    [(UITraitCollection *)self _setNSUIntegerValue:a3 forTraitToken:v7];
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &setNSUIntegerValue_forTrait____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

- (void)_setNSUIntegerValue:(unint64_t)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 4uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [(UITraitCollection *)self _setValue:a3 forTraitWithMetadata:v6, v9];
}

+ (id)_defineObjectTraitWithName:(id)a3 identifier:(id)a4 defaultValue:(id)a5 affectsColorAppearance:(BOOL)a6 defaultValueRepresentsUnspecified:(BOOL)a7 isPrivate:(BOOL)a8 placeholderToken:(id)a9
{
  v18 = 0;
  v17 = 0;
  *&v10 = a9;
  *(&v10 + 1) = 1;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a8;
  return _UIDefineNewTrait(&v10);
}

+ (UITraitCollection)traitCollectionWithObject:(id)object forTrait:(UIObjectTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(1, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [a1 _traitCollectionWithObject:object forTraitToken:v7];
}

+ (id)_traitCollectionWithObject:(id)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 1uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  return [UITraitCollection _traitCollectionWithValue:a3 forTraitWithMetadata:v6];
}

- (UITraitCollection)traitCollectionByReplacingObject:(id)object forTrait:(UIObjectTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v7 = _UITraitTokenForTraitLocked(1, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _traitCollectionByReplacingObject:object forTraitToken:v7];
}

- (id)_traitCollectionByReplacingObject:(id)a3 forTraitToken:(id)a4
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _UIGetTraitMetadata(a4, 1uLL, &v8);
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  return [(UITraitCollection *)self _traitCollectionByReplacingValue:a3 forTraitWithMetadata:v7];
}

- (id)objectForTrait:(UIObjectTrait)trait
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(1, trait);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _objectForTraitToken:v5];
}

- (id)_objectForTraitToken:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _UIGetTraitMetadata(a3, 1uLL, &v6);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [(UITraitCollection *)self _valueForTraitWithMetadata:v5];
}

- (void)setObject:(id)a3 forTrait:(Class)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    os_unfair_lock_lock(&_UITraitLock);
    v7 = _UITraitTokenForTraitLocked(1, a4);
    os_unfair_lock_unlock(&_UITraitLock);

    [(UITraitCollection *)self _setObject:a3 forTraitToken:v7];
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &setObject_forTrait____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

- (void)_setObject:(id)a3 forTraitToken:(id)a4
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata(a4, 1uLL, &v7);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [(UITraitCollection *)self _setValue:a3 forTraitWithMetadata:v6, v9];
}

- (id)_traitCollectionByRemovingTrait:(Class)a3
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(0, a3);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _traitCollectionByRemovingTraitToken:v5];
}

- (id)_traitCollectionByRemovingTraitToken:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  _UIGetTraitMetadata(a3, 0, &v12);
  if (*(&v12 + 1))
  {
    v4 = v14;
    if (BYTE8(v14))
    {
      v5 = v13;
      if (*(&v12 + 1) > 2)
      {
        if (*(&v12 + 1) != 3 && *(&v12 + 1) != 4)
        {
          goto LABEL_14;
        }
      }

      else if (*(&v12 + 1) != 1 && *(&v12 + 1) != 2)
      {
LABEL_14:
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v5}];
        v4 = 0;
        goto LABEL_13;
      }

      v4 = *v14;
    }

LABEL_13:
    *buf = v12;
    v16 = v13;
    v17 = v14;
    return [(UITraitCollection *)self _traitCollectionByReplacingValue:v4 forTraitWithMetadata:buf];
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [(NSDictionary *)self->_clientDefinedTraits objectForKey:*(&v13 + 1)];
  if (has_internal_diagnostics)
  {
    if (v7)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Removing placeholder trait (%@) is not supported", buf, 0xCu);
      }
    }
  }

  else if (v7)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &_traitCollectionByRemovingTraitToken____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Removing placeholder trait (%@) is not supported", buf, 0xCu);
    }
  }

  return self;
}

- (id)traitCollectionByFilteringTraits:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        os_unfair_lock_lock(&_UITraitLock);
        v10 = _UITraitTokenForTraitLocked(0, v9);
        os_unfair_lock_unlock(&_UITraitLock);
        v11 = _UIGetTraitTokenValue(v10);
        _UITraitTokenSetInsert(v19, v11, v12);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = [(UITraitCollection *)self _traitCollectionByFilteringTraitTokenSet:v19];
  if (*&v19[0])
  {
  }

  return v13;
}

- (char)_traitCollectionByFilteringTraitTokenSet:(char *)result
{
  if (result)
  {
    v3 = result;
    v4 = [(UITraitCollection *)result _specifiedTraitTokens];
    if (_UITraitTokenSetIsSubsetOfSet(v4, a2))
    {
      v5 = v3;
    }

    else
    {
      v6 = [UITraitCollection alloc];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke;
      v7[3] = &unk_1E710CFF0;
      v7[5] = a2;
      v7[6] = v4;
      v7[4] = v3;
      v5 = [(UITraitCollection *)v6 _initWithTraitMutations:v7];
    }

    return v5;
  }

  return result;
}

- (id)_traitCollectionByFilteringTraitTokens:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = _UIGetTraitTokenValue(*(*(&v13 + 1) + 8 * v8));
        _UITraitTokenSetInsert(v17, v9, v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [(UITraitCollection *)self _traitCollectionByFilteringTraitTokenSet:v17];
  if (*&v17[0])
  {
  }

  return v11;
}

void __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke_2;
  v2[3] = &unk_1E710CFC8;
  v3 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  _UIPerformWithTraitLock(v2);
}

void __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke_3;
  v2[3] = &unk_1E710CFA0;
  v1 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 32);
  _UITraitTokenSetEnumerate(v1, v2);
}

void __62__UITraitCollection__traitCollectionByFilteringTraitTokenSet___block_invoke_3(uint64_t a1, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_UITraitTokenSetContains(*(a1 + 48), a2))
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, &v9);
    if (*(&v9 + 1))
    {
      v4 = *(a1 + 32);
      *buf = v9;
      v13 = v10;
      v14 = v11;
      v5 = [(UITraitCollection *)v4 _valueForTraitWithMetadata:buf];
      v6 = *(a1 + 40);
      *buf = v9;
      v13 = v10;
      v14 = v11;
      [(UITraitCollection *)v6 _setValue:v5 forTraitWithMetadata:buf, v11];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Filtering placeholder trait (%@) is not supported", buf, 0xCu);
      }
    }

    else
    {
      v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_13) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v10;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Filtering placeholder trait (%@) is not supported", buf, 0xCu);
      }
    }
  }
}

- (__CFString)_valueForBuiltInTraitWithMetadata:(void *)a1
{
  switch(*a2)
  {
    case 0:
      result = a1[1];
      break;
    case 1:
      result = a1[10];
      break;
    case 2:
      result = a1[11];
      break;
    case 3:
      result = a1[2];
      break;
    case 4:
      result = a1[8];
      break;
    case 5:
      result = a1[9];
      break;
    case 6:
      result = a1[12];
      break;
    case 7:
      result = _NSStringFromUIContentSizeCategory(a1[13]);
      break;
    case 8:
      result = a1[3];
      break;
    case 9:
      result = a1[19];
      break;
    case 0xALL:
      result = a1[20];
      break;
    case 0xBLL:
      result = a1[15];
      break;
    case 0xCLL:
      result = a1[23];
      break;
    case 0xDLL:
      result = a1[27];
      break;
    case 0xELL:
      result = a1[4];
      break;
    case 0xFLL:
      result = a1[5];
      break;
    case 0x10:
      result = a1[6];
      break;
    case 0x11:
      result = a1[7];
      break;
    case 0x12:
      result = a1[14];
      break;
    case 0x13:
      result = a1[16];
      break;
    case 0x14:
      result = a1[17];
      break;
    case 0x15:
      result = a1[18];
      break;
    case 0x16:
      result = a1[21];
      break;
    case 0x17:
      result = a1[22];
      break;
    case 0x18:
      result = a1[24];
      break;
    case 0x19:
      result = a1[25];
      break;
    case 0x1ALL:
      result = a1[26];
      break;
    default:
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      result = 0;
      break;
  }

  return result;
}

- (NSSet)_specifiedTraits
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = _UITraitsForTraitTokens([(UITraitCollection *)self _specifiedTraitTokensArray]);

  return [v2 setWithArray:v3];
}

- (void)_computeSpecifiedTraitTokensAcquireLock:(uint64_t)a3@<X8>
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (!result)
  {
    return result;
  }

  v3 = result;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v6 = 0;
  v16 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  v7 = &dword_1E711BFD1;
  do
  {
    v8 = *(v7 - 41);
    v9 = *(v7 - 33);
    v10 = *(v7 - 9);
    v11 = *(v7 - 1);
    *v24 = *v7;
    *&v24[3] = *(v7 + 3);
    v20[0] = v8;
    v20[1] = v9;
    v18 = *(v7 - 25);
    v21 = v18;
    v22 = v10;
    v23 = v11;
    v12 = [(UITraitCollection *)v3 _valueForBuiltInTraitWithMetadata:v20];
    v14 = v12;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (v9 > 2)
    {
      if (v9 == 3 || v9 == 4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v9 == 1)
      {
        v10 = v10->isa;
        if (v12 == v10)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (v9 == 2)
      {
LABEL_10:
        v10 = v10->isa;
        goto LABEL_12;
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v18}];
    v10 = 0;
LABEL_12:
    if (v10 == v14)
    {
      goto LABEL_18;
    }

    if (v9 != 1)
    {
LABEL_17:
      _UITraitTokenSetInsert(a3, v6, v13);
      goto LABEL_18;
    }

LABEL_14:
    if (!v14 || !v10 || ([(__CFString *)v14 isEqual:v10]& 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
    ++v6;
    v7 += 12;
  }

  while (v6 != 27);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__UITraitCollection__computeSpecifiedTraitTokensAcquireLock___block_invoke;
  v19[3] = &unk_1E710D018;
  v19[4] = v3;
  v19[5] = a3;
  if (a2)
  {
    _UIPerformWithTraitLock(v19);
  }

  else
  {
    __61__UITraitCollection__computeSpecifiedTraitTokensAcquireLock___block_invoke(v19);
  }

  result = GetTraitCollectionTSD();
  *(result + 9) = v16;
  return result;
}

- (NSArray)_specifiedTraitTokensArray
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(UITraitCollection *)self _specifiedTraitTokens];
  v5 = [v3 arrayWithCapacity:_UITraitTokenSetCount(v4)];
  v6 = [(UITraitCollection *)self _specifiedTraitTokens];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UITraitCollection__specifiedTraitTokensArray__block_invoke;
  v8[3] = &unk_1E710D738;
  v8[4] = v5;
  _UITraitTokenSetEnumerate(v6, v8);
  return v5;
}

uint64_t __47__UITraitCollection__specifiedTraitTokensArray__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

- (BOOL)_isTraitSpecified:(Class)a3
{
  os_unfair_lock_lock(&_UITraitLock);
  v5 = _UITraitTokenForTraitLocked(0, a3);
  os_unfair_lock_unlock(&_UITraitLock);

  return [(UITraitCollection *)self _isTraitTokenSpecified:v5];
}

- (BOOL)_isTraitTokenSpecified:(id)a3
{
  if ((*&self->_flags & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    _UIGetTraitMetadata(a3, 0, &v13);
    if (!*(&v13 + 1))
    {
      return [(NSDictionary *)self->_clientDefinedTraits objectForKey:*(&v14 + 1)]!= 0;
    }

    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v4 = [(UITraitCollection *)self _valueForTraitWithMetadata:v12];
    v5 = v4;
    v6 = *(&v13 + 1);
    v7 = v15;
    if ((BYTE8(v15) & 1) == 0)
    {
LABEL_16:
      if (v7 == v5)
      {
        return 0;
      }

      if (v6 != 1)
      {
        return 1;
      }

      goto LABEL_19;
    }

    v8 = v14;
    if (*(&v13 + 1) > 2)
    {
      if (*(&v13 + 1) != 3 && *(&v13 + 1) != 4)
      {
LABEL_15:
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v8}];
        v7 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if (*(&v13 + 1) == 1)
      {
        v7 = *v15;
        if (v4 == *v15)
        {
          return 0;
        }

LABEL_19:
        result = 1;
        if (v5)
        {
          if (v7)
          {
            return [(__CFString *)v5 isEqual:?]^ 1;
          }
        }

        return result;
      }

      if (*(&v13 + 1) != 2)
      {
        goto LABEL_15;
      }
    }

    v7 = *v15;
    goto LABEL_16;
  }

  v9 = _UIGetTraitTokenValue(a3);

  return _UITraitTokenSetContains(&self->_specifiedTraitTokens, v9);
}

uint64_t __61__UITraitCollection__computeSpecifiedTraitTokensAcquireLock___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 224);
  result = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [_traitTokensByIdentifier objectForKey:*(*(&v20 + 1) + 8 * v6)];
        if (!v7)
        {
          goto LABEL_23;
        }

        v18 = 0u;
        v19 = 0u;
        v17 = 0u;
        _UIGetTraitMetadataLocked(v7, 0, &v17);
        if (!*(&v17 + 1))
        {
          goto LABEL_22;
        }

        v9 = *(a1 + 32);
        v16[0] = v17;
        v16[1] = v18;
        v16[2] = v19;
        v10 = [(UITraitCollection *)v9 _valueForTraitWithMetadata:v16];
        v11 = v10;
        v12 = *(&v17 + 1);
        v13 = v19;
        if ((BYTE8(v19) & 1) == 0)
        {
          goto LABEL_17;
        }

        v14 = v18;
        if (*(&v17 + 1) > 2)
        {
          if (*(&v17 + 1) == 3 || *(&v17 + 1) == 4)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (*(&v17 + 1) == 1)
          {
            v13 = *v19;
            if (v10 == *v19)
            {
              goto LABEL_23;
            }

            goto LABEL_19;
          }

          if (*(&v17 + 1) == 2)
          {
LABEL_15:
            v13 = *v19;
            goto LABEL_17;
          }
        }

        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v14}];
        v13 = 0;
LABEL_17:
        if (v13 == v11)
        {
          goto LABEL_23;
        }

        if (v12 != 1)
        {
LABEL_22:
          _UITraitTokenSetInsert(*(a1 + 40), v17, v8);
          goto LABEL_23;
        }

LABEL_19:
        if (!v11 || !v13 || ([(__CFString *)v11 isEqual:?]& 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (NSSet)changedTraitsFromTraitCollection:(UITraitCollection *)traitCollection
{
  memset(v8, 0, 40);
  [(UITraitCollection *)self _createTraitTokenSetForChangesFromTraitCollection:v8];
  v3 = MEMORY[0x1E695DF70];
  if (v8[0].i64[0])
  {
    v4 = [(_UIFastIndexSet *)v8[0].i64[0] count];
  }

  else
  {
    v4 = vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v8 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(&v8[1] + 8))))));
  }

  v5 = [v3 arrayWithCapacity:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__UITraitCollection_changedTraitsFromTraitCollection___block_invoke;
  v7[3] = &unk_1E710D738;
  v7[4] = v5;
  _UITraitTokenSetEnumerate(v8[0].i64, v7);
  if (v8[0].i64[0])
  {
  }

  return [MEMORY[0x1E695DFD8] setWithArray:_UITraitsForTraitTokens(v5)];
}

- (uint64_t)_createTraitTokenSetForChangesFromTraitCollection:(uint64_t)a3@<X8>
{
  if (!result || (v5 = result, result == a2))
  {
    *(a3 + 32) = 0;
    v11 = 0uLL;
    *(a3 + 16) = 0u;
LABEL_10:
    *a3 = v11;
    return result;
  }

  result = [(UITraitCollection *)result _specifiedTraitTokens];
  v6 = result;
  if (!a2)
  {
    if (*result)
    {
      result = *result;
    }

    v11 = *v6;
    v12 = *(v6 + 16);
    *(a3 + 32) = *(v6 + 32);
    *(a3 + 16) = v12;
    goto LABEL_10;
  }

  v7 = [(UITraitCollection *)a2 _specifiedTraitTokens];
  v8 = _UITraitTokenSetCount(v6);
  result = _UITraitTokenSetCount(v7);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  if (v8 | result)
  {
    TraitCollectionTSD = GetTraitCollectionTSD();
    v10 = TraitCollectionTSD[9];
    TraitCollectionTSD[9] = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke;
    v13[3] = &unk_1E710D088;
    v13[6] = v6;
    v13[7] = v7;
    v13[8] = a3;
    v13[4] = v5;
    v13[5] = a2;
    _UIPerformWithTraitLock(v13);
    result = GetTraitCollectionTSD();
    *(result + 9) = v10;
  }

  return result;
}

uint64_t __54__UITraitCollection_changedTraitsFromTraitCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

void __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke_2;
  v7[3] = &unk_1E710D040;
  v3 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = v3;
  _UITraitTokenSetEnumerate(v2, v7);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke_3;
  v6[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6[4] = *(a1 + 48);
  v6[5] = v5;
  _UITraitTokenSetEnumerate(v4, v6);
}

void __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (_UITraitTokenSetContains(*(a1 + 48), a2))
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, &v18);
    v5 = *(&v18 + 1);
    v6 = *(a1 + 32);
    if (!*(&v18 + 1))
    {
      v12 = *(&v19 + 1);
      v13 = [*(v6 + 224) objectForKey:*(&v19 + 1)];
      v10 = [*(*(a1 + 40) + 224) objectForKey:v12];
      v11 = v13;
LABEL_9:
      if ([v11 isEqual:v10])
      {
        return;
      }

      goto LABEL_11;
    }

    v15 = v18;
    v16 = v19;
    v17 = v20;
    v7 = [(UITraitCollection *)v6 _valueForTraitWithMetadata:?];
    v8 = *(a1 + 40);
    v15 = v18;
    v16 = v19;
    v17 = v20;
    v9 = [(UITraitCollection *)v8 _valueForTraitWithMetadata:?];
    if (v7 == v9)
    {
      return;
    }

    if (v5 == 1)
    {
      if (v7)
      {
        v10 = v9;
        if (v9)
        {
          v11 = v7;
          goto LABEL_9;
        }
      }
    }
  }

LABEL_11:
  v14 = *(a1 + 56);

  _UITraitTokenSetInsert(v14, a2, v4);
}

void __71__UITraitCollection__createTraitTokenSetForChangesFromTraitCollection___block_invoke_3(uint64_t a1, unint64_t a2)
{
  if ((_UITraitTokenSetContains(*(a1 + 32), a2) & 1) == 0)
  {
    v5 = *(a1 + 40);

    _UITraitTokenSetInsert(v5, a2, v4);
  }
}

- (id)_changedTraitTokensArrayFromTraitCollection:(id)a3
{
  memset(v8, 0, 40);
  [(UITraitCollection *)self _createTraitTokenSetForChangesFromTraitCollection:a3, v8];
  v3 = MEMORY[0x1E695DF70];
  if (v8[0].i64[0])
  {
    v4 = [(_UIFastIndexSet *)v8[0].i64[0] count];
  }

  else
  {
    v4 = vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v8 + 8))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(&v8[1] + 8))))));
  }

  v5 = [v3 arrayWithCapacity:v4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UITraitCollection__changedTraitTokensArrayFromTraitCollection___block_invoke;
  v7[3] = &unk_1E710D738;
  v7[4] = v5;
  _UITraitTokenSetEnumerate(v8[0].i64, v7);
  if (v8[0].i64[0])
  {
  }

  return v5;
}

uint64_t __65__UITraitCollection__changedTraitTokensArrayFromTraitCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

- (char)_initWithBuiltinTraitStorage:(void *)a3 tintColor:(void *)a4 clientDefinedTraits:(void *)a5 environmentWrapper:
{
  if (!a1)
  {
    return 0;
  }

  v22.receiver = a1;
  v22.super_class = UITraitCollection;
  v9 = objc_msgSendSuper2(&v22, sel_init);
  v10 = v9;
  if (v9)
  {
    v11 = *a2;
    *(v9 + 24) = *(a2 + 16);
    *(v9 + 8) = v11;
    v12 = *(a2 + 32);
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    *(v9 + 88) = *(a2 + 80);
    *(v9 + 72) = v14;
    *(v9 + 56) = v13;
    *(v9 + 40) = v12;
    v15 = *(a2 + 96);
    v16 = *(a2 + 112);
    v17 = *(a2 + 128);
    *(v9 + 152) = *(a2 + 144);
    *(v9 + 136) = v17;
    *(v9 + 120) = v16;
    *(v9 + 104) = v15;
    v18 = *(a2 + 160);
    v19 = *(a2 + 176);
    v20 = *(a2 + 192);
    *(v9 + 27) = *(a2 + 208);
    *(v9 + 200) = v20;
    *(v9 + 184) = v19;
    *(v9 + 168) = v18;
    *(v9 + 30) = a3;
    if ([a4 count])
    {
      *(v10 + 28) = [a4 copy];
    }

    *(v10 + 29) = a5;
    if (a2 == &_UIBuiltinTraitStorageUnspecified && ![a4 count])
    {
      *(v10 + 248) = 0u;
      *(v10 + 35) = 0;
      *(v10 + 264) = 0u;
      v10[288] |= 1u;
    }
  }

  return v10;
}

uint64_t __66__UITraitCollection__traitCollectionByModifyingTraitsCopyOnWrite___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (!result)
  {
    return *(a1 + 32);
  }

  return result;
}

uint64_t __66__UITraitCollection__traitCollectionByModifyingTraitsCopyOnWrite___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:*(*(a1 + 32) + 240) tintColor:0 clientDefinedTraits:*(*(a1 + 32) + 232) environmentWrapper:?];
    v3 = *(*(*(a1 + 40) + 8) + 40);
    if (v3)
    {
      _UITraitCollectionWasCopied(*(a1 + 32), v3);
      *(*(*(*(a1 + 40) + 8) + 40) + 224) = [*(*(a1 + 32) + 224) mutableCopy];
      v4 = *(*(*(*(a1 + 40) + 8) + 40) + 248);
      if (v4)
      {
      }

      v5 = [(UITraitCollection *)*(a1 + 32) _specifiedTraitTokens];
      v6 = *(*(*(a1 + 40) + 8) + 40);
      *(v6 + 248) = [*v5 mutableCopy];
      v7 = *(v5 + 24);
      *(v6 + 256) = *(v5 + 8);
      *(v6 + 272) = v7;
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *(v8 + 288) |= 1u;
      v9 = *(*(*(a1 + 40) + 8) + 40);
      *(v9 + 288) |= 2u;
      return *(*(*(a1 + 40) + 8) + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ((*&self->_flags & 1) == 0 || (*(a3 + 288) & 1) == 0)
  {
LABEL_5:
    if (!memcmp(&self->_builtinTraits, a3 + 8, 0xD8uLL))
    {
      goto LABEL_6;
    }

    return 0;
  }

  v13 = _UITraitTokenSetCount(&self->_specifiedTraitTokens);
  if (v13 != _UITraitTokenSetCount(a3 + 248))
  {
    return 0;
  }

  if (v13)
  {
    if (!_UITraitTokenSetIsEqualToSet(&self->_specifiedTraitTokens, a3 + 248))
    {
      return 0;
    }

    goto LABEL_5;
  }

LABEL_6:
  if (self->_clientDefinedTraits)
  {
    clientDefinedTraits = self->_clientDefinedTraits;
  }

  else
  {
    clientDefinedTraits = MEMORY[0x1E695E0F8];
  }

  if (*(a3 + 28))
  {
    v6 = *(a3 + 28);
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = [(NSDictionary *)clientDefinedTraits count];
  if (v7 != [v6 count])
  {
    return 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v9 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __29__UITraitCollection_isEqual___block_invoke;
  v15[3] = &unk_1E710D100;
  v15[4] = clientDefinedTraits;
  v15[5] = v6;
  v15[7] = a3;
  v15[8] = &v16;
  v15[6] = self;
  _UIPerformWithTraitLock(v15);
  *(GetTraitCollectionTSD() + 9) = v9;
  if (v17[3])
  {
    environmentWrapper = self->_environmentWrapper;
    v11 = *(a3 + 29);
    if (environmentWrapper == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (environmentWrapper && v11)
      {
        v12 = [environmentWrapper isEqual:?];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v12;
}

uint64_t __29__UITraitCollection_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__UITraitCollection_isEqual___block_invoke_2;
  v4[3] = &unk_1E710D0D8;
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v2;
  return [v1 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __29__UITraitCollection_isEqual___block_invoke_2(uint64_t a1, uint64_t a2, __CFString *a3, _BYTE *a4)
{
  result = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (result)
  {
    v9 = result;
    v10 = [_traitTokensByIdentifier objectForKey:a2];
    if (!v10 || (v20 = 0u, v21 = 0u, v19 = 0u, _UIGetTraitMetadataLocked(v10, 0, &v19), !*(&v19 + 1)))
    {
      v15 = a3;
      v14 = v9;
LABEL_10:
      result = [(__CFString *)v15 isEqual:v14];
      if (result)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v11 = *(a1 + 40);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    v12 = [(UITraitCollection *)v11 _valueForTraitWithMetadata:?];
    v13 = *(a1 + 48);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    result = [(UITraitCollection *)v13 _valueForTraitWithMetadata:?];
    if (v12 == result)
    {
      goto LABEL_12;
    }

    if (*(&v19 + 1) == 1)
    {
      if (v12)
      {
        v14 = result;
        if (result)
        {
          v15 = v12;
          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:
  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_12:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (int64_t)_compare:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[4] = &v16;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__UITraitCollection__compare___block_invoke;
  v15[3] = &unk_1E710D128;
  v15[4] = &v16;
  v13[4] = &v16;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __30__UITraitCollection__compare___block_invoke_2;
  v14[3] = &unk_1E710D150;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __30__UITraitCollection__compare___block_invoke_3;
  v13[3] = &unk_1E710D178;
  _UIBuiltinTraitStorageEnumeratePairWithBlock(&self->_builtinTraits, a3 + 8, 1, v15, v14, v13);
  v6 = [(NSDictionary *)self->_clientDefinedTraits count];
  v7 = [*(a3 + 28) count];
  v8 = v17;
  v9 = v17[3] + v6 - v7;
  v17[3] = v9;
  if (self->_environmentWrapper)
  {
    ++v9;
  }

  v10 = v9 - (*(a3 + 29) != 0);
  v8[3] = v10;
  if (v10 >= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >> 63;
  }

  _Block_object_dispose(&v16, 8);
  return v11;
}

uint64_t __30__UITraitCollection__compare___block_invoke(uint64_t result, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (*a2 == a5)
  {
    if (v5 == a5)
    {
      return result;
    }

    v6 = -1;
  }

  else
  {
    if (v5 != a5)
    {
      return result;
    }

    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t __30__UITraitCollection__compare___block_invoke_2(uint64_t result, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if (*a2 == a5)
  {
    if (v5 == a5)
    {
      return result;
    }

    v6 = -1;
  }

  else
  {
    if (v5 != a5)
    {
      return result;
    }

    v6 = 1;
  }

  *(*(*(result + 32) + 8) + 24) += v6;
  return result;
}

uint64_t __30__UITraitCollection__compare___block_invoke_3(uint64_t result, double *a2, double *a3, double a4)
{
  if (*a2 != a4 && *a3 == a4)
  {
    v4 = 1;
LABEL_7:
    *(*(*(result + 32) + 8) + 24) += v4;
    return result;
  }

  if (*a2 == a4 && *a3 != a4)
  {
    v4 = -1;
    goto LABEL_7;
  }

  return result;
}

uint64_t __80__UITraitCollection__appendClientDefinedTraitsDescription_includePrivateTraits___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 224);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__UITraitCollection__appendClientDefinedTraitsDescription_includePrivateTraits___block_invoke_2;
  v3[3] = &unk_1E710D1A0;
  v4 = *(a1 + 48);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __80__UITraitCollection__appendClientDefinedTraitsDescription_includePrivateTraits___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [_traitTokensByIdentifier objectForKey:a2];
  if (v6)
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    _UIGetTraitMetadataLocked(v6, 0, &v9);
    if ((*(a1 + 40) & 1) != 0 || (BYTE8(v11) & 4) == 0)
    {
      [*(a1 + 32) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ = %@", v10, a3)}];
    }
  }

  else if (*(a1 + 40) == 1)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", a2, a3];

    [v7 addObject:v8];
  }
}

- (id)_traitsDescriptionMatching:(id)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  return [(UITraitCollection *)self _traitsDescriptionMatching:a3 includePrivateTraits:has_internal_diagnostics];
}

- (uint64_t)_traitsDescriptionMatching:(_BOOL4)a3 includePrivateTraits:
{
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E695DF70] array];
    v21[4] = v6;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___UIBuiltinTraitStorageDescription_block_invoke;
    v22[3] = &unk_1E710CF00;
    v22[4] = v6;
    v20[4] = v6;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___UIBuiltinTraitStorageDescription_block_invoke_2;
    v21[3] = &unk_1E710CF28;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___UIBuiltinTraitStorageDescription_block_invoke_3;
    v20[3] = &unk_1E710CF50;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke;
    v16 = &unk_1E710D678;
    v17 = v22;
    v23[4] = v20;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_2;
    v24[3] = &unk_1E710D6A0;
    v24[4] = v21;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_3;
    v23[3] = &unk_1E710D6C8;
    _UIBuiltinTraitStorageEnumeratePairWithBlock((v5 + 1), (v5 + 1), a3, &v13, v24, v23);
    if (v5[28])
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __80__UITraitCollection__appendClientDefinedTraitsDescription_includePrivateTraits___block_invoke;
      v16 = &unk_1E710D1C8;
      v19 = a3;
      v17 = v5;
      v18 = v6;
      _UIPerformWithTraitLock(&v13);
    }

    if (a3)
    {
      if (v5[30])
      {
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"TintColor = %@", v5[30])}];
      }

      a3 = v5[29] != 0;
    }

    if ([a2 length])
    {
      v7 = [a2 lowercaseString];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __69__UITraitCollection__traitsDescriptionMatching_includePrivateTraits___block_invoke;
      v12[3] = &unk_1E710D1F0;
      v12[4] = v7;
      [v6 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v12)}];
      if (a3)
      {
        v8 = [objc_msgSend(@"_environmentWrapper" "lowercaseString")];
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v6 componentsJoinedByString:{@", "}];
        if ((v8 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"; %@", v5[29]];
        return [v9 stringWithFormat:@"%@%@", v10, v11];
      }

      v9 = MEMORY[0x1E696AEC0];
      v10 = [v6 componentsJoinedByString:{@", "}];
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v6 componentsJoinedByString:{@", "}];
      if (a3)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v11 = &stru_1EFB14550;
    return [v9 stringWithFormat:@"%@%@", v10, v11];
  }

  return result;
}

uint64_t __69__UITraitCollection__traitsDescriptionMatching_includePrivateTraits___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lowercaseString];
  v4 = *(a1 + 32);

  return [v3 containsString:v4];
}

- (uint64_t)_descriptionWithPrivateTraits:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    return [v4 stringWithFormat:@"<%@: %p; %@>", v6, v3, -[UITraitCollection _traitsDescriptionMatching:includePrivateTraits:](v3, 0, a2)];
  }

  return result;
}

+ (id)_descriptionForChangeFromTraitCollection:(id)a3 toTraitCollection:(id)a4
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (!a3)
  {
    a3 = +[UITraitCollection _emptyTraitCollection];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_13:
    a4 = +[UITraitCollection _emptyTraitCollection];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = [MEMORY[0x1E695DF70] array];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke;
  v21[3] = &unk_1E710D218;
  v21[4] = v7;
  v19[4] = v7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_2;
  v20[3] = &unk_1E710D240;
  v20[4] = v7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_3;
  v19[3] = &unk_1E710D268;
  _UIBuiltinTraitStorageEnumeratePairWithBlock(a3 + 8, a4 + 8, has_internal_diagnostics, v21, v20, v19);
  if (has_internal_diagnostics)
  {
    v8 = *(a3 + 30);
    v9 = *(a4 + 30);
    if (v8 != v9)
    {
      if (v8 && v9)
      {
        if ([v8 isEqual:?])
        {
          goto LABEL_17;
        }

        v8 = *(a3 + 30);
      }

      if (v8)
      {
        if (*(a4 + 30))
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_tintColor: %@ → %@", v8, *(a4 + 30)];
        }

        else
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_tintColor: %@ → (unspecified)", v8, v16];
        }
      }

      else
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_tintColor: (unspecified) → %@", *(a4 + 30), v16];
      }

      [v7 addObject:v10];
    }
  }

LABEL_17:
  v11 = *(a3 + 28);
  v12 = *(a4 + 28);
  if (v11 != v12)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_4;
    v17[3] = &unk_1E710D2D8;
    v18 = has_internal_diagnostics;
    v17[4] = v11;
    v17[5] = v12;
    v17[6] = v7;
    _UIPerformWithTraitLock(v17);
  }

  if (has_internal_diagnostics)
  {
    v13 = *(a3 + 29);
    v14 = *(a4 + 29);
    if (v13 != v14)
    {
      if (v13 && v14)
      {
        if ([v13 isEqual:?])
        {
          goto LABEL_26;
        }

        v13 = *(a3 + 29);
        v14 = *(a4 + 29);
      }

      [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_environmentWrapper: %@ → %@", v13, v14)}];
    }
  }

LABEL_26:
  if ([v7 count])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ %@ }", objc_msgSend(v7, "componentsJoinedByString:", @"; "];
  }

  else
  {
    return @"(no changes)";
  }
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke(uint64_t result, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (*a2 != *a3)
  {
    v8 = result;
    v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@: ", _UIDescriptionForTraitName(a4)];
    v10 = _UIBuiltinTraitStorageDescriptionForIntegerTraitName(*a2, a4);
    if (v10)
    {
      [v9 appendFormat:@"%@", v10];
    }

    else
    {
      [v9 appendFormat:@"%ld", *a2];
    }

    [v9 appendString:@" → "];
    v11 = _UIBuiltinTraitStorageDescriptionForIntegerTraitName(*a3, a4);
    if (v11)
    {
      [v9 appendFormat:@"%@", v11];
    }

    else
    {
      [v9 appendFormat:@"%ld", *a3];
    }

    v12 = *(v8 + 32);

    return [v12 addObject:v9];
  }

  return result;
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_2(uint64_t result, void *a2, void *a3, void *a4)
{
  if (*a2 != *a3)
  {
    v5 = *(result + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %ld → %ld", _UIDescriptionForTraitName(a4), *a2, *a3];

    return [v5 addObject:v6];
  }

  return result;
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_3(uint64_t result, void *a2, void *a3, void *a4)
{
  if (*a2 != *a3)
  {
    v5 = *(result + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %g → %g", _UIDescriptionForTraitName(a4), *a2, *a3];

    return [v5 addObject:v6];
  }

  return result;
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_4(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_5;
  v11[3] = &__block_descriptor_33_e18_B16__0__NSString_8l;
  v12 = *(a1 + 56);
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_7;
  v7[3] = &unk_1E710D2B0;
  v8 = *(a1 + 40);
  v9 = v11;
  v10 = &__block_literal_global_141_0;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_8;
  v6[3] = &unk_1E710D2B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v6[5] = v4;
  v6[6] = v11;
  v6[7] = &__block_literal_global_141_0;
  return [v3 enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v5 = [_traitTokensByIdentifier objectForKey:a2];
  if (!v5)
  {
    return 1;
  }

  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  _UIGetTraitMetadataLocked(v5, 0, v6);
  return (BYTE8(v7) >> 2) & 1;
}

__CFString *__80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = [_traitTokensByIdentifier objectForKey:a2];
  if (!v2)
  {
    return @"(unspecified)";
  }

  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  _UIGetTraitMetadataLocked(v2, 0, v4);
  if ((BYTE8(v5) & 2) != 0)
  {
    return @"(unspecified)";
  }

  else
  {
    return @"(defaultValue)";
  }
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a1 + 48) + 16))();
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) objectForKey:a2];
    if (result)
    {
      v7 = result;
      if (result == a3)
      {
        return result;
      }

      if (a3)
      {
        result = [a3 isEqual:result];
        if (result)
        {
          return result;
        }
      }

      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ → %@", a2, a3, v7];
      v10 = v8;
    }

    else
    {
      v11 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ → %@", a2, a3, (*(*(a1 + 56) + 16))()];
      v10 = v11;
    }

    return [v10 addObject:v9];
  }

  return result;
}

uint64_t __80__UITraitCollection__descriptionForChangeFromTraitCollection_toTraitCollection___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 48) + 16))();
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) objectForKey:a2];
    if (!result)
    {
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@ → %@", a2, (*(*(a1 + 56) + 16))(), a3];

      return [v7 addObject:v8];
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v17[4] = a3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__UITraitCollection_encodeWithCoder___block_invoke;
  v18[3] = &unk_1E710CF00;
  v18[4] = a3;
  v16[4] = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__UITraitCollection_encodeWithCoder___block_invoke_2;
  v17[3] = &unk_1E710CF28;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__UITraitCollection_encodeWithCoder___block_invoke_3;
  v16[3] = &unk_1E710CF50;
  v20[4] = v17;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke;
  v24 = &unk_1E710D678;
  v25 = v18;
  v19[4] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_2;
  v20[3] = &unk_1E710D6A0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_3;
  v19[3] = &unk_1E710D6C8;
  _UIBuiltinTraitStorageEnumeratePairWithBlock(&self->_builtinTraits, &self->_builtinTraits, 1, &v21, v20, v19);
  tintColor = self->_tintColor;
  if (tintColor)
  {
    [a3 encodeObject:tintColor forKey:@"UITraitCollectionTintColor"];
  }

  if ([(NSDictionary *)self->_clientDefinedTraits count])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    LOBYTE(v24) = 0;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSDictionary count](self->_clientDefinedTraits, "count")}];
    if (qword_1ED49EBE0 != -1)
    {
      dispatch_once(&qword_1ED49EBE0, &__block_literal_global_783);
    }

    v7 = qword_1ED49EBD8;
    v8 = [a3 requiresSecureCoding];
    clientDefinedTraits = self->_clientDefinedTraits;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __37__UITraitCollection_encodeWithCoder___block_invoke_4;
    v14[3] = &unk_1E710D300;
    v15 = v8;
    v14[4] = v7;
    v14[5] = a3;
    v14[6] = v6;
    v14[7] = &v21;
    [(NSDictionary *)clientDefinedTraits enumerateKeysAndObjectsUsingBlock:v14];
    if ([v6 count])
    {
      [a3 encodeObject:v6 forKey:@"UITraitEncodedKeys"];
    }

    v10 = self->_clientDefinedTraits;
    if (*(v22 + 24) == 1)
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSDictionary count](self->_clientDefinedTraits, "count")}];
      v11 = self->_clientDefinedTraits;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __37__UITraitCollection_encodeWithCoder___block_invoke_5;
      v12[3] = &unk_1E710D328;
      v13 = v8;
      v12[4] = v7;
      v12[5] = v10;
      [(NSDictionary *)v11 enumerateKeysAndObjectsUsingBlock:v12];
    }

    [a3 encodeObject:v10 forKey:@"UITraitCollectionClientDefinedTraits"];
    _Block_object_dispose(&v21, 8);
  }
}

uint64_t __37__UITraitCollection_encodeWithCoder___block_invoke(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 != a4)
  {
    v5 = *(result + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];

    return [v5 encodeInteger:v4 forKey:v6];
  }

  return result;
}

uint64_t __37__UITraitCollection_encodeWithCoder___block_invoke_2(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 != a4)
  {
    v5 = *(result + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];

    return [v5 encodeInteger:v4 forKey:v6];
  }

  return result;
}

uint64_t __37__UITraitCollection_encodeWithCoder___block_invoke_3(uint64_t result, double *a2, uint64_t a3, double a4)
{
  v4 = *a2;
  if (*a2 != a4)
  {
    v5 = *(result + 32);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];

    return [v5 encodeDouble:v6 forKey:v4];
  }

  return result;
}

uint64_t __37__UITraitCollection_encodeWithCoder___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    while (([v7 containsObject:v6] & 1) == 0)
    {
      result = [v6 superclass];
      v6 = result;
      if (!result)
      {
        if (*(a1 + 64))
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
LABEL_10:
      *(*(*(a1 + 56) + 8) + 24) = 1;
      return result;
    }
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITrait-%@", a2];
  [*(a1 + 40) encodeObject:a3 forKey:v9];
  v10 = *(a1 + 48);

  return [v10 addObject:v9];
}

uint64_t __37__UITraitCollection_encodeWithCoder___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) == 1)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    while (([v7 containsObject:v6] & 1) == 0)
    {
      result = [v6 superclass];
      v6 = result;
      if (!result)
      {
        if (*(a1 + 48))
        {
          return result;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = objc_opt_respondsToSelector();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v9 = *(a1 + 40);

  return [v9 setObject:a3 forKey:a2];
}

- (UITraitCollection)initWithCoder:(NSCoder *)coder
{
  v37 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = UITraitCollection;
  v4 = [(UITraitCollection *)&v32 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 168) = xmmword_18A6811C0;
    *(v4 + 184) = unk_18A6811D0;
    *(v4 + 200) = xmmword_18A6811E0;
    *(v4 + 104) = xmmword_18A681180;
    *(v4 + 120) = unk_18A681190;
    *(v4 + 136) = xmmword_18A6811A0;
    *(v4 + 152) = unk_18A6811B0;
    *(v4 + 40) = xmmword_18A681140;
    *(v4 + 56) = unk_18A681150;
    *(v4 + 72) = xmmword_18A681160;
    *(v4 + 88) = unk_18A681170;
    *(v4 + 8) = _UIBuiltinTraitStorageUnspecified;
    *(v4 + 27) = -1;
    *(v4 + 24) = unk_18A681130;
    v30[4] = coder;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __35__UITraitCollection_initWithCoder___block_invoke;
    v31[3] = &unk_1E710CF00;
    v31[4] = coder;
    v29[4] = coder;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __35__UITraitCollection_initWithCoder___block_invoke_2;
    v30[3] = &unk_1E710CF28;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __35__UITraitCollection_initWithCoder___block_invoke_3;
    v29[3] = &unk_1E710CF50;
    v34[4] = v30;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke;
    v35[3] = &unk_1E710D678;
    v35[4] = v31;
    v33[4] = v29;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_2;
    v34[3] = &unk_1E710D6A0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___UIBuiltinTraitStorageEnumerateWithBlock_block_invoke_3;
    v33[3] = &unk_1E710D6C8;
    _UIBuiltinTraitStorageEnumeratePairWithBlock((v4 + 8), (v4 + 8), 1, v35, v34, v33);
    v5->_tintColor = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"UITraitCollectionTintColor"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = -[NSCoder decodeObjectOfClasses:forKey:](coder, "decodeObjectOfClasses:forKey:", [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}], @"UITraitEncodedKeys");
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
        if (qword_1ED49EBE0 != -1)
        {
          dispatch_once(&qword_1ED49EBE0, &__block_literal_global_783);
        }

        v24 = qword_1ED49EBD8;
        v13 = [(NSCoder *)coder requiresSecureCoding];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = coder;
          v23 = v5;
          v17 = *v26;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v11);
              }

              v19 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v13)
                {
                  v20 = [(NSCoder *)v16 decodeObjectOfClasses:v24 forKey:v19];
                }

                else
                {
                  v20 = [(NSCoder *)v16 decodeObjectForKey:v19];
                }

                if (v20)
                {
                  -[NSDictionary setObject:forKey:](v12, "setObject:forKey:", v20, [v19 stringByReplacingOccurrencesOfString:@"UITrait-" withString:&stru_1EFB14550 options:8 range:{0, objc_msgSend(v19, "length")}]);
                }
              }
            }

            v15 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
          }

          while (v15);
          v5 = v23;
        }

        goto LABEL_25;
      }
    }

    if (qword_1ED49EBE0 != -1)
    {
      dispatch_once(&qword_1ED49EBE0, &__block_literal_global_783);
    }

    v21 = [(NSCoder *)coder decodeObjectOfClasses:qword_1ED49EBD8 forKey:@"UITraitCollectionClientDefinedTraits"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count])
    {
      v12 = [v21 copy];
LABEL_25:
      v5->_clientDefinedTraits = v12;
    }
  }

  return v5;
}

uint64_t __35__UITraitCollection_initWithCoder___block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];
  result = [*(a1 + 32) containsValueForKey:v5];
  if (result)
  {
    result = [*(a1 + 32) decodeIntegerForKey:v5];
    *a2 = result;
  }

  return result;
}

uint64_t __35__UITraitCollection_initWithCoder___block_invoke_2(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];
  result = [*(a1 + 32) containsValueForKey:v5];
  if (result)
  {
    result = [*(a1 + 32) decodeIntegerForKey:v5];
    *a2 = result;
  }

  return result;
}

uint64_t __35__UITraitCollection_initWithCoder___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UITraitCollectionBuiltinTrait-%@", a3];
  result = [*(a1 + 32) containsValueForKey:v5];
  if (result)
  {
    result = [*(a1 + 32) decodeDoubleForKey:v5];
    *a2 = v7;
  }

  return result;
}

- (uint64_t)_containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:(uint64_t)a1
{
  if (a1)
  {
    v3 = 1;
    if (a2)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 1;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke;
      v10[3] = &unk_1E710D3A0;
      v10[4] = a1;
      v10[5] = a2;
      v10[6] = &v11;
      _UIPerformWithTraitLock(v10);
      v5 = v12;
      if (*(v12 + 24) == 1)
      {
        v6 = *(a2 + 232);
        if (v6)
        {
          v7 = *(a1 + 232);
          if (v7 != v6)
          {
            if (v7 && (v8 = [v7 isEqual:?], v5 = v12, v8))
            {
              v3 = *(v12 + 24);
            }

            else
            {
              v3 = 0;
              *(v5 + 24) = 0;
            }
          }
        }
      }

      else
      {
        v3 = 0;
      }

      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke(uint64_t *a1)
{
  v2 = [(UITraitCollection *)a1[4] _specifiedTraitTokensLocked];
  v3 = [(UITraitCollection *)a1[5] _specifiedTraitTokensLocked];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_2;
  v7[3] = &unk_1E710D350;
  v8 = *(a1 + 2);
  v9 = a1[6];
  v10 = v2;
  _UITraitTokenSetEnumerate(v3, v7);
  v4 = a1[6];
  if (*(*(v4 + 8) + 24) == 1)
  {
    v5 = *(a1[5] + 224);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_3;
      v6[3] = &unk_1E710D378;
      v6[4] = a1[4];
      v6[5] = v4;
      [v5 enumerateKeysAndObjectsUsingBlock:v6];
    }
  }
}

void __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, &v17);
  v6 = *(&v17 + 1);
  if (*(&v17 + 1) && (BYTE8(v19) & 2) != 0)
  {
    if (v17 == 15)
    {
      v7 = *(a1 + 32);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v8 = [(UITraitCollection *)v7 _valueForTraitWithMetadata:?];
      v9 = *(a1 + 40);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      if ((v8 & ~[(UITraitCollection *)v9 _valueForTraitWithMetadata:?]) == 0)
      {
        return;
      }

LABEL_12:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
      return;
    }

    if (!_UITraitTokenSetContains(*(a1 + 56), a2))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    v14 = v17;
    v15 = v18;
    v16 = v19;
    v11 = [(UITraitCollection *)v10 _valueForTraitWithMetadata:?];
    v12 = *(a1 + 40);
    v14 = v17;
    v15 = v18;
    v16 = v19;
    v13 = [(UITraitCollection *)v12 _valueForTraitWithMetadata:?];
    if (v11 != v13 && (v6 != 1 || !v11 || !v13 || ([(__CFString *)v11 isEqual:v13]& 1) == 0))
    {
      goto LABEL_12;
    }
  }
}

uint64_t __97__UITraitCollection__containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [_traitTokensByIdentifier objectForKey:a2];
  if (!result)
  {
    result = [*(*(a1 + 32) + 224) objectForKeyedSubscript:a2];
    if (!result || (result = [result isEqual:a3], (result & 1) == 0))
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

- (uint64_t)_matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = 1;
  if (a2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke;
    v9[3] = &unk_1E710D3A0;
    v9[4] = a1;
    v9[5] = a2;
    v9[6] = &v10;
    _UIPerformWithTraitLock(v9);
    v5 = v11;
    if (*(v11 + 24) == 1)
    {
      v6 = *(a1 + 232);
      if (v6)
      {
        v7 = *(a2 + 232);
        if (v7)
        {
          if (v6 != v7)
          {
            v3 = [v6 isEqual:?];
            v5 = v11;
          }

          *(v5 + 24) = v3;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

void __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke(uint64_t *a1)
{
  v2 = [(UITraitCollection *)a1[4] _specifiedTraitTokensLocked];
  v3 = [(UITraitCollection *)a1[5] _specifiedTraitTokensLocked];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_2;
  v8[3] = &unk_1E710D350;
  v9 = *(a1 + 2);
  v10 = a1[6];
  v11 = v2;
  _UITraitTokenSetEnumerate(v3, v8);
  v4 = a1[6];
  if (*(*(v4 + 8) + 24) == 1)
  {
    v5 = *(a1[4] + 224);
    if (v5)
    {
      v6 = a1[5];
      if (*(v6 + 224))
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_3;
        v7[3] = &unk_1E710D378;
        v7[4] = v6;
        v7[5] = v4;
        [v5 enumerateKeysAndObjectsUsingBlock:v7];
      }
    }
  }
}

void __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_2(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, &v17);
  v6 = *(&v17 + 1);
  if (*(&v17 + 1) && (BYTE8(v19) & 2) != 0)
  {
    if (v17 == 15)
    {
      v7 = *(a1 + 32);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v8 = [(UITraitCollection *)v7 _valueForTraitWithMetadata:?];
      v9 = *(a1 + 40);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      if ((v8 & ~[(UITraitCollection *)v9 _valueForTraitWithMetadata:?]) != 0)
      {
LABEL_5:
        *(*(*(a1 + 48) + 8) + 24) = 0;
        *a3 = 1;
      }
    }

    else if (_UITraitTokenSetContains(*(a1 + 56), a2))
    {
      v10 = *(a1 + 32);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v11 = [(UITraitCollection *)v10 _valueForTraitWithMetadata:?];
      v12 = *(a1 + 40);
      v14 = v17;
      v15 = v18;
      v16 = v19;
      v13 = [(UITraitCollection *)v12 _valueForTraitWithMetadata:?];
      if (v11 != v13 && (v6 != 1 || !v11 || !v13 || ([(__CFString *)v11 isEqual:v13]& 1) == 0))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t __109__UITraitCollection__matchesIntersectionWithTraitCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [_traitTokensByIdentifier objectForKey:a2];
  if (!result)
  {
    result = [*(*(a1 + 32) + 224) objectForKeyedSubscript:a2];
    if (result)
    {
      result = [a3 isEqual:result];
      if ((result & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

- (void)_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3052000000;
    v8 = __Block_byref_object_copy__116;
    v9 = __Block_byref_object_dispose__116;
    v10 = 0;
    v2 = [(UITraitCollection *)a1 _specifiedTraitTokens];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __96__UITraitCollection__traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified__block_invoke;
    v4[3] = &unk_1E710D3C8;
    v4[4] = v1;
    v4[5] = &v5;
    _UITraitTokenSetEnumerate(v2, v4);
    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void __96__UITraitCollection__traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _UIGetTraitMetadata([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2], 0, &v7);
  if (*(&v7 + 1) && (BYTE8(v9) & 2) == 0)
  {
    v3 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v4 = [(UITraitCollection *)v3 _valueForTraitWithMetadata:?];
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      v13 = v7;
      v14 = v8;
      v15 = v9;
      *&v10 = MEMORY[0x1E69E9820];
      *(&v10 + 1) = 3221225472;
      *&v11 = __75__UITraitCollection__traitCollectionByReplacingValue_forTraitWithMetadata___block_invoke;
      *(&v11 + 1) = &unk_1E710D5A8;
      *&v12 = v5;
      *(&v12 + 1) = v4;
      v6 = [(UITraitCollection *)v5 _traitCollectionByModifyingTraitsCopyOnWrite:?];
    }

    else
    {
      v10 = v7;
      v11 = v8;
      v12 = v9;
      v6 = [UITraitCollection _traitCollectionWithValue:v4 forTraitWithMetadata:&v10];
    }

    *(*(*(a1 + 40) + 8) + 40) = v6;
  }
}

- (id)_valueForTraitNamed:(id)a3
{
  if (@"_UITraitNameTintColor" == a3)
  {
    return self->_tintColor;
  }

  if (@"_UITraitNameEnvironmentWrapper" == a3)
  {
    return self->_environmentWrapper;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__116;
  v12 = __Block_byref_object_dispose__116;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__UITraitCollection__valueForTraitNamed___block_invoke;
  v7[3] = &unk_1E710D3F0;
  v7[4] = &v8;
  if (_UIBuiltinTraitStoragePerformActionWithValueForTraitNamed(&self->_builtinTraits, a3, v7))
  {
    v5 = v9[5];
  }

  else
  {
    v5 = [(NSDictionary *)self->_clientDefinedTraits objectForKeyedSubscript:a3];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (UITraitCollection)traitCollectionWithTraitsFromCollections:(NSArray *)traitCollections
{
  if ([(NSArray *)traitCollections count]== 1)
  {

    return [(NSArray *)traitCollections lastObject];
  }

  else
  {
    v7 = [UITraitCollection alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke;
    v8[3] = &unk_1E710D4B8;
    v8[5] = a1;
    v8[6] = a2;
    v8[4] = traitCollections;
    return [(UITraitCollection *)v7 _initWithTraitMutations:v8];
  }
}

void __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke(uint64_t a1, void *a2)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__116;
  v34 = __Block_byref_object_dispose__116;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__116;
  v28 = __Block_byref_object_dispose__116;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__116;
  v22 = __Block_byref_object_dispose__116;
  v23 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_2;
  v11[3] = &unk_1E710D468;
  v4 = *(a1 + 48);
  v16 = &v18;
  v17 = v4;
  v12 = *(a1 + 32);
  v13 = a2;
  v14 = &v30;
  v15 = &v24;
  _UIPerformWithTraitLock(v11);
  v5 = a2[30];
  if (v5 != v25[5])
  {

    a2[30] = v25[5];
  }

  v6 = a2[29];
  if (v6 != v19[5])
  {

    a2[29] = v19[5];
  }

  v7 = v31[5];
  if (v7)
  {
    v8 = a2[28];
    if (v8)
    {
      objc_opt_self();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }

      v9 = v31[5];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_6;
      v10[3] = &unk_1E710D490;
      v10[4] = v8;
      [v9 enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      a2[28] = v7;
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

uint64_t __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_3;
  v4[3] = &unk_1E710D440;
  v2 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = *(a1 + 72);
  return [v1 enumerateObjectsWithOptions:2 usingBlock:v4];
}

uint64_t __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_3(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = NSStringFromSelector(*(a1 + 72));
    [v12 raise:v13 format:{@"Arguments to %@ must all be of type %@", v14, NSStringFromClass(*(a1 + 32))}];
  }

  v6 = [(UITraitCollection *)a2 _specifiedTraitTokensLocked];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_4;
  v16[3] = &unk_1E710CFA0;
  v7 = *(a1 + 40);
  v16[4] = a2;
  v16[5] = v7;
  v16[6] = a3;
  _UITraitTokenSetEnumerate(v6, v16);
  v8 = *(a2 + 224);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_5;
  v15[3] = &unk_1E710D418;
  v15[4] = *(a1 + 48);
  result = [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v10 = *(*(a1 + 56) + 8);
  if (!*(v10 + 40))
  {
    *(v10 + 40) = *(a2 + 240);
  }

  v11 = *(*(a1 + 64) + 8);
  if (!*(v11 + 40))
  {
    *(v11 + 40) = *(a2 + 232);
  }

  return result;
}

void __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_4(void *a1, unint64_t a2)
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  _UIGetTraitMetadataWithTraitTokenValueAcquireLock(0, a2, 0, &v16);
  if (*(&v16 + 1))
  {
    if ((v18.n128_u8[8] & 2) != 0)
    {
      v4 = a1[5];
      if (v16 == 15)
      {
        v13 = v16;
        v14 = v17;
        v15 = v18;
        v5 = [(UITraitCollection *)v4 _valueForTraitWithMetadata:?];
        v6 = a1[4];
        v13 = v16;
        v14 = v17;
        v15 = v18;
        v7 = [(UITraitCollection *)v6 _valueForTraitWithMetadata:?];
        v8 = a1[5];
        v13 = v16;
        v14 = v17;
        v9 = v18;
        v15 = v18;
        v10 = (v7 | v5);
        v11 = v8;
LABEL_9:
        [(UITraitCollection *)v11 _setValue:v10 forTraitWithMetadata:&v13, v9];
        return;
      }

      if (_UITraitTokenSetContains((v4 + 248), a2))
      {
        return;
      }
    }

    else if (a1[6])
    {
      return;
    }

    v12 = a1[4];
    v13 = v16;
    v14 = v17;
    v15 = v18;
    v10 = [(UITraitCollection *)v12 _valueForTraitWithMetadata:?];
    v11 = a1[5];
    v13 = v16;
    v14 = v17;
    v9 = v18;
    v15 = v18;
    goto LABEL_9;
  }
}

uint64_t __62__UITraitCollection_traitCollectionWithTraitsFromCollections___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [_traitTokensByIdentifier objectForKey:a2];
  if (!result)
  {
    v7 = *(*(*(a1 + 32) + 8) + 40);
    if (v7)
    {
      result = [v7 objectForKeyedSubscript:a2];
      if (!result)
      {
        v8 = *(*(*(a1 + 32) + 8) + 40);

        return [v8 setObject:a3 forKeyedSubscript:a2];
      }
    }

    else
    {
      result = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{a3, a2, 0}];
      *(*(*(a1 + 32) + 8) + 40) = result;
    }
  }

  return result;
}

- (id)_traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:(id)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke;
    v2[3] = &unk_1E710D508;
    v2[4] = result;
    v2[5] = a2;
    return [(UITraitCollection *)result _traitCollectionByModifyingTraitsCopyOnWrite:v2];
  }

  return result;
}

void __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v5 = [(UITraitCollection *)*(a1 + 32) _specifiedTraitTokens];
  v6 = [(UITraitCollection *)*(a1 + 40) _specifiedTraitTokens];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke_2;
  v7[3] = &unk_1E710D4E0;
  v7[5] = a3;
  v7[6] = v5;
  v7[4] = *(a1 + 40);
  _UITraitTokenSetEnumerate(v6, v7);
}

void __96__UITraitCollection__traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _UIGetTraitMetadata([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2], 0, &v10);
  if (*(&v10 + 1) && (v12.n128_u8[8] & 2) != 0 && (_UITraitTokenSetContains(*(a1 + 48), a2) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v7 = v10;
    v8 = v11;
    v9 = v12;
    v5 = [(UITraitCollection *)v4 _valueForTraitWithMetadata:?];
    v6 = (*(*(a1 + 40) + 16))();
    v7 = v10;
    v8 = v11;
    v9 = v12;
    [(UITraitCollection *)v6 _setValue:v5 forTraitWithMetadata:&v7, v12];
  }
}

+ (void)_applyOverrides:(uint64_t)a3 defaultValueOverrides:(uint64_t)a4 usingTraitCollectionProvider:(uint64_t)a5 mutableTraitCollectionProvider:
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = objc_opt_self();
  if (a4)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a5)
    {
      goto LABEL_3;
    }
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_3:
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__116;
  v33 = __Block_byref_object_dispose__116;
  v34 = 0;
  if (a2)
  {
    v11 = *(a2 + 232);
    v10 = *(a2 + 240);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke;
    v28[3] = &unk_1E710D530;
    v28[4] = a2;
    v28[5] = &v29;
    _UIPerformWithTraitLock(v28);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = [(UITraitCollection *)a2 _specifiedTraitTokens];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke_2;
  v27[3] = &unk_1E710D558;
  v27[4] = a2;
  v27[5] = a4;
  v27[6] = a5;
  _UITraitTokenSetEnumerate(v12, v27);
  if (a3 && _UITraitTokenSetCount(a3 + 16))
  {
    v13 = (*(a4 + 16))(a4);
    v14 = [(UITraitCollection *)v13 _specifiedTraitTokens];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke_3;
    v26[3] = &unk_1E710D580;
    v26[4] = a5;
    v26[5] = v14;
    [(_UITraitTokenSet *)a3 enumerateAllTraitTokenValues:v26];
  }

  if (v11 && *((*(a4 + 16))(a4) + 232) != v11)
  {

    v15 = v11;
    *((*(a5 + 16))(a5) + 232) = v15;
  }

  if (v10 && *((*(a4 + 16))(a4) + 240) != v10)
  {

    v16 = v10;
    *((*(a5 + 16))(a5) + 240) = v16;
  }

  if ([v30[5] count])
  {
    v17 = [*((*(a5 + 16))(a5) + 224) mutableCopy];
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v30[5];
    v19 = [v18 countByEnumeratingWithState:&v22 objects:v35 count:16];
    if (v19)
    {
      v20 = *v23;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 setObject:objc_msgSend(*(a2 + 224) forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v22 + 1) + 8 * i)), *(*(&v22 + 1) + 8 * i)}];
        }

        v19 = [v18 countByEnumeratingWithState:&v22 objects:v35 count:16];
      }

      while (v19);
    }

    *((*(a5 + 16))(a5) + 224) = v17;
  }

  _Block_object_dispose(&v29, 8);
}

uint64_t __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 224);
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (![_traitTokensByIdentifier objectForKey:v7])
        {
          v8 = *(*(*(a1 + 40) + 8) + 40);
          if (v8)
          {
            [v8 addObject:v7];
          }

          else
          {
            *(*(*(a1 + 40) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke_2(void *a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _UIGetTraitMetadata([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2], 0, &v10);
  v3 = a1[4];
  v7 = v10;
  v8 = v11;
  v9 = v12;
  v4 = [(UITraitCollection *)v3 _valueForTraitWithMetadata:?];
  v5 = (*(a1[5] + 16))();
  v7 = v10;
  v8 = v11;
  v9 = v12;
  if (v4 != [(UITraitCollection *)v5 _valueForTraitWithMetadata:?])
  {
    v6 = (*(a1[6] + 16))();
    v7 = v10;
    v8 = v11;
    v9 = v12;
    [(UITraitCollection *)v6 _setValue:v4 forTraitWithMetadata:&v7, v12];
  }
}

void __119__UITraitCollection__applyOverrides_defaultValueOverrides_usingTraitCollectionProvider_mutableTraitCollectionProvider___block_invoke_3(uint64_t a1, unint64_t a2)
{
  if (_UITraitTokenSetContains(*(a1 + 40), a2))
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    _UIGetTraitMetadata([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2], 0, &v9);
    v4 = v11.n128_u64[0];
    if (v11.n128_u8[8])
    {
      v5 = v10;
      if (*(&v9 + 1) > 2)
      {
        if (*(&v9 + 1) != 3 && *(&v9 + 1) != 4)
        {
          goto LABEL_12;
        }
      }

      else if (*(&v9 + 1) != 1 && *(&v9 + 1) != 2)
      {
LABEL_12:
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"_UITraitWordValue _UITraitDefaultValue(const _UITraitMetadata)") description:{@"UITrait_Internal.h", 93, @"Data type is unknown for trait %@", v5}];
        v4 = 0;
        goto LABEL_10;
      }

      v4 = *v11.n128_u64[0];
    }

LABEL_10:
    v6 = (*(*(a1 + 32) + 16))();
    v8[0] = v9;
    v8[1] = v10;
    v8[2] = v11;
    [(UITraitCollection *)v6 _setValue:v4 forTraitWithMetadata:v8, v11];
  }
}

- (id)_traitCollectionByApplyingOverrides:(uint64_t)a3 defaultValueOverrides:
{
  if (result)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __79__UITraitCollection__traitCollectionByApplyingOverrides_defaultValueOverrides___block_invoke;
    v3[3] = &unk_1E710D508;
    v3[4] = a2;
    v3[5] = a3;
    return [(UITraitCollection *)result _traitCollectionByModifyingTraitsCopyOnWrite:v3];
  }

  return result;
}

+ (UITraitCollection)traitCollectionWithUserInterfaceIdiom:(UIUserInterfaceIdiom)idiom
{
  if (idiom > 4)
  {
    if (idiom > (UIUserInterfaceIdiomVision|UIUserInterfaceIdiomPad))
    {
      switch(idiom)
      {
        case 8:
          if (qword_1ED49E968 != -1)
          {
            dispatch_once(&qword_1ED49E968, &__block_literal_global_233);
          }

          return qword_1ED49E960;
        case 9:
          if (qword_1ED49E978 != -1)
          {
            dispatch_once(&qword_1ED49E978, &__block_literal_global_237);
          }

          return qword_1ED49E970;
        case 10:
          if (qword_1ED49E988 != -1)
          {
            dispatch_once(&qword_1ED49E988, &__block_literal_global_241);
          }

          return qword_1ED49E980;
        default:
LABEL_50:
          v17 = xmmword_18A6811C0;
          v18 = unk_18A6811D0;
          v19 = xmmword_18A6811E0;
          v20 = -1;
          v13 = xmmword_18A681180;
          v14 = unk_18A681190;
          v15 = xmmword_18A6811A0;
          v16 = unk_18A6811B0;
          v9 = xmmword_18A681140;
          v10 = unk_18A681150;
          v11 = xmmword_18A681160;
          v12 = unk_18A681170;
          v7[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
          v8 = unk_18A681130;
          v7[0] = idiom;
          v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v7 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
          v6 = (v4 + 248);
          v5 = *(v4 + 31);
          if (v5)
          {
          }

          *(v4 + 35) = 0;
          *v6 = 0u;
          *(v4 + 264) = 0u;
          _UITraitTokenSetInsert(v6, 0, 0);
          v4[288] |= 1u;
          return v4;
      }
    }

    else if (idiom == UIUserInterfaceIdiomMac)
    {
      if (qword_1ED49E938 != -1)
      {
        dispatch_once(&qword_1ED49E938, &__block_literal_global_221);
      }

      return qword_1ED49E930;
    }

    else if (idiom == UIUserInterfaceIdiomVision)
    {
      if (qword_1ED49E948 != -1)
      {
        dispatch_once(&qword_1ED49E948, &__block_literal_global_225);
      }

      return qword_1ED49E940;
    }

    else
    {
      if (qword_1ED49E958 != -1)
      {
        dispatch_once(&qword_1ED49E958, &__block_literal_global_229);
      }

      return qword_1ED49E950;
    }
  }

  else if (idiom > UIUserInterfaceIdiomPad)
  {
    if (idiom == UIUserInterfaceIdiomTV)
    {
      if (qword_1ED49E908 != -1)
      {
        dispatch_once(&qword_1ED49E908, &__block_literal_global_209_0);
      }

      return qword_1ED49E900;
    }

    else if (idiom == UIUserInterfaceIdiomCarPlay)
    {
      if (qword_1ED49E918 != -1)
      {
        dispatch_once(&qword_1ED49E918, &__block_literal_global_213);
      }

      return qword_1ED49E910;
    }

    else
    {
      if (qword_1ED49E928 != -1)
      {
        dispatch_once(&qword_1ED49E928, &__block_literal_global_217_1);
      }

      return qword_1ED49E920;
    }
  }

  else if (idiom == UIUserInterfaceIdiomUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    if (idiom)
    {
      if (idiom == UIUserInterfaceIdiomPad)
      {
        if (qword_1ED49E8F8 != -1)
        {
          dispatch_once(&qword_1ED49E8F8, &__block_literal_global_205);
        }

        return qword_1ED49E8F0;
      }

      goto LABEL_50;
    }

    if (qword_1ED49E8E8 != -1)
    {
      dispatch_once(&qword_1ED49E8E8, &__block_literal_global_201_1);
    }

    return qword_1ED49E8E0;
  }
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 0;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E8E0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E8E0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E8E0 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_2()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E8F0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E8F0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E8F0 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_3()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 2;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E900 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E900;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E900 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_4()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 3;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E910 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E910;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E910 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_5()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 4;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E920 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E920;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E920 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_6()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 5;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E930 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E930;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E930 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_7()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 6;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E940 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E940;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E940 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_8()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 7;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E950 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E950;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E950 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_9()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 8;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E960 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E960;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E960 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_10()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 9;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E970 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E970;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E970 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceIdiom___block_invoke_11()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[1] = *(&_UIBuiltinTraitStorageUnspecified + 1);
  v4 = unk_18A681130;
  v3[0] = 10;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E980 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E980;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0, 0);
  *(qword_1ED49E980 + 288) |= 1u;
}

- (void)setUserInterfaceIdiom:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.userInterfaceIdiom = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 0, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 0, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setUserInterfaceIdiom____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithDisplayScale:(CGFloat)scale
{
  if (scale == 1.0)
  {
    if (qword_1ED49E998 != -1)
    {
      dispatch_once(&qword_1ED49E998, &__block_literal_global_243_0);
    }

    return qword_1ED49E990;
  }

  else if (scale == 2.0)
  {
    if (qword_1ED49E9A8 != -1)
    {
      dispatch_once(&qword_1ED49E9A8, &__block_literal_global_247_0);
    }

    return qword_1ED49E9A0;
  }

  else if (scale == 3.0)
  {
    if (qword_1ED49E9B8 != -1)
    {
      dispatch_once(&qword_1ED49E9B8, &__block_literal_global_251_0);
    }

    return qword_1ED49E9B0;
  }

  else if (scale == 0.0)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v17 = xmmword_18A6811C0;
    v18 = unk_18A6811D0;
    v19 = xmmword_18A6811E0;
    v20 = -1;
    v13 = xmmword_18A681180;
    v14 = unk_18A681190;
    v15 = xmmword_18A6811A0;
    v16 = unk_18A6811B0;
    v9 = xmmword_18A681140;
    v10 = unk_18A681150;
    v11 = xmmword_18A681160;
    v12 = unk_18A681170;
    v7[0] = _UIBuiltinTraitStorageUnspecified;
    v8 = unk_18A681130;
    *&v7[1] = scale;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v7 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 3uLL, 0);
    v4[288] |= 1u;
    return v4;
  }
}

void __53__UITraitCollection_traitCollectionWithDisplayScale___block_invoke()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v4 = unk_18A681130;
  v3[1] = 0x3FF0000000000000;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E990 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E990;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 3uLL, 0);
  *(qword_1ED49E990 + 288) |= 1u;
}

void __53__UITraitCollection_traitCollectionWithDisplayScale___block_invoke_2()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v4 = unk_18A681130;
  v3[1] = 0x4000000000000000;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E9A0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9A0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 3uLL, 0);
  *(qword_1ED49E9A0 + 288) |= 1u;
}

void __53__UITraitCollection_traitCollectionWithDisplayScale___block_invoke_3()
{
  v13 = xmmword_18A6811C0;
  v14 = unk_18A6811D0;
  v15 = xmmword_18A6811E0;
  v16 = -1;
  v9 = xmmword_18A681180;
  v10 = unk_18A681190;
  v11 = xmmword_18A6811A0;
  v12 = unk_18A6811B0;
  v5 = xmmword_18A681140;
  v6 = unk_18A681150;
  v7 = xmmword_18A681160;
  v8 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v4 = unk_18A681130;
  v3[1] = 0x4008000000000000;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E9B0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9B0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 3uLL, 0);
  *(qword_1ED49E9B0 + 288) |= 1u;
}

- (void)setDisplayScale:(double)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.displayScale = a3;
    if (a3 == 0.0)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 3uLL, *&a3);
    }

    else
    {
      v4 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v4, 3uLL, *&a3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &setDisplayScale____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithDisplayGamut:(UIDisplayGamut)displayGamut
{
  if (displayGamut == UIDisplayGamutUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v24 = v3;
    v25 = v4;
    if (displayGamut == UIDisplayGamutP3)
    {
      if (qword_1ED49E9D8 != -1)
      {
        dispatch_once(&qword_1ED49E9D8, &__block_literal_global_257);
      }

      return qword_1ED49E9D0;
    }

    else if (displayGamut)
    {
      v20 = xmmword_18A6811C0;
      v21 = unk_18A6811D0;
      v22 = xmmword_18A6811E0;
      v23 = -1;
      v16 = xmmword_18A681180;
      v17 = unk_18A681190;
      v18 = xmmword_18A6811A0;
      v19 = unk_18A6811B0;
      v12 = xmmword_18A681140;
      v13 = unk_18A681150;
      v14 = xmmword_18A681160;
      v15 = unk_18A681170;
      v9 = _UIBuiltinTraitStorageUnspecified;
      v11 = unk_18A681138;
      v10 = displayGamut;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 8uLL, 0);
      v6[288] |= 1u;
      return v6;
    }

    else
    {
      if (qword_1ED49E9C8 != -1)
      {
        dispatch_once(&qword_1ED49E9C8, &__block_literal_global_253);
      }

      return qword_1ED49E9C0;
    }
  }
}

void __53__UITraitCollection_traitCollectionWithDisplayGamut___block_invoke()
{
  v14 = xmmword_18A6811C0;
  v15 = unk_18A6811D0;
  v16 = xmmword_18A6811E0;
  v17 = -1;
  v10 = xmmword_18A681180;
  v11 = unk_18A681190;
  v12 = xmmword_18A6811A0;
  v13 = unk_18A6811B0;
  v6 = xmmword_18A681140;
  v7 = unk_18A681150;
  v8 = xmmword_18A681160;
  v9 = unk_18A681170;
  v3 = _UIBuiltinTraitStorageUnspecified;
  v5 = unk_18A681138;
  v4 = 0;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
  qword_1ED49E9C0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9C0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 8uLL, 0);
  *(qword_1ED49E9C0 + 288) |= 1u;
}

void __53__UITraitCollection_traitCollectionWithDisplayGamut___block_invoke_2()
{
  v14 = xmmword_18A6811C0;
  v15 = unk_18A6811D0;
  v16 = xmmword_18A6811E0;
  v17 = -1;
  v10 = xmmword_18A681180;
  v11 = unk_18A681190;
  v12 = xmmword_18A6811A0;
  v13 = unk_18A6811B0;
  v6 = xmmword_18A681140;
  v7 = unk_18A681150;
  v8 = xmmword_18A681160;
  v9 = unk_18A681170;
  v3 = _UIBuiltinTraitStorageUnspecified;
  v5 = unk_18A681138;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
  qword_1ED49E9D0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9D0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 8uLL, 0);
  *(qword_1ED49E9D0 + 288) |= 1u;
}

- (void)setDisplayGamut:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.displayGamut = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 8uLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 8uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setDisplayGamut____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithHorizontalSizeClass:(UIUserInterfaceSizeClass)horizontalSizeClass
{
  if (horizontalSizeClass)
  {
    if (horizontalSizeClass == UIUserInterfaceSizeClassRegular)
    {
      if (qword_1ED49E9F8 != -1)
      {
        dispatch_once(&qword_1ED49E9F8, &__block_literal_global_263);
      }

      return qword_1ED49E9F0;
    }

    else if (horizontalSizeClass == UIUserInterfaceSizeClassCompact)
    {
      if (qword_1ED49E9E8 != -1)
      {
        dispatch_once(&qword_1ED49E9E8, &__block_literal_global_259);
      }

      return qword_1ED49E9E0;
    }

    else
    {
      v17 = xmmword_18A6811C0;
      v18 = unk_18A6811D0;
      v19 = xmmword_18A6811E0;
      v20 = -1;
      v13 = xmmword_18A681180;
      v14 = unk_18A681190;
      v15 = xmmword_18A6811A0;
      v16 = unk_18A6811B0;
      v8[2] = xmmword_18A681140;
      v9 = unk_18A681150;
      v11 = xmmword_18A681160;
      v12 = unk_18A681170;
      v8[0] = _UIBuiltinTraitStorageUnspecified;
      v8[1] = unk_18A681130;
      v10 = horizontalSizeClass;
      v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v7 = (v5 + 248);
      v6 = *(v5 + 31);
      if (v6)
      {
      }

      *(v5 + 35) = 0;
      *v7 = 0u;
      *(v5 + 264) = 0u;
      _UITraitTokenSetInsert(v7, 4uLL, 0);
      v5[288] |= 1u;
      return v5;
    }
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

void __60__UITraitCollection_traitCollectionWithHorizontalSizeClass___block_invoke()
{
  v12 = xmmword_18A6811C0;
  v13 = unk_18A6811D0;
  v14 = xmmword_18A6811E0;
  v15 = -1;
  v8 = xmmword_18A681180;
  v9 = unk_18A681190;
  v10 = xmmword_18A6811A0;
  v11 = unk_18A6811B0;
  v3[2] = xmmword_18A681140;
  v4 = unk_18A681150;
  v6 = xmmword_18A681160;
  v7 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E9E0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9E0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 4uLL, 0);
  *(qword_1ED49E9E0 + 288) |= 1u;
}

void __60__UITraitCollection_traitCollectionWithHorizontalSizeClass___block_invoke_2()
{
  v12 = xmmword_18A6811C0;
  v13 = unk_18A6811D0;
  v14 = xmmword_18A6811E0;
  v15 = -1;
  v8 = xmmword_18A681180;
  v9 = unk_18A681190;
  v10 = xmmword_18A6811A0;
  v11 = unk_18A6811B0;
  v3[2] = xmmword_18A681140;
  v4 = unk_18A681150;
  v6 = xmmword_18A681160;
  v7 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 2;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49E9F0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49E9F0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 4uLL, 0);
  *(qword_1ED49E9F0 + 288) |= 1u;
}

- (void)setHorizontalSizeClass:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.horizontalSizeClass = a3;
    if (a3)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(p_specifiedTraitTokens, 4uLL, v3);
    }

    else
    {
      v6 = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(v6, 4uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setHorizontalSizeClass____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithVerticalSizeClass:(UIUserInterfaceSizeClass)verticalSizeClass
{
  if (verticalSizeClass)
  {
    if (verticalSizeClass == UIUserInterfaceSizeClassRegular)
    {
      if (qword_1ED49EA18 != -1)
      {
        dispatch_once(&qword_1ED49EA18, &__block_literal_global_269);
      }

      return qword_1ED49EA10;
    }

    else if (verticalSizeClass == UIUserInterfaceSizeClassCompact)
    {
      if (qword_1ED49EA08 != -1)
      {
        dispatch_once(&qword_1ED49EA08, &__block_literal_global_265);
      }

      return qword_1ED49EA00;
    }

    else
    {
      v8[10] = xmmword_18A6811C0;
      memset(&v8[11], 255, 32);
      v9 = -1;
      v8[6] = xmmword_18A681180;
      v8[7] = unk_18A681190;
      v8[8] = xmmword_18A6811A0;
      v8[9] = unk_18A6811B0;
      memset(&v8[2], 0, 32);
      v8[5] = unk_18A681170;
      v8[0] = _UIBuiltinTraitStorageUnspecified;
      v8[1] = unk_18A681130;
      v8[4] = verticalSizeClass;
      v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v7 = (v5 + 248);
      v6 = *(v5 + 31);
      if (v6)
      {
      }

      *(v5 + 35) = 0;
      *v7 = 0u;
      *(v5 + 264) = 0u;
      _UITraitTokenSetInsert(v7, 5uLL, 0);
      v5[288] |= 1u;
      return v5;
    }
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

void __58__UITraitCollection_traitCollectionWithVerticalSizeClass___block_invoke()
{
  v3[10] = xmmword_18A6811C0;
  memset(&v3[11], 255, 32);
  v4 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v3[9] = unk_18A6811B0;
  memset(&v3[2], 0, 32);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v3[4] = 1uLL;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA00 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA00;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 5uLL, 0);
  *(qword_1ED49EA00 + 288) |= 1u;
}

void __58__UITraitCollection_traitCollectionWithVerticalSizeClass___block_invoke_2()
{
  v3[10] = xmmword_18A6811C0;
  memset(&v3[11], 255, 32);
  v4 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v3[9] = unk_18A6811B0;
  memset(&v3[2], 0, 32);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v3[4] = 2uLL;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA10 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA10;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 5uLL, 0);
  *(qword_1ED49EA10 + 288) |= 1u;
}

- (void)setVerticalSizeClass:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.verticalSizeClass = a3;
    if (a3)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(p_specifiedTraitTokens, 5uLL, v3);
    }

    else
    {
      v6 = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(v6, 5uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setVerticalSizeClass____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithUserInterfaceStyle:(UIUserInterfaceStyle)userInterfaceStyle
{
  if (userInterfaceStyle)
  {
    if (userInterfaceStyle == UIUserInterfaceStyleDark)
    {
      if (qword_1ED49EA38 != -1)
      {
        dispatch_once(&qword_1ED49EA38, &__block_literal_global_275);
      }

      return qword_1ED49EA30;
    }

    else if (userInterfaceStyle == UIUserInterfaceStyleLight)
    {
      if (qword_1ED49EA28 != -1)
      {
        dispatch_once(&qword_1ED49EA28, &__block_literal_global_271);
      }

      return qword_1ED49EA20;
    }

    else
    {
      v16 = xmmword_18A6811C0;
      v17 = unk_18A6811D0;
      v18 = xmmword_18A6811E0;
      v19 = -1;
      v12 = xmmword_18A681180;
      v13 = unk_18A681190;
      v14 = xmmword_18A6811A0;
      v15 = unk_18A6811B0;
      memset(&v8[2], 0, 32);
      v9 = 0;
      v11 = unk_18A681170;
      v8[0] = _UIBuiltinTraitStorageUnspecified;
      v8[1] = unk_18A681130;
      v10 = userInterfaceStyle;
      v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v7 = (v5 + 248);
      v6 = *(v5 + 31);
      if (v6)
      {
      }

      *(v5 + 35) = 0;
      *v7 = 0u;
      *(v5 + 264) = 0u;
      _UITraitTokenSetInsert(v7, 1uLL, 0);
      v5[288] |= 1u;
      return v5;
    }
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceStyle___block_invoke()
{
  v11 = xmmword_18A6811C0;
  v12 = unk_18A6811D0;
  v13 = xmmword_18A6811E0;
  v14 = -1;
  v7 = xmmword_18A681180;
  v8 = unk_18A681190;
  v9 = xmmword_18A6811A0;
  v10 = unk_18A6811B0;
  memset(&v3[2], 0, 32);
  v4 = 0;
  v6 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA20 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA20;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 1uLL, 0);
  *(qword_1ED49EA20 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceStyle___block_invoke_2()
{
  v11 = xmmword_18A6811C0;
  v12 = unk_18A6811D0;
  v13 = xmmword_18A6811E0;
  v14 = -1;
  v7 = xmmword_18A681180;
  v8 = unk_18A681190;
  v9 = xmmword_18A6811A0;
  v10 = unk_18A6811B0;
  memset(&v3[2], 0, 32);
  v4 = 0;
  v6 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 2;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA30 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA30;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 1uLL, 0);
  *(qword_1ED49EA30 + 288) |= 1u;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.userInterfaceStyle = a3;
    if (a3)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(p_specifiedTraitTokens, 1uLL, v3);
    }

    else
    {
      v6 = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(v6, 1uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setUserInterfaceStyle____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithLayoutDirection:(UITraitEnvironmentLayoutDirection)layoutDirection
{
  if (layoutDirection == UITraitEnvironmentLayoutDirectionUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v20 = v3;
    v21 = v4;
    if (layoutDirection == UITraitEnvironmentLayoutDirectionRightToLeft)
    {
      if (qword_1ED49EA58 != -1)
      {
        dispatch_once(&qword_1ED49EA58, &__block_literal_global_281);
      }

      return qword_1ED49EA50;
    }

    else if (layoutDirection)
    {
      v16 = xmmword_18A6811C0;
      v17 = unk_18A6811D0;
      v18 = xmmword_18A6811E0;
      v19 = -1;
      v12 = xmmword_18A681180;
      v13 = unk_18A681190;
      v14 = xmmword_18A6811A0;
      v15 = unk_18A6811B0;
      memset(&v9[2], 0, 48);
      v11 = unk_18A681178;
      v9[0] = _UIBuiltinTraitStorageUnspecified;
      v9[1] = unk_18A681130;
      v10 = layoutDirection;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 2uLL, 0);
      v6[288] |= 1u;
      return v6;
    }

    else
    {
      if (qword_1ED49EA48 != -1)
      {
        dispatch_once(&qword_1ED49EA48, &__block_literal_global_277);
      }

      return qword_1ED49EA40;
    }
  }
}

void __56__UITraitCollection_traitCollectionWithLayoutDirection___block_invoke()
{
  v10 = xmmword_18A6811C0;
  v11 = unk_18A6811D0;
  v12 = xmmword_18A6811E0;
  v13 = -1;
  v6 = xmmword_18A681180;
  v7 = unk_18A681190;
  v8 = xmmword_18A6811A0;
  v9 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v5 = unk_18A681178;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 0;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA40 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA40;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 2uLL, 0);
  *(qword_1ED49EA40 + 288) |= 1u;
}

void __56__UITraitCollection_traitCollectionWithLayoutDirection___block_invoke_2()
{
  v10 = xmmword_18A6811C0;
  v11 = unk_18A6811D0;
  v12 = xmmword_18A6811E0;
  v13 = -1;
  v6 = xmmword_18A681180;
  v7 = unk_18A681190;
  v8 = xmmword_18A6811A0;
  v9 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v5 = unk_18A681178;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA50 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA50;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 2uLL, 0);
  *(qword_1ED49EA50 + 288) |= 1u;
}

- (void)setLayoutDirection:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.layoutDirection = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 2uLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 2uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setLayoutDirection____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithForceTouchCapability:(UIForceTouchCapability)capability
{
  if (capability)
  {
    if (capability == UIForceTouchCapabilityAvailable)
    {
      if (qword_1ED49EA78 != -1)
      {
        dispatch_once(&qword_1ED49EA78, &__block_literal_global_287_0);
      }

      return qword_1ED49EA70;
    }

    else if (capability == UIForceTouchCapabilityUnavailable)
    {
      if (qword_1ED49EA68 != -1)
      {
        dispatch_once(&qword_1ED49EA68, &__block_literal_global_283);
      }

      return qword_1ED49EA60;
    }

    else
    {
      v15 = xmmword_18A6811C0;
      v16 = unk_18A6811D0;
      v17 = xmmword_18A6811E0;
      v18 = -1;
      v11 = xmmword_18A681180;
      v12 = unk_18A681190;
      v13 = xmmword_18A6811A0;
      v14 = unk_18A6811B0;
      memset(&v8[2], 0, 48);
      v9 = unk_18A681170;
      v8[0] = _UIBuiltinTraitStorageUnspecified;
      v8[1] = unk_18A681130;
      v10 = capability;
      v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v7 = (v5 + 248);
      v6 = *(v5 + 31);
      if (v6)
      {
      }

      *(v5 + 35) = 0;
      *v7 = 0u;
      *(v5 + 264) = 0u;
      _UITraitTokenSetInsert(v7, 6uLL, 0);
      v5[288] |= 1u;
      return v5;
    }
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

void __61__UITraitCollection_traitCollectionWithForceTouchCapability___block_invoke()
{
  v10 = xmmword_18A6811C0;
  v11 = unk_18A6811D0;
  v12 = xmmword_18A6811E0;
  v13 = -1;
  v6 = xmmword_18A681180;
  v7 = unk_18A681190;
  v8 = xmmword_18A6811A0;
  v9 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v4 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA60 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA60;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 6uLL, 0);
  *(qword_1ED49EA60 + 288) |= 1u;
}

void __61__UITraitCollection_traitCollectionWithForceTouchCapability___block_invoke_2()
{
  v10 = xmmword_18A6811C0;
  v11 = unk_18A6811D0;
  v12 = xmmword_18A6811E0;
  v13 = -1;
  v6 = xmmword_18A681180;
  v7 = unk_18A681190;
  v8 = xmmword_18A6811A0;
  v9 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v4 = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 2;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA70 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA70;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 6uLL, 0);
  *(qword_1ED49EA70 + 288) |= 1u;
}

- (void)setForceTouchCapability:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.forceTouchCapability = a3;
    if (a3)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(p_specifiedTraitTokens, 6uLL, v3);
    }

    else
    {
      v6 = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(v6, 6uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setForceTouchCapability____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithDisplayCornerRadius:(double)a3
{
  if (a3 == -1.0)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v19 = v3;
    v20 = v4;
    v15 = xmmword_18A6811C0;
    v16 = unk_18A6811D0;
    v17 = xmmword_18A6811E0;
    v18 = -1;
    v10 = 0;
    v12 = unk_18A681190;
    v13 = xmmword_18A6811A0;
    v14 = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = unk_18A681130;
    v11 = a3;
    v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v8 = (v6 + 248);
    v7 = *(v6 + 31);
    if (v7)
    {
    }

    *(v6 + 35) = 0;
    *v8 = 0u;
    *(v6 + 264) = 0u;
    _UITraitTokenSetInsert(v8, 0x12uLL, 0);
    v6[288] |= 1u;
    return v6;
  }
}

+ (UITraitCollection)traitCollectionWithLegibilityWeight:(UILegibilityWeight)legibilityWeight
{
  if (legibilityWeight == UILegibilityWeightUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v18 = v3;
    v19 = v4;
    if (legibilityWeight == UILegibilityWeightBold)
    {
      if (qword_1ED49EA98 != -1)
      {
        dispatch_once(&qword_1ED49EA98, &__block_literal_global_295);
      }

      return qword_1ED49EA90;
    }

    else if (legibilityWeight)
    {
      v14 = xmmword_18A6811C0;
      v15 = unk_18A6811D0;
      v16 = xmmword_18A6811E0;
      v17 = -1;
      v9[6] = xmmword_18A681180;
      v11 = unk_18A681198;
      v12 = xmmword_18A6811A0;
      v13 = unk_18A6811B0;
      memset(&v9[2], 0, 48);
      v9[5] = unk_18A681170;
      v9[0] = _UIBuiltinTraitStorageUnspecified;
      v9[1] = unk_18A681130;
      v10 = legibilityWeight;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 0xBuLL, 0);
      v6[288] |= 1u;
      return v6;
    }

    else
    {
      if (qword_1ED49EA88 != -1)
      {
        dispatch_once(&qword_1ED49EA88, &__block_literal_global_291_1);
      }

      return qword_1ED49EA80;
    }
  }
}

void __57__UITraitCollection_traitCollectionWithLegibilityWeight___block_invoke()
{
  v8 = xmmword_18A6811C0;
  v9 = unk_18A6811D0;
  v10 = xmmword_18A6811E0;
  v11 = -1;
  v3[6] = xmmword_18A681180;
  v5 = unk_18A681198;
  v6 = xmmword_18A6811A0;
  v7 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 0;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA80 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA80;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0xBuLL, 0);
  *(qword_1ED49EA80 + 288) |= 1u;
}

void __57__UITraitCollection_traitCollectionWithLegibilityWeight___block_invoke_2()
{
  v8 = xmmword_18A6811C0;
  v9 = unk_18A6811D0;
  v10 = xmmword_18A6811E0;
  v11 = -1;
  v3[6] = xmmword_18A681180;
  v5 = unk_18A681198;
  v6 = xmmword_18A6811A0;
  v7 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EA90 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EA90;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0xBuLL, 0);
  *(qword_1ED49EA90 + 288) |= 1u;
}

- (void)setLegibilityWeight:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.legibilityWeight = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 0xBuLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 0xBuLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setLegibilityWeight____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithActiveAppearance:(UIUserInterfaceActiveAppearance)userInterfaceActiveAppearance
{
  if (userInterfaceActiveAppearance == UIUserInterfaceActiveAppearanceUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v14 = v3;
    v15 = v4;
    if (userInterfaceActiveAppearance == UIUserInterfaceActiveAppearanceActive)
    {
      if (qword_1ED49EAA8 != -1)
      {
        dispatch_once(&qword_1ED49EAA8, &__block_literal_global_297);
      }

      return qword_1ED49EAA0;
    }

    else
    {
      v9[10] = xmmword_18A6811C0;
      v11 = unk_18A6811D8;
      v12 = xmmword_18A6811E0;
      v13 = -1;
      v9[6] = xmmword_18A681180;
      v9[7] = unk_18A681190;
      v9[8] = xmmword_18A6811A0;
      v9[9] = unk_18A6811B0;
      memset(&v9[2], 0, 48);
      v9[5] = unk_18A681170;
      v9[0] = _UIBuiltinTraitStorageUnspecified;
      v9[1] = unk_18A681130;
      v10 = userInterfaceActiveAppearance;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 0xCuLL, 0);
      v6[288] |= 1u;
      return v6;
    }
  }
}

void __57__UITraitCollection_traitCollectionWithActiveAppearance___block_invoke()
{
  v3[10] = xmmword_18A6811C0;
  v5 = unk_18A6811D8;
  v6 = xmmword_18A6811E0;
  v7 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v3[9] = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAA0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAA0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0xCuLL, 0);
  *(qword_1ED49EAA0 + 288) |= 1u;
}

- (void)setActiveAppearance:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.activeAppearance = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 0xCuLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 0xCuLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setActiveAppearance____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithAccessibilityContrast:(UIAccessibilityContrast)accessibilityContrast
{
  if (accessibilityContrast == UIAccessibilityContrastUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v16 = v3;
    v17 = v4;
    if (accessibilityContrast == UIAccessibilityContrastHigh)
    {
      if (qword_1ED49EAC8 != -1)
      {
        dispatch_once(&qword_1ED49EAC8, &__block_literal_global_303_0);
      }

      return qword_1ED49EAC0;
    }

    else if (accessibilityContrast)
    {
      v12 = xmmword_18A6811C0;
      v13 = unk_18A6811D0;
      v14 = xmmword_18A6811E0;
      v15 = -1;
      v9[6] = xmmword_18A681180;
      v9[7] = unk_18A681190;
      v9[8] = xmmword_18A6811A0;
      v11 = unk_18A6811B8;
      memset(&v9[2], 0, 48);
      v9[5] = unk_18A681170;
      v9[0] = _UIBuiltinTraitStorageUnspecified;
      v9[1] = unk_18A681130;
      v10 = accessibilityContrast;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 9uLL, 0);
      v6[288] |= 1u;
      return v6;
    }

    else
    {
      if (qword_1ED49EAB8 != -1)
      {
        dispatch_once(&qword_1ED49EAB8, &__block_literal_global_299);
      }

      return qword_1ED49EAB0;
    }
  }
}

void __62__UITraitCollection_traitCollectionWithAccessibilityContrast___block_invoke()
{
  v6 = xmmword_18A6811C0;
  v7 = unk_18A6811D0;
  v8 = xmmword_18A6811E0;
  v9 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v5 = unk_18A6811B8;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 0;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAB0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAB0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 9uLL, 0);
  *(qword_1ED49EAB0 + 288) |= 1u;
}

void __62__UITraitCollection_traitCollectionWithAccessibilityContrast___block_invoke_2()
{
  v6 = xmmword_18A6811C0;
  v7 = unk_18A6811D0;
  v8 = xmmword_18A6811E0;
  v9 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v5 = unk_18A6811B8;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAC0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAC0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 9uLL, 0);
  *(qword_1ED49EAC0 + 288) |= 1u;
}

- (void)setAccessibilityContrast:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.accessibilityContrast = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 9uLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 9uLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setAccessibilityContrast____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithUserInterfaceLevel:(UIUserInterfaceLevel)userInterfaceLevel
{
  if (userInterfaceLevel == UIUserInterfaceLevelUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v16 = v3;
    v17 = v4;
    if (userInterfaceLevel == UIUserInterfaceLevelElevated)
    {
      if (qword_1ED49EAE8 != -1)
      {
        dispatch_once(&qword_1ED49EAE8, &__block_literal_global_309);
      }

      return qword_1ED49EAE0;
    }

    else if (userInterfaceLevel)
    {
      v12 = xmmword_18A6811C0;
      v13 = unk_18A6811D0;
      v14 = xmmword_18A6811E0;
      v15 = -1;
      v9[6] = xmmword_18A681180;
      v9[7] = unk_18A681190;
      v9[8] = xmmword_18A6811A0;
      v10 = unk_18A6811B0;
      memset(&v9[2], 0, 48);
      v9[5] = unk_18A681170;
      v9[0] = _UIBuiltinTraitStorageUnspecified;
      v9[1] = unk_18A681130;
      v11 = userInterfaceLevel;
      v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
      v8 = (v6 + 248);
      v7 = *(v6 + 31);
      if (v7)
      {
      }

      *(v6 + 35) = 0;
      *v8 = 0u;
      *(v6 + 264) = 0u;
      _UITraitTokenSetInsert(v8, 0xAuLL, 0);
      v6[288] |= 1u;
      return v6;
    }

    else
    {
      if (qword_1ED49EAD8 != -1)
      {
        dispatch_once(&qword_1ED49EAD8, &__block_literal_global_305_0);
      }

      return qword_1ED49EAD0;
    }
  }
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceLevel___block_invoke()
{
  v3[10] = xmmword_18A6811C0;
  memset(&v3[11], 255, 32);
  v4 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v3[9] = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAD0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAD0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0xAuLL, 0);
  *(qword_1ED49EAD0 + 288) |= 1u;
}

void __59__UITraitCollection_traitCollectionWithUserInterfaceLevel___block_invoke_2()
{
  v6 = xmmword_18A6811C0;
  v7 = unk_18A6811D0;
  v8 = xmmword_18A6811E0;
  v9 = -1;
  v3[6] = xmmword_18A681180;
  v3[7] = unk_18A681190;
  v3[8] = xmmword_18A6811A0;
  v4 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = unk_18A681130;
  v5 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAE0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAE0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 0xAuLL, 0);
  *(qword_1ED49EAE0 + 288) |= 1u;
}

- (void)setUserInterfaceLevel:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.userInterfaceLevel = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 0xAuLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 0xAuLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setUserInterfaceLevel____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (UITraitCollection)traitCollectionWithTouchLevel:(int64_t)a3
{
  if (a3 == -1)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v24 = v3;
    v25 = v4;
    v20 = xmmword_18A6811C0;
    v21 = unk_18A6811D0;
    v22 = xmmword_18A6811E0;
    v23 = -1;
    v16 = xmmword_18A681180;
    v17 = unk_18A681190;
    v18 = xmmword_18A6811A0;
    v19 = unk_18A6811B0;
    v12 = xmmword_18A681140;
    v13 = unk_18A681150;
    v14 = xmmword_18A681160;
    v15 = unk_18A681170;
    v9 = _UIBuiltinTraitStorageUnspecified;
    v10 = -1;
    v11 = a3;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0xEuLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

+ (UITraitCollection)traitCollectionWithInteractionModel:(unint64_t)a3
{
  if (a3)
  {
    v8[10] = xmmword_18A6811C0;
    memset(&v8[11], 255, 32);
    v9 = -1;
    v8[6] = xmmword_18A681180;
    v8[7] = unk_18A681190;
    v8[8] = xmmword_18A6811A0;
    v8[9] = unk_18A6811B0;
    memset(&v8[3], 0, 32);
    v8[5] = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v8[2] = a3;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 0xFuLL, 0);
    v4[288] |= 1u;
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

+ (UITraitCollection)traitCollectionWithPrimaryInteractionModel:(unint64_t)a3
{
  if (a3)
  {
    v18 = xmmword_18A6811C0;
    v19 = unk_18A6811D0;
    v20 = xmmword_18A6811E0;
    v21 = -1;
    v14 = xmmword_18A681180;
    v15 = unk_18A681190;
    v16 = xmmword_18A6811A0;
    v17 = unk_18A6811B0;
    v9 = 0;
    v11 = unk_18A681150;
    v12 = xmmword_18A681160;
    v13 = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v10 = a3;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 0x10uLL, 0);
    v4[288] |= 1u;
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

+ (UITraitCollection)traitCollectionWithArtworkSubtype:(unint64_t)a3
{
  if (a3)
  {
    v17 = xmmword_18A6811C0;
    v18 = unk_18A6811D0;
    v19 = xmmword_18A6811E0;
    v20 = -1;
    v13 = xmmword_18A681180;
    v14 = unk_18A681190;
    v15 = xmmword_18A6811A0;
    v16 = unk_18A6811B0;
    v8[2] = xmmword_18A681140;
    v10 = unk_18A681158;
    v11 = xmmword_18A681160;
    v12 = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v9 = a3;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 0x11uLL, 0);
    v4[288] |= 1u;
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

+ (id)_traitCollectionWithUserInterfaceRenderingMode:(int64_t)a3
{
  if (a3)
  {
    v9 = -1;
    v11 = unk_18A6811D0;
    v12 = xmmword_18A6811E0;
    v13 = -1;
    v8[6] = xmmword_18A681180;
    v8[7] = unk_18A681190;
    v8[8] = xmmword_18A6811A0;
    v8[9] = unk_18A6811B0;
    memset(&v8[2], 0, 48);
    v8[5] = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v10 = a3;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 0x17uLL, 0);
    v4[288] |= 1u;
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

- (unint64_t)_semanticContext
{
  if (result)
  {
    v1 = result;
    _UIRecordTraitUsage(result, 0x13uLL);
    return *(v1 + 128);
  }

  return result;
}

+ (id)_traitCollectionWithPresentationSemanticContext:(int64_t)a3
{
  if (a3)
  {
    v12 = xmmword_18A6811C0;
    v13 = unk_18A6811D0;
    v14 = xmmword_18A6811E0;
    v15 = -1;
    v8[6] = xmmword_18A681180;
    v8[7] = unk_18A681190;
    v10 = -1;
    v11 = unk_18A6811B0;
    memset(&v8[2], 0, 48);
    v8[5] = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v9 = a3;
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v6 = (v4 + 248);
    v5 = *(v4 + 31);
    if (v5)
    {
    }

    *(v4 + 35) = 0;
    *v6 = 0u;
    *(v4 + 264) = 0u;
    _UITraitTokenSetInsert(v6, 0x14uLL, 0);
    v4[288] |= 1u;
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

+ (id)_traitCollectionWithSplitViewControllerContext:(int64_t)a3
{
  if (a3 == -1)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v17 = v3;
    v18 = v4;
    v13 = xmmword_18A6811C0;
    v14 = unk_18A6811D0;
    v15 = xmmword_18A6811E0;
    v16 = -1;
    v9[6] = xmmword_18A681180;
    v9[7] = unk_18A681190;
    v10 = 0;
    v12 = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = *&qword_18A681130;
    v11 = a3;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0x15uLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

+ (id)_traitCollectionWithFocusSystemState:(int64_t)a3
{
  if (a3 == -1)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v9[10] = xmmword_18A6811C0;
    v10 = unk_18A6811D0;
    v12 = xmmword_18A6811E0;
    v13 = -1;
    v9[6] = xmmword_18A681180;
    v9[7] = unk_18A681190;
    v9[8] = xmmword_18A6811A0;
    v9[9] = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = *&qword_18A681130;
    v11 = a3;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0x18uLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

+ (id)_traitCollectionWithBacklightLuminance:(int64_t)a3
{
  if (a3 == -1)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v9[10] = xmmword_18A6811C0;
    v9[11] = unk_18A6811D0;
    v10 = -1;
    v9[6] = xmmword_18A681180;
    v9[7] = unk_18A681190;
    v9[8] = xmmword_18A6811A0;
    v9[9] = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = *&qword_18A681130;
    v11 = a3;
    v12 = -1;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0x1AuLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

+ (UITraitCollection)traitCollectionWithToolbarItemPresentationSize:(UINSToolbarItemPresentationSize)toolbarItemPresentationSize
{
  if (toolbarItemPresentationSize == UINSToolbarItemPresentationSizeUnspecified)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v9[10] = xmmword_18A6811C0;
    memset(&v9[11], 255, 32);
    v9[6] = xmmword_18A681180;
    v9[7] = unk_18A681190;
    v9[8] = xmmword_18A6811A0;
    v9[9] = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = *&qword_18A681130;
    v10 = toolbarItemPresentationSize;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0xDuLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

- (void)setToolbarItemPresentationSize:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    self->_builtinTraits.toolbarItemPresentationSize = a3;
    if (a3 == -1)
    {
      p_specifiedTraitTokens = &self->_specifiedTraitTokens;

      _UITraitTokenSetRemove(p_specifiedTraitTokens, 0xDuLL, v3);
    }

    else
    {
      v5 = &self->_specifiedTraitTokens;

      _UITraitTokenSetInsert(v5, 0xDuLL, v3);
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &setToolbarItemPresentationSize____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (id)_traitCollectionForSidebarAppearance
{
  objc_opt_self();
  v11 = xmmword_18A6811C0;
  v12 = unk_18A6811D0;
  v13 = xmmword_18A6811E0;
  v14 = -1;
  v6[6] = xmmword_18A681180;
  v7 = unk_18A681190;
  v9 = xmmword_18A6811A0;
  v10 = unk_18A6811B0;
  memset(&v6[2], 0, 48);
  v6[5] = unk_18A681170;
  v6[0] = _UIBuiltinTraitStorageUnspecified;
  v6[1] = *&qword_18A681130;
  v8 = 2;
  v2 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v6 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  v4 = (v2 + 248);
  v3 = *(v2 + 31);
  if (v3)
  {
  }

  *(v2 + 35) = 0;
  *v4 = 0u;
  *(v2 + 264) = 0u;
  _UITraitTokenSetInsert(v4, 0x13uLL, 0);
  v2[288] |= 1u;
  return v2;
}

+ (id)_traitCollectionWithVibrancy:(int64_t)a3
{
  if (a3 == -1)
  {

    return +[UITraitCollection _emptyTraitCollection];
  }

  else
  {
    v11 = v3;
    v12 = v4;
    memset(&v9[11], 255, 32);
    v10 = -1;
    v9[6] = xmmword_18A681180;
    v9[7] = unk_18A681190;
    v9[8] = xmmword_18A6811A0;
    v9[9] = unk_18A6811B0;
    memset(&v9[2], 0, 48);
    v9[5] = unk_18A681170;
    v9[0] = _UIBuiltinTraitStorageUnspecified;
    v9[1] = *&qword_18A681130;
    v9[10] = a3;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v9 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 0x16uLL, 0);
    v5[288] |= 1u;
    return v5;
  }
}

+ (UITraitCollection)traitCollectionWithPreferredContentSizeCategory:(UIContentSizeCategory)preferredContentSizeCategory
{
  v3 = _UIContentSizeCategoryFromStringInternal(preferredContentSizeCategory, v8);
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (qword_1ED49EB18 != -1)
        {
          dispatch_once(&qword_1ED49EB18, &__block_literal_global_343_0);
        }

        return qword_1ED49EB10;
      }

      else if (v3 == 4)
      {
        if (qword_1ED49EB28 != -1)
        {
          dispatch_once(&qword_1ED49EB28, &__block_literal_global_347_0);
        }

        return qword_1ED49EB20;
      }

      else
      {
        if (qword_1ED49EB38 != -1)
        {
          dispatch_once(&qword_1ED49EB38, &__block_literal_global_351_2);
        }

        return qword_1ED49EB30;
      }
    }

    switch(v3)
    {
      case 0:

        return +[UITraitCollection _emptyTraitCollection];
      case 1:
        if (qword_1ED49EAF8 != -1)
        {
          dispatch_once(&qword_1ED49EAF8, &__block_literal_global_335_0);
        }

        return qword_1ED49EAF0;
      case 2:
        if (qword_1ED49EB08 != -1)
        {
          dispatch_once(&qword_1ED49EB08, &__block_literal_global_339_1);
        }

        return qword_1ED49EB00;
    }

LABEL_55:
    v14 = xmmword_18A6811C0;
    v15 = unk_18A6811D0;
    v16 = xmmword_18A6811E0;
    v17 = -1;
    v10 = 0xBFF0000000000000;
    v11 = unk_18A681190;
    v12 = xmmword_18A6811A0;
    v13 = unk_18A6811B0;
    memset(&v8[2], 0, 48);
    v8[5] = unk_18A681170;
    v8[0] = _UIBuiltinTraitStorageUnspecified;
    v8[1] = *&qword_18A681130;
    v9 = v3;
    v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v8 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
    v7 = (v5 + 248);
    v6 = *(v5 + 31);
    if (v6)
    {
    }

    *(v5 + 35) = 0;
    *v7 = 0u;
    *(v5 + 264) = 0u;
    _UITraitTokenSetInsert(v7, 7uLL, 0);
    v5[288] |= 1u;
    return v5;
  }

  if (v3 <= 0x10000)
  {
    switch(v3)
    {
      case 6:
        if (qword_1ED49EB48 != -1)
        {
          dispatch_once(&qword_1ED49EB48, &__block_literal_global_355_1);
        }

        return qword_1ED49EB40;
      case 7:
        if (qword_1ED49EB58 != -1)
        {
          dispatch_once(&qword_1ED49EB58, &__block_literal_global_359);
        }

        return qword_1ED49EB50;
      case 0x10000:
        if (qword_1ED49EB68 != -1)
        {
          dispatch_once(&qword_1ED49EB68, &__block_literal_global_363);
        }

        return qword_1ED49EB60;
    }

    goto LABEL_55;
  }

  if (v3 <= 65538)
  {
    if (v3 == 65537)
    {
      if (qword_1ED49EB78 != -1)
      {
        dispatch_once(&qword_1ED49EB78, &__block_literal_global_367_0);
      }

      return qword_1ED49EB70;
    }

    else
    {
      if (qword_1ED49EB88 != -1)
      {
        dispatch_once(&qword_1ED49EB88, &__block_literal_global_371_0);
      }

      return qword_1ED49EB80;
    }
  }

  if (v3 != 65539)
  {
    if (v3 == 65540)
    {
      if (qword_1ED49EBA8 != -1)
      {
        dispatch_once(&qword_1ED49EBA8, &__block_literal_global_379_0);
      }

      return qword_1ED49EBA0;
    }

    goto LABEL_55;
  }

  if (qword_1ED49EB98 != -1)
  {
    dispatch_once(&qword_1ED49EB98, &__block_literal_global_375_0);
  }

  return qword_1ED49EB90;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 1;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EAF0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EAF0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EAF0 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_2()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 2;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB00 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB00;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB00 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_3()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 3;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB10 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB10;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB10 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_4()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 4;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB20 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB20;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB20 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_5()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 5;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB30 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB30;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB30 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_6()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 6;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB40 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB40;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB40 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_7()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 7;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB50 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB50;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB50 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_8()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 0x10000;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB60 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB60;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB60 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_9()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 65537;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB70 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB70;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB70 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_10()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 65538;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB80 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB80;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB80 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_11()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 65539;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EB90 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EB90;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EB90 + 288) |= 1u;
}

void __69__UITraitCollection_traitCollectionWithPreferredContentSizeCategory___block_invoke_12()
{
  v9 = xmmword_18A6811C0;
  v10 = unk_18A6811D0;
  v11 = xmmword_18A6811E0;
  v12 = -1;
  v5 = 0xBFF0000000000000;
  v6 = unk_18A681190;
  v7 = xmmword_18A6811A0;
  v8 = unk_18A6811B0;
  memset(&v3[2], 0, 48);
  v3[5] = unk_18A681170;
  v3[0] = _UIBuiltinTraitStorageUnspecified;
  v3[1] = *&qword_18A681130;
  v4 = 65540;
  v0 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v3 tintColor:0 clientDefinedTraits:0 environmentWrapper:0];
  qword_1ED49EBA0 = v0;
  v1 = *(v0 + 31);
  if (v1)
  {

    v0 = qword_1ED49EBA0;
  }

  *(v0 + 248) = 0u;
  v2 = v0 + 248;
  *(v2 + 4) = 0;
  *(v2 + 1) = 0u;
  _UITraitTokenSetInsert(v2, 7uLL, 0);
  *(qword_1ED49EBA0 + 288) |= 1u;
}

+ (UITraitCollection)traitCollectionWithTypesettingLanguage:(NSString *)language
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithObject:language forTrait:v4];
}

- (void)setTypesettingLanguage:(id)a3
{
  v4 = [a3 copy];
  v5 = objc_opt_self();

  [(UITraitCollection *)self setObject:v4 forTrait:v5];
}

+ (id)_traitCollectionWithTypesettingLanguageAwareLineHeightRatio:(double)a3
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithCGFloatValue:v4 forTrait:a3];
}

- (void)_setTypesettingLanguageAwareLineHeightRatio:(double)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setCGFloatValue:v5 forTrait:a3];
}

+ (uint64_t)_traitCollectionWithTintColor:(uint64_t)a1
{
  objc_opt_self();
  if (a2)
  {
    os_unfair_lock_lock(&stru_1ED49E8CC);
    v3 = qword_1ED49EBB0;
    if (!qword_1ED49EBB0)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:2];
      qword_1ED49EBB0 = v3;
    }

    v4 = [v3 objectForKey:a2];
    if (!v4)
    {
      v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:a2 tintColor:0 clientDefinedTraits:0 environmentWrapper:?];
      [qword_1ED49EBB0 setObject:v4 forKey:a2];
      v5 = v4;
    }

    os_unfair_lock_unlock(&stru_1ED49E8CC);
    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

- (char)_traitCollectionByReplacingTintColor:(char *)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 30);
    if (v4 == a2 || a2 && v4 && [v4 isEqual:a2])
    {
      v5 = v3;
    }

    else
    {
      v5 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:a2 tintColor:*(v3 + 224) clientDefinedTraits:*(v3 + 232) environmentWrapper:?];
      _UITraitCollectionWasCopied(v3, v5);
      v6 = *(v5 + 31);
      if (v6)
      {
      }

      v9 = *(v3 + 248);
      v8 = v3 + 248;
      v7 = v9;
      if (v9)
      {
        v10 = v7;
      }

      v11 = *v8;
      v12 = *(v8 + 16);
      *(v5 + 35) = *(v8 + 32);
      *(v5 + 248) = v11;
      *(v5 + 264) = v12;
      v5[288] |= 1u;
    }

    return v5;
  }

  return result;
}

- (void)_setTintColor:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    tintColor = self->_tintColor;
    if (tintColor != a3)
    {

      self->_tintColor = a3;
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_setTintColor____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

+ (id)_traitCollectionWithEnvironmentWrapper:(id)a3
{
  if (a3)
  {
    v4 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:0 tintColor:0 clientDefinedTraits:a3 environmentWrapper:?];

    return v4;
  }

  else
  {

    return +[UITraitCollection _emptyTraitCollection];
  }
}

- (void)_setEnvironmentWrapper:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    environmentWrapper = self->_environmentWrapper;
    if (environmentWrapper != a3)
    {

      self->_environmentWrapper = a3;
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_setEnvironmentWrapper____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = NSStringFromSelector(a2);
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "-%@ can only be called from inside a UITraitMutations block", buf, 0xCu);
    }
  }
}

void __75__UITraitCollection__traitCollectionByReplacingValue_forTraitWithMetadata___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = v8;
  v14 = *(a1 + 80);
  if (v6 != [(UITraitCollection *)v5 _valueForTraitWithMetadata:?])
  {
    v9 = (*(a3 + 16))(a3);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = v11;
    [(UITraitCollection *)v9 _setValue:v10 forTraitWithMetadata:&v12, *(a1 + 80)];
  }
}

+ (id)_traitCollectionWithValue:(id)a3 forTraitNamed:(id)a4
{
  v4 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v10[10] = xmmword_18A6811C0;
  memset(&v10[11], 255, 32);
  v11 = -1;
  v10[6] = xmmword_18A681180;
  v10[7] = unk_18A681190;
  v10[8] = xmmword_18A6811A0;
  v10[9] = unk_18A6811B0;
  memset(&v10[2], 0, 48);
  v10[5] = unk_18A681170;
  v10[0] = _UIBuiltinTraitStorageUnspecified;
  v10[1] = *&qword_18A681130;
  if (@"_UITraitNameTintColor" == a4)
  {
    v7 = 0;
    v6 = a3;
LABEL_9:
    v4 = 0;
    return [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v10 tintColor:v6 clientDefinedTraits:v7 environmentWrapper:v4];
  }

  if (@"_UITraitNameEnvironmentWrapper" == a4)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__UITraitCollection__traitCollectionWithValue_forTraitNamed___block_invoke;
  v9[3] = &unk_1E710D5D0;
  v9[4] = a3;
  v9[5] = a2;
  if ((_UIBuiltinTraitStoragePerformActionWithValueForTraitNamed(v10, a4, v9) & 1) == 0)
  {
    v12 = a4;
    v13[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  v4 = 0;
LABEL_7:
  v7 = 0;
  return [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v10 tintColor:v6 clientDefinedTraits:v7 environmentWrapper:v4];
}

uint64_t __61__UITraitCollection__traitCollectionWithValue_forTraitNamed___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ invoked with non-NSNumber argument (%@) for built-in trait", NSStringFromSelector(*(a1 + 40)), *(a1 + 32)}];
  }

  return *(a1 + 32);
}

+ (void)_setBackgroundThreadFallbackTraitCollection:(uint64_t)a1
{
  objc_opt_self();
  os_unfair_lock_lock(&_backgroundThreadFallbackTraitCollectionLock);

  _backgroundThreadFallbackTraitCollection = a2;

  os_unfair_lock_unlock(&_backgroundThreadFallbackTraitCollectionLock);
}

+ (char)_currentTraitCollectionWithFallback:(int)a3 markFallback:
{
  objc_opt_self();
  TraitCollectionTSD = GetTraitCollectionTSD();
  v6 = *TraitCollectionTSD;
  if (*TraitCollectionTSD)
  {
    v7 = TraitCollectionTSD;
    if (TraitCollectionTSD[1])
    {
LABEL_74:
      v28 = v6;
      return v6;
    }

    v8 = *(v6 + 168);
    v9 = *(v6 + 184);
    v10 = *(v6 + 200);
    v43 = *(v6 + 27);
    v11 = *(v6 + 24);
    v30 = *(v6 + 8);
    v31 = v11;
    v12 = *(v6 + 40);
    v13 = *(v6 + 56);
    v14 = *(v6 + 88);
    v34 = *(v6 + 72);
    v35 = v14;
    v32 = v12;
    v33 = v13;
    v15 = *(v6 + 104);
    v16 = *(v6 + 120);
    v17 = *(v6 + 152);
    v38 = *(v6 + 136);
    v39 = v17;
    v36 = v15;
    v37 = v16;
    v41 = v9;
    v42 = v10;
    v40 = v8;
    if (v30 == -1)
    {
      v18 = +[UITraitCollection _fallbackTraitCollection];
      if (v18 && *(v18 + 1) != -1)
      {
        *&v30 = v18[1];
        v19 = 1;
LABEL_6:
        if (*(&v30 + 1) == 0.0)
        {
          if (!v18)
          {
            v18 = +[UITraitCollection _fallbackTraitCollection];
            if (!v18)
            {
              if (v31 != -1)
              {
                v18 = 0;
                goto LABEL_30;
              }

              goto LABEL_27;
            }
          }

          if (v18[2] != 0.0)
          {
            *(&v30 + 1) = v18[2];
            v19 = 1;
          }
        }

        if (v31 != -1)
        {
          goto LABEL_30;
        }

        if (v18)
        {
LABEL_28:
          if (*(v18 + 3) != -1)
          {
            *&v31 = v18[3];
            v19 = 1;
          }

LABEL_30:
          v25 = *(&v34 + 1);
          if (!*(&v34 + 1))
          {
            if (!v18)
            {
              v18 = +[UITraitCollection _fallbackTraitCollection];
              if (!v18)
              {
                if (v35 != -1)
                {
                  v25 = 0;
                  v18 = 0;
                  goto LABEL_40;
                }

                v25 = 0;
                goto LABEL_37;
              }
            }

            v25 = *(v18 + 10);
            if (v25)
            {
              *(&v34 + 1) = v18[10];
              v19 = 1;
            }
          }

          if (v35 != -1)
          {
            goto LABEL_40;
          }

          if (v18)
          {
LABEL_38:
            if (*(v18 + 11) != -1)
            {
              *&v35 = v18[11];
              v19 = 1;
            }

LABEL_40:
            if (!v36)
            {
              if (!v18)
              {
                v18 = +[UITraitCollection _fallbackTraitCollection];
                if (!v18)
                {
                  if (v37 != -1)
                  {
                    v18 = 0;
                    goto LABEL_50;
                  }

                  goto LABEL_47;
                }
              }

              if (*(v18 + 13))
              {
                *&v36 = v18[13];
                v19 = 1;
              }
            }

            if (v37 != -1)
            {
              goto LABEL_50;
            }

            if (v18)
            {
LABEL_48:
              if (*(v18 + 15) != -1)
              {
                *&v37 = v18[15];
                v19 = 1;
              }

LABEL_50:
              if (v39 == -1)
              {
                if (!v18)
                {
                  v18 = +[UITraitCollection _fallbackTraitCollection];
                  if (!v18)
                  {
                    if (*(&v39 + 1) != -1)
                    {
                      v18 = 0;
                      goto LABEL_60;
                    }

                    goto LABEL_57;
                  }
                }

                if (*(v18 + 19) != -1)
                {
                  *&v39 = v18[19];
                  v19 = 1;
                }
              }

              if (*(&v39 + 1) != -1)
              {
                goto LABEL_60;
              }

              if (v18)
              {
LABEL_58:
                if (*(v18 + 20) != -1)
                {
                  *(&v39 + 1) = v18[20];
                  v19 = 1;
                }

LABEL_60:
                if (v40 == -1 && (v18 || (v18 = +[UITraitCollection _fallbackTraitCollection]) != 0) && *(v18 + 21) != -1)
                {
                  *&v40 = v18[21];
                  v19 = 1;
                }

                if (v25 == 1 || (dyld_program_sdk_at_least() & 1) != 0)
                {
                  if ((v19 & 1) == 0)
                  {
LABEL_73:
                    *(v7 + 8) = 1;
                    goto LABEL_74;
                  }
                }

                else
                {
                  *(&v34 + 1) = 1;
                }

                v26 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:*(v6 + 30) tintColor:*(v6 + 28) clientDefinedTraits:*(v6 + 29) environmentWrapper:?];
                _UITraitCollectionWasCopied(v6, v26);
                v27 = v26;
                if (v6 != v27)
                {

                  *v7 = v27;
                }

                v6 = v27;
                goto LABEL_73;
              }

LABEL_57:
              v18 = +[UITraitCollection _fallbackTraitCollection];
              if (!v18)
              {
                goto LABEL_60;
              }

              goto LABEL_58;
            }

LABEL_47:
            v18 = +[UITraitCollection _fallbackTraitCollection];
            if (!v18)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

LABEL_37:
          v18 = +[UITraitCollection _fallbackTraitCollection];
          if (!v18)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

LABEL_27:
        v18 = +[UITraitCollection _fallbackTraitCollection];
        if (!v18)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v20 = +[UITraitCollection _fallbackTraitCollection];
  v21 = v20;
  if (!a3)
  {
    v24 = v20;
    v6 = v21;
    return v6;
  }

  if (v20)
  {
    v6 = [[UITraitCollection alloc] _initWithBuiltinTraitStorage:v20[30] tintColor:v20[28] clientDefinedTraits:v20[29] environmentWrapper:?];
    _UITraitCollectionWasCopied(v21, v6);
    v22 = *(v6 + 31);
    if (v22)
    {
    }

    *(v6 + 31) = [*(v21 + 248) mutableCopy];
    v23 = *(v21 + 272);
    *(v6 + 16) = *(v21 + 256);
    *(v6 + 17) = v23;
    v6[288] |= 5u;
  }

  else
  {
LABEL_20:
    v6 = 0;
  }

  return v6;
}

+ (void)setCurrentTraitCollection:(UITraitCollection *)currentTraitCollection
{
  TraitCollectionTSD = GetTraitCollectionTSD();
  if (*TraitCollectionTSD != currentTraitCollection)
  {
    v5 = TraitCollectionTSD;

    if (!currentTraitCollection || (*&currentTraitCollection->_flags & 4) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = currentTraitCollection;
    }

    *v5 = v6;
    *(v5 + 8) = 0;
  }
}

+ (uint64_t)_performWithCurrentTraitCollection:(uint64_t)a3 usingBlock:
{
  v5 = objc_opt_self();
  objc_opt_self();
  v6 = [UITraitCollection _currentTraitCollectionWithFallback:0 markFallback:?];
  if (a2)
  {
    [v5 _setCurrentTraitCollection:a2];
  }

  result = (*(a3 + 16))(a3);
  if (a2)
  {
    return [v5 _setCurrentTraitCollection:v6];
  }

  return result;
}

- (BOOL)hasDifferentColorAppearanceComparedToTraitCollection:(UITraitCollection *)traitCollection
{
  if (self == traitCollection)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (!traitCollection)
  {
    goto LABEL_13;
  }

  LODWORD(v5) = dyld_program_sdk_at_least();
  if (!v5)
  {
    return v5;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v6 = [(UITraitCollection *)self _tintColor];
    v5 = [(UITraitCollection *)traitCollection _tintColor];
    if (v6 != v5)
    {
      v7 = v5;
      LOBYTE(v5) = 1;
      if (!v6 || !v7)
      {
        return v5;
      }

      if (![(UIColor *)v6 isEqual:?])
      {
LABEL_13:
        LOBYTE(v5) = 1;
        return v5;
      }
    }
  }

  LOBYTE(v5) = _colorAppearanceTraitChanged(self, traitCollection);
  return v5;
}

- (void)_enumerateThemeKeysForLookup:(void *)result
{
  v46 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = result[1];
  v5 = result[19];
  v6 = result[3];
  v41 = result[10];
  if (v41 != 2)
  {
    v44 = 0;
    v45 = 0;
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v7 = result[20] == 1;
  v44 = v7;
  v45 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = 2;
LABEL_8:
  v38 = v8;
  v34 = v5;
  v9 = v5 == 1;
  v10 = objc_opt_self();
  os_unfair_lock_lock(&_UITraitLock);
  v11 = _UITraitTokenForTraitLocked(3, v10);
  os_unfair_lock_unlock(&_UITraitLock);
  v12 = [v3 _valueForNSIntegerTraitToken:v11];
  v31 = v4;
  v39 = v9 << 6;
  v40 = (4 * v4 + 4) & 0x3C;
  v36 = v6;
  v42 = (v6 == 1) << 7;
  v32 = 1;
LABEL_9:
  v33 = 1;
  v13 = v41;
LABEL_10:
  if (v13 == 1000)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 & 3 | v40;
  v35 = 1;
  v16 = v39;
LABEL_14:
  v17 = v15 | v16;
  v18 = 1;
  v19 = v42;
LABEL_15:
  v37 = v18;
  v20 = 0;
  v21 = v17 | v19;
LABEL_16:
  v22 = *(&v44 + v20) << 8;
  if (v14 != 2)
  {
    v22 = 0;
  }

  v23 = v21 | v22;
  v24 = 1;
  v25 = (v12 == 1) << 9;
  while (1)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23 | v25];
    v43 = 0;
    result = (*(a2 + 16))(a2, v26, &v43);
    if (v43)
    {
      return result;
    }

    v25 = 0;
    v27 = (v12 != 1) | ~v24;
    v24 = 0;
    if (v27)
    {
      if (++v20 != v38)
      {
        goto LABEL_16;
      }

      v19 = 0;
      v18 = 0;
      if (((v36 != 0) & v37) != 0)
      {
        goto LABEL_15;
      }

      v16 = 0;
      v28 = (v34 == 1) & v35;
      v35 = 0;
      v15 = v14 & 3 | v40;
      if (v28)
      {
        goto LABEL_14;
      }

      v13 = 0;
      v29 = (v41 != 0) & v33;
      v33 = 0;
      if ((v29 & 1) == 0)
      {
        v40 = 0;
        v30 = (v31 != -1) & v32;
        v32 = 0;
        if (v30)
        {
          goto LABEL_9;
        }

        return result;
      }

      goto LABEL_10;
    }
  }
}

- (void)_enumerateThemeAppearanceNamesForLookup:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result userInterfaceStyle];
    v5 = [v3 accessibilityContrast];
    v16 = 1;
    v15 = v4;
LABEL_3:
    v6 = 1;
    v7 = v5 == 1;
    while (1)
    {
      v8 = !v7;
      v9 = @"UIAppearanceLight";
      if (v8)
      {
        v10 = @"UIAppearanceDark";
      }

      else
      {
        v9 = @"UIAppearanceHighContrastLight";
        v10 = @"UIAppearanceHighContrastDark";
      }

      if (v8)
      {
        v11 = @"UIAppearanceAny";
      }

      else
      {
        v11 = @"UIAppearanceHighContrastAny";
      }

      if (v4 != 2)
      {
        v10 = v11;
      }

      v12 = v4 == 1 ? v9 : v10;
      v17 = 0;
      result = (*(a2 + 16))(a2, v12, &v17);
      if (v17)
      {
        break;
      }

      v7 = 0;
      v13 = (v5 != 1) | ~v6;
      v6 = 0;
      if (v13)
      {
        v4 = 0;
        v14 = (v15 != 0) & v16;
        v16 = 0;
        if (v14)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (BOOL)_isEqualToTraitCollectionForResolvingImage:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    else
    {
      return *(a1 + 16) == *(a2 + 16) && *(a1 + 8) == *(a2 + 8) && *(a1 + 80) == *(a2 + 80) && *(a1 + 24) == *(a2 + 24) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 88) == *(a2 + 88) && *(a1 + 120) == *(a2 + 120) && *(a1 + 56) == *(a2 + 56) && *(a1 + 152) == *(a2 + 152) && *(a1 + 104) == *(a2 + 104);
    }
  }

  return v2;
}

+ (UITraitCollection)traitCollectionWithImageDynamicRange:(UIImageDynamicRange)imageDynamicRange
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithNSIntegerValue:imageDynamicRange forTrait:v4];
}

- (UIImageDynamicRange)imageDynamicRange
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

- (void)setImageDynamicRange:(int64_t)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setNSIntegerValue:a3 forTrait:v5];
}

+ (UITraitCollection)traitCollectionWithSceneCaptureState:(UISceneCaptureState)sceneCaptureState
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithNSIntegerValue:sceneCaptureState forTrait:v4];
}

- (UISceneCaptureState)sceneCaptureState
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

- (void)setSceneCaptureState:(int64_t)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setNSIntegerValue:a3 forTrait:v5];
}

+ (UITraitCollection)traitCollectionWithListEnvironment:(int64_t)a3
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];
}

- (void)setListEnvironment:(int64_t)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setNSIntegerValue:a3 forTrait:v5];
}

+ (UITraitCollection)traitCollectionWithTabAccessoryEnvironment:(int64_t)a3
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];
}

- (int64_t)tabAccessoryEnvironment
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

- (void)setTabAccessoryEnvironment:(int64_t)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setNSIntegerValue:a3 forTrait:v5];
}

- (int64_t)splitViewControllerLayoutEnvironment
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

- (void)setSplitViewControllerLayoutEnvironment:(int64_t)a3
{
  v5 = objc_opt_self();

  [(UITraitCollection *)self setNSIntegerValue:a3 forTrait:v5];
}

- (int64_t)hdrHeadroomUsageLimit
{
  v3 = objc_opt_self();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

+ (UITraitCollection)traitCollectionWithHDRHeadroomUsageLimit:(int64_t)a3
{
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];
}

- (uint64_t)_resolvesNaturalAlignmentWithBaseWritingDirectionWithDefaultValue:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 objectForTrait:objc_opt_self()];
  if (!v3)
  {
    return a2;
  }

  return [v3 BOOLValue];
}

- (void)setResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v5 = objc_opt_self();

  [(UITraitCollection *)self setObject:v4 forTrait:v5];
}

+ (UITraitCollection)traitCollectionWithResolvesNaturalAlignmentWithBaseWritingDirection:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = objc_opt_self();

  return [UITraitCollection traitCollectionWithObject:v3 forTrait:v4];
}

+ (uint64_t)_performWithFallbackEnvironment:(uint64_t)a3 block:
{
  objc_opt_self();
  v5 = _UISetCurrentFallbackEnvironment(a2);
  (*(a3 + 16))(a3);

  return _UIRestorePreviousFallbackEnvironment(v5);
}

+ (id)_traitCollectionWithInterfaceProtectionState:(int64_t)a3
{
  v4 = objc_opt_class();

  return [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];
}

- (int64_t)_interfaceProtectionState
{
  v3 = objc_opt_class();

  return [(UITraitCollection *)self valueForNSIntegerTrait:v3];
}

+ (id)_traitCollectionWithGlassElevationLevel:(int64_t)a3
{
  v4 = objc_opt_self();
  v5 = [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];

  return v5;
}

- (id)_systemIconAppearance
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_self();
    v1 = [v1 objectForTrait:v2];
  }

  return v1;
}

+ (id)_traitCollectionWithSystemIconAppearance:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_self();
  v4 = [UITraitCollection traitCollectionWithObject:v2 forTrait:v3];

  return v4;
}

+ (id)_traitCollectionWithHeadroomUsage:(int64_t)a3
{
  v4 = objc_opt_self();
  v5 = [UITraitCollection traitCollectionWithNSIntegerValue:a3 forTrait:v4];

  return v5;
}

@end