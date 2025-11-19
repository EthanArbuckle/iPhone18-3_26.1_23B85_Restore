@interface PIPortraitAdjustmentController
- (BOOL)canRenderPortraitEffect;
- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4;
- (NSDictionary)portraitInfo;
- (NSNumber)spillMatteAllowed;
- (NSString)kind;
- (PIPortraitAdjustmentController)initWithAdjustment:(id)a3;
- (double)defaultStrength;
- (double)strength;
- (id)pasteKeysForMediaType:(int64_t)a3;
- (void)setKind:(id)a3;
- (void)setPortraitInfo:(id)a3;
- (void)setSpillMatteAllowed:(id)a3;
- (void)setStrength:(double)a3;
@end

@implementation PIPortraitAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)a3
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
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController spillMatteAllowedKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return 0;
  }
}

- (void)setSpillMatteAllowed:(id)a3
{
  v4 = [a3 BOOLValue];
  v8 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController spillMatteAllowedKey];
  if (v4)
  {
    v6 = MEMORY[0x1E695E118];
    v7 = v8;
  }

  else
  {
    v7 = v8;
    v6 = 0;
  }

  [v7 setObject:v6 forKeyedSubscript:v5];
}

- (double)defaultStrength
{
  v3 = +[PIPortraitAdjustmentController strengthKey];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = [v4 schema];
  v6 = [v5 settings];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = [v7 defaultValue];
  [v8 floatValue];
  v10 = v9;

  return v10;
}

- (double)strength
{
  v3 = +[PIPortraitAdjustmentController strengthKey];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = [v4 schema];
  v6 = [v5 settings];
  v7 = [v6 objectForKeyedSubscript:v3];

  v8 = [(PIAdjustmentController *)self adjustment];
  v9 = [v8 objectForKeyedSubscript:v3];

  if (!v9)
  {
    v9 = [v7 defaultValue];
  }

  [v9 floatValue];
  v11 = v10;

  return v11;
}

- (void)setStrength:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController strengthKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)canRenderPortraitEffect
{
  v2 = [(PIPortraitAdjustmentController *)self portraitInfo];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSDictionary)portraitInfo
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController portraitInfoKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setPortraitInfo:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController portraitInfoKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSString)kind
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIPortraitAdjustmentController kindKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setKind:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIPortraitAdjustmentController kindKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (BOOL)isSettingEqual:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PIPortraitAdjustmentController strengthKey];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(PIAdjustmentController *)self adjustment];
    v11 = [v10 objectForKeyedSubscript:v7];

    v12 = [v6 objectForKeyedSubscript:v7];
    v13 = [(PIAdjustmentController *)self adjustment];
    v14 = [v13 schema];
    v15 = [v14 settings];
    v16 = +[PIPortraitAdjustmentController strengthKey];
    v17 = [v15 objectForKeyedSubscript:v16];

    v18 = [v17 defaultValue];
    v19 = v18;
    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = v18;
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
    v27 = [(PIAdjustmentController *)&v29 isSettingEqual:v6 forKey:v7];
  }

  return v27;
}

- (PIPortraitAdjustmentController)initWithAdjustment:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIPortraitAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:a3];
}

@end