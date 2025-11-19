@interface RSFloorPlanBoundaryRefinement
- (RSFloorPlanBoundaryRefinement)init;
@end

@implementation RSFloorPlanBoundaryRefinement

- (RSFloorPlanBoundaryRefinement)init
{
  v10.receiver = self;
  v10.super_class = RSFloorPlanBoundaryRefinement;
  v2 = [(RSFloorPlanBoundaryRefinement *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_initProcessor = 0;
    prevInputWindows = v2->_prevInputWindows;
    v5 = MEMORY[0x277CBEBF8];
    v2->_prevInputWindows = MEMORY[0x277CBEBF8];

    prevInputDoors = v3->_prevInputDoors;
    v3->_prevInputDoors = v5;

    v7 = objc_alloc_init(RSFloorPlan);
    prevOutputFloorPlan = v3->_prevOutputFloorPlan;
    v3->_prevOutputFloorPlan = v7;
  }

  return v3;
}

@end