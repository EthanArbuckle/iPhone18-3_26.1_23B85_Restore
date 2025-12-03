@interface PVEffect
+ (BOOL)effectIDIsNone:(id)none;
+ (BOOL)effectIDIsRegistered:(id)registered;
+ (BOOL)isAllCapsFromAttributes:(id)attributes;
+ (BOOL)isVideoForEffectID:(id)d;
+ (Class)classForEffectID:(id)d;
+ (double)baselineOffsetFromAttributedString:(id)string;
+ (double)textHeightFromAttributedString:(id)string defaultAttributes:(id)attributes scale:(double)scale;
+ (double)xOffsetForTextTrackingFromAttributedString:(id)string;
+ (id)_effectRegistry;
+ (id)_effectRegistryForLookup;
+ (id)_registeredEffectClasses;
+ (id)_registryEntryForEffectID:(id)d;
+ (id)allRegisteredEffectIDs;
+ (id)attributeForName:(id)name fromAttributedString:(id)string defaultAttributes:(id)attributes;
+ (id)categoryForEffectID:(id)d;
+ (id)defaultVideoTransitionEffectID;
+ (id)descriptionForEffectID:(id)d;
+ (id)displayNameForEffectID:(id)d;
+ (id)displayNameForEffectType:(id)type;
+ (id)effectTypeForEffectID:(id)d;
+ (id)firstRegisteredEffectIDContainingSubstring:(id)substring;
+ (id)newEffectWithData:(id)data;
+ (id)newEffectWithID:(id)d;
+ (id)newEffectWithURL:(id)l;
+ (id)propertiesForEffect:(id)effect;
+ (id)registeredEffectIDsForClass:(Class)class;
+ (id)registeredEffectIDsForEffectType:(id)type;
+ (id)registeredEffectIDsForEffectTypes:(id)types;
+ (id)shadowFromAttributedString:(id)string defaultAttributes:(id)attributes;
+ (id)themeForEffectID:(id)d;
+ (id)userVisibleEffectIDs;
+ (int64_t)verticalAlignmentFromAttributedString:(id)string defaultAttributes:(id)attributes;
+ (void)_registerEffectsInBundle:(id)bundle atPath:(id)path;
+ (void)clearPreviewStats;
+ (void)deferEffectRegistrationForClass:(Class)class;
+ (void)ensureEffectsRegistered;
+ (void)initEffectRegistryWithHostDelegate:(id)delegate;
+ (void)modifyAttributedStringByAdjustingFont:(id)font toFitSize:(CGSize)size;
+ (void)modifyAttributedStringByAdjustingFontSize:(id)size scale:(double)scale;
+ (void)modifyAttributedStringByAdjustingForNegativeLineSpacing:(id)spacing scale:(double)scale;
+ (void)modifyAttributedStringByAdjustingKerning:(id)kerning attributes:(id)attributes range:(_NSRange)range scale:(double)scale;
+ (void)modifyAttributedStringByAdjustingOutline:(id)outline attributes:(id)attributes range:(_NSRange)range scale:(double)scale;
+ (void)modifyAttributedStringByAdjustingShadow:(id)shadow effectTransform:(id)transform;
+ (void)modifyAttributedStringByAdjustingShadow:(id)shadow scale:(double)scale rotation:(double)rotation;
+ (void)modifyAttributedStringByApplyingSubstituteFont:(id)font attributes:(id)attributes range:(_NSRange)range;
+ (void)registerEffectClass:(Class)class forEffectID:(id)d withProperties:(id)properties;
+ (void)willTerminate:(id)terminate;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)range;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)effectRange;
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)range;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)applyTimedPropertiesForTime:(id *)time;
- (BOOL)bounds:(CGRect *)bounds atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks;
- (BOOL)isHidden;
- (BOOL)isVisible;
- (BOOL)loadEffect;
- (CGPoint)convertPointToView:(id *)view atTime:(BOOL)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(CGSize)scale viewSize:(int)size viewOrigin:;
- (CGPoint)pointForKey:(id)key defaultValue:(CGPoint)value;
- (CGRect)outputROI;
- (CGRect)playableRectInView:(CGSize)view;
- (CGRect)playableRectInView_NoLock:(CGSize)lock properties:(id)properties;
- (CGRect)rectForKey:(id)key defaultValue:(CGRect)value;
- (CGSize)outputSize;
- (CGSize)sizeForKey:(id)key defaultValue:(CGSize)value;
- (NSDictionary)inspectableProperties;
- (PVEffect)initWithCoder:(id)coder;
- (PVEffect)initWithContentID:(id)d andDictionary:(id)dictionary;
- (PVEffect)initWithEffectID:(id)d;
- (__n128)getScale;
- (__n128)matrixFloat4x4ForKey:(void *)key;
- (double)convertPointFromView:(uint64_t)view@<X8> atTime:viewSize:viewOrigin:;
- (double)doubleForKey:(id)key defaultValue:(double)value;
- (double)outputAspectRatio;
- (double)playableAspectRatio;
- (double)playableAspectRatio_NoLock:(id)lock;
- (double)playableScaleInView:(CGSize)view;
- (double)playableScaleInView_NoLock:(CGSize)lock properties:(id)properties;
- (float)proxyRenderScale;
- (id)attributedStringForKey:(id)key defaultValue:(id)value;
- (id)contentBundle;
- (id)contentPropertyForKey:(id)key;
- (id)contentRegistryProperties;
- (id)contentRegistryPropertyForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDisplayName;
- (id)description;
- (id)descriptionOfInspectableProperties;
- (id)effectDescription;
- (id)inspectablePropertyForKey:(id)key;
- (id)stringForKey:(id)key defaultValue:(id)value;
- (id)userContextForTimedPropertiesDelegate:(id)delegate;
- (int)playableAspectRatioPreservationMode;
- (int)playableAspectRatioPreservationMode_NoLock:(id)lock;
- (void)_configureComponents;
- (void)_copyWithZone:(_NSZone *)zone into:(id)into;
- (void)_decodeFromCoder:(id)coder into:(id)into;
- (void)_postInit:(id)init;
- (void)addEntriesToInspectableProperties:(id)properties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadEffectOnQueue:(id)queue completion:(id)completion;
- (void)loadResourcesOnQueue:(id)queue completion:(id)completion;
- (void)matrixDouble4x4ForKey:(void *)key@<X0>;
- (void)releaseEffect;
- (void)runWithInspectableProperties:(id)properties;
- (void)runWithInspectableProperties_NoLock:(id)lock;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setEffectRange:(id *)range;
- (void)setHidden:(BOOL)hidden;
- (void)setInspectableProperties:(id)properties;
- (void)setInspectableProperty:(id)property forKey:(id)key;
- (void)setMatrixDouble4x4:(__int128 *)double4x4 forKey:(void *)key;
- (void)setMatrixFloat4x4:(double)float4x4 forKey:(double)key;
- (void)setPlayableAspectRatio:(double)ratio;
- (void)setPlayableAspectRatioPreservationMode:(int)mode;
- (void)setPoint:(CGPoint)point forKey:(id)key;
- (void)setRect:(CGRect)rect forKey:(id)key;
- (void)setSize:(CGSize)size forKey:(id)key;
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

