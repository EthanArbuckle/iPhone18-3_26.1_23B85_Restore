@interface _UIFloatingTabBarItemCell
- (BOOL)hasSelectionHighlight;
- (BOOL)isHighlighted;
- (UIEdgeInsets)_contentViewInset;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setHasSelectionHighlight:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setListItem:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _UIFloatingTabBarItemCell

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v13.receiver = self;
  v13.super_class = _UIFloatingTabBarItemCell;
  v4 = [(UICollectionReusableView *)&v13 preferredLayoutAttributesFittingAttributes:a3];
  [(_UIFloatingTabBarItemCell *)self _contentViewInset];
  v6 = v5;
  v8 = v7;
  v9 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v4 size];
  [v9 sizeThatFits:?];
  v11 = v10;

  [v4 size];
  [v4 setSize:v6 + v8 + v11];

  return v4;
}

- (UIEdgeInsets)_contentViewInset
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [(_UIFloatingTabBarItemCell *)self _itemView];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if ([v5 isCustomizableItem])
  {
    v10 = [(UICollectionViewCell *)self configurationState];
    if ([v10 isEditing])
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
  v3 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v3 setHidden:0];
}

- (void)setListItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 contentTab];

    if (!v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBarItemCell.m" lineNumber:57 description:{@"listItem must represent a single item, not a group."}];
    }
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBarItemCell;
  [(_UIFloatingTabBarCell *)&v11 setListItem:v6];
  v9 = [v6 contentTab];
  v10 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v10 setItem:v9];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIFloatingTabBarItemCell;
  v4 = a3;
  [(UICollectionViewCell *)&v9 updateConfigurationUsingState:v4];
  v5 = [v4 isEditing];
  v6 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v6 setEditing:v5];

  v7 = [v4 cellDragState];
  v8 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v8 setDragged:v7 != 0];
}

- (BOOL)isHighlighted
{
  v2 = [(_UIFloatingTabBarItemCell *)self _itemView];
  v3 = [v2 isHighlighted];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarItemCell;
  [(UICollectionViewCell *)&v6 setHighlighted:?];
  v5 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v5 setHighlighted:v3];
}

- (BOOL)hasSelectionHighlight
{
  v2 = [(_UIFloatingTabBarItemCell *)self _itemView];
  v3 = [v2 hasSelectionHighlight];

  return v3;
}

- (void)setHasSelectionHighlight:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIFloatingTabBarItemCell *)self _itemView];
  [v4 setHasSelectionHighlight:v3];
}

@end