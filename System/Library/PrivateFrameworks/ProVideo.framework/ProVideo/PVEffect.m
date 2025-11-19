@interface PVEffect
+ (BOOL)effectIDIsNone:(id)a3;
+ (BOOL)effectIDIsRegistered:(id)a3;
+ (BOOL)isAllCapsFromAttributes:(id)a3;
+ (BOOL)isVideoForEffectID:(id)a3;
+ (Class)classForEffectID:(id)a3;
+ (double)baselineOffsetFromAttributedString:(id)a3;
+ (double)textHeightFromAttributedString:(id)a3 defaultAttributes:(id)a4 scale:(double)a5;
+ (double)xOffsetForTextTrackingFromAttributedString:(id)a3;
+ (id)_effectRegistry;
+ (id)_effectRegistryForLookup;
+ (id)_registeredEffectClasses;
+ (id)_registryEntryForEffectID:(id)a3;
+ (id)allRegisteredEffectIDs;
+ (id)attributeForName:(id)a3 fromAttributedString:(id)a4 defaultAttributes:(id)a5;
+ (id)categoryForEffectID:(id)a3;
+ (id)defaultVideoTransitionEffectID;
+ (id)descriptionForEffectID:(id)a3;
+ (id)displayNameForEffectID:(id)a3;
+ (id)displayNameForEffectType:(id)a3;
+ (id)effectTypeForEffectID:(id)a3;
+ (id)firstRegisteredEffectIDContainingSubstring:(id)a3;
+ (id)newEffectWithData:(id)a3;
+ (id)newEffectWithID:(id)a3;
+ (id)newEffectWithURL:(id)a3;
+ (id)propertiesForEffect:(id)a3;
+ (id)registeredEffectIDsForClass:(Class)a3;
+ (id)registeredEffectIDsForEffectType:(id)a3;
+ (id)registeredEffectIDsForEffectTypes:(id)a3;
+ (id)shadowFromAttributedString:(id)a3 defaultAttributes:(id)a4;
+ (id)themeForEffectID:(id)a3;
+ (id)userVisibleEffectIDs;
+ (int64_t)verticalAlignmentFromAttributedString:(id)a3 defaultAttributes:(id)a4;
+ (void)_registerEffectsInBundle:(id)a3 atPath:(id)a4;
+ (void)clearPreviewStats;
+ (void)deferEffectRegistrationForClass:(Class)a3;
+ (void)ensureEffectsRegistered;
+ (void)initEffectRegistryWithHostDelegate:(id)a3;
+ (void)modifyAttributedStringByAdjustingFont:(id)a3 toFitSize:(CGSize)a4;
+ (void)modifyAttributedStringByAdjustingFontSize:(id)a3 scale:(double)a4;
+ (void)modifyAttributedStringByAdjustingForNegativeLineSpacing:(id)a3 scale:(double)a4;
+ (void)modifyAttributedStringByAdjustingKerning:(id)a3 attributes:(id)a4 range:(_NSRange)a5 scale:(double)a6;
+ (void)modifyAttributedStringByAdjustingOutline:(id)a3 attributes:(id)a4 range:(_NSRange)a5 scale:(double)a6;
+ (void)modifyAttributedStringByAdjustingShadow:(id)a3 effectTransform:(id)a4;
+ (void)modifyAttributedStringByAdjustingShadow:(id)a3 scale:(double)a4 rotation:(double)a5;
+ (void)modifyAttributedStringByApplyingSubstituteFont:(id)a3 attributes:(id)a4 range:(_NSRange)a5;
+ (void)registerEffectClass:(Class)a3 forEffectID:(id)a4 withProperties:(id)a5;
+ (void)willTerminate:(id)a3;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)a3;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)effectRange;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)a3;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)applyTimedPropertiesForTime:(id *)a3;
- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7;
- (BOOL)isHidden;
- (BOOL)isVisible;
- (BOOL)loadEffect;
- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:;
- (CGPoint)pointForKey:(id)a3 defaultValue:(CGPoint)a4;
- (CGRect)outputROI;
- (CGRect)playableRectInView:(CGSize)a3;
- (CGRect)playableRectInView_NoLock:(CGSize)a3 properties:(id)a4;
- (CGRect)rectForKey:(id)a3 defaultValue:(CGRect)a4;
- (CGSize)outputSize;
- (CGSize)sizeForKey:(id)a3 defaultValue:(CGSize)a4;
- (NSDictionary)inspectableProperties;
- (PVEffect)initWithCoder:(id)a3;
- (PVEffect)initWithContentID:(id)a3 andDictionary:(id)a4;
- (PVEffect)initWithEffectID:(id)a3;
- (__n128)getScale;
- (__n128)matrixFloat4x4ForKey:(void *)a1;
- (double)convertPointFromView:(uint64_t)a1@<X8> atTime:viewSize:viewOrigin:;
- (double)doubleForKey:(id)a3 defaultValue:(double)a4;
- (double)outputAspectRatio;
- (double)playableAspectRatio;
- (double)playableAspectRatio_NoLock:(id)a3;
- (double)playableScaleInView:(CGSize)a3;
- (double)playableScaleInView_NoLock:(CGSize)a3 properties:(id)a4;
- (float)proxyRenderScale;
- (id)attributedStringForKey:(id)a3 defaultValue:(id)a4;
- (id)contentBundle;
- (id)contentPropertyForKey:(id)a3;
- (id)contentRegistryProperties;
- (id)contentRegistryPropertyForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDisplayName;
- (id)description;
- (id)descriptionOfInspectableProperties;
- (id)effectDescription;
- (id)inspectablePropertyForKey:(id)a3;
- (id)stringForKey:(id)a3 defaultValue:(id)a4;
- (id)userContextForTimedPropertiesDelegate:(id)a3;
- (int)playableAspectRatioPreservationMode;
- (int)playableAspectRatioPreservationMode_NoLock:(id)a3;
- (void)_configureComponents;
- (void)_copyWithZone:(_NSZone *)a3 into:(id)a4;
- (void)_decodeFromCoder:(id)a3 into:(id)a4;
- (void)_postInit:(id)a3;
- (void)addEntriesToInspectableProperties:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadEffectOnQueue:(id)a3 completion:(id)a4;
- (void)loadResourcesOnQueue:(id)a3 completion:(id)a4;
- (void)matrixDouble4x4ForKey:(void *)a1@<X0>;
- (void)releaseEffect;
- (void)runWithInspectableProperties:(id)a3;
- (void)runWithInspectableProperties_NoLock:(id)a3;
- (void)setBool:(BOOL)a3 forKey:(id)a4;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setEffectRange:(id *)a3;
- (void)setHidden:(BOOL)a3;
- (void)setInspectableProperties:(id)a3;
- (void)setInspectableProperty:(id)a3 forKey:(id)a4;
- (void)setMatrixDouble4x4:(__int128 *)a3 forKey:(void *)a4;
- (void)setMatrixFloat4x4:(double)a3 forKey:(double)a4;
- (void)setPlayableAspectRatio:(double)a3;
- (void)setPlayableAspectRatioPreservationMode:(int)a3;
- (void)setPoint:(CGPoint)a3 forKey:(id)a4;
- (void)setRect:(CGRect)a3 forKey:(id)a4;
- (void)setSize:(CGSize)a3 forKey:(id)a4;
@end

