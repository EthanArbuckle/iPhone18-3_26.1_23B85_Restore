@interface VLLocalizationResult
- ($153C3A5BC4E016D58A1B9CA554FFC462)location;
- ($4ED12C4C7630B45462BF021B0F75306B)covariance;
- (BOOL)isEqual:(id)equal;
- (VLLocalizationResult)init;
- (VLLocalizationResult)initWithCoder:(id)coder;
- (VLLocalizationResult)initWithTimestamp:(double)timestamp pose:(id *)pose debugInfo:(id)info;
- (__n128)transform;
- (unint64_t)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VLLocalizationResult

- (VLLocalizationResult)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (VLLocalizationResult)initWithTimestamp:(double)timestamp pose:(id *)pose debugInfo:(id)info
{
  infoCopy = info;
  if (!pose)
  {
    goto LABEL_5;
  }

  v26.receiver = self;
  v26.super_class = VLLocalizationResult;
  v10 = [(VLLocalizationResult *)&v26 init];
  if (!v10)
  {
    self = 0;
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  v10->_timestamp = timestamp;
  *&v14 = pose->var0[0][0];
  *&v15 = pose->var0[0][1];
  *&v16 = pose->var0[0][2];
  v17 = *pose->var1;
  *(&v14 + 1) = *&pose->var0[1][0];
  *(&v15 + 1) = *&pose->var0[1][1];
  *&v11 = pose->var0[2][0];
  *&v12 = pose->var0[2][1];
  *(&v16 + 1) = *&pose->var0[1][2];
  *&v13 = pose->var0[2][2];
  __asm { FMOV            V7.2D, #1.0 }

  *&_Q7 = pose->var1[2];
  *v10->_anon_50 = v14;
  *&v10->_anon_50[16] = v11;
  *&v10->_anon_50[32] = v15;
  *&v10->_anon_50[48] = v12;
  *&v10->_anon_50[64] = v16;
  *&v10->_anon_50[80] = v13;
  *&v10->_anon_50[96] = v17;
  *&v10->_anon_50[112] = _Q7;
  *&v15 = pose->var1[2];
  *v10->_anon_20 = *pose->var1;
  *&v10->_anon_20[16] = v15;
  *&v10->_anon_20[32] = 0xBFF0000000000000;
  v10->_confidence = pose->var2;
  v10->_covariance.v[0][0] = pose->var3[0];
  v10->_covariance.v[0][1] = pose->var3[1];
  v10->_covariance.v[0][2] = pose->var3[2];
  v10->_covariance.v[0][3] = pose->var3[3];
  v10->_covariance.v[0][4] = pose->var3[4];
  v10->_covariance.v[0][5] = pose->var3[5];
  v10->_covariance.v[1][0] = pose->var3[6];
  v10->_covariance.v[1][1] = pose->var3[7];
  v10->_covariance.v[1][2] = pose->var3[8];
  v10->_covariance.v[1][3] = pose->var3[9];
  v10->_covariance.v[1][4] = pose->var3[10];
  v10->_covariance.v[1][5] = pose->var3[11];
  v10->_covariance.v[2][0] = pose->var3[12];
  v10->_covariance.v[2][1] = pose->var3[13];
  v10->_covariance.v[2][2] = pose->var3[14];
  v10->_covariance.v[2][3] = pose->var3[15];
  v10->_covariance.v[2][4] = pose->var3[16];
  v10->_covariance.v[2][5] = pose->var3[17];
  v10->_covariance.v[3][0] = pose->var3[18];
  v10->_covariance.v[3][1] = pose->var3[19];
  v10->_covariance.v[3][2] = pose->var3[20];
  v10->_covariance.v[3][3] = pose->var3[21];
  v10->_covariance.v[3][4] = pose->var3[22];
  v10->_covariance.v[3][5] = pose->var3[23];
  v10->_covariance.v[4][0] = pose->var3[24];
  v10->_covariance.v[4][1] = pose->var3[25];
  v10->_covariance.v[4][2] = pose->var3[26];
  v10->_covariance.v[4][3] = pose->var3[27];
  v10->_covariance.v[4][4] = pose->var3[28];
  v10->_covariance.v[4][5] = pose->var3[29];
  v10->_covariance.v[5][0] = pose->var3[30];
  v10->_covariance.v[5][1] = pose->var3[31];
  v10->_covariance.v[5][2] = pose->var3[32];
  v10->_covariance.v[5][3] = pose->var3[33];
  v10->_covariance.v[5][4] = pose->var3[34];
  v10->_covariance.v[5][5] = pose->var3[35];
  v23 = v10;
  objc_storeStrong(&v10->_debugInfo, info);
  self = v23;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (VLLocalizationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = VLLocalizationResult;
  v5 = [(VLLocalizationResult *)&v19 init];
  if (v5 && ([coderCopy decodeDoubleForKey:@"timestamp"], v5->_timestamp = v6, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"location_x"), v18 = v7, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"location_y"), v17 = v8, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"location_z"), *&v9 = v18, *(&v9 + 1) = v17, *v5->_anon_20 = v9, *&v5->_anon_20[16] = v10, objc_msgSend(coderCopy, "decodeDoubleForKey:", @"location_accuracy"), *&v5->_anon_20[32] = v11, objc_msgSend(coderCopy, "_vl_decodeSimdDouble4x4:forKey:", v5->_anon_50, @"transform")) && (objc_msgSend(coderCopy, "decodeFloatForKey:", @"confidence"), v5->_confidence = v12, objc_msgSend(coderCopy, "_vl_decodeFloat6x6:forKey:", &v5->_covariance, @"covariance")))
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"debug_info"];
    debugInfo = v5->_debugInfo;
    v5->_debugInfo = v13;

    v15 = v5;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeDouble:@"location_x" forKey:*self->_anon_20];
  [coderCopy encodeDouble:@"location_y" forKey:*&self->_anon_20[8]];
  [coderCopy encodeDouble:@"location_z" forKey:*&self->_anon_20[16]];
  [coderCopy encodeDouble:@"location_accuracy" forKey:*&self->_anon_20[32]];
  v6 = *&self->_anon_50[80];
  v19 = *&self->_anon_50[64];
  v20 = v6;
  v7 = *&self->_anon_50[112];
  v21 = *&self->_anon_50[96];
  v22 = v7;
  v8 = *&self->_anon_50[16];
  v15 = *self->_anon_50;
  v16 = v8;
  v9 = *&self->_anon_50[48];
  v17 = *&self->_anon_50[32];
  v18 = v9;
  [coderCopy _vl_encodeSimdDouble4x4:&v15 forKey:@"transform"];
  *&v10 = self->_confidence;
  [coderCopy encodeFloat:@"confidence" forKey:v10];
  v11 = *&self->_covariance.v[4][4];
  v21 = *&self->_covariance.v[4][0];
  v22 = v11;
  v23 = *&self->_covariance.v[5][2];
  v12 = *&self->_covariance.v[2][0];
  v17 = *&self->_covariance.v[1][2];
  v18 = v12;
  v13 = *&self->_covariance.v[3][2];
  v19 = *&self->_covariance.v[2][4];
  v20 = v13;
  v14 = *&self->_covariance.v[0][4];
  v15 = *&self->_covariance.v[0][0];
  v16 = v14;
  [coderCopy _vl_encodeFloat6x6:&v15 forKey:@"covariance"];
  [coderCopy encodeObject:self->_debugInfo forKey:@"debug_info"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {

    return 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if (self->_timestamp == v6[1].f64[0] && (v7 = vandq_s8(vandq_s8(vandq_s8(vceqq_f64(*&self->_anon_50[32], v6[7]), vceqq_f64(*self->_anon_50, v6[5])), vandq_s8(vceqq_f64(*&self->_anon_50[64], v6[9]), vceqq_f64(*&self->_anon_50[96], v6[11]))), vandq_s8(vandq_s8(vceqq_f64(*&self->_anon_50[48], v6[8]), vceqq_f64(*&self->_anon_50[16], v6[6])), vandq_s8(vceqq_f64(*&self->_anon_50[80], v6[10]), vceqq_f64(*&self->_anon_50[112], v6[12])))), (vandq_s8(v7, vdupq_laneq_s64(v7, 1)).u64[0] & 0x8000000000000000) != 0) && (v8 = vceqq_f64(*self->_anon_20, v6[2]), (v8.i64[0] & v8.i64[1] & vceqq_f64(*&self->_anon_20[16], v6[3]).u64[0] & 0x8000000000000000) != 0) && *&self->_anon_20[32] == v6[4].f64[0] && self->_confidence == *&v6->f64[1])
      {
        v11 = v6;
        v12 = memcmp(&self->_covariance, &v6[13], 0x90uLL);
        v6 = v11;
        v9 = v12 == 0;
      }

      else
      {
        v9 = 0;
      }

      return v9;
    }

    else
    {

      return 0;
    }
  }
}

