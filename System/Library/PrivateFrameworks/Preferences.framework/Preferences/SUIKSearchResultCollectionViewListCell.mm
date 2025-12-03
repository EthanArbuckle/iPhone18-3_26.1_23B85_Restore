@interface SUIKSearchResultCollectionViewListCell
- (void)configureWithSearchableItem:(id)item;
- (void)prepareForReuse;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation SUIKSearchResultCollectionViewListCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SUIKSearchResultCollectionViewListCell;
  [(SUIKSearchResultCollectionViewListCell *)&v3 prepareForReuse];
  [(SUIKSearchResultCollectionViewListCell *)self configureWithSearchableItem:0];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (updateConfigurationUsingState__onceToken != -1)
  {
    [SUIKSearchResultCollectionViewListCell updateConfigurationUsingState:];
  }

  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v5 = +[PSListController appearance];
  textColor = [v5 textColor];
  textProperties = [subtitleCellConfiguration textProperties];
  [textProperties setColor:textColor];

  v8 = +[PSListController appearance];
  altTextColor = [v8 altTextColor];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:altTextColor];

  v11 = *&updateConfigurationUsingState__iconSize_0;
  v12 = *&updateConfigurationUsingState__iconSize_1;
  imageProperties = [subtitleCellConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{v11, v12}];

  [subtitleCellConfiguration setImage:updateConfigurationUsingState__icon];
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  searchableItem = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
  attributeSet = [searchableItem attributeSet];
  subject = [attributeSet subject];
  v18 = subject;
  if (subject)
  {
    v19 = subject;
  }

  else
  {
    v19 = @" ";
  }

  v20 = [v14 initWithString:v19];
  [subtitleCellConfiguration setAttributedText:v20];

  searchableItem2 = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
  attributeSet2 = [searchableItem2 attributeSet];
  contentDescription = [attributeSet2 contentDescription];
  v24 = [contentDescription length];

  if (v24)
  {
    v25 = objc_alloc(MEMORY[0x1E696AAB0]);
    searchableItem3 = [(SUIKSearchResultCollectionViewListCell *)self searchableItem];
    attributeSet3 = [searchableItem3 attributeSet];
    contentDescription2 = [attributeSet3 contentDescription];
    v29 = [v25 initWithString:contentDescription2];
    [subtitleCellConfiguration setSecondaryAttributedText:v29];
  }

  [(SUIKSearchResultCollectionViewListCell *)self setContentConfiguration:subtitleCellConfiguration];
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

- (void)configureWithSearchableItem:(id)item
{
  [(SUIKSearchResultCollectionViewListCell *)self setSearchableItem:item];

  [(SUIKSearchResultCollectionViewListCell *)self setNeedsUpdateConfiguration];
}

@end