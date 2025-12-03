@interface PXPeopleGridSizer
+ (CGSize)cellSizeForGridClass:(int64_t)class width:(double)width;
+ (double)marginForGridClass:(int64_t)class width:(double)result;
+ (id)_gridCColumnInterpolator;
+ (id)_gridCGutterInterpolator;
+ (id)_gridCMarginInterpolator;
+ (id)_peopleHomeColumnInterpolator;
+ (unint64_t)numberOfColumnsForGridClass:(int64_t)class width:(double)width;
@end

@implementation PXPeopleGridSizer

+ (id)_gridCGutterInterpolator
{
  if (_gridCGutterInterpolator_onceToken != -1)
  {
    dispatch_once(&_gridCGutterInterpolator_onceToken, &__block_literal_global_7_228766);
  }

  v3 = _gridCGutterInterpolator_gutterInterpolator;

  return v3;
}

uint64_t __45__PXPeopleGridSizer__gridCGutterInterpolator__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721798);
  v1 = _gridCGutterInterpolator_gutterInterpolator;
  _gridCGutterInterpolator_gutterInterpolator = v0;

  [_gridCGutterInterpolator_gutterInterpolator setReferenceValue:10.0 forMetric:460.0];
  [_gridCGutterInterpolator_gutterInterpolator setReferenceValue:20.0 forMetric:981.0];
  v2 = _gridCGutterInterpolator_gutterInterpolator;

  return [v2 setReferenceValue:24.0 forMetric:1195.0];
}

+ (id)_gridCMarginInterpolator
{
  if (_gridCMarginInterpolator_onceToken != -1)
  {
    dispatch_once(&_gridCMarginInterpolator_onceToken, &__block_literal_global_5_228769);
  }

  v3 = _gridCMarginInterpolator_marginInterpolator;

  return v3;
}

uint64_t __45__PXPeopleGridSizer__gridCMarginInterpolator__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721798);
  v1 = _gridCMarginInterpolator_marginInterpolator;
  _gridCMarginInterpolator_marginInterpolator = v0;

  [_gridCMarginInterpolator_marginInterpolator setReferenceValue:20.0 forMetric:460.0];
  [_gridCMarginInterpolator_marginInterpolator setReferenceValue:34.0 forMetric:981.0];
  v2 = _gridCMarginInterpolator_marginInterpolator;

  return [v2 setReferenceValue:52.0 forMetric:1195.0];
}

+ (id)_peopleHomeColumnInterpolator
{
  if (_peopleHomeColumnInterpolator_onceToken != -1)
  {
    dispatch_once(&_peopleHomeColumnInterpolator_onceToken, &__block_literal_global_3_228771);
  }

  v3 = _peopleHomeColumnInterpolator_columnInterpolator;

  return v3;
}

uint64_t __50__PXPeopleGridSizer__peopleHomeColumnInterpolator__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721798);
  v1 = _peopleHomeColumnInterpolator_columnInterpolator;
  _peopleHomeColumnInterpolator_columnInterpolator = v0;

  [_peopleHomeColumnInterpolator_columnInterpolator setReferenceValue:2.0 forMetric:460.0];
  [_peopleHomeColumnInterpolator_columnInterpolator setReferenceValue:4.0 forMetric:726.0];
  [_peopleHomeColumnInterpolator_columnInterpolator setReferenceValue:5.0 forMetric:981.0];
  [_peopleHomeColumnInterpolator_columnInterpolator setReferenceValue:6.0 forMetric:1194.0];
  v2 = _peopleHomeColumnInterpolator_columnInterpolator;

  return [v2 setReferenceValue:7.0 forMetric:1195.0];
}

+ (id)_gridCColumnInterpolator
{
  if (_gridCColumnInterpolator_onceToken != -1)
  {
    dispatch_once(&_gridCColumnInterpolator_onceToken, &__block_literal_global_228773);
  }

  v3 = _gridCColumnInterpolator_columnInterpolator;

  return v3;
}

uint64_t __45__PXPeopleGridSizer__gridCColumnInterpolator__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721798);
  v1 = _gridCColumnInterpolator_columnInterpolator;
  _gridCColumnInterpolator_columnInterpolator = v0;

  [_gridCColumnInterpolator_columnInterpolator setReferenceValue:3.0 forMetric:460.0];
  [_gridCColumnInterpolator_columnInterpolator setReferenceValue:4.0 forMetric:726.0];
  [_gridCColumnInterpolator_columnInterpolator setReferenceValue:5.0 forMetric:981.0];
  [_gridCColumnInterpolator_columnInterpolator setReferenceValue:6.0 forMetric:1194.0];
  v2 = _gridCColumnInterpolator_columnInterpolator;

  return [v2 setReferenceValue:7.0 forMetric:1195.0];
}

+ (unint64_t)numberOfColumnsForGridClass:(int64_t)class width:(double)width
{
  if (class == 1)
  {
    v5 = +[PXPeopleGridSizer _peopleHomeColumnInterpolator];
  }

  else
  {
    if (class)
    {
      return 0;
    }

    v5 = +[PXPeopleGridSizer _gridCColumnInterpolator];
  }

  v6 = v5;
  [v5 valueForMetric:width];
  v8 = v7;

  return v8;
}

+ (CGSize)cellSizeForGridClass:(int64_t)class width:(double)width
{
  if (class > 1)
  {
    v15 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = [self numberOfColumnsForGridClass:? width:?];
    [self marginForGridClass:class width:width];
    v9 = v8;
    v10 = +[PXPeopleGridSizer _gridCGutterInterpolator];
    [v10 valueForMetric:width];
    v12 = v11;

    v13 = (width - (v7 + -1.0) * v12 - (v9 + v9)) / v7;
    v14 = floorf(v13);
    v15 = v14;
  }

  result.height = v14;
  result.width = v15;
  return result;
}

+ (double)marginForGridClass:(int64_t)class width:(double)result
{
  if (class <= 1)
  {
    v4 = result;
    v5 = +[PXPeopleGridSizer _gridCMarginInterpolator];
    [v5 valueForMetric:v4];
    v7 = v6;

    return v7;
  }

  return result;
}

@end