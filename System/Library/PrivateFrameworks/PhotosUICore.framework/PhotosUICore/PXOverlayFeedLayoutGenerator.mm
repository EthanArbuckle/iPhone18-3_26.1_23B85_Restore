@interface PXOverlayFeedLayoutGenerator
- ($AD15B6C785738E514ABCC493A298F7F8)_frameForItemAtIndex:(SEL)a3 in:(int64_t)a4 verticalOffset:(CGRect *)a5;
- (CGPoint)visibleOrigin;
- (CGRect)_frameForItemInColumn:(int64_t)a3 columnCount:(int64_t)a4 verticalOffset:(double)a5;
- (void)setVisibleOrigin:(CGPoint)a3 updateFirstItemPosition:(BOOL)a4;
- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6;
@end

@implementation PXOverlayFeedLayoutGenerator

- (CGPoint)visibleOrigin
{
  x = self->_visibleOrigin.x;
  y = self->_visibleOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_frameForItemInColumn:(int64_t)a3 columnCount:(int64_t)a4 verticalOffset:(double)a5
{
  v5 = [(PXOverlayFeedLayoutGenerator *)self metrics];
  [v5 referenceSize];
  [v5 contentInsets];
  PXEdgeInsetsInsetSize();
}

- ($AD15B6C785738E514ABCC493A298F7F8)_frameForItemAtIndex:(SEL)a3 in:(int64_t)a4 verticalOffset:(CGRect *)a5
{
  v38 = [(PXOverlayFeedLayoutGenerator *)self metrics:a4];
  [v38 referenceSize];
  if (!a4)
  {
    v17 = v10;
    v18 = v11;
    [v38 contentInsets];
    v20 = v18 + v19;
    [v38 firstRowTopMargin];
    a6 = v21 + v20;
    [(PXOverlayFeedLayoutGenerator *)self visibleOrigin];
    v23 = v22;
    v24 = 0.0;
    goto LABEL_20;
  }

  v12 = [v38 useSimpleLayout];
  v13 = [(PXOverlayFeedLayoutGenerator *)self itemCount];
  v14 = a4 - 1;
  v15 = (a4 - 1) % 15;
  if (!v12)
  {
    v14 = (a4 - 1) % 15;
  }

  if (v12)
  {
    goto LABEL_5;
  }

  v16 = (v13 - 1) % 15;
  if (15 * ((v13 - 1) / 15) >= a4)
  {
    v25 = 1;
    if (v15 < 0xE)
    {
      v25 = 2;
    }

    v26 = v15 < 12;
    goto LABEL_15;
  }

  if (v16 > 8)
  {
    if (v16 <= 10)
    {
      if (v16 != 9)
      {
        v36 = v15 < 8;
        goto LABEL_42;
      }

      v37 = v15 < 8;
LABEL_49:
      if (v37)
      {
        v16 = 4;
      }

      else
      {
        v16 = 1;
      }

      goto LABEL_18;
    }

    if (v16 != 11)
    {
      if (v16 != 13)
      {
        if (v16 != 14)
        {
          goto LABEL_5;
        }

        v36 = v15 < 12;
        goto LABEL_42;
      }

      v37 = v15 < 12;
      goto LABEL_49;
    }

    v25 = 1;
    if (v15 < 0xA)
    {
      v25 = 2;
    }

    v26 = v15 < 8;
LABEL_15:
    if (v26)
    {
      v16 = 4;
    }

    else
    {
      v16 = v25;
    }

    goto LABEL_18;
  }

  if (v16 > 4)
  {
    if (v16 != 5)
    {
      if (v16 != 6)
      {
        if (v16 != 7)
        {
          goto LABEL_5;
        }

        v25 = 1;
        if (v15 < 6)
        {
          v25 = 2;
        }

        v26 = v15 < 4;
        goto LABEL_15;
      }

      v36 = v15 < 4;
LABEL_42:
      if (v36)
      {
        v16 = 4;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_18;
    }

    v37 = v15 < 4;
    goto LABEL_49;
  }

  if ((v16 - 2) < 2)
  {
    v16 = 2;
    goto LABEL_18;
  }

  if (v16 != 1)
  {
LABEL_5:
    v16 = 4;
  }

LABEL_18:
  v27 = v14 % v16;
  [(PXOverlayFeedLayoutGenerator *)self _frameForItemInColumn:v14 % v16 columnCount:v16 verticalOffset:a6];
  v24 = v28;
  v23 = v29;
  v17 = v30;
  v18 = v31;
  if (v27 == v16 - 1)
  {
    MaxY = CGRectGetMaxY(*&v28);
    [v38 interItemSpacing];
    v33 = v38;
    a6 = MaxY + v34;
    goto LABEL_21;
  }

LABEL_20:
  v33 = v38;
LABEL_21:
  retstr->var0.origin.x = v24;
  retstr->var0.origin.y = v23;
  retstr->var0.size.width = v17;
  retstr->var0.size.height = v18;
  retstr->var1 = a6;

  return result;
}

- (void)updateContentSize:(CGSize *)a3 itemRects:(CGRect *)a4 itemKinds:(int64_t *)a5 zPositions:(float *)a6
{
  v12 = [(PXOverlayFeedLayoutGenerator *)self itemCount];
  v13 = [(PXOverlayFeedLayoutGenerator *)self metrics];
  [v13 referenceSize];
  v15 = v14;
  v17 = v16;
  [v13 contentInsets];
  v19 = v18;
  v21 = v20;
  if (v15 > 0.0)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXOverlayFeedLayoutGenerator.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"itemCount > 0"}];

    goto LABEL_5;
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"PXOverlayFeedLayoutGenerator.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"referenceSize.width > 0"}];

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  v22 = 0;
  v23 = a4;
  do
  {
    [(PXOverlayFeedLayoutGenerator *)self _frameForItemAtIndex:v22 in:a4 verticalOffset:0.0];
    v23->origin = 0u;
    v23->size = 0u;
    ++v23;
    a5[v22] = 0;
    a6[v22++] = -1.0;
  }

  while (v12 != v22);
LABEL_5:
  *a6 = 0.0;
  a3->width = v15;
  MaxY = CGRectGetMaxY(a4[v12 - 1]);
  if (v12 > 1)
  {
    v25 = v21 + v19 + MaxY;
    MaxY = v17 + CGRectGetMinY(a4[1]) - v19;
    if (v25 >= MaxY)
    {
      MaxY = v25;
    }
  }

  a3->height = MaxY;
}

- (void)setVisibleOrigin:(CGPoint)a3 updateFirstItemPosition:(BOOL)a4
{
  if (a3.x != self->_visibleOrigin.x || a3.y != self->_visibleOrigin.y)
  {
    v5 = a4;
    [(PXOverlayFeedLayoutGenerator *)self setVisibleOrigin:?];
    if (v5)
    {

      [(PXCachingLayoutGenerator *)self invalidate];
    }
  }
}

@end