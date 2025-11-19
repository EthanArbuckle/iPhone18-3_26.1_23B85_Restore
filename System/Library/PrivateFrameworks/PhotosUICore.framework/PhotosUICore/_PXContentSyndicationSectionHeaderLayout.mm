@interface _PXContentSyndicationSectionHeaderLayout
- (PXSimpleIndexPath)sectionIndexPath;
- (_PXContentSyndicationSectionHeaderLayout)init;
- (_PXContentSyndicationSectionHeaderLayout)initWithSpec:(id)a3 socialLayerHighlightProvider:(id)a4;
- (id)additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:(id)a3;
- (void)_updateReferenceAssetForHighlightIfNeeded;
- (void)setDataSource:(id)a3;
- (void)setReferenceAssetForHighlight:(id)a3;
- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3;
- (void)setSpec:(id)a3;
- (void)socialLayerHighlightProvider:(id)a3 didChangeSocialLayerHighlight:(id)a4 forAsset:(id)a5;
@end

@implementation _PXContentSyndicationSectionHeaderLayout

- (void)setSectionIndexPath:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_sectionIndexPath.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_sectionIndexPath.item = v3;
}

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[33].item;
  *&retstr->dataSourceIdentifier = *&self[33].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (id)additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView:(id)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = *off_1E7721C98;
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v7 = [(_PXContentSyndicationSectionHeaderLayout *)self assetCollectionManager];
  if ([v7 canPerformActionType:v5])
  {
    v8 = [v7 localizedTitleForActionType:v5 useCase:0];
    v9 = MEMORY[0x1E69DC628];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __121___PXContentSyndicationSectionHeaderLayout_additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView___block_invoke;
    v15 = &unk_1E7746010;
    v16 = v7;
    v17 = v5;
    v10 = [v9 actionWithTitle:v8 image:v6 identifier:0 handler:&v12];
    [v4 addObject:{v10, v12, v13, v14, v15}];
  }

  return v4;
}

- (void)socialLayerHighlightProvider:(id)a3 didChangeSocialLayerHighlight:(id)a4 forAsset:(id)a5
{
  v7 = a4;
  v13 = [(PXGSingleViewLayout *)self contentView];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v13 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:168 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.contentView", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:168 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.contentView", v10}];
  }

LABEL_3:
  [v13 setSocialLayerHighlight:v7];

  [(PXGSingleViewLayout *)self viewSizeDidChange];
}

- (void)_updateReferenceAssetForHighlightIfNeeded
{
  v3 = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
  v4 = [v3 containsAnyItems];

  if (v4)
  {
    v10 = 0u;
    v11 = 0u;
    v5 = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
    v6 = v5;
    if (v5)
    {
      [v5 firstItemIndexPath];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v7 = [(_PXContentSyndicationSectionHeaderLayout *)self dataSource];
    v9[0] = v10;
    v9[1] = v11;
    v8 = [v7 assetAtItemIndexPath:v9];

    [(_PXContentSyndicationSectionHeaderLayout *)self setReferenceAssetForHighlight:v8];
  }

  else
  {

    [(_PXContentSyndicationSectionHeaderLayout *)self setReferenceAssetForHighlight:0];
  }
}

- (void)setReferenceAssetForHighlight:(id)a3
{
  v9 = a3;
  v5 = self->_referenceAssetForHighlight;
  v6 = v5;
  if (v5 == v9)
  {
    goto LABEL_7;
  }

  v7 = [(PXDisplayAsset *)v5 isEqual:?];

  if ((v7 & 1) == 0)
  {
    if (self->_referenceAssetForHighlight)
    {
      v8 = [(_PXContentSyndicationSectionHeaderLayout *)self socialLayerHighlightProvider];
      [v8 unregisterChangeObserver:self forAsset:self->_referenceAssetForHighlight];
    }

    objc_storeStrong(&self->_referenceAssetForHighlight, a3);
    if (self->_referenceAssetForHighlight)
    {
      v6 = [(_PXContentSyndicationSectionHeaderLayout *)self socialLayerHighlightProvider];
      [v6 registerChangeObserver:self forAsset:self->_referenceAssetForHighlight];
LABEL_7:
    }
  }
}

- (void)setDataSource:(id)a3
{
  v8 = a3;
  v5 = self->_dataSource;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXAssetsDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, a3);
      [(_PXContentSyndicationSectionHeaderLayout *)self _updateReferenceAssetForHighlightIfNeeded];
    }
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXGSingleViewLayout *)self viewContentDidChange];
    v5 = v6;
  }
}

- (_PXContentSyndicationSectionHeaderLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationSectionHeaderLayoutProvider.m" lineNumber:117 description:{@"%s is not available as initializer", "-[_PXContentSyndicationSectionHeaderLayout init]"}];

  abort();
}

- (_PXContentSyndicationSectionHeaderLayout)initWithSpec:(id)a3 socialLayerHighlightProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _PXContentSyndicationSectionHeaderLayout;
  v9 = [(PXGSingleViewLayout *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spec, a3);
    objc_storeStrong(&v10->_socialLayerHighlightProvider, a4);
    v11 = [PXContentSyndicationSectionHeaderView alloc];
    v12 = [(PXContentSyndicationSectionHeaderView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sectionHeaderContentView = v10->_sectionHeaderContentView;
    v10->_sectionHeaderContentView = v12;

    [(PXContentSyndicationSectionHeaderView *)v10->_sectionHeaderContentView setDelegate:v10];
    [(PXGSingleViewLayout *)v10 setContentView:v10->_sectionHeaderContentView];
    v14 = [(PXPhotosLayoutSpec *)v10->_spec sectionHeaderSpec];
    [(PXContentSyndicationSectionHeaderView *)v10->_sectionHeaderContentView setSpec:v14];
  }

  return v10;
}

@end