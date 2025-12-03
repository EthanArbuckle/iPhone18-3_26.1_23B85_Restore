@interface PIRetouchAdjustmentController
- (NSArray)detectedFaces;
- (unint64_t)retouchStrokeCount;
- (void)appendStroke:(id)stroke;
- (void)setDetectedFaces:(id)faces;
@end

@implementation PIRetouchAdjustmentController

- (unint64_t)retouchStrokeCount
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRetouchAdjustmentController inputStrokesKey];
  v4 = [adjustment objectForKeyedSubscript:v3];

  v5 = [v4 count];
  return v5;
}

- (void)setDetectedFaces:(id)faces
{
  facesCopy = faces;
  v5 = facesCopy;
  if (facesCopy)
  {
    v9 = facesCopy;
    facesCopy = [facesCopy count];
    v5 = v9;
    if (facesCopy)
    {
      v6 = [v9 copy];
      adjustment = [(PIAdjustmentController *)self adjustment];
      v8 = +[PIRetouchAdjustmentController detectedFacesKey];
      [adjustment setObject:v6 forKeyedSubscript:v8];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](facesCopy, v5);
}

- (NSArray)detectedFaces
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PIRetouchAdjustmentController detectedFacesKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  v5 = [v4 copy];

  return v5;
}

- (void)appendStroke:(id)stroke
{
  v4 = MEMORY[0x1E695DF90];
  v5 = [PIRetouchBrushStroke dictionaryFromBrushStroke:stroke];
  v14 = [v4 dictionaryWithDictionary:v5];

  adjustment = [(PIAdjustmentController *)self adjustment];
  v7 = +[PIRetouchAdjustmentController inputStrokesKey];
  array = [adjustment objectForKeyedSubscript:v7];

  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  if (![array count])
  {
    adjustment2 = [(PIAdjustmentController *)self adjustment];
    v10 = +[PIRetouchAdjustmentController enabledKey];
    [adjustment2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v10];
  }

  v11 = [array arrayByAddingObject:v14];

  adjustment3 = [(PIAdjustmentController *)self adjustment];
  v13 = +[PIRetouchAdjustmentController inputStrokesKey];
  [adjustment3 setObject:v11 forKeyedSubscript:v13];
}

@end