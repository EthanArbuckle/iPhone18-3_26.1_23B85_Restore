@interface NSArray(SIMD)
+ (id)arrayWithSIMDDouble2:()SIMD;
+ (id)arrayWithSIMDDouble3:()SIMD;
+ (id)arrayWithSIMDDouble3x3:()SIMD;
+ (id)arrayWithSIMDDouble4:()SIMD;
+ (id)arrayWithSIMDDouble4x4:()SIMD;
+ (id)arrayWithSIMDDouble8:()SIMD;
+ (id)arrayWithSIMDFloat16:()SIMD;
+ (id)arrayWithSIMDFloat2:()SIMD;
+ (id)arrayWithSIMDFloat3:()SIMD;
+ (id)arrayWithSIMDFloat3x3:()SIMD;
+ (id)arrayWithSIMDFloat4:()SIMD;
+ (id)arrayWithSIMDFloat4x4:()SIMD;
+ (id)arrayWithSIMDFloat8:()SIMD;
+ (id)arrayWithSIMDQuatD:()SIMD;
- (__n128)SIMDDouble2;
- (__n128)SIMDDouble3;
- (__n128)SIMDFloat2;
- (__n128)SIMDFloat3;
- (__n128)SIMDFloat3x3;
- (__n128)SIMDFloat4;
- (__n128)SIMDFloat4x4;
- (void)SIMDDouble3x3;
- (void)SIMDDouble4;
- (void)SIMDDouble4x4;
- (void)SIMDDouble8;
- (void)SIMDFloat16;
- (void)SIMDFloat8;
@end

@implementation NSArray(SIMD)

+ (id)arrayWithSIMDFloat2:()SIMD
{
  v6 = HIDWORD(self);
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v7[0] = v1;
  HIDWORD(v2) = v6;
  LODWORD(v2) = v6;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v4;
}

+ (id)arrayWithSIMDFloat3:()SIMD
{
  v8[3] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v8[0] = v1;
  HIDWORD(v2) = self.n128_u32[1];
  LODWORD(v2) = self.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v5;
}

+ (id)arrayWithSIMDFloat4:()SIMD
{
  v9[4] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v9[0] = v1;
  HIDWORD(v2) = self.n128_u32[1];
  LODWORD(v2) = self.n128_u32[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v9[1] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[3]))}];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  return v6;
}

+ (id)arrayWithSIMDFloat8:()SIMD
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = *a3;
  v16 = a3[1];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v17[0] = v3;
  HIDWORD(v4) = DWORD1(v15);
  LODWORD(v4) = DWORD1(v15);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v17[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v15), DWORD2(v15)))}];
  v17[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v15), HIDWORD(v15)))}];
  v17[3] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:*&v16];
  v17[4] = v8;
  HIDWORD(v9) = DWORD1(v16);
  LODWORD(v9) = DWORD1(v16);
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v17[5] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v16), DWORD2(v16)))}];
  v17[6] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v16), HIDWORD(v16)))}];
  v17[7] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];

  return v13;
}

+ (id)arrayWithSIMDFloat16:()SIMD
{
  v28[16] = *MEMORY[0x277D85DE8];
  v26 = a3[2];
  v27 = a3[3];
  v24 = *a3;
  v25 = a3[1];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v28[0] = v23;
  HIDWORD(v3) = DWORD1(v24);
  LODWORD(v3) = DWORD1(v24);
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v28[1] = v22;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24), DWORD2(v24)))}];
  v28[2] = v21;
  *&v24 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v24), HIDWORD(v24)))}];
  v28[3] = v24;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:*&v25];
  v28[4] = v20;
  HIDWORD(v4) = DWORD1(v25);
  LODWORD(v4) = DWORD1(v25);
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v28[5] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v25), DWORD2(v25)))}];
  v28[6] = v18;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v25), HIDWORD(v25)))}];
  v28[7] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:*&v26];
  v28[8] = v6;
  HIDWORD(v7) = DWORD1(v26);
  LODWORD(v7) = DWORD1(v26);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v28[9] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v26), DWORD2(v26)))}];
  v28[10] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v26), HIDWORD(v26)))}];
  v28[11] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:*&v27];
  v28[12] = v11;
  HIDWORD(v12) = DWORD1(v27);
  LODWORD(v12) = DWORD1(v27);
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v28[13] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v27), DWORD2(v27)))}];
  v28[14] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v27), HIDWORD(v27)))}];
  v28[15] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:16];

  return v16;
}

