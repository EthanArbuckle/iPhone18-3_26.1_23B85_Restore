@interface PIDepthAdjustmentController
- (BOOL)canAdjustApertureValue;
- (BOOL)canRenderDepth;
- (NSDictionary)depthInfo;
- (NSDictionary)focusRect;
- (NSNumber)glassesMatteAllowed;
- (PIDepthAdjustmentController)initWithAdjustment:(id)a3;
- (double)aperture;
- (double)maximumAperture;
- (double)minimumAperture;
- (id)capturedAperture;
- (id)capturedFocusRect;
- (id)pasteKeysForMediaType:(int64_t)a3;
- (void)setAperture:(double)a3;
- (void)setDepthInfo:(id)a3;
- (void)setFocusRect:(id)a3;
- (void)setGlassesMatteAllowed:(id)a3;
@end

@implementation PIDepthAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = +[PIAdjustmentController enabledKey];
  v7[0] = v3;
  v4 = +[PIDepthAdjustmentController apertureKey];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSNumber)glassesMatteAllowed
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController glassesMatteAllowedKey];
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

- (void)setGlassesMatteAllowed:(id)a3
{
  v4 = [a3 BOOLValue];
  v8 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController glassesMatteAllowedKey];
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

- (id)capturedFocusRect
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"focusRect"];

  return v5;
}

- (NSDictionary)focusRect
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController focusRectKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setFocusRect:(id)a3
{
  v4 = a3;
  v6 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController focusRectKey];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

- (id)capturedAperture
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"capturedAperture"];

  return v5;
}

- (double)aperture
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController apertureKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (void)setAperture:(double)a3
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController apertureKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (NSDictionary)depthInfo
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)setDepthInfo:(id)a3
{
  v6 = [a3 copy];
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController depthInfoKey];
  [v4 setObject:v6 forKeyedSubscript:v5];
}

- (double)maximumAperture
{
  v2 = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [v2 objectForKeyedSubscript:@"maximumAperture"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)minimumAperture
{
  v2 = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [v2 objectForKeyedSubscript:@"minimumAperture"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (BOOL)canAdjustApertureValue
{
  [(PIDepthAdjustmentController *)self minimumAperture];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(PIDepthAdjustmentController *)self maximumAperture];
  return v4 > 0.0;
}

- (BOOL)canRenderDepth
{
  v2 = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [v2 count] != 0;

  return v3;
}

- (PIDepthAdjustmentController)initWithAdjustment:(id)a3
{
  v4.receiver = self;
  v4.super_class = PIDepthAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:a3];
}

@end