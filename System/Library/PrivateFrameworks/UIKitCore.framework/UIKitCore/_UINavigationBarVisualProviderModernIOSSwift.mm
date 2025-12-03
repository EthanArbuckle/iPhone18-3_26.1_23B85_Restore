@interface _UINavigationBarVisualProviderModernIOSSwift
+ (id)valueForUndefinedKey:(id)key;
+ (void)setValue:(id)value forUndefinedKey:(id)key;
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)width;
- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)point;
- (BOOL)_shim_disableBlurTinting;
- (BOOL)_supportsCustomization;
- (BOOL)allowsUserInteractionDuringTransitions;
- (BOOL)isContentViewHidden;
- (BOOL)isInCustomization;
- (BOOL)permitsSearchBarPlacementIntegratedCentered;
- (BOOL)scrollEdgeAppearanceHasChromelessBehavior;
- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item;
- (BOOL)titleRenamer:(id)renamer session:(id)session shouldEndRenamingWithTitle:(id)title;
- (BOOL)topItemHasVariableHeight;
- (BOOL)wantsLargeTitleDisplayed;
- (CGRect)barCustomizer:(id)customizer customizationAreaBoundsForSession:(id)session;
- (CGRect)barCustomizer:(id)customizer overflowControlBoundsForSession:(id)session;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)resolvedSearchBarMargins;
- (UIBarButtonItem)nullableStaticNavBarButtonItem;
- (_TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift)init;
- (double)heightForRestoringFromCancelledTransition;
- (double)minimumTopPaddingWithTraitCollection:(id)collection;
- (id)_accessibility_HUDItemForPoint:(CGPoint)point;
- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point;
- (id)_immediatelyFinishRunningTransition;
- (id)_shim_compatibilityBackgroundView;
- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path;
- (id)barCustomizer:(id)customizer containerViewForSession:(id)session;
- (id)hitTest:(CGPoint)test defaultViewHit:(id)hit;
- (id)presentationSourceForContent:(int64_t)content navigationItem:(id)item;
- (id)restingHeights;
- (id)titleRenamer:(id)renamer session:(id)session willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range;
- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection;
- (int64_t)glassUserInterfaceStyle;
- (int64_t)statusBarStyle;
- (void)_beginCustomization;
- (void)_beginRenaming;
- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)changed;
- (void)_endRenaming;
- (void)_installContentClippingView:(id)view;
- (void)_observedScrollViewDidScroll;
- (void)_refreshBackButtonMenu;
- (void)_removeContentClippingView;
- (void)_shim_setCustomBackgroundView:(id)view;
- (void)_shim_setDisableBlurTinting:(BOOL)tinting;
- (void)_shim_setShadowAlpha:(double)alpha;
- (void)animateForSearchPresentation:(BOOL)presentation;
- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)barCustomizer:(id)customizer willEndSession:(id)session didReset:(BOOL)reset;
- (void)barDidAddSubview:(id)subview;
- (void)barDidMoveToWindow;
- (void)changeAppearance;
- (void)changeLayout;
- (void)deferSearchSuggestionsMenuRefreshForGeometryChange;
- (void)layoutSubviews;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)layout;
- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette;
- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)bar;
- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items;
- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated;
- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance;
- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette;
- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated;
- (void)navigationItemUpdatedLargeTitleContent:(id)content;
- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode;
- (void)navigationItemUpdatedLeftBarButtonItems:(void *)items animated:(char)animated;
- (void)navigationItemUpdatedMinimumContentMargins:(id)margins;
- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility;
- (void)navigationItemUpdatedPromptContent:(id)content;
- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress;
- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration;
- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration;
- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController;
- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated;
- (void)navigationItemUpdatedToolbarAvoidsKeyboard:(id)keyboard;
- (void)prepare;
- (void)prepareForStackChange;
- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem;
- (void)refreshSearchSuggestionsMenuAfterGeometryChange;
- (void)removeContentForItem:(id)item;
- (void)safeAreaInsetsDidChange;
- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)item;
- (void)setActiveTabBarHost:(BOOL)host;
- (void)setAppearanceAPIVersion:(int64_t)version;
- (void)setForceScrollEdgeAppearance:(BOOL)appearance;
- (void)setNeedsStaticNavBarButtonUpdate;
- (void)setNullableStaticNavBarButtonItem:(id)item;
- (void)setRefreshControlHost:(id)host;
- (void)setStaticLeadingItemGroups:(id)groups trailingItemGroups:(id)itemGroups animated:(BOOL)animated;
- (void)setStaticNavBarButtonItem:(id)item trailingPosition:(BOOL)position;
- (void)setTabBarHostedView:(id)view;
- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)large;
- (void)setWantsHostedTabBarMetrics:(BOOL)metrics;
- (void)stackDidChangeFrom:(id)from;
- (void)tabBarContainerDidLayoutFloatingTabBar:(id)bar;
- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)visibility;
- (void)teardown;
- (void)titleRenamer:(id)renamer didCancelSession:(id)session;
- (void)titleRenamer:(id)renamer session:(id)session didEndRenamingWithTitle:(id)title;
- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidEnd:(id)end;
- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidFail:(id)fail;
- (void)traitCollectionDidChange:(id)change;
- (void)traitCollectionDidChangeOnSubtree:(id)subtree;
- (void)updateBackgroundGroupName;
- (void)updateBarVisibilityForTopItem;
- (void)updateSearchBarForPlacementChangeIfApplicable;
@end

