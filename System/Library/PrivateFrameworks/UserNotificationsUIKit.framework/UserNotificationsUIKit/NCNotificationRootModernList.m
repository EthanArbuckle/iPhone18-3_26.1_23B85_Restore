@interface NCNotificationRootModernList
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)deviceAuthenticated;
- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3;
- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4;
- (BOOL)removeNotificationRequest:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)a3;
- (NCNotificationRootModernList)initWithListView:(id)a3 delegate:(id)a4;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(int64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (double)scrollViewVisibleContentLayoutOffsetY;
- (double)targetContentHeightForNotificationList:(id)a3;
- (id)initForTesting;
- (id)notificationListView:(id)a3 topSpacingForItemAtIndex:(int64_t)a4;
- (int64_t)incomingCount;
- (int64_t)insertNotificationRequest:(id)a3;
- (void)_backlightChangedToBacklightLuminance:(int64_t)a3;
- (void)_didUpdateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)_displayStyleDidChangeForSleep;
- (void)_notificationSectionsDidAdd:(id)a3;
- (void)_scrollToSystemPreferredPageTypeIfPossible;
- (void)_setRevealed:(BOOL)a3 forSection:(id)a4;
- (void)_updateIndexForReveal;
- (void)_updateVisibilityOfHistorySection;
- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5;
- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7;
- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4;
- (void)didTapCountIndicator;
- (void)didUpdateToUserInterfaceSizeClass:(int64_t)a3;
- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4;
- (void)layoutForRootListSizeChange;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationListBaseComponent:(id)a3 didSetGrouped:(BOOL)a4;
- (void)notificationListBaseComponent:(id)a3 requestsScrollingToContentOffset:(double)a4 withCompletion:(id)a5;
- (void)notificationListComponentChangedContent:(id)a3;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListWillLayoutSubviews;
- (void)notificationStructuredSectionList:(id)a3 transitionedGroupedStateIsGrouped:(BOOL)a4;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4;
- (void)reloadNotificationRequest:(id)a3;
- (void)revealNotificationHistory:(BOOL)a3 animated:(BOOL)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setDeviceAuthenticated:(BOOL)a3;
- (void)supplementaryViewSectionDidChangeContent:(id)a3;
- (void)supplementaryViewSectionDidChangeHeight:(id)a3;
- (void)toggleMissedSectionActive:(BOOL)a3 forDNDMode:(id)a4 hideVisibleNotifications:(BOOL)a5;
- (void)updateListViewVisibleRectForSize:(CGSize)a3;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
@end

@implementation NCNotificationRootModernList

- (void)setDeviceAuthenticated:(BOOL)a3
{
  v4 = self;
  NCNotificationRootModernList.deviceAuthenticated.setter(a3);
}

- (BOOL)deviceAuthenticated
{
  v3.receiver = self;
  v3.super_class = NCNotificationRootModernList;
  return [(NCNotificationRootList *)&v3 deviceAuthenticated];
}

- (void)notificationListComponentChangedContent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  NCNotificationRootModernList.notificationListComponentChangedContent(_:)(a3);
  swift_unknownObjectRelease();
}

- (int64_t)incomingCount
{
  v2 = self;
  NCNotificationRootModernList.incomingCount.getter();
  v4 = v3;

  return v4;
}

- (void)didUpdateToUserInterfaceSizeClass:(int64_t)a3
{
  v4 = self;
  NCNotificationRootModernList.didUpdate(to:)(a3);
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
  v2 = self;
  NCNotificationRootModernList.notificationListWillLayoutSubviews()();
}

