@interface CSSPUGps
- (CSSPUGps)initWithTimestamp:(unint64_t)a3 doubleTS:(double)a4 speedMS:(float)a5 speedAccuracyMS:(float)a6 courseDeg:(float)a7 courseAccuracyDeg:(float)a8 latitude:(float)a9 longitude:(float)a10 wayForm:(int)a11 roadClass:(int)a12 signalEnvironment:(char)a13 horizontalAccuracy:(float)a14 demNumContiguousFlatPoints:(int)a15 demConfidence:(float)a16 type:(unsigned int)a17;
@end

@implementation CSSPUGps

- (CSSPUGps)initWithTimestamp:(unint64_t)a3 doubleTS:(double)a4 speedMS:(float)a5 speedAccuracyMS:(float)a6 courseDeg:(float)a7 courseAccuracyDeg:(float)a8 latitude:(float)a9 longitude:(float)a10 wayForm:(int)a11 roadClass:(int)a12 signalEnvironment:(char)a13 horizontalAccuracy:(float)a14 demNumContiguousFlatPoints:(int)a15 demConfidence:(float)a16 type:(unsigned int)a17
{
  v32.receiver = self;
  v32.super_class = CSSPUGps;
  result = [(CSSPUGps *)&v32 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    result->_c_struct.doubleTS = a4;
    result->_c_struct.speedMS = a5;
    result->_c_struct.speedAccuracyMS = a6;
    result->_c_struct.courseDeg = a7;
    result->_c_struct.courseAccuracyDeg = a8;
    result->_c_struct.latitude = a9;
    result->_c_struct.longitude = a10;
    result->_c_struct.wayForm = a11;
    result->_c_struct.roadClass = a12;
    result->_c_struct.signalEnvironment = a13;
    result->_c_struct.horizontalAccuracy = a14;
    result->_c_struct.demNumContiguousFlatPoints = a15;
    result->_c_struct.demConfidence = a16;
    result->_c_struct.type = a17;
  }

  return result;
}

@end