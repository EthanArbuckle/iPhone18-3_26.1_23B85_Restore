@interface PIDepthAdjustmentController
- (BOOL)canAdjustApertureValue;
- (BOOL)canRenderDepth;
- (NSDictionary)depthInfo;
- (NSDictionary)focusRect;
- (NSNumber)glassesMatteAllowed;
- (PIDepthAdjustmentController)initWithAdjustment:(id)adjustment;
- (double)aperture;
- (double)maximumAperture;
- (double)minimumAperture;
- (id)capturedAperture;
- (id)capturedFocusRect;
- (id)pasteKeysForMediaType:(int64_t)type;
- (void)setAperture:(double)aperture;
- (void)setDepthInfo:(id)info;
- (void)setFocusRect:(id)rect;
- (void)setGlassesMatteAllowed:(id)allowed;
@end

@implementation PIDepthAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)type
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
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController glassesMatteAllowedKey];
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

- (void)setGlassesMatteAllowed:(id)allowed
{
  bOOLValue = [allowed BOOLValue];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController glassesMatteAllowedKey];
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

- (id)capturedFocusRect
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"focusRect"];

  return v5;
}

- (NSDictionary)focusRect
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController focusRectKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (void)setFocusRect:(id)rect
{
  rectCopy = rect;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController focusRectKey];
  [adjustment setObject:rectCopy forKeyedSubscript:v5];
}

- (id)capturedAperture
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"capturedAperture"];

  return v5;
}

- (double)aperture
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController apertureKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (void)setAperture:(double)aperture
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:aperture];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController apertureKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (NSDictionary)depthInfo
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIDepthAdjustmentController depthInfoKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  return v4;
}

- (void)setDepthInfo:(id)info
{
  v6 = [info copy];
  adjustment = [(PIAdjustmentController *)self adjustment];
  v5 = +[PIDepthAdjustmentController depthInfoKey];
  [adjustment setObject:v6 forKeyedSubscript:v5];
}

- (double)maximumAperture
{
  depthInfo = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [depthInfo objectForKeyedSubscript:@"maximumAperture"];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (double)minimumAperture
{
  depthInfo = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [depthInfo objectForKeyedSubscript:@"minimumAperture"];
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
  depthInfo = [(PIDepthAdjustmentController *)self depthInfo];
  v3 = [depthInfo count] != 0;

  return v3;
}

- (PIDepthAdjustmentController)initWithAdjustment:(id)adjustment
{
  v4.receiver = self;
  v4.super_class = PIDepthAdjustmentController;
  return [(PIAdjustmentController *)&v4 initWithAdjustment:adjustment];
}

@end