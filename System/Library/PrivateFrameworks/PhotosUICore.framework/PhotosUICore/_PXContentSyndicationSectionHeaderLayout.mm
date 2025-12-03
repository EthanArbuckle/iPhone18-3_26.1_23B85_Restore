@interface _PXContentSyndicationSectionHeaderLayout
- (PXSimpleIndexPath)sectionIndexPath;
- (_PXContentSyndicationSectionHeaderLayout)init;
- (_PXContentSyndicationSectionHeaderLayout)initWithSpec:(id)spec socialLayerHighlightProvider:(id)provider;
- (id)additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:(id)view;
- (void)_updateReferenceAssetForHighlightIfNeeded;
- (void)setDataSource:(id)source;
- (void)setReferenceAssetForHighlight:(id)highlight;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)path;
- (void)setSpec:(id)spec;
- (void)socialLayerHighlightProvider:(id)provider didChangeSocialLayerHighlight:(id)highlight forAsset:(id)asset;
@end

@implementation _PXContentSyndicationSectionHeaderLayout

- (void)setSectionIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[33].item;
  *&retstr->dataSourceIdentifier = *&self[33].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:(id)view
{
  array = [MEMORY[0x1E695DF70] array];
  v5 = *off_1E7721C98;
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  assetCollectionManager = [(_PXContentSyndicationSectionHeaderLayout *)self assetCollectionManager];
  if ([assetCollectionManager canPerformActionType:v5])
  {
    v8 = [assetCollectionManager localizedTitleForActionType:v5 useCase:0];
    v9 = MEMORY[0x1E69DC628];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __121___PXContentSyndicationSectionHeaderLayout_additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView___block_invoke;
    v15 = &unk_1E7746010;
    v16 = assetCollectionManager;
    v17 = v5;
    v10 = [v9 actionWithTitle:v8 image:v6 identifier:0 handler:&v12];
    [array addObject:{v10, v12, v13, v14, v15}];
  }

  return array;
}

- (void)socialLayerHighlightProvider:(id)provider didChangeSocialLayerHighlight:(id)highlight forAsset:(id)asset
{
  highlightCopy = highlight;
  contentView = [(PXGSingleViewLayout *)self contentView];
  if (contentView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [contentView px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:168 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.contentView", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:168 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.contentView", v10}];
  }

LABEL_3:
  [contentView setSocialLayerHighlight:highlightCopy];

  [(PXGSingleViewLayout *)self viewSizeDidChange];
}

- (void)_updateReferenceAssetForHighlightIfNeeded
{
  dataSource = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
  containsAnyItems = [dataSource containsAnyItems];

  if (containsAnyItems)
  {
    v10 = 0u;
    v11 = 0u;
    dataSource2 = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
    v6 = dataSource2;
    if (dataSource2)
    {
      [dataSource2 firstItemIndexPath];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    dataSource3 = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v8 = [dataSource3 assetAtItemIndexPath:v9];

    [(_PXContentSyndicationSectionHeaderLayout *)self setReferenceAssetForHighlight:v8];
  }

  else
  {

    [(_PXContentSyndicationSectionHeaderLayout *)self setReferenceAssetForHighlight:0];
  }
}

- (void)setReferenceAssetForHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = self->_referenceAssetForHighlight;
  socialLayerHighlightProvider2 = v5;
  if (v5 == highlightCopy)
  {
    goto LABEL_7;
  }

  v7 = [(PXDisplayAsset *)v5 isEqual:?];

  if ((v7 & 1) == 0)
  {
    if (self->_referenceAssetForHighlight)
    {
      socialLayerHighlightProvider = [(_PXContentSyndicationSectionHeaderLayout *)self socialLayerHighlightProvider];
      [socialLayerHighlightProvider unregisterChangeObserver:self forAsset:self->_referenceAssetForHighlight];
    }

    objc_storeStrong(&self->_referenceAssetForHighlight, highlight);
    if (self->_referenceAssetForHighlight)
    {
      socialLayerHighlightProvider2 = [(_PXContentSyndicationSectionHeaderLayout *)self socialLayerHighlightProvider];
      [socialLayerHighlightProvider2 registerChangeObserver:self forAsset:self->_referenceAssetForHighlight];
LABEL_7:
    }
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v5 = self->_dataSource;
  v6 = v5;
  if (v5 == sourceCopy)
  {
  }

  else
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, source);
      [(_PXContentSyndicationSectionHeaderLayout *)self _updateReferenceAssetForHighlightIfNeeded];
    }
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXGSingleViewLayout *)self viewContentDidChange];
    specCopy = v6;
  }
}

- (_PXContentSyndicationSectionHeaderLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:117 description:{@"%s is not available as initializer", "-[_PXContentSyndicationSectionHeaderLayout init]"}];

  abort();
}

- (_PXContentSyndicationSectionHeaderLayout)initWithSpec:(id)spec socialLayerHighlightProvider:(id)provider
{
  specCopy = spec;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = _PXContentSyndicationSectionHeaderLayout;
  v9 = [(PXGSingleViewLayout *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spec, spec);
    objc_storeStrong(&v10->_socialLayerHighlightProvider, provider);
    v11 = [PXContentSyndicationSectionHeaderView alloc];
    v12 = [(PXContentSyndicationSectionHeaderView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sectionHeaderContentView = v10->_sectionHeaderContentView;
    v10->_sectionHeaderContentView = v12;

    [(PXContentSyndicationSectionHeaderView *)v10->_sectionHeaderContentView setDelegate:v10];
    [(PXGSingleViewLayout *)v10 setContentView:v10->_sectionHeaderContentView];
    sectionHeaderSpec = [(PXPhotosLayoutSpec *)v10->_spec sectionHeaderSpec];
    [(PXContentSyndicationSectionHeaderView *)v10->_sectionHeaderContentView setSpec:sectionHeaderSpec];
  }

  return v10;
}

@end