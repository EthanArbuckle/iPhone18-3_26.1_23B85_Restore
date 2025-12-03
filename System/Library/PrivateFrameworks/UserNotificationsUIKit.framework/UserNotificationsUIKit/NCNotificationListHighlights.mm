@interface NCNotificationListHighlights
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)isExpanded;
- (BOOL)removeNotificationRequest:(id)request;
- (CGSize)contentSize;
- (NCNotificationListHighlights)initWithTitle:(id)title sectionType:(unint64_t)type;
- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration;
- (double)collapsedHeight;
- (double)expandedHeight;
- (double)expandedHeightIgnoringNotificationStacks;
- (double)expandedPercentage;
- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width;
- (double)notificationListView:(id)view heightForItemAtIndex:(int64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack;
- (id)notificationGroupList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look;
- (id)notificationListView:(id)view topSpacingForItemAtIndex:(int64_t)index;
- (id)notificationListView:(id)view viewForItemAtIndex:(int64_t)index;
- (id)overlayViewForNotificationList:(id)list;
- (int64_t)insertNotificationRequest:(id)request;
- (int64_t)notificationListViewNumberOfItems:(id)items;
- (unint64_t)_groupingSettingForSectionIdentifier:(id)identifier;
- (void)glassLuminanceChanged;
- (void)groupListDidLayout:(id)layout;
- (void)handleCoverSheetVisibilityChange:(BOOL)change;
- (void)handleWake:(BOOL)wake;
- (void)notificationListComponent:(id)component willRemoveNotificationRequest:(id)request;
- (void)notificationListDidLayoutSubviews;
- (void)notificationListPresentableGroup:(id)group didReceivedHorizontalTranslation:(double)translation forCell:(id)cell;
- (void)notificationListPresentableGroup:(id)group didSetGrouped:(BOOL)grouped;
- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion;
- (void)notificationListWillLayoutSubviews;
- (void)prepareForUIAppear;
- (void)setAvailableHeight:(double)height;
- (void)setBacklightState:(int64_t)state;
- (void)setContentSize:(CGSize)size;
- (void)setDragState:(id)state;
- (void)setExpandedPercentage:(double)percentage;
- (void)setGlassLuminanceValueTraitChangeRegistration:(id)registration;
- (void)setIsCollapsed:(BOOL)collapsed;
- (void)setIsOnScreen:(BOOL)screen;
@end

@implementation NCNotificationListHighlights

- (void)setAvailableHeight:(double)height
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_availableHeight);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_availableHeight) = height;
  if (v4 != height)
  {
    selfCopy = self;
    sub_21E8E9548();
  }
}

- (double)expandedPercentage
{
  selfCopy = self;
  v3 = 1.0;
  if (![(NCNotificationListHighlights *)selfCopy forceExpanded])
  {
    v3 = *(&selfCopy->super.super.isa + OBJC_IVAR___NCNotificationListHighlights__mappedExpandedPercentage);
  }

  return v3;
}

- (void)setExpandedPercentage:(double)percentage
{
  selfCopy = self;
  sub_21E8E99E4(percentage);
}

- (BOOL)isExpanded
{
  selfCopy = self;
  if ([(NCNotificationListHighlights *)selfCopy forceExpanded])
  {
    v3 = 1;
  }

  else
  {
    v3 = *(&selfCopy->super.super.isa + OBJC_IVAR___NCNotificationListHighlights__isExpanded);
  }

  return v3;
}

- (void)setDragState:(id)state
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_dragState);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_dragState) = state;
  stateCopy = state;
  selfCopy = self;

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

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_21E8E9DF8(width, height);
}

- (void)setIsCollapsed:(BOOL)collapsed
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isCollapsed);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isCollapsed) = collapsed;
  selfCopy = self;
  sub_21E8E9F48(v3);
}