@implementation _UINavigationBarVisualProviderModernIOSSwift

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)width
{
  selfCopy = self;
  sub_188AE5E30(width);
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
  selfCopy = self;
  v3 = sub_188AE6530();

  return v3 & 1;
}

- (void)stackDidChangeFrom:(id)from
{
  selfCopy = self;
  stack = [(_UINavigationBarVisualProvider *)selfCopy stack];
  [(_UINavigationBarItemStack *)stack setChangeObserver:selfCopy];
}

- (void)prepare
{
  selfCopy = self;
  sub_188AEB944();
}

- (void)setAppearanceAPIVersion:(int64_t)version
{
  selfCopy = self;
  sub_188AECCA0(version);
}

- (double)minimumTopPaddingWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_188AEC7A4(collectionCopy);
  v7 = v6;

  return v7;
}

- (void)navigationBarInvalidatedResolvedLayoutMargins
{
  selfCopy = self;
  stack = [(_UINavigationBarVisualProvider *)selfCopy stack];
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  v4 = sub_1890C958C(topItem);
  if (v4)
  {
    searchBar = [v4 searchBar];

    [searchBar _updateEffectiveContentInset];
  }
}

- (void)updateBarVisibilityForTopItem
{
  selfCopy = self;
  sub_188AEDB34();
}

- (void)removeContentForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_188AED1A0(itemCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188AEE120();
}

- (void)changeLayout
{
  selfCopy = self;
  sub_188B29AE8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_188B36BE8(changeCopy);
}

- (void)barDidMoveToWindow
{
  selfCopy = self;
  sub_188B37218();
}

- (void)traitCollectionDidChangeOnSubtree:(id)subtree
{
  subtreeCopy = subtree;
  selfCopy = self;
  sub_188B3B498(subtreeCopy);
}

- (void)barDidAddSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  sub_188B4E6A0(subview);
}

- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  v8 = sub_188B4EC10(collectionCopy);
  swift_unknownObjectRelease();

  return v8;
}

- (void)changeAppearance
{
  selfCopy = self;
  sub_188B52FC8();
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  [(UINavigationBar *)navigationBar setNeedsLayout];

  v3 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v3)
  {
    v4 = v3;
    [v4 setNeedsLayout];
  }
}

- (void)navigationItemUpdatedLargeTitleContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_188B9D39C(contentCopy);
}

- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated
{
  contentCopy = content;
  selfCopy = self;
  sub_188B9E668(contentCopy, animated);
}

- (void)navigationItemUpdatedLeftBarButtonItems:(void *)items animated:(char)animated
{
  itemsCopy = items;
  selfCopy = self;
  sub_188B9E8DC(itemsCopy, animated);
}

- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode
{
  modeCopy = mode;
  selfCopy = self;
  sub_188BA1244(modeCopy);
}

- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  sub_188BAA4F0(progressCopy);
}

- (void)_observedScrollViewDidScroll
{
  selfCopy = self;
  sub_188BAA3EC();
}

- (void)setRefreshControlHost:(id)host
{
  hostCopy = host;
  selfCopy = self;
  sub_188BABBE4(host);
}

