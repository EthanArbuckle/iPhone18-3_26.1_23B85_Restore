@interface _UITabBarContentLayoutManager
- (BOOL)isLandscapeOnPhone;
- (BOOL)showsCancelAction;
- (CGRect)adjustedBoundsForHostedSearchField:(CGRect)a3 prefersFullSizeField:(BOOL)a4;
- (CGSize)contentSizeForAllHostedElements;
- (UIView)container;
- (_TtC5UIKit26_UITabBarAnimationSettings)animationSettings;
- (_UITabBarContentLayoutHost)host;
- (_UITabBarContentLayoutManager)init;
- (_UITabBarContentLayoutManager)initWithLayoutHost:(id)a3 container:(id)a4;
- (double)interPlatterSpacingForHostedSearchFieldWithPrefersFullSizeField:(BOOL)a3;
- (id)_currentSearchFieldConfiguration;
- (id)_hostedSearchNavigationControllerFrom:(id)a3;
- (id)_searchControllerForHostedSearchField;
- (void)_finalizeMagicMorphAnimationIfNeeded;
- (void)_morphToHostedSearchFieldWithActivatesSearchIfPossible:(BOOL)a3;
- (void)_removeHostedSearchViewsIfNeeded;
- (void)_updateHostedSearchFieldCancelActionVisibility:(id)a3;
- (void)_updateKeyboardInfo:(id)a3;
- (void)_updateNotificationObserversForSearch;
- (void)dismissSearchIfNeeded;
- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsHostingSearchTextField:(BOOL)a3;
- (void)setSearchContainerView:(id)a3;
- (void)tabBarDidChange:(id)a3;
- (void)updateAccessoryDisplayStyle;
- (void)updateAccessoryDisplayStyleIfNeeded;
- (void)updateAccessoryLayoutIfNeeded;
- (void)updateContentLayoutWithAnimated:(BOOL)a3;
- (void)updateHostedAccessoryWithAnimated:(BOOL)a3;
- (void)updateHostedElementsAnimated:(BOOL)a3;
- (void)updateHostedSearchFieldIfNeeded;
- (void)updateHostedSearchLayoutIfNeeded;
- (void)updateLayout;
@end

@implementation _UITabBarContentLayoutManager

- (_UITabBarContentLayoutManager)initWithLayoutHost:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_188B7DFB0(v5, a4);

  return v7;
}

- (void)tabBarDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B7CC0C(a3);
}

- (CGSize)contentSizeForAllHostedElements
{
  v2 = self;
  v3 = sub_188B7E478();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_UITabBarContentLayoutHost)host
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)updateLayout
{
  v2 = self;
  [(_UITabBarContentLayoutManager *)v2 updateHostedSearchLayoutIfNeeded];
  [(_UITabBarContentLayoutManager *)v2 updateAccessoryLayoutIfNeeded];
  [(_UITabBarContentLayoutHost *)[(_UITabBarContentLayoutManager *)v2 host] updateLayoutContentSize];
  swift_unknownObjectRelease();
}

- (void)updateHostedSearchLayoutIfNeeded
{
  v2 = self;
  sub_188B81964();
}

- (void)updateAccessoryLayoutIfNeeded
{
  v2 = self;
  sub_188B81CBC();
}

- (id)_currentSearchFieldConfiguration
{
  v2 = self;
  v3 = sub_188B868D4();

  return v3;
}

- (void)setIsHostingSearchTextField:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField);
  *(self + OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField) = a3;
  v4 = self;
  sub_188B86AC4(v3);
}

- (void)updateHostedAccessoryWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_188B86E18(a3);
}

- (void)updateHostedElementsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (![(_UITabBarContentLayoutManager *)v4 isUpdatingHostedElements])
  {
    [(_UITabBarContentLayoutManager *)v4 setIsUpdatingHostedElements:1];
    [(_UITabBarContentLayoutManager *)v4 updateHostedSearchFieldIfNeeded];
    [(_UITabBarContentLayoutManager *)v4 updateHostedAccessoryWithAnimated:v3];
    [(_UITabBarContentLayoutManager *)v4 setIsUpdatingHostedElements:0];
  }
}

- (void)updateHostedSearchFieldIfNeeded
{
  v2 = self;
  sub_188B85C18();
}

- (UIView)container
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)updateAccessoryDisplayStyle
{
  v2 = self;
  sub_188F3744C();
}

- (id)_searchControllerForHostedSearchField
{
  v2 = self;
  v3 = sub_188CBAA0C();

  return v3;
}

- (void)setSearchContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR____UITabBarContentLayoutManager_searchContainerView);
  *(self + OBJC_IVAR____UITabBarContentLayoutManager_searchContainerView) = a3;
  v3 = a3;
}

- (_TtC5UIKit26_UITabBarAnimationSettings)animationSettings
{
  type metadata accessor for _UITabBarAnimationSettingsDomain();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC5UIKit32_UITabBarAnimationSettingsDomain;
  result = [(_UITabBarContentLayoutManager *)&v4 rootSettings];
  if (result)
  {
    type metadata accessor for _UITabBarAnimationSettings();
    v3 = swift_dynamicCastClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)updateAccessoryDisplayStyleIfNeeded
{
  v2 = self;
  if ([(_UITabBarContentLayoutManager *)v2 needsAccessoryDisplayStateUpdate])
  {
    [(_UITabBarContentLayoutManager *)v2 updateAccessoryDisplayStyle];
  }
}

- (BOOL)showsCancelAction
{
  v2 = *(self + OBJC_IVAR____UITabBarContentLayoutManager_hostedSearchFieldConfiguration);
  if (v2)
  {
    LOBYTE(v2) = [v2 showsCancelAction];
  }

  return v2;
}

- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_188F38188(a3, a4);
}

- (void)updateContentLayoutWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_188F38934(a3);
}

- (BOOL)isLandscapeOnPhone
{
  v2 = self;
  v3 = sub_188F38BEC();

  return v3;
}

- (double)interPlatterSpacingForHostedSearchFieldWithPrefersFullSizeField:(BOOL)a3
{
  result = 12.0;
  if (a3)
  {
    return 8.0;
  }

  return result;
}

- (CGRect)adjustedBoundsForHostedSearchField:(CGRect)a3 prefersFullSizeField:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self;
  sub_188F38D04(a4, x, y, width, height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)dismissSearchIfNeeded
{
  v2 = self;
  sub_188F38FA4();
}

- (id)_hostedSearchNavigationControllerFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_188F39A14(v4);

  return v6;
}

- (void)_updateHostedSearchFieldCancelActionVisibility:(id)a3
{
  if ((*(self + OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState) & 0xFE) != 2)
  {
    v5 = a3;
    v6 = self;
    sub_188F37598([v5 showsCancelAction]);
  }
}

- (void)_finalizeMagicMorphAnimationIfNeeded
{
  v2 = self;
  sub_188F39EC0();
}

- (void)_morphToHostedSearchFieldWithActivatesSearchIfPossible:(BOOL)a3
{
  v4 = self;
  sub_188F3A094(a3);
}

- (void)_removeHostedSearchViewsIfNeeded
{
  v2 = self;
  sub_188F3A440();
}

- (void)_updateNotificationObserversForSearch
{
  v2 = self;
  sub_188F3A588();
}

- (void)_updateKeyboardInfo:(id)a3
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v8 = self;
  sub_188F3A794();

  (*(v5 + 8))(v7, v4);
}

- (_UITabBarContentLayoutManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end