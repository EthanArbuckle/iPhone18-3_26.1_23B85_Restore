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
- (void)setGrain:(double)a3;
- (void)setHue:(double)a3;
- (void)setNeutral:(double)a3;
- (void)setStrength:(double)a3;
- (void)setTone:(double)a3;
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
  v3 = [objc_opt_class() hueKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setHue:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [objc_opt_class() hueKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)grain
{
  v3 = [objc_opt_class() grainKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrain:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [objc_opt_class() grainKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)tone
{
  v3 = [objc_opt_class() toneKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTone:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [objc_opt_class() toneKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)neutral
{
  v3 = [objc_opt_class() neutralKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setNeutral:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [objc_opt_class() neutralKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)strength
{
  v3 = [objc_opt_class() strengthKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setStrength:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [objc_opt_class() strengthKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

@end