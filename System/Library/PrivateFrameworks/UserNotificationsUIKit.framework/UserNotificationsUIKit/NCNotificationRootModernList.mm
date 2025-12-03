@interface NCNotificationRootModernList
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)deviceAuthenticated;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)component;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped;
- (BOOL)removeNotificationRequest:(id)request;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)component;
- (NCNotificationRootModernList)initWithListView:(id)view delegate:(id)delegate;
- (double)notificationListView:(id)view heightForItemAtIndex:(int64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (double)scrollViewVisibleContentLayoutOffsetY;
- (double)targetContentHeightForNotificationList:(id)list;
- (id)initForTesting;
- (id)notificationListView:(id)view topSpacingForItemAtIndex:(int64_t)index;
- (int64_t)incomingCount;
- (int64_t)insertNotificationRequest:(id)request;
- (void)_backlightChangedToBacklightLuminance:(int64_t)luminance;
- (void)_didUpdateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)_displayStyleDidChangeForSleep;
- (void)_notificationSectionsDidAdd:(id)add;
- (void)_scrollToSystemPreferredPageTypeIfPossible;
- (void)_setRevealed:(BOOL)revealed forSection:(id)section;
- (void)_updateIndexForReveal;
- (void)_updateVisibilityOfHistorySection;
- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion;
- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion;
- (void)didTapCountIndicator;
- (void)didUpdateToUserInterfaceSizeClass:(int64_t)class;
- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion;
- (void)layoutForRootListSizeChange;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationListBaseComponent:(id)component didSetGrouped:(BOOL)grouped;
- (void)notificationListBaseComponent:(id)component requestsScrollingToContentOffset:(double)offset withCompletion:(id)completion;
- (void)notificationListComponentChangedContent:(id)content;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListWillLayoutSubviews;
- (void)notificationStructuredSectionList:(id)list transitionedGroupedStateIsGrouped:(BOOL)grouped;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation;
- (void)reloadNotificationRequest:(id)request;
- (void)revealNotificationHistory:(BOOL)history animated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setDeviceAuthenticated:(BOOL)authenticated;
- (void)supplementaryViewSectionDidChangeContent:(id)content;
- (void)supplementaryViewSectionDidChangeHeight:(id)height;
- (void)toggleMissedSectionActive:(BOOL)active forDNDMode:(id)mode hideVisibleNotifications:(BOOL)notifications;
- (void)updateListViewVisibleRectForSize:(CGSize)size;
- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings;
@end

@implementation NCNotificationRootModernList

- (void)setDeviceAuthenticated:(BOOL)authenticated
{
  selfCopy = self;
  NCNotificationRootModernList.deviceAuthenticated.setter(authenticated);
}

- (BOOL)deviceAuthenticated
{
  v3.receiver = self;
  v3.super_class = NCNotificationRootModernList;
  return [(NCNotificationRootList *)&v3 deviceAuthenticated];
}

- (void)notificationListComponentChangedContent:(id)content
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.notificationListComponentChangedContent(_:)(content);
  swift_unknownObjectRelease();
}

- (int64_t)incomingCount
{
  selfCopy = self;
  NCNotificationRootModernList.incomingCount.getter();
  v4 = v3;

  return v4;
}

- (void)didUpdateToUserInterfaceSizeClass:(int64_t)class
{
  selfCopy = self;
  NCNotificationRootModernList.didUpdate(to:)(class);
}

- (double)scrollViewVisibleContentLayoutOffsetY
{
  result = *(&self->super._suggestionManager + OBJC_IVAR___NCNotificationRootModernList_layout);
  v3 = *(&self->super._supplementaryCache + OBJC_IVAR___NCNotificationRootModernList_layout);
  if ((*(&self->super._notificationListCache + OBJC_IVAR___NCNotificationRootModernList_layout) & 1) == 0)
  {
    v3 = v3 - *(&self->super._activeDNDModeConfiguration + OBJC_IVAR___NCNotificationRootModernList_layout);
  }

  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 >= result)
  {
    v3 = *(&self->super._suggestionManager + OBJC_IVAR___NCNotificationRootModernList_layout);
  }

  if (result >= v3)
  {
    return v3;
  }

  return result;
}

- (void)notificationListWillLayoutSubviews
{
  selfCopy = self;
  NCNotificationRootModernList.notificationListWillLayoutSubviews()();
}

- (id)notificationListView:(id)view topSpacingForItemAtIndex:(int64_t)index
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_21E78A8A0(index);
  swift_unknownObjectRelease();

  return v7;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(int64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.notificationListView(_:heightForItemAt:withWidth:inDisplayListAsStackMode:ignoreExpandedGroupStack:)(view, index, mode, stack, width);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

- (double)targetContentHeightForNotificationList:(id)list
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE19targetContentHeight015forNotificationD012CoreGraphics7CGFloatVSo0aD12ViewProtocol_p_tF_0();
  v6 = v5;
  swift_unknownObjectRelease();

  return v6;
}

