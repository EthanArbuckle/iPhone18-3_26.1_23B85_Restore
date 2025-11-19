@interface SUIKSearchResultCollectionViewListCell
- (void)configureWithSearchableItem:(id)a3;
- (void)prepareForReuse;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation SUIKSearchResultCollectionViewListCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SUIKSearchResultCollectionViewListCell;
  [(SUIKSearchResultCollectionViewListCell *)&v3 prepareForReuse];
  [(SUIKSearchResultCollectionViewListCell *)self configureWithSearchableItem:0];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v30 = a3;
  if (updateConfigurationUsingState__onceToken != -1)
  {
    [SUIKSearchResultCollectionViewListCell updateConfigurationUsingState:];
  }

  v4 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v5 = +[PSListController appearance];
  v6 = [v5 textColor];
  v7 = [v4 textProperties];
  [v7 setColor:v6];

  v8 = +[PSListController appearance];
  v9 = [v8 altTextColor];
  v10 = [v4 secondaryTextProperties];
  [v10 setColor:v9];

  v11 = *&updateConfigurationUsingState__iconSize_0;
  v12 = *&updateConfigurationUsingState__iconSize_1;
  v13 = [v4 imageProperties];
  [v13 setReservedLayoutSize:{v11, v12}];

  [v4 setImage:updateConfigurationUsingState__icon];
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
  v16 = [v15 attributeSet];
  v17 = [v16 subject];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @" ";
  }

  v20 = [v14 initWithString:v19];
  [v4 setAttributedText:v20];

  v21 = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
  v22 = [v21 attributeSet];
  v23 = [v22 contentDescription];
  v24 = [v23 length];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    v26 = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
    v27 = [v26 attributeSet];
    v28 = [v27 contentDescription];
    v29 = [v25 initWithString:v28];
    [v4 setSecondaryAttributedText:v29];
  }

  [(SUIKSearchResultCollectionViewListCell *)self setContentConfiguration:v4];
}

void __72__SUIKSearchResultCollectionViewListCell_updateConfigurationUsingState___block_invoke()
{
  v0 = PSBlankIconImage();
  [v0 size];
  updateConfigurationUsingState__iconSize_0 = v1;
  updateConfigurationUsingState__iconSize_1 = v2;

  v3 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  v4 = updateConfigurationUsingState__icon;
  updateConfigurationUsingState__icon = v3;
}

- (void)configureWithSearchableItem:(id)a3
{
  [(SUIKSearchResultCollectionViewListCell *)self setSearchableItem:a3];

  [(SUIKSearchResultCollectionViewListCell *)self setNeedsUpdateConfiguration];
}

@end