- (id)notificationListView:(id)a3 topSpacingForItemAtIndex:(int64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_21E78A8A0(a4);
  swift_unknownObjectRelease();

  return v7;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(int64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  swift_unknownObjectRetain();
  v13 = self;
  NCNotificationRootModernList.notificationListView(_:heightForItemAt:withWidth:inDisplayListAsStackMode:ignoreExpandedGroupStack:)(a3, a4, a6, a7, a5);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

- (double)targetContentHeightForNotificationList:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE19targetContentHeight015forNotificationD012CoreGraphics7CGFloatVSo0aD12ViewProtocol_p_tF_0();
  v6 = v5;
  swift_unknownObjectRelease();

  return v6;
}

- (void)notificationListDidLayoutSubviews
{
  v2 = self;
  NCNotificationRootModernList.notificationListDidLayoutSubviews()();
}

- (void)animateUsingSpringWithTension:(double)a3 friction:(double)a4 interactive:(BOOL)a5 type:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v14 = _Block_copy(a7);
  v15 = _Block_copy(a8);
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

  v18 = self;
  NCNotificationRootModernList.animateUsingSpring(withTension:friction:interactive:type:animations:completion:)(a5, a6, sub_21E792C6C, v16, v15, v17, a3, a4);
  sub_21E792694(v15);
}

- (void)updateListViewVisibleRectForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  NCNotificationRootModernList.updateListViewVisibleRect(for:)(__PAIR128__(*&height, *&width));
}

- (void)_setRevealed:(BOOL)a3 forSection:(id)a4
{
  if (a4)
  {
    v5 = [swift_unknownObjectRetain() listView];
    [v5 setRevealed_];

    v6 = [a4 listView];
    [v6 setRevealPercentage_];

    swift_unknownObjectRelease();
  }
}

- (void)_backlightChangedToBacklightLuminance:(int64_t)a3
{
  v4 = self;
  NCNotificationRootModernList._backlightChanged(toBacklightLuminance:)(a3);
}

- (BOOL)removeNotificationRequest:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  NCNotificationRootModernList.remove(_:)(v3);
  LOBYTE(v3) = v7;

  return v3 & 1;
}

- (void)performAnimationType:(unint64_t)a3 withoutAnimation:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  NCNotificationRootModernList.perform(_:withoutAnimation:)(a3, sub_21E8B242C, v7);
}

- (NCNotificationRootModernList)initWithListView:(id)a3 delegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  sub_21E8C21D8(v5, a4);
  return result;
}

- (id)initForTesting
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  NCNotificationRootModernList.update(_:previousSystemSettings:)(v6, a4);
}

- (void)_updateIndexForReveal
{
  v2 = self;
  NCNotificationRootModernList._updateIndexForReveal()();
}

- (void)toggleMissedSectionActive:(BOOL)a3 forDNDMode:(id)a4 hideVisibleNotifications:(BOOL)a5
{
  v9 = a4;
  v10 = self;
  NCNotificationRootModernList.toggleMissedSectionActive(_:for:hideVisibleNotifications:)(a3, a4, a5);
}

- (void)layoutForRootListSizeChange
{
  v2 = self;
  NCNotificationRootModernList.layoutForRootListSizeChange()();
}

- (void)_didUpdateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings) = 0;
  v4 = OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange;
  if (*(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange) == 1)
  {
    v6 = self;
    sub_21E784AD0(0);
    *(&self->super.super.isa + v4) = 0;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v2 = self;
  NCNotificationRootModernList.adjustForContentSizeCategoryChange()();

  return 1;
}

- (void)_scrollToSystemPreferredPageTypeIfPossible
{
  v2 = self;
  NCNotificationRootModernList._scrollToSystemPreferredPageTypeIfPossible()();
}

- (void)revealNotificationHistory:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE25revealNotificationHistory_8animatedySb_SbtF_0(a3);
}

- (void)_updateVisibilityOfHistorySection
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationRootModernList_layout);
  v3 = *(&self->super._currentListDisplayStyleSetting + OBJC_IVAR___NCNotificationRootModernList_layout);
  v4 = *(&self->super._deviceAuthenticated + OBJC_IVAR___NCNotificationRootModernList_layout);
  v6 = self;

  v5.n128_u64[0] = v4;
  sub_21E783428(v2, v7, v3, v5);

  sub_21E8C8A88(v7);
}

- (void)_notificationSectionsDidAdd:(id)a3
{
  v5 = a3;
  v6 = self;
  NCNotificationRootModernList._notificationSectionsDidAdd(_:)(a3);
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.insert(_:)(v4);
  v7 = v6;

  return v7;
}

- (void)modifyNotificationRequest:(id)a3
{
  v5 = a3;
  v6 = self;
  NCNotificationRootModernList.modifyNotificationRequest(_:)(a3);
}

