@interface UnifiedOverlayView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIEdgeInsets)marginsForRow:(int64_t)a3 atIndex:(int64_t)a4;
- (UIView)accessibilityBadgeView;
- (VUIImageView)accessibilityAppImageView;
- (VUIImageView)accessibilityLogoImageView;
- (VUILabel)accessibilitySubtitleLabel;
- (VUILabel)accessibilityTextLabel;
- (VUILabel)textLabel;
- (VUITextBadgeView)accessibilityTextBadge;
- (_TtC8VideosUI21StyledProgressBarView)accessibilityProgressView;
- (double)maximumWidthForScorecardView:(id)a3;
- (id)backgroundImageForScorecardViewMaterial:(id)a3;
- (id)scoreValue:(id)a3 inRow:(int64_t)a4 atIndex:(int64_t)a5;
- (int)backgroundBlendModeForScoreValueInRow:(int64_t)a3 atIndex:(int64_t)a4;
- (int64_t)numberOfRowsInScorecardView:(id)a3;
- (int64_t)numberOfScoreValuesForScorecardView:(id)a3 inRow:(int64_t)a4;
- (int64_t)styleForScorecardView:(id)a3;
- (void)sampleWithImage:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)setTextLabel:(id)a3;
- (void)textBadgeViewContentsUpdated:(id)a3;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)vui_willMoveToWindow:(id)a3;
@end

@implementation UnifiedOverlayView

- (int64_t)styleForScorecardView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E3B79350();

  return v6;
}

- (int64_t)numberOfRowsInScorecardView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E3B79460();

  return v6;
}

- (int64_t)numberOfScoreValuesForScorecardView:(id)a3 inRow:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1E3B79520(v7, a4);

  return v8;
}

- (id)scoreValue:(id)a3 inRow:(int64_t)a4 atIndex:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_1E3B7962C();

  v8 = sub_1E4205ED4();

  return v8;
}

- (double)maximumWidthForScorecardView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E388E730();

  return v6;
}

- (UIEdgeInsets)marginsForRow:(int64_t)a3 atIndex:(int64_t)a4
{
  v4 = sub_1E3B79798(a3);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)backgroundImageForScorecardViewMaterial:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E3B79834();

  return v6;
}

- (int)backgroundBlendModeForScoreValueInRow:(int64_t)a3 atIndex:(int64_t)a4
{
  v4 = self;
  v5 = sub_1E3B798CC();

  return v5;
}

- (VUILabel)textLabel
{
  v2 = sub_1E3EB2FF0();

  return v2;
}

- (void)setTextLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3EB307C();
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v6 = OUTLINED_FUNCTION_57_32(self, a2, a3, a4, a5);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_41_59();
  sub_1E3EB5574(v8, v9, v10);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v6 = OUTLINED_FUNCTION_57_32(self, a2, a3, a4, a5);
  v7 = v5;
  v8 = OUTLINED_FUNCTION_41_59();
  sub_1E3EB5630(v8, v9, v10);
}

- (void)vui_willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3EB56F4(v6);
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  OUTLINED_FUNCTION_6_12();
  sub_1E3EB59F0(a4);
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
  v2 = self;
  v3 = sub_1E3EB700C();

  return v3;
}

- (VUIImageView)accessibilityAppImageView
{
  v2 = self;
  v3 = sub_1E3EB708C();

  return v3;
}

- (VUIImageView)accessibilityLogoImageView
{
  v2 = self;
  v3 = sub_1E3EB710C();

  return v3;
}

- (VUILabel)accessibilityTextLabel
{
  v2 = self;
  v3 = sub_1E3EB718C();

  return v3;
}

- (VUILabel)accessibilitySubtitleLabel
{
  v2 = self;
  v3 = sub_1E3EB720C();

  return v3;
}

- (UIView)accessibilityBadgeView
{
  v2 = self;
  v3 = sub_1E3EB728C();

  return v3;
}

- (VUITextBadgeView)accessibilityTextBadge
{
  v2 = self;
  v3 = sub_1E3EB730C();

  return v3;
}

- (void)textBadgeViewContentsUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3D18390();
}

- (void)sampleWithImage:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3EB7E9C(v6);
}

@end