- (void)setPlayableAspectRatio:(double)ratio
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:ratio];
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

- (void)setPlayableAspectRatioPreservationMode:(int)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&mode];
  [PVEffect setInspectableProperty:"setInspectableProperty:forKey:" forKey:?];
}

- (CGRect)playableRectInView:(CGSize)view
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
  viewCopy = view;
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

- (double)playableScaleInView:(CGSize)view
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
  viewCopy = view;
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

- (double)playableAspectRatio_NoLock:(id)lock
{
  lockCopy = lock;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v5 = [lockCopy objectForKeyedSubscript:@"kPVPlayableAspectRatioKey"];
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

- (int)playableAspectRatioPreservationMode_NoLock:(id)lock
{
  lockCopy = lock;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  v5 = [lockCopy objectForKeyedSubscript:@"kPVPlayableAspectRatioPreservationModeKey"];
  v6 = v5;
  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = [objc_opt_class() defaultPlayableAspectRatioPreservationMode];
  }

  v8 = intValue;

  return v8;
}

- (CGRect)playableRectInView_NoLock:(CGSize)lock properties:(id)properties
{
  height = lock.height;
  width = lock.width;
  propertiesCopy = properties;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  [(PVEffect *)self playableAspectRatio_NoLock:propertiesCopy];
  v9 = v8;
  v10 = [(PVEffect *)self playableAspectRatioPreservationMode_NoLock:propertiesCopy];
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

- (double)playableScaleInView_NoLock:(CGSize)lock properties:(id)properties
{
  height = lock.height;
  width = lock.width;
  propertiesCopy = properties;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  [(PVEffect *)self playableAspectRatio_NoLock:propertiesCopy];
  v9 = v8;
  v10 = [(PVEffect *)self playableAspectRatioPreservationMode_NoLock:propertiesCopy];
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

- ($948BFCBB2DDE7F94AFEDE1DD48437795)componentTimeRangeFromTimelineTimeRange:(SEL)range
{
  v4 = MEMORY[0x277CC08C8];
  v5 = *(MEMORY[0x277CC08C8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *(v4 + 32);
  return self;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timelineTimeRangeFromComponentTimeRange:(SEL)range
{
  v4 = MEMORY[0x277CC08C8];
  v5 = *(MEMORY[0x277CC08C8] + 16);
  *&retstr->var0.var0 = *MEMORY[0x277CC08C8];
  *&retstr->var0.var3 = v5;
  *&retstr->var1.var1 = *(v4 + 32);
  return self;
}

- (CGPoint)convertPointToView:(id *)view atTime:(BOOL)time forcePosterFrame:(BOOL)frame includeTransformAnimation:(BOOL)animation includePlayableAspectScale:(CGSize)scale viewSize:(int)size viewOrigin:
{
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  result.y = v9;
  result.x = v8;
  return result;
}

- (double)convertPointFromView:(uint64_t)view@<X8> atTime:viewSize:viewOrigin:
{
  *view = 0;
  *(view + 8) = 0;
  result = 0.0;
  *(view + 16) = 0u;
  return result;
}

- (__n128)getScale
{
  __asm { FMOV            V0.2D, #1.0 }

  *self = result;
  self[1] = result;
  return result;
}

- (BOOL)bounds:(CGRect *)bounds atTime:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeMasks:(BOOL)masks
{
  if (bounds)
  {
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    bounds->origin = *MEMORY[0x277CBF3A0];
    bounds->size = v7;
  }

  return bounds != 0;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(PVEffect *)self inspectablePropertyForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(PVEffect *)self setInspectableProperty:v8 forKey:keyCopy];
}

- (double)doubleForKey:(id)key defaultValue:(double)value
{
  v5 = [(PVEffect *)self inspectablePropertyForKey:key];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    value = v7;
  }

  return value;
}

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(PVEffect *)self setInspectableProperty:v8 forKey:keyCopy];
}

- (CGPoint)pointForKey:(id)key defaultValue:(CGPoint)value
{
  y = value.y;
  x = value.x;
  v6 = [(PVEffect *)self inspectablePropertyForKey:key];
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

- (void)setPoint:(CGPoint)point forKey:(id)key
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x277CCAE60];
  keyCopy = key;
  v9 = [v7 valueWithCGPoint:{x, y}];
  [(PVEffect *)self setInspectableProperty:v9 forKey:keyCopy];
}

- (CGSize)sizeForKey:(id)key defaultValue:(CGSize)value
{
  height = value.height;
  width = value.width;
  v6 = [(PVEffect *)self inspectablePropertyForKey:key];
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

- (void)setSize:(CGSize)size forKey:(id)key
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277CCAE60];
  keyCopy = key;
  v9 = [v7 valueWithCGSize:{width, height}];
  [(PVEffect *)self setInspectableProperty:v9 forKey:keyCopy];
}

