@interface PosterDimmingLayerManager
- (void)addDimmingLayerTo:(id)to;
- (void)setView:(id)view;
- (void)updateDimmingAreaWithOccludingRect:(CGRect)rect parentViewBound:(CGRect)bound;
@end

@implementation PosterDimmingLayerManager

- (void)setView:(id)view
{
  view = self->view;
  self->view = view;
  viewCopy = view;
}

- (void)addDimmingLayerTo:(id)to
{
  toCopy = to;

  sub_27525E8D8(toCopy);
}

- (void)updateDimmingAreaWithOccludingRect:(CGRect)rect parentViewBound:(CGRect)bound
{
  height = bound.size.height;
  width = bound.size.width;
  y = bound.origin.y;
  x = bound.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;

  sub_27525EB8C(v11, v10, v9, v8, x, y, width, height);
}

@end