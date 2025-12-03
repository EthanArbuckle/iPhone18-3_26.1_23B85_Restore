@interface PISemanticStyleAdjustmentController
+ (id)allCastsWithStandard:(BOOL)standard;
+ (id)allCreativeCasts;
+ (id)allSystemCasts;
+ (id)defaultValuesForCast:(id)cast;
- (BOOL)_areValuesEquivalentBetween:(id)between and:(id)and nilEquivalentDefaultValue:(id)value;
- (BOOL)hasDefaultStyleParameters;
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (NSDictionary)statistics;
- (NSString)cast;
- (double)color;
- (double)intensity;
- (double)tone;
- (int64_t)version;
- (void)resetToUnstyledOriginal;
- (void)setCast:(id)cast;
- (void)setColor:(double)color;
- (void)setIntensity:(double)intensity;
- (void)setStatistics:(id)statistics;
- (void)setTone:(double)tone;
- (void)setVersion:(int64_t)version;
- (void)updateWithSemStyleInfo:(id)info;
@end

@implementation PISemanticStyleAdjustmentController

- (BOOL)_areValuesEquivalentBetween:(id)between and:(id)and nilEquivalentDefaultValue:(id)value
{
  betweenCopy = between;
  andCopy = and;
  valueCopy = value;
  if (betweenCopy || !andCopy)
  {
    if (!betweenCopy || andCopy)
    {
      if (!andCopy || !betweenCopy || [betweenCopy isEqual:andCopy])
      {
        goto LABEL_8;
      }

LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v10 = betweenCopy;
  }

  else
  {
    v10 = andCopy;
  }

  if (([v10 isEqual:valueCopy] & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  equalCopy = equal;
  keyCopy = key;
  v8 = +[PISemanticStyleAdjustmentController intensityKey];
  v9 = [keyCopy isEqualToString:v8];

  if (v9)
  {
    schema = [equalCopy schema];
    settings = [schema settings];
    v12 = [settings objectForKeyedSubscript:keyCopy];

    adjustment = [(PIAdjustmentController *)self adjustment];
    v14 = [adjustment objectForKeyedSubscript:keyCopy];
    v15 = [equalCopy objectForKeyedSubscript:keyCopy];
    v16 = [(PISemanticStyleAdjustmentController *)self _areValuesEquivalentBetween:v14 and:v15 nilEquivalentDefaultValue:v12];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PISemanticStyleAdjustmentController;
    v16 = [(PIAdjustmentController *)&v18 isSettingEqual:equalCopy forKey:keyCopy];
  }

  return v16;
}

- (BOOL)hasDefaultStyleParameters
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  cast = [(PISemanticStyleAdjustmentController *)self cast];
  v5 = [v3 defaultValuesForCast:cast];

  if ([v5 count] != 3)
  {
    v20 = NUAssertLogger_9946();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"default values should contain 3 values (tone / color / ");
      v33 = 138543362;
      v34 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v33, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_9946();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        v33 = 138543618;
        v34 = v28;
        v35 = 2114;
        v36 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v33, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v33 = 138543362;
      v34 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v33, 0xCu);
    }

    _NUAssertFailHandler();
  }

  [(PISemanticStyleAdjustmentController *)self tone];
  v7 = v6;
  v8 = [v5 objectAtIndexedSubscript:0];
  [v8 floatValue];
  if (vabdd_f64(v7, v9) <= 0.01)
  {
    [(PISemanticStyleAdjustmentController *)self color];
    v12 = v11;
    v13 = [v5 objectAtIndexedSubscript:1];
    [v13 floatValue];
    if (vabdd_f64(v12, v14) <= 0.01)
    {
      [(PISemanticStyleAdjustmentController *)self intensity];
      v16 = v15;
      v17 = [v5 objectAtIndexedSubscript:2];
      [v17 floatValue];
      v10 = vabdd_f64(v16, v18) <= 0.01;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateWithSemStyleInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    [(PIAdjustmentController *)self setEnabled:1];
    v4 = [infoCopy objectForKey:@"cast"];
    v5 = v4;
    if (v4 && ([v4 isEqualToString:&stru_1F46EAF88] & 1) == 0)
    {
      v6 = PISemanticStyleCastFromString(v5);
      [(PISemanticStyleAdjustmentController *)self setCast:v6];
    }

    else
    {
      [(PISemanticStyleAdjustmentController *)self setCast:@"Standard"];
    }

    v7 = [infoCopy objectForKey:@"tone"];
    [v7 floatValue];
    v9 = v8;

    [(PISemanticStyleAdjustmentController *)self setTone:v9];
    v10 = [infoCopy objectForKey:@"color"];
    [v10 floatValue];
    v12 = v11;

    [(PISemanticStyleAdjustmentController *)self setColor:v12];
    v13 = [infoCopy objectForKey:@"intensity"];
    [v13 floatValue];
    v15 = v14;

    [(PISemanticStyleAdjustmentController *)self setIntensity:v15];
    v16 = [infoCopy objectForKey:@"version"];
    integerValue = [v16 integerValue];

    [(PISemanticStyleAdjustmentController *)self setVersion:integerValue];
  }
}