- (void)notificationListDidLayoutSubviews
{
  selfCopy = self;
  NCNotificationRootModernList.notificationListDidLayoutSubviews()();
}

- (void)animateUsingSpringWithTension:(double)tension friction:(double)friction interactive:(BOOL)interactive type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v14 = _Block_copy(animations);
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  if (v15)
  {
    v17 = swift_allocObject();
    v17[2] = v15;
    v15 = sub_21E8D972C;
  }

  else
  {
    v17 = 0;
  }

  selfCopy = self;
  NCNotificationRootModernList.animateUsingSpring(withTension:friction:interactive:type:animations:completion:)(interactive, type, sub_21E792C6C, v16, v15, v17, tension, friction);
  sub_21E792694(v15);
}

- (void)updateListViewVisibleRectForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  NCNotificationRootModernList.updateListViewVisibleRect(for:)(__PAIR128__(*&height, *&width));
}

- (void)_setRevealed:(BOOL)revealed forSection:(id)section
{
  if (section)
  {
    listView = [swift_unknownObjectRetain() listView];
    [listView setRevealed_];

    listView2 = [section listView];
    [listView2 setRevealPercentage_];

    swift_unknownObjectRelease();
  }
}

- (void)_backlightChangedToBacklightLuminance:(int64_t)luminance
{
  selfCopy = self;
  NCNotificationRootModernList._backlightChanged(toBacklightLuminance:)(luminance);
}

- (BOOL)removeNotificationRequest:(id)request
{
  requestCopy = request;
  requestCopy2 = request;
  selfCopy = self;
  NCNotificationRootModernList.remove(_:)(requestCopy);
  LOBYTE(requestCopy) = v7;

  return requestCopy & 1;
}

- (void)performAnimationType:(unint64_t)type withoutAnimation:(id)animation
{
  v6 = _Block_copy(animation);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  NCNotificationRootModernList.perform(_:withoutAnimation:)(type, sub_21E8B242C, v7);
}

- (NCNotificationRootModernList)initWithListView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  swift_unknownObjectRetain();
  sub_21E8C21D8(viewCopy, delegate);
  return result;
}

- (id)initForTesting
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings
{
  settingsCopy = settings;
  systemSettingsCopy = systemSettings;
  selfCopy = self;
  NCNotificationRootModernList.update(_:previousSystemSettings:)(settingsCopy, systemSettings);
}

- (void)_updateIndexForReveal
{
  selfCopy = self;
  NCNotificationRootModernList._updateIndexForReveal()();
}

- (void)toggleMissedSectionActive:(BOOL)active forDNDMode:(id)mode hideVisibleNotifications:(BOOL)notifications
{
  modeCopy = mode;
  selfCopy = self;
  NCNotificationRootModernList.toggleMissedSectionActive(_:for:hideVisibleNotifications:)(active, mode, notifications);
}

- (void)layoutForRootListSizeChange
{
  selfCopy = self;
  NCNotificationRootModernList.layoutForRootListSizeChange()();
}

- (void)_didUpdateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings) = 0;
  v4 = OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange;
  if (*(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange) == 1)
  {
    selfCopy = self;
    sub_21E784AD0(0);
    *(&self->super.super.isa + v4) = 0;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  selfCopy = self;
  NCNotificationRootModernList.adjustForContentSizeCategoryChange()();

  return 1;
}

- (void)_scrollToSystemPreferredPageTypeIfPossible
{
  selfCopy = self;
  NCNotificationRootModernList._scrollToSystemPreferredPageTypeIfPossible()();
}

- (void)revealNotificationHistory:(BOOL)history animated:(BOOL)animated
{
  selfCopy = self;
  _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE25revealNotificationHistory_8animatedySb_SbtF_0(history);
}

- (void)_updateVisibilityOfHistorySection
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_layout);
  v3 = *(&self->super._currentListDisplayStyleSetting + OBJC_IVAR___NCNotificationRootModernList_layout);
  v4 = *(&self->super._deviceAuthenticated + OBJC_IVAR___NCNotificationRootModernList_layout);
  selfCopy = self;

  v5.n128_u64[0] = v4;
  sub_21E783428(v2, v7, v3, v5);

  sub_21E8C8A88(v7);
}

- (void)_notificationSectionsDidAdd:(id)add
{
  addCopy = add;
  selfCopy = self;
  NCNotificationRootModernList._notificationSectionsDidAdd(_:)(add);
}