- (void)setBacklightState:(int64_t)state
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_backlightState);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_backlightState) = state;
  if (v4 != state && state != 2 && v4 == 2)
  {
    selfCopy = self;
    sub_21E8F344C(0, 0, 0);
  }
}

- (UITraitChangeRegistration)glassLuminanceValueTraitChangeRegistration
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setGlassLuminanceValueTraitChangeRegistration:(id)registration
{
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_glassLuminanceValueTraitChangeRegistration) = registration;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)glassLuminanceChanged
{
  selfCopy = self;
  sub_21E8EA388();
}

- (void)setIsOnScreen:(BOOL)screen
{
  v3 = *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isOnScreen);
  *(&self->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_isOnScreen) = screen;
  if ((v3 & 1) == 0 && screen)
  {
    selfCopy = self;
    v4 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
    sub_21E8DDBD8();
  }
}

- (double)expandedHeightIgnoringNotificationStacks
{
  selfCopy = self;
  NCNotificationListHighlights.expandedHeightIgnoringNotificationStacks.getter();
  v4 = v3;

  return v4;
}

- (double)expandedHeight
{
  selfCopy = self;
  NCNotificationListHighlights.expandedHeight.getter();
  v4 = v3;

  return v4;
}

- (double)collapsedHeight
{
  selfCopy = self;
  NCNotificationListHighlights.collapsedHeight.getter();
  v4 = v3;

  return v4;
}

- (NCNotificationListHighlights)initWithTitle:(id)title sectionType:(unint64_t)type
{
  if (title)
  {
    v5 = sub_21E92A458();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_21E8EE7F8(v5, v6, type);
  return result;
}

- (unint64_t)_groupingSettingForSectionIdentifier:(id)identifier
{
  v5 = objc_opt_self();
  identifierCopy = identifier;
  selfCopy = self;
  standardDefaults = [v5 standardDefaults];
  LODWORD(v5) = [standardDefaults allowStackingInHighlights];

  if (v5)
  {
    v11.receiver = selfCopy;
    v11.super_class = NCNotificationListHighlights;
    v9 = [(NCNotificationStructuredSectionList *)&v11 _groupingSettingForSectionIdentifier:identifierCopy];

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
  selfCopy = self;
  [(NCNotificationStructuredSectionList *)&v4 adjustForContentSizeCategoryChange];
  [*(&selfCopy->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_headerLabel) adjustForContentSizeCategoryChange];
  [*(&selfCopy->super.super.isa + OBJC_IVAR___NCNotificationListHighlights_showMoreLabel) adjustForContentSizeCategoryChange];

  return 1;
}

- (int64_t)insertNotificationRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v7 = NCNotificationListHighlights.insert(_:)(request);

  return v7;
}

- (BOOL)removeNotificationRequest:(id)request
{
  selfCopy = self;
  v7.receiver = self;
  v7.super_class = NCNotificationListHighlights;
  requestCopy = request;
  v5 = selfCopy;
  LOBYTE(selfCopy) = [(NCNotificationStructuredSectionList *)&v7 removeNotificationRequest:requestCopy];
  sub_21E8E9548();
  sub_21E8EA388();

  return selfCopy;
}

- (void)notificationListComponent:(id)component willRemoveNotificationRequest:(id)request
{
  swift_unknownObjectRetain();
  requestCopy = request;
  selfCopy = self;
  NCNotificationListHighlights.notificationListComponent(_:willRemove:)(component, request);
  swift_unknownObjectRelease();
}

- (id)notificationListView:(id)view topSpacingForItemAtIndex:(int64_t)index
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21E8F98B0(index);
  v8 = v7;
  swift_unknownObjectRelease();

  return v8;
}

- (void)notificationListWillLayoutSubviews
{
  selfCopy = self;
  NCNotificationListHighlights.notificationListWillLayoutSubviews()();
}

- (double)footerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  selfCopy = self;
  v5 = sub_21E8AE0D8();

  return v5;
}

