@interface UICollectionViewTableHeaderFooterView
- (UICollectionViewTableHeaderFooterView)initWithCoder:(id)coder;
- (UICollectionViewTableHeaderFooterView)initWithReuseIdentifier:(id)identifier;
- (UICollectionViewTableLayout)_tableLayout;
- (UICollectionViewTableLayoutAttributes)_tableAttributes;
- (UIColor)tintColor;
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (UIView)backgroundView;
- (UIView)contentView;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_commonInit;
- (void)applyLayoutAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundView:(id)view;
- (void)setTintColor:(id)color;
@end

@implementation UICollectionViewTableHeaderFooterView

- (void)_commonInit
{
  v3 = [UITableViewHeaderFooterView alloc];
  reuseIdentifier = [(UICollectionReusableView *)self reuseIdentifier];
  v5 = [(UITableViewHeaderFooterView *)v3 initWithReuseIdentifier:reuseIdentifier];

  [(UIView *)self addSubview:v5];
  [(UICollectionViewTableHeaderFooterView *)self setTableViewHeaderFooterView:v5];
}

- (UICollectionViewTableHeaderFooterView)initWithReuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = UICollectionViewTableHeaderFooterView;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  identifierCopy = identifier;
  v8 = [(UICollectionReusableView *)&v10 initWithFrame:v3, v4, v5, v6];
  [(UICollectionReusableView *)v8 _setReuseIdentifier:identifierCopy, v10.receiver, v10.super_class];

  [(UICollectionViewTableHeaderFooterView *)v8 _commonInit];
  return v8;
}

- (UICollectionViewTableHeaderFooterView)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UICollectionViewTableHeaderFooterView;
  coderCopy = coder;
  v4 = [(UICollectionReusableView *)&v8 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectForKey:{@"UITableViewHeaderFooterView", v8.receiver, v8.super_class}];

  [(UICollectionViewTableHeaderFooterView *)v4 setTableViewHeaderFooterView:v5];
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)v4 tableViewHeaderFooterView];
  [(UIView *)v4 addSubview:tableViewHeaderFooterView];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UICollectionViewTableHeaderFooterView;
  coderCopy = coder;
  [(UICollectionReusableView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tableViewHeaderFooterView forKey:{@"UITableViewHeaderFooterView", v5.receiver, v5.super_class}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableHeaderFooterView;
  [(UICollectionReusableView *)&v4 prepareForReuse];
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [tableViewHeaderFooterView setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = UICollectionViewTableHeaderFooterView;
  [(UIView *)&v12 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [tableViewHeaderFooterView setFrame:{v4, v6, v8, v10}];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v11.receiver = self;
  v11.super_class = UICollectionViewTableHeaderFooterView;
  [(UICollectionReusableView *)&v11 applyLayoutAttributes:attributes];
  _tableAttributes = [(UICollectionViewTableHeaderFooterView *)self _tableAttributes];
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setTableViewStyle:0 updateFrame:0];
  _tableLayout = [(UICollectionViewTableHeaderFooterView *)self _tableLayout];
  _constants = [_tableLayout _constants];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setConstants:_constants];

  _tableLayout2 = [(UICollectionViewTableHeaderFooterView *)self _tableLayout];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView setTable:_tableLayout2];

  -[UITableViewHeaderFooterView setSectionHeader:](self->_tableViewHeaderFooterView, "setSectionHeader:", [_tableAttributes isHeader]);
  [_tableAttributes maxTitleWidth];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView setMaxTitleWidth:?];
  [_tableAttributes margins];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setMarginWidth:v9];
  [_tableAttributes margins];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setRightMarginWidth:v10];
  -[UITableViewHeaderFooterView setTextAlignment:](self->_tableViewHeaderFooterView, "setTextAlignment:", [_tableAttributes textAlignment]);
  -[UITableViewHeaderFooterView _setInsetsContentViewsToSafeArea:](self->_tableViewHeaderFooterView, "_setInsetsContentViewsToSafeArea:", [_tableAttributes insetsContentViewsToSafeArea]);
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setupLabelAppearance];
  -[UICollectionViewTableHeaderFooterView setFloating:](self, "setFloating:", [_tableAttributes floating]);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  collectionViewLayout = [WeakRetained collectionViewLayout];
  if (collectionViewLayout)
  {
    v7 = collectionViewLayout;
    v8 = objc_loadWeakRetained(&self->super._collectionView);
    collectionViewLayout2 = [v8 collectionViewLayout];
    _estimatesSizes = [collectionViewLayout2 _estimatesSizes];

    if (_estimatesSizes)
    {
      v11 = objc_loadWeakRetained(&self->super._collectionView);
      collectionViewLayout3 = [v11 collectionViewLayout];
      _cellsShouldConferWithAutolayoutEngineForSizingInfo = [collectionViewLayout3 _cellsShouldConferWithAutolayoutEngineForSizingInfo];

      if (_cellsShouldConferWithAutolayoutEngineForSizingInfo)
      {
        tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
        v15 = _preferredAttributesFittingAttributesWithInnerView(self, attributesCopy, tableViewHeaderFooterView);

        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v15 = attributesCopy;
LABEL_7:

  return v15;
}

- (UICollectionViewTableLayout)_tableLayout
{
  _collectionView = [(UICollectionReusableView *)self _collectionView];
  collectionViewLayout = [_collectionView collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionViewLayout;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UICollectionViewTableLayoutAttributes)_tableAttributes
{
  _layoutAttributes = [(UICollectionReusableView *)self _layoutAttributes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _layoutAttributes;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIColor)tintColor
{
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  tintColor = [tableViewHeaderFooterView tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [tableViewHeaderFooterView setTintColor:colorCopy];
}

- (UILabel)textLabel
{
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  textLabel = [tableViewHeaderFooterView textLabel];

  return textLabel;
}

- (UILabel)detailTextLabel
{
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  detailTextLabel = [tableViewHeaderFooterView detailTextLabel];

  return detailTextLabel;
}

- (UIView)contentView
{
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  contentView = [tableViewHeaderFooterView contentView];

  return contentView;
}

- (UIView)backgroundView
{
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  backgroundView = [tableViewHeaderFooterView backgroundView];

  return backgroundView;
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  tableViewHeaderFooterView = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [tableViewHeaderFooterView setBackgroundView:viewCopy];
}

@end