@interface SearchUIMultiResultAppCollectionCell
- (CGSize)hoverHighlightMargins;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithResult:(id)a3;
@end

@implementation SearchUIMultiResultAppCollectionCell

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SearchUIMultiResultAppCollectionCell;
  [(SearchUIMultiResultAppCollectionCell *)&v12 layoutSubviews];
  [(SearchUIMultiResultAppCollectionCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  v3 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  [v3 setAddRoundedKeyboardHighlight:0];

  v4.receiver = self;
  v4.super_class = SearchUIMultiResultAppCollectionCell;
  [(SearchUIMultiResultAppCollectionCell *)&v4 prepareForReuse];
}

- (void)updateWithResult:(id)a3
{
  v4 = a3;
  [(SearchUIMultiResultAppCollectionCell *)self setBackgroundConfiguration:0];
  v5 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(SearchUIMultiResultAppCollectionCell *)self setAppIconView:v6];

    v7 = [(SearchUIMultiResultAppCollectionCell *)self contentView];
    v8 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
    [v7 addSubview:v8];
  }

  v10 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  v9 = [[SearchUIRowModel alloc] initWithResult:v4 itemIdentifier:0];

  [v10 updateWithRowModel:v9];
}

- (CGSize)hoverHighlightMargins
{
  objc_copyStruct(v4, &self->_hoverHighlightMargins, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end