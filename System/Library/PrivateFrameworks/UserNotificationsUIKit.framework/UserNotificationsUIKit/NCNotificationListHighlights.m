@interface NCNotificationListHighlights
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isExpanded;
- (BOOL)removeNotificationRequest:(id)a3;
- (CGSize)contentSize;
- (NCNotificationListHighlights)initWithTitle:(id)a3 sectionType:(unint64_t)a4;
- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)expandedPercentage;
- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4;
- (double)notificationListView:(id)a3 heightForItemAtIndex:(int64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7;
- (id)notificationGroupList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5;
- (id)notificationListView:(id)a3 topSpacingForItemAtIndex:(int64_t)a4;
- (id)notificationListView:(id)a3 viewForItemAtIndex:(int64_t)a4;
- (id)overlayViewForNotificationList:(id)a3;
- (int64_t)insertNotificationRequest:(id)a3;
- (int64_t)notificationListViewNumberOfItems:(id)a3;
- (unint64_t)_groupingSettingForSectionIdentifier:(id)a3;
- (void)glassLuminanceChanged;
- (void)groupListDidLayout:(id)a3;
- (void)handleCoverSheetVisibilityChange:(BOOL)a3;
- (void)handleWake:(BOOL)a3;
- (void)notificationListComponent:(id)a3 willRemoveNotificationRequest:(id)a4;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListPresentableGroup:(id)a3 didReceivedHorizontalTranslation:(double)a4 forCell:(id)a5;
- (void)notificationListPresentableGroup:(id)a3 didSetGrouped:(BOOL)a4;
- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4;
- (void)notificationListWillLayoutSubviews;
- (void)prepareForUIAppear;
- (void)setAvailableHeight:(double)a3;
- (void)setBacklightState:(int64_t)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setDragState:(id)a3;
- (void)setExpandedPercentage:(double)a3;
- (void)setGlassLuminanceValueTraitChangeRegistration:(id)a3;
- (void)setIsCollapsed:(BOOL)a3;
- (void)setIsOnScreen:(BOOL)a3;
@end

@implementation NCNotificationListHighlights

- (void)setAvailableHeight:(double)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_availableHeight);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_availableHeight) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_21E8E9548();
  }
}

- (double)expandedPercentage
{
  v2 = self;
  v3 = 1.0;
  if (![(NCNotificationListHighlights *)v2 forceExpanded])
  {
    v3 = *(&v2->super.super.isa + OBJC_IVAR___NCNotificationListHighlights__mappedExpandedPercentage);
  }

  return v3;
}

- (void)setExpandedPercentage:(double)a3
{
  v4 = self;
  sub_21E8E99E4(a3);
}

- (BOOL)isExpanded
{
  v2 = self;
  if ([(NCNotificationListHighlights *)v2 forceExpanded])
  {
    v3 = 1;
  }

  else
  {
    v3 = *(&v2->super.super.isa + OBJC_IVAR___NCNotificationListHighlights__isExpanded);
  }

  return v3;
}

- (void)setDragState:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_dragState);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_dragState) = a3;
  v5 = a3;
  v6 = self;

  sub_21E8E9CF8();
}

- (CGSize)contentSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_contentSize);
  v3 = *(&self->super._deviceAuthenticated + OBJC_IVAR___NCNotificationListHighlights_contentSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_21E8E9DF8(width, height);
}

- (void)setIsCollapsed:(BOOL)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isCollapsed);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isCollapsed) = a3;
  v4 = self;
  sub_21E8E9F48(v3);
}

- (void)setBacklightState:(int64_t)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_backlightState);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_backlightState) = a3;
  if (v4 != a3 && a3 != 2 && v4 == 2)
  {
    v7 = self;
    sub_21E8F344C(0, 0, 0);
  }
}

- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGlassLuminanceValueTraitChangeRegistration:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_glassLuminanceValueTraitChangeRegistration) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)glassLuminanceChanged
{
  v2 = self;
  sub_21E8EA388();
}

- (void)setIsOnScreen:(BOOL)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isOnScreen);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isOnScreen) = a3;
  if ((v3 & 1) == 0 && a3)
  {
    v5 = self;
    v4 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    sub_21E8DDBD8();
  }
}

- (double)expandedHeightIgnoringNotificationStacks
{
  v2 = self;
  NCNotificationListHighlights.expandedHeightIgnoringNotificationStacks.getter();
  v4 = v3;

  return v4;
}

- (double)expandedHeight
{
  v2 = self;
  NCNotificationListHighlights.expandedHeight.getter();
  v4 = v3;

  return v4;
}

- (double)collapsedHeight
{
  v2 = self;
  NCNotificationListHighlights.collapsedHeight.getter();
  v4 = v3;

  return v4;
}

- (NCNotificationListHighlights)initWithTitle:(id)a3 sectionType:(unint64_t)a4
{
  if (a3)
  {
    v5 = sub_21E92A458();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_21E8EE7F8(v5, v6, a4);
  return result;
}

- (unint64_t)_groupingSettingForSectionIdentifier:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  v8 = [v5 standardDefaults];
  LODWORD(v5) = [v8 allowStackingInHighlights];

  if (v5)
  {
    v11.receiver = v7;
    v11.super_class = NCNotificationListHighlights;
    v9 = [(NCNotificationStructuredSectionList *)&v11 _groupingSettingForSectionIdentifier:v6];

    return v9;
  }

  else
  {

    return 2;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v4.receiver = self;
  v4.super_class = NCNotificationListHighlights;
  v2 = self;
  [(NCNotificationStructuredSectionList *)&v4 adjustForContentSizeCategoryChange];
  [*(&v2->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_headerLabel) adjustForContentSizeCategoryChange];
  [*(&v2->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_showMoreLabel) adjustForContentSizeCategoryChange];

  return 1;
}

- (int64_t)insertNotificationRequest:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = NCNotificationListHighlights.insert(_:)(a3);

  return v7;
}

- (BOOL)removeNotificationRequest:(id)a3
{
  v3 = self;
  v7.receiver = self;
  v7.super_class = NCNotificationListHighlights;
  v4 = a3;
  v5 = v3;
  LOBYTE(v3) = [(NCNotificationStructuredSectionList *)&v7 removeNotificationRequest:v4];
  sub_21E8E9548();
  sub_21E8EA388();

  return v3;
}

- (void)notificationListComponent:(id)a3 willRemoveNotificationRequest:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  NCNotificationListHighlights.notificationListComponent(_:willRemove:)(a3, a4);
  swift_unknownObjectRelease();
}

- (id)notificationListView:(id)a3 topSpacingForItemAtIndex:(int64_t)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_21E8F98B0(a4);
  v8 = v7;
  swift_unknownObjectRelease();

  return v8;
}

- (void)notificationListWillLayoutSubviews
{
  v2 = self;
  NCNotificationListHighlights.notificationListWillLayoutSubviews()();
}

- (double)footerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  v4 = self;
  v5 = sub_21E8AE0D8();

  return v5;
}

- (double)notificationListView:(id)a3 heightForItemAtIndex:(int64_t)a4 withWidth:(double)a5 inDisplayListAsStackMode:(BOOL)a6 ignoreExpandedGroupStack:(BOOL)a7
{
  swift_unknownObjectRetain();
  v9 = self;
  sub_21E8F9AA4(a4);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

- (id)notificationListView:(id)a3 viewForItemAtIndex:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = NCNotificationListHighlights;
  v5 = self;
  v6 = [(NCNotificationStructuredSectionList *)&v13 allNotificationGroups];
  sub_21E796644(0, &qword_280D03DF0);
  v7 = sub_21E92A528();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223D64A50](a4, v7);
    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *(v7 + 8 * a4 + 32);
LABEL_5:
  v10 = v9;

  v11 = [v10 listView];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();

  return v12;
}

- (double)headerViewHeightForNotificationList:(id)a3 withWidth:(double)a4
{
  v4 = self;
  v5 = sub_21E8AE010();

  return v5;
}

- (int64_t)notificationListViewNumberOfItems:(id)a3
{
  v8.receiver = self;
  v8.super_class = NCNotificationListHighlights;
  v3 = self;
  v4 = [(NCNotificationStructuredSectionList *)&v8 allNotificationGroups];
  sub_21E796644(0, &qword_280D03DF0);
  v5 = sub_21E92A528();

  if (v5 >> 62)
  {
    v6 = sub_21E92A828();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (void)notificationListDidLayoutSubviews
{
  v2 = self;
  NCNotificationListHighlights.notificationListDidLayoutSubviews()();
}

- (void)handleWake:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if ([(NCNotificationStructuredSectionList *)v4 count]< 1)
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = NCNotificationListHighlights;
    [(NCNotificationStructuredSectionList *)&v5 handleWake:v3];
    sub_21E8F2B50(v3);
  }
}

- (void)handleCoverSheetVisibilityChange:(BOOL)a3
{
  v4 = self;
  NCNotificationListHighlights.handleCoverSheetVisibilityChange(_:)(a3);
}

- (id)overlayViewForNotificationList:(id)a3
{
  v3 = self;
  v4 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();

  return v4;
}

- (void)prepareForUIAppear
{
  v3 = self;
  v2 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  sub_21E8DDBD8();
}

- (void)notificationListPresentableGroup:(id)a3 didReceivedHorizontalTranslation:(double)a4 forCell:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_21E8F9D6C(v9, a4);
}

- (id)notificationGroupList:(id)a3 requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)a4 isLongLook:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  if (os_variant_has_internal_content() && [(NCNotificationStructuredSectionList *)v10 count]<= 1)
  {
    v13.receiver = v10;
    v13.super_class = NCNotificationListHighlights;
    v11 = [(NCNotificationStructuredSectionList *)&v13 notificationGroupList:v8 requestsAuxiliaryOptionsContentProviderForNotificationRequest:v9 isLongLook:v5];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)groupListDidLayout:(id)a3
{
  v5 = self;
  v3 = [(NCNotificationStructuredSectionList *)v5 listView];
  if (v3)
  {
    v4 = v3;
    [(NCNotificationListView *)v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)notificationListPresentableGroup:(id)a3 requestsScrollToTopOfCollectionWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_21E8F9E38(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)notificationListPresentableGroup:(id)a3 didSetGrouped:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_21E8FA0B8(a4);
}

@end