- (CGRect)rectForKey:(id)key defaultValue:(CGRect)value
{
  height = value.size.height;
  width = value.size.width;
  y = value.origin.y;
  x = value.origin.x;
  v8 = [(PVEffect *)self inspectablePropertyForKey:key];
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

- (void)setRect:(CGRect)rect forKey:(id)key
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x277CCAE60];
  keyCopy = key;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(PVEffect *)self setInspectableProperty:v11 forKey:keyCopy];
}

- (void)matrixDouble4x4ForKey:(void *)key@<X0>
{
  v3 = [key transformObjectForKey:?];
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

- (void)setMatrixDouble4x4:(__int128 *)double4x4 forKey:(void *)key
{
  v5 = double4x4[5];
  v15 = double4x4[4];
  v16 = v5;
  v6 = double4x4[7];
  v17 = double4x4[6];
  v18 = v6;
  v7 = double4x4[1];
  v11 = *double4x4;
  v12 = v7;
  v8 = double4x4[3];
  v13 = double4x4[2];
  v14 = v8;
  keyCopy = key;
  v10 = [PVMatrix44Double matrixWithSIMDDouble4x4:&v11];
  [self setInspectableProperty:v10 forKey:{keyCopy, v11, v12, v13, v14, v15, v16, v17, v18}];
}

- (__n128)matrixFloat4x4ForKey:(void *)key
{
  v1 = [key transformObjectForKey:?];
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

- (void)setMatrixFloat4x4:(double)float4x4 forKey:(double)key
{
  v8 = a7;
  v13 = [PVMatrix44Double matrixWithSIMDFloat4x4:a2, float4x4, key, a5];
  [self setInspectableProperty:v13 forKey:v8];
}

- (double)outputAspectRatio
{
  [(PVEffect *)self outputSize];
  v5 = v3 / v4;

  [(PVEffect *)self doubleForKey:@"kPVOutputAspectKey" defaultValue:v5];
  return result;
}

- (id)stringForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(PVEffect *)self inspectablePropertyForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (id)attributedStringForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(PVEffect *)self inspectablePropertyForKey:key];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = valueCopy;
  }

  v10 = v9;

  return v10;
}

- (PVEffect)initWithEffectID:(id)d
{
  dCopy = d;
  v24.receiver = self;
  v24.super_class = PVEffect;
  v6 = [(PVEffect *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_effectID, d);
    effectID = [(PVEffect *)v7 effectID];
    v9 = [PVEffect propertiesForEffect:effectID];
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

- (PVEffect)initWithContentID:(id)d andDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = PVEffect;
  v9 = [(PVEffect *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_effectID, d);
    v11 = [dictionaryCopy valueForKey:@"contentProperties"];
    contentProperties = v10->_contentProperties;
    v10->_contentProperties = v11;

    v13 = [dictionaryCopy valueForKey:@"contentType"];
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
  displayName = [(PVEffect *)self displayName];
  effectID = [(PVEffect *)self effectID];
  v8 = [v3 stringWithFormat:@"%@ %@ %@", v5, displayName, effectID];

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

  loadResources = [(PVEffect *)self loadResources];
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
      v10 = loadResources;
      [(NSMutableArray *)components enumerateObjectsUsingBlock:v9];
    }
  }

  return loadResources;
}

- (void)loadEffectOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __41__PVEffect_loadEffectOnQueue_completion___block_invoke;
  v8[3] = &unk_279AA5CE0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

