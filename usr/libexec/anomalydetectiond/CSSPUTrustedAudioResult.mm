@interface CSSPUTrustedAudioResult
- (CSSPUTrustedAudioResult)initWithEpochTimestamp:(unint64_t)timestamp planarResult:(CSSPUAudioCrashResult_Struct *)result rolloverResult:(CSSPUAudioCrashResult_Struct *)rolloverResult historicalLoudness:(CSSPUHistoricalLoudness_Struct)loudness maxRMS:(float)s numShortAudio:(unsigned int)audio numPointsInEpoch:(unsigned int)epoch epochMinTimestamp:(unint64_t)self0 epochMaxTimestamp:(unint64_t)self1 dramMinTimestamp:(unint64_t)self2 dramMaxTimestamp:(unint64_t)self3 calculationTimestamp:(unint64_t)self4 dramDuration:(unsigned int)self5;
- (CSSPUTrustedAudioResult)initWithSPUPacketStruct:(const CMSafetyAudioResult *)struct;
- (id).cxx_construct;
@end

@implementation CSSPUTrustedAudioResult

- (CSSPUTrustedAudioResult)initWithEpochTimestamp:(unint64_t)timestamp planarResult:(CSSPUAudioCrashResult_Struct *)result rolloverResult:(CSSPUAudioCrashResult_Struct *)rolloverResult historicalLoudness:(CSSPUHistoricalLoudness_Struct)loudness maxRMS:(float)s numShortAudio:(unsigned int)audio numPointsInEpoch:(unsigned int)epoch epochMinTimestamp:(unint64_t)self0 epochMaxTimestamp:(unint64_t)self1 dramMinTimestamp:(unint64_t)self2 dramMaxTimestamp:(unint64_t)self3 calculationTimestamp:(unint64_t)self4 dramDuration:(unsigned int)self5
{
  soundEnvelopeCount = loudness.soundEnvelopeCount;
  soundMeanCurrentWindow = loudness.soundMeanCurrentWindow;
  soundMeanLast15s = loudness.soundMeanLast15s;
  soundMaxMeanOverArmSession = loudness.soundMaxMeanOverArmSession;
  v33.receiver = self;
  v33.super_class = CSSPUTrustedAudioResult;
  result = [(CSSPUTrustedAudioResult *)&v33 init];
  if (result)
  {
    result->_c_struct.timestamp = timestamp;
    *&result->_c_struct.planarResult.maxEnergy = *&result->maxEnergy;
    v27 = *&result->chaosAtMaxEnergy;
    v28 = *&result->timestampAtMaxChaos;
    v29 = *&result->maxSaturation;
    *(&result->_c_struct.planarResult.timestampAtMaxSaturation + 1) = *(&result->timestampAtMaxSaturation + 1);
    *&result->_c_struct.planarResult.timestampAtMaxChaos = v28;
    *&result->_c_struct.planarResult.maxSaturation = v29;
    *&result->_c_struct.planarResult.chaosAtMaxEnergy = v27;
    v30 = *&rolloverResult->chaosAtMaxEnergy;
    v31 = *&rolloverResult->timestampAtMaxChaos;
    v32 = *&rolloverResult->maxSaturation;
    *(&result->_c_struct.rolloverResult.timestampAtMaxSaturation + 1) = *(&rolloverResult->timestampAtMaxSaturation + 1);
    *&result->_c_struct.rolloverResult.timestampAtMaxChaos = v31;
    *&result->_c_struct.rolloverResult.maxSaturation = v32;
    *&result->_c_struct.rolloverResult.chaosAtMaxEnergy = v30;
    *&result->_c_struct.rolloverResult.maxEnergy = *&rolloverResult->maxEnergy;
    result->_c_struct.historicalLoudness.soundMaxMeanOverArmSession = soundMaxMeanOverArmSession;
    result->_c_struct.historicalLoudness.soundMeanLast15s = soundMeanLast15s;
    result->_c_struct.historicalLoudness.soundMeanCurrentWindow = soundMeanCurrentWindow;
    result->_c_struct.historicalLoudness.soundEnvelopeCount = soundEnvelopeCount;
    result->_c_struct.maxRMS = s;
    result->_c_struct.numShortAudio = audio;
    result->_c_struct.numPointsInEpoch = epoch;
    result->_c_struct.epochMinTimestamp = minTimestamp;
    result->_c_struct.epochMaxTimestamp = maxTimestamp;
    result->_c_struct.dramMinTimestamp = dramMinTimestamp;
    result->_c_struct.dramMaxTimestamp = dramMaxTimestamp;
    result->_c_struct.calculationTimestamp = calculationTimestamp;
    result->_c_struct.dramDuration = duration;
  }

  return result;
}

- (CSSPUTrustedAudioResult)initWithSPUPacketStruct:(const CMSafetyAudioResult *)struct
{
  var1 = struct->var1.var1;
  var4 = struct->var1.var4;
  var5 = struct->var1.var5;
  v10 = struct->var1.var8;
  var9 = struct->var1.var9;
  var12 = struct->var1.var12;
  var0 = struct->var2.var0;
  v14 = struct->var2.var1;
  v15 = struct->var2.var4;
  v16 = struct->var2.var5;
  v17 = struct->var2.var8;
  v18 = struct->var2.var9;
  v19 = struct->var2.var12;
  LOWORD(_D0) = *&struct->var13;
  __asm { FCVT            S0, H0 }

  LOWORD(_D1) = *(&struct->var13 + 1);
  __asm { FCVT            S1, H1 }

  LOWORD(_D2) = struct[1].var0;
  __asm { FCVT            S2, H2 }

  LOWORD(_D3) = WORD1(struct[1].var0);
  __asm { FCVT            S3, H3 }

  v24 = struct->var0;
  v38 = struct->var1.var0;
  v39 = var1;
  v40 = *&struct->var1.var2;
  v41 = var4;
  v42 = var5;
  v43 = *&struct->var1.var6;
  v44 = v10;
  v45 = var9;
  v46 = *&struct->var1.var10;
  v47 = var12;
  v28 = var0;
  v29 = v14;
  v30 = *&struct->var2.var2;
  v31 = v15;
  v32 = v16;
  v33 = *&struct->var2.var6;
  v34 = v17;
  v35 = v18;
  v36 = *&struct->var2.var10;
  HIDWORD(v25) = HIDWORD(v36);
  v37 = v19;
  *&v25 = struct->var3;
  LODWORD(v27) = struct->var12;
  return [(CSSPUTrustedAudioResult *)self initWithEpochTimestamp:v24 planarResult:&v38 rolloverResult:&v28 historicalLoudness:struct->var4 maxRMS:struct->var5 numShortAudio:struct->var6 numPointsInEpoch:_D0 epochMinTimestamp:_D1 epochMaxTimestamp:_D2 dramMinTimestamp:_D3 dramMaxTimestamp:v25 calculationTimestamp:struct->var7 dramDuration:struct->var8, struct->var9, struct->var10, v27];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  *(self + 24) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 10) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 16) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 88) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 30) = 0;
  *(self + 36) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 168) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 50) = 0;
  *(self + 22) = 0;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 236) = 0u;
  return self;
}

@end