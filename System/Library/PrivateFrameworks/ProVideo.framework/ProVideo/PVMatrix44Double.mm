@interface PVMatrix44Double
+ (BOOL)isMatrix:(id)a3 equivalentTo:(id)a4;
+ (id)matrix;
+ (id)matrixWithPCMatrix44Double:(id)a3;
+ (id)matrixWithPCMatrix44d:(const void *)a3;
+ (id)matrixWithSIMDDouble4x4:(_OWORD *)a3;
+ (id)matrixWithSIMDFloat4x4:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFinite;
- (BOOL)isIdentity;
- (PVMatrix44Double)init;
- (PVMatrix44Double)initWithCoder:(id)a3;
- (PVMatrix44Double)initWithPCMatrix44Double:(id)a3;
- (PVMatrix44Double)initWithPCMatrix44d:(const void *)a3;
- (__n128)SIMDDouble4x4;
- (__n128)initWithSIMDDouble4x4:(uint64_t)a3;
- (__n128)setSIMDDouble4x4:(__int128 *)a3;
- (float64x2_t)setSIMDFloat4x4:(float32x4_t)a3;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)extendedDescription;
- (id)pcMatrix44Double;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getTransformInfo:(_OWORD *)a3@<X8>;
- (void)initWithSIMDFloat4x4:(double)a3;
- (void)makeIdentity;
- (void)setPCMatrix44Double:(id)a3;
- (void)transpose;
@end

@implementation PVMatrix44Double

+ (id)matrix
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (BOOL)isMatrix:(id)a3 equivalentTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6 || !(v5 | v6))
  {
    goto LABEL_3;
  }

  if (v5 && v6)
  {
    v9 = [v5 isEqual:v6];
LABEL_9:
    v8 = v9;
    goto LABEL_10;
  }

  if (([v5 isIdentity] & 1) == 0)
  {
    v9 = [v7 isIdentity];
    goto LABEL_9;
  }

LABEL_3:
  v8 = 1;
LABEL_10:

  return v8;
}

+ (id)matrixWithSIMDFloat4x4:(double)a3
{
  v5 = [[a1 alloc] initWithSIMDFloat4x4:{a2, a3, a4, a5}];

  return v5;
}

+ (id)matrixWithSIMDDouble4x4:(_OWORD *)a3
{
  v4 = [a1 alloc];
  v5 = a3[5];
  v11[4] = a3[4];
  v11[5] = v5;
  v6 = a3[7];
  v11[6] = a3[6];
  v11[7] = v6;
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  v8 = a3[3];
  v11[2] = a3[2];
  v11[3] = v8;
  v9 = [v4 initWithSIMDDouble4x4:v11];

  return v9;
}

- (PVMatrix44Double)init
{
  v2 = *(MEMORY[0x277D860A0] + 80);
  v7[4] = *(MEMORY[0x277D860A0] + 64);
  v7[5] = v2;
  v3 = *(MEMORY[0x277D860A0] + 112);
  v7[6] = *(MEMORY[0x277D860A0] + 96);
  v7[7] = v3;
  v4 = *(MEMORY[0x277D860A0] + 16);
  v7[0] = *MEMORY[0x277D860A0];
  v7[1] = v4;
  v5 = *(MEMORY[0x277D860A0] + 48);
  v7[2] = *(MEMORY[0x277D860A0] + 32);
  v7[3] = v5;
  return [(PVMatrix44Double *)self initWithSIMDDouble4x4:v7];
}

- (void)initWithSIMDFloat4x4:(double)a3
{
  v5 = [a1 init];
  v6 = v5;
  if (v5)
  {
    [v5 setSIMDFloat4x4:{a2, a3, a4, a5}];
  }

  return v6;
}

- (__n128)initWithSIMDDouble4x4:(uint64_t)a3
{
  v11.receiver = a1;
  v11.super_class = PVMatrix44Double;
  v4 = [(PVMatrix44Double *)&v11 init];
  if (v4)
  {
    v6 = *a3;
    v7 = *(a3 + 16);
    v8 = *(a3 + 48);
    v4[3] = *(a3 + 32);
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    result = *(a3 + 64);
    v9 = *(a3 + 80);
    v10 = *(a3 + 112);
    v4[7] = *(a3 + 96);
    v4[8] = v10;
    v4[5] = result;
    v4[6] = v9;
  }

  return result;
}