@implementation PVEffect

- (double)playableAspectRatio
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __52__PVEffect_PlayableAspectRatio__playableAspectRatio__block_invoke;
  v4[3] = &unk_279AA4D88;
  v4[4] = self;
  v4[5] = &v5;
  [(PVEffect *)self runWithInspectableProperties:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __52__PVEffect_PlayableAspectRatio__playableAspectRatio__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) playableAspectRatio_NoLock:?];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)setPlayableAspectRatio:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [PVEffect setInspectableProperty:"setInspectableProperty:forKey:" forKey:?];
}

- (int)playableAspectRatioPreservationMode
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __68__PVEffect_PlayableAspectRatio__playableAspectRatioPreservationMode__block_invoke;
  v4[3] = &unk_279AA4D88;
  v4[4] = self;
  v4[5] = &v5;
  [(PVEffect *)self runWithInspectableProperties:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __68__PVEffect_PlayableAspectRatio__playableAspectRatioPreservationMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) playableAspectRatioPreservationMode_NoLock:?];
}

- (void)setPlayableAspectRatioPreservationMode:(int)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3];
  [PVEffect setInspectableProperty:"setInspectableProperty:forKey:" forKey:?];
}

- (CGRect)playableRectInView:(CGSize)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = &unk_260C3B1FE;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = *"";
  v11[2] = __52__PVEffect_PlayableAspectRatio__playableRectInView___block_invoke;
  v11[3] = &unk_279AA4DB0;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  [(PVEffect *)self runWithInspectableProperties:v11];
  v3 = v14[6];
  v4 = v14[7];
  v5 = v14[8];
  v6 = v14[9];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

void __52__PVEffect_PlayableAspectRatio__playableRectInView___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) playableRectInView_NoLock:*(a1 + 48) properties:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v3[6] = v4;
  v3[7] = v5;
  v3[8] = v6;
  v3[9] = v7;
}

- (double)playableScaleInView:(CGSize)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __53__PVEffect_PlayableAspectRatio__playableScaleInView___block_invoke;
  v5[3] = &unk_279AA4DB0;
  v5[4] = self;
  v5[5] = &v7;
  v6 = a3;
  [(PVEffect *)self runWithInspectableProperties:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __53__PVEffect_PlayableAspectRatio__playableScaleInView___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) playableScaleInView_NoLock:*(a1 + 48) properties:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)playableAspectRatio_NoLock:(id)a3
{
  v4 = a3;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v5 = [v4 objectForKeyedSubscript:@"kPVPlayableAspectRatioKey"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
  }

  else
  {
    [objc_opt_class() defaultPlayableAspectRatio];
  }

  v8 = v7;

  return v8;
}

- (int)playableAspectRatioPreservationMode_NoLock:(id)a3
{
  v4 = a3;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v5 = [v4 objectForKeyedSubscript:@"kPVPlayableAspectRatioPreservationModeKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = [objc_opt_class() defaultPlayableAspectRatioPreservationMode];
  }

  v8 = v7;

  return v8;
}

- (CGRect)playableRectInView_NoLock:(CGSize)a3 properties:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  [(PVEffect *)self playableAspectRatio_NoLock:v7];
  v9 = v8;
  v10 = [(PVEffect *)self playableAspectRatioPreservationMode_NoLock:v7];
  v11 = 1.0;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      if (v10 == 13)
      {
        v11 = width / v9;
        v9 = width;
        goto LABEL_19;
      }

      if (v10 != 14)
      {
        goto LABEL_19;
      }

      v9 = height * v9;
LABEL_14:
      v11 = height;
      goto LABEL_19;
    }

LABEL_13:
    v9 = width;
    goto LABEL_14;
  }

  switch(v10)
  {
    case 0:
      goto LABEL_13;
    case 1:
      if (width <= height)
      {
        v11 = height;
        if (height * v9 < width)
        {
          v11 = width / v9;
        }
      }

      else
      {
        v11 = width / v9;
        if (width / v9 < height)
        {
          v11 = height;
        }
      }

      goto LABEL_8;
    case 2:
      if (width / v9 <= height)
      {
        v11 = width / v9;
      }

      else
      {
        v11 = height;
      }

LABEL_8:
      v9 = v9 * v11;
      break;
  }

LABEL_19:

  v12 = (width - v9) * 0.5 + 0.0;
  v13 = (height - v11) * 0.5 + 0.0;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)playableScaleInView_NoLock:(CGSize)a3 properties:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  [(PVEffect *)self playableAspectRatio_NoLock:v7];
  v9 = v8;
  v10 = [(PVEffect *)self playableAspectRatioPreservationMode_NoLock:v7];
  v11 = 1.0;
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = 1.0;
  if (fabs(v9) < 0.0000001)
  {
    goto LABEL_15;
  }

  v12 = height * v9;
  if (v10 > 2)
  {
    if (v10 == 3 || v10 == 13)
    {
      v9 = width;
    }

    else if (v10 == 14)
    {
      v9 = height * v9;
    }

    goto LABEL_14;
  }

  if (v10 == 1)
  {
    if (width <= height)
    {
      v13 = height;
      if (v12 < width)
      {
        v13 = width / v9;
      }
    }

    else
    {
      v13 = width / v9;
      if (width / v9 < height)
      {
        v13 = height;
      }
    }

    goto LABEL_12;
  }

  if (v10 == 2)
  {
    v13 = width / v9;
    if (width / v9 > height)
    {
      v13 = height;
    }

LABEL_12:
    v9 = v9 * v13;
  }

LABEL_14:
  v11 = v9 / v12;
LABEL_15:
  if (fabs(v11) >= 0.0000001)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1.0;
  }

  return v14;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)a3
{
  v4 = MEMORY[0x277CC08C8];
  v5 = *(MEMORY[0x277CC08C8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *(v4 + 32);
  return self;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)a3
{
  v4 = MEMORY[0x277CC08C8];
  v5 = *(MEMORY[0x277CC08C8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *(v4 + 32);
  return self;
}

- (CGPoint)convertPointToView:(id *)a3 atTime:(BOOL)a4 forcePosterFrame:(BOOL)a5 includeTransformAnimation:(BOOL)a6 includePlayableAspectScale:(CGSize)a7 viewSize:(int)a8 viewOrigin:
{
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  result.y = v9;
  result.x = v8;
  return result;
}

- (double)convertPointFromView:(uint64_t)a1@<X8> atTime:viewSize:viewOrigin:
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

- (__n128)getScale
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

- (BOOL)bounds:(CGRect *)a3 atTime:(id *)a4 forcePosterFrame:(BOOL)a5 includeDropShadow:(BOOL)a6 includeMasks:(BOOL)a7
{
  if (a3)
  {
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    a3->origin = *MEMORY[0x277CBF3A0];
    a3->size = v7;
  }

  return a3 != 0;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setBool:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:v4];
  [(PVEffect *)self setInspectableProperty:v8 forKey:v7];
}

- (double)doubleForKey:(id)a3 defaultValue:(double)a4
{
  v5 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    a4 = v7;
  }

  return a4;
}

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a3];
  [(PVEffect *)self setInspectableProperty:v8 forKey:v7];
}