uint64_t __41__PVEffect_loadEffectOnQueue_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadEffect];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)loadResourcesOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __44__PVEffect_loadResourcesOnQueue_completion___block_invoke;
  v8[3] = &unk_279AA5CE0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
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

- (id)inspectablePropertyForKey:(id)key
{
  keyCopy = key;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  v5 = [(NSMutableDictionary *)self->_inspectableProperties objectForKeyedSubscript:keyCopy];
  [(NSLock *)self->_inspectablePropertiesLock unlock];

  return v5;
}

- (void)setInspectableProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  inspectableProperties = self->_inspectableProperties;
  if (propertyCopy)
  {
    [(NSMutableDictionary *)inspectableProperties setObject:propertyCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)inspectableProperties removeObjectForKey:keyCopy];
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

- (void)setInspectableProperties:(id)properties
{
  propertiesCopy = properties;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  [(NSMutableDictionary *)self->_inspectableProperties setDictionary:propertiesCopy];
  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (void)addEntriesToInspectableProperties:(id)properties
{
  propertiesCopy = properties;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  [(NSMutableDictionary *)self->_inspectableProperties addEntriesFromDictionary:propertiesCopy];
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
    selfCopy = self;
    self = selfCopy;
    if (v9)
    {
      v10 = @"197A9506-9198-4FBD-A7BF-955118A07AE2";
      v11[0] = &unk_28732D6E8;
      [PVEffect proxyRenderScale]::sEffectProxyResMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      self = selfCopy;
    }
  }

  v2 = [PVEffect proxyRenderScale]::sEffectProxyResMap;
  effectID = [(PVEffect *)self effectID];
  v4 = [v2 objectForKeyedSubscript:effectID];

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

- (void)setHidden:(BOOL)hidden
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:hidden];
  [PVEffect setInspectableProperty:"setInspectableProperty:forKey:" forKey:?];
}

