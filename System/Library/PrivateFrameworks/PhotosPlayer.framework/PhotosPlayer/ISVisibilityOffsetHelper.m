@interface ISVisibilityOffsetHelper
- (CGPoint)_targetContentOffset;
- (CGRect)boundsForView:(id)a3 inScrollView:(id)a4;
- (CGRect)visibleRectForScrollView:(id)a3;
- (ISVisibilityRange)_visibilityRangeForRect:(CGRect)a3;
- (void)_updateDirectionIfNeeded;
- (void)computeVisibilityOffsetsInScrollView:(id)a3 withTargetContentOffset:(CGPoint)a4 usingBlock:(id)a5;
- (void)getVisibility:(BOOL *)a3 offset:(double *)a4 targetVisibilityOffset:(double *)a5 forView:(id)a6;
@end

@implementation ISVisibilityOffsetHelper

- (CGPoint)_targetContentOffset
{
  x = self->__targetContentOffset.x;
  y = self->__targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)getVisibility:(BOOL *)a3 offset:(double *)a4 targetVisibilityOffset:(double *)a5 forView:(id)a6
{
  v10 = a6;
  v11 = [(ISVisibilityOffsetHelper *)self _scrollView];
  if (![v10 isDescendantOfView:v11])
  {
    v38 = 0;
    v41 = 0.0;
    v40 = 0.0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(ISVisibilityOffsetHelper *)self visibleRectForScrollView:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(ISVisibilityOffsetHelper *)self _targetContentOffset];
  v21 = v20;
  v23 = v22;
  [(ISVisibilityOffsetHelper *)self _visibilityRangeForRect:v13, v15, v17, v19];
  v46 = v25;
  v47 = v24;
  [(ISVisibilityOffsetHelper *)self _visibilityRangeForRect:v21, v23, v17, v19];
  v44 = v27;
  v45 = v26;
  [(ISVisibilityOffsetHelper *)self boundsForView:v10 inScrollView:v11];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [(ISVisibilityOffsetHelper *)self _visibilityRangeForRect:?];
  v42 = v37;
  v43 = v36;
  v49.origin.x = v29;
  v49.origin.y = v31;
  v49.size.width = v33;
  v49.size.height = v35;
  v50.origin.x = v13;
  v50.origin.y = v15;
  v50.size.width = v17;
  v50.size.height = v19;
  v38 = CGRectIntersectsRect(v49, v50);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __80__ISVisibilityOffsetHelper_getVisibility_offset_targetVisibilityOffset_forView___block_invoke;
  v48[3] = &unk_279A2A0B8;
  v48[4] = self;
  v48[5] = v43;
  v48[6] = v42;
  v39 = MEMORY[0x25F8BB670](v48);
  v40 = v39[2](v47, v46);
  v41 = (v39[2])(v39, v45, v44);

  if (a3)
  {
LABEL_5:
    *a3 = v38;
  }

LABEL_6:
  if (a4)
  {
    *a4 = v40;
  }

  if (a5)
  {
    *a5 = v41;
  }
}

uint64_t __80__ISVisibilityOffsetHelper_getVisibility_offset_targetVisibilityOffset_forView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) maximumDistance];
  result = [*(a1 + 32) maximumDistanceLag];
  *(a1 + 48);
  *(a1 + 40);
  return result;
}

- (CGRect)boundsForView:(id)a3 inScrollView:(id)a4
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)visibleRectForScrollView:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (ISVisibilityRange)_visibilityRangeForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(ISVisibilityOffsetHelper *)self direction];
  v8 = 0.0;
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MinY = -CGRectGetMaxX(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MinX = CGRectGetMinX(v21);
    }

    else
    {
      MinY = 0.0;
      if (v7 != 5)
      {
        goto LABEL_12;
      }

      v16.origin.x = x;
      v16.origin.y = y;
      v16.size.width = width;
      v16.size.height = height;
      MinY = -CGRectGetMaxY(v16);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MinX = CGRectGetMinY(v17);
    }

    v8 = -MinX;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    MaxX = CGRectGetMaxX(v19);
    goto LABEL_9;
  }

  MinY = 0.0;
  if (v7 == 3)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MinY = CGRectGetMinY(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    MaxX = CGRectGetMaxY(v15);
LABEL_9:
    v8 = MaxX;
  }

LABEL_12:
  v12 = MinY;
  result.var1 = v8;
  result.var0 = v12;
  return result;
}

- (void)_updateDirectionIfNeeded
{
  if ([(ISVisibilityOffsetHelper *)self direction]== 1)
  {
    v7 = [(ISVisibilityOffsetHelper *)self _scrollView];
    [v7 contentSize];
    v4 = v3;
    [v7 bounds];
    if (v4 >= v5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    [(ISVisibilityOffsetHelper *)self setDirection:v6];
  }
}

- (void)computeVisibilityOffsetsInScrollView:(id)a3 withTargetContentOffset:(CGPoint)a4 usingBlock:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  [(ISVisibilityOffsetHelper *)self _setScrollView:a3];
  [(ISVisibilityOffsetHelper *)self _setTargetContentOffset:x, y];
  [(ISVisibilityOffsetHelper *)self _updateDirectionIfNeeded];
  v9[2](v9, self);

  [(ISVisibilityOffsetHelper *)self _setScrollView:0];
}

@end