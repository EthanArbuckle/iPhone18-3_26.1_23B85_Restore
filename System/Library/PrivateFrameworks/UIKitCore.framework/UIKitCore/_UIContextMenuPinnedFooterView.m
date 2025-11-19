@interface _UIContextMenuPinnedFooterView
- (BOOL)isHighlighted;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (UIEdgeInsets)backgroundShapeInsets;
- (_UIContextMenuPinnedFooterView)initWithCoder:(id)a3;
- (_UIContextMenuPlatformMetrics)platformMetrics;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenuElement:(id)a3;
- (void)updateBackgroundView;
- (void)updateContent;
@end

@implementation _UIContextMenuPinnedFooterView

- (UIEdgeInsets)backgroundShapeInsets
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets);
  v3 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets);
  v4 = *(&self->super.super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets);
  v5 = *(&self->super.super.super._cachedTraitCollection + OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setMenuElement:(id)a3
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement) = a3;
  v5 = a3;
  v6 = self;

  [(_UIContextMenuPinnedFooterView *)v6 updateContent];
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  v6.receiver = self;
  v6.super_class = _UIContextMenuPinnedFooterView;
  [(UIView *)&v6 directionalLayoutMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuPinnedFooterView;
  v7 = self;
  [(UIView *)&v9 setDirectionalLayoutMargins:top, leading, bottom, trailing];
  v8 = [(_UIContextMenuPinnedFooterView *)v7 itemView:v9.receiver];
  [(_UIContextMenuPinnedFooterView *)v7 directionalLayoutMargins];
  [(_UIContextMenuCellContentView *)v8 setDirectionalLayoutMargins:?];
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _UIContextMenuPinnedFooterView;
  return [(UICollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_18916FBE0(a3);
}

- (_UIContextMenuPinnedFooterView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____UIContextMenuPinnedFooterView_itemView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(_UIContextMenuCellContentView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_backgroundShapeInsets) = UIEdgeInsetsZero;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)updateContent
{
  v2 = self;
  sub_1891704C4();
}

- (void)updateBackgroundView
{
  v2 = self;
  sub_18917077C();
}

- (_UIContextMenuPlatformMetrics)platformMetrics
{
  v2 = self;
  v3 = [(UIView *)v2 traitCollection];
  v4 = [(UITraitCollection *)v3 userInterfaceIdiom];

  v5 = _UIContextMenuGetPlatformMetrics(v4);

  return v5;
}

@end