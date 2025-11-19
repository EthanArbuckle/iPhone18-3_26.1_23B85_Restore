@interface _TVMLGridView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)rowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4;
- (id)rowMetricsForExpectedWidth:(double)a3 withContentInset:(UIEdgeInsets)a4 firstItemRowIndex:(int64_t *)a5;
@end

@implementation _TVMLGridView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = _TVMLGridView;
  [(_TVGridView *)&v14 sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = [(_TVMLGridView *)self headerView];

  if (v10)
  {
    [(UIView *)self->_headerView sizeThatFits:width, height];
    v9 = v9 + v11;
  }

  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)rowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4
{
  [(_TVMLGridView *)self contentInset];

  return [(_TVMLGridView *)self rowMetricsForExpectedWidth:a4 withContentInset:a3 firstItemRowIndex:v7, v8, v9, v10];
}

- (id)rowMetricsForExpectedWidth:(double)a3 withContentInset:(UIEdgeInsets)a4 firstItemRowIndex:(int64_t *)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11 = [(_TVMLGridView *)self collectionViewLayout];
  v12 = [(_TVMLGridView *)self numberOfSections];
  v13 = [(_TVMLGridView *)self delegate];
  v14 = [v13 indexPathForPreferredFocusedViewInCollectionView:self];

  if (v11)
  {
    [v11 cellMetrics];
    v15 = *&v68;
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v15 = 0.0;
    v68 = 0u;
  }

  [v11 minimumInteritemSpacing];
  v17 = v16;
  [v11 minimumLineSpacing];
  v19 = v18;
  v20 = a3 - (left + right);
  v51 = a5;
  if (([v11 isHeterogeneous] & 1) != 0 || v15 <= 0.0)
  {
    v25 = [(_TVMLGridView *)self delegate];
    v26 = objc_opt_respondsToSelector();

    v21 = 0;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v26 & 1) != 0 && v12 >= 1)
    {
      v27 = 0;
      v21 = 0;
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      v52 = v12;
      do
      {
        v28 = [(_TVMLGridView *)self numberOfItemsInSection:v27];
        if (v28 >= 1)
        {
          v29 = v28;
          v30 = 0;
          v31 = v20;
          do
          {
            v32 = [MEMORY[0x277CCAA70] indexPathForItem:v30 inSection:v27];
            v33 = [(_TVMLGridView *)self delegate];
            [v33 collectionView:self layout:v11 sizeForItemAtIndexPath:v32];
            v35 = v34;

            if (v31 < fmin(v35, v20))
            {
              ++v21;
              v31 = v20;
            }

            if (v14 && [v14 section] == v27)
            {
              v36 = [v14 item];
              v37 = v55;
              if (v30 == v36)
              {
                v37 = v21;
              }

              v55 = v37;
            }

            v31 = v31 - (v17 + v35);

            ++v30;
          }

          while (v29 != v30);
          ++v21;
          v12 = v52;
        }

        ++v27;
      }

      while (v27 != v12);
    }
  }

  else if (v12 < 1)
  {
    v21 = 0;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = ((v20 + v17) / (fmin(v15, v20) + v17));
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v24 = [(_TVMLGridView *)self numberOfItemsInSection:v22];
      if (v14 && v22 == [v14 section] && objc_msgSend(v14, "item") < v24)
      {
        v55 = v21 + ([v14 item] + v23) / v23 - 1;
      }

      v21 += (v23 - 1 + v24) / v23;
      ++v22;
    }

    while (v12 != v22);
  }

  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  memset(v64, 0, sizeof(v64));
  if (v11)
  {
    [v11 cellMetrics];
  }

  else
  {
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v57 = 0uLL;
    memset(v56, 0, sizeof(v56));
  }

  v38 = TVRowMetricsMakeWithCellMetrics(v56, v64);
  v39 = v21 - 1;
  if (v21 < 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * v21 - 1, v38}];
    v41 = 0;
    v53 = vdupq_lane_s64(*&top, 0);
    do
    {
      v42 = *(v64 + 8);
      v43 = v64[1].f64[1];
      v45 = *(&v67 + 1);
      v44 = *&v67;
      if (v41)
      {
        if (v21 == 1)
        {
          v43 = bottom + v64[1].f64[1];
          v45 = fmax(*(&v67 + 1) - bottom, 0.0);
          v42.f64[0] = bottom + v64[0].f64[1];
        }
      }

      else
      {
        v42 = vaddq_f64(v53, *(v64 + 8));
        v44 = fmax(*&v67 - top, 0.0);
      }

      *v56 = v64[0].f64[0];
      *(v56 + 8) = v42;
      v57 = v65;
      v58 = v66;
      *(&v56[1] + 1) = v43;
      *&v59 = v44;
      *(&v59 + 1) = v45;
      v46 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v56];
      [v40 addObject:v46];

      if (v41 < v39)
      {
        *&v56[0] = 1;
        *(&v56[0] + 1) = v19;
        v56[1] = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v47 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v56];
        [v40 addObject:v47];
      }

      ++v41;
      --v21;
    }

    while (v21);
  }

  if (v51)
  {
    if (v55 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = 0;
    }

    else
    {
      v48 = v55;
    }

    *v51 = v48 + v55;
  }

  v49 = [v40 copy];

  return v49;
}

@end