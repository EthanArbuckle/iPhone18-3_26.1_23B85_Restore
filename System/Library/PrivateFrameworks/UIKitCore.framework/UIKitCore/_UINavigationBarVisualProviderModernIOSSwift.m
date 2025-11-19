@interface _UINavigationBarVisualProviderModernIOSSwift
+ (id)valueForUndefinedKey:(id)a3;
+ (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3;
- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)a3;
- (BOOL)_shim_disableBlurTinting;
- (BOOL)_supportsCustomization;
- (BOOL)allowsUserInteractionDuringTransitions;
- (BOOL)isContentViewHidden;
- (BOOL)isInCustomization;
- (BOOL)permitsSearchBarPlacementIntegratedCentered;
- (BOOL)scrollEdgeAppearanceHasChromelessBehavior;
- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)a3;
- (BOOL)titleRenamer:(id)a3 session:(id)a4 shouldEndRenamingWithTitle:(id)a5;
- (BOOL)topItemHasVariableHeight;
- (BOOL)wantsLargeTitleDisplayed;
- (CGRect)barCustomizer:(id)a3 customizationAreaBoundsForSession:(id)a4;
- (CGRect)barCustomizer:(id)a3 overflowControlBoundsForSession:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)resolvedSearchBarMargins;
- (UIBarButtonItem)nullableStaticNavBarButtonItem;
- (_TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift)init;
- (double)heightForRestoringFromCancelledTransition;
- (double)minimumTopPaddingWithTraitCollection:(id)a3;
- (id)_accessibility_HUDItemForPoint:(CGPoint)a3;
- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)a3;
- (id)_immediatelyFinishRunningTransition;
- (id)_shim_compatibilityBackgroundView;
- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4;
- (id)barCustomizer:(id)a3 containerViewForSession:(id)a4;
- (id)hitTest:(CGPoint)a3 defaultViewHit:(id)a4;
- (id)presentationSourceForContent:(int64_t)a3 navigationItem:(id)a4;
- (id)restingHeights;
- (id)titleRenamer:(id)a3 session:(id)a4 willBeginRenamingWithTitle:(id)a5 selectedRange:(_NSRange *)a6;
- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4;
- (int64_t)glassUserInterfaceStyle;
- (int64_t)statusBarStyle;
- (void)_beginCustomization;
- (void)_beginRenaming;
- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)a3;
- (void)_endRenaming;
- (void)_installContentClippingView:(id)a3;
- (void)_observedScrollViewDidScroll;
- (void)_refreshBackButtonMenu;
- (void)_removeContentClippingView;
- (void)_shim_setCustomBackgroundView:(id)a3;
- (void)_shim_setDisableBlurTinting:(BOOL)a3;
- (void)_shim_setShadowAlpha:(double)a3;
- (void)animateForSearchPresentation:(BOOL)a3;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)barCustomizer:(id)a3 willEndSession:(id)a4 didReset:(BOOL)a5;
- (void)barDidAddSubview:(id)a3;
- (void)barDidMoveToWindow;
- (void)changeAppearance;
- (void)changeLayout;
- (void)deferSearchSuggestionsMenuRefreshForGeometryChange;
- (void)layoutSubviews;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)a3;
- (void)navigationItem:(id)a3 appearance:(id)a4 categoriesChanged:(int64_t)a5;
- (void)navigationItem:(id)a3 updatedPalettePart:(int64_t)a4 oldPalette:(id)a5;
- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)a3;
- (void)navigationItemUpdatedAdditionalOverflowItems:(id)a3;
- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedBackgroundAppearance:(id)a3;
- (void)navigationItemUpdatedBottomPalette:(id)a3 oldPalette:(id)a4;
- (void)navigationItemUpdatedCenterBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedLargeTitleContent:(id)a3;
- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)a3;
- (void)navigationItemUpdatedLeftBarButtonItems:(void *)a3 animated:(char)a4;
- (void)navigationItemUpdatedMinimumContentMargins:(id)a3;
- (void)navigationItemUpdatedNavigationBarVisibility:(id)a3;
- (void)navigationItemUpdatedPromptContent:(id)a3;
- (void)navigationItemUpdatedScrollEdgeProgress:(id)a3;
- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)a3;
- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)a3;
- (void)navigationItemUpdatedSearchController:(id)a3 oldSearchController:(id)a4;
- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedToolbarAvoidsKeyboard:(id)a3;
- (void)prepare;
- (void)prepareForStackChange;
- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5;
- (void)refreshSearchSuggestionsMenuAfterGeometryChange;
- (void)removeContentForItem:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)a3;
- (void)setActiveTabBarHost:(BOOL)a3;
- (void)setAppearanceAPIVersion:(int64_t)a3;
- (void)setForceScrollEdgeAppearance:(BOOL)a3;
- (void)setNeedsStaticNavBarButtonUpdate;
- (void)setNullableStaticNavBarButtonItem:(id)a3;
- (void)setRefreshControlHost:(id)a3;
- (void)setStaticLeadingItemGroups:(id)a3 trailingItemGroups:(id)a4 animated:(BOOL)a5;
- (void)setStaticNavBarButtonItem:(id)a3 trailingPosition:(BOOL)a4;
- (void)setTabBarHostedView:(id)a3;
- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)a3;
- (void)setWantsHostedTabBarMetrics:(BOOL)a3;
- (void)stackDidChangeFrom:(id)a3;
- (void)tabBarContainerDidLayoutFloatingTabBar:(id)a3;
- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)a3;
- (void)teardown;
- (void)titleRenamer:(id)a3 didCancelSession:(id)a4;
- (void)titleRenamer:(id)a3 session:(id)a4 didEndRenamingWithTitle:(id)a5;
- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidEnd:(id)a5;
- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidFail:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)traitCollectionDidChangeOnSubtree:(id)a3;
- (void)updateBackgroundGroupName;
- (void)updateBarVisibilityForTopItem;
- (void)updateSearchBarForPlacementChangeIfApplicable;
@end

