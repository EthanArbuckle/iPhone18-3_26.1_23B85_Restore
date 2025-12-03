@interface _UIFloatingTabBarPlaceholderCell
- (_UIFloatingTabBarPlaceholderCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setListItem:(id)item;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIFloatingTabBarPlaceholderCell

- (_UIFloatingTabBarPlaceholderCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarPlaceholderCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setOverrideVibrancyTrait:0];
  }

  return v4;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  listItem = [(_UIFloatingTabBarCell *)self listItem];
  contentTab = [listItem contentTab];

  if (contentTab)
  {
    _itemView = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
    [_itemView setItem:contentTab];

    traitCollection = [(UIView *)self traitCollection];
    v9 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    [v9 editModeItemMargins];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    contentView = [(UICollectionViewCell *)self contentView];
    [attributesCopy size];
    [contentView sizeThatFits:?];
    v20 = v19;
    v22 = v21;

    [attributesCopy setSize:{v13 + v17 + v20, v11 + v15 + v22}];
  }

  return attributesCopy;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _UIFloatingTabBarPlaceholderCell;
  [(UICollectionViewCell *)&v5 prepareForReuse];
  _itemView = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [_itemView setItem:0];

  _itemView2 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [_itemView2 setHidden:1];
}

- (void)updateConfigurationUsingState:(id)state
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarPlaceholderCell;
  [(UICollectionViewCell *)&v6 updateConfigurationUsingState:state];
  _itemView = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [_itemView setHidden:1];

  _itemView2 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [_itemView2 setEditing:0];
}

- (void)setListItem:(id)item
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarPlaceholderCell;
  itemCopy = item;
  [(_UIFloatingTabBarCell *)&v7 setListItem:itemCopy];
  contentTab = [itemCopy contentTab];

  _itemView = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [_itemView setItem:contentTab];
}

@end