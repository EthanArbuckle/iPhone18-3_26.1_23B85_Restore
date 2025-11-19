@interface RSFloorPlanRender
- (RSFloorPlanRender)init;
@end

@implementation RSFloorPlanRender

- (RSFloorPlanRender)init
{
  v8.receiver = self;
  v8.super_class = RSFloorPlanRender;
  v2 = [(RSFloorPlanRender *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSObjectAlign);
    objAlign = v2->_objAlign;
    v2->_objAlign = v3;

    v2->_isUniformHeightPolygonEnabled = 0;
    *&v2->_isObjectBeautificationEnabled = 0;
    v5 = objc_alloc_init(RSFloorPlan);
    floorPlan = v2->_floorPlan;
    v2->_floorPlan = v5;
  }

  return v2;
}

@end