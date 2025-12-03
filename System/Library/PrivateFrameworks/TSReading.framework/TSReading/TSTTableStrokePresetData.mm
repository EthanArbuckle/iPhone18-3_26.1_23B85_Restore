@interface TSTTableStrokePresetData
- (TSTTableStrokePresetData)init;
- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke;
- (void)dealloc;
@end

@implementation TSTTableStrokePresetData

- (TSTTableStrokePresetData)init
{
  v3.receiver = self;
  v3.super_class = TSTTableStrokePresetData;
  return [(TSTTableStrokePresetData *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableStrokePresetData;
  [(TSTTableStrokePresetData *)&v3 dealloc];
}

- (TSTTableStrokePresetData)initWithMask:(unsigned int)mask horizontalStroke:(id)stroke verticalStroke:(id)verticalStroke exteriorStroke:(id)exteriorStroke
{
  v12.receiver = self;
  v12.super_class = TSTTableStrokePresetData;
  v10 = [(TSTTableStrokePresetData *)&v12 init];
  if (v10)
  {
    v10->mVerticalStroke = verticalStroke;
    v10->mHorizontalStroke = stroke;
    v10->mExteriorStroke = exteriorStroke;
    v10->mVisibleMask = mask;
  }

  return v10;
}

@end