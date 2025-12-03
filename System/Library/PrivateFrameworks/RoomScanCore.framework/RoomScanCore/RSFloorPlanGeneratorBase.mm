@interface RSFloorPlanGeneratorBase
- (RSFloorPlanGeneratorBase)init;
- (void)clear;
- (void)setChairBeautificationEnable:(BOOL)enable;
- (void)setObjectBeautificationEnable:(BOOL)enable;
- (void)setStandardizationEnable:(BOOL)enable;
- (void)setUniformHeightPolygonEnable:(BOOL)enable;
@end

@implementation RSFloorPlanGeneratorBase

- (void)clear
{
  render = self->_render;
  if (render)
  {
    v3 = objc_alloc_init(RSFloorPlan);
    floorPlan = render->_floorPlan;
    render->_floorPlan = v3;
  }
}

- (void)setUniformHeightPolygonEnable:(BOOL)enable
{
  render = self->_render;
  if (render)
  {
    render->_isUniformHeightPolygonEnabled = enable;
  }
}

- (void)setStandardizationEnable:(BOOL)enable
{
  render = self->_render;
  if (render)
  {
    render->_isStandardizationEnabled = enable;
  }
}

- (void)setChairBeautificationEnable:(BOOL)enable
{
  render = self->_render;
  if (render)
  {
    render->_isChairBeautificationEnabled = enable;
  }
}

- (void)setObjectBeautificationEnable:(BOOL)enable
{
  render = self->_render;
  if (render)
  {
    render->_isObjectBeautificationEnabled = enable;
  }
}

- (RSFloorPlanGeneratorBase)init
{
  v7.receiver = self;
  v7.super_class = RSFloorPlanGeneratorBase;
  v2 = [(RSFloorPlanGeneratorBase *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_inputSemanticsVersion = 6;
    v4 = objc_alloc_init(RSFloorPlanRender);
    render = v3->_render;
    v3->_render = v4;

    v3->_isDoorWindowEnabled = 0;
  }

  return v3;
}

@end