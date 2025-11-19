@interface UICollectionViewTableHeaderFooterView
- (UICollectionViewTableHeaderFooterView)initWithCoder:(id)a3;
- (UICollectionViewTableHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (UICollectionViewTableLayout)_tableLayout;
- (UICollectionViewTableLayoutAttributes)_tableAttributes;
- (UIColor)tintColor;
- (UILabel)detailTextLabel;
- (UILabel)textLabel;
- (UIView)backgroundView;
- (UIView)contentView;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)_commonInit;
- (void)applyLayoutAttributes:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundView:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation UICollectionViewTableHeaderFooterView

- (void)_commonInit
{
  v3 = [UITableViewHeaderFooterView alloc];
  v4 = [(UICollectionReusableView *)self reuseIdentifier];
  v5 = [(UITableViewHeaderFooterView *)v3 initWithReuseIdentifier:v4];

  [(UIView *)self addSubview:v5];
  [(UICollectionViewTableHeaderFooterView *)self setTableViewHeaderFooterView:v5];
}

- (UICollectionViewTableHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = UICollectionViewTableHeaderFooterView;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = a3;
  v8 = [(UICollectionReusableView *)&v10 initWithFrame:v3, v4, v5, v6];
  [(UICollectionReusableView *)v8 _setReuseIdentifier:v7, v10.receiver, v10.super_class];

  [(UICollectionViewTableHeaderFooterView *)v8 _commonInit];
  return v8;
}

- (UICollectionViewTableHeaderFooterView)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UICollectionViewTableHeaderFooterView;
  v3 = a3;
  v4 = [(UICollectionReusableView *)&v8 initWithCoder:v3];
  v5 = [v3 decodeObjectForKey:{@"UITableViewHeaderFooterView", v8.receiver, v8.super_class}];

  [(UICollectionViewTableHeaderFooterView *)v4 setTableViewHeaderFooterView:v5];
  v6 = [(UICollectionViewTableHeaderFooterView *)v4 tableViewHeaderFooterView];
  [(UIView *)v4 addSubview:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UICollectionViewTableHeaderFooterView;
  v4 = a3;
  [(UICollectionReusableView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tableViewHeaderFooterView forKey:{@"UITableViewHeaderFooterView", v5.receiver, v5.super_class}];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableHeaderFooterView;
  [(UICollectionReusableView *)&v4 prepareForReuse];
  v3 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [v3 setNeedsLayout];
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
  v11 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)applyLayoutAttributes:(id)a3
{
  v11.receiver = self;
  v11.super_class = UICollectionViewTableHeaderFooterView;
  [(UICollectionReusableView *)&v11 applyLayoutAttributes:a3];
  v4 = [(UICollectionViewTableHeaderFooterView *)self _tableAttributes];
  v5 = [(UICollectionReusableView *)self _collectionView];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setTableViewStyle:0 updateFrame:0];
  v6 = [(UICollectionViewTableHeaderFooterView *)self _tableLayout];
  v7 = [v6 _constants];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setConstants:v7];

  v8 = [(UICollectionViewTableHeaderFooterView *)self _tableLayout];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView setTable:v8];

  -[UITableViewHeaderFooterView setSectionHeader:](self->_tableViewHeaderFooterView, "setSectionHeader:", [v4 isHeader]);
  [v4 maxTitleWidth];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView setMaxTitleWidth:?];
  [v4 margins];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setMarginWidth:v9];
  [v4 margins];
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setRightMarginWidth:v10];
  -[UITableViewHeaderFooterView setTextAlignment:](self->_tableViewHeaderFooterView, "setTextAlignment:", [v4 textAlignment]);
  -[UITableViewHeaderFooterView _setInsetsContentViewsToSafeArea:](self->_tableViewHeaderFooterView, "_setInsetsContentViewsToSafeArea:", [v4 insetsContentViewsToSafeArea]);
  [(UITableViewHeaderFooterView *)self->_tableViewHeaderFooterView _setupLabelAppearance];
  -[UICollectionViewTableHeaderFooterView setFloating:](self, "setFloating:", [v4 floating]);
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._collectionView);
  v6 = [WeakRetained collectionViewLayout];
  if (v6)
  {
    v7 = v6;
    v8 = objc_loadWeakRetained(&self->super._collectionView);
    v9 = [v8 collectionViewLayout];
    v10 = [v9 _estimatesSizes];

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->super._collectionView);
      v12 = [v11 collectionViewLayout];
      v13 = [v12 _cellsShouldConferWithAutolayoutEngineForSizingInfo];

      if (v13)
      {
        v14 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
        v15 = _preferredAttributesFittingAttributesWithInnerView(self, v4, v14);

        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v15 = v4;
LABEL_7:

  return v15;
}

- (UICollectionViewTableLayout)_tableLayout
{
  v2 = [(UICollectionReusableView *)self _collectionView];
  v3 = [v2 collectionViewLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UICollectionViewTableLayoutAttributes)_tableAttributes
{
  v2 = [(UICollectionReusableView *)self _layoutAttributes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIColor)tintColor
{
  v2 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  v3 = [v2 tintColor];

  return v3;
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [v5 setTintColor:v4];
}

- (UILabel)textLabel
{
  v2 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  v3 = [v2 textLabel];

  return v3;
}

- (UILabel)detailTextLabel
{
  v2 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  v3 = [v2 detailTextLabel];

  return v3;
}

- (UIView)contentView
{
  v2 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  v3 = [v2 contentView];

  return v3;
}

- (UIView)backgroundView
{
  v2 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  v3 = [v2 backgroundView];

  return v3;
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableHeaderFooterView *)self tableViewHeaderFooterView];
  [v5 setBackgroundView:v4];
}

@end