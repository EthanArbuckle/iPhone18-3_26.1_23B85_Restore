@interface NavigationBarContentView
- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)range;
- (BOOL)_item:(id)_item addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated;
- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
- (BOOL)_item:(id)_item removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)compactMetrics;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)button compact:(BOOL)compact;
- (UIEdgeInsets)layoutMargins;
- (_TtC5UIKit24NavigationBarContentView)initWithFrame:(CGRect)frame;
- (double)titleViewContentBaseHeight:(id)height;
- (double)titleViewContentBaselineOffsetFromTop:(id)top;
- (double)titleViewFloatingTabBarHeight:(id)height;
- (id)_contextMenuInteractionForItem:(id)item;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)tintColorForButtonBarButton:(id)button;
- (id)titleViewBackButtonMenu:(id)menu;
- (unint64_t)edgesPaddingBarButtonItem:(id)item;
- (void)__backButtonAction:(id)action;
- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)backButtonTitleDidChange;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)setBackButtonMaximumWidth:(double)width;
- (void)setBackIndicatorImage:(id)image;
- (void)tintColorDidChange;
- (void)titleView:(id)view needsUpdatedContentOverlayRects:(id)rects;
- (void)titleViewChangedHeight:(id)height;
- (void)titleViewChangedLayout:(id)layout;
- (void)titleViewChangedPreferredDisplaySize:(id)size;
- (void)titleViewChangedStandardDisplayItems:(id)items;
- (void)titleViewChangedTabBarSizingDisposition:(id)disposition;
- (void)updateProperties;
@end

@implementation NavigationBarContentView

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_188B496C4();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188B4E2A4();
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  layerCopy = layer;
  v5 = v6.receiver;
  [(UIView *)&v6 layoutSublayersOfLayer:layerCopy];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_188B51D40(environment);
  swift_unknownObjectRelease();

  return v6;
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v7 = v11.receiver;
  [(UIView *)&v11 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
  [v7 safeAreaInsets];
  if (left != v9 || right != v8)
  {
    [v7 setNeedsLayout];
  }
}

- (id)tintColorForButtonBarButton:(id)button
{
  tintColor = [objc_opt_self() tintColor];

  return tintColor;
}

- (BOOL)compactMetrics
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_requestedContentSize) - 1;
  if (v2 > 2)
  {
    LOBYTE(self) = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__barMetrics) == 1;
  }

  else
  {
    LODWORD(self) = 1u >> (v2 & 7);
  }

  return self;
}

- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)button compact:(BOOL)compact
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (unint64_t)edgesPaddingBarButtonItem:(id)item
{
  result = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider);
  if (result)
  {
    return [result edgesPaddingBarButtonItem_];
  }

  return result;
}

- (void)titleView:(id)view needsUpdatedContentOverlayRects:(id)rects
{
  viewCopy = view;
  rectsCopy = rects;
  selfCopy = self;
  sub_188CD7114(viewCopy, rectsCopy);
}

- (void)titleViewChangedHeight:(id)height
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {
    heightCopy = height;
    selfCopy = self;
    sub_188AEA3E4();
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_188A3F5FC(v5, &qword_1EA934050);
  return 0;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_188EBC4A4(event, x, y);

  return v10;
}

- (void)__backButtonAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_188EC201C();
}

- (CGSize)intrinsicContentSize
{
  signpost_c2_entryLock_start(-1.0, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight) + *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension));
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedHeight) + *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedExtension);
  result.height = v3;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188EBE658(viewCopy);
}

- (UIEdgeInsets)layoutMargins
{
  sub_188EBE79C(self, a2, &selRef_layoutMargins);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  sub_188EBE79C(self, a2, &selRef_directionalLayoutMargins);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(UIView *)&v5 _clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:insets.var1];
  [v4 setNeedsLayout];
}

- (void)setBackIndicatorImage:(id)image
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage) = image;
  imageCopy = image;
}

- (void)setBackButtonMaximumWidth:(double)width
{
  ObjectType = swift_getObjectType();
  if (width < 0.0)
  {
    width = 0.0;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  selfCopy = self;
  [(_UIBarContentView *)&v8 backButtonMaximumWidth];
  if (width != v7)
  {
    *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth) = width;
    [(UIView *)selfCopy setNeedsLayout:v8.receiver];
  }
}

- (void)backButtonTitleDidChange
{
  selfCopy = self;
  sub_188B34820();
}

- (BOOL)_item:(id)_item addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated
{
  _itemCopy = _item;
  effectCopy = effect;
  optionsCopy = options;
  selfCopy = self;
  v14 = sub_188EBF450(_itemCopy, effectCopy, optionsCopy, animated, &selRef_addSymbolEffect_options_animated_);

  return v14;
}

- (BOOL)_item:(id)_item removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated
{
  _itemCopy = _item;
  typeCopy = type;
  optionsCopy = options;
  selfCopy = self;
  v14 = sub_188EBF450(_itemCopy, typeCopy, optionsCopy, animated, &selRef_removeSymbolEffectOfType_options_animated_);

  return v14;
}

- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated
{
  _itemCopy = _item;
  optionsCopy = options;
  selfCopy = self;
  v11 = sub_188EBF570(_itemCopy, optionsCopy, animated);

  return v11;
}

- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
  if (v5)
  {
    v6 = v5 == _item;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton) applyContentTransition:transition options:options];
  }
}

- (id)_contextMenuInteractionForItem:(id)item
{
  itemCopy = item;
  view = [itemCopy view];
  if (view)
  {
    v5 = view;
    objc_opt_self();
    contextMenuInteraction = swift_dynamicCastObjCClass();
    if (contextMenuInteraction)
    {
      v7 = v5;
      contextMenuInteraction = [contextMenuInteraction contextMenuInteraction];
    }

    else
    {
      v7 = itemCopy;
      itemCopy = v5;
    }
  }

  else
  {
    contextMenuInteraction = 0;
  }

  return contextMenuInteraction;
}

- (NSString)description
{
  selfCopy = self;
  sub_188EBF7C8();

  v3 = sub_18A4A7258();

  return v3;
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UIView *)&v3 updateProperties];
  sub_188EBFC40();
}

- (_TtC5UIKit24NavigationBarContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)titleViewFloatingTabBarHeight:(id)height
{
  selfCopy = self;
  v4 = sub_188AEA5A0();

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)range
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (double)titleViewContentBaselineOffsetFromTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  v6 = sub_188EBFEB4(topCopy);

  return v6;
}

- (double)titleViewContentBaseHeight:(id)height
{
  selfCopy = self;
  v4 = sub_188AECA30();

  return v4;
}

- (void)titleViewChangedTabBarSizingDisposition:(id)disposition
{
  selfCopy = self;
  sub_188EBDD14(0);
}

- (void)titleViewChangedLayout:(id)layout
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {
    layoutCopy = layout;
    selfCopy = self;
    sub_188AEA3E4();
    [(UIView *)selfCopy setNeedsLayout];
  }
}

- (void)titleViewChangedStandardDisplayItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  sub_188EC246C();
}

- (void)titleViewChangedPreferredDisplaySize:(id)size
{
  selfCopy = self;
  sub_188BEBE14(0);
}

- (id)titleViewBackButtonMenu:(id)menu
{
  menuCopy = menu;
  selfCopy = self;
  v6 = sub_188EC2510();

  return v6;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_188EC2608();

  return v10;
}

@end