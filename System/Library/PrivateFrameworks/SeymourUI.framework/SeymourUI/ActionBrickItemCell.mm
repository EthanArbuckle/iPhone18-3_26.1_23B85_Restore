@interface ActionBrickItemCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)downloadButtonTapped:(id)a3;
- (void)prepareForReuse;
@end

@implementation ActionBrickItemCell

- (void)prepareForReuse
{
  v2 = self;
  sub_20B60848C();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = [(ActionBrickItemCell *)v9 contentView];
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

- (void)downloadButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20B60AF2C();
}

@end