- (void)reloadNotificationRequest:(id)a3
{
  v5 = a3;
  v6 = self;
  NCNotificationRootModernList.reload(_:)(a3);
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v4 = sub_21E92A458();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  NCNotificationRootModernList.notificationsLoaded(forSectionIdentifier:)(v8);
}

- (void)expandGroupForNotificationRequest:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  NCNotificationRootModernList.expandGroup(for:withCompletion:)(v8, sub_21E8B242C, v7);
}

- (void)didTapCountIndicator
{
  v2 = self;
  NCNotificationRootModernList.didTapCountIndicator()();
}

- (void)_displayStyleDidChangeForSleep
{
  v2 = self;
  NCNotificationRootModernList._displayStyleDidChangeForSleep()();
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE27scrollViewShouldScrollToTopySbSo08UIScrollI0CF_0();

  return self & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.scrollViewWillBeginDragging(_:)(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  NCNotificationRootModernList.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v9, a5, x, y);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.scrollViewDidEndScrollingAnimation(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.scrollViewDidEndDecelerating(_:)(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  NCNotificationRootModernList.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

- (BOOL)shouldScrollToTopForNotificationListBaseComponent:(id)a3
{
  v19.receiver = self;
  v19.super_class = NCNotificationRootModernList;
  v3 = self;
  v4 = [(NCNotificationRootList *)&v19 rootListView];
  [(NCNotificationListViewProtocol *)v4 contentSize];
  v6 = v5;

  v18.receiver = v3;
  v18.super_class = NCNotificationRootModernList;
  v7 = [(NCNotificationRootList *)&v18 rootListView];
  [(NCNotificationListViewProtocol *)v7 frame];
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

- (void)notificationListBaseComponent:(id)a3 requestsScrollingToContentOffset:(double)a4 withCompletion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = self;
  NCNotificationRootModernList.notificationListBaseComponent(_:requestsScrollingToContentOffset:withCompletion:)(a3, sub_21E8B242C, v9, a4);
  swift_unknownObjectRelease();
}

- (void)supplementaryViewSectionDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.supplementaryViewSectionDidChangeContent(_:)(v4);
}

- (void)supplementaryViewSectionDidChangeHeight:(id)a3
{
  v4 = a3;
  v5 = self;
  NCNotificationRootModernList.supplementaryViewSectionDidChangeHeight(_:)(v4);
}

- (BOOL)isEligibleToPerformGroupAnimationForNotificationListBaseComponent:(id)a3 toGrouped:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = NCNotificationRootModernList.isEligibleToPerformGroupAnimation(for:toGrouped:)(a3, a4);
  swift_unknownObjectRelease();

  return v8 & 1;
}

- (void)notificationStructuredSectionList:(id)a3 transitionedGroupedStateIsGrouped:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  NCNotificationRootModernList.notificationStructuredSectionList(_:transitionedGroupedStateIsGrouped:)(v6, a4);
}

- (void)notificationListBaseComponent:(id)a3 didSetGrouped:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  NCNotificationRootModernList.notificationListBaseComponent(_:didSetGrouped:)(a3, a4);
  swift_unknownObjectRelease();
}

- (BOOL)handleTapOnNotificationListBaseComponent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  NCNotificationRootModernList.handleTap(on:)(a3);
  v7 = v6;
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (void)animateByRetargetingType:(unint64_t)a3 animations:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
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

  v12 = self;
  NCNotificationRootModernList.animate(byRetargetingType:animations:completion:)(a3, sub_21E8B242C, v10, v9, v11);
  sub_21E792694(v9);
}

- (void)animateUsingSpringBehavior:(id)a3 tracking:(BOOL)a4 type:(unint64_t)a5 animations:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a6);
  v13 = _Block_copy(a7);
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
  v16 = self;
  NCNotificationRootModernList.animate(usingSpringBehavior:tracking:type:animations:completion:)(a3, a4, a5, sub_21E8B242C, v14, v13, v15);
  sub_21E792694(v13);
  swift_unknownObjectRelease();
}

- (void)animateWithDecomposedAnimations:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  NCNotificationRootModernList.animate(with:completion:)(v6, v5, v7);
  sub_21E792694(v5);
}

@end