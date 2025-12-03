@interface PXPhotosGridMessagesBodyLayout
- (PXPhotosGridMessagesBodyLayout)init;
- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)assetForItemIndex:(int64_t)index;
- (id)assetReferenceForItemIndex:(int64_t)index;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (void)_updateNumberOfColumns;
- (void)setDataSource:(id)source section:(int64_t)section;
- (void)setSpec:(id)spec;
@end

@implementation PXPhotosGridMessagesBodyLayout

- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = [(PXPhotosGridMessagesBodyLayout *)self spec:*&index];
  [v4 itemCornerRadius];
  v6 = v5;

  return v6;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [layoutCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridMessagesBodyLayout.m" lineNumber:115 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v17, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridMessagesBodyLayout.m" lineNumber:115 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v17}];
  }

LABEL_3:
  v7 = [layoutCopy itemForSpriteIndex:0];
  v8 = [layoutCopy numberOfItems] - v7;
  v9 = self->_cachedClampedItemRange.location == v7 && self->_cachedClampedItemRange.length == v8;
  if (!v9 || (cachedClampedFetchResult = self->_cachedClampedFetchResult) == 0)
  {
    dataSource = [(PXPhotosGridMessagesBodyLayout *)self dataSource];
    v20[0] = [dataSource identifier];
    v20[1] = [(PXPhotosGridMessagesBodyLayout *)self section];
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v21 = vnegq_f64(v13);
    [dataSource assetsInSectionIndexPath:v20];
    objc_claimAutoreleasedReturnValue();
    PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  v11 = cachedClampedFetchResult;

  return v11;
}

- (id)assetReferenceForItemIndex:(int64_t)index
{
  dataSource = [(PXPhotosGridMessagesBodyLayout *)self dataSource];
  v8[0] = [dataSource identifier];
  v8[1] = [(PXPhotosGridMessagesBodyLayout *)self section];
  v8[2] = index;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [dataSource assetReferenceAtItemIndexPath:v8];

  return v6;
}

- (id)assetForItemIndex:(int64_t)index
{
  dataSource = [(PXPhotosGridMessagesBodyLayout *)self dataSource];
  v8[0] = [dataSource identifier];
  v8[1] = [(PXPhotosGridMessagesBodyLayout *)self section];
  v8[2] = index;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [dataSource assetAtItemIndexPath:v8];

  return v6;
}

- (void)setDataSource:(id)source section:(int64_t)section
{
  sourceCopy = source;
  if (*&self->_section != __PAIR128__(sourceCopy, section))
  {
    v10 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    self->_section = section;
    assetDecorationSource = [(PXPhotosGridMessagesBodyLayout *)self assetDecorationSource];
    [assetDecorationSource setDataSource:v10 section:section];

    self->_cachedClampedItemRange = xmmword_1A5380D90;
    cachedClampedFetchResult = self->_cachedClampedFetchResult;
    self->_cachedClampedFetchResult = 0;

    [(PXPhotosGridMessagesBodyLayout *)self _updateNumberOfColumns];
    sourceCopy = v10;
  }
}

- (void)_updateNumberOfColumns
{
  dataSource = [(PXPhotosGridMessagesBodyLayout *)self dataSource];
  if ([dataSource numberOfSections] < 1)
  {
    v5 = 0;
  }

  else
  {
    dataSource2 = [(PXPhotosGridMessagesBodyLayout *)self dataSource];
    v5 = [dataSource2 numberOfItemsInSection:0];
  }

  spec = [(PXPhotosGridMessagesBodyLayout *)self spec];
  if (spec)
  {
    spec2 = [(PXPhotosGridMessagesBodyLayout *)self spec];
    -[PXPhotosGridMessagesBodyLayout setNumberOfColumns:](self, "setNumberOfColumns:", [spec2 numberOfColumnsForNumberOfItems:v5]);
  }

  else
  {
    [(PXPhotosGridMessagesBodyLayout *)self setNumberOfColumns:4];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v21 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXPhotosGridMessagesLayoutSpec *)v21 interItemSpacing];
    [(PXPhotosGridMessagesBodyLayout *)self setInterItemSpacing:?];
    [(PXPhotosGridMessagesLayoutSpec *)v21 padding];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    layoutDirection = [(PXPhotosGridMessagesLayoutSpec *)v21 layoutDirection];
    if (layoutDirection == 2)
    {
      v15 = v9;
    }

    else
    {
      v15 = v13;
    }

    if (layoutDirection == 2)
    {
      v16 = v13;
    }

    else
    {
      v16 = v9;
    }

    [(PXPhotosGridMessagesBodyLayout *)self setPadding:v7, v16, v11, v15];
    [(PXPhotosGridMessagesLayoutSpec *)v21 itemCornerRadius];
    *&v17 = v17;
    LODWORD(v18) = LODWORD(v17);
    LODWORD(v19) = LODWORD(v17);
    LODWORD(v20) = LODWORD(v17);
    [(PXPhotosGridMessagesBodyLayout *)self setItemCornerRadius:v17, v18, v19, v20];
    [(PXPhotosGridMessagesBodyLayout *)self _updateNumberOfColumns];
    specCopy = v21;
  }
}

- (PXPhotosGridMessagesBodyLayout)init
{
  v17.receiver = self;
  v17.super_class = PXPhotosGridMessagesBodyLayout;
  v2 = [(PXGItemsLayout *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(PXPhotosGridMessagesBodyLayout *)v2 setMediaKind:2];
    [(PXPhotosGridMessagesBodyLayout *)v3 setPresentationType:0];
    [(PXGItemsLayout *)v3 setLazy:1];
    [(PXPhotosGridMessagesBodyLayout *)v3 setContentSource:v3];
    [(PXPhotosGridMessagesBodyLayout *)v3 setContentMode:1];
    [(PXPhotosGridMessagesBodyLayout *)v3 setEnablePerItemMargin:1];
    v4 = +[PXMessagesUISettings sharedInstance];
    v5 = objc_alloc_init(off_1E7721800);
    [v5 setDecoratedLayout:v3];
    [v5 setForbiddenBadges:0xFFFFFFFDFFFFFFFFLL];
    assetDecorationSource = v3->_assetDecorationSource;
    v3->_assetDecorationSource = v5;
    v7 = v5;

    v8 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    contentShadow = v3->_contentShadow;
    v3->_contentShadow = v8;

    [v4 gridShadowXOffset];
    v11 = v10;
    [v4 gridShadowYOffset];
    [(NSShadow *)v3->_contentShadow setShadowOffset:v11, v12];
    [v4 gridShadowBlurRadius];
    [(NSShadow *)v3->_contentShadow setShadowBlurRadius:?];
    v13 = MEMORY[0x1E69DC888];
    [v4 gridShadowAlpha];
    v15 = [v13 colorWithWhite:0.0 alpha:v14];
    [(NSShadow *)v3->_contentShadow setShadowColor:v15];
  }

  return v3;
}

@end