- (CGPoint)pointForKey:(id)a3 defaultValue:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v7 = v6;
  if (v6)
  {
    [v6 CGPointValue];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)setPoint:(CGPoint)a3 forKey:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = MEMORY[0x277CCAE60];
  v8 = a4;
  v9 = [v7 valueWithCGPoint:{x, y}];
  [(PVEffect *)self setInspectableProperty:v9 forKey:v8];
}

- (CGSize)sizeForKey:(id)a3 defaultValue:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v7 = v6;
  if (v6)
  {
    [v6 CGSizeValue];
    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setSize:(CGSize)a3 forKey:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277CCAE60];
  v8 = a4;
  v9 = [v7 valueWithCGSize:{width, height}];
  [(PVEffect *)self setInspectableProperty:v9 forKey:v8];
}

- (CGRect)rectForKey:(id)a3 defaultValue:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v9 = v8;
  if (v8)
  {
    [v8 CGRectValue];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setRect:(CGRect)a3 forKey:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = MEMORY[0x277CCAE60];
  v10 = a4;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(PVEffect *)self setInspectableProperty:v11 forKey:v10];
}

- (void)matrixDouble4x4ForKey:(void *)a1@<X0>
{
  v3 = [a1 transformObjectForKey:?];
  if (v3)
  {
    v9 = v3;
    [v3 SIMDDouble4x4];
    v3 = v9;
  }

  else
  {
    v4 = MEMORY[0x277D860A0];
    v5 = *(MEMORY[0x277D860A0] + 80);
    a2[4] = *(MEMORY[0x277D860A0] + 64);
    a2[5] = v5;
    v6 = v4[7];
    a2[6] = v4[6];
    a2[7] = v6;
    v7 = v4[1];
    *a2 = *v4;
    a2[1] = v7;
    v8 = v4[3];
    a2[2] = v4[2];
    a2[3] = v8;
  }
}

- (void)setMatrixDouble4x4:(__int128 *)a3 forKey:(void *)a4
{
  v5 = a3[5];
  v15 = a3[4];
  v16 = v5;
  v6 = a3[7];
  v17 = a3[6];
  v18 = v6;
  v7 = a3[1];
  v11 = *a3;
  v12 = v7;
  v8 = a3[3];
  v13 = a3[2];
  v14 = v8;
  v9 = a4;
  v10 = [PVMatrix44Double matrixWithSIMDDouble4x4:&v11];
  [a1 setInspectableProperty:v10 forKey:{v9, v11, v12, v13, v14, v15, v16, v17, v18}];
}

- (__n128)matrixFloat4x4ForKey:(void *)a1
{
  v1 = [a1 transformObjectForKey:?];
  v2 = v1;
  if (v1)
  {
    [v1 SIMDFloat4x4];
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x277D860B8];
  }

  return v5;
}

- (void)setMatrixFloat4x4:(double)a3 forKey:(double)a4
{
  v8 = a7;
  v13 = [PVMatrix44Double matrixWithSIMDFloat4x4:a2, a3, a4, a5];
  [a1 setInspectableProperty:v13 forKey:v8];
}

- (double)outputAspectRatio
{
  [(PVEffect *)self outputSize];
  v5 = v3 / v4;

  [(PVEffect *)self doubleForKey:@"kPVOutputAspectKey" defaultValue:v5];
  return result;
}

- (id)stringForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (id)attributedStringForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(PVEffect *)self inspectablePropertyForKey:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v10;
}

- (PVEffect)initWithEffectID:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = PVEffect;
  v6 = [(PVEffect *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_effectID, a3);
    v8 = [(PVEffect *)v7 effectID];
    v9 = [PVEffect propertiesForEffect:v8];
    contentProperties = v7->_contentProperties;
    v7->_contentProperties = v9;

    v11 = [(NSDictionary *)v7->_contentProperties objectForKey:@"FFEffectProperty_EffectType"];
    effectType = v7->_effectType;
    v7->_effectType = v11;

    v13 = [(NSDictionary *)v7->_contentProperties objectForKey:@"FFEffectProperty_DisplayName"];
    displayName = v7->_displayName;
    v7->_displayName = v13;

    v16 = *(MEMORY[0x277CC08C8] + 16);
    v15 = *(MEMORY[0x277CC08C8] + 32);
    *&v7->_effectRange.start.value = *MEMORY[0x277CC08C8];
    *&v7->_effectRange.start.epoch = v16;
    *&v7->_effectRange.duration.timescale = v15;
    v7->_conformToInputAspect = 0;
    *&v7->_isInInteractiveMode = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inspectableProperties = v7->_inspectableProperties;
    v7->_inspectableProperties = v17;

    v19 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    inspectablePropertiesLock = v7->_inspectablePropertiesLock;
    v7->_inspectablePropertiesLock = v19;

    v21 = objc_opt_new();
    effectParameters = v7->_effectParameters;
    v7->_effectParameters = v21;

    operator new();
  }

  return 0;
}

- (PVEffect)initWithContentID:(id)a3 andDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = PVEffect;
  v9 = [(PVEffect *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_effectID, a3);
    v11 = [v8 valueForKey:@"contentProperties"];
    contentProperties = v10->_contentProperties;
    v10->_contentProperties = v11;

    v13 = [v8 valueForKey:@"contentType"];
    effectType = v10->_effectType;
    v10->_effectType = v13;

    v15 = [(NSDictionary *)v10->_contentProperties objectForKey:@"displayName"];
    displayName = v10->_displayName;
    v10->_displayName = v15;

    v18 = *(MEMORY[0x277CC08C8] + 16);
    v17 = *(MEMORY[0x277CC08C8] + 32);
    *&v10->_effectRange.start.value = *MEMORY[0x277CC08C8];
    *&v10->_effectRange.start.epoch = v18;
    *&v10->_effectRange.duration.timescale = v17;
    v10->_conformToInputAspect = 0;
    *&v10->_isInInteractiveMode = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inspectableProperties = v10->_inspectableProperties;
    v10->_inspectableProperties = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    inspectablePropertiesLock = v10->_inspectablePropertiesLock;
    v10->_inspectablePropertiesLock = v21;

    v23 = objc_opt_new();
    effectParameters = v10->_effectParameters;
    v10->_effectParameters = v23;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  [(PVEffect *)self releaseResources];
  loadCount = self->_loadCount;
  if (loadCount)
  {
    MEMORY[0x2666E9F00](loadCount, 0x1000C4052888210);
  }

  v4.receiver = self;
  v4.super_class = PVEffect;
  [(PVEffect *)&v4 dealloc];
}

