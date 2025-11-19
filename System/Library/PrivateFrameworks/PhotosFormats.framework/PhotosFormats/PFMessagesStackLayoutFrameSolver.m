@interface PFMessagesStackLayoutFrameSolver
- (PFMessagesStackLayoutFrameSolver)init;
- (void)getGeometries:(id *)a3 count:(unint64_t)a4;
@end

@implementation PFMessagesStackLayoutFrameSolver

- (void)getGeometries:(id *)a3 count:(unint64_t)a4
{
  v6 = [(PFMessagesStackLayoutFrameSolver *)self stackedItemsCount:a3];
  v7 = 2 * v6;
  [(PFMessagesStackLayoutFrameSolver *)self normalizedVerticalInsets];
  v9 = v8;
  v10 = 0.0;
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = 1.0;
  v62.size.height = 1.0;
  v63 = CGRectInset(v62, v9, v9);
  x = v63.origin.x;
  y = v63.origin.y;
  width = v63.size.width;
  height = v63.size.height;
  MidX = CGRectGetMidX(v63);
  v64.origin.x = x;
  v64.origin.y = y;
  v58 = height;
  v64.size.width = width;
  v64.size.height = height;
  MidY = CGRectGetMidY(v64);
  [(PFMessagesStackLayoutFrameSolver *)self normalizedVerticalOffset];
  v56 = v17;
  [(PFMessagesStackLayoutFrameSolver *)self normalizedSizeTransform];
  __x = v18;
  [(PFMessagesStackLayoutFrameSolver *)self rotationAngle];
  v54 = v19;
  v20 = [(PFMessagesStackLayoutFrameSolver *)self normalizedHorizontalOffsets];
  v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
  if (v6)
  {
    v21 = 0;
    v22 = 0.0;
    do
    {
      if (v21 < [v20 count])
      {
        v23 = [v20 objectAtIndexedSubscript:v21];
        [v23 doubleValue];
        v10 = v24;
      }

      v22 = v22 + v10;
      v25 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
      [v60 setObject:v25 atIndexedSubscript:v21];

      ++v21;
    }

    while (v6 != v21);
  }

  [v60 count];
  if (v7 != -2)
  {
    v26 = -v6;
    v27 = (v6 * 5.0);
    v28 = v7 + 1;
    p_var6 = &a3[1].var6;
    __asm { FMOV            V0.2D, #1.0 }

    v57 = _Q0;
    do
    {
      if (v26 >= 0)
      {
        v35 = v26;
      }

      else
      {
        v35 = -v26;
      }

      v36 = 0.0;
      if (v26 <= 0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v27;
      }

      v38 = v35;
      v39 = MidX;
      v40 = MidY;
      v41 = v57;
      if (v26)
      {
        v59 = pow(__x, v35);
        v42 = [v60 objectAtIndexedSubscript:v35 - 1];
        [v42 doubleValue];
        v44 = v43;

        v45 = -v44;
        if (v26 > 0)
        {
          v45 = v44;
        }

        v39 = MidX + v45;
        v40 = MidY + v56 * v38;
        v36 = v54 * v26;
        v41 = *&v59;
      }

      v46 = v37 + (v35 * 5.0);
      *(p_var6 - 8) = v39;
      *(p_var6 - 7) = v40;
      *(p_var6 - 6) = width;
      *(p_var6 - 5) = v58;
      *(p_var6 - 4) = v46;
      *(p_var6 - 3) = v36;
      *(p_var6 - 2) = 1.0;
      *(p_var6 - 1) = fmin(v38 * 0.1, 1.0);
      *p_var6 = v41;
      p_var6 += 10;
      ++v26;
      --v28;
    }

    while (v28);
  }

  v47 = *&a3[1].var6;
  *&a3->var4 = *&a3[1].var4;
  *&a3->var6 = v47;
  v48 = *&a3[1].var2;
  a3->var1 = a3[1].var1;
  *&a3->var2 = v48;
  a3->var0 = a3[1].var0;
  v49 = a3->var6 * 0.9;
  a3->var4 = 0.0;
  a3->var2 = a3->var2 + 5.0;
  a3->var5 = a3[1].var5;
  a3->var6 = v49;
  v50 = &a3[v7 + 2];
  v51 = &a3[v7];
  v52 = *&v51[1].var6;
  *&v50->var4 = *&v51[1].var4;
  *&v50->var6 = v52;
  v53 = *&v51[1].var2;
  v50->var1 = v51[1].var1;
  *&v50->var2 = v53;
  v50->var0 = v51[1].var0;
  v50->var6 = v50->var6 * 0.9;
  v50->var4 = 0.0;
  v50->var2 = v50->var2 + 5.0;
}

- (PFMessagesStackLayoutFrameSolver)init
{
  v7.receiver = self;
  v7.super_class = PFMessagesStackLayoutFrameSolver;
  v2 = [(PFMessagesStackLayoutFrameSolver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_stackedItemsCount = 4;
    *&v2->_normalizedVerticalInsets = xmmword_1B36A1F30;
    *&v2->_normalizedSizeTransform = xmmword_1B36A1F40;
    v4 = [&unk_1F2AAB980 copy];
    normalizedHorizontalOffsets = v3->_normalizedHorizontalOffsets;
    v3->_normalizedHorizontalOffsets = v4;
  }

  return v3;
}

@end