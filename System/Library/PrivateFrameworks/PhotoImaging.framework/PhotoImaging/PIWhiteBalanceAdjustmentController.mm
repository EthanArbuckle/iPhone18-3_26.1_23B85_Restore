@interface PIWhiteBalanceAdjustmentController
+ (id)stringForColorType:(int64_t)type;
+ (int64_t)colorTypeForString:(id)string;
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
- (void)setColorType:(int64_t)type;
- (void)setFaceI:(double)i;
- (void)setFaceQ:(double)q;
- (void)setFaceStrength:(double)strength;
- (void)setFaceWarmth:(double)warmth;
- (void)setGrayI:(double)i;
- (void)setGrayQ:(double)q;
- (void)setGrayStrength:(double)strength;
- (void)setGrayWarmth:(double)warmth;
- (void)setGrayY:(double)y;
- (void)setTemperature:(double)temperature;
- (void)setTint:(double)tint;
- (void)setWarmFace:(BOOL)face;
- (void)setWarmTemp:(double)temp;
- (void)setWarmTint:(double)tint;
@end

@implementation PIWhiteBalanceAdjustmentController

- (void)setWarmFace:(BOOL)face
{
  v6 = [MEMORY[0x1E696AD98] numberWithBool:face];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController warmFaceKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)warmFace
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmFaceKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)setWarmTint:(double)tint
{
  if ([(PIWhiteBalanceAdjustmentController *)self warmFace])
  {
    [(PIAdjustmentController *)self setIsAuto:0];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:tint];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  [adjustment setObject:v7 forKeyedSubscript:v6];
}

- (double)warmTint
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmTintKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setWarmTemp:(double)temp
{
  if ([(PIWhiteBalanceAdjustmentController *)self warmFace])
  {
    [(PIAdjustmentController *)self setIsAuto:0];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:temp];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  [adjustment setObject:v7 forKeyedSubscript:v6];
}

- (double)warmTemp
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController warmTempKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTint:(double)tint
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:tint];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController tintKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)tint
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController tintKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTemperature:(double)temperature
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:temperature];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController temperatureKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)temperature
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController temperatureKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayQ:(double)q
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:q];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayQKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)grayQ
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayQKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayI:(double)i
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:i];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayIKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)grayI
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayIKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayY:(double)y
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayYKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)grayY
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayYKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayWarmth:(double)warmth
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:warmth];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayWarmthKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)grayWarmth
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayWarmthKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setGrayStrength:(double)strength
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController grayStrengthKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)grayStrength
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController grayStrengthKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceQ:(double)q
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:q];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceQKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)faceQ
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceQKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceI:(double)i
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:i];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceIKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)faceI
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceIKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceWarmth:(double)warmth
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:warmth];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceWarmthKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)faceWarmth
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceWarmthKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setFaceStrength:(double)strength
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController faceStrengthKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)faceStrength
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIWhiteBalanceAdjustmentController faceStrengthKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setColorType:(int64_t)type
{
  v6 = [objc_opt_class() stringForColorType:type];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController colorTypeKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (int64_t)colorType
{
  v3 = objc_opt_class();
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIWhiteBalanceAdjustmentController colorTypeKey];
  v6 = [adjustment objectForKeyedSubscript:v5];
  v7 = [v3 colorTypeForString:v6];

  return v7;
}

+ (id)stringForColorType:(int64_t)type
{
  if (type > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E82ACA90[type];
  }
}

+ (int64_t)colorTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"neutralGray"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"faceBalance"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"tempTint"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"warmTint"])
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