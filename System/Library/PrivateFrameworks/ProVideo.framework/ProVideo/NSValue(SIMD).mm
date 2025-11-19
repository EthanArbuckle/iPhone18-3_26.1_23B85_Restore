@interface NSValue(SIMD)
+ (id)valueWithSIMDDouble2:()SIMD;
+ (id)valueWithSIMDDouble3:()SIMD;
+ (id)valueWithSIMDDouble3x3:()SIMD;
+ (id)valueWithSIMDDouble4:()SIMD;
+ (id)valueWithSIMDDouble4x4:()SIMD;
+ (id)valueWithSIMDDouble8:()SIMD;
+ (id)valueWithSIMDFloat16:()SIMD;
+ (id)valueWithSIMDFloat2:()SIMD;
+ (id)valueWithSIMDFloat3:()SIMD;
+ (id)valueWithSIMDFloat3x3:()SIMD;
+ (id)valueWithSIMDFloat4:()SIMD;
+ (id)valueWithSIMDFloat4x4:()SIMD;
+ (id)valueWithSIMDFloat8:()SIMD;
+ (id)valueWithSIMDQuatD:()SIMD;
- (__n128)SIMDDouble3Value;
- (__n128)SIMDDouble3x3Value;
- (__n128)SIMDDouble4x4Value;
- (double)SIMDDouble2Value;
- (double)SIMDFloat2Value;
- (double)SIMDFloat3Value;
- (double)SIMDFloat3x3Value;
- (double)SIMDFloat4Value;
- (double)SIMDFloat4x4Value;
- (double)SIMDQuatFValue;
@end

@implementation NSValue(SIMD)

+ (id)valueWithSIMDFloat2:()SIMD
{
  v3[1] = *MEMORY[0x277D85DE8];
  *v3 = a1;
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:v3 objCType:"[2f]"];

  return v1;
}

+ (id)valueWithSIMDFloat3:()SIMD
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1.n128_u64[0];
  v4 = a1.n128_u32[2];
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:&v3 objCType:"[3f]"];

  return v1;
}

+ (id)valueWithSIMDFloat4:()SIMD
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:&v3 objCType:"[4f]"];

  return v1;
}

+ (id)valueWithSIMDFloat8:()SIMD
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:v6 objCType:"[8f]"];

  return v4;
}

+ (id)valueWithSIMDFloat16:()SIMD
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  v8[2] = v4;
  v8[3] = v3;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v8 objCType:"[16f]"];

  return v6;
}

+ (id)valueWithSIMDDouble2:()SIMD
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v1 = [MEMORY[0x277CCAE60] valueWithBytes:&v3 objCType:"[2d]"];

  return v1;
}

+ (id)valueWithSIMDDouble3:()SIMD
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 2);
  v6 = *a3;
  v7 = v3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v6 objCType:"[3d]"];

  return v4;
}

+ (id)valueWithSIMDDouble4:()SIMD
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:v6 objCType:"[4d]"];

  return v4;
}

+ (id)valueWithSIMDDouble8:()SIMD
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  v8[2] = v4;
  v8[3] = v3;
  v6 = [MEMORY[0x277CCAE60] valueWithBytes:v8 objCType:"[8d]"];

  return v6;
}

+ (id)valueWithSIMDFloat3x3:()SIMD
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = vuzp1q_s32(vuzp2q_s32(a2, a3), a2);
  *&v4 = vtrn1q_s32(a1, a2).u64[0];
  *(&v4 + 1) = __PAIR64__(a1.u32[1], a3.u32[0]);
  v3.i32[2] = a1.i32[2];
  v7[0] = v4;
  v7[1] = v3;
  v8 = a3.u32[2];
  v5 = [MEMORY[0x277CCAE60] valueWithBytes:v7 objCType:"[9f]"];

  return v5;
}

+ (id)valueWithSIMDDouble3x3:()SIMD
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3[1];
  v5 = a3[2];
  v4 = a3[3];
  v6 = a3[4];
  v7 = vzip1q_s64(*a3, v5);
  v8 = vzip2q_s64(v5, v6);
  v6.i64[1] = a3->i64[1];
  v11[0] = v7;
  v11[1] = v6;
  v11[2] = v8;
  v11[3] = vzip1q_s64(v3, v4);
  v12 = a3[5].i64[0];
  v9 = [MEMORY[0x277CCAE60] valueWithBytes:v11 objCType:"[9d]"];

  return v9;
}