- (void)resetToUnstyledOriginal
{
  [(PISemanticStyleAdjustmentController *)self setCast:@"Standard"];
  [(PISemanticStyleAdjustmentController *)self setTone:0.0];
  [(PISemanticStyleAdjustmentController *)self setColor:0.0];

  [(PISemanticStyleAdjustmentController *)self setIntensity:1.0];
}

- (int64_t)version
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  versionKey = [objc_opt_class() versionKey];
  v4 = [adjustment objectForKeyedSubscript:versionKey];

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
  versionKey = [objc_opt_class() versionKey];
  [adjustment setObject:v6 forKeyedSubscript:versionKey];
}

- (void)setStatistics:(id)statistics
{
  v6 = [statistics copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  statisticsKey = [objc_opt_class() statisticsKey];
  [adjustment setObject:v6 forKeyedSubscript:statisticsKey];
}

- (NSDictionary)statistics
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  statisticsKey = [objc_opt_class() statisticsKey];
  v4 = [adjustment objectForKeyedSubscript:statisticsKey];

  return v4;
}

- (double)intensity
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  intensityKey = [objc_opt_class() intensityKey];
  v4 = [adjustment objectForKeyedSubscript:intensityKey];

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
  intensityKey = [objc_opt_class() intensityKey];
  [adjustment setObject:v6 forKeyedSubscript:intensityKey];
}

- (NSString)cast
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  castKey = [objc_opt_class() castKey];
  v4 = [adjustment objectForKeyedSubscript:castKey];

  return v4;
}

- (void)setCast:(id)cast
{
  v6 = [cast copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  castKey = [objc_opt_class() castKey];
  [adjustment setObject:v6 forKeyedSubscript:castKey];
}

- (void)setColor:(double)color
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:color];
  adjustment = [(PIAdjustmentController *)self adjustment];
  colorKey = [objc_opt_class() colorKey];
  [adjustment setObject:v6 forKeyedSubscript:colorKey];
}

- (double)color
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  colorKey = [objc_opt_class() colorKey];
  v4 = [adjustment objectForKeyedSubscript:colorKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setTone:(double)tone
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:tone];
  adjustment = [(PIAdjustmentController *)self adjustment];
  toneKey = [objc_opt_class() toneKey];
  [adjustment setObject:v6 forKeyedSubscript:toneKey];
}

- (double)tone
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  toneKey = [objc_opt_class() toneKey];
  v4 = [adjustment objectForKeyedSubscript:toneKey];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

+ (id)defaultValuesForCast:(id)cast
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = PISemanticStyleCastToMakerNoteString(cast);
  v4 = [MEMORY[0x1E6991718] defaultStyleForCastType:v3];
  v5 = v4;
  if (v4)
  {
    [v4 toneBias];
    v7 = v6;
    [v5 colorBias];
    v9 = v8;
    [v5 castIntensity];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
    v9 = 0.0;
    v7 = 0.0;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:{v9, v12}];
  v17[1] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  v17[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  return v15;
}

+ (id)allCreativeCasts
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = @"Colorful";
  v4[1] = @"NoFilter";
  v4[2] = @"DreamyHues";
  v4[3] = @"UrbanCool";
  v4[4] = @"WarmAuthentic";
  v4[5] = @"Earthy";
  v4[6] = @"CloudCover";
  v4[7] = @"LongGray";
  v4[8] = @"StarkBW";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];

  return v2;
}

+ (id)allSystemCasts
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = @"TanWarm";
  v4[1] = @"GoldWarm";
  v4[2] = @"BlushWarm";
  v4[3] = @"BrightPop";
  v4[4] = @"Neutral";
  v4[5] = @"Cool";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];

  return v2;
}

+ (id)allCastsWithStandard:(BOOL)standard
{
  standardCopy = standard;
  allSystemCasts = [self allSystemCasts];
  allCreativeCasts = [self allCreativeCasts];
  v7 = [allSystemCasts arrayByAddingObjectsFromArray:allCreativeCasts];
  v8 = [v7 mutableCopy];

  if (standardCopy)
  {
    [v8 addObject:@"Standard"];
  }

  v9 = [v8 copy];

  return v9;
}

@end