+ (id)arrayWithSIMDDouble2:()SIMD
{
  v5 = self.n128_f64[1];
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:self.n128_u64[0]];
  v6[0] = v1;
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v3;
}

+ (id)arrayWithSIMDDouble3:()SIMD
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v3 = a3[2];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v9 + 1)];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v3];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v7;
}

+ (id)arrayWithSIMDDouble4:()SIMD
{
  v11[4] = *MEMORY[0x277D85DE8];
  v9 = *a3;
  *v10 = a3[1];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v11[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v9 + 1)];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v10[0]];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v10[1]];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  return v7;
}

+ (id)arrayWithSIMDDouble8:()SIMD
{
  v17[8] = *MEMORY[0x277D85DE8];
  v15 = a3[2];
  *v16 = a3[3];
  v13 = *a3;
  v14 = a3[1];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v17[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v13 + 1)];
  v17[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*&v14];
  v17[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v14 + 1)];
  v17[3] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*&v15];
  v17[4] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v15 + 1)];
  v17[5] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v16[0]];
  v17[6] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v16[1]];
  v17[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];

  return v11;
}

+ (id)arrayWithSIMDFloat3x3:()SIMD
{
  v20[9] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v20[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v20[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v20[2] = v5;
  HIDWORD(v6) = self.n128_u32[1];
  LODWORD(v6) = self.n128_u32[1];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v20[3] = v7;
  HIDWORD(v8) = a2.n128_u32[1];
  LODWORD(v8) = a2.n128_u32[1];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v20[4] = v9;
  HIDWORD(v10) = a3.n128_u32[1];
  LODWORD(v10) = a3.n128_u32[1];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v20[5] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v20[6] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v20[7] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v20[8] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:9];

  return v15;
}

+ (id)arrayWithSIMDDouble3x3:()SIMD
{
  v15[9] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{a3[4], v4}];
  v15[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3[8]];
  v15[2] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3[1]];
  v15[3] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3[5]];
  v15[4] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3[9]];
  v15[5] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3[2]];
  v15[6] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3[6]];
  v15[7] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3[10]];
  v15[8] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:9];

  return v13;
}

+ (id)arrayWithSIMDFloat4x4:()SIMD
{
  v30[16] = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v30[0] = v25;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v30[1] = v24;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v30[2] = v23;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  v30[3] = v22;
  HIDWORD(v4) = self.n128_u32[1];
  LODWORD(v4) = self.n128_u32[1];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v30[4] = v21;
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v30[5] = v20;
  HIDWORD(v6) = a3.n128_u32[1];
  LODWORD(v6) = a3.n128_u32[1];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v30[6] = v19;
  HIDWORD(v7) = a4.n128_u32[1];
  LODWORD(v7) = a4.n128_u32[1];
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v30[7] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v30[8] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v30[9] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v30[10] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v30[11] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[3]))}];
  v30[12] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v30[13] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v30[14] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v30[15] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:16];

  return v17;
}

+ (id)arrayWithSIMDDouble4x4:()SIMD
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:*a3];
  v22[0] = v21;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:a3[4]];
  v22[1] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a3[8]];
  v22[2] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a3[12]];
  v22[3] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:a3[1]];
  v22[4] = v17;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a3[5]];
  v22[5] = v16;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a3[9]];
  v22[6] = v15;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3[13]];
  v22[7] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3[2]];
  v22[8] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3[6]];
  v22[9] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3[10]];
  v22[10] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3[14]];
  v22[11] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3[3]];
  v22[12] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3[7]];
  v22[13] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3[11]];
  v22[14] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3[15]];
  v22[15] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:16];

  return v13;
}

