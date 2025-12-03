@interface CSSPURoadInfo
- (CSSPURoadInfo)initWithTimestamp:(unint64_t)timestamp distanceToNearestRoad:(double)road roadClass:(int)class horizontalAccuracy:(float)accuracy numRoadFeaturesEvaluated:(int)evaluated GEOHandlerErrorDomain:(id)domain GEOHandlerErrorCode:(int64_t)code;
@end

@implementation CSSPURoadInfo

- (CSSPURoadInfo)initWithTimestamp:(unint64_t)timestamp distanceToNearestRoad:(double)road roadClass:(int)class horizontalAccuracy:(float)accuracy numRoadFeaturesEvaluated:(int)evaluated GEOHandlerErrorDomain:(id)domain GEOHandlerErrorCode:(int64_t)code
{
  evaluatedCopy = evaluated;
  classCopy = class;
  domainCopy = domain;
  v20.receiver = self;
  v20.super_class = CSSPURoadInfo;
  v17 = [(CSSPURoadInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_c_struct.timestamp = timestamp;
    v17->_c_struct.distanceToNearestRoad = road;
    v17->_c_struct.roadClass = classCopy;
    v17->_c_struct.horizontalAccuracy = accuracy;
    v17->_c_struct.numRoadFeaturesEvaluated = evaluatedCopy;
    strncpy(v17->_c_struct.GEOHandlerErrorDomain, [domainCopy UTF8String], 0x40uLL);
    v18->_c_struct.GEOHandlerErrorDomain[63] = 0;
    v18->_c_struct.GEOHandlerErrorCode = code;
  }

  return v18;
}

@end