- (void)_configureComponents
{
  v3 = [[PVEffectTimedPropertiesComponent alloc] initWithEffect:self];
  timedPropertiesComponent = self->_timedPropertiesComponent;
  self->_timedPropertiesComponent = v3;

  components = self->_components;
  v6 = self->_timedPropertiesComponent;

  [(NSMutableArray *)components addObject:v6];
}

- (id)debugDisplayName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PVEffect *)self displayName];
  v7 = [(PVEffect *)self effectID];
  v8 = [v3 stringWithFormat:@"%@ %@ %@", v5, v6, v7];

  return v8;
}

- (CGSize)outputSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)outputROI
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)loadEffect
{
  loadCount = self->_loadCount;
  if (loadCount)
  {
    atomic_fetch_add(loadCount, 1u);
  }

  v4 = [(PVEffect *)self loadResources];
  v5 = self->_loadCount;
  if (v5)
  {
    v6 = atomic_load(v5);
    if (v6 == 1)
    {
      components = self->_components;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = *"";
      v9[2] = __22__PVEffect_loadEffect__block_invoke;
      v9[3] = &unk_279AA5CB8;
      v9[4] = self;
      v10 = v4;
      [(NSMutableArray *)components enumerateObjectsUsingBlock:v9];
    }
  }

  return v4;
}

- (void)loadEffectOnQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __41__PVEffect_loadEffectOnQueue_completion___block_invoke;
  v8[3] = &unk_279AA5CE0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(a3, v8);
}

uint64_t __41__PVEffect_loadEffectOnQueue_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadEffect];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)loadResourcesOnQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __44__PVEffect_loadResourcesOnQueue_completion___block_invoke;
  v8[3] = &unk_279AA5CE0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(a3, v8);
}

uint64_t __44__PVEffect_loadResourcesOnQueue_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadResources];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)releaseEffect
{
  loadCount = self->_loadCount;
  if (loadCount)
  {
    atomic_fetch_add(loadCount, 0xFFFFFFFF);
    if (!atomic_load(self->_loadCount))
    {
      [(PVEffect *)self releaseResources];
      components = self->_components;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = *"";
      v6[2] = __25__PVEffect_releaseEffect__block_invoke;
      v6[3] = &unk_279AA5D08;
      v6[4] = self;
      [(NSMutableArray *)components enumerateObjectsUsingBlock:v6];
    }
  }
}

- (id)inspectablePropertyForKey:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  v5 = [(NSMutableDictionary *)self->_inspectableProperties objectForKeyedSubscript:v4];
  [(NSLock *)self->_inspectablePropertiesLock unlock];

  return v5;
}

- (void)setInspectableProperty:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  inspectableProperties = self->_inspectableProperties;
  if (v8)
  {
    [(NSMutableDictionary *)inspectableProperties setObject:v8 forKeyedSubscript:v6];
  }

  else
  {
    [(NSMutableDictionary *)inspectableProperties removeObjectForKey:v6];
  }

  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (NSDictionary)inspectableProperties
{
  [(NSLock *)self->_inspectablePropertiesLock lock];
  v3 = [(NSMutableDictionary *)self->_inspectableProperties copy];
  [(NSLock *)self->_inspectablePropertiesLock unlock];

  return v3;
}

- (void)setInspectableProperties:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  [(NSMutableDictionary *)self->_inspectableProperties setDictionary:v4];
  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (void)addEntriesToInspectableProperties:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  [(NSMutableDictionary *)self->_inspectableProperties addEntriesFromDictionary:v4];
  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (id)descriptionOfInspectableProperties
{
  [(NSLock *)self->_inspectablePropertiesLock lock];
  v3 = [(NSMutableDictionary *)self->_inspectableProperties description];
  [(NSLock *)self->_inspectablePropertiesLock unlock];

  return v3;
}

- (float)proxyRenderScale
{
  v11[1] = *MEMORY[0x277D85DE8];
  {
    v8 = self;
    self = v8;
    if (v9)
    {
      v10 = @"197A9506-9198-4FBD-A7BF-955118A07AE2";
      v11[0] = &unk_28732D6E8;
      [PVEffect proxyRenderScale]::sEffectProxyResMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      self = v8;
    }
  }

  v2 = [PVEffect proxyRenderScale]::sEffectProxyResMap;
  v3 = [(PVEffect *)self effectID];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [v4 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (void)setHidden:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [PVEffect setInspectableProperty:"setInspectableProperty:forKey:" forKey:?];
}

- (BOOL)isHidden
{
  v2 = [(PVEffect *)self inspectablePropertyForKey:@"kPVHiddenKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isVisible
{
  if ([(PVEffect *)self isHidden])
  {
    return 0;
  }

  [(PVEffect *)self topLevelOpacity];
  return v4 > 0.0;
}

- (id)contentRegistryProperties
{
  v3 = +[PVContentRegistry sharedInstance];
  v4 = [(PVEffect *)self effectID];
  v5 = [v3 contentPropertiesForID:v4];

  return v5;
}

- (id)contentRegistryPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(PVEffect *)self contentRegistryProperties];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)contentPropertyForKey:(id)a3
{
  v4 = a3;
  contentProperties = self->_contentProperties;
  if (contentProperties)
  {
    v6 = [(NSDictionary *)contentProperties valueForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contentBundle
{
  v2 = [(PVEffect *)self contentPropertyForKey:@"_contentBundleID"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_postInit:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKey:@"effectType"];
  if (v4)
  {
    objc_storeStrong(&self->_effectType, v4);
  }

  v5 = [v6 objectForKey:@"displayName"];
  if (v5)
  {
    objc_storeStrong(&self->_displayName, v5);
  }
}

- (void)_copyWithZone:(_NSZone *)a3 into:(id)a4
{
  v5 = a4;
  [v5 setValue:self->_effectType forKey:@"effectType"];
  [v5 setValue:self->_displayName forKey:@"displayName"];
}

- (void)_decodeFromCoder:(id)a3 into:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"effectType"];
  if (v6)
  {
    [v5 setValue:v6 forKey:@"effectType"];
  }

  v7 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  if (v7)
  {
    [v5 setValue:v7 forKey:@"displayName"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(PVEffect *)self _copyWithZone:a3 into:v5];
  v6 = +[PVContentRegistry sharedInstance];
  v7 = [(PVEffect *)self effectID];
  v8 = [v6 createContentInstance:v7];

  v9 = [(PVEffect *)self inspectableProperties];
  [v8 setInspectableProperties:v9];

  v10 = *&self->_effectRange.start.epoch;
  v12[0] = *&self->_effectRange.start.value;
  v12[1] = v10;
  v12[2] = *&self->_effectRange.duration.timescale;
  [v8 setEffectRange:v12];
  [v8 setConformToInputAspect:self->_conformToInputAspect];
  [v8 _postInit:v5];

  return v8;
}

- (PVEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"effectID"];
  v6 = +[PVContentRegistry sharedInstance];
  v7 = [v6 createContentInstance:v5];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PVEffect *)v7 _decodeFromCoder:v4 into:v8];
    [(PVEffect *)v7 _postInit:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PVEffect *)self effectID];
  [v5 encodeObject:v4 forKey:@"effectID"];

  [v5 encodeObject:self->_effectType forKey:@"effectType"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
}

