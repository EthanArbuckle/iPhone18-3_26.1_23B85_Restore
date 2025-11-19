@interface NSValue(PC_SIMD)
+ (uint64_t)PCValueWithSIMDFloat3:()PC_SIMD;
+ (uint64_t)PCValueWithSIMDFloat3x3:()PC_SIMD;
+ (uint64_t)PCValueWithSIMDFloat4x4:()PC_SIMD;
- (double)PCSIMDFloat3Value;
- (double)PCSIMDFloat4x4Value;
@end

@implementation NSValue(PC_SIMD)

- (double)PCSIMDFloat3Value
{
  v3 = *MEMORY[0x277D85DE8];
  [a1 getValue:v2 size:12];
  return v2[0];
}

+ (uint64_t)PCValueWithSIMDFloat3x3:()PC_SIMD
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

+ (uint64_t)PCValueWithSIMDFloat3:()PC_SIMD
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = a1.n128_u64[0];
  v3 = a1.n128_u32[2];
  return [MEMORY[0x277CCAE60] valueWithBytes:&v2 objCType:"[3f]"];
}

+ (uint64_t)PCValueWithSIMDFloat4x4:()PC_SIMD
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

- (double)PCSIMDFloat4x4Value
{
  v4 = *MEMORY[0x277D85DE8];
  [a1 getValue:&v2 size:64];
  return COERCE_DOUBLE(__PAIR64__(v3, v2));
}

@end