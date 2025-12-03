@interface CMIColourConstancyCommon
+ (int)calculateEIT:(id)t result:(float *)result;
+ (int)getLensShadingCorrectionMaxGain:(id)gain outputMaxGain:(float *)maxGain;
+ (int)getStrobeColourCorrectionMatrix:(id)matrix outputMatrix:(id *)outputMatrix;
+ (int)getStrobeWhiteBalanceGains:(id)gains metadata:(id)metadata outputVector:;
+ (int)getWhiteBalanceGains:(id)gains outputVector:;
@end

@implementation CMIColourConstancyCommon

+ (int)getWhiteBalanceGains:(id)gains outputVector:
{
  v4 = v3;
  gainsCopy = gains;
  v6 = gainsCopy;
  v19 = 0;
  if (!gainsCopy)
  {
    sub_14250();
LABEL_10:
    v12 = 10;
    goto LABEL_7;
  }

  if (!v4)
  {
    sub_141F0();
    goto LABEL_10;
  }

  [gainsCopy cmi_floatValueForKey:kFigCaptureStreamMetadata_AWBComboRGain defaultValue:&v19 found:0.0];
  if ((v19 & 1) == 0)
  {
    sub_140D0();
LABEL_14:
    v12 = 2;
    goto LABEL_7;
  }

  v8 = v7;
  [v6 cmi_floatValueForKey:kFigCaptureStreamMetadata_AWBComboGGain defaultValue:&v19 found:0.0];
  if ((v19 & 1) == 0)
  {
    sub_14130();
    goto LABEL_14;
  }

  v10 = v9;
  [v6 cmi_floatValueForKey:kFigCaptureStreamMetadata_AWBComboBGain defaultValue:&v19 found:0.0];
  if ((v19 & 1) == 0)
  {
    sub_14190();
    goto LABEL_14;
  }

  v12 = 0;
  __asm { FMOV            V2.4S, #1.0 }

  *&_Q2 = v8 / v10;
  *(&_Q2 + 2) = v11 / v10;
  *v4 = _Q2;
LABEL_7:

  return v12;
}

+ (int)getStrobeWhiteBalanceGains:(id)gains metadata:(id)metadata outputVector:
{
  v5 = v4;
  gainsCopy = gains;
  metadataCopy = metadata;
  v9 = metadataCopy;
  if (!gainsCopy)
  {
    sub_14568();
LABEL_16:
    v24 = 10;
    goto LABEL_12;
  }

  if (!metadataCopy)
  {
    sub_14508();
    goto LABEL_16;
  }

  if (!v5)
  {
    sub_144A8();
    goto LABEL_16;
  }

  v10 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  if (!v10)
  {
    sub_14448();
    v24 = 2;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [gainsCopy objectForKeyedSubscript:v10];
  if (!v12)
  {
    sub_143D0(v11);
LABEL_21:
    v24 = 3;
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:kFigCaptureStreamProperty_FlashCalibrationData];
  if (!v14)
  {
    sub_14344(v13, v11);
    goto LABEL_21;
  }

  v15 = v14;
  bytes = [v14 bytes];
  if (!bytes)
  {
    sub_142B0(v15, v13, v11);
    goto LABEL_21;
  }

  if ((*bytes - 1) > 1)
  {
    v23 = xmmword_21880;
  }

  else
  {
    __asm { FMOV            V1.2S, #1.0 }

    *v17.i8 = vdiv_f32(_D1, *(bytes + 4));
    v23 = vzip1q_s32(v17, v17);
    v23.i32[1] = 1.0;
  }

  *v5 = v23;

  v24 = 0;
LABEL_12:

  return v24;
}

+ (int)calculateEIT:(id)t result:(float *)result
{
  tCopy = t;
  v6 = tCopy;
  v13 = 0;
  if (!tCopy)
  {
    sub_146F0();
LABEL_9:
    v10 = 10;
    goto LABEL_6;
  }

  if (!result)
  {
    sub_14690();
    goto LABEL_9;
  }

  v7 = [tCopy cmi_intValueForKey:kFigCaptureStreamMetadata_AGC defaultValue:0 found:&v13];
  if ((v13 & 1) == 0)
  {
    sub_145C8();
LABEL_12:
    v10 = 2;
    goto LABEL_6;
  }

  v8 = v7;
  [v6 cmi_doubleValueForKey:kFigCaptureStreamMetadata_ExposureTime defaultValue:&v13 found:0.0];
  if ((v13 & 1) == 0)
  {
    sub_1462C();
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v9 * vcvts_n_f32_s32(v8, 8uLL) / vcvts_n_f32_s32([v6 cmi_intValueForKey:kFigCaptureStreamMetadata_HRGainDownRatio defaultValue:4096 found:0], 0xCuLL);
  *result = v11;
LABEL_6:

  return v10;
}

+ (int)getLensShadingCorrectionMaxGain:(id)gain outputMaxGain:(float *)maxGain
{
  gainCopy = gain;
  v7 = gainCopy;
  v11 = 0;
  if (!gainCopy)
  {
    sub_14810();
LABEL_8:
    v9 = 10;
    goto LABEL_5;
  }

  if (!maxGain)
  {
    sub_147B0();
    goto LABEL_8;
  }

  LODWORD(v6) = 1.0;
  [gainCopy cmi_floatValueForKey:kLensShadingCorrectionGainMapParametersKey_GridMaxGain defaultValue:&v11 found:v6];
  if (v11)
  {
    v9 = 0;
    *maxGain = v8;
  }

  else
  {
    sub_14750();
    v9 = 2;
  }

LABEL_5:

  return v9;
}

+ (int)getStrobeColourCorrectionMatrix:(id)matrix outputMatrix:(id *)outputMatrix
{
  matrixCopy = matrix;
  v6 = matrixCopy;
  if (!matrixCopy)
  {
    sub_149AC();
LABEL_11:
    v14 = 10;
    goto LABEL_8;
  }

  if (!outputMatrix)
  {
    sub_1494C();
    goto LABEL_11;
  }

  v7 = [matrixCopy objectForKeyedSubscript:@"AwbOutputMetadata"];
  v8 = [v7 objectForKeyedSubscript:@"StrobeWhitePointCCM"];

  if (!v8)
  {
    v9 = [v6 objectForKeyedSubscript:kFigCaptureStreamMetadata_ColorCorrectionMatrix];
    if (!v9)
    {
      sub_148E8();
LABEL_14:
      v14 = 2;
      goto LABEL_8;
    }

    v8 = v9;
  }

  bytes = [v8 bytes];
  if (!bytes)
  {
    sub_14870(v8);
    goto LABEL_14;
  }

  LODWORD(v11) = *bytes;
  LODWORD(v12) = bytes[1];
  DWORD1(v11) = bytes[3];
  DWORD2(v11) = bytes[6];
  DWORD1(v12) = bytes[4];
  DWORD2(v12) = bytes[7];
  LODWORD(v13) = bytes[2];
  DWORD1(v13) = bytes[5];
  DWORD2(v13) = bytes[8];
  *outputMatrix = v11;
  *(outputMatrix + 1) = v12;
  *(outputMatrix + 2) = v13;

  v14 = 0;
LABEL_8:

  return v14;
}

@end