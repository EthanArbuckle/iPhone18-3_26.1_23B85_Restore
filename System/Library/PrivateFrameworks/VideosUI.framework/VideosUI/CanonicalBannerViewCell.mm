@interface CanonicalBannerViewCell
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (NSArray)accessibilityButtonViews;
- (UIView)accessibilityContentSubtitleView;
- (UIView)accessibilityDescriptionTextView;
- (VUIImageView)accessibilityAvailabilityImageView;
- (VUIImageView)accessibilityTitleImageView;
- (VUILabel)accessibilityAskToBuyPromptView;
- (VUILabel)accessibilityAvailabilityTextView;
- (VUILabel)accessibilityContentTitleView;
- (VUILabel)accessibilityDisclaimerTextView;
- (VUILabel)accessibilityEpisodeInfoTextView;
- (VUILabel)accessibilityPromoTextView;
- (VUIMediaTagsView)accessibilityTagsView;
- (_TtC8VideosUI16RolesSummaryView)accessibilityRolesSummaryView;
- (void)handleSyndicationInfoUpdatedNotification:(id)notification;
- (void)rentalExpirationLabelNeedsRelayout:(id)relayout;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation CanonicalBannerViewCell

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E3D12478();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1E3D12604();
  OUTLINED_FUNCTION_18_3();

  v3 = OUTLINED_FUNCTION_17_4();
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  OUTLINED_FUNCTION_6_12();
  sub_1E3D12650(only);
  OUTLINED_FUNCTION_18_3();

  v7 = OUTLINED_FUNCTION_17_4();
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)vui_cellWillBeDisplayed
{
  selfCopy = self;
  sub_1E3D17AF4();
}

- (VUIImageView)accessibilityTitleImageView
{
  selfCopy = self;
  v3 = sub_1E3D17D18();

  return v3;
}

- (VUILabel)accessibilityContentTitleView
{
  selfCopy = self;
  v3 = sub_1E3D17D98();

  return v3;
}

- (UIView)accessibilityContentSubtitleView
{
  selfCopy = self;
  v3 = sub_1E3D17E18();

  return v3;
}

- (VUILabel)accessibilityEpisodeInfoTextView
{
  selfCopy = self;
  v3 = sub_1E3D17E98();

  return v3;
}

- (VUILabel)accessibilityPromoTextView
{
  selfCopy = self;
  v3 = sub_1E3D17F18();

  return v3;
}

- (VUILabel)accessibilityAskToBuyPromptView
{
  selfCopy = self;
  v3 = sub_1E3D17F98();

  return v3;
}

- (NSArray)accessibilityButtonViews
{
  selfCopy = self;
  v3 = sub_1E3D18054();

  if (v3)
  {
    sub_1E3280A90(0, &qword_1EE23AE80);
    v4 = sub_1E42062A4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VUILabel)accessibilityAvailabilityTextView
{
  selfCopy = self;
  v3 = sub_1E3D180D4();

  return v3;
}

- (VUIImageView)accessibilityAvailabilityImageView
{
  selfCopy = self;
  v3 = sub_1E3D18154();

  return v3;
}

- (VUILabel)accessibilityDisclaimerTextView
{
  selfCopy = self;
  v3 = sub_1E3D181D4();

  return v3;
}

- (UIView)accessibilityDescriptionTextView
{
  selfCopy = self;
  v3 = sub_1E3D18254();

  return v3;
}

- (_TtC8VideosUI16RolesSummaryView)accessibilityRolesSummaryView
{
  selfCopy = self;
  v3 = sub_1E3D182D4();

  return v3;
}

- (VUIMediaTagsView)accessibilityTagsView
{
  selfCopy = self;
  v3 = sub_1E3D18354();

  return v3;
}

- (void)rentalExpirationLabelNeedsRelayout:(id)relayout
{
  relayoutCopy = relayout;
  selfCopy = self;
  sub_1E3D18390();
}

- (void)handleSyndicationInfoUpdatedNotification:(id)notification
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E3D1AE5C();

  (*(v6 + 8))(v10, v4);
}

@end