- (unint64_t)timestamp
{
  if (qword_281181C48 == -1)
  {
    return (self->_timestamp * *&_MergedGlobals);
  }

  dispatch_once(&qword_281181C48, &__block_literal_global_0);
  return (self->_timestamp * *&_MergedGlobals);
}

double __33__VLLocalizationResult_timestamp__block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(result) = info.denom;
    result = *&result / v1 * 1000000000.0;
    _MergedGlobals = *&result;
  }

  return result;
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)location
{
  v3 = *&self->_anon_20[16];
  *v2 = *self->_anon_20;
  v2[1] = v3;
  v4 = *&self->_anon_20[32];
  v2[2] = v4;
  return v4;
}

- (__n128)transform
{
  v2 = *(self + 160);
  *(a2 + 64) = *(self + 144);
  *(a2 + 80) = v2;
  v3 = *(self + 192);
  *(a2 + 96) = *(self + 176);
  *(a2 + 112) = v3;
  v4 = *(self + 96);
  *a2 = *(self + 80);
  *(a2 + 16) = v4;
  result = *(self + 112);
  v6 = *(self + 128);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- ($4ED12C4C7630B45462BF021B0F75306B)covariance
{
  v3 = *&self[2].var0[1][2];
  *&retstr->var0[4][0] = *&self[2].var0[0][4];
  *&retstr->var0[4][4] = v3;
  *&retstr->var0[5][2] = *&self[2].var0[2][0];
  v4 = *&self[1].var0[4][4];
  *&retstr->var0[1][2] = *&self[1].var0[4][0];
  *&retstr->var0[2][0] = v4;
  v5 = *&self[2].var0[0][0];
  *&retstr->var0[2][4] = *&self[1].var0[5][2];
  *&retstr->var0[3][2] = v5;
  v6 = *&self[1].var0[3][2];
  *&retstr->var0[0][0] = *&self[1].var0[2][4];
  *&retstr->var0[0][4] = v6;
  return self;
}

@end