- (id)effectDescription
{
  v16[5] = *MEMORY[0x277D85DE8];
  v3 = *&self->_effectRange.start.epoch;
  *&range.start.value = *&self->_effectRange.start.value;
  *&range.start.epoch = v3;
  *&range.duration.timescale = *&self->_effectRange.duration.timescale;
  v4 = CMTimeRangeCopyAsDictionary(&range, 0);
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [(NSLock *)self->_inspectablePropertiesLock lock];
  inspectableProperties = self->_inspectableProperties;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __29__PVEffect_effectDescription__block_invoke;
  v12[3] = &unk_279AA5D38;
  v7 = v5;
  v13 = v7;
  [(NSMutableDictionary *)inspectableProperties enumerateKeysAndObjectsUsingBlock:v12];
  [(NSLock *)self->_inspectablePropertiesLock unlock];
  v15[0] = @"effectID";
  v15[1] = @"effectName";
  displayName = self->_displayName;
  if (!displayName)
  {
    displayName = &stru_2872E16E0;
  }

  v16[0] = self->_effectID;
  v16[1] = displayName;
  v9 = @"YES";
  if (!self->_conformToInputAspect)
  {
    v9 = @"NO";
  }

  v15[2] = @"conformToInputAspect";
  v15[3] = @"inspectableProperties";
  v16[2] = v9;
  v16[3] = v7;
  v15[4] = @"effectRange";
  v16[4] = v4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
  CFRelease(v4);

  return v10;
}

void __29__PVEffect_effectDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 description];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PVEffect *)self effectDescription];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)effectRange
{
  v3 = *&self[1].var0.var0;
  *&retstr->var0.var0 = *&self->var1.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var3;
  return self;
}

- (void)setEffectRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var1.var1;
  *&self->_effectRange.start.epoch = *&a3->var0.var3;
  *&self->_effectRange.duration.timescale = v4;
  *&self->_effectRange.start.value = v3;
}

- (BOOL)applyTimedPropertiesForTime:(id *)a3
{
  timedPropertiesComponent = self->_timedPropertiesComponent;
  v5 = *a3;
  return [(PVEffectTimedPropertiesComponent *)timedPropertiesComponent applyTimedPropertiesForTime:&v5];
}

- (id)userContextForTimedPropertiesDelegate:(id)a3
{
  v3 = [(PVEffectTimedPropertiesComponent *)self->_timedPropertiesComponent userContextForTimedPropertiesDelegate:a3];

  return v3;
}

- (void)runWithInspectableProperties:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  v4[2](v4, self->_inspectableProperties);
  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (void)runWithInspectableProperties_NoLock:(id)a3
{
  v4 = a3;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v4[2](v4, self->_inspectableProperties);
}

+ (id)attributeForName:(id)a3 fromAttributedString:(id)a4 defaultAttributes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    [v8 attribute:v7 atIndex:0 effectiveRange:0];
  }

  else
  {
    [v9 objectForKeyedSubscript:v7];
  }
  v10 = ;

  return v10;
}

+ (int64_t)verticalAlignmentFromAttributedString:(id)a3 defaultAttributes:(id)a4
{
  v4 = [a1 attributeForName:@"TXTextVerticalAlignment" fromAttributedString:a3 defaultAttributes:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    if (v6 >= 3)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (double)textHeightFromAttributedString:(id)a3 defaultAttributes:(id)a4 scale:(double)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 length] && (objc_msgSend(v7, "attribute:atIndex:effectiveRange:", @"TXTextHeight", 0, 0), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) != 0))
  {
    [v9 doubleValue];
    v12 = v11;
    v13 = [v7 attribute:@"TXTextDynamicLineSpacing" atIndex:0 effectiveRange:0];
    [v13 doubleValue];
    v15 = v12 * a5 + v14 * a5;
  }

  else
  {
    v16 = *MEMORY[0x277D740A8];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    if (!v10)
    {
      if ([v7 length])
      {
        v10 = [v7 attribute:v16 atIndex:0 effectiveRange:0];
      }

      else
      {
        v10 = 0;
      }
    }

    [v10 ascender];
    v18 = v17;
    [v10 descender];
    v20 = v19;
    [v10 leading];
    v15 = v18 - v20 + v21;
  }

  return v15;
}

+ (id)shadowFromAttributedString:(id)a3 defaultAttributes:(id)a4
{
  v4 = [a1 attributeForName:*MEMORY[0x277D74138] fromAttributedString:a3 defaultAttributes:a4];

  return v4;
}

+ (double)xOffsetForTextTrackingFromAttributedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 attribute:@"TXTrackingValue" atIndex:0 effectiveRange:0];
    [v4 doubleValue];
    v6 = v5;

    v7 = v6 * 0.5;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (BOOL)isAllCapsFromAttributes:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"MotionTextStyleAllCapsAttributeName"];
  v4 = [v3 integerValue] > 0;

  return v4;
}

+ (double)baselineOffsetFromAttributedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 attribute:*MEMORY[0x277D74078] atIndex:0 effectiveRange:0];
    [v4 doubleValue];
    v6 = -v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (void)modifyAttributedStringByAdjustingFontSize:(id)a3 scale:(double)a4
{
  v11 = a3;
  if ([v11 length])
  {
    v5 = *MEMORY[0x277D740A8];
    v6 = [v11 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    v7 = v6;
    if (v6)
    {
      [v6 pointSize];
      v9 = [v7 fontWithSize:fabs(a4) * v8];

      v10 = [v11 length];
      [v11 removeAttribute:v5 range:{0, v10}];
      [v11 addAttribute:v5 value:v9 range:{0, v10}];
    }

    else
    {
      v9 = 0;
    }
  }
}

+ (void)modifyAttributedStringByAdjustingShadow:(id)a3 effectTransform:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [v6 string];
    v9 = [v8 isEqualToString:@" "];

    if ((v9 & 1) == 0)
    {
      v10 = [v6 attribute:*MEMORY[0x277D74138] atIndex:0 effectiveRange:0];
      if (v10)
      {
        v23 = xmmword_260342820;
        v24 = qword_260342830;
        v25 = xmmword_260342840;
        v26 = qword_260342850;
        memset(v20, 0, sizeof(v20));
        v21 = xmmword_260342800;
        v22 = qword_260342810;
        if (v7)
        {
          [v7 SIMDDouble4x4];
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
        }

        pv_transform_info_make(&v12, v20);
        *&v13 = 0;
        v12 = 0uLL;
        v11[0] = v21;
        v11[1] = v22;
        pv_simd_quaternion_get_euler_angles(v11, 4, &v12);
        [a1 modifyAttributedStringByAdjustingShadow:v6 scale:*&v23 rotation:*&v13 + 3.14159265];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingShadow:(id)a3 scale:(double)a4 rotation:(double)a5
{
  v7 = a3;
  if ([v7 length])
  {
    v8 = [v7 string];
    v9 = [v8 isEqualToString:@" "];

    if ((v9 & 1) == 0)
    {
      v10 = *MEMORY[0x277D74138];
      v11 = [v7 attribute:*MEMORY[0x277D74138] atIndex:0 effectiveRange:0];
      v12 = v11;
      if (v11)
      {
        v36 = 0.0;
        v37 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v13 = [v11 shadowColor];
        [v13 getRed:&v37 green:&v36 blue:&v35 alpha:&v34];
        v34 = v34 * v34;
        v14 = [MEMORY[0x277D75348] colorWithRed:v37 green:v36 blue:v35 alpha:?];
        [v12 setShadowColor:v14];

        [v12 shadowBlurRadius];
        [v12 setShadowBlurRadius:v15 * 0.5];
        [v12 shadowBlurRadius];
        v31 = fabs(a4);
        [v12 setShadowBlurRadius:v31 * v16];
        [v12 shadowOffset];
        v29 = v18;
        v30 = v17;
        v19 = [v7 attribute:@"TXTextDropShadowIsFixedSource" atIndex:0 effectiveRange:0];
        v20 = [v19 BOOLValue];
        v21.f64[0] = v30;
        v21.f64[1] = v29;
        v32 = vmulq_n_f64(v21, v31);

        if (v20)
        {
          if (v32.f64[0] == 0.0)
          {
            v22 = 4.71238898;
            if (v32.f64[1] <= 0.0)
            {
              v22 = 0.0;
            }

            if (v32.f64[1] < 0.0)
            {
              v22 = 1.57079633;
            }

            v23 = fabs(v32.f64[1]);
          }

          else
          {
            v22 = atan(-v32.f64[1] / v32.f64[0]);
            if ((v32.f64[0] >= 0.0 || v32.f64[1] >= 0.0) && (v32.f64[0] >= 0.0 || v32.f64[1] <= 0.0))
            {
              if (v32.f64[1] > 0.0 && v32.f64[0] > 0.0)
              {
                v22 = v22 + 6.28318531;
              }
            }

            else
            {
              v22 = v22 + 3.14159265;
            }

            if (v32.f64[1] == 0.0)
            {
              v23 = fabs(v32.f64[0]);
            }

            else
            {
              v23 = sqrt(v32.f64[1] * v32.f64[1] + vmulq_f64(v32, v32).f64[0]);
            }
          }

          v33 = v23;
          v27 = __sincos_stret(v22 - a5);
          v26.f64[0] = v27.__cosval;
          v26.f64[1] = v27.__sinval;
          v24 = vmulq_n_f64(v26, v33);
        }

        else
        {
          v24.f64[0] = v32.f64[0];
          v24.f64[1] = -v32.f64[1];
        }

        [v12 setShadowOffset:*&v24];
        v28 = [v7 length];
        [v7 removeAttribute:v10 range:{0, v28}];
        [v7 addAttribute:v10 value:v12 range:{0, v28}];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingOutline:(id)a3 attributes:(id)a4 range:(_NSRange)a5 scale:(double)a6
{
  length = a5.length;
  location = a5.location;
  v19 = a3;
  v10 = a4;
  if ([v19 length])
  {
    v11 = *MEMORY[0x277D74160];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D74160]];
    if (v12)
    {
      v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      [v13 pointSize];
      v15 = v14;
      if (v14 == 0.0)
      {
        [v19 removeAttribute:v11 range:{location, length}];
      }

      else
      {
        v16 = MEMORY[0x277CCABB0];
        [v12 doubleValue];
        v18 = [v16 numberWithDouble:fabs(a6) * (100.0 / v15 * v17)];
        [v19 removeAttribute:v11 range:{location, length}];
        [v19 addAttribute:v11 value:v18 range:{location, length}];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingKerning:(id)a3 attributes:(id)a4 range:(_NSRange)a5 scale:(double)a6
{
  length = a5.length;
  location = a5.location;
  v17 = a3;
  v10 = a4;
  if ([v17 length])
  {
    v11 = *MEMORY[0x277D740D0];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277D740D0]];
    v13 = v12;
    if (v12)
    {
      v14 = MEMORY[0x277CCABB0];
      [v12 doubleValue];
      v16 = [v14 numberWithDouble:fabs(a6) * v15];
      [v17 removeAttribute:v11 range:{location, length}];
      [v17 addAttribute:v11 value:v16 range:{location, length}];
    }
  }
}

+ (void)modifyAttributedStringByAdjustingForNegativeLineSpacing:(id)a3 scale:(double)a4
{
  v35 = a3;
  if ([v35 length])
  {
    v5 = *MEMORY[0x277D74118];
    v6 = [v35 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
    v7 = v6;
    if (v6)
    {
      [v6 lineSpacing];
      if (v8 != 0.0)
      {
        v9 = [v35 length];
        v10 = [v7 mutableCopy];
        [v7 lineSpacing];
        v11 = fabs(a4);
        [v10 setLineSpacing:v11 * v12];
        [v35 removeAttribute:v5 range:{0, v9}];
        [v35 addAttribute:v5 value:v10 range:{0, v9}];
        [v7 lineSpacing];
        if (v13 <= 0.0)
        {
          v14 = [v35 string];
          v15 = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [v14 componentsSeparatedByCharactersInSet:v15];

          if ([v16 count])
          {
            v34 = [v35 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
            [v34 ascender];
            v18 = v17;
            [v34 descender];
            v20 = v19;
            [v34 leading];
            v22 = v21;
            v23 = [v16 objectAtIndexedSubscript:0];
            v24 = [v23 length];

            v25 = [v16 count];
            if (v25 >= 2)
            {
              v26 = v18 - v20 + v22;
              v27 = v24 + 1;
              v28 = v25 - 1;
              v29 = 1;
              do
              {
                v30 = [v16 objectAtIndexedSubscript:v29];
                v31 = [v7 mutableCopy];
                [v31 setLineSpacing:0.0];
                [v7 lineSpacing];
                [v31 setMaximumLineHeight:v26 + v11 * v32];
                if (v28 == 1)
                {
                  v33 = [v30 length];
                }

                else
                {
                  v33 = [v30 length] + 1;
                }

                [v35 addAttribute:v5 value:v31 range:{v27, v33}];
                v27 += v33;

                ++v29;
                --v28;
              }

              while (v28);
            }
          }
        }
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingFont:(id)a3 toFitSize:(CGSize)a4
{
  width = a4.width;
  v5 = a3;
  if ([v5 length])
  {
    v6 = *MEMORY[0x277D740A8];
    v22 = [v5 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    v7 = [v5 length];
    [v22 pointSize];
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v8;
    v13 = v8;
    do
    {
      v14 = objc_autoreleasePoolPush();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = *"";
      v23[2] = __75__PVEffect_TextUtilities__modifyAttributedStringByAdjustingFont_toFitSize___block_invoke;
      v23[3] = &unk_279AA64E0;
      v25 = v9;
      v15 = v5;
      v24 = v15;
      [v15 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v23}];
      [v15 size];
      if (v16 <= width)
      {
        v19 = width - v16;
        if (v19 >= 0.05)
        {
          v18 = (v9 + v12) * 0.5;
        }

        else
        {
          v18 = v9;
        }

        if (v19 < 0.05)
        {
          v17 = 1;
        }

        else
        {
          v13 = v9;
          v17 = 0;
        }

        if (v19 >= 0.05)
        {
          v10 = 1;
        }
      }

      else
      {
        v17 = 0;
        if (v10)
        {
          v18 = (v9 + v13) * 0.5;
          v10 = 1;
        }

        else
        {
          v10 = 0;
          v18 = v9 + -0.2;
        }

        v12 = v9;
      }

      objc_autoreleasePoolPop(v14);
      if (v11++ > 0x1D)
      {
        v21 = 1;
      }

      else
      {
        v21 = v17;
      }

      v9 = v18;
    }

    while (v21 != 1);
  }
}

void __75__PVEffect_TextUtilities__modifyAttributedStringByAdjustingFont_toFitSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v10 = v7;
    v8 = [v7 fontWithSize:*(a1 + 40)];
    v9 = *MEMORY[0x277D740A8];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D740A8] range:{a3, a4}];
    [*(a1 + 32) addAttribute:v9 value:v8 range:{a3, a4}];

    v7 = v10;
  }
}

+ (void)modifyAttributedStringByApplyingSubstituteFont:(id)a3 attributes:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v13 = a3;
  v8 = a4;
  if ([v13 length])
  {
    v9 = *MEMORY[0x277D740A8];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    if (v10)
    {
      v11 = [v8 objectForKeyedSubscript:@"TXSubstituteFont"];
      if (v11)
      {
        [v10 pointSize];
        v12 = [v11 fontWithSize:?];
        if (v12)
        {
          [v13 removeAttribute:v9 range:{location, length}];
          [v13 addAttribute:v9 value:v12 range:{location, length}];
        }
      }
    }
  }
}

+ (id)_effectRegistry
{
  v2 = gRegistry;
  if (!gRegistry)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = gRegistry;
    gRegistry = v3;

    v2 = gRegistry;
  }

  return v2;
}

+ (void)ensureEffectsRegistered
{
  if ((gCalledDeferredRegistrations & 1) == 0)
  {
    v2 = objc_opt_class();
    objc_sync_enter(v2);
    if ((gCalledDeferredRegistrations & 1) == 0)
    {
      if (gDeferredRegistrationClients)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        std::vector<objc_class * {__strong}>::__init_with_size[abi:ne200100]<objc_class * {__strong}*,objc_class * {__strong}*>(&v8, *gDeferredRegistrationClients, *(gDeferredRegistrationClients + 8), (*(gDeferredRegistrationClients + 8) - *gDeferredRegistrationClients) >> 3);
        v3 = gDeferredRegistrationClients;
        v4 = *gDeferredRegistrationClients;
        for (i = *(gDeferredRegistrationClients + 8); i != v4; i -= 8)
        {
          v6 = *(i - 8);
        }

        *(v3 + 8) = v4;
        for (j = v8; j != v9; ++j)
        {
          [*j runDeferredRegistration];
        }

        v11 = &v8;
        std::vector<objc_class * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v11);
      }

      gCalledDeferredRegistrations = 1;
    }

    objc_sync_exit(v2);
  }
}

+ (id)_effectRegistryForLookup
{
  [a1 ensureEffectsRegistered];

  return [a1 _effectRegistry];
}

+ (void)deferEffectRegistrationForClass:(Class)a3
{
  v6 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  if (gCalledDeferredRegistrations)
  {
    objc_sync_exit(v4);

    [(objc_class *)a3 runDeferredRegistration];
  }

  else
  {
    v5 = gDeferredRegistrationClients;
    if (!gDeferredRegistrationClients)
    {
      v5 = operator new(0x18uLL, MEMORY[0x277D826F0]);
      if (v5)
      {
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      gDeferredRegistrationClients = v5;
    }

    std::vector<objc_class * {__strong}>::push_back[abi:ne200100](v5, &v6);
    objc_sync_exit(v4);
  }
}

+ (void)registerEffectClass:(Class)a3 forEffectID:(id)a4 withProperties:(id)a5
{
  v16 = a4;
  v8 = a5;
  if (a3 && v16)
  {
    v9 = [a1 _effectRegistry];
    v10 = [v9 objectForKey:v16];

    if (v10)
    {
      v11 = [v9 objectForKey:v16];
      ClassName = object_getClassName([v11 effectClass]);
      v13 = object_getClassName(a3);
      NSLog(&cfstr_PveffectWarnin_0.isa, v16, ClassName, v13);
    }

    v14 = [[PVEffectRegistryEntry alloc] initWithClass:a3 andProperties:v8];
    [v9 setObject:v14 forKey:v16];
  }

  else
  {
    v15 = object_getClassName(a3);
    NSLog(&cfstr_PveffectWarnin.isa, v16, v15);
  }
}

+ (id)newEffectWithID:(id)a3
{
  v4 = a3;
  v5 = [a1 _effectRegistryForLookup];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [objc_alloc(objc_msgSend(v6 "effectClass"))];
    [v7 _postInit:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newEffectWithURL:(id)a3
{
  v3 = [PVMotionEffect newEffectWithURL:a3];
  [v3 _postInit:0];
  return v3;
}

+ (id)newEffectWithData:(id)a3
{
  v3 = [PVMotionEffect newEffectWithData:a3];
  [v3 _postInit:0];
  return v3;
}

+ (BOOL)effectIDIsRegistered:(id)a3
{
  v4 = a3;
  v5 = [a1 _effectRegistryForLookup];
  v6 = [v5 objectForKey:v4];

  return v6 != 0;
}

+ (BOOL)effectIDIsNone:(id)a3
{
  v3 = a3;
  if (+[PVEffect(PVEffectRegistry) effectIDIsNone:]::onceToken != -1)
  {
    +[PVEffect(PVEffectRegistry) effectIDIsNone:];
  }

  v4 = [+[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs containsObject:v3];

  return v4;
}

void __45__PVEffect_PVEffectRegistry__effectIDIsNone___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"737C8717-70E0-4CCE-8F19-17A0532E836F", @"4390FE7A-3408-4EB5-A049-AA394C03A911", @"67EB7544-E4A1-4508-9733-E201AADFBC15", 0}];
  v1 = +[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs;
  +[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs = v0;
}

+ (id)_registryEntryForEffectID:(id)a3
{
  v4 = a3;
  v5 = [a1 _effectRegistryForLookup];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    NSLog(&cfstr_PveffectWarnin_1.isa, v4);
  }

  return v6;
}

+ (id)propertiesForEffect:(id)a3
{
  v3 = [a1 _registryEntryForEffectID:a3];
  v4 = [v3 effectProperties];

  return v4;
}

+ (id)allRegisteredEffectIDs
{
  v2 = [a1 _effectRegistryForLookup];
  v3 = [v2 allKeys];

  return v3;
}

+ (id)userVisibleEffectIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = +[PVEffect allRegisteredEffectIDs];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * i);
        v6 = [PVEffect propertiesForEffect:v5];
        v7 = [v6 objectForKey:@"FFEffectProperty_HiddenInUI"];
        v8 = [v7 BOOLValue];

        v9 = [v6 objectForKey:@"FFEffectProperty_AvailableInSimpleMode"];
        v10 = [v9 BOOLValue];

        if (!(v8 & 1 | ((v10 & 1) == 0)))
        {
          [v12 addObject:v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  return v12;
}

+ (id)effectTypeForEffectID:(id)a3
{
  v3 = [a1 propertiesForEffect:a3];
  v4 = [v3 objectForKey:@"FFEffectProperty_EffectType"];

  return v4;
}

+ (id)registeredEffectIDsForEffectType:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a1 allRegisteredEffectIDs];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [a1 effectTypeForEffectID:v10];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)registeredEffectIDsForEffectTypes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [a1 registeredEffectIDsForEffectType:{*(*(&v12 + 1) + 8 * i), v12}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)firstRegisteredEffectIDContainingSubstring:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[PVEffect allRegisteredEffectIDs];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 rangeOfString:v3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

+ (Class)classForEffectID:(id)a3
{
  v3 = [a1 _registryEntryForEffectID:a3];
  v4 = [v3 effectClass];

  return v4;
}

+ (id)registeredEffectIDsForClass:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a1 allRegisteredEffectIDs];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([a1 classForEffectID:v10] == a3)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)displayNameForEffectType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"effect.video.filter"])
  {
    v4 = @"Effects";
  }

  else if ([v3 isEqualToString:@"effect.video.generator"])
  {
    v4 = @"Generators";
  }

  else if ([v3 isEqualToString:@"effect.video.transition"])
  {
    v4 = @"Transitions";
  }

  else if ([v3 isEqualToString:@"effect.video.compositor"])
  {
    v4 = @"Composite Operations";
  }

  else if ([v3 isEqualToString:@"effect.video.multiplexor"])
  {
    v4 = @"Multiplexor Operations";
  }

  else if ([v3 isEqualToString:@"effect.video.title"])
  {
    v4 = @"Titles";
  }

  else if ([v3 isEqualToString:@"effect.audio.effect"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect.audio.generator") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect.audio.transition"))
  {
    v4 = @"Audio Effects";
  }

  else if ([v3 isEqualToString:@"effect.audio.offline-effect"])
  {
    v4 = @"Audio Offline Effect";
  }

  else if ([v3 isEqualToString:@"effect.audio.music-instrument"])
  {
    v4 = @"Audio Instrument";
  }

  else
  {
    v4 = @"All Types";
  }

  return v4;
}