- (void)setStaticLeadingItemGroups:(id)groups trailingItemGroups:(id)itemGroups animated:(BOOL)animated
{
  groupsCopy = groups;
  if (groups)
  {
    sub_188A34624(0, &unk_1ED48DBD0);
    groupsCopy = sub_18A4A7548();
  }

  if (itemGroups)
  {
    sub_188A34624(0, &unk_1ED48DBD0);
    itemGroups = sub_18A4A7548();
  }

  selfCopy = self;
  sub_188BB458C(groupsCopy, itemGroups, animated);
}

- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController
{
  controllerCopy = controller;
  searchControllerCopy = searchController;
  selfCopy = self;
  sub_188BE3534(controllerCopy, searchController);
}

- (NSDirectionalEdgeInsets)resolvedSearchBarMargins
{
  selfCopy = self;
  if (sub_188B2941C())
  {
    v3 = sub_188B297A0(1);
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    [(UINavigationBar *)navigationBar _resolvedLayoutMargins];
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
  selfCopy = self;
  v3 = sub_188BF8244();

  return v3;
}

- (void)prepareForStackChange
{
  selfCopy = self;
  sub_188AED02C();
}

- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  sub_188C047BC(itemsCopy);
}

- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  selfCopy = self;
  sub_188AECCA0(2);
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  [(UINavigationBar *)navigationBar setNeedsLayout];
}

- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1890D5D8C(layoutCopy, animated);
}

- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated
{
  contentCopy = content;
  selfCopy = self;
  sub_188C18BE4(contentCopy, animated);
}

- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette
{
  itemCopy = item;
  paletteCopy = palette;
  selfCopy = self;
  sub_188C1A378(itemCopy, part, paletteCopy);
}

- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  itemCopy = item;
  appearanceCopy = appearance;
  selfCopy = self;
  sub_188C32944(itemCopy);
}

- (BOOL)wantsLargeTitleDisplayed
{
  selfCopy = self;
  v3 = sub_188B3761C();

  return v3 & 1;
}

- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated
{
  itemsCopy = items;
  selfCopy = self;
  sub_188C6707C(itemsCopy, animated);
}

- (void)teardown
{
  selfCopy = self;
  sub_188CAD2EC();
}

- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  selfCopy = self;
  sub_188CB8E40(visibilityCopy, sub_188AEDB34);
}

- (BOOL)scrollEdgeAppearanceHasChromelessBehavior
{
  selfCopy = self;
  v3 = sub_188CBA3DC();

  return v3 & 1;
}

- (void)_shim_setCustomBackgroundView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188D675B0(view);
}

- (BOOL)permitsSearchBarPlacementIntegratedCentered
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  selfCopy = self;
  v4 = v2;
  v5 = sub_188B3461C();

  return v5 & 1;
}

- (double)heightForRestoringFromCancelledTransition
{
  selfCopy = self;
  sub_1890C8878();
  v4 = v3;

  return v4;
}

- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem
{
  contentsCopy = contents;
  itemCopy = item;
  backItemCopy = backItem;
  selfCopy = self;
  sub_1890D7F48(contentsCopy, itemCopy);
}

- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)large
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__useInlineBackgroundHeightWhenLarge) != large)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__useInlineBackgroundHeightWhenLarge) = large;
    selfCopy = self;
    navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    [(UINavigationBar *)navigationBar setNeedsLayout];
  }
}

- (void)setForceScrollEdgeAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  selfCopy = self;
  sub_1890C8EF0(appearanceCopy);
}

- (BOOL)allowsUserInteractionDuringTransitions
{
  selfCopy = self;
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  _canPreemptTransition = [(UINavigationBar *)navigationBar _canPreemptTransition];

  return _canPreemptTransition;
}

- (void)_refreshBackButtonMenu
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1890C969C();
}

- (void)_endRenaming
{
  selfCopy = self;
  sub_1890CA560();
}

- (void)updateSearchBarForPlacementChangeIfApplicable
{
  selfCopy = self;
  sub_1890CA850();
}

- (void)deferSearchSuggestionsMenuRefreshForGeometryChange
{
  selfCopy = self;
  sub_1890CAB48();
}

- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1890CAC28(item);
}

- (void)refreshSearchSuggestionsMenuAfterGeometryChange
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  selfCopy = self;
  v3 = v2;
  sub_188B49B18();
}

