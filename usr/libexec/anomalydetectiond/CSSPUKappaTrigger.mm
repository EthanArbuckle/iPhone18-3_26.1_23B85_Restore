@interface CSSPUKappaTrigger
- (CSSPUKappaTrigger)initWithTimestamp:(unint64_t)timestamp meta:(unsigned __int8)meta decel:(float)decel impact:(float)impact path:(unsigned __int8)path armedSec:(unsigned __int16)sec motionHint:(char)hint gpsHint:(char)self0 basebandHint:(char)self1 wifiHint:(char)self2 btHint:(char)self3 lastValidImuTimestamp:(unint64_t)self4 vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:;
@end

@implementation CSSPUKappaTrigger

- (CSSPUKappaTrigger)initWithTimestamp:(unint64_t)timestamp meta:(unsigned __int8)meta decel:(float)decel impact:(float)impact path:(unsigned __int8)path armedSec:(unsigned __int16)sec motionHint:(char)hint gpsHint:(char)self0 basebandHint:(char)self1 wifiHint:(char)self2 btHint:(char)self3 lastValidImuTimestamp:(unint64_t)self4 vehicleProbabilityLongTermMean:martyPath:enableMode:martyArmedSec:companionAopTs:maxMeanTenMinPreTrigger:lastCompleted15sWindowMean:currentWindowMean:numMaxEnvelopes:igneousPath:igneousGUID:martyImpactMagnitude:martyRotationMagnitude:overrideMode:martyIsBicycle:martyArmedSecBicycle:locallyArmed:
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
    v32->_meta = meta;
    v32->_c_struct.timestamp = timestamp;
    v32->_c_struct.meta = meta;
    v32->_c_struct.decel = decel;
    v32->_c_struct.impact = impact;
    v32->_c_struct.path = path;
    v32->_c_struct.armedSec = sec;
    v32->_c_struct.motionHint = hint;
    v32->_c_struct.gpsHint = gpsHint;
    v32->_c_struct.basebandHint = basebandHint;
    v32->_c_struct.wifiHint = wifiHint;
    v32->_c_struct.btHint = btHint;
    v32->_c_struct.lastValidImuTimestamp = imuTimestamp;
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