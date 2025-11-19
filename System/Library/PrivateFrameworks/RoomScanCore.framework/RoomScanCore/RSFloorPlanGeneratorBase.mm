@interface RSFloorPlanGeneratorBase
- (RSFloorPlanGeneratorBase)init;
- (void)clear;
- (void)setChairBeautificationEnable:(BOOL)a3;
- (void)setObjectBeautificationEnable:(BOOL)a3;
- (void)setStandardizationEnable:(BOOL)a3;
- (void)setUniformHeightPolygonEnable:(BOOL)a3;
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

- (void)setUniformHeightPolygonEnable:(BOOL)a3
{
  render = self->_render;
  if (render)
  {
    render->_isUniformHeightPolygonEnabled = a3;
  }
}

- (void)setStandardizationEnable:(BOOL)a3
{
  render = self->_render;
  if (render)
  {
    render->_isStandardizationEnabled = a3;
  }
}

- (void)setChairBeautificationEnable:(BOOL)a3
{
  render = self->_render;
  if (render)
  {
    render->_isChairBeautificationEnabled = a3;
  }
}

- (void)setObjectBeautificationEnable:(BOOL)a3
{
  render = self->_render;
  if (render)
  {
    render->_isObjectBeautificationEnabled = a3;
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