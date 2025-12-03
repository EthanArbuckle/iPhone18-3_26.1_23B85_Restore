@interface _UIFontCacheKey
+ (id)newFontCacheKeyWithFontDescriptor:(id)descriptor pointSize:(double)size textStyleForScaling:(id)scaling pointSizeForScaling:(double)forScaling maximumPointSizeAfterScaling:(double)afterScaling textLegibility:(BOOL)legibility;
+ (id)newFontCacheKeyWithFontName:(id)name traits:(int)traits pointSize:(double)size;
+ (id)newFontCacheKeyWithTextStyle:(id)style contentSizeCategory:(id)category textLegibility:(BOOL)legibility;
+ (id)newSystemFontCacheKeyWithDesign:(id)design weight:(double)weight width:(id)width pointSize:(double)size monospacedDigits:(BOOL)digits;
+ (id)newSystemFontCacheKeyWithTraits:(int)traits pointSize:(double)size width:(id)width;
- (BOOL)isEqual:(id)equal;
@end

@implementation _UIFontCacheKey

+ (id)newFontCacheKeyWithFontName:(id)name traits:(int)traits pointSize:(double)size
{
  v6 = *&traits;
  v8 = objc_alloc_init(_UIFontNameCacheKey);
  [(_UIFontNameCacheKey *)v8 setFontName:name];
  [(_UIFontNameCacheKey *)v8 setTraits:v6];
  [(_UIFontNameCacheKey *)v8 setPointSize:size];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newSystemFontCacheKeyWithTraits:(int)traits pointSize:(double)size width:(id)width
{
  v7 = *&traits;
  v8 = objc_alloc_init(_UIFontSystemCacheKey);
  [(_UIFontSystemCacheKey *)v8 setTraits:v7];
  [(_UIFontSystemCacheKey *)v8 setPointSize:size];
  [(_UIFontSystemCacheKey *)v8 setWidth:width];
  [(_UIFontSystemCacheKey *)v8 setTextLegibility:_AXSEnhanceTextLegibilityEnabled() != 0];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newSystemFontCacheKeyWithDesign:(id)design weight:(double)weight width:(id)width pointSize:(double)size monospacedDigits:(BOOL)digits
{
  digitsCopy = digits;
  v12 = objc_alloc_init(_UIFontSystemCacheKey);
  [(_UIFontSystemCacheKey *)v12 setDesign:design];
  [(_UIFontSystemCacheKey *)v12 setWeight:weight];
  [(_UIFontSystemCacheKey *)v12 setWidth:width];
  [(_UIFontSystemCacheKey *)v12 setPointSize:size];
  [(_UIFontSystemCacheKey *)v12 setMonospacedDigits:digitsCopy];
  [(_UIFontSystemCacheKey *)v12 setTextLegibility:_AXSEnhanceTextLegibilityEnabled() != 0];
  [(_UIFontCacheKey *)v12 _precalculateHash];
  return v12;
}

+ (id)newFontCacheKeyWithTextStyle:(id)style contentSizeCategory:(id)category textLegibility:(BOOL)legibility
{
  legibilityCopy = legibility;
  v8 = objc_alloc_init(_UIFontTextStyleCacheKey);
  [(_UIFontTextStyleCacheKey *)v8 setTextStyle:style];
  [(_UIFontTextStyleCacheKey *)v8 setContentSizeCategory:category];
  [(_UIFontTextStyleCacheKey *)v8 setTextLegibility:legibilityCopy];
  [(_UIFontCacheKey *)v8 _precalculateHash];
  return v8;
}

+ (id)newFontCacheKeyWithFontDescriptor:(id)descriptor pointSize:(double)size textStyleForScaling:(id)scaling pointSizeForScaling:(double)forScaling maximumPointSizeAfterScaling:(double)afterScaling textLegibility:(BOOL)legibility
{
  legibilityCopy = legibility;
  v14 = objc_alloc_init(_UIFontDescriptorCacheKey);
  [(_UIFontDescriptorCacheKey *)v14 setFontDescriptor:descriptor];
  [(_UIFontDescriptorCacheKey *)v14 setPointSize:size];
  [(_UIFontDescriptorCacheKey *)v14 setTextStyleForScaling:scaling];
  [(_UIFontDescriptorCacheKey *)v14 setPointSizeForScaling:forScaling];
  [(_UIFontDescriptorCacheKey *)v14 setMaximumPointSizeAfterScaling:afterScaling];
  [(_UIFontDescriptorCacheKey *)v14 setTextLegibility:legibilityCopy];
  [(_UIFontCacheKey *)v14 _precalculateHash];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  hash = self->_hash;
  if (hash != [equal hash])
  {
    return 0;
  }

  return [(_UIFontCacheKey *)self _isEqualToKey:equal];
}

@end