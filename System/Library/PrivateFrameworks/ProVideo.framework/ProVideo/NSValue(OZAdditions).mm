@interface NSValue(OZAdditions)
+ (uint64_t)oz_valueWithCGSize:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDDouble2:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDDouble3:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDDouble3x3:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDDouble4x4:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDFloat2:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDFloat3:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDFloat3x3:()OZAdditions;
+ (uint64_t)oz_valueWithSIMDFloat4x4:()OZAdditions;
- (__n128)oz_SIMDDouble3Value;
- (__n128)oz_SIMDDouble3x3Value;
- (__n128)oz_SIMDDouble4x4Value;
- (__n64)oz_SIMDFloat3x3Value;
- (double)oz_CGSizeValue;
- (double)oz_SIMDDouble2Value;
- (double)oz_SIMDFloat2Value;
- (double)oz_SIMDFloat3Value;
- (double)oz_SIMDFloat4x4Value;
@end

@implementation NSValue(OZAdditions)

- (double)oz_CGSizeValue
{
  v2[2] = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:16];
  return *v2;
}

+ (uint64_t)oz_valueWithCGSize:()OZAdditions
{
  v3[2] = *MEMORY[0x277D85DE8];
  *v3 = a1;
  *&v3[1] = a2;
  return [MEMORY[0x277CCAE60] valueWithBytes:v3 objCType:"[2d]"];
}

- (double)oz_SIMDFloat2Value
{
  v2[1] = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:8];
  return *v2;
}

- (double)oz_SIMDDouble2Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:16];
  return v2[0];
}

+ (uint64_t)oz_valueWithSIMDFloat2:()OZAdditions
{
  v2[1] = *MEMORY[0x277D85DE8];
  *v2 = a1;
  return [MEMORY[0x277CCAE60] valueWithBytes:v2 objCType:"[2f]"];
}

+ (uint64_t)oz_valueWithSIMDDouble2:()OZAdditions
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  return [MEMORY[0x277CCAE60] valueWithBytes:&v2 objCType:"[2d]"];
}

- (double)oz_SIMDFloat3Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:12];
  return v2[0];
}

- (__n128)oz_SIMDDouble3Value
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 getValue:&v5 size:24];
  result = v5;
  v4.n128_u64[0] = v6;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

+ (uint64_t)oz_valueWithSIMDFloat3:()OZAdditions
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = a1.n128_u64[0];
  v3 = a1.n128_u32[2];
  return [MEMORY[0x277CCAE60] valueWithBytes:&v2 objCType:"[3f]"];
}

+ (uint64_t)oz_valueWithSIMDDouble3:()OZAdditions
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 2);
  v5 = *a3;
  v6 = v3;
  return [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"[3d]"];
}

- (__n64)oz_SIMDFloat3x3Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:36];
  result.n64_u32[0] = v2[0];
  result.n64_u32[1] = *(v2 | 0xC);
  return result;
}

- (__n128)oz_SIMDDouble3x3Value
{
  v9[9] = *MEMORY[0x277D85DE8];
  [a1 getValue:v9 size:72];
  result.n128_u64[0] = v9[0];
  *&v3 = v9[1];
  result.n128_u64[1] = v9[3];
  *(&v3 + 1) = v9[4];
  *&v5 = v9[6];
  *&v6 = v9[7];
  *&v7 = v9[2];
  *&v8 = v9[8];
  *(&v7 + 1) = v9[5];
  *a2 = result;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 80) = v8;
  return result;
}

+ (uint64_t)oz_valueWithSIMDFloat3x3:()OZAdditions
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vuzp1q_s32(vuzp2q_s32(a2, a3), a2);
  *&v4 = vtrn1q_s32(a1, a2).u64[0];
  *(&v4 + 1) = __PAIR64__(a1.u32[1], a3.u32[0]);
  v3.i32[2] = a1.i32[2];
  v6[0] = v4;
  v6[1] = v3;
  v7 = a3.u32[2];
  return [MEMORY[0x277CCAE60] valueWithBytes:v6 objCType:"[9f]"];
}

+ (uint64_t)oz_valueWithSIMDDouble3x3:()OZAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3[1];
  v4 = a3[2];
  v5 = a3[3];
  v6 = vzip1q_s64(*a3, v4);
  v7 = a3[4];
  v8 = vzip2q_s64(v4, v7);
  v7.i64[1] = a3->i64[1];
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  v10[3] = vzip1q_s64(v3, v5);
  v11 = a3[5].i64[0];
  return [MEMORY[0x277CCAE60] valueWithBytes:v10 objCType:"[9d]"];
}

- (double)oz_SIMDFloat4x4Value
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 getValue:&v2 size:64];
  return COERCE_DOUBLE(__PAIR64__(v3, v2));
}

- (__n128)oz_SIMDDouble4x4Value
{
  v11[16] = *MEMORY[0x277D85DE8];
  [a1 getValue:v11 size:128];
  result.n128_u64[0] = v11[0];
  *&v3 = v11[1];
  result.n128_u64[1] = v11[4];
  *&v5 = v11[8];
  *&v6 = v11[9];
  *(&v5 + 1) = v11[12];
  *(&v3 + 1) = v11[5];
  *(&v6 + 1) = v11[13];
  *&v7 = v11[2];
  *&v8 = v11[3];
  *(&v7 + 1) = v11[6];
  *&v9 = v11[10];
  *&v10 = v11[11];
  *(&v9 + 1) = v11[14];
  *(&v8 + 1) = v11[7];
  *(&v10 + 1) = v11[15];
  *a2 = result;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  *(a2 + 80) = v9;
  *(a2 + 96) = v8;
  *(a2 + 112) = v10;
  return result;
}

+ (uint64_t)oz_valueWithSIMDFloat4x4:()OZAdditions
{
  *&v4 = vzip1q_s32(a1, a2).u64[0];
  *(&v4 + 1) = vextq_s8(a3, vzip1q_s32(*&a3, a4), 8uLL).i64[1];
  *&v5 = vtrn2q_s32(a1, a2).u64[0];
  *(&v5 + 1) = __PAIR64__(a4.u32[1], a3.u32[1]);
  v9 = *MEMORY[0x277D85DE8];
  v8[0] = v4;
  v8[1] = v5;
  *&v4 = vzip2q_s32(a1, a2).u64[0];
  *(&v4 + 1) = __PAIR64__(a4.u32[2], a3.u32[2]);
  *&v6 = vuzp2q_s32(vuzp2q_s32(a1, a2), a1).u64[0];
  *(&v6 + 1) = __PAIR64__(a4.u32[3], a3.u32[3]);
  v8[2] = v4;
  v8[3] = v6;
  return [MEMORY[0x277CCAE60] valueWithBytes:v8 objCType:"[16f]"];
}

+ (uint64_t)oz_valueWithSIMDDouble4x4:()OZAdditions
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v3 = *(a3 + 1);
  v13 = *a3;
  v6 = *(a3 + 2);
  v5 = *(a3 + 3);
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);
  v14 = vzip1q_s64(v6, v7);
  v10 = *(a3 + 6);
  v9 = a3[7];
  v11 = vextq_s8(v10, v3, 8uLL);
  v10.i64[1] = v4.i64[1];
  v15 = v10;
  v16 = vzip2q_s64(v6, v7);
  v21 = *(&v9 + 1);
  *(&v9 + 1) = v3.i64[1];
  v17 = v11;
  v18 = vzip1q_s64(v5, v8);
  v19 = v9;
  v20 = vzip2q_s64(v5, v8);
  return [MEMORY[0x277CCAE60] valueWithBytes:&v13 objCType:"[16d]"];
}

@end