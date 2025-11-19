@interface PDPeridotModuleCalibrationData
+ (BOOL)isBufferOfExpectedVersion:(id)a3;
- (PDPeridotModuleCalibrationData)initWithCalibrationDictionary:(id)a3;
- (PDPeridotModuleCalibrationData)initWithPeridotCalib:(id)a3;
- (float32x2_t)operationalWideToPeridotTransform;
- (float64x2_t)setOperationalWideToPeridotTransform:(int8x16_t)a3;
@end

@implementation PDPeridotModuleCalibrationData

- (float64x2_t)setOperationalWideToPeridotTransform:(int8x16_t)a3
{
  v5 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *a3.i8));
  v6 = vcvtq_f64_f32(vzip2_s32(*a2.i8, *a3.i8));
  result = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)));
  a1[25141] = v5;
  a1[25142] = vcvtq_f64_f32(vzip1_s32(*a4.i8, *a5.i8));
  a1[25143] = v6;
  a1[25144] = vcvtq_f64_f32(vzip2_s32(*a4.i8, *a5.i8));
  a1[25145] = result;
  a1[25146] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a4, a4, 8uLL), *&vextq_s8(a5, a5, 8uLL)));
  return result;
}

- (float32x2_t)operationalWideToPeridotTransform
{
  v1 = a1[25141];
  v1.f64[1] = a1[25143].f64[0];
  return vcvt_f32_f64(v1);
}

- (PDPeridotModuleCalibrationData)initWithCalibrationDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PDPeridotModuleCalibrationData;
  v5 = [(PDPeridotModuleCalibrationData *)&v10 init];
  v7 = v5;
  if (v5 && (peridot::CalibManager::fillPeridotCalib(v4, &v5->_peridotCalib, v6) & 1) == 0)
  {
    NSLog(&cfstr_FailedToInitia_1.isa);
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (PDPeridotModuleCalibrationData)initWithPeridotCalib:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PDPeridotModuleCalibrationData;
  v5 = [(PDPeridotModuleCalibrationData *)&v8 init];
  if (v5 && (readPeridotCalibFromBuffer([v4 bytes], objc_msgSend(v4, "length"), &v5->_peridotCalib) & 1) == 0)
  {
    NSLog(&cfstr_FailedToInitia_0.isa);
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

+ (BOOL)isBufferOfExpectedVersion:(id)a3
{
  v3 = a3;
  v4 = [v3 length] == 402528 && *objc_msgSend(v3, "bytes") == 9;

  return v4;
}

@end