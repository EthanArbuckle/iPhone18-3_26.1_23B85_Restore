@interface NavigationBarContentView
- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)a3;
- (BOOL)_item:(id)a3 addSymbolEffect:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5;
- (BOOL)_item:(id)a3 removeSymbolEffectOfType:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)compactMetrics;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (NSString)description;
- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)a3 compact:(BOOL)a4;
- (UIEdgeInsets)layoutMargins;
- (_TtC5UIKit24NavigationBarContentView)initWithFrame:(CGRect)a3;
- (double)titleViewContentBaseHeight:(id)a3;
- (double)titleViewContentBaselineOffsetFromTop:(id)a3;
- (double)titleViewFloatingTabBarHeight:(id)a3;
- (id)_contextMenuInteractionForItem:(id)a3;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)tintColorForButtonBarButton:(id)a3;
- (id)titleViewBackButtonMenu:(id)a3;
- (unint64_t)edgesPaddingBarButtonItem:(id)a3;
- (void)__backButtonAction:(id)a3;
- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)a3;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3;
- (void)backButtonTitleDidChange;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)setBackButtonMaximumWidth:(double)a3;
- (void)setBackIndicatorImage:(id)a3;
- (void)tintColorDidChange;
- (void)titleView:(id)a3 needsUpdatedContentOverlayRects:(id)a4;
- (void)titleViewChangedHeight:(id)a3;
- (void)titleViewChangedLayout:(id)a3;
- (void)titleViewChangedPreferredDisplaySize:(id)a3;
- (void)titleViewChangedStandardDisplayItems:(id)a3;
- (void)titleViewChangedTabBarSizingDisposition:(id)a3;
- (void)updateProperties;
@end

@implementation NavigationBarContentView

- (void)tintColorDidChange
{
  v2 = self;
  sub_188B496C4();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188B4E2A4();
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(UIView *)&v6 layoutSublayersOfLayer:v4];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
}

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_188B51D40(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (id)tintColorForButtonBarButton:(id)a3
{
  v3 = [objc_opt_self() tintColor];

  return v3;
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

- (UIEdgeInsets)_layoutMarginsForButtonBarButton:(id)a3 compact:(BOOL)a4
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

- (unint64_t)edgesPaddingBarButtonItem:(id)a3
{
  result = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider);
  if (result)
  {
    return [result edgesPaddingBarButtonItem_];
  }

  return result;
}

- (void)titleView:(id)a3 needsUpdatedContentOverlayRects:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188CD7114(v6, v7);
}

- (void)titleViewChangedHeight:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {
    v5 = a3;
    v6 = self;
    sub_188AEA3E4();
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_188EBC4A4(a4, x, y);

  return v10;
}

- (void)__backButtonAction:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188EBE658(v4);
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

- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(UIView *)&v5 _clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:a3.var1];
  [v4 setNeedsLayout];
}

- (void)setBackIndicatorImage:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backIndicatorImage) = a3;
  v3 = a3;
}

- (void)setBackButtonMaximumWidth:(double)a3
{
  ObjectType = swift_getObjectType();
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = self;
  [(_UIBarContentView *)&v8 backButtonMaximumWidth];
  if (a3 != v7)
  {
    *(&v6->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth) = a3;
    [(UIView *)v6 setNeedsLayout:v8.receiver];
  }
}

- (void)backButtonTitleDidChange
{
  v2 = self;
  sub_188B34820();
}

- (BOOL)_item:(id)a3 addSymbolEffect:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = sub_188EBF450(v10, v11, v12, a6, &selRef_addSymbolEffect_options_animated_);

  return v14;
}

- (BOOL)_item:(id)a3 removeSymbolEffectOfType:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = sub_188EBF450(v10, v11, v12, a6, &selRef_removeSymbolEffectOfType_options_animated_);

  return v14;
}

- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_188EBF570(v8, v9, a5);

  return v11;
}

- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButtonItem);
  if (v5)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton) applyContentTransition:a4 options:a5];
  }
}

- (id)_contextMenuInteractionForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v5;
      v6 = [v6 contextMenuInteraction];
    }

    else
    {
      v7 = v3;
      v3 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v2 = self;
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

- (_TtC5UIKit24NavigationBarContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)titleViewFloatingTabBarHeight:(id)a3
{
  v3 = self;
  v4 = sub_188AEA5A0();

  return v4;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_largeTitleHeightRange);
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (double)titleViewContentBaselineOffsetFromTop:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188EBFEB4(v4);

  return v6;
}

- (double)titleViewContentBaseHeight:(id)a3
{
  v3 = self;
  v4 = sub_188AECA30();

  return v4;
}

- (void)titleViewChangedTabBarSizingDisposition:(id)a3
{
  v3 = self;
  sub_188EBDD14(0);
}

- (void)titleViewChangedLayout:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView))
  {
    v5 = a3;
    v6 = self;
    sub_188AEA3E4();
    [(UIView *)v6 setNeedsLayout];
  }
}

- (void)titleViewChangedStandardDisplayItems:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188EC246C();
}

- (void)titleViewChangedPreferredDisplaySize:(id)a3
{
  v3 = self;
  sub_188BEBE14(0);
}

- (id)titleViewBackButtonMenu:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188EC2510();

  return v6;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_188EC2608();

  return v10;
}

@end