- (void)updateBackgroundGroupName
{
  selfCopy = self;
  sub_188B2DF14();
}

- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  if (sub_188B2941C())
  {
    v5 = sub_188B297A0(0);
  }

  else
  {
    v17.receiver = selfCopy;
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

- (void)animateForSearchPresentation:(BOOL)presentation
{
  selfCopy = self;
  sub_1890CDC44(presentation);
}

- (id)hitTest:(CGPoint)test defaultViewHit:(id)hit
{
  y = test.y;
  x = test.x;
  hitCopy = hit;
  selfCopy = self;
  v9 = sub_1890CE6DC(hitCopy, x, y);

  return v9;
}

- (int64_t)statusBarStyle
{
  selfCopy = self;
  v3 = sub_1890CE9B0();

  return v3;
}

- (int64_t)glassUserInterfaceStyle
{
  selfCopy = self;
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  traitCollection = [(UIView *)navigationBar traitCollection];

  glassUserInterfaceStyle = [(UITraitCollection *)traitCollection glassUserInterfaceStyle];
  return glassUserInterfaceStyle;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  [(UIView *)navigationBar bounds];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = selfCopy;
  if (width == 0.0)
  {
    navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    superview = [(UIView *)navigationBar superview];

    if (superview)
    {
      [(UIView *)superview bounds];
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
  selfCopy = self;
  sub_1890CED0C();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)setActiveTabBarHost:(BOOL)host
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost) != host)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost) = host;
    selfCopy = self;
    sub_1890CEFCC();
  }
}

- (void)setWantsHostedTabBarMetrics:(BOOL)metrics
{
  selfCopy = self;
  sub_1890CF104(metrics);
}

- (UIBarButtonItem)nullableStaticNavBarButtonItem
{
  v3 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  selfCopy = self;
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

- (void)setNullableStaticNavBarButtonItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1890D8080(item);
}

- (void)setStaticNavBarButtonItem:(id)item trailingPosition:(BOOL)position
{
  itemCopy = item;
  selfCopy = self;
  sub_1890CF2BC(item, position);
}

- (BOOL)isContentViewHidden
{
  selfCopy = self;
  v3 = sub_1890CF424();

  return v3 & 1;
}

- (void)setNeedsStaticNavBarButtonUpdate
{
  selfCopy = self;
  sub_1890CF4FC();
}

- (void)_removeContentClippingView
{
  selfCopy = self;
  sub_1890CF87C();
}

- (void)_installContentClippingView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890CFB2C(viewCopy);
}

- (void)_shim_setShadowAlpha:(double)alpha
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_shadowAlpha) = alpha;
  selfCopy = self;
  navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
  [(UINavigationBar *)navigationBar setNeedsLayout];
}

- (BOOL)_shim_disableBlurTinting
{
  selfCopy = self;
  v3 = sub_1890CFE14();

  return v3 & 1;
}

- (void)_shim_setDisableBlurTinting:(BOOL)tinting
{
  selfCopy = self;
  sub_1890CFEC4(tinting);
}

- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_1890CFFA4(x, y);

  return v6 & 1;
}

- (id)_accessibility_HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_1890D01BC(x, y);

  return v6;
}

- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_1890D08AC(x, y);

  return v6;
}

+ (id)valueForUndefinedKey:(id)key
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

+ (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (value)
  {
    keyCopy = key;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    keyCopy2 = key;
  }

  v7 = sub_18A4A7288();
  v9 = v8;

  swift_getObjCClassMetadata();
  sub_1890D0D68(v10, v7, v9);

  sub_188A3F5FC(v10, &qword_1EA934050);
}

- (id)_immediatelyFinishRunningTransition
{
  selfCopy = self;
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

- (void)setTabBarHostedView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890D17F4(view);
}

- (BOOL)_supportsCustomization
{
  selfCopy = self;
  v3 = sub_1890D2A68();

  return v3;
}

- (void)_beginCustomization
{
  selfCopy = self;
  sub_1890D2B7C();
}

- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)changed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C6E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (changed)
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

  selfCopy = self;
  sub_1890D58E0();

  sub_188A3F5FC(v7, &unk_1EA93C6E8);
}

- (_TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationSourceForContent:(int64_t)content navigationItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v8 = sub_1890D5BB0(content, itemCopy);

  return v8;
}

- (void)navigationItemUpdatedPromptContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1890D6048(contentCopy);
}

- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance
{
  appearanceCopy = appearance;
  selfCopy = self;
  sub_188CB8E40(appearanceCopy, sub_188B2CDC8);
}

- (void)navigationItemUpdatedToolbarAvoidsKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  selfCopy = self;
  sub_1890D640C(keyboardCopy);
}

- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)bar
{
  barCopy = bar;
  selfCopy = self;
  sub_1890D65D4(barCopy);
}

- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  LOBYTE(self) = sub_1890D67AC(itemCopy);

  return self & 1;
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsExternalIntegration:(id)integration
{
  integrationCopy = integration;
  selfCopy = self;
  sub_1890D6938(integrationCopy);
}

- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette
{
  paletteCopy = palette;
  oldPaletteCopy = oldPalette;
  selfCopy = self;
  sub_1890D8A58(oldPaletteCopy);
}

- (void)navigationItemUpdatedMinimumContentMargins:(id)margins
{
  marginsCopy = margins;
  selfCopy = self;
  sub_1890D6B88();
}

- (void)navigationItemUpdatedSearchBarPlacementAllowsToolbarIntegration:(id)integration
{
  integrationCopy = integration;
  selfCopy = self;
  sub_1890D6D5C(integrationCopy);
}

- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path
{
  if (path)
  {
    v6 = sub_18A4A7288();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  viewCopy = view;
  selfCopy = self;
  v11 = sub_1890D7064(view, v6, v8);

  return v11;
}

- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)visibility
{
  if (!*(&self->super.super.isa + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext))
  {
    selfCopy = self;
    navigationBar = [(_UINavigationBarVisualProvider *)selfCopy navigationBar];
    [(UINavigationBar *)navigationBar setNeedsLayout];
  }
}

- (void)tabBarContainerDidLayoutFloatingTabBar:(id)bar
{
  barCopy = bar;
  selfCopy = self;
  sub_1890D8BE0();
}

- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1890D8CCC();
}

- (id)barCustomizer:(id)customizer containerViewForSession:(id)session
{
  customizerCopy = customizer;
  sessionCopy = session;
  selfCopy = self;
  v9 = sub_1890D8F70();

  return v9;
}

- (CGRect)barCustomizer:(id)customizer overflowControlBoundsForSession:(id)session
{
  v4 = sub_1890D7694(self, a2, customizer, session, sub_1890D9200);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)barCustomizer:(id)customizer customizationAreaBoundsForSession:(id)session
{
  v4 = sub_1890D7694(self, a2, customizer, session, sub_1890D9324);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)barCustomizer:(id)customizer willEndSession:(id)session didReset:(BOOL)reset
{
  customizerCopy = customizer;
  sessionCopy = session;
  selfCopy = self;
  sub_1890D94C8(sessionCopy, reset);
}

- (id)titleRenamer:(id)renamer session:(id)session willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range
{
  v10 = sub_18A4A7288();
  v12 = v11;
  renamerCopy = renamer;
  sessionCopy = session;
  selfCopy = self;
  sub_1890DA218(sessionCopy, v10, v12, range);

  v16 = sub_18A4A7258();

  return v16;
}

- (BOOL)titleRenamer:(id)renamer session:(id)session shouldEndRenamingWithTitle:(id)title
{
  sub_18A4A7288();
  renamerCopy = renamer;
  sessionCopy = session;
  selfCopy = self;
  LOBYTE(self) = sub_1890DA2E8(sessionCopy);

  return self & 1;
}

- (void)titleRenamer:(id)renamer session:(id)session didEndRenamingWithTitle:(id)title
{
  renamerCopy = renamer;
  sessionCopy = session;
  selfCopy = self;
  sub_1890DA37C(sessionCopy);
}

- (void)titleRenamer:(id)renamer didCancelSession:(id)session
{
  renamerCopy = renamer;
  sessionCopy = session;
  selfCopy = self;
  sub_1890DA53C(sessionCopy);
}

- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidEnd:(id)end
{
  v8 = sub_18A4A28E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A28D8();
  renamerCopy = renamer;
  sessionCopy = session;
  selfCopy = self;
  sub_1890DA7CC(sessionCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidFail:(id)fail
{
  renamerCopy = renamer;
  sessionCopy = session;
  failCopy = fail;
  selfCopy = self;
  sub_1890DA970(sessionCopy);
}

@end