- (float64x2_t)setSIMDFloat4x4:(float32x4_t)a3
{
  a1[1] = vcvtq_f64_f32(*a2.f32);
  a1[2] = vcvt_hight_f64_f32(a2);
  a1[3] = vcvtq_f64_f32(*a3.f32);
  a1[4] = vcvt_hight_f64_f32(a3);
  a1[5] = vcvtq_f64_f32(*a4.f32);
  a1[6] = vcvt_hight_f64_f32(a4);
  result = vcvt_hight_f64_f32(a5);
  a1[7] = vcvtq_f64_f32(*a5.f32);
  a1[8] = result;
  return result;
}

- (BOOL)isFinite
{
  v2 = self[6];
  v7[4] = self[5];
  v7[5] = v2;
  v3 = self[8];
  v7[6] = self[7];
  v7[7] = v3;
  v4 = self[2];
  v7[0] = self[1];
  v7[1] = v4;
  v5 = self[4];
  v7[2] = self[3];
  v7[3] = v5;
  return pv_is_finite(v7);
}

- (BOOL)isIdentity
{
  v2 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
  v3 = vandq_s8(vandq_s8(vandq_s8(vcgeq_f64(v2, vabdq_f64(self[3], *(MEMORY[0x277D860A0] + 32))), vcgeq_f64(v2, vabdq_f64(self[1], *MEMORY[0x277D860A0]))), vandq_s8(vcgeq_f64(v2, vabdq_f64(self[5], *(MEMORY[0x277D860A0] + 64))), vcgeq_f64(v2, vabdq_f64(self[7], *(MEMORY[0x277D860A0] + 96))))), vandq_s8(vandq_s8(vcgeq_f64(v2, vabdq_f64(self[4], *(MEMORY[0x277D860A0] + 48))), vcgeq_f64(v2, vabdq_f64(self[2], *(MEMORY[0x277D860A0] + 16)))), vandq_s8(vcgeq_f64(v2, vabdq_f64(self[6], *(MEMORY[0x277D860A0] + 80))), vcgeq_f64(v2, vabdq_f64(self[8], *(MEMORY[0x277D860A0] + 112))))));
  return vandq_s8(v3, vdupq_laneq_s64(v3, 1)).u64[0] >> 63;
}

- (void)makeIdentity
{
  v2 = MEMORY[0x277D860A0];
  v3 = *(MEMORY[0x277D860A0] + 80);
  self[5] = *(MEMORY[0x277D860A0] + 64);
  self[6] = v3;
  v4 = v2[7];
  self[7] = v2[6];
  self[8] = v4;
  v5 = v2[1];
  self[1] = *v2;
  self[2] = v5;
  v6 = v2[3];
  self[3] = v2[2];
  self[4] = v6;
}

- (void)transpose
{
  v2 = &self[1];
  v4 = vld4q_f64(v2);
  v3 = &self[5];
  v5 = vld4q_f64(v3);
  self[1] = v4.val[0];
  self[2] = v5.val[0];
  self[3] = v4.val[1];
  self[4] = v5.val[1];
  self[5] = v4.val[2];
  self[6] = v5.val[2];
  self[7] = v4.val[3];
  self[8] = v5.val[3];
}

- (void)getTransformInfo:(_OWORD *)a3@<X8>
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  a3[4] = xmmword_260342820;
  a3[5] = unk_260342830;
  a3[6] = xmmword_260342840;
  a3[7] = unk_260342850;
  *a3 = pv_transform_info_identity;
  a3[1] = *algn_2603427F0;
  a3[2] = xmmword_260342800;
  a3[3] = unk_260342810;
  v5 = a1[6];
  v15[4] = a1[5];
  v15[5] = v5;
  v6 = a1[8];
  v15[6] = a1[7];
  v15[7] = v6;
  v7 = a1[2];
  v15[0] = a1[1];
  v15[1] = v7;
  v8 = a1[4];
  v15[2] = a1[3];
  v15[3] = v8;
  v9 = pv_transform_info_make(v15, a3);
  if (a2)
  {
    if (!v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [a1 compactDescription];
      v12 = [v10 stringWithFormat:@"Failed to get transformInfo for matrix: %p %@", a1, v11];

      v13 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = v12;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a2 = [v13 errorWithDomain:@"com.apple.provideo.PVMatrix" code:1 userInfo:v14];
    }
  }
}

