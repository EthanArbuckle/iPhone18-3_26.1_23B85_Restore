@interface SKUICellLayout
- (SKUICellLayout)initWithCollectionViewCell:(id)cell;
- (SKUICellLayout)initWithParentView:(id)view;
- (SKUICellLayout)initWithTableViewCell:(id)cell;
- (UIView)contentView;
- (UIView)parentCellView;
- (void)setNeedsLayout;
@end

@implementation SKUICellLayout

- (SKUICellLayout)initWithCollectionViewCell:(id)cell
{
  cellCopy = cell;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICellLayout *)v5 initWithCollectionViewCell:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUICellLayout;
  v13 = [(SKUICellLayout *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_cell, cellCopy);
    contentView = [cellCopy contentView];
    objc_storeWeak(&v14->_contentView, contentView);

    WeakRetained = objc_loadWeakRetained(&v14->_cell);
    v14->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v14;
}

- (SKUICellLayout)initWithParentView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICellLayout *)v5 initWithParentView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUICellLayout;
  v13 = [(SKUICellLayout *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_cell, viewCopy);
    objc_storeWeak(&v14->_contentView, viewCopy);
    WeakRetained = objc_loadWeakRetained(&v14->_cell);
    v14->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v14;
}

- (SKUICellLayout)initWithTableViewCell:(id)cell
{
  cellCopy = cell;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICellLayout *)v5 initWithTableViewCell:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v18.receiver = self;
  v18.super_class = SKUICellLayout;
  v13 = [(SKUICellLayout *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_cell, cellCopy);
    contentView = [cellCopy contentView];
    objc_storeWeak(&v14->_contentView, contentView);

    WeakRetained = objc_loadWeakRetained(&v14->_cell);
    v14->_parentWantsCellNeedsLayout = objc_opt_respondsToSelector() & 1;
  }

  return v14;
}

- (void)setNeedsLayout
{
  parentWantsCellNeedsLayout = self->_parentWantsCellNeedsLayout;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  v4 = WeakRetained;
  if (parentWantsCellNeedsLayout)
  {
    [WeakRetained setCellLayoutNeedsLayout];
  }

  else
  {
    [WeakRetained setNeedsLayout];
  }
}

- (UIView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

- (UIView)parentCellView
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end