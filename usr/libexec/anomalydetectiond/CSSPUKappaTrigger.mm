@interface CSSPUKappaTrigger
- (CSSPUKappaTrigger)initWithTimestamp:(unint64_t)a3 meta:(unsigned __int8)a4 decel:(float)a5 impact:(float)a6 path:(unsigned __int8)a7 armedSec:(unsigned __int16)a8 motionHint:(char)a9 gpsHint:(char)a10 basebandHint:(char)a11 wifiHint:(char)a12 btHint:(char)a13 lastValidImuTimestamp:(unint64_t)a14 vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:;
@end

@implementation CSSPUKappaTrigger

- (CSSPUKappaTrigger)initWithTimestamp:(unint64_t)a3 meta:(unsigned __int8)a4 decel:(float)a5 impact:(float)a6 path:(unsigned __int8)a7 armedSec:(unsigned __int16)a8 motionHint:(char)a9 gpsHint:(char)a10 basebandHint:(char)a11 wifiHint:(char)a12 btHint:(char)a13 lastValidImuTimestamp:(unint64_t)a14 vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:
{
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
  v34.receiver = self;
  v34.super_class = CSSPUKappaTrigger;
  v32 = [(CSSPUKappaTrigger *)&v34 init];
  if (v32)
  {
    v32->_meta = a4;
    v32->_c_struct.timestamp = a3;
    v32->_c_struct.meta = a4;
    v32->_c_struct.decel = a5;
    v32->_c_struct.impact = a6;
    v32->_c_struct.path = a7;
    v32->_c_struct.armedSec = a8;
    v32->_c_struct.motionHint = a9;
    v32->_c_struct.gpsHint = a10;
    v32->_c_struct.basebandHint = a11;
    v32->_c_struct.wifiHint = a12;
    v32->_c_struct.btHint = a13;
    v32->_c_struct.lastValidImuTimestamp = a14;
    *v32->_anon_30 = *v35;
    *&v32->_anon_30[2] = v35[1];
    *&v32->_anon_30[4] = v35[2];
    v32->_anon_30[6] = v36;
    v32->_anon_30[7] = v37;
    *&v32->_anon_30[8] = v38;
    *&v32->_anon_30[16] = v39;
    *&v32->_anon_30[58] = v27;
    *&v32->_anon_30[60] = v26;
    *&v32->_anon_30[62] = v25;
    v32->_anon_30[64] = v40;
    v32->_anon_30[24] = v41;
    strncpy(&v32->_anon_30[25], __src, 0x10uLL);
    *&v32->_anon_30[44] = v24;
    *&v32->_anon_30[48] = v23;
    v32->_anon_30[53] = v43;
    v32->_anon_30[54] = v44;
    *&v32->_anon_30[56] = v45;
    v32->_anon_30[52] = v46;
  }

  return v32;
}

@end