+ (id)arrayWithSIMDQuatD:()SIMD
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v4 = [self arrayWithSIMDDouble4:v6];

  return v4;
}

- (__n128)SIMDFloat2
{
  selfCopy = self;
  v2 = [selfCopy objectAtIndexedSubscript:0];
  [v2 floatValue];
  v8 = v3;
  v4 = [selfCopy objectAtIndexedSubscript:1];

  [v4 floatValue];
  v5 = v8;
  DWORD1(v5) = v6;
  v9 = v5;

  return v9;
}

- (__n128)SIMDFloat3
{
  selfCopy = self;
  v2 = [selfCopy objectAtIndexedSubscript:0];
  [v2 floatValue];
  v11 = v3;
  v4 = [selfCopy objectAtIndexedSubscript:1];
  [v4 floatValue];
  v10 = v5;
  v6 = [selfCopy objectAtIndexedSubscript:2];

  [v6 floatValue];
  v9 = v7;

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v10;
  result.n128_u32[2] = v9;
  return result;
}

- (__n128)SIMDFloat4
{
  selfCopy = self;
  v2 = [selfCopy objectAtIndexedSubscript:0];
  [v2 floatValue];
  v14 = v3;
  v4 = [selfCopy objectAtIndexedSubscript:1];
  [v4 floatValue];
  v13 = v5;
  v6 = [selfCopy objectAtIndexedSubscript:2];
  [v6 floatValue];
  v12 = v7;
  v8 = [selfCopy objectAtIndexedSubscript:3];

  [v8 floatValue];
  *&v9 = __PAIR64__(v13, v14);
  *(&v9 + 1) = __PAIR64__(v10, v12);
  v15 = v9;

  return v15;
}

- (void)SIMDFloat8
{
  selfCopy = self;
  v28 = [selfCopy objectAtIndexedSubscript:0];
  [v28 floatValue];
  v27 = v4;
  v5 = [selfCopy objectAtIndexedSubscript:1];
  [v5 floatValue];
  v26 = v6;
  v7 = [selfCopy objectAtIndexedSubscript:2];
  [v7 floatValue];
  v25 = v8;
  v9 = [selfCopy objectAtIndexedSubscript:3];
  [v9 floatValue];
  v24 = v10;
  v11 = [selfCopy objectAtIndexedSubscript:4];
  [v11 floatValue];
  v23 = v12;
  v13 = [selfCopy objectAtIndexedSubscript:5];
  [v13 floatValue];
  v22 = v14;
  v15 = [selfCopy objectAtIndexedSubscript:6];
  [v15 floatValue];
  v21 = v16;
  v17 = [selfCopy objectAtIndexedSubscript:7];

  [v17 floatValue];
  *&v18 = __PAIR64__(v22, v23);
  *(&v18 + 1) = __PAIR64__(v19, v21);
  *&v20 = __PAIR64__(v26, v27);
  *(&v20 + 1) = __PAIR64__(v24, v25);
  *a2 = v20;
  a2[1] = v18;
}

