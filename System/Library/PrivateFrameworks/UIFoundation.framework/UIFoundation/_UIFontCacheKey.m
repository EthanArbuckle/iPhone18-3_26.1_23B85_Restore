@interface _UIFontCacheKey
+ (id)newFontCacheKeyWithFontDescriptor:(id)a3 pointSize:(double)a4 textStyleForScaling:(id)a5 pointSizeForScaling:(double)a6 maximumPointSizeAfterScaling:(double)a7 textLegibility:(BOOL)a8;
+ (id)newFontCacheKeyWithFontName:(id)a3 traits:(int)a4 pointSize:(double)a5;
+ (id)newFontCacheKeyWithTextStyle:(id)a3 contentSizeCategory:(id)a4 textLegibility:(BOOL)a5;
+ (id)newSystemFontCacheKeyWithDesign:(id)a3 weight:(double)a4 width:(id)a5 pointSize:(double)a6 monospacedDigits:(BOOL)a7;
+ (id)newSystemFontCacheKeyWithTraits:(int)a3 pointSize:(double)a4 width:(id)a5;
- (BOOL)isEqual:(id)a3;
@end

@implementation _UIFontCacheKey

+ (id)newFontCacheKeyWithFontName:(id)a3 traits:(int)a4 pointSize:(double)a5
{
  v6 = *&a4;
  v8 = objc_alloc_init(_UIFontNameCacheKey);
  [(_UIFontNameCacheKey *)v8 setFontName:a3];
  [(_UIFontNameCacheKey *)v8 setTraits:v6];
  [(_UIFontNameCacheKey *)v8 setPointSize:a5];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newSystemFontCacheKeyWithTraits:(int)a3 pointSize:(double)a4 width:(id)a5
{
  v7 = *&a3;
  v8 = objc_alloc_init(_UIFontSystemCacheKey);
  [(_UIFontSystemCacheKey *)v8 setTraits:v7];
  [(_UIFontSystemCacheKey *)v8 setPointSize:a4];
  [(_UIFontSystemCacheKey *)v8 setWidth:a5];
  [(_UIFontSystemCacheKey *)v8 setTextLegibility:_AXSEnhanceTextLegibilityEnabled() != 0];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newSystemFontCacheKeyWithDesign:(id)a3 weight:(double)a4 width:(id)a5 pointSize:(double)a6 monospacedDigits:(BOOL)a7
{
  v7 = a7;
  v12 = objc_alloc_init(_UIFontSystemCacheKey);
  [(_UIFontSystemCacheKey *)v12 setDesign:a3];
  [(_UIFontSystemCacheKey *)v12 setWeight:a4];
  [(_UIFontSystemCacheKey *)v12 setWidth:a5];
  [(_UIFontSystemCacheKey *)v12 setPointSize:a6];
  [(_UIFontSystemCacheKey *)v12 setMonospacedDigits:v7];
  [(_UIFontSystemCacheKey *)v12 setTextLegibility:_AXSEnhanceTextLegibilityEnabled() != 0];
  [(_UIFontCacheKey *)v12 _precalculateHash];
  return v12;
}

+ (id)newFontCacheKeyWithTextStyle:(id)a3 contentSizeCategory:(id)a4 textLegibility:(BOOL)a5
{
  v5 = a5;
  v8 = objc_alloc_init(_UIFontTextStyleCacheKey);
  [(_UIFontTextStyleCacheKey *)v8 setTextStyle:a3];
  [(_UIFontTextStyleCacheKey *)v8 setContentSizeCategory:a4];
  [(_UIFontTextStyleCacheKey *)v8 setTextLegibility:v5];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newFontCacheKeyWithFontDescriptor:(id)a3 pointSize:(double)a4 textStyleForScaling:(id)a5 pointSizeForScaling:(double)a6 maximumPointSizeAfterScaling:(double)a7 textLegibility:(BOOL)a8
{
  v8 = a8;
  v14 = objc_alloc_init(_UIFontDescriptorCacheKey);
  [(_UIFontDescriptorCacheKey *)v14 setFontDescriptor:a3];
  [(_UIFontDescriptorCacheKey *)v14 setPointSize:a4];
  [(_UIFontDescriptorCacheKey *)v14 setTextStyleForScaling:a5];
  [(_UIFontDescriptorCacheKey *)v14 setPointSizeForScaling:a6];
  [(_UIFontDescriptorCacheKey *)v14 setMaximumPointSizeAfterScaling:a7];
  [(_UIFontDescriptorCacheKey *)v14 setTextLegibility:v8];
  [(_UIFontCacheKey *)v14 _precalculateHash];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  hash = self->_hash;
  if (hash != [a3 hash])
  {
    return 0;
  }

  return [(_UIFontCacheKey *)self _isEqualToKey:a3];
}

@end