- (PVMatrix44Double)initWithCoder:(id)a3
{
  v4 = a3;
  if (![v4 containsValueForKey:@"kPVMatrixKey"])
  {
    v5 = [[PCMatrix44Double alloc] initWithCoder:v4];

    if (v5)
    {
      v6 = [(PVMatrix44Double *)self initWithPCMatrix44Double:v5];
      goto LABEL_6;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPVMatrixKey"];

  if (!v5)
  {
    goto LABEL_7;
  }

  [(PCMatrix44Double *)v5 SIMDDouble4x4Value];
  v6 = [(PVMatrix44Double *)self initWithSIMDDouble4x4:&v9];
LABEL_6:
  self = v6;

  v7 = self;
LABEL_8:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCAE60];
  v4 = self[6];
  v14 = self[5];
  v15 = v4;
  v5 = self[8];
  v16 = self[7];
  v17 = v5;
  v6 = self[2];
  v10 = self[1];
  v11 = v6;
  v7 = self[4];
  v12 = self[3];
  v13 = v7;
  v8 = a3;
  v9 = [v3 valueWithSIMDDouble4x4:&v10];
  [v8 encodeObject:v9 forKey:{@"kPVMatrixKey", v10, v11, v12, v13, v14, v15, v16, v17}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self[6];
  v8[4] = self[5];
  v8[5] = v3;
  v4 = self[8];
  v8[6] = self[7];
  v8[7] = v4;
  v5 = self[2];
  v8[0] = self[1];
  v8[1] = v5;
  v6 = self[4];
  v8[2] = self[3];
  v8[3] = v6;
  [PVMatrix44Double matrixWithSIMDDouble4x4:v8];
  return objc_claimAutoreleasedReturnValue();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      [v4 SIMDDouble4x4];
      v5 = v17;
      v6 = v18;
      v7 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;
      v11 = v23;
      v12 = v24;
    }

    else
    {
      v11 = 0uLL;
      v12 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v5 = 0uLL;
      v6 = 0uLL;
    }

    v14 = vdupq_n_s64(0x3F1A36E2EB1C432DuLL);
    v15 = vandq_s8(vandq_s8(vandq_s8(vcgeq_f64(v14, vabdq_f64(self[3], v7)), vcgeq_f64(v14, vabdq_f64(self[1], v5))), vandq_s8(vcgeq_f64(v14, vabdq_f64(self[5], v9)), vcgeq_f64(v14, vabdq_f64(self[7], v11)))), vandq_s8(vandq_s8(vcgeq_f64(v14, vabdq_f64(self[4], v8)), vcgeq_f64(v14, vabdq_f64(self[2], v6))), vandq_s8(vcgeq_f64(v14, vabdq_f64(self[6], v10)), vcgeq_f64(v14, vabdq_f64(self[8], v12)))));
    v13 = vandq_s8(v15, vdupq_laneq_s64(v15, 1)).u64[0] >> 63;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[1].super.isa];
  v3 = [v35 hash];
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:*self[1]._anon_8];
  v4 = [v34 hash] ^ v3;
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[2].super.isa];
  v5 = [v33 hash];
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:*self[2]._anon_8];
  v6 = v4 ^ v5 ^ [v32 hash];
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[3].super.isa];
  v7 = [v31 hash];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:*self[3]._anon_8];
  v8 = v7 ^ [v30 hash];
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[4].super.isa];
  v9 = v6 ^ v8 ^ [v29 hash];
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:*self[4]._anon_8];
  v10 = [v28 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[5].super.isa];
  v12 = v10 ^ [v11 hash];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*self[5]._anon_8];
  v14 = v12 ^ [v13 hash];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[6].super.isa];
  v27 = v9 ^ v14 ^ [v15 hash];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*self[6]._anon_8];
  v17 = [v16 hash];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[7].super.isa];
  v19 = v17 ^ [v18 hash];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*self[7]._anon_8];
  v21 = v19 ^ [v20 hash];
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:*&self[8].super.isa];
  v23 = v21 ^ [v22 hash];
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:*self[8]._anon_8];
  v25 = v23 ^ [v24 hash];

  return v27 ^ v25;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = PVMatrix44Double;
  v4 = [(PVMatrix44Double *)&v8 description];
  v5 = [(PVMatrix44Double *)self compactDescription];
  v6 = [v3 initWithFormat:@"%@\n%@", v4, v5];

  return v6;
}

