@interface VideosExtrasMainMenuSectionMetrics
- (CGSize)_horizontalFittingSizeForFontDescriptor:(id)a3 gutterSize:(double)a4 itemCount:(int64_t)a5 itemSizes:(CGSize *)a6;
- (CGSize)sizeForCellAtIndex:(int64_t)a3;
- (CGSize)totalFittingSize;
- (VideosExtrasMainMenuSectionMetricsDataSource)dataSource;
- (void)_recalculateSizes;
- (void)_updateAllMetrics;
- (void)dealloc;
- (void)setDataSource:(id)a3;
- (void)setDesiredCellSpacing:(double)a3;
- (void)setDesiredFontDescriptor:(id)a3;
- (void)setFittingWidth:(double)a3;
- (void)setMinimumCellSpacing:(double)a3;
- (void)setMinimumFontDescriptor:(id)a3;
- (void)updateSizes;
@end

@implementation VideosExtrasMainMenuSectionMetrics

- (void)dealloc
{
  calculatedSizes = self->_calculatedSizes;
  if (calculatedSizes)
  {
    free(calculatedSizes);
  }

  v4.receiver = self;
  v4.super_class = VideosExtrasMainMenuSectionMetrics;
  [(VideosExtrasMainMenuSectionMetrics *)&v4 dealloc];
}

- (void)_recalculateSizes
{
  calculatedSizes = self->_calculatedSizes;
  if (calculatedSizes)
  {
    free(calculatedSizes);
  }

  v4 = [(VideosExtrasMainMenuSectionMetrics *)self dataSource];
  self->_itemCount = [v4 numberOfItemsForSectionMetrics:self];

  self->_calculatedSizes = malloc_type_malloc(16 * self->_itemCount, 0x1000040451B5BE8uLL);

  [(VideosExtrasMainMenuSectionMetrics *)self _updateAllMetrics];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    v5 = obj;
  }
}

- (void)setDesiredFontDescriptor:(id)a3
{
  v5 = a3;
  if (self->_desiredFontDescriptor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_desiredFontDescriptor, a3);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    v5 = v6;
  }
}

- (void)setMinimumFontDescriptor:(id)a3
{
  v5 = a3;
  if (self->_minimumFontDescriptor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_minimumFontDescriptor, a3);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    v5 = v6;
  }
}

- (void)setDesiredCellSpacing:(double)a3
{
  if (vabdd_f64(a3, self->_desiredCellSpacing) >= 0.00000011920929)
  {
    self->_desiredCellSpacing = a3;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (void)setMinimumCellSpacing:(double)a3
{
  if (vabdd_f64(a3, self->_minimumCellSpacing) >= 0.00000011920929)
  {
    self->_minimumCellSpacing = a3;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (void)setFittingWidth:(double)a3
{
  if (vabdd_f64(a3, self->_fittingWidth) >= 0.00000011920929)
  {
    self->_fittingWidth = a3;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (CGSize)sizeForCellAtIndex:(int64_t)a3
{
  if (a3 < 0 || self->_itemCount <= a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:&stru_1F5DB25C0];
    v3 = MEMORY[0x1E695F060];
  }

  else
  {
    v3 = &self->_calculatedSizes[a3];
  }

  width = v3->width;
  height = v3->height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)updateSizes
{
  [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];

  [(VideosExtrasMainMenuSectionMetrics *)self _recalculateSizes];
}

- (void)_updateAllMetrics
{
  [(VideosExtrasMainMenuSectionMetrics *)self desiredCellSpacing];
  minimumCellSpacing = v3;
  desiredWidth = self->_desiredWidth;
  v6 = [(VideosExtrasMainMenuSectionMetrics *)self desiredFontDescriptor];
  itemCount = self->_itemCount;
  calculatedSizes = self->_calculatedSizes;
  obj = v6;
  [VideosExtrasMainMenuSectionMetrics _horizontalFittingSizeForFontDescriptor:"_horizontalFittingSizeForFontDescriptor:gutterSize:itemCount:itemSizes:" gutterSize:minimumCellSpacing itemCount:? itemSizes:?];
  if (v9 <= desiredWidth || (minimumCellSpacing = self->_minimumCellSpacing, [(VideosExtrasMainMenuSectionMetrics *)self _horizontalFittingSizeForFontDescriptor:obj gutterSize:itemCount itemCount:calculatedSizes itemSizes:minimumCellSpacing], v9 <= desiredWidth))
  {
    v12 = obj;
  }

  else
  {
    v11 = self->_minimumFontDescriptor;

    [(VideosExtrasMainMenuSectionMetrics *)self _horizontalFittingSizeForFontDescriptor:v11 gutterSize:itemCount itemCount:calculatedSizes itemSizes:minimumCellSpacing];
    v12 = v11;
  }

  obja = v12;
  self->_totalFittingSize.width = v9;
  self->_totalFittingSize.height = v10;
  self->_fittingCellSpacing = minimumCellSpacing;
  objc_storeStrong(&self->_fittingFontDescriptor, v12);
}

- (CGSize)_horizontalFittingSizeForFontDescriptor:(id)a3 gutterSize:(double)a4 itemCount:(int64_t)a5 itemSizes:(CGSize *)a6
{
  v10 = a3;
  v12 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  v13 = [(VideosExtrasMainMenuSectionMetrics *)self dataSource];
  if (a5 >= 1)
  {
    v14 = 0;
    p_height = &a6->height;
    do
    {
      [v13 sectionMetrics:self sizeForItemAtIndex:v14 withFontDescriptor:v10];
      if (v17 > v11)
      {
        v11 = v17;
      }

      v12 = v12 + v16;
      *(p_height - 1) = v16;
      *p_height = v17;
      ++v14;
      p_height += 2;
    }

    while (a5 != v14);
  }

  if (a5 <= 0)
  {
    v18 = v12;
  }

  else
  {
    v18 = v12 + a4 * (a5 - 1);
  }

  v19 = v18;
  v20 = v11;
  result.height = v20;
  result.width = v19;
  return result;
}

- (VideosExtrasMainMenuSectionMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGSize)totalFittingSize
{
  width = self->_totalFittingSize.width;
  height = self->_totalFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end