- (void)SIMDFloat16
{
  selfCopy = self;
  v54 = [selfCopy objectAtIndexedSubscript:0];
  [v54 floatValue];
  v48 = v4;
  v53 = [selfCopy objectAtIndexedSubscript:1];
  [v53 floatValue];
  v46 = v5;
  v52 = [selfCopy objectAtIndexedSubscript:2];
  [v52 floatValue];
  v44 = v6;
  v51 = [selfCopy objectAtIndexedSubscript:3];
  [v51 floatValue];
  v43 = v7;
  v50 = [selfCopy objectAtIndexedSubscript:4];
  [v50 floatValue];
  v42 = v8;
  v49 = [selfCopy objectAtIndexedSubscript:5];
  [v49 floatValue];
  v41 = v9;
  v47 = [selfCopy objectAtIndexedSubscript:6];
  [v47 floatValue];
  v40 = v10;
  v45 = [selfCopy objectAtIndexedSubscript:7];
  [v45 floatValue];
  v39 = v11;
  v12 = [selfCopy objectAtIndexedSubscript:8];
  [v12 floatValue];
  v38 = v13;
  v14 = [selfCopy objectAtIndexedSubscript:9];
  [v14 floatValue];
  v37 = v15;
  v16 = [selfCopy objectAtIndexedSubscript:10];
  [v16 floatValue];
  v36 = v17;
  v18 = [selfCopy objectAtIndexedSubscript:11];
  [v18 floatValue];
  v35 = v19;
  v20 = [selfCopy objectAtIndexedSubscript:12];
  [v20 floatValue];
  v34 = v21;
  v22 = [selfCopy objectAtIndexedSubscript:13];
  [v22 floatValue];
  v33 = v23;
  v24 = [selfCopy objectAtIndexedSubscript:14];
  [v24 floatValue];
  v32 = v25;
  v26 = [selfCopy objectAtIndexedSubscript:15];

  [v26 floatValue];
  *&v27 = __PAIR64__(v33, v34);
  *(&v27 + 1) = __PAIR64__(v28, v32);
  v29 = v27;
  *&v30 = __PAIR64__(v46, v48);
  *(&v30 + 1) = __PAIR64__(v43, v44);
  *&v27 = __PAIR64__(v41, v42);
  *(&v27 + 1) = __PAIR64__(v39, v40);
  *&v31 = __PAIR64__(v37, v38);
  *(&v31 + 1) = __PAIR64__(v35, v36);
  *a2 = v30;
  a2[1] = v27;
  a2[2] = v31;
  a2[3] = v29;
}

- (__n128)SIMDDouble2
{
  selfCopy = self;
  v2 = [selfCopy objectAtIndexedSubscript:0];
  [v2 doubleValue];
  v8 = v3;
  v4 = [selfCopy objectAtIndexedSubscript:1];

  [v4 doubleValue];
  *&v5 = v8;
  *(&v5 + 1) = v6;
  v9 = v5;

  return v9;
}

