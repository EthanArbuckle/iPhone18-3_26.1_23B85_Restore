@interface FlowcaseViewCell.FlowcaseOverlayView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIEdgeInsets)marginsForRow:(int64_t)row atIndex:(int64_t)index;
- (double)maximumWidthForScorecardView:(id)view;
- (id)backgroundImageForScorecardViewMaterial:(id)material;
- (id)scoreValue:(id)value inRow:(int64_t)row atIndex:(int64_t)index;
- (int)backgroundBlendModeForScoreValueInRow:(int64_t)row atIndex:(int64_t)index;
- (int64_t)numberOfRowsInScorecardView:(id)view;
- (int64_t)numberOfScoreValuesForScorecardView:(id)view inRow:(int64_t)row;
- (int64_t)styleForScorecardView:(id)view;
- (void)sampleWithImage:(id)image;
@end

@implementation FlowcaseViewCell.FlowcaseOverlayView

- (int64_t)styleForScorecardView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E388E340();

  return v6;
}

- (int64_t)numberOfRowsInScorecardView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1E388E428();

  return v6;
}

- (int64_t)numberOfScoreValuesForScorecardView:(id)view inRow:(int64_t)row
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1E388E4E8(selfCopy, row);

  return v8;
}

- (id)scoreValue:(id)value inRow:(int64_t)row atIndex:(int64_t)index
{
  valueCopy = value;
  selfCopy = self;
  sub_1E388E5F4();

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
  v4 = sub_1E388E798(row);
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
  v6 = sub_1E388E834();

  return v6;
}

- (int)backgroundBlendModeForScoreValueInRow:(int64_t)row atIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_1E388E8CC();

  return v5;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3A90664(onlyCopy, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)sampleWithImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_1E3A96430();
}

@end