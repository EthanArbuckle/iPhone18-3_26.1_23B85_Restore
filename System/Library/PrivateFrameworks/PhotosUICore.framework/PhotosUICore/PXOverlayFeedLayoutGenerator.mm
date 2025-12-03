@interface PXOverlayFeedLayoutGenerator
- ($AD15B6C785738E514ABCC493A298F7F8)_frameForItemAtIndex:(SEL)index in:(int64_t)in verticalOffset:(CGRect *)offset;
- (CGPoint)visibleOrigin;
- (CGRect)_frameForItemInColumn:(int64_t)column columnCount:(int64_t)count verticalOffset:(double)offset;
- (void)setVisibleOrigin:(CGPoint)origin updateFirstItemPosition:(BOOL)position;
- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds zPositions:(float *)positions;
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

- (CGRect)_frameForItemInColumn:(int64_t)column columnCount:(int64_t)count verticalOffset:(double)offset
{
  metrics = [(PXOverlayFeedLayoutGenerator *)self metrics];
  [metrics referenceSize];
  [metrics contentInsets];
  PXEdgeInsetsInsetSize();
}

- ($AD15B6C785738E514ABCC493A298F7F8)_frameForItemAtIndex:(SEL)index in:(int64_t)in verticalOffset:(CGRect *)offset
{
  v38 = [(PXOverlayFeedLayoutGenerator *)self metrics:in];
  [v38 referenceSize];
  if (!in)
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

  useSimpleLayout = [v38 useSimpleLayout];
  itemCount = [(PXOverlayFeedLayoutGenerator *)self itemCount];
  v14 = in - 1;
  v15 = (in - 1) % 15;
  if (!useSimpleLayout)
  {
    v14 = (in - 1) % 15;
  }

  if (useSimpleLayout)
  {
    goto LABEL_5;
  }

  v16 = (itemCount - 1) % 15;
  if (15 * ((itemCount - 1) / 15) >= in)
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

- (void)updateContentSize:(CGSize *)size itemRects:(CGRect *)rects itemKinds:(int64_t *)kinds zPositions:(float *)positions
{
  itemCount = [(PXOverlayFeedLayoutGenerator *)self itemCount];
  metrics = [(PXOverlayFeedLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v15 = v14;
  v17 = v16;
  [metrics contentInsets];
  v19 = v18;
  v21 = v20;
  if (v15 > 0.0)
  {
    if (itemCount)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOverlayFeedLayoutGenerator.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"itemCount > 0"}];

    goto LABEL_5;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXOverlayFeedLayoutGenerator.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"referenceSize.width > 0"}];

  if (!itemCount)
  {
    goto LABEL_10;
  }

LABEL_3:
  v22 = 0;
  rectsCopy = rects;
  do
  {
    [(PXOverlayFeedLayoutGenerator *)self _frameForItemAtIndex:v22 in:rects verticalOffset:0.0];
    rectsCopy->origin = 0u;
    rectsCopy->size = 0u;
    ++rectsCopy;
    kinds[v22] = 0;
    positions[v22++] = -1.0;
  }

  while (itemCount != v22);
LABEL_5:
  *positions = 0.0;
  size->width = v15;
  MaxY = CGRectGetMaxY(rects[itemCount - 1]);
  if (itemCount > 1)
  {
    v25 = v21 + v19 + MaxY;
    MaxY = v17 + CGRectGetMinY(rects[1]) - v19;
    if (v25 >= MaxY)
    {
      MaxY = v25;
    }
  }

  size->height = MaxY;
}

- (void)setVisibleOrigin:(CGPoint)origin updateFirstItemPosition:(BOOL)position
{
  if (origin.x != self->_visibleOrigin.x || origin.y != self->_visibleOrigin.y)
  {
    positionCopy = position;
    [(PXOverlayFeedLayoutGenerator *)self setVisibleOrigin:?];
    if (positionCopy)
    {

      [(PXCachingLayoutGenerator *)self invalidate];
    }
  }
}

@end