- (__n128)SIMDDouble3
{
  selfCopy = self;
  v4 = [selfCopy objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v13 = v5;
  v6 = [selfCopy objectAtIndexedSubscript:1];
  [v6 doubleValue];
  v12 = v7;
  v8 = [selfCopy objectAtIndexedSubscript:2];

  [v8 doubleValue];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)SIMDDouble4
{
  selfCopy = self;
  v16 = [selfCopy objectAtIndexedSubscript:0];
  [v16 doubleValue];
  v15 = v4;
  v5 = [selfCopy objectAtIndexedSubscript:1];
  [v5 doubleValue];
  v14 = v6;
  v7 = [selfCopy objectAtIndexedSubscript:2];
  [v7 doubleValue];
  v13 = v8;
  v9 = [selfCopy objectAtIndexedSubscript:3];

  [v9 doubleValue];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)SIMDDouble8
{
  selfCopy = self;
  v30 = [selfCopy objectAtIndexedSubscript:0];
  [v30 doubleValue];
  v29 = v4;
  v5 = [selfCopy objectAtIndexedSubscript:1];
  [v5 doubleValue];
  v28 = v6;
  v7 = [selfCopy objectAtIndexedSubscript:2];
  [v7 doubleValue];
  v27 = v8;
  v9 = [selfCopy objectAtIndexedSubscript:3];
  [v9 doubleValue];
  v26 = v10;
  v11 = [selfCopy objectAtIndexedSubscript:4];
  [v11 doubleValue];
  v25 = v12;
  v13 = [selfCopy objectAtIndexedSubscript:5];
  [v13 doubleValue];
  v24 = v14;
  v15 = [selfCopy objectAtIndexedSubscript:6];
  [v15 doubleValue];
  v23 = v16;
  v17 = [selfCopy objectAtIndexedSubscript:7];

  [v17 doubleValue];
  *&v18 = v23;
  *(&v18 + 1) = v19;
  *&v20 = v29;
  *(&v20 + 1) = v28;
  *&v21 = v27;
  *(&v21 + 1) = v26;
  *&v22 = v25;
  *(&v22 + 1) = v24;
  *a2 = v20;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v18;
}

- (__n128)SIMDFloat3x3
{
  selfCopy = self;
  v2 = [selfCopy objectAtIndexedSubscript:0];
  [v2 floatValue];
  v17 = v3;
  v4 = [selfCopy objectAtIndexedSubscript:1];
  [v4 floatValue];
  v5 = [selfCopy objectAtIndexedSubscript:2];
  [v5 floatValue];
  v6 = [selfCopy objectAtIndexedSubscript:3];
  [v6 floatValue];
  v16 = v7;
  v8 = [selfCopy objectAtIndexedSubscript:4];
  [v8 floatValue];
  v9 = [selfCopy objectAtIndexedSubscript:5];
  [v9 floatValue];
  v10 = [selfCopy objectAtIndexedSubscript:6];
  [v10 floatValue];
  v15 = v11;
  v12 = [selfCopy objectAtIndexedSubscript:7];
  [v12 floatValue];
  v13 = [selfCopy objectAtIndexedSubscript:8];

  [v13 floatValue];
  result.n128_u32[0] = v17;
  result.n128_u32[1] = v16;
  result.n128_u32[2] = v15;
  return result;
}

- (void)SIMDDouble3x3
{
  selfCopy = self;
  v32 = [selfCopy objectAtIndexedSubscript:0];
  [v32 doubleValue];
  v31 = v4;
  v5 = [selfCopy objectAtIndexedSubscript:1];
  [v5 doubleValue];
  v30 = v6;
  v7 = [selfCopy objectAtIndexedSubscript:2];
  [v7 doubleValue];
  v29 = v8;
  v9 = [selfCopy objectAtIndexedSubscript:3];
  [v9 doubleValue];
  v28 = v10;
  v11 = [selfCopy objectAtIndexedSubscript:4];
  [v11 doubleValue];
  v27 = v12;
  v13 = [selfCopy objectAtIndexedSubscript:5];
  [v13 doubleValue];
  v26 = v14;
  v15 = [selfCopy objectAtIndexedSubscript:6];
  [v15 doubleValue];
  v25 = v16;
  v17 = [selfCopy objectAtIndexedSubscript:7];
  [v17 doubleValue];
  v24 = v18;
  v19 = [selfCopy objectAtIndexedSubscript:8];

  [v19 doubleValue];
  *&v20 = v31;
  *(&v20 + 1) = v28;
  *&v21 = v30;
  *(&v21 + 1) = v27;
  *&v22 = v29;
  *(&v22 + 1) = v26;
  *a2 = v20;
  a2[1] = v25;
  a2[2] = v21;
  a2[3] = v24;
  a2[4] = v22;
  a2[5] = v23;
}

- (__n128)SIMDFloat4x4
{
  selfCopy = self;
  v26 = [selfCopy objectAtIndexedSubscript:0];
  [v26 floatValue];
  v27 = v2;
  v25 = [selfCopy objectAtIndexedSubscript:1];
  [v25 floatValue];
  v24 = [selfCopy objectAtIndexedSubscript:2];
  [v24 floatValue];
  v23 = [selfCopy objectAtIndexedSubscript:3];
  [v23 floatValue];
  v22 = [selfCopy objectAtIndexedSubscript:4];
  [v22 floatValue];
  v19 = v3;
  v21 = [selfCopy objectAtIndexedSubscript:5];
  [v21 floatValue];
  v20 = [selfCopy objectAtIndexedSubscript:6];
  [v20 floatValue];
  v4 = [selfCopy objectAtIndexedSubscript:7];
  [v4 floatValue];
  v5 = [selfCopy objectAtIndexedSubscript:8];
  [v5 floatValue];
  v18 = v6;
  v7 = [selfCopy objectAtIndexedSubscript:9];
  [v7 floatValue];
  v8 = [selfCopy objectAtIndexedSubscript:10];
  [v8 floatValue];
  v9 = [selfCopy objectAtIndexedSubscript:11];
  [v9 floatValue];
  v10 = [selfCopy objectAtIndexedSubscript:12];
  [v10 floatValue];
  v17 = v11;
  v12 = [selfCopy objectAtIndexedSubscript:13];
  [v12 floatValue];
  v13 = [selfCopy objectAtIndexedSubscript:14];
  [v13 floatValue];
  v14 = [selfCopy objectAtIndexedSubscript:15];

  [v14 floatValue];
  *&v15 = __PAIR64__(v19, v27);
  *(&v15 + 1) = __PAIR64__(v17, v18);
  v28 = v15;

  return v28;
}

- (void)SIMDDouble4x4
{
  selfCopy = self;
  v58 = [selfCopy objectAtIndexedSubscript:0];
  [v58 doubleValue];
  v52 = v4;
  v57 = [selfCopy objectAtIndexedSubscript:1];
  [v57 doubleValue];
  v50 = v5;
  v56 = [selfCopy objectAtIndexedSubscript:2];
  [v56 doubleValue];
  v49 = v6;
  v55 = [selfCopy objectAtIndexedSubscript:3];
  [v55 doubleValue];
  v48 = v7;
  v54 = [selfCopy objectAtIndexedSubscript:4];
  [v54 doubleValue];
  v46 = v8;
  v53 = [selfCopy objectAtIndexedSubscript:5];
  [v53 doubleValue];
  v45 = v9;
  v51 = [selfCopy objectAtIndexedSubscript:6];
  [v51 doubleValue];
  v44 = v10;
  v47 = [selfCopy objectAtIndexedSubscript:7];
  [v47 doubleValue];
  v43 = v11;
  v12 = [selfCopy objectAtIndexedSubscript:8];
  [v12 doubleValue];
  v42 = v13;
  v14 = [selfCopy objectAtIndexedSubscript:9];
  [v14 doubleValue];
  v41 = v15;
  v16 = [selfCopy objectAtIndexedSubscript:10];
  [v16 doubleValue];
  v40 = v17;
  v18 = [selfCopy objectAtIndexedSubscript:11];
  [v18 doubleValue];
  v39 = v19;
  v20 = [selfCopy objectAtIndexedSubscript:12];
  [v20 doubleValue];
  v38 = v21;
  v22 = [selfCopy objectAtIndexedSubscript:13];
  [v22 doubleValue];
  v37 = v23;
  v24 = [selfCopy objectAtIndexedSubscript:14];
  [v24 doubleValue];
  v36 = v25;
  v26 = [selfCopy objectAtIndexedSubscript:15];

  [v26 doubleValue];
  *&v27 = v52;
  *(&v27 + 1) = v46;
  *&v29 = v41;
  *&v28 = v42;
  *&v30 = v39;
  *(&v28 + 1) = v38;
  *&v31 = v50;
  *(&v31 + 1) = v45;
  *(&v29 + 1) = v37;
  *&v32 = v49;
  *(&v32 + 1) = v44;
  *&v33 = v40;
  *(&v33 + 1) = v36;
  *(&v30 + 1) = v34;
  *&v35 = v48;
  *(&v35 + 1) = v43;
  *a2 = v27;
  a2[1] = v28;
  a2[2] = v31;
  a2[3] = v29;
  a2[4] = v32;
  a2[5] = v33;
  a2[6] = v35;
  a2[7] = v30;
}

@end