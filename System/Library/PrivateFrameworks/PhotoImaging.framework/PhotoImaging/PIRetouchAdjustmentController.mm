@interface PIRetouchAdjustmentController
- (NSArray)detectedFaces;
- (unint64_t)retouchStrokeCount;
- (void)appendStroke:(id)a3;
- (void)setDetectedFaces:(id)a3;
@end

@implementation PIRetouchAdjustmentController

- (unint64_t)retouchStrokeCount
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRetouchAdjustmentController inputStrokesKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 count];
  return v5;
}

- (void)setDetectedFaces:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v4 = [v4 count];
    v5 = v9;
    if (v4)
    {
      v6 = [v9 copy];
      v7 = [(PIAdjustmentController *)self adjustment];
      v8 = +[PIRetouchAdjustmentController detectedFacesKey];
      [v7 setObject:v6 forKeyedSubscript:v8];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (NSArray)detectedFaces
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRetouchAdjustmentController detectedFacesKey];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  return v5;
}

- (void)appendStroke:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = [PIRetouchBrushStroke dictionaryFromBrushStroke:a3];
  v14 = [v4 dictionaryWithDictionary:v5];

  v6 = [(PIAdjustmentController *)self adjustment];
  v7 = +[PIRetouchAdjustmentController inputStrokesKey];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DEC8] array];
  }

  if (![v8 count])
  {
    v9 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIRetouchAdjustmentController enabledKey];
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v10];
  }

  v11 = [v8 arrayByAddingObject:v14];

  v12 = [(PIAdjustmentController *)self adjustment];
  v13 = +[PIRetouchAdjustmentController inputStrokesKey];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

@end