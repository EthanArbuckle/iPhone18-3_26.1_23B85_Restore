@interface PIEffectAdjustmentController
- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4;
- (NSString)kind;
- (double)intensity;
- (int64_t)version;
- (void)setIntensity:(double)a3;
- (void)setKind:(id)a3;
- (void)setVersion:(int64_t)a3;
@end

@implementation PIEffectAdjustmentController

- (double)intensity
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController intensityKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  objc_opt_class();
  v5 = 1.0;
  if (objc_opt_isKindOfClass())
  {
    [v4 floatValue];
    v5 = v6;
  }

  return v5;
}

- (void)setIntensity:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController intensityKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)version
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController versionKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setVersion:(int64_t)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController versionKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSString)kind
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIEffectAdjustmentController kindKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setKind:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIEffectAdjustmentController kindKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v6 objectForKeyedSubscript:v7];
  v11 = +[PIEffectAdjustmentController intensityKey];
  v12 = [v7 isEqualToString:v11];

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
    v16 = [(PIAdjustmentController *)&v18 isSettingEqual:v6 forKey:v7];
  }

  return v16;
}

@end