+ (id)valueWithSIMDFloat4x4:()SIMD
{
  *&v4 = vzip1q_s32(a1, a2).u64[0];
  *(&v4 + 1) = vextq_s8(a3, vzip1q_s32(*&a3, a4), 8uLL).i64[1];
  *&v5 = vtrn2q_s32(a1, a2).u64[0];
  *(&v5 + 1) = __PAIR64__(a4.u32[1], a3.u32[1]);
  v10 = *MEMORY[0x277D85DE8];
  v9[0] = v4;
  v9[1] = v5;
  *&v4 = vzip2q_s32(a1, a2).u64[0];
  *(&v4 + 1) = __PAIR64__(a4.u32[2], a3.u32[2]);
  *&v6 = vuzp2q_s32(vuzp2q_s32(a1, a2), a1).u64[0];
  *(&v6 + 1) = __PAIR64__(a4.u32[3], a3.u32[3]);
  v9[2] = v4;
  v9[3] = v6;
  v7 = [MEMORY[0x277CCAE60] valueWithBytes:v9 objCType:"[16f]"];

  return v7;
}

+ (id)valueWithSIMDDouble4x4:()SIMD
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v3 = *(a3 + 16);
  v6 = *(a3 + 32);
  v5 = *(a3 + 48);
  v8 = *(a3 + 64);
  v7 = *(a3 + 80);
  v10 = *(a3 + 96);
  v9 = *(a3 + 112);
  v14 = vzip1q_s64(*a3, v6);
  v15 = v8.i64[0];
  v11 = vextq_s8(v10, v3, 8uLL);
  v10.i64[1] = v4.i64[1];
  v16 = v10;
  v17 = vzip2q_s64(v6, v8);
  v22 = *(&v9 + 1);
  *(&v9 + 1) = v3.i64[1];
  v18 = v11;
  v19 = vzip1q_s64(v5, v7);
  v20 = v9;
  v21 = vzip2q_s64(v5, v7);
  v12 = [MEMORY[0x277CCAE60] valueWithBytes:&v14 objCType:"[16d]"];

  return v12;
}

+ (id)valueWithSIMDQuatD:()SIMD
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = [a1 valueWithSIMDDouble4:v6];

  return v4;
}

- (double)SIMDFloat2Value
{
  v2[1] = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:8];
  return *v2;
}

- (double)SIMDFloat3Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:12];
  return v2[0];
}

- (double)SIMDFloat4Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:16];
  return v2[0];
}

- (double)SIMDDouble2Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:16];
  return v2[0];
}

- (__n128)SIMDDouble3Value
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 getValue:&v5 size:24];
  result = v5;
  v4.n128_u64[0] = v6;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

- (double)SIMDFloat3x3Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:36];
  return COERCE_DOUBLE(__PAIR64__(v2[3], v2[0]));
}

- (__n128)SIMDDouble3x3Value
{
  v9[9] = *MEMORY[0x277D85DE8];
  [a1 getValue:v9 size:72];
  result.n128_u64[0] = v9[0];
  *&v3 = v9[1];
  *&v4 = v9[2];
  *&v5 = v9[6];
  *&v6 = v9[7];
  result.n128_u64[1] = v9[3];
  *(&v3 + 1) = v9[4];
  *&v8 = v9[8];
  *(&v4 + 1) = v9[5];
  *a2 = result;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  *(a2 + 48) = v6;
  *(a2 + 64) = v4;
  *(a2 + 80) = v8;
  return result;
}

- (double)SIMDFloat4x4Value
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 getValue:&v2 size:64];
  return COERCE_DOUBLE(__PAIR64__(v3, v2));
}

- (__n128)SIMDDouble4x4Value
{
  v11[16] = *MEMORY[0x277D85DE8];
  [a1 getValue:v11 size:128];
  result.n128_u64[0] = v11[0];
  *&v3 = v11[1];
  *&v4 = v11[2];
  *&v5 = v11[3];
  *&v6 = v11[8];
  *&v7 = v11[9];
  *&v8 = v11[10];
  *&v9 = v11[11];
  result.n128_u64[1] = v11[4];
  *(&v6 + 1) = v11[12];
  *(&v3 + 1) = v11[5];
  *(&v7 + 1) = v11[13];
  *(&v4 + 1) = v11[6];
  *(&v8 + 1) = v11[14];
  *(&v5 + 1) = v11[7];
  *(&v9 + 1) = v11[15];
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  *(a2 + 80) = v8;
  *(a2 + 96) = v5;
  *(a2 + 112) = v9;
  return result;
}

- (double)SIMDQuatFValue
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:16];
  return v2[0];
}

@end