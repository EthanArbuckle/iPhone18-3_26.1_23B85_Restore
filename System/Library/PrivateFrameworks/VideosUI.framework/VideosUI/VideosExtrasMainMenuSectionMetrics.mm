@interface VideosExtrasMainMenuSectionMetrics
- (CGSize)_horizontalFittingSizeForFontDescriptor:(id)descriptor gutterSize:(double)size itemCount:(int64_t)count itemSizes:(CGSize *)sizes;
- (CGSize)sizeForCellAtIndex:(int64_t)index;
- (CGSize)totalFittingSize;
- (VideosExtrasMainMenuSectionMetricsDataSource)dataSource;
- (void)_recalculateSizes;
- (void)_updateAllMetrics;
- (void)dealloc;
- (void)setDataSource:(id)source;
- (void)setDesiredCellSpacing:(double)spacing;
- (void)setDesiredFontDescriptor:(id)descriptor;
- (void)setFittingWidth:(double)width;
- (void)setMinimumCellSpacing:(double)spacing;
- (void)setMinimumFontDescriptor:(id)descriptor;
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

  dataSource = [(VideosExtrasMainMenuSectionMetrics *)self dataSource];
  self->_itemCount = [dataSource numberOfItemsForSectionMetrics:self];

  self->_calculatedSizes = malloc_type_malloc(16 * self->_itemCount, 0x1000040451B5BE8uLL);

  [(VideosExtrasMainMenuSectionMetrics *)self _updateAllMetrics];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    v5 = obj;
  }
}

- (void)setDesiredFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_desiredFontDescriptor != descriptorCopy)
  {
    v6 = descriptorCopy;
    objc_storeStrong(&self->_desiredFontDescriptor, descriptor);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    descriptorCopy = v6;
  }
}

- (void)setMinimumFontDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_minimumFontDescriptor != descriptorCopy)
  {
    v6 = descriptorCopy;
    objc_storeStrong(&self->_minimumFontDescriptor, descriptor);
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
    descriptorCopy = v6;
  }
}

- (void)setDesiredCellSpacing:(double)spacing
{
  if (vabdd_f64(spacing, self->_desiredCellSpacing) >= 0.00000011920929)
  {
    self->_desiredCellSpacing = spacing;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (void)setMinimumCellSpacing:(double)spacing
{
  if (vabdd_f64(spacing, self->_minimumCellSpacing) >= 0.00000011920929)
  {
    self->_minimumCellSpacing = spacing;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (void)setFittingWidth:(double)width
{
  if (vabdd_f64(width, self->_fittingWidth) >= 0.00000011920929)
  {
    self->_fittingWidth = width;
    [(VideosExtrasMainMenuSectionMetrics *)self _setNeedsUpdate];
  }
}

- (CGSize)sizeForCellAtIndex:(int64_t)index
{
  if (index < 0 || self->_itemCount <= index)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:&stru_1F5DB25C0];
    v3 = MEMORY[0x1E695F060];
  }

  else
  {
    v3 = &self->_calculatedSizes[index];
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
  desiredFontDescriptor = [(VideosExtrasMainMenuSectionMetrics *)self desiredFontDescriptor];
  itemCount = self->_itemCount;
  calculatedSizes = self->_calculatedSizes;
  obj = desiredFontDescriptor;
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

- (CGSize)_horizontalFittingSizeForFontDescriptor:(id)descriptor gutterSize:(double)size itemCount:(int64_t)count itemSizes:(CGSize *)sizes
{
  descriptorCopy = descriptor;
  v12 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  dataSource = [(VideosExtrasMainMenuSectionMetrics *)self dataSource];
  if (count >= 1)
  {
    v14 = 0;
    p_height = &sizes->height;
    do
    {
      [dataSource sectionMetrics:self sizeForItemAtIndex:v14 withFontDescriptor:descriptorCopy];
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

    while (count != v14);
  }

  if (count <= 0)
  {
    v18 = v12;
  }

  else
  {
    v18 = v12 + size * (count - 1);
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