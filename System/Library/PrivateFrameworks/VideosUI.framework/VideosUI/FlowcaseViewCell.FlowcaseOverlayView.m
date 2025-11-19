@interface FlowcaseViewCell.FlowcaseOverlayView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIEdgeInsets)marginsForRow:(int64_t)a3 atIndex:(int64_t)a4;
- (double)maximumWidthForScorecardView:(id)a3;
- (id)backgroundImageForScorecardViewMaterial:(id)a3;
- (id)scoreValue:(id)a3 inRow:(int64_t)a4 atIndex:(int64_t)a5;
- (int)backgroundBlendModeForScoreValueInRow:(int64_t)a3 atIndex:(int64_t)a4;
- (int64_t)numberOfRowsInScorecardView:(id)a3;
- (int64_t)numberOfScoreValuesForScorecardView:(id)a3 inRow:(int64_t)a4;
- (int64_t)styleForScorecardView:(id)a3;
- (void)sampleWithImage:(id)a3;
@end

@implementation FlowcaseViewCell.FlowcaseOverlayView

- (int64_t)styleForScorecardView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E388E340();

  return v6;
}

- (int64_t)numberOfRowsInScorecardView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E388E428();

  return v6;
}

- (int64_t)numberOfScoreValuesForScorecardView:(id)a3 inRow:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1E388E4E8(v7, a4);

  return v8;
}

- (id)scoreValue:(id)a3 inRow:(int64_t)a4 atIndex:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_1E388E5F4();

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
  v4 = sub_1E388E798(a3);
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
  v6 = sub_1E388E834();

  return v6;
}

- (int)backgroundBlendModeForScoreValueInRow:(int64_t)a3 atIndex:(int64_t)a4
{
  v4 = self;
  v5 = sub_1E388E8CC();

  return v5;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3A90664(v4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)sampleWithImage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3A96430();
}

@end