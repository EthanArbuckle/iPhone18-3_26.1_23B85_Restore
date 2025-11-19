@interface TabletWorkoutPlanBrickItemCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)prepareForReuse;
- (void)swapButtonTapped:(id)a3;
@end

@implementation TabletWorkoutPlanBrickItemCell

- (void)prepareForReuse
{
  v2 = self;
  sub_20B5F0830();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(TabletWorkoutPlanBrickItemCell *)v9 contentView];
  *&v11 = a4;
  *&v12 = a5;
  [v10 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)swapButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20B5F0C80(v4);
}

@end