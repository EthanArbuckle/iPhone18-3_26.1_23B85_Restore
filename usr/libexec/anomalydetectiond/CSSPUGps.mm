@interface CSSPUGps
- (CSSPUGps)initWithTimestamp:(unint64_t)timestamp doubleTS:(double)s speedMS:(float)mS speedAccuracyMS:(float)accuracyMS courseDeg:(float)deg courseAccuracyDeg:(float)accuracyDeg latitude:(float)latitude longitude:(float)self0 wayForm:(int)self1 roadClass:(int)self2 signalEnvironment:(char)self3 horizontalAccuracy:(float)self4 demNumContiguousFlatPoints:(int)self5 demConfidence:(float)self6 type:(unsigned int)self7;
@end

@implementation CSSPUGps

- (CSSPUGps)initWithTimestamp:(unint64_t)timestamp doubleTS:(double)s speedMS:(float)mS speedAccuracyMS:(float)accuracyMS courseDeg:(float)deg courseAccuracyDeg:(float)accuracyDeg latitude:(float)latitude longitude:(float)self0 wayForm:(int)self1 roadClass:(int)self2 signalEnvironment:(char)self3 horizontalAccuracy:(float)self4 demNumContiguousFlatPoints:(int)self5 demConfidence:(float)self6 type:(unsigned int)self7
{
  v32.receiver = self;
  v32.super_class = CSSPUGps;
  result = [(CSSPUGps *)&v32 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    result->_c_struct.doubleTS = s;
    result->_c_struct.speedMS = mS;
    result->_c_struct.speedAccuracyMS = accuracyMS;
    result->_c_struct.courseDeg = deg;
    result->_c_struct.courseAccuracyDeg = accuracyDeg;
    result->_c_struct.latitude = latitude;
    result->_c_struct.longitude = longitude;
    result->_c_struct.wayForm = form;
    result->_c_struct.roadClass = class;
    result->_c_struct.signalEnvironment = environment;
    result->_c_struct.horizontalAccuracy = accuracy;
    result->_c_struct.demNumContiguousFlatPoints = points;
    result->_c_struct.demConfidence = confidence;
    result->_c_struct.type = type;
  }

  return result;
}

@end