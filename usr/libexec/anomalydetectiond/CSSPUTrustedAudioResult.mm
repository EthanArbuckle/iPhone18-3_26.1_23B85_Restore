@interface CSSPUTrustedAudioResult
- (CSSPUTrustedAudioResult)initWithEpochTimestamp:(unint64_t)a3 planarResult:(CSSPUAudioCrashResult_Struct *)a4 rolloverResult:(CSSPUAudioCrashResult_Struct *)a5 historicalLoudness:(CSSPUHistoricalLoudness_Struct)a6 maxRMS:(float)a7 numShortAudio:(unsigned int)a8 numPointsInEpoch:(unsigned int)a9 epochMinTimestamp:(unint64_t)a10 epochMaxTimestamp:(unint64_t)a11 dramMinTimestamp:(unint64_t)a12 dramMaxTimestamp:(unint64_t)a13 calculationTimestamp:(unint64_t)a14 dramDuration:(unsigned int)a15;
- (CSSPUTrustedAudioResult)initWithSPUPacketStruct:(const CMSafetyAudioResult *)a3;
- (id).cxx_construct;
@end

@implementation CSSPUTrustedAudioResult

- (CSSPUTrustedAudioResult)initWithEpochTimestamp:(unint64_t)a3 planarResult:(CSSPUAudioCrashResult_Struct *)a4 rolloverResult:(CSSPUAudioCrashResult_Struct *)a5 historicalLoudness:(CSSPUHistoricalLoudness_Struct)a6 maxRMS:(float)a7 numShortAudio:(unsigned int)a8 numPointsInEpoch:(unsigned int)a9 epochMinTimestamp:(unint64_t)a10 epochMaxTimestamp:(unint64_t)a11 dramMinTimestamp:(unint64_t)a12 dramMaxTimestamp:(unint64_t)a13 calculationTimestamp:(unint64_t)a14 dramDuration:(unsigned int)a15
{
  soundEnvelopeCount = a6.soundEnvelopeCount;
  soundMeanCurrentWindow = a6.soundMeanCurrentWindow;
  soundMeanLast15s = a6.soundMeanLast15s;
  soundMaxMeanOverArmSession = a6.soundMaxMeanOverArmSession;
  v33.receiver = self;
  v33.super_class = CSSPUTrustedAudioResult;
  result = [(CSSPUTrustedAudioResult *)&v33 init];
  if (result)
  {
    result->_c_struct.timestamp = a3;
    *&result->_c_struct.planarResult.maxEnergy = *&a4->maxEnergy;
    v27 = *&a4->chaosAtMaxEnergy;
    v28 = *&a4->timestampAtMaxChaos;
    v29 = *&a4->maxSaturation;
    *(&result->_c_struct.planarResult.timestampAtMaxSaturation + 1) = *(&a4->timestampAtMaxSaturation + 1);
    *&result->_c_struct.planarResult.timestampAtMaxChaos = v28;
    *&result->_c_struct.planarResult.maxSaturation = v29;
    *&result->_c_struct.planarResult.chaosAtMaxEnergy = v27;
    v30 = *&a5->chaosAtMaxEnergy;
    v31 = *&a5->timestampAtMaxChaos;
    v32 = *&a5->maxSaturation;
    *(&result->_c_struct.rolloverResult.timestampAtMaxSaturation + 1) = *(&a5->timestampAtMaxSaturation + 1);
    *&result->_c_struct.rolloverResult.timestampAtMaxChaos = v31;
    *&result->_c_struct.rolloverResult.maxSaturation = v32;
    *&result->_c_struct.rolloverResult.chaosAtMaxEnergy = v30;
    *&result->_c_struct.rolloverResult.maxEnergy = *&a5->maxEnergy;
    result->_c_struct.historicalLoudness.soundMaxMeanOverArmSession = soundMaxMeanOverArmSession;
    result->_c_struct.historicalLoudness.soundMeanLast15s = soundMeanLast15s;
    result->_c_struct.historicalLoudness.soundMeanCurrentWindow = soundMeanCurrentWindow;
    result->_c_struct.historicalLoudness.soundEnvelopeCount = soundEnvelopeCount;
    result->_c_struct.maxRMS = a7;
    result->_c_struct.numShortAudio = a8;
    result->_c_struct.numPointsInEpoch = a9;
    result->_c_struct.epochMinTimestamp = a10;
    result->_c_struct.epochMaxTimestamp = a11;
    result->_c_struct.dramMinTimestamp = a12;
    result->_c_struct.dramMaxTimestamp = a13;
    result->_c_struct.calculationTimestamp = a14;
    result->_c_struct.dramDuration = a15;
  }

  return result;
}

- (CSSPUTrustedAudioResult)initWithSPUPacketStruct:(const CMSafetyAudioResult *)a3
{
  var1 = a3->var1.var1;
  var4 = a3->var1.var4;
  var5 = a3->var1.var5;
  v10 = a3->var1.var8;
  var9 = a3->var1.var9;
  var12 = a3->var1.var12;
  var0 = a3->var2.var0;
  v14 = a3->var2.var1;
  v15 = a3->var2.var4;
  v16 = a3->var2.var5;
  v17 = a3->var2.var8;
  v18 = a3->var2.var9;
  v19 = a3->var2.var12;
  LOWORD(_D0) = *&a3->var13;
  __asm { FCVT            S0, H0 }

  LOWORD(_D1) = *(&a3->var13 + 1);
  __asm { FCVT            S1, H1 }

  LOWORD(_D2) = a3[1].var0;
  __asm { FCVT            S2, H2 }

  LOWORD(_D3) = WORD1(a3[1].var0);
  __asm { FCVT            S3, H3 }

  v24 = a3->var0;
  v38 = a3->var1.var0;
  v39 = var1;
  v40 = *&a3->var1.var2;
  v41 = var4;
  v42 = var5;
  v43 = *&a3->var1.var6;
  v44 = v10;
  v45 = var9;
  v46 = *&a3->var1.var10;
  v47 = var12;
  v28 = var0;
  v29 = v14;
  v30 = *&a3->var2.var2;
  v31 = v15;
  v32 = v16;
  v33 = *&a3->var2.var6;
  v34 = v17;
  v35 = v18;
  v36 = *&a3->var2.var10;
  HIDWORD(v25) = HIDWORD(v36);
  v37 = v19;
  *&v25 = a3->var3;
  LODWORD(v27) = a3->var12;
  return [(CSSPUTrustedAudioResult *)self initWithEpochTimestamp:v24 planarResult:&v38 rolloverResult:&v28 historicalLoudness:a3->var4 maxRMS:a3->var5 numShortAudio:a3->var6 numPointsInEpoch:_D0 epochMinTimestamp:_D1 epochMaxTimestamp:_D2 dramMinTimestamp:_D3 dramMaxTimestamp:v25 calculationTimestamp:a3->var7 dramDuration:a3->var8, a3->var9, a3->var10, v27];
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