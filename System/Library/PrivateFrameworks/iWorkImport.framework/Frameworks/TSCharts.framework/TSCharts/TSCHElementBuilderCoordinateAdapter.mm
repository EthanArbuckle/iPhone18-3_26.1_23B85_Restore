@interface TSCHElementBuilderCoordinateAdapter
- ($9E5495ABC9D17321C375100FE022AE0A)p_pointArrayWithCount:(unint64_t)count;
- (CGRect)constrainedRectWithSeries:(id)series elementBoundingBox:(CGRect)box seriesAreaFrame:(CGRect)frame;
- (void)p_iterateWithXValues:(double *)values yValues:(double *)yValues points:(id *)points pointCount:(unint64_t)count plotAreaFrame:(CGRect)frame yValueModifierBlock:(id)block;
@end

@implementation TSCHElementBuilderCoordinateAdapter

- ($9E5495ABC9D17321C375100FE022AE0A)p_pointArrayWithCount:(unint64_t)count
{
  v7 = 3 * count;
  v8 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], a2, v3, v4, v5, 24 * count);
  v9 = v8;
  v14 = objc_msgSend_mutableBytes(v9, v10, v11, v12, v13);
  if (count >= 1)
  {
    v15 = v14 + 8 * v7;
    v16 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      *v14 = v16;
      *(v14 + 16) = 0;
      v14 += 24;
    }

    while (v14 < v15);
  }

  v17 = v8;
  v22 = objc_msgSend_mutableBytes(v17, v18, v19, v20, v21);

  return v22;
}

- (void)p_iterateWithXValues:(double *)values yValues:(double *)yValues points:(id *)points pointCount:(unint64_t)count plotAreaFrame:(CGRect)frame yValueModifierBlock:(id)block
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  blockCopy = block;
  if (count)
  {
    v17 = 0;
    v18 = &points->var1 + 1;
    v26 = blockCopy;
    do
    {
      if (values)
      {
        v19 = values[v17];
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          TSUClamp();
          blockCopy = v26;
        }

        v20 = x + v19 * width;
        if (!yValues)
        {
LABEL_10:
          v24 = NAN;
          goto LABEL_15;
        }
      }

      else
      {
        v20 = NAN;
        if (!yValues)
        {
          goto LABEL_10;
        }
      }

      v21 = yValues[v17];
      if (blockCopy)
      {
        v22 = (*(blockCopy + 2))(v26, v17, yValues[v17]);
        blockCopy = v26;
        v23 = fabs(v22);
      }

      else
      {
        v23 = fabs(v21);
        v22 = yValues[v17];
      }

      if (v23 != INFINITY)
      {
        TSUClamp();
        blockCopy = v26;
      }

      v24 = y + height - v22 * height;
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_17:
        v25 = 0;
        goto LABEL_18;
      }

LABEL_15:
      if (fabs(v20) == INFINITY)
      {
        goto LABEL_17;
      }

      v25 = fabs(v24) != INFINITY;
LABEL_18:
      *(v18 - 17) = v20;
      *(v18 - 9) = v24;
      *(v18 - 1) = v25;
      *v18 = 0;
      ++v17;
      *(v18 + 3) = 0;
      v18 += 24;
    }

    while (count != v17);
  }
}

- (CGRect)constrainedRectWithSeries:(id)series elementBoundingBox:(CGRect)box seriesAreaFrame:(CGRect)frame
{
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end