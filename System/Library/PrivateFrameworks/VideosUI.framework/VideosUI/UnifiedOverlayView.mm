@interface UnifiedOverlayView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)marginsForRow:(int64_t)row atIndex:(int64_t)index;
- (UIView)accessibilityBadgeView;
- (VUIImageView)accessibilityAppImageView;
- (VUIImageView)accessibilityLogoImageView;
- (VUILabel)accessibilitySubtitleLabel;
- (VUILabel)accessibilityTextLabel;
- (VUILabel)textLabel;
- (VUITextBadgeView)accessibilityTextBadge;
- (_TtC8VideosUI21StyledProgressBarView)accessibilityProgressView;
- (double)maximumWidthForScorecardView:(id)view;
- (id)backgroundImageForScorecardViewMaterial:(id)material;
- (id)scoreValue:(id)value inRow:(int64_t)row atIndex:(int64_t)index;
- (int)backgroundBlendModeForScoreValueInRow:(int64_t)row atIndex:(int64_t)index;
- (int64_t)numberOfRowsInScorecardView:(id)view;
- (int64_t)numberOfScoreValuesForScorecardView:(id)view inRow:(int64_t)row;
- (int64_t)styleForScorecardView:(id)view;
- (void)sampleWithImage:(id)image;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)setTextLabel:(id)label;
- (void)textBadgeViewContentsUpdated:(id)updated;
- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)vui_willMoveToWindow:(id)window;
@end

@implementation UnifiedOverlayView

- (int64_t)styleForScorecardView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E3B79350();

  return v6;
}

- (int64_t)numberOfRowsInScorecardView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E3B79460();

  return v6;
}

- (int64_t)numberOfScoreValuesForScorecardView:(id)view inRow:(int64_t)row
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1E3B79520(selfCopy, row);

  return v8;
}

- (id)scoreValue:(id)value inRow:(int64_t)row atIndex:(int64_t)index
{
  valueCopy = value;
  selfCopy = self;
  sub_1E3B7962C();

  v8 = sub_1E4205ED4();

  return v8;
}

- (double)maximumWidthForScorecardView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E388E730();

  return v6;
}

- (UIEdgeInsets)marginsForRow:(int64_t)row atIndex:(int64_t)index
{
  v4 = sub_1E3B79798(row);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)backgroundImageForScorecardViewMaterial:(id)material
{
  materialCopy = material;
  selfCopy = self;
  v6 = sub_1E3B79834();

  return v6;
}

- (int)backgroundBlendModeForScoreValueInRow:(int64_t)row atIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1E3B798CC();

  return v5;
}

- (VUILabel)textLabel
{
  v2 = sub_1E3EB2FF0();

  return v2;
}

- (void)setTextLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3EB307C();
}

- (void)vui_setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  v6 = OUTLINED_FUNCTION_57_32(self, a2, selected, animated, coordinator);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_41_59();
  sub_1E3EB5574(v8, v9, v10);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  v6 = OUTLINED_FUNCTION_57_32(self, a2, selected, animated, coordinator);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_41_59();
  sub_1E3EB5630(v8, v9, v10);
}

- (void)vui_willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3EB56F4(v6);
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  OUTLINED_FUNCTION_6_12();
  sub_1E3EB59F0(only);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (_TtC8VideosUI21StyledProgressBarView)accessibilityProgressView
{
  selfCopy = self;
  v3 = sub_1E3EB700C();

  return v3;
}

- (VUIImageView)accessibilityAppImageView
{
  selfCopy = self;
  v3 = sub_1E3EB708C();

  return v3;
}

- (VUIImageView)accessibilityLogoImageView
{
  selfCopy = self;
  v3 = sub_1E3EB710C();

  return v3;
}

- (VUILabel)accessibilityTextLabel
{
  selfCopy = self;
  v3 = sub_1E3EB718C();

  return v3;
}

- (VUILabel)accessibilitySubtitleLabel
{
  selfCopy = self;
  v3 = sub_1E3EB720C();

  return v3;
}

- (UIView)accessibilityBadgeView
{
  selfCopy = self;
  v3 = sub_1E3EB728C();

  return v3;
}

- (VUITextBadgeView)accessibilityTextBadge
{
  selfCopy = self;
  v3 = sub_1E3EB730C();

  return v3;
}

- (void)textBadgeViewContentsUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_1E3D18390();
}

- (void)sampleWithImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3EB7E9C(v6);
}

@end