@implementation _UINavigationBarVisualProviderModernIOSSwift

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3
{
  v4 = self;
  sub_188AE5E30(a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v6;
  v12 = v8;
  v13 = v10;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (BOOL)topItemHasVariableHeight
{
  v2 = self;
  v3 = sub_188AE6530();

  return v3 & 1;
}

- (void)stackDidChangeFrom:(id)a3
{
  v4 = self;
  v3 = [(_UINavigationBarVisualProvider *)v4 stack];
  [(_UINavigationBarItemStack *)v3 setChangeObserver:v4];
}

- (void)prepare
{
  v2 = self;
  sub_188AEB944();
}

- (void)setAppearanceAPIVersion:(int64_t)a3
{
  v4 = self;
  sub_188AECCA0(a3);
}

- (double)minimumTopPaddingWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188AEC7A4(v4);
  v7 = v6;

  return v7;
}

- (void)navigationBarInvalidatedResolvedLayoutMargins
{
  v6 = self;
  v2 = [(_UINavigationBarVisualProvider *)v6 stack];
  v3 = [(_UINavigationBarItemStack *)v2 topItem];

  v4 = sub_1890C958C(v3);
  if (v4)
  {
    v5 = [v4 searchBar];

    [v5 _updateEffectiveContentInset];
  }
}

- (void)updateBarVisibilityForTopItem
{
  v2 = self;
  sub_188AEDB34();
}

- (void)removeContentForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188AED1A0(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188AEE120();
}

- (void)changeLayout
{
  v2 = self;
  sub_188B29AE8();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188B36BE8(v4);
}

- (void)barDidMoveToWindow
{
  v2 = self;
  sub_188B37218();
}

- (void)traitCollectionDidChangeOnSubtree:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188B3B498(v4);
}

- (void)barDidAddSubview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B4E6A0(a3);
}

- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  v8 = sub_188B4EC10(v6);
  swift_unknownObjectRelease();

  return v8;
}

- (void)changeAppearance
{
  v2 = self;
  sub_188B52FC8();
}

- (void)safeAreaInsetsDidChange
{
  v5 = self;
  v2 = [(_UINavigationBarVisualProvider *)v5 navigationBar];
  [(UINavigationBar *)v2 setNeedsLayout];

  v3 = *(&v5->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v3)
  {
    v4 = v3;
    [v4 setNeedsLayout];
  }
}

- (void)navigationItemUpdatedLargeTitleContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188B9D39C(v4);
}

- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_188B9E668(v6, a4);
}

- (void)navigationItemUpdatedLeftBarButtonItems:(void *)a3 animated:(char)a4
{
  v6 = a3;
  v7 = a1;
  sub_188B9E8DC(v6, a4);
}

- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BA1244(v4);
}

- (void)navigationItemUpdatedScrollEdgeProgress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188BAA4F0(v4);
}

- (void)_observedScrollViewDidScroll
{
  v2 = self;
  sub_188BAA3EC();
}

- (void)setRefreshControlHost:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188BABBE4(a3);
}

- (void)setStaticLeadingItemGroups:(id)a3 trailingItemGroups:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  if (a3)
  {
    sub_188A34624(0, &unk_1ED48DBD0);
    v7 = sub_18A4A7548();
  }

  if (a4)
  {
    sub_188A34624(0, &unk_1ED48DBD0);
    a4 = sub_18A4A7548();
  }

  v9 = self;
  sub_188BB458C(v7, a4, a5);
}

- (void)navigationItemUpdatedSearchController:(id)a3 oldSearchController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_188BE3534(v6, a4);
}

- (NSDirectionalEdgeInsets)resolvedSearchBarMargins
{
  v2 = self;
  if (sub_188B2941C())
  {
    v3 = sub_188B297A0(1);
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = [(_UINavigationBarVisualProvider *)v2 navigationBar];
    [(UINavigationBar *)v10 _resolvedLayoutMargins];
    v3 = v11;
    v5 = v12;
    v7 = v13;
    v9 = v14;
  }

  v15 = v3;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  result.trailing = v18;
  result.bottom = v17;
  result.leading = v16;
  result.top = v15;
  return result;
}

- (id)_shim_compatibilityBackgroundView
{
  v2 = self;
  v3 = sub_188BF8244();

  return v3;
}

- (void)prepareForStackChange
{
  v1 = a1;
  sub_188AED02C();
}

- (void)navigationItemUpdatedAdditionalOverflowItems:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188C047BC(v4);
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  v5 = self;
  sub_188AECCA0(2);
  v4 = [(_UINavigationBarVisualProvider *)v5 navigationBar];
  [(UINavigationBar *)v4 setNeedsLayout];
}

- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1890D5D8C(v6, a4);
}

- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_188C18BE4(v6, a4);
}

- (void)navigationItem:(id)a3 updatedPalettePart:(int64_t)a4 oldPalette:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_188C1A378(v8, a4, v9);
}

- (void)navigationItem:(id)a3 appearance:(id)a4 categoriesChanged:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_188C32944(v7);
}

- (BOOL)wantsLargeTitleDisplayed
{
  v2 = self;
  v3 = sub_188B3761C();

  return v3 & 1;
}

- (void)navigationItemUpdatedCenterBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_188C6707C(v6, a4);
}

- (void)teardown
{
  v2 = self;
  sub_188CAD2EC();
}

- (void)navigationItemUpdatedNavigationBarVisibility:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188CB8E40(v4, sub_188AEDB34);
}

- (BOOL)scrollEdgeAppearanceHasChromelessBehavior
{
  v2 = self;
  v3 = sub_188CBA3DC();

  return v3 & 1;
}

- (void)_shim_setCustomBackgroundView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188D675B0(a3);
}

- (BOOL)permitsSearchBarPlacementIntegratedCentered
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v3 = self;
  v4 = v2;
  v5 = sub_188B3461C();

  return v5 & 1;
}

- (double)heightForRestoringFromCancelledTransition
{
  v2 = self;
  sub_1890C8878();
  v4 = v3;

  return v4;
}

- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1890D7F48(v8, v9);
}

- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__useInlineBackgroundHeightWhenLarge) != a3)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__useInlineBackgroundHeightWhenLarge) = a3;
    v5 = self;
    v4 = [(_UINavigationBarVisualProvider *)v5 navigationBar];
    [(UINavigationBar *)v4 setNeedsLayout];
  }
}

- (void)setForceScrollEdgeAppearance:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1890C8EF0(v3);
}

- (BOOL)allowsUserInteractionDuringTransitions
{
  v2 = self;
  v3 = [(_UINavigationBarVisualProvider *)v2 navigationBar];
  v4 = [(UINavigationBar *)v3 _canPreemptTransition];

  return v4;
}

- (void)_refreshBackButtonMenu
{
  v2 = self;
  sub_1890C91D0();
}

- (BOOL)isInCustomization
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer);
  if (v2)
  {
    LOBYTE(v2) = [v2 isActive];
  }

  return v2;
}

