@interface PUVideoHighlightStripView
@end

@implementation PUVideoHighlightStripView

void __44___PUVideoHighlightStripView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 setBackgroundColor:*(a1 + 32)];
  if ([*(a1 + 40) count] <= a3)
  {
    [v5 setHidden:1];
  }

  else
  {
    [v5 setHidden:{0, *(a1 + 48)}];
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v7 = v6;
    if (v6)
    {
      [v6 CMTimeRangeValue];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
      v22 = 0u;
    }

    v8 = *(a1 + 88);
    *&v21.value = v22;
    v21.epoch = *&v23[0];
    v9 = v8 * CMTimeGetSeconds(&v21);
    v10 = *(a1 + 48);
    v11 = *(a1 + 88);
    v21 = *(v23 + 8);
    v12 = v9 / v10;
    width = v11 * CMTimeGetSeconds(&v21) / *(a1 + 48);
    y = CGRectGetMaxY(*(a1 + 56)) + -2.0;
    if (width >= 2.0)
    {
      height = 2.0;
    }

    else
    {
      v24.size.height = 2.0;
      v24.origin.x = v12;
      v24.origin.y = y;
      v24.size.width = width;
      v25 = CGRectInset(v24, (2.0 - width) * -0.5, 0.0);
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
      v12 = fmax(v25.origin.x, 0.0);
      v16 = CGRectGetMaxX(*(a1 + 56)) - v25.size.width;
      if (v16 < v12)
      {
        v12 = v16;
      }
    }

    v26.origin.x = v12;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectIntersection(v26, *(a1 + 56));
    x = v27.origin.x;
    v18 = v27.origin.y;
    v19 = v27.size.width;
    v20 = v27.size.height;
    CGRectGetMinX(v27);
    CGRectGetMaxX(*(a1 + 56));
    v28.origin.x = x;
    v28.origin.y = v18;
    v28.size.width = v19;
    v28.size.height = v20;
    CGRectGetMaxX(v28);
    PXEdgeInsetsMake();
    [v5 setExpandedOutsets:?];
    [v5 setHighlightColor:*(a1 + 32)];
    [v5 setFrame:{x, v18, v19, v20}];
  }
}

void __58___PUVideoHighlightStripView__updateCurrentTimeRangeIndex__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  memset(&v11, 0, sizeof(v11));
  if (v7)
  {
    [v7 CMTimeRangeValue];
  }

  range = v11;
  v9 = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &v9))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end