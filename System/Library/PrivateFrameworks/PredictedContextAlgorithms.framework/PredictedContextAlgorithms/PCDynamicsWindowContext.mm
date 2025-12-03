@interface PCDynamicsWindowContext
- (PCDynamicsWindowContext)initWithRawHistory:(id)history currentTime:(double)time lastVisitExitTime:(double)exitTime minTravelTime:(double)travelTime fullEffectTime:(double)effectTime maxUncertainty:(double)uncertainty;
@end

@implementation PCDynamicsWindowContext

- (PCDynamicsWindowContext)initWithRawHistory:(id)history currentTime:(double)time lastVisitExitTime:(double)exitTime minTravelTime:(double)travelTime fullEffectTime:(double)effectTime maxUncertainty:(double)uncertainty
{
  historyCopy = history;
  v25.receiver = self;
  v25.super_class = PCDynamicsWindowContext;
  v15 = [(PCDynamicsWindowContext *)&v25 init];
  if (v15)
  {
    v16 = [[PCLocationsWindow alloc] initWithRawHistory:historyCopy maxUncertainty:uncertainty];
    locationWindow = v15->_locationWindow;
    v15->_locationWindow = v16;

    v15->_travelTimeSec = time - exitTime;
    [PCLocationUtils boundValue:(time - exitTime - travelTime) / (effectTime - travelTime) toMin:0.0 max:1.0];
    v15->_rampWeight = v18;
    if (v15->_travelTimeSec < effectTime)
    {
      effectTimeCopy = travelTime;
    }

    else
    {
      effectTimeCopy = effectTime;
    }

    v20 = effectTimeCopy + exitTime;
    exitTime = [(PCLocationsWindow *)v15->_locationWindow fixAtOrAfter:effectTimeCopy + exitTime];
    startFix = v15->_startFix;
    v15->_startFix = exitTime;

    v15->_startTime = v20;
    v23 = v15;
  }

  return v15;
}

@end