@interface PIPortraitAdjustmentController
- (BOOL)canRenderPortraitEffect;
- (BOOL)isSettingEqual:(id)equal forKey:(id)key;
- (NSDictionary)portraitInfo;
- (NSNumber)spillMatteAllowed;
- (NSString)kind;
- (PIPortraitAdjustmentController)initWithAdjustment:(id)adjustment;
- (double)defaultStrength;
- (double)strength;
- (id)pasteKeysForMediaType:(int64_t)type;
- (void)setKind:(id)kind;
- (void)setPortraitInfo:(id)info;
- (void)setSpillMatteAllowed:(id)allowed;
- (void)setStrength:(double)strength;
@end

@implementation PIPortraitAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)type
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = +[PIAdjustmentController enabledKey];
  v4 = +[PIPortraitAdjustmentController kindKey];
  v8[1] = v4;
  v5 = +[PIPortraitAdjustmentController strengthKey];
  v8[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSNumber)spillMatteAllowed
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController spillMatteAllowedKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return 0;
  }
}

- (void)setSpillMatteAllowed:(id)allowed
{
  bOOLValue = [allowed BOOLValue];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController spillMatteAllowedKey];
  if (bOOLValue)
  {
    v6 = MEMORY[0x1E695E118];
    v7 = adjustment;
  }

  else
  {
    v7 = adjustment;
    v6 = 0;
  }

  [v7 setObject:v6 forKeyedSubscript:v5];
}

- (double)defaultStrength
{
  v3 = +[PIPortraitAdjustmentController strengthKey];
  adjustment = [(PIAdjustmentController *)self adjustment];
  schema = [adjustment schema];
  settings = [schema settings];
  v7 = [settings objectForKeyedSubscript:v3];

  defaultValue = [v7 defaultValue];
  [defaultValue floatValue];
  v10 = v9;

  return v10;
}

- (double)strength
{
  v3 = +[PIPortraitAdjustmentController strengthKey];
  adjustment = [(PIAdjustmentController *)self adjustment];
  schema = [adjustment schema];
  settings = [schema settings];
  v7 = [settings objectForKeyedSubscript:v3];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  defaultValue = [adjustment2 objectForKeyedSubscript:v3];

  if (!defaultValue)
  {
    defaultValue = [v7 defaultValue];
  }

  [defaultValue floatValue];
  v11 = v10;

  return v11;
}

- (void)setStrength:(double)strength
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:strength];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController strengthKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)canRenderPortraitEffect
{
  portraitInfo = [(PIPortraitAdjustmentController *)self portraitInfo];
  v3 = [portraitInfo count] != 0;

  return v3;
}

- (NSDictionary)portraitInfo
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController portraitInfoKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (void)setPortraitInfo:(id)info
{
  v6 = [info copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController portraitInfoKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (NSString)kind
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController kindKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (void)setKind:(id)kind
{
  v6 = [kind copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController kindKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isSettingEqual:(id)equal forKey:(id)key
{
  equalCopy = equal;
  keyCopy = key;
  v8 = +[PIPortraitAdjustmentController strengthKey];
  v9 = [keyCopy isEqualToString:v8];

  if (v9)
  {
    adjustment = [(PIAdjustmentController *)self adjustment];
    v11 = [adjustment objectForKeyedSubscript:keyCopy];

    v12 = [equalCopy objectForKeyedSubscript:keyCopy];
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    schema = [adjustment2 schema];
    settings = [schema settings];
    v16 = +[PIPortraitAdjustmentController strengthKey];
    v17 = [settings objectForKeyedSubscript:v16];

    defaultValue = [v17 defaultValue];
    v19 = defaultValue;
    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = defaultValue;
    }

    v21 = v20;

    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22;

    [v21 doubleValue];
    v25 = v24;
    [v23 doubleValue];
    v27 = round(v25 * 100.0) == round(v26 * 100.0) || (v21 | v23) == 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = PIPortraitAdjustmentController;
    v27 = [(PIAdjustmentController *)&v29 isSettingEqual:equalCopy forKey:keyCopy];
  }

  return v27;
}

- (PIPortraitAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PIPortraitAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end