@interface NCNotificationStructuredListView
- (NCNotificationListSectionRevealHintView)revealHintView;
- (NCNotificationStructuredListViewDelegate)delegate;
- (UIEdgeInsets)footerInsets;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)didExitAlwaysOn;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setDistanceScrolledBeyondBottomOfContent:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setListView:(id)a3;
- (void)setRevealHintView:(id)a3;
- (void)setUserInterfaceSizeClass:(int64_t)a3;
@end

@implementation NCNotificationStructuredListView

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(NCNotificationStructuredListView *)v6 revealHintView];
  [(NCNotificationListSectionRevealHintView *)v5 adjustForLegibilitySettingsChange:v4];
}

- (NCNotificationListSectionRevealHintView)revealHintView
{
  v2 = self;
  v3 = sub_21E788DE4();

  return v3;
}

- (void)layoutSubviews
{
  v2 = self;
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
  v2 = self;
  sub_21E799BCC();
}

- (void)setListView:(id)a3
{
  v6 = *(self + OBJC_IVAR___NCNotificationStructuredListView_listView);
  *(self + OBJC_IVAR___NCNotificationStructuredListView_listView) = a3;
  v4 = a3;
  v5 = self;
  sub_21E92341C(v6);
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21E92366C(a3);
}

- (void)setUserInterfaceSizeClass:(int64_t)a3
{
  *(self + OBJC_IVAR___NCNotificationStructuredListView_userInterfaceSizeClass) = a3;
  v3 = self;
  sub_21E923808();
}

- (void)setDistanceScrolledBeyondBottomOfContent:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent);
  *(self + OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent) = a3;
  v5 = a3;
  v6 = self;

  sub_21E923A78();
}

- (void)didMoveToWindow
{
  v2 = self;
  NCNotificationStructuredListView.didMoveToWindow()();
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = [(NCNotificationStructuredListView *)v5 revealHintView];
  [(NCNotificationListSectionRevealHintView *)v4 setAdjustsFontForContentSizeCategory:v3];
}

- (void)setRevealHintView:(id)a3
{
  v4 = *(self + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  *(self + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView) = a3;
  v3 = a3;
}

@end