- (int64_t)insertNotificationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  NCNotificationRootModernList.insert(_:)(requestCopy);
  v7 = v6;

  return v7;
}

- (void)modifyNotificationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  NCNotificationRootModernList.modifyNotificationRequest(_:)(request);
}

- (void)reloadNotificationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  NCNotificationRootModernList.reload(_:)(request);
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  v4 = sub_21E92A458();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NCNotificationRootModernList.notificationsLoaded(forSectionIdentifier:)(v8);
}

- (void)expandGroupForNotificationRequest:(id)request withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  NCNotificationRootModernList.expandGroup(for:withCompletion:)(requestCopy, sub_21E8B242C, v7);
}

- (void)didTapCountIndicator
{
  selfCopy = self;
  NCNotificationRootModernList.didTapCountIndicator()();
}

- (void)_displayStyleDidChangeForSleep
{
  selfCopy = self;
  NCNotificationRootModernList._displayStyleDidChangeForSleep()();
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  LOBYTE(self) = _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE27scrollViewShouldScrollToTopySbSo08UIScrollI0CF_0();

  return self & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewWillBeginDragging(_:)(draggingCopy);
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x, y);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewDidEndScrollingAnimation(_:)(animationCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewDidEndDecelerating(_:)(deceleratingCopy);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  NCNotificationRootModernList.scrollViewDidEndDragging(_:willDecelerate:)(draggingCopy, decelerate);
}

- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)component
{
  v19.receiver = self;
  v19.super_class = NCNotificationRootModernList;
  selfCopy = self;
  rootListView = [(NCNotificationRootList *)&v19 rootListView];
  [(NCNotificationListViewProtocol *)rootListView contentSize];
  v6 = v5;

  v18.receiver = selfCopy;
  v18.super_class = NCNotificationRootModernList;
  rootListView2 = [(NCNotificationRootList *)&v18 rootListView];
  [(NCNotificationListViewProtocol *)rootListView2 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  Height = CGRectGetHeight(v20);

  return v6 < Height;
}

- (void)notificationListBaseComponent:(id)component requestsScrollingToContentOffset:(double)offset withCompletion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.notificationListBaseComponent(_:requestsScrollingToContentOffset:withCompletion:)(component, sub_21E8B242C, v9, offset);
  swift_unknownObjectRelease();
}

- (void)supplementaryViewSectionDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  NCNotificationRootModernList.supplementaryViewSectionDidChangeContent(_:)(contentCopy);
}

- (void)supplementaryViewSectionDidChangeHeight:(id)height
{
  heightCopy = height;
  selfCopy = self;
  NCNotificationRootModernList.supplementaryViewSectionDidChangeHeight(_:)(heightCopy);
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)component toGrouped:(BOOL)grouped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = NCNotificationRootModernList.isEligibleToPerformGroupAnimation(for:toGrouped:)(component, grouped);
  swift_unknownObjectRelease();

  return v8 & 1;
}

- (void)notificationStructuredSectionList:(id)list transitionedGroupedStateIsGrouped:(BOOL)grouped
{
  listCopy = list;
  selfCopy = self;
  NCNotificationRootModernList.notificationStructuredSectionList(_:transitionedGroupedStateIsGrouped:)(listCopy, grouped);
}

- (void)notificationListBaseComponent:(id)component didSetGrouped:(BOOL)grouped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.notificationListBaseComponent(_:didSetGrouped:)(component, grouped);
  swift_unknownObjectRelease();
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)component
{
  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.handleTap(on:)(component);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (void)animateByRetargetingType:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v8 = _Block_copy(animations);
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  if (v9)
  {
    v11 = swift_allocObject();
    v11[2] = v9;
    v9 = sub_21E8D972C;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  NCNotificationRootModernList.animate(byRetargetingType:animations:completion:)(type, sub_21E8B242C, v10, v9, v11);
  sub_21E792694(v9);
}

- (void)animateUsingSpringBehavior:(id)behavior tracking:(BOOL)tracking type:(unint64_t)type animations:(id)animations completion:(id)completion
{
  v12 = _Block_copy(animations);
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  if (v13)
  {
    v15 = swift_allocObject();
    v15[2] = v13;
    v13 = sub_21E8D972C;
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  NCNotificationRootModernList.animate(usingSpringBehavior:tracking:type:animations:completion:)(behavior, tracking, type, sub_21E8B242C, v14, v13, v15);
  sub_21E792694(v13);
  swift_unknownObjectRelease();
}

- (void)animateWithDecomposedAnimations:(id)animations completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for NCDecomposedAnimation(0);
  v6 = sub_21E92A528();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_21E799848;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  NCNotificationRootModernList.animate(with:completion:)(v6, v5, v7);
  sub_21E792694(v5);
}

@end