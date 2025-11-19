@interface _UIFloatingTabBarPlaceholderCell
- (_UIFloatingTabBarPlaceholderCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
- (void)setListItem:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _UIFloatingTabBarPlaceholderCell

- (_UIFloatingTabBarPlaceholderCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarPlaceholderCell;
  v3 = [(UICollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 _setOverrideVibrancyTrait:0];
  }

  return v4;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBarCell *)self listItem];
  v6 = [v5 contentTab];

  if (v6)
  {
    v7 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
    [v7 setItem:v6];

    v8 = [(UIView *)self traitCollection];
    v9 = _UIFloatingTabBarGetPlatformMetrics([v8 userInterfaceIdiom]);

    [v9 editModeItemMargins];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UICollectionViewCell *)self contentView];
    [v4 size];
    [v18 sizeThatFits:?];
    v20 = v19;
    v22 = v21;

    [v4 setSize:{v13 + v17 + v20, v11 + v15 + v22}];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = _UIFloatingTabBarPlaceholderCell;
  [(UICollectionViewCell *)&v5 prepareForReuse];
  v3 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [v3 setItem:0];

  v4 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [v4 setHidden:1];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBarPlaceholderCell;
  [(UICollectionViewCell *)&v6 updateConfigurationUsingState:a3];
  v4 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [v4 setHidden:1];

  v5 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [v5 setEditing:0];
}

- (void)setListItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIFloatingTabBarPlaceholderCell;
  v4 = a3;
  [(_UIFloatingTabBarCell *)&v7 setListItem:v4];
  v5 = [v4 contentTab];

  v6 = [(_UIFloatingTabBarPlaceholderCell *)self _itemView];
  [v6 setItem:v5];
}

@end