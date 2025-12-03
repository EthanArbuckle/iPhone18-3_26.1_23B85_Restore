@interface _UIContextMenuPinnedFooterView
- (BOOL)isHighlighted;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (UIEdgeInsets)backgroundShapeInsets;
- (_UIContextMenuPinnedFooterView)initWithCoder:(id)coder;
- (_UIContextMenuPlatformMetrics)platformMetrics;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMenuElement:(id)element;
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

- (void)setMenuElement:(id)element
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____UIContextMenuPinnedFooterView_menuElement) = element;
  elementCopy = element;
  selfCopy = self;

  [(_UIContextMenuPinnedFooterView *)selfCopy updateContent];
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

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v9.receiver = self;
  v9.super_class = _UIContextMenuPinnedFooterView;
  selfCopy = self;
  [(UIView *)&v9 setDirectionalLayoutMargins:top, leading, bottom, trailing];
  v8 = [(_UIContextMenuPinnedFooterView *)selfCopy itemView:v9.receiver];
  [(_UIContextMenuPinnedFooterView *)selfCopy directionalLayoutMargins];
  [(_UIContextMenuCellContentView *)v8 setDirectionalLayoutMargins:?];
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = _UIContextMenuPinnedFooterView;
  return [(UICollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_18916FBE0(highlighted);
}

- (_UIContextMenuPinnedFooterView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1891704C4();
}

- (void)updateBackgroundView
{
  selfCopy = self;
  sub_18917077C();
}

- (_UIContextMenuPlatformMetrics)platformMetrics
{
  selfCopy = self;
  traitCollection = [(UIView *)selfCopy traitCollection];
  userInterfaceIdiom = [(UITraitCollection *)traitCollection userInterfaceIdiom];

  v5 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);

  return v5;
}

@end