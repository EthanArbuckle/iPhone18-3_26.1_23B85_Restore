@interface PosterDimmingLayerManager
- (void)addDimmingLayerTo:(id)a3;
- (void)setView:(id)a3;
- (void)updateDimmingAreaWithOccludingRect:(CGRect)a3 parentViewBound:(CGRect)a4;
@end

@implementation PosterDimmingLayerManager

- (void)setView:(id)a3
{
  view = self->view;
  self->view = a3;
  v3 = a3;
}

- (void)addDimmingLayerTo:(id)a3
{
  v3 = a3;

  sub_27525E8D8(v3);
}

- (void)updateDimmingAreaWithOccludingRect:(CGRect)a3 parentViewBound:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;

  sub_27525EB8C(v11, v10, v9, v8, x, y, width, height);
}

@end