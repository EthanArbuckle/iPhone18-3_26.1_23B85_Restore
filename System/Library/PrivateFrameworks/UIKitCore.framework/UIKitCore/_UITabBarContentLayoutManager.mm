@interface _UITabBarContentLayoutManager
- (BOOL)isLandscapeOnPhone;
- (BOOL)showsCancelAction;
- (CGRect)adjustedBoundsForHostedSearchField:(CGRect)field prefersFullSizeField:(BOOL)sizeField;
- (CGSize)contentSizeForAllHostedElements;
- (UIView)container;
- (_TtC5UIKit26_UITabBarAnimationSettings)animationSettings;
- (_UITabBarContentLayoutHost)host;
- (_UITabBarContentLayoutManager)init;
- (_UITabBarContentLayoutManager)initWithLayoutHost:(id)host container:(id)container;
- (double)interPlatterSpacingForHostedSearchFieldWithPrefersFullSizeField:(BOOL)field;
- (id)_currentSearchFieldConfiguration;
- (id)_hostedSearchNavigationControllerFrom:(id)from;
- (id)_searchControllerForHostedSearchField;
- (void)_finalizeMagicMorphAnimationIfNeeded;
- (void)_morphToHostedSearchFieldWithActivatesSearchIfPossible:(BOOL)possible;
- (void)_removeHostedSearchViewsIfNeeded;
- (void)_updateHostedSearchFieldCancelActionVisibility:(id)visibility;
- (void)_updateKeyboardInfo:(id)info;
- (void)_updateNotificationObserversForSearch;
- (void)dismissSearchIfNeeded;
- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setIsHostingSearchTextField:(BOOL)field;
- (void)setSearchContainerView:(id)view;
- (void)tabBarDidChange:(id)change;
- (void)updateAccessoryDisplayStyle;
- (void)updateAccessoryDisplayStyleIfNeeded;
- (void)updateAccessoryLayoutIfNeeded;
- (void)updateContentLayoutWithAnimated:(BOOL)animated;
- (void)updateHostedAccessoryWithAnimated:(BOOL)animated;
- (void)updateHostedElementsAnimated:(BOOL)animated;
- (void)updateHostedSearchFieldIfNeeded;
- (void)updateHostedSearchLayoutIfNeeded;
- (void)updateLayout;
@end

@implementation _UITabBarContentLayoutManager

- (_UITabBarContentLayoutManager)initWithLayoutHost:(id)host container:(id)container
{
  hostCopy = host;
  containerCopy = container;
  v7 = sub_188B7DFB0(hostCopy, container);

  return v7;
}

- (void)tabBarDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_188B7CC0C(change);
}

- (CGSize)contentSizeForAllHostedElements
{
  selfCopy = self;
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
  selfCopy = self;
  [(_UITabBarContentLayoutManager *)selfCopy updateHostedSearchLayoutIfNeeded];
  [(_UITabBarContentLayoutManager *)selfCopy updateAccessoryLayoutIfNeeded];
  [(_UITabBarContentLayoutHost *)[(_UITabBarContentLayoutManager *)selfCopy host] updateLayoutContentSize];
  swift_unknownObjectRelease();
}

- (void)updateHostedSearchLayoutIfNeeded
{
  selfCopy = self;
  sub_188B81964();
}

- (void)updateAccessoryLayoutIfNeeded
{
  selfCopy = self;
  sub_188B81CBC();
}

- (id)_currentSearchFieldConfiguration
{
  selfCopy = self;
  v3 = sub_188B868D4();

  return v3;
}

- (void)setIsHostingSearchTextField:(BOOL)field
{
  v3 = *(self + OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField);
  *(self + OBJC_IVAR____UITabBarContentLayoutManager_isHostingSearchTextField) = field;
  selfCopy = self;
  sub_188B86AC4(v3);
}

- (void)updateHostedAccessoryWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_188B86E18(animated);
}

- (void)updateHostedElementsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  if (![(_UITabBarContentLayoutManager *)selfCopy isUpdatingHostedElements])
  {
    [(_UITabBarContentLayoutManager *)selfCopy setIsUpdatingHostedElements:1];
    [(_UITabBarContentLayoutManager *)selfCopy updateHostedSearchFieldIfNeeded];
    [(_UITabBarContentLayoutManager *)selfCopy updateHostedAccessoryWithAnimated:animatedCopy];
    [(_UITabBarContentLayoutManager *)selfCopy setIsUpdatingHostedElements:0];
  }
}

- (void)updateHostedSearchFieldIfNeeded
{
  selfCopy = self;
  sub_188B85C18();
}

- (UIView)container
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)updateAccessoryDisplayStyle
{
  selfCopy = self;
  sub_188F3744C();
}

- (id)_searchControllerForHostedSearchField
{
  selfCopy = self;
  v3 = sub_188CBAA0C();

  return v3;
}

- (void)setSearchContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR____UITabBarContentLayoutManager_searchContainerView);
  *(self + OBJC_IVAR____UITabBarContentLayoutManager_searchContainerView) = view;
  viewCopy = view;
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
  selfCopy = self;
  if ([(_UITabBarContentLayoutManager *)selfCopy needsAccessoryDisplayStateUpdate])
  {
    [(_UITabBarContentLayoutManager *)selfCopy updateAccessoryDisplayStyle];
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

- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  sub_188F38188(hidden, animated);
}

- (void)updateContentLayoutWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_188F38934(animated);
}

- (BOOL)isLandscapeOnPhone
{
  selfCopy = self;
  v3 = sub_188F38BEC();

  return v3;
}

- (double)interPlatterSpacingForHostedSearchFieldWithPrefersFullSizeField:(BOOL)field
{
  result = 12.0;
  if (field)
  {
    return 8.0;
  }

  return result;
}

- (CGRect)adjustedBoundsForHostedSearchField:(CGRect)field prefersFullSizeField:(BOOL)sizeField
{
  height = field.size.height;
  width = field.size.width;
  y = field.origin.y;
  x = field.origin.x;
  selfCopy = self;
  sub_188F38D04(sizeField, x, y, width, height);
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
  selfCopy = self;
  sub_188F38FA4();
}

- (id)_hostedSearchNavigationControllerFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  v6 = sub_188F39A14(fromCopy);

  return v6;
}

- (void)_updateHostedSearchFieldCancelActionVisibility:(id)visibility
{
  if ((*(self + OBJC_IVAR____UITabBarContentLayoutManager_currentDisplayState) & 0xFE) != 2)
  {
    visibilityCopy = visibility;
    selfCopy = self;
    sub_188F37598([visibilityCopy showsCancelAction]);
  }
}

- (void)_finalizeMagicMorphAnimationIfNeeded
{
  selfCopy = self;
  sub_188F39EC0();
}

- (void)_morphToHostedSearchFieldWithActivatesSearchIfPossible:(BOOL)possible
{
  selfCopy = self;
  sub_188F3A094(possible);
}

- (void)_removeHostedSearchViewsIfNeeded
{
  selfCopy = self;
  sub_188F3A440();
}

- (void)_updateNotificationObserversForSearch
{
  selfCopy = self;
  sub_188F3A588();
}

- (void)_updateKeyboardInfo:(id)info
{
  v4 = sub_18A4A2458();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  selfCopy = self;
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