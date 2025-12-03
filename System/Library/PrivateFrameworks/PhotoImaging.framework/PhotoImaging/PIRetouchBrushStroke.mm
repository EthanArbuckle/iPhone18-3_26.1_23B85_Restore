@interface PIRetouchBrushStroke
+ (id)dictionaryFromBrushStroke:(id)stroke;
- (BOOL)hasSource;
- (CGPoint)sourceOffset;
@end

@implementation PIRetouchBrushStroke

- (CGPoint)sourceOffset
{
  x = self->_sourceOffset.x;
  y = self->_sourceOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)hasSource
{
  [(PIRetouchBrushStroke *)self sourceOffset];
  if (v3 == 0.0)
  {
    return 0;
  }

  [(PIRetouchBrushStroke *)self sourceOffset];
  return v4 != 0.0;
}

+ (id)dictionaryFromBrushStroke:(id)stroke
{
  strokeCopy = stroke;
  v23.receiver = self;
  v23.super_class = &OBJC_METACLASS___PIRetouchBrushStroke;
  v5 = objc_msgSendSuper2(&v23, sel_dictionaryFromBrushStroke_, strokeCopy);
  v6 = [v5 mutableCopy];

  type = [strokeCopy type];
  v8 = @"RepairML";
  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"Repair";
  }

  v10 = +[PIRetouchAdjustmentController modeKey];
  [v6 setObject:v9 forKey:v10];

  v11 = objc_opt_new();
  v12 = MEMORY[0x1E696AD98];
  [strokeCopy sourceOffset];
  v13 = [v12 numberWithDouble:?];
  v14 = +[PIRetouchAdjustmentController sourceOffsetXKey];
  [v11 setObject:v13 forKey:v14];

  v15 = MEMORY[0x1E696AD98];
  [strokeCopy sourceOffset];
  v17 = [v15 numberWithDouble:v16];
  v18 = +[PIRetouchAdjustmentController sourceOffsetYKey];
  [v11 setObject:v17 forKey:v18];

  v19 = +[PIRetouchAdjustmentController sourceOffsetKey];
  [v6 setObject:v11 forKey:v19];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(strokeCopy, "repairEdges")}];
  v21 = +[PIRetouchAdjustmentController repairEdgesKey];
  [v6 setObject:v20 forKey:v21];

  return v6;
}

@end