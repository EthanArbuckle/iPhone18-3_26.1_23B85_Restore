@interface NSArray(OZAdditions)
+ (uint64_t)oz_arrayWithSIMDFloat3x3:()OZAdditions;
+ (uint64_t)oz_arrayWithSIMDFloat4x4:()OZAdditions;
- (__n128)oz_SIMDFloat4x4;
- (double)oz_SIMDFloat3x3;
@end

@implementation NSArray(OZAdditions)

+ (uint64_t)oz_arrayWithSIMDFloat3x3:()OZAdditions
{
  v10[9] = *MEMORY[0x277D85DE8];
  v10[0] = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v10[1] = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v10[2] = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  HIDWORD(v3) = self.n128_u32[1];
  LODWORD(v3) = self.n128_u32[1];
  v10[3] = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  HIDWORD(v4) = a2.n128_u32[1];
  LODWORD(v4) = a2.n128_u32[1];
  v10[4] = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  HIDWORD(v5) = a3.n128_u32[1];
  LODWORD(v5) = a3.n128_u32[1];
  v10[5] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v10[6] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v10[7] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v10[8] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:9];
}

+ (uint64_t)oz_arrayWithSIMDFloat4x4:()OZAdditions
{
  v13[16] = *MEMORY[0x277D85DE8];
  v13[0] = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v13[1] = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v13[2] = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v13[3] = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  HIDWORD(v4) = self.n128_u32[1];
  LODWORD(v4) = self.n128_u32[1];
  v13[4] = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v13[5] = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  HIDWORD(v6) = a3.n128_u32[1];
  LODWORD(v6) = a3.n128_u32[1];
  v13[6] = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  HIDWORD(v7) = a4.n128_u32[1];
  LODWORD(v7) = a4.n128_u32[1];
  v13[7] = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v13[8] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v13[9] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v13[10] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v13[11] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v13[12] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[3]))}];
  v13[13] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v13[14] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v13[15] = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:16];
}

- (double)oz_SIMDFloat3x3
{
  [objc_msgSend(self objectAtIndexedSubscript:{0), "floatValue"}];
  v6 = v2;
  [objc_msgSend(self objectAtIndexedSubscript:{3), "floatValue"}];
  v5 = v3;
  [objc_msgSend(self objectAtIndexedSubscript:{6), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{1), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{4), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{7), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{2), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{5), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{8), "floatValue"}];
  return COERCE_DOUBLE(__PAIR64__(v5, v6));
}

- (__n128)oz_SIMDFloat4x4
{
  [objc_msgSend(self objectAtIndexedSubscript:{0), "floatValue"}];
  v10 = v2;
  [objc_msgSend(self objectAtIndexedSubscript:{4), "floatValue"}];
  v9 = v3;
  [objc_msgSend(self objectAtIndexedSubscript:{8), "floatValue"}];
  v8 = v4;
  [objc_msgSend(self objectAtIndexedSubscript:{12), "floatValue"}];
  *&v5 = __PAIR64__(v9, v10);
  *(&v5 + 1) = __PAIR64__(v6, v8);
  v11 = v5;
  [objc_msgSend(self objectAtIndexedSubscript:{1), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{5), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{9), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{13), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{2), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{6), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{10), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{14), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{3), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{7), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{11), "floatValue"}];
  [objc_msgSend(self objectAtIndexedSubscript:{15), "floatValue"}];
  return v11;
}

@end