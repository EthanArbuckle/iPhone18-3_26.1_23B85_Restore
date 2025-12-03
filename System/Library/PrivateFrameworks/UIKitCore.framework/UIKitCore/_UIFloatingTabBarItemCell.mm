@interface _UIFloatingTabBarItemCell
- (BOOL)hasSelectionHighlight;
- (BOOL)isHighlighted;
- (UIEdgeInsets)_contentViewInset;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)setHasSelectionHighlight:(BOOL)highlight;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setListItem:(id)item;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIFloatingTabBarItemCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v13.receiver = self;
  v13.super_class = _UIFloatingTabBarItemCell;
  v4 = [(UICollectionReusableView *)&v13 preferredLayoutAttributesFittingAttributes:attributes];
  [(_UIFloatingTabBarItemCell *)self _contentViewInset];
  v6 = v5;
  v8 = v7;
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v4 size];
  [_itemView sizeThatFits:?];
  v11 = v10;

  [v4 size];
  [v4 setSize:v6 + v8 + v11];

  return v4;
}

- (UIEdgeInsets)_contentViewInset
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if ([_itemView isCustomizableItem])
  {
    configurationState = [(UICollectionViewCell *)self configurationState];
    if ([configurationState isEditing])
    {
      [v4 editModeItemMargins];
      v9 = v11;
      v8 = v12;
      v7 = v13;
      v6 = v14;
    }
  }

  v15 = v9;
  v16 = v8;
  v17 = v7;
  v18 = v6;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _UIFloatingTabBarItemCell;
  [(UICollectionViewCell *)&v4 prepareForReuse];
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView setHidden:0];
}

- (void)setListItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy)
  {
    contentTab = [itemCopy contentTab];

    if (!contentTab)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBarItemCell.m" lineNumber:57 description:{@"listItem must represent a single item, not a group."}];
    }
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBarItemCell;
  [(_UIFloatingTabBarCell *)&v11 setListItem:v6];
  contentTab2 = [v6 contentTab];
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView setItem:contentTab2];
}

- (void)updateConfigurationUsingState:(id)state
{
  v9.receiver = self;
  v9.super_class = _UIFloatingTabBarItemCell;
  stateCopy = state;
  [(UICollectionViewCell *)&v9 updateConfigurationUsingState:stateCopy];
  isEditing = [stateCopy isEditing];
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView setEditing:isEditing];

  cellDragState = [stateCopy cellDragState];
  _itemView2 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView2 setDragged:cellDragState != 0];
}

- (BOOL)isHighlighted
{
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  isHighlighted = [_itemView isHighlighted];

  return isHighlighted;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemCell;
  [(UICollectionViewCell *)&v6 setHighlighted:?];
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView setHighlighted:highlightedCopy];
}

- (BOOL)hasSelectionHighlight
{
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  hasSelectionHighlight = [_itemView hasSelectionHighlight];

  return hasSelectionHighlight;
}

- (void)setHasSelectionHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  _itemView = [(_UIFloatingTabBarItemCell *)self _itemView];
  [_itemView setHasSelectionHighlight:highlightCopy];
}

@end