- (id)compactDescription
{
  v2 = self[6];
  v8[4] = self[5];
  v8[5] = v2;
  v3 = self[8];
  v8[6] = self[7];
  v8[7] = v3;
  v4 = self[2];
  v8[0] = self[1];
  v8[1] = v4;
  v5 = self[4];
  v8[2] = self[3];
  v8[3] = v5;
  v6 = NSStringFromSIMDDouble4x4(v8, 3);

  return v6;
}

- (id)extendedDescription
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  [(PVMatrix44Double *)self getTransformInfo:&v12];
  v3 = v12;
  v4 = MEMORY[0x277CCACA8];
  v5 = [(PVMatrix44Double *)self description];
  v6 = v5;
  if (v3)
  {
    v7 = [v3 localizedDescription];
    v8 = [v4 stringWithFormat:@"%@\nExtended Description Failed: %@", v6, v7];
  }

  else
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n    "];
    v11[4] = v17;
    v11[5] = v18;
    v11[6] = v19;
    v11[7] = v20;
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v11[3] = v16;
    v9 = NSStringFromPVTransformInfo(v11, 3);
    v8 = [v4 stringWithFormat:@"%@\n%@", v7, v9];
  }

  return v8;
}

- (__n128)SIMDDouble4x4
{
  v2 = *(a1 + 96);
  *(a2 + 64) = *(a1 + 80);
  *(a2 + 80) = v2;
  v3 = *(a1 + 128);
  *(a2 + 96) = *(a1 + 112);
  *(a2 + 112) = v3;
  v4 = *(a1 + 32);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v4;
  result = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setSIMDDouble4x4:(__int128 *)a3
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a1 + 48) = a3[2];
  *(a1 + 64) = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  result = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a1 + 112) = a3[6];
  *(a1 + 128) = v8;
  *(a1 + 80) = result;
  *(a1 + 96) = v7;
  return result;
}

+ (id)matrixWithPCMatrix44Double:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPCMatrix44Double:v4];

  return v5;
}

- (PVMatrix44Double)initWithPCMatrix44Double:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 pcMatrix];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[3];
    *&v15[32] = v6[2];
    v16 = v9;
    *v15 = v7;
    *&v15[16] = v8;
    v10 = v6[4];
    v11 = v6[5];
    v12 = v6[7];
    *&v18[16] = v6[6];
    *&v18[32] = v12;
    v17 = v10;
    *v18 = v11;
  }

  else
  {
    *&v18[40] = 0x3FF0000000000000;
    *v18 = 0x3FF0000000000000;
    *&v15[40] = 0x3FF0000000000000;
    *v15 = 0x3FF0000000000000;
    memset(&v15[8], 0, 32);
    v16 = 0u;
    v17 = 0u;
    memset(&v18[8], 0, 32);
  }

  v13 = [(PVMatrix44Double *)self initWithPCMatrix44d:v15];

  return v13;
}

- (id)pcMatrix44Double
{
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  [(PVMatrix44Double *)self SIMDDouble4x4];
  pv_PCMatrix44d_from_simd_double4x4(v4, &v5);
  v2 = [[PCMatrix44Double alloc] initWithPCMatrix:&v5];

  return v2;
}

- (void)setPCMatrix44Double:(id)a3
{
  v4 = a3;
  -[PVMatrix44Double setPCMatrix44d:](self, "setPCMatrix44d:", [v4 pcMatrix]);
}

+ (id)matrixWithPCMatrix44d:(const void *)a3
{
  v3 = [[a1 alloc] initWithPCMatrix44d:a3];

  return v3;
}

- (PVMatrix44Double)initWithPCMatrix44d:(const void *)a3
{
  v4 = [(PVMatrix44Double *)self init];
  v5 = v4;
  if (v4)
  {
    [(PVMatrix44Double *)v4 setPCMatrix44d:a3];
  }

  return v5;
}

@end