- (void)_beginRenaming
{
  v2 = self;
  sub_1890C969C();
}

- (void)_endRenaming
{
  v2 = self;
  sub_1890CA560();
}

- (void)updateSearchBarForPlacementChangeIfApplicable
{
  v2 = self;
  sub_1890CA850();
}

- (void)deferSearchSuggestionsMenuRefreshForGeometryChange
{
  v2 = self;
  sub_1890CAB48();
}

- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1890CAC28(a3);
}

- (void)refreshSearchSuggestionsMenuAfterGeometryChange
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v4 = self;
  v3 = v2;
  sub_188B49B18();
}

- (void)updateBackgroundGroupName
{
  v2 = self;
  sub_188B2DF14();
}

- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins
{
  ObjectType = swift_getObjectType();
  v4 = self;
  if (sub_188B2941C())
  {
    v5 = sub_188B297A0(0);
  }

  else
  {
    v17.receiver = v4;
    v17.super_class = ObjectType;
    [(_UINavigationBarVisualProvider *)&v17 resolvedLargeTitleMargins];
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.trailing = v16;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (void)animateForSearchPresentation:(BOOL)a3
{
  v4 = self;
  sub_1890CDC44(a3);
}

- (id)hitTest:(CGPoint)a3 defaultViewHit:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_1890CE6DC(v7, x, y);

  return v9;
}

- (int64_t)statusBarStyle
{
  v2 = self;
  v3 = sub_1890CE9B0();

  return v3;
}

- (int64_t)glassUserInterfaceStyle
{
  v2 = self;
  v3 = [(_UINavigationBarVisualProvider *)v2 navigationBar];
  v4 = [(UIView *)v3 traitCollection];

  v5 = [(UITraitCollection *)v4 glassUserInterfaceStyle];
  return v5;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(_UINavigationBarVisualProvider *)v2 navigationBar];
  [(UIView *)v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  Width = CGRectGetWidth(v18);
  sub_188AE5E30(Width);
  v14 = v13;

  v15 = -1.0;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = v4;
  if (width == 0.0)
  {
    v6 = [(_UINavigationBarVisualProvider *)v4 navigationBar];
    v7 = [(UIView *)v6 superview];

    if (v7)
    {
      [(UIView *)v7 bounds];
      width = v8;
    }
  }

  sub_188AE5E30(width);
  v10 = v9;

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)restingHeights
{
  v2 = self;
  sub_1890CED0C();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)setActiveTabBarHost:(BOOL)a3
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost) != a3)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost) = a3;
    v4 = self;
    sub_1890CEFCC();
  }
}

- (void)setWantsHostedTabBarMetrics:(BOOL)a3
{
  v4 = self;
  sub_1890CF104(a3);
}

- (UIBarButtonItem)nullableStaticNavBarButtonItem
{
  v3 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v5 = self;
  v6 = v4;
  sub_188EBDD94();
  v8 = v7;

  if (!v8)
  {
    v9 = *(&self->super.super.isa + v3);
    sub_188EBDFC0();
    v8 = v10;
  }

  return v8;
}

- (void)setNullableStaticNavBarButtonItem:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1890D8080(a3);
}

- (void)setStaticNavBarButtonItem:(id)a3 trailingPosition:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_1890CF2BC(a3, a4);
}

- (BOOL)isContentViewHidden
{
  v2 = self;
  v3 = sub_1890CF424();

  return v3 & 1;
}

- (void)setNeedsStaticNavBarButtonUpdate
{
  v2 = self;
  sub_1890CF4FC();
}

- (void)_removeContentClippingView
{
  v2 = self;
  sub_1890CF87C();
}

- (void)_installContentClippingView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890CFB2C(v4);
}

- (void)_shim_setShadowAlpha:(double)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_shadowAlpha) = a3;
  v4 = self;
  v3 = [(_UINavigationBarVisualProvider *)v4 navigationBar];
  [(UINavigationBar *)v3 setNeedsLayout];
}

- (BOOL)_shim_disableBlurTinting
{
  v2 = self;
  v3 = sub_1890CFE14();

  return v3 & 1;
}

- (void)_shim_setDisableBlurTinting:(BOOL)a3
{
  v4 = self;
  sub_1890CFEC4(a3);
}

- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1890CFFA4(x, y);

  return v6 & 1;
}

- (id)_accessibility_HUDItemForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1890D01BC(x, y);

  return v6;
}

- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1890D08AC(x, y);

  return v6;
}

+ (id)valueForUndefinedKey:(id)a3
{
  v3 = sub_18A4A7288();
  v5 = v4;
  swift_getObjCClassMetadata();
  sub_1890D0AB4(v3, v5, &v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_0(&v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_18A4A86A8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v6 = a4;
  }

  v7 = sub_18A4A7288();
  v9 = v8;

  swift_getObjCClassMetadata();
  sub_1890D0D68(v10, v7, v9);

  sub_188A3F5FC(v10, &qword_1EA934050);
}

- (id)_immediatelyFinishRunningTransition
{
  v2 = self;
  v3 = sub_1890D1070();
  v5 = v4;

  v8[4] = v3;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A8F0;
  v8[3] = &block_descriptor_156_3;
  v6 = _Block_copy(v8);

  return v6;
}

- (void)setTabBarHostedView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1890D17F4(a3);
}

- (BOOL)_supportsCustomization
{
  v2 = self;
  v3 = sub_1890D2A68();

  return v3;
}

- (void)_beginCustomization
{
  v2 = self;
  sub_1890D2B7C();
}

- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_18A4A2418();
    v8 = sub_18A4A2458();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_18A4A2458();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_1890D58E0();

  sub_188A3F5FC(v7, &unk_1EA93C6E8);
}

- (_TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationSourceForContent:(int64_t)a3 navigationItem:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = sub_1890D5BB0(a3, v6);

  return v8;
}

- (void)navigationItemUpdatedPromptContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D6048(v4);
}

- (void)navigationItemUpdatedBackgroundAppearance:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188CB8E40(v4, sub_188B2CDC8);
}

- (void)navigationItemUpdatedToolbarAvoidsKeyboard:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D640C(v4);
}

- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D65D4(v4);
}

- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1890D67AC(v4);

  return self & 1;
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D6938(v4);
}

- (void)navigationItemUpdatedBottomPalette:(id)a3 oldPalette:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890D8A58(v7);
}

- (void)navigationItemUpdatedMinimumContentMargins:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D6B88();
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D6D5C(v4);
}

- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4
{
  if (a4)
  {
    v6 = sub_18A4A7288();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11 = sub_1890D7064(a3, v6, v8);

  return v11;
}

- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)a3
{
  if (!*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext))
  {
    v5 = self;
    v4 = [(_UINavigationBarVisualProvider *)v5 navigationBar];
    [(UINavigationBar *)v4 setNeedsLayout];
  }
}

- (void)tabBarContainerDidLayoutFloatingTabBar:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D8BE0();
}

- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890D8CCC();
}

- (id)barCustomizer:(id)a3 containerViewForSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1890D8F70();

  return v9;
}

- (CGRect)barCustomizer:(id)a3 overflowControlBoundsForSession:(id)a4
{
  v4 = sub_1890D7694(self, a2, a3, a4, sub_1890D9200);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)barCustomizer:(id)a3 customizationAreaBoundsForSession:(id)a4
{
  v4 = sub_1890D7694(self, a2, a3, a4, sub_1890D9324);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)barCustomizer:(id)a3 willEndSession:(id)a4 didReset:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_1890D94C8(v9, a5);
}

- (id)titleRenamer:(id)a3 session:(id)a4 willBeginRenamingWithTitle:(id)a5 selectedRange:(_NSRange *)a6
{
  v10 = sub_18A4A7288();
  v12 = v11;
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1890DA218(v14, v10, v12, a6);

  v16 = sub_18A4A7258();

  return v16;
}

- (BOOL)titleRenamer:(id)a3 session:(id)a4 shouldEndRenamingWithTitle:(id)a5
{
  sub_18A4A7288();
  v8 = a3;
  v9 = a4;
  v10 = self;
  LOBYTE(self) = sub_1890DA2E8(v9);

  return self & 1;
}

- (void)titleRenamer:(id)a3 session:(id)a4 didEndRenamingWithTitle:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1890DA37C(v8);
}

- (void)titleRenamer:(id)a3 didCancelSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890DA53C(v7);
}

- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidEnd:(id)a5
{
  v8 = sub_18A4A28E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A28D8();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1890DA7CC(v13);

  (*(v9 + 8))(v11, v8);
}

- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidFail:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1890DA970(v9);
}

@end