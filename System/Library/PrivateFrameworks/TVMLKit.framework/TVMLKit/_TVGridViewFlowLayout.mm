@interface _TVGridViewFlowLayout
- (TVCellMetrics)cellMetrics;
- (_TVGridViewFlowLayout)init;
- (double)expectedLineSpacing;
- (void)setCellMetrics:(TVCellMetrics *)a3;
@end

@implementation _TVGridViewFlowLayout

- (_TVGridViewFlowLayout)init
{
  v5.receiver = self;
  v5.super_class = _TVGridViewFlowLayout;
  v2 = [(_TVCollectionViewFlowLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UICollectionViewFlowLayout *)v2 setScrollDirection:0];
    [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  }

  return v3;
}

- (void)setCellMetrics:(TVCellMetrics *)a3
{
  self->_cellMetrics.cellSize = a3->cellSize;
  v4 = *&a3->cellInset.bottom;
  v6 = *&a3->cellPadding.top;
  v5 = *&a3->cellPadding.bottom;
  *&self->_cellMetrics.cellInset.top = *&a3->cellInset.top;
  *&self->_cellMetrics.cellInset.bottom = v4;
  *&self->_cellMetrics.cellPadding.top = v6;
  *&self->_cellMetrics.cellPadding.bottom = v5;
  v7 = *&a3->cellMargin.bottom;
  v9 = *&a3->cellInsetAlt.top;
  v8 = *&a3->cellInsetAlt.bottom;
  *&self->_cellMetrics.cellMargin.top = *&a3->cellMargin.top;
  *&self->_cellMetrics.cellMargin.bottom = v7;
  *&self->_cellMetrics.cellInsetAlt.top = v9;
  *&self->_cellMetrics.cellInsetAlt.bottom = v8;
  width = a3->cellSize.width;
  if (a3->cellSize.width == 0.0)
  {
    height = a3->cellSize.height;
  }

  else
  {
    height = a3->cellSize.width;
  }

  if (height > 2.22044605e-16 && a3->cellSize.height > 2.22044605e-16)
  {
    [(UICollectionViewFlowLayout *)self setItemSize:?];
  }

  [(_TVCollectionViewFlowLayout *)self setHeterogeneous:width == 0.0];
}

- (double)expectedLineSpacing
{
  v20[2] = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(_TVGridViewFlowLayout *)self cellMetrics];
  TVRowMetricsMakeWithCellMetrics(&v10, &v15);
  if (*(&v15 + 1) <= 0.0)
  {
    return NAN;
  }

  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  v2 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v10];
  v20[0] = v2;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  v3 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v10];
  v20[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = [TVMLUtilities rowSpacingMetricsForRowMetrics:v4, 0];
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    [v6 tv_rowMetricsValue];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v8 = *(&v10 + 1);
  return v8;
}

- (TVCellMetrics)cellMetrics
{
  v3 = *&self[4].cellInsetAlt.bottom;
  *&retstr->cellInsetAlt.bottom = *&self[4].cellInsetAlt.top;
  *&retstr->cellMargin.top = v3;
  *&retstr->cellMargin.bottom = *&self[4].cellMargin.top;
  v4 = *&self[4].cellPadding.bottom;
  *&retstr->cellPadding.bottom = *&self[4].cellPadding.top;
  *&retstr->cellInset.top = v4;
  v5 = *&self[4].cellInset.bottom;
  *&retstr->cellInset.bottom = *&self[4].cellInset.top;
  *&retstr->cellInsetAlt.top = v5;
  cellSize = self[4].cellSize;
  retstr->cellSize = *&self[3].cellMargin.bottom;
  *&retstr->cellPadding.top = cellSize;
  return self;
}

@end