- (BOOL)isHidden
{
  v2 = [(PVEffect *)self inspectablePropertyForKey:@"kPVHiddenKey"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  effectID = [(PVEffect *)self effectID];
  v5 = [v3 contentPropertiesForID:effectID];

  return v5;
}

- (id)contentRegistryPropertyForKey:(id)key
{
  keyCopy = key;
  contentRegistryProperties = [(PVEffect *)self contentRegistryProperties];
  v6 = [contentRegistryProperties objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)contentPropertyForKey:(id)key
{
  keyCopy = key;
  contentProperties = self->_contentProperties;
  if (contentProperties)
  {
    v6 = [(NSDictionary *)contentProperties valueForKey:keyCopy];
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

- (void)_postInit:(id)init
{
  initCopy = init;
  v4 = [initCopy objectForKey:@"effectType"];
  if (v4)
  {
    objc_storeStrong(&self->_effectType, v4);
  }

  v5 = [initCopy objectForKey:@"displayName"];
  if (v5)
  {
    objc_storeStrong(&self->_displayName, v5);
  }
}

- (void)_copyWithZone:(_NSZone *)zone into:(id)into
{
  intoCopy = into;
  [intoCopy setValue:self->_effectType forKey:@"effectType"];
  [intoCopy setValue:self->_displayName forKey:@"displayName"];
}

- (void)_decodeFromCoder:(id)coder into:(id)into
{
  coderCopy = coder;
  intoCopy = into;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectType"];
  if (v6)
  {
    [intoCopy setValue:v6 forKey:@"effectType"];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  if (v7)
  {
    [intoCopy setValue:v7 forKey:@"displayName"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(PVEffect *)self _copyWithZone:zone into:v5];
  v6 = +[PVContentRegistry sharedInstance];
  effectID = [(PVEffect *)self effectID];
  v8 = [v6 createContentInstance:effectID];

  inspectableProperties = [(PVEffect *)self inspectableProperties];
  [v8 setInspectableProperties:inspectableProperties];

  v10 = *&self->_effectRange.start.epoch;
  v12[0] = *&self->_effectRange.start.value;
  v12[1] = v10;
  v12[2] = *&self->_effectRange.duration.timescale;
  [v8 setEffectRange:v12];
  [v8 setConformToInputAspect:self->_conformToInputAspect];
  [v8 _postInit:v5];

  return v8;
}

- (PVEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"effectID"];
  v6 = +[PVContentRegistry sharedInstance];
  v7 = [v6 createContentInstance:v5];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PVEffect *)v7 _decodeFromCoder:coderCopy into:v8];
    [(PVEffect *)v7 _postInit:v8];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  effectID = [(PVEffect *)self effectID];
  [coderCopy encodeObject:effectID forKey:@"effectID"];

  [coderCopy encodeObject:self->_effectType forKey:@"effectType"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
}

- (id)effectDescription
{
  v16[5] = *MEMORY[0x277D85DE8];
  v3 = *&self->_effectRange.start.epoch;
  *&range.start.value = *&self->_effectRange.start.value;
  *&range.start.epoch = v3;
  *&range.duration.timescale = *&self->_effectRange.duration.timescale;
  v4 = CMTimeRangeCopyAsDictionary(&range, 0);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(NSLock *)self->_inspectablePropertiesLock lock];
  inspectableProperties = self->_inspectableProperties;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = *"";
  v12[2] = __29__PVEffect_effectDescription__block_invoke;
  v12[3] = &unk_279AA5D38;
  v7 = dictionary;
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
  effectDescription = [(PVEffect *)self effectDescription];
  v4 = [v2 stringWithFormat:@"%@", effectDescription];

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

- (void)setEffectRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_effectRange.start.epoch = *&range->var0.var3;
  *&self->_effectRange.duration.timescale = v4;
  *&self->_effectRange.start.value = v3;
}

- (BOOL)applyTimedPropertiesForTime:(id *)time
{
  timedPropertiesComponent = self->_timedPropertiesComponent;
  v5 = *time;
  return [(PVEffectTimedPropertiesComponent *)timedPropertiesComponent applyTimedPropertiesForTime:&v5];
}

- (id)userContextForTimedPropertiesDelegate:(id)delegate
{
  v3 = [(PVEffectTimedPropertiesComponent *)self->_timedPropertiesComponent userContextForTimedPropertiesDelegate:delegate];

  return v3;
}

- (void)runWithInspectableProperties:(id)properties
{
  propertiesCopy = properties;
  [(NSLock *)self->_inspectablePropertiesLock lock];
  propertiesCopy[2](propertiesCopy, self->_inspectableProperties);
  [(NSLock *)self->_inspectablePropertiesLock unlock];
}

- (void)runWithInspectableProperties_NoLock:(id)lock
{
  lockCopy = lock;
  [(PVEffect *)self assertInspectablePropertiesAreLocked];
  lockCopy[2](lockCopy, self->_inspectableProperties);
}

+ (id)attributeForName:(id)name fromAttributedString:(id)string defaultAttributes:(id)attributes
{
  nameCopy = name;
  stringCopy = string;
  attributesCopy = attributes;
  if ([stringCopy length])
  {
    [stringCopy attribute:nameCopy atIndex:0 effectiveRange:0];
  }

  else
  {
    [attributesCopy objectForKeyedSubscript:nameCopy];
  }
  v10 = ;

  return v10;
}

+ (int64_t)verticalAlignmentFromAttributedString:(id)string defaultAttributes:(id)attributes
{
  v4 = [self attributeForName:@"TXTextVerticalAlignment" fromAttributedString:string defaultAttributes:attributes];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue >= 3)
    {
      v7 = -1;
    }

    else
    {
      v7 = integerValue;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (double)textHeightFromAttributedString:(id)string defaultAttributes:(id)attributes scale:(double)scale
{
  stringCopy = string;
  attributesCopy = attributes;
  if ([stringCopy length] && (objc_msgSend(stringCopy, "attribute:atIndex:effectiveRange:", @"TXTextHeight", 0, 0), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) != 0))
  {
    [v9 doubleValue];
    v12 = v11;
    v13 = [stringCopy attribute:@"TXTextDynamicLineSpacing" atIndex:0 effectiveRange:0];
    [v13 doubleValue];
    v15 = v12 * scale + v14 * scale;
  }

  else
  {
    v16 = *MEMORY[0x277D740A8];
    v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    if (!v10)
    {
      if ([stringCopy length])
      {
        v10 = [stringCopy attribute:v16 atIndex:0 effectiveRange:0];
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

+ (id)shadowFromAttributedString:(id)string defaultAttributes:(id)attributes
{
  v4 = [self attributeForName:*MEMORY[0x277D74138] fromAttributedString:string defaultAttributes:attributes];

  return v4;
}

+ (double)xOffsetForTextTrackingFromAttributedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy attribute:@"TXTrackingValue" atIndex:0 effectiveRange:0];
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

+ (BOOL)isAllCapsFromAttributes:(id)attributes
{
  v3 = [attributes objectForKeyedSubscript:@"MotionTextStyleAllCapsAttributeName"];
  v4 = [v3 integerValue] > 0;

  return v4;
}

+ (double)baselineOffsetFromAttributedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy attribute:*MEMORY[0x277D74078] atIndex:0 effectiveRange:0];
    [v4 doubleValue];
    v6 = -v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

+ (void)modifyAttributedStringByAdjustingFontSize:(id)size scale:(double)scale
{
  sizeCopy = size;
  if ([sizeCopy length])
  {
    v5 = *MEMORY[0x277D740A8];
    v6 = [sizeCopy attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    v7 = v6;
    if (v6)
    {
      [v6 pointSize];
      v9 = [v7 fontWithSize:fabs(scale) * v8];

      v10 = [sizeCopy length];
      [sizeCopy removeAttribute:v5 range:{0, v10}];
      [sizeCopy addAttribute:v5 value:v9 range:{0, v10}];
    }

    else
    {
      v9 = 0;
    }
  }
}

+ (void)modifyAttributedStringByAdjustingShadow:(id)shadow effectTransform:(id)transform
{
  shadowCopy = shadow;
  transformCopy = transform;
  if ([shadowCopy length])
  {
    string = [shadowCopy string];
    v9 = [string isEqualToString:@" "];

    if ((v9 & 1) == 0)
    {
      v10 = [shadowCopy attribute:*MEMORY[0x277D74138] atIndex:0 effectiveRange:0];
      if (v10)
      {
        v23 = xmmword_260342820;
        v24 = qword_260342830;
        v25 = xmmword_260342840;
        v26 = qword_260342850;
        memset(v20, 0, sizeof(v20));
        v21 = xmmword_260342800;
        v22 = qword_260342810;
        if (transformCopy)
        {
          [transformCopy SIMDDouble4x4];
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
        [self modifyAttributedStringByAdjustingShadow:shadowCopy scale:*&v23 rotation:*&v13 + 3.14159265];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingShadow:(id)shadow scale:(double)scale rotation:(double)rotation
{
  shadowCopy = shadow;
  if ([shadowCopy length])
  {
    string = [shadowCopy string];
    v9 = [string isEqualToString:@" "];

    if ((v9 & 1) == 0)
    {
      v10 = *MEMORY[0x277D74138];
      v11 = [shadowCopy attribute:*MEMORY[0x277D74138] atIndex:0 effectiveRange:0];
      v12 = v11;
      if (v11)
      {
        v36 = 0.0;
        v37 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        shadowColor = [v11 shadowColor];
        [shadowColor getRed:&v37 green:&v36 blue:&v35 alpha:&v34];
        v34 = v34 * v34;
        v14 = [MEMORY[0x277D75348] colorWithRed:v37 green:v36 blue:v35 alpha:?];
        [v12 setShadowColor:v14];

        [v12 shadowBlurRadius];
        [v12 setShadowBlurRadius:v15 * 0.5];
        [v12 shadowBlurRadius];
        v31 = fabs(scale);
        [v12 setShadowBlurRadius:v31 * v16];
        [v12 shadowOffset];
        v29 = v18;
        v30 = v17;
        v19 = [shadowCopy attribute:@"TXTextDropShadowIsFixedSource" atIndex:0 effectiveRange:0];
        bOOLValue = [v19 BOOLValue];
        v21.f64[0] = v30;
        v21.f64[1] = v29;
        v32 = vmulq_n_f64(v21, v31);

        if (bOOLValue)
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
          v27 = __sincos_stret(v22 - rotation);
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
        v28 = [shadowCopy length];
        [shadowCopy removeAttribute:v10 range:{0, v28}];
        [shadowCopy addAttribute:v10 value:v12 range:{0, v28}];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingOutline:(id)outline attributes:(id)attributes range:(_NSRange)range scale:(double)scale
{
  length = range.length;
  location = range.location;
  outlineCopy = outline;
  attributesCopy = attributes;
  if ([outlineCopy length])
  {
    v11 = *MEMORY[0x277D74160];
    v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D74160]];
    if (v12)
    {
      v13 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      [v13 pointSize];
      v15 = v14;
      if (v14 == 0.0)
      {
        [outlineCopy removeAttribute:v11 range:{location, length}];
      }

      else
      {
        v16 = MEMORY[0x277CCABB0];
        [v12 doubleValue];
        v18 = [v16 numberWithDouble:fabs(scale) * (100.0 / v15 * v17)];
        [outlineCopy removeAttribute:v11 range:{location, length}];
        [outlineCopy addAttribute:v11 value:v18 range:{location, length}];
      }
    }
  }
}

+ (void)modifyAttributedStringByAdjustingKerning:(id)kerning attributes:(id)attributes range:(_NSRange)range scale:(double)scale
{
  length = range.length;
  location = range.location;
  kerningCopy = kerning;
  attributesCopy = attributes;
  if ([kerningCopy length])
  {
    v11 = *MEMORY[0x277D740D0];
    v12 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740D0]];
    v13 = v12;
    if (v12)
    {
      v14 = MEMORY[0x277CCABB0];
      [v12 doubleValue];
      v16 = [v14 numberWithDouble:fabs(scale) * v15];
      [kerningCopy removeAttribute:v11 range:{location, length}];
      [kerningCopy addAttribute:v11 value:v16 range:{location, length}];
    }
  }
}

+ (void)modifyAttributedStringByAdjustingForNegativeLineSpacing:(id)spacing scale:(double)scale
{
  spacingCopy = spacing;
  if ([spacingCopy length])
  {
    v5 = *MEMORY[0x277D74118];
    v6 = [spacingCopy attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0];
    v7 = v6;
    if (v6)
    {
      [v6 lineSpacing];
      if (v8 != 0.0)
      {
        v9 = [spacingCopy length];
        v10 = [v7 mutableCopy];
        [v7 lineSpacing];
        v11 = fabs(scale);
        [v10 setLineSpacing:v11 * v12];
        [spacingCopy removeAttribute:v5 range:{0, v9}];
        [spacingCopy addAttribute:v5 value:v10 range:{0, v9}];
        [v7 lineSpacing];
        if (v13 <= 0.0)
        {
          string = [spacingCopy string];
          newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
          v16 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];

          if ([v16 count])
          {
            v34 = [spacingCopy attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
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

                [spacingCopy addAttribute:v5 value:v31 range:{v27, v33}];
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

+ (void)modifyAttributedStringByAdjustingFont:(id)font toFitSize:(CGSize)size
{
  width = size.width;
  fontCopy = font;
  if ([fontCopy length])
  {
    v6 = *MEMORY[0x277D740A8];
    v22 = [fontCopy attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    v7 = [fontCopy length];
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
      v15 = fontCopy;
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

+ (void)modifyAttributedStringByApplyingSubstituteFont:(id)font attributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  fontCopy = font;
  attributesCopy = attributes;
  if ([fontCopy length])
  {
    v9 = *MEMORY[0x277D740A8];
    v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    if (v10)
    {
      v11 = [attributesCopy objectForKeyedSubscript:@"TXSubstituteFont"];
      if (v11)
      {
        [v10 pointSize];
        v12 = [v11 fontWithSize:?];
        if (v12)
        {
          [fontCopy removeAttribute:v9 range:{location, length}];
          [fontCopy addAttribute:v9 value:v12 range:{location, length}];
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
  [self ensureEffectsRegistered];

  return [self _effectRegistry];
}

+ (void)deferEffectRegistrationForClass:(Class)class
{
  classCopy = class;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  if (gCalledDeferredRegistrations)
  {
    objc_sync_exit(v4);

    [(objc_class *)class runDeferredRegistration];
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

    std::vector<objc_class * {__strong}>::push_back[abi:ne200100](v5, &classCopy);
    objc_sync_exit(v4);
  }
}

+ (void)registerEffectClass:(Class)class forEffectID:(id)d withProperties:(id)properties
{
  dCopy = d;
  propertiesCopy = properties;
  if (class && dCopy)
  {
    _effectRegistry = [self _effectRegistry];
    v10 = [_effectRegistry objectForKey:dCopy];

    if (v10)
    {
      v11 = [_effectRegistry objectForKey:dCopy];
      ClassName = object_getClassName([v11 effectClass]);
      v13 = object_getClassName(class);
      NSLog(&cfstr_PveffectWarnin_0.isa, dCopy, ClassName, v13);
    }

    v14 = [[PVEffectRegistryEntry alloc] initWithClass:class andProperties:propertiesCopy];
    [_effectRegistry setObject:v14 forKey:dCopy];
  }

  else
  {
    v15 = object_getClassName(class);
    NSLog(&cfstr_PveffectWarnin.isa, dCopy, v15);
  }
}

+ (id)newEffectWithID:(id)d
{
  dCopy = d;
  _effectRegistryForLookup = [self _effectRegistryForLookup];
  v6 = [_effectRegistryForLookup objectForKey:dCopy];

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

+ (id)newEffectWithURL:(id)l
{
  v3 = [PVMotionEffect newEffectWithURL:l];
  [v3 _postInit:0];
  return v3;
}

+ (id)newEffectWithData:(id)data
{
  v3 = [PVMotionEffect newEffectWithData:data];
  [v3 _postInit:0];
  return v3;
}

+ (BOOL)effectIDIsRegistered:(id)registered
{
  registeredCopy = registered;
  _effectRegistryForLookup = [self _effectRegistryForLookup];
  v6 = [_effectRegistryForLookup objectForKey:registeredCopy];

  return v6 != 0;
}

+ (BOOL)effectIDIsNone:(id)none
{
  noneCopy = none;
  if (+[PVEffect(PVEffectRegistry) effectIDIsNone:]::onceToken != -1)
  {
    +[PVEffect(PVEffectRegistry) effectIDIsNone:];
  }

  v4 = [+[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs containsObject:noneCopy];

  return v4;
}

void __45__PVEffect_PVEffectRegistry__effectIDIsNone___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"737C8717-70E0-4CCE-8F19-17A0532E836F", @"4390FE7A-3408-4EB5-A049-AA394C03A911", @"67EB7544-E4A1-4508-9733-E201AADFBC15", 0}];
  v1 = +[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs;
  +[PVEffect(PVEffectRegistry) effectIDIsNone:]::noneEffectIDs = v0;
}

+ (id)_registryEntryForEffectID:(id)d
{
  dCopy = d;
  _effectRegistryForLookup = [self _effectRegistryForLookup];
  v6 = [_effectRegistryForLookup objectForKey:dCopy];

  if (!v6)
  {
    NSLog(&cfstr_PveffectWarnin_1.isa, dCopy);
  }

  return v6;
}

+ (id)propertiesForEffect:(id)effect
{
  v3 = [self _registryEntryForEffectID:effect];
  effectProperties = [v3 effectProperties];

  return effectProperties;
}

+ (id)allRegisteredEffectIDs
{
  _effectRegistryForLookup = [self _effectRegistryForLookup];
  allKeys = [_effectRegistryForLookup allKeys];

  return allKeys;
}

+ (id)userVisibleEffectIDs
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
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
        bOOLValue = [v7 BOOLValue];

        v9 = [v6 objectForKey:@"FFEffectProperty_AvailableInSimpleMode"];
        bOOLValue2 = [v9 BOOLValue];

        if (!(bOOLValue & 1 | ((bOOLValue2 & 1) == 0)))
        {
          [array addObject:v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }

  return array;
}

+ (id)effectTypeForEffectID:(id)d
{
  v3 = [self propertiesForEffect:d];
  v4 = [v3 objectForKey:@"FFEffectProperty_EffectType"];

  return v4;
}

+ (id)registeredEffectIDsForEffectType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allRegisteredEffectIDs = [self allRegisteredEffectIDs];
  v7 = [allRegisteredEffectIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allRegisteredEffectIDs);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [self effectTypeForEffectID:v10];
        v12 = [v11 isEqualToString:typeCopy];

        if (v12)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [allRegisteredEffectIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)registeredEffectIDsForEffectTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = typesCopy;
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

        v10 = [self registeredEffectIDsForEffectType:{*(*(&v12 + 1) + 8 * i), v12}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)firstRegisteredEffectIDContainingSubstring:(id)substring
{
  v15 = *MEMORY[0x277D85DE8];
  substringCopy = substring;
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
        if ([v8 rangeOfString:substringCopy] != 0x7FFFFFFFFFFFFFFFLL)
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

+ (Class)classForEffectID:(id)d
{
  v3 = [self _registryEntryForEffectID:d];
  effectClass = [v3 effectClass];

  return effectClass;
}

+ (id)registeredEffectIDsForClass:(Class)class
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allRegisteredEffectIDs = [self allRegisteredEffectIDs];
  v7 = [allRegisteredEffectIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allRegisteredEffectIDs);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([self classForEffectID:v10] == class)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [allRegisteredEffectIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)displayNameForEffectType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"effect.video.filter"])
  {
    v4 = @"Effects";
  }

  else if ([typeCopy isEqualToString:@"effect.video.generator"])
  {
    v4 = @"Generators";
  }

  else if ([typeCopy isEqualToString:@"effect.video.transition"])
  {
    v4 = @"Transitions";
  }

  else if ([typeCopy isEqualToString:@"effect.video.compositor"])
  {
    v4 = @"Composite Operations";
  }

  else if ([typeCopy isEqualToString:@"effect.video.multiplexor"])
  {
    v4 = @"Multiplexor Operations";
  }

  else if ([typeCopy isEqualToString:@"effect.video.title"])
  {
    v4 = @"Titles";
  }

  else if ([typeCopy isEqualToString:@"effect.audio.effect"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"effect.audio.generator") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"effect.audio.transition"))
  {
    v4 = @"Audio Effects";
  }

  else if ([typeCopy isEqualToString:@"effect.audio.offline-effect"])
  {
    v4 = @"Audio Offline Effect";
  }

  else if ([typeCopy isEqualToString:@"effect.audio.music-instrument"])
  {
    v4 = @"Audio Instrument";
  }

  else
  {
    v4 = @"All Types";
  }

  return v4;
}

+ (id)displayNameForEffectID:(id)d
{
  v3 = [self propertiesForEffect:d];
  v4 = [v3 objectForKey:@"FFEffectProperty_DisplayName"];

  return v4;
}

+ (id)categoryForEffectID:(id)d
{
  v3 = [self propertiesForEffect:d];
  v4 = [v3 objectForKey:@"FFEffectProperty_Category"];

  return v4;
}

+ (id)themeForEffectID:(id)d
{
  v3 = [self propertiesForEffect:d];
  v4 = [v3 objectForKey:@"kFFEffectProperty_Theme"];

  return v4;
}

+ (id)descriptionForEffectID:(id)d
{
  v3 = [self propertiesForEffect:d];
  v4 = [v3 objectForKey:@"FFEffectProperty_Description"];

  return v4;
}

+ (BOOL)isVideoForEffectID:(id)d
{
  v3 = [PVEffect effectTypeForEffectID:d];
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"FFDefaultVideoTransition"];

  if (!v3)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 setObject:@"FxPlug:4731E73A-8DAC-4113-9A30-AE85B1761265" forKey:@"FFDefaultVideoTransition"];

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

+ (void)_registerEffectsInBundle:(id)bundle atPath:(id)path
{
  bundleCopy = bundle;
  principalClass = [bundleCopy principalClass];
  if ([principalClass isSubclassOfClass:objc_opt_class()])
  {
    _registeredEffectClasses = [self _registeredEffectClasses];
    v7 = [_registeredEffectClasses containsObject:principalClass];

    if ((v7 & 1) == 0)
    {
      [principalClass registerEffects];
      _registeredEffectClasses2 = [self _registeredEffectClasses];
      [_registeredEffectClasses2 addObject:principalClass];
    }
  }
}

+ (void)initEffectRegistryWithHostDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_opt_self();

  if (v5 == self)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = *"";
    v7[2] = __69__PVEffect_RuntimeBundleLoading__initEffectRegistryWithHostDelegate___block_invoke;
    v7[3] = &unk_279AA4DD8;
    v8 = delegateCopy;
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

+ (void)willTerminate:(id)terminate
{
  v4 = objc_opt_self();

  if (v4 == self)
  {
    +[PVEffect handleApplicationWillTerminate];

    +[PVMotionEffect handleApplicationWillTerminate];
  }
}

+ (void)clearPreviewStats
{
  if (objc_opt_class() == self)
  {

    +[PVMotionEffect clearPreviewStats];
  }
}

@end