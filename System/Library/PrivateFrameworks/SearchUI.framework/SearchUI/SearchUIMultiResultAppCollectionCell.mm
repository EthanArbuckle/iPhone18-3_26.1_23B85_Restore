@interface SearchUIMultiResultAppCollectionCell
- (CGSize)hoverHighlightMargins;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithResult:(id)result;
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
  appIconView = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  [appIconView setFrame:{v4, v6, v8, v10}];
}

- (void)prepareForReuse
{
  appIconView = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  [appIconView setAddRoundedKeyboardHighlight:0];

  v4.receiver = self;
  v4.super_class = SearchUIMultiResultAppCollectionCell;
  [(SearchUIMultiResultAppCollectionCell *)&v4 prepareForReuse];
}

- (void)updateWithResult:(id)result
{
  resultCopy = result;
  [(SearchUIMultiResultAppCollectionCell *)self setBackgroundConfiguration:0];
  appIconView = [(SearchUIMultiResultAppCollectionCell *)self appIconView];

  if (!appIconView)
  {
    v6 = objc_opt_new();
    [(SearchUIMultiResultAppCollectionCell *)self setAppIconView:v6];

    contentView = [(SearchUIMultiResultAppCollectionCell *)self contentView];
    appIconView2 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
    [contentView addSubview:appIconView2];
  }

  appIconView3 = [(SearchUIMultiResultAppCollectionCell *)self appIconView];
  v9 = [[SearchUIRowModel alloc] initWithResult:resultCopy itemIdentifier:0];

  [appIconView3 updateWithRowModel:v9];
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