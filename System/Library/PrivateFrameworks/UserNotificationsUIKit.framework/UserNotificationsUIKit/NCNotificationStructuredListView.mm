@interface NCNotificationStructuredListView
- (NCNotificationListSectionRevealHintView)revealHintView;
- (NCNotificationStructuredListViewDelegate)delegate;
- (UIEdgeInsets)footerInsets;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)didExitAlwaysOn;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setDistanceScrolledBeyondBottomOfContent:(id)content;
- (void)setFooterView:(id)view;
- (void)setListView:(id)view;
- (void)setRevealHintView:(id)view;
- (void)setUserInterfaceSizeClass:(int64_t)class;
@end

@implementation NCNotificationStructuredListView

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  revealHintView = [(NCNotificationStructuredListView *)selfCopy revealHintView];
  [(NCNotificationListSectionRevealHintView *)revealHintView adjustForLegibilitySettingsChange:changeCopy];
}

- (NCNotificationListSectionRevealHintView)revealHintView
{
  selfCopy = self;
  v3 = sub_21E788DE4();

  return v3;
}

- (void)layoutSubviews
{
  selfCopy = self;
  NCNotificationStructuredListView.layoutSubviews()();
}

- (UIEdgeInsets)footerInsets
{
  v2 = *(self + OBJC_IVAR___NCNotificationStructuredListView_footerInsets);
  v3 = *(self + OBJC_IVAR___NCNotificationStructuredListView_footerInsets + 8);
  v4 = *(self + OBJC_IVAR___NCNotificationStructuredListView_footerInsets + 16);
  v5 = *(self + OBJC_IVAR___NCNotificationStructuredListView_footerInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (NCNotificationStructuredListViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didExitAlwaysOn
{
  selfCopy = self;
  sub_21E799BCC();
}

- (void)setListView:(id)view
{
  v6 = *(self + OBJC_IVAR___NCNotificationStructuredListView_listView);
  *(self + OBJC_IVAR___NCNotificationStructuredListView_listView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_21E92341C(v6);
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_21E92366C(view);
}

- (void)setUserInterfaceSizeClass:(int64_t)class
{
  *(self + OBJC_IVAR___NCNotificationStructuredListView_userInterfaceSizeClass) = class;
  selfCopy = self;
  sub_21E923808();
}

- (void)setDistanceScrolledBeyondBottomOfContent:(id)content
{
  v4 = *(self + OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent);
  *(self + OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent) = content;
  contentCopy = content;
  selfCopy = self;

  sub_21E923A78();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  NCNotificationStructuredListView.didMoveToWindow()();
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  selfCopy = self;
  revealHintView = [(NCNotificationStructuredListView *)selfCopy revealHintView];
  [(NCNotificationListSectionRevealHintView *)revealHintView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (void)setRevealHintView:(id)view
{
  v4 = *(self + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  *(self + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView) = view;
  viewCopy = view;
}

@end