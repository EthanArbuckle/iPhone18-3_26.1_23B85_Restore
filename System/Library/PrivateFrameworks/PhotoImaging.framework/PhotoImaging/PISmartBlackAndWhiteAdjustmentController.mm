@interface PISmartBlackAndWhiteAdjustmentController
+ (NSString)attributeGrainKey;
+ (NSString)attributeHueKey;
+ (NSString)attributeNeutralGammaKey;
+ (NSString)attributeStrengthKey;
+ (NSString)attributeToneKey;
- (double)grain;
- (double)hue;
- (double)neutral;
- (double)strength;
- (double)tone;
- (id)multiSettingKey;
- (void)setGrain:(double)grain;
- (void)setHue:(double)hue;
- (void)setNeutral:(double)neutral;
- (void)setStrength:(double)strength;
- (void)setTone:(double)tone;
@end

@implementation PISmartBlackAndWhiteAdjustmentController

+ (NSString)attributeGrainKey
{
  v2 = objc_opt_class();

  return [v2 inputGrainKey];
}

+ (NSString)attributeHueKey
{
  v2 = objc_opt_class();

  return [v2 inputHueKey];
}

+ (NSString)attributeToneKey
{
  v2 = objc_opt_class();

  return [v2 inputToneKey];
}

+ (NSString)attributeNeutralGammaKey
{
  v2 = objc_opt_class();

  return [v2 inputNeutralGammaKey];
}

+ (NSString)attributeStrengthKey
{
  v2 = objc_opt_class();

  return [v2 inputStrengthKey];
}

- (id)multiSettingKey
{
  v2 = objc_opt_class();

  return [v2 hueKey];
}

- (double)hue
{
  hueKey = [objc_opt_class() hueKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:hueKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setHue:(double)hue
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:hue];
  hueKey = [objc_opt_class() hueKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:hueKey];
}

- (double)grain
{
  grainKey = [objc_opt_class() grainKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:grainKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrain:(double)grain
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:grain];
  grainKey = [objc_opt_class() grainKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:grainKey];
}

- (double)tone
{
  toneKey = [objc_opt_class() toneKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:toneKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTone:(double)tone
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:tone];
  toneKey = [objc_opt_class() toneKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:toneKey];
}

- (double)neutral
{
  neutralKey = [objc_opt_class() neutralKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:neutralKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setNeutral:(double)neutral
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:neutral];
  neutralKey = [objc_opt_class() neutralKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:neutralKey];
}

- (double)strength
{
  strengthKey = [objc_opt_class() strengthKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:strengthKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setStrength:(double)strength
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
  strengthKey = [objc_opt_class() strengthKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:strengthKey];
}

@end