+ (id)displayNameForEffectID:(id)a3
{
  v3 = [a1 propertiesForEffect:a3];
  v4 = [v3 objectForKey:@"FFEffectProperty_DisplayName"];

  return v4;
}

+ (id)categoryForEffectID:(id)a3
{
  v3 = [a1 propertiesForEffect:a3];
  v4 = [v3 objectForKey:@"FFEffectProperty_Category"];

  return v4;
}

+ (id)themeForEffectID:(id)a3
{
  v3 = [a1 propertiesForEffect:a3];
  v4 = [v3 objectForKey:@"kFFEffectProperty_Theme"];

  return v4;
}

+ (id)descriptionForEffectID:(id)a3
{
  v3 = [a1 propertiesForEffect:a3];
  v4 = [v3 objectForKey:@"FFEffectProperty_Description"];

  return v4;
}

+ (BOOL)isVideoForEffectID:(id)a3
{
  v3 = [PVEffect effectTypeForEffectID:a3];
  if ([v3 isEqualToString:@"effect.video.filter"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect.video.generator") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect.video.transition") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect.video.title"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"effect.video.compositor"];
  }

  return v4;
}

+ (id)defaultVideoTransitionEffectID
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"FFDefaultVideoTransition"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 setObject:@"FxPlug:4731E73A-8DAC-4113-9A30-AE85B1761265" forKey:@"FFDefaultVideoTransition"];

    v3 = @"FxPlug:4731E73A-8DAC-4113-9A30-AE85B1761265";
  }

  return v3;
}

+ (id)_registeredEffectClasses
{
  v2 = +[PVEffect(RuntimeBundleLoading) _registeredEffectClasses]::sRegistered;
  if (!+[PVEffect(RuntimeBundleLoading) _registeredEffectClasses]::sRegistered)
  {
    v3 = objc_opt_new();
    v4 = +[PVEffect(RuntimeBundleLoading) _registeredEffectClasses]::sRegistered;
    +[PVEffect(RuntimeBundleLoading) _registeredEffectClasses]::sRegistered = v3;

    v2 = +[PVEffect(RuntimeBundleLoading) _registeredEffectClasses]::sRegistered;
  }

  return v2;
}

+ (void)_registerEffectsInBundle:(id)a3 atPath:(id)a4
{
  v9 = a3;
  v5 = [v9 principalClass];
  if ([v5 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [a1 _registeredEffectClasses];
    v7 = [v6 containsObject:v5];

    if ((v7 & 1) == 0)
    {
      [v5 registerEffects];
      v8 = [a1 _registeredEffectClasses];
      [v8 addObject:v5];
    }
  }
}

+ (void)initEffectRegistryWithHostDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();

  if (v5 == a1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = *"";
    v7[2] = __69__PVEffect_RuntimeBundleLoading__initEffectRegistryWithHostDelegate___block_invoke;
    v7[3] = &unk_279AA4DD8;
    v8 = v4;
    v6 = MEMORY[0x2666EAFC0](v7);
    v6[2]();
  }
}

void __69__PVEffect_RuntimeBundleLoading__initEffectRegistryWithHostDelegate___block_invoke(uint64_t a1)
{
  v4 = +[PVHostApplicationDelegateHandler sharedInstance];
  [v4 setHostApplicationDelegate:*(a1 + 32)];
  +[PVEffect _registerBuiltInEffects];
  +[PVHeliumEffect registerEffects];
  +[PVMotionEffect registerEffects];
  +[PVCompositeDelegateEffect registerEffects];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = objc_opt_self();
  [v2 addObserver:v3 selector:sel_willTerminate_ name:*MEMORY[0x277D76770] object:0];
}

+ (void)willTerminate:(id)a3
{
  v4 = objc_opt_self();

  if (v4 == a1)
  {
    +[PVEffect handleApplicationWillTerminate];

    +[PVMotionEffect handleApplicationWillTerminate];
  }
}

+ (void)clearPreviewStats
{
  if (objc_opt_class() == a1)
  {

    +[PVMotionEffect clearPreviewStats];
  }
}

@end