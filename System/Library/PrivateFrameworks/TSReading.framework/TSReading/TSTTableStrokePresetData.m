@interface TSTTableStrokePresetData
- (TSTTableStrokePresetData)init;
- (TSTTableStrokePresetData)initWithMask:(unsigned int)a3 horizontalStroke:(id)a4 verticalStroke:(id)a5 exteriorStroke:(id)a6;
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

- (TSTTableStrokePresetData)initWithMask:(unsigned int)a3 horizontalStroke:(id)a4 verticalStroke:(id)a5 exteriorStroke:(id)a6
{
  v12.receiver = self;
  v12.super_class = TSTTableStrokePresetData;
  v10 = [(TSTTableStrokePresetData *)&v12 init];
  if (v10)
  {
    v10->mVerticalStroke = a5;
    v10->mHorizontalStroke = a4;
    v10->mExteriorStroke = a6;
    v10->mVisibleMask = a3;
  }

  return v10;
}

@end