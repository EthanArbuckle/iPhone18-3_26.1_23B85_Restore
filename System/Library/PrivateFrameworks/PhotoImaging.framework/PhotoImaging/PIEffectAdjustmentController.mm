@interface PIEffectAdjustmentController
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (NSString)kind;
- (double)intensity;
- (int64_t)version;
- (void)setIntensity:(double)intensity;
- (void)setKind:(id)kind;
- (void)setVersion:(int64_t)version;
@end

@implementation PIEffectAdjustmentController

- (double)intensity
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController intensityKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 floatValue];
    v5 = v6;
  }

  return v5;
}

- (void)setIntensity:(double)intensity
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:intensity];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController intensityKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)version
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController versionKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setVersion:(int64_t)version
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController versionKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (NSString)kind
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController kindKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (void)setKind:(id)kind
{
  v6 = [kind copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController kindKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  equalCopy = equal;
  keyCopy = key;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v9 = [adjustment objectForKeyedSubscript:keyCopy];

  v10 = [equalCopy objectForKeyedSubscript:keyCopy];
  v11 = +[PIEffectAdjustmentController intensityKey];
  v12 = [keyCopy isEqualToString:v11];

  if (v12)
  {
    [v9 doubleValue];
    v14 = v13;
    [v10 doubleValue];
    v16 = round(v14 * 100.0) == round(v15 * 100.0);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PIEffectAdjustmentController;
    v16 = [(PIAdjustmentController *)&v18 isSettingEqual:equalCopy forKey:keyCopy];
  }

  return v16;
}

@end