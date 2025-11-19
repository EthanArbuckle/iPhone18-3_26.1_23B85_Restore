@interface PCDynamicsWindowContext
- (PCDynamicsWindowContext)initWithRawHistory:(id)a3 currentTime:(double)a4 lastVisitExitTime:(double)a5 minTravelTime:(double)a6 fullEffectTime:(double)a7 maxUncertainty:(double)a8;
@end

@implementation PCDynamicsWindowContext

- (PCDynamicsWindowContext)initWithRawHistory:(id)a3 currentTime:(double)a4 lastVisitExitTime:(double)a5 minTravelTime:(double)a6 fullEffectTime:(double)a7 maxUncertainty:(double)a8
{
  v14 = a3;
  v25.receiver = self;
  v25.super_class = PCDynamicsWindowContext;
  v15 = [(PCDynamicsWindowContext *)&v25 init];
  if (v15)
  {
    v16 = [[PCLocationsWindow alloc] initWithRawHistory:v14 maxUncertainty:a8];
    locationWindow = v15->_locationWindow;
    v15->_locationWindow = v16;

    v15->_travelTimeSec = a4 - a5;
    [PCLocationUtils boundValue:(a4 - a5 - a6) / (a7 - a6) toMin:0.0 max:1.0];
    v15->_rampWeight = v18;
    if (v15->_travelTimeSec < a7)
    {
      v19 = a6;
    }

    else
    {
      v19 = a7;
    }

    v20 = v19 + a5;
    v21 = [(PCLocationsWindow *)v15->_locationWindow fixAtOrAfter:v19 + a5];
    startFix = v15->_startFix;
    v15->_startFix = v21;

    v15->_startTime = v20;
    v23 = v15;
  }

  return v15;
}

@end