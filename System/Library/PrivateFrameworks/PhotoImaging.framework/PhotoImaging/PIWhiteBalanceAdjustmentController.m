@interface PIWhiteBalanceAdjustmentController
+ (id)stringForColorType:(int64_t)a3;
+ (int64_t)colorTypeForString:(id)a3;
- (BOOL)warmFace;
- (double)faceI;
- (double)faceQ;
- (double)faceStrength;
- (double)faceWarmth;
- (double)grayI;
- (double)grayQ;
- (double)grayStrength;
- (double)grayWarmth;
- (double)grayY;
- (double)temperature;
- (double)tint;
- (double)warmTemp;
- (double)warmTint;
- (int64_t)colorType;
- (void)setColorType:(int64_t)a3;
- (void)setFaceI:(double)a3;
- (void)setFaceQ:(double)a3;
- (void)setFaceStrength:(double)a3;
- (void)setFaceWarmth:(double)a3;
- (void)setGrayI:(double)a3;
- (void)setGrayQ:(double)a3;
- (void)setGrayStrength:(double)a3;
- (void)setGrayWarmth:(double)a3;
- (void)setGrayY:(double)a3;
- (void)setTemperature:(double)a3;
- (void)setTint:(double)a3;
- (void)setWarmFace:(BOOL)a3;
- (void)setWarmTemp:(double)a3;
- (void)setWarmTint:(double)a3;
@end

@implementation PIWhiteBalanceAdjustmentController

- (void)setWarmFace:(BOOL)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController warmFaceKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)warmFace
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmFaceKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)setWarmTint:(double)a3
{
  if ([(PIWhiteBalanceAdjustmentController *)self warmFace])
  {
    [(PIAdjustmentController *)self setIsAuto:0];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (double)warmTint
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setWarmTemp:(double)a3
{
  if ([(PIWhiteBalanceAdjustmentController *)self warmFace])
  {
    [(PIAdjustmentController *)self setIsAuto:0];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (double)warmTemp
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTint:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController tintKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)tint
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController tintKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTemperature:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController temperatureKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)temperature
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController temperatureKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayQ:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayQKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)grayQ
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayQKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayI:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayIKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)grayI
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayIKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayY:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayYKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)grayY
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayYKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayWarmth:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayWarmthKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)grayWarmth
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayWarmthKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayStrength:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayStrengthKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)grayStrength
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayStrengthKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceQ:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceQKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)faceQ
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceQKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceI:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceIKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)faceI
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceIKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceWarmth:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceWarmthKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)faceWarmth
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceWarmthKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceStrength:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceStrengthKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)faceStrength
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceStrengthKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setColorType:(int64_t)a3
{
  v6 = [objc_opt_class() stringForColorType:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController colorTypeKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)colorType
{
  v3 = objc_opt_class();
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController colorTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v3 colorTypeForString:v6];

  return v7;
}

+ (id)stringForColorType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E82ACA90[a3];
  }
}

+ (int64_t)colorTypeForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"neutralGray"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"faceBalance"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"tempTint"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"warmTint"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end