- (double)notificationListView:(id)view heightForItemAtIndex:(int64_t)index withWidth:(double)width inDisplayListAsStackMode:(BOOL)mode ignoreExpandedGroupStack:(BOOL)stack
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21E8F9AA4(index);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

- (id)notificationListView:(id)view viewForItemAtIndex:(int64_t)index
{
  v13.receiver = self;
  v13.super_class = NCNotificationListHighlights;
  selfCopy = self;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)&v13 allNotificationGroups];
  sub_21E796644(0, &qword_280D03DF0);
  v7 = sub_21E92A528();

  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223D64A50](index, v7);
    goto LABEL_5;
  }

  if (index < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = *(v7 + 8 * index + 32);
LABEL_5:
  v10 = v9;

  listView = [v10 listView];

  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();

  return v12;
}

- (double)headerViewHeightForNotificationList:(id)list withWidth:(double)width
{
  selfCopy = self;
  v5 = sub_21E8AE010();

  return v5;
}

- (int64_t)notificationListViewNumberOfItems:(id)items
{
  v8.receiver = self;
  v8.super_class = NCNotificationListHighlights;
  selfCopy = self;
  allNotificationGroups = [(NCNotificationStructuredSectionList *)&v8 allNotificationGroups];
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
  selfCopy = self;
  NCNotificationListHighlights.notificationListDidLayoutSubviews()();
}

- (void)handleWake:(BOOL)wake
{
  wakeCopy = wake;
  selfCopy = self;
  if ([(NCNotificationStructuredSectionList *)selfCopy count]< 1)
  {
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = NCNotificationListHighlights;
    [(NCNotificationStructuredSectionList *)&v5 handleWake:wakeCopy];
    sub_21E8F2B50(wakeCopy);
  }
}

- (void)handleCoverSheetVisibilityChange:(BOOL)change
{
  selfCopy = self;
  NCNotificationListHighlights.handleCoverSheetVisibilityChange(_:)(change);
}

- (id)overlayViewForNotificationList:(id)list
{
  selfCopy = self;
  v4 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();

  return v4;
}

- (void)prepareForUIAppear
{
  selfCopy = self;
  v2 = _sSo28NCNotificationListHighlightsC22UserNotificationsUIKitE11overlayView015forNotificationB0So6UIViewCSo0abH8Protocol_p_tF_0();
  sub_21E8DDBD8();
}

- (void)notificationListPresentableGroup:(id)group didReceivedHorizontalTranslation:(double)translation forCell:(id)cell
{
  groupCopy = group;
  cellCopy = cell;
  selfCopy = self;
  sub_21E8F9D6C(cellCopy, translation);
}

- (id)notificationGroupList:(id)list requestsAuxiliaryOptionsContentProviderForNotificationRequest:(id)request isLongLook:(BOOL)look
{
  lookCopy = look;
  listCopy = list;
  requestCopy = request;
  selfCopy = self;
  if (os_variant_has_internal_content() && [(NCNotificationStructuredSectionList *)selfCopy count]<= 1)
  {
    v13.receiver = selfCopy;
    v13.super_class = NCNotificationListHighlights;
    v11 = [(NCNotificationStructuredSectionList *)&v13 notificationGroupList:listCopy requestsAuxiliaryOptionsContentProviderForNotificationRequest:requestCopy isLongLook:lookCopy];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)groupListDidLayout:(id)layout
{
  selfCopy = self;
  listView = [(NCNotificationStructuredSectionList *)selfCopy listView];
  if (listView)
  {
    v4 = listView;
    [(NCNotificationListView *)listView setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

- (void)notificationListPresentableGroup:(id)group requestsScrollToTopOfCollectionWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  groupCopy = group;
  selfCopy = self;
  sub_21E8F9E38(groupCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)notificationListPresentableGroup:(id)group didSetGrouped:(BOOL)grouped
{
  groupCopy = group;
  selfCopy = self;
  sub_21E8FA0B8(grouped);
}

@end