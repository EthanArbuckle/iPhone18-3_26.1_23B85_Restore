@interface NSArray(VG)
+ (id)vg_arrayWithNumbersFromFloat3:()VG;
+ (id)vg_arrayWithNumbersFromFloat4:()VG;
+ (id)vg_arrayWithNumbersFromFloatSpan:()VG;
+ (id)vg_arrayWithNumbersFromFloatVector:()VG;
+ (id)vg_arrayWithRowMajorNumbersFromFloat3x3:()VG;
+ (id)vg_arrayWithRowMajorNumbersFromFloat4x4:()VG;
- (__n128)vg_float3ByInvokingFloatValue;
- (__n128)vg_float3x3From1DArrayByInvokingFloatValue;
- (__n128)vg_float3x3FromRowMajorByInvokingFloatValue;
- (__n128)vg_float4ByInvokingFloatValue;
- (id)vg_arrayByInvokingBlock:()VG;
- (id)vg_compactArrayByInvokingBlock:()VG;
- (id)vg_dataByInvokingFloatValue;
- (void)vg_vectorByInvokingFloatValue;
- (void)vg_vectorFloat3ByInvokingFloatValue;
@end

@implementation NSArray(VG)

- (id)vg_arrayByInvokingBlock:()VG
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        [v5 addObject:{v10, v14}];
      }

      v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)vg_compactArrayByInvokingBlock:()VG
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (*(*(&v14 + 1) + 8 * i))
        {
          v10 = v4[2](v4);
          [v5 addObject:{v10, v14}];
        }
      }

      v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)vg_arrayWithNumbersFromFloatVector:()VG
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:(a3[1] - *a3) >> 2];
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    do
    {
      LODWORD(v6) = *v7;
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v5 addObject:v9];

      ++v7;
    }

    while (v7 != v8);
  }

  v10 = [self arrayWithArray:v5];

  return v10;
}

+ (id)vg_arrayWithNumbersFromFloatSpan:()VG
{
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a3 + 8)];
  v7 = *(a3 + 8);
  if (v7)
  {
    v8 = *a3;
    v9 = 4 * v7;
    do
    {
      LODWORD(v6) = *v8;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
      [v5 addObject:v10];

      ++v8;
      v9 -= 4;
    }

    while (v9);
  }

  v11 = [self arrayWithArray:v5];

  return v11;
}

- (void)vg_vectorByInvokingFloatValue
{
  v25 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::reserve(a2, [self count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v20 + 1) + 8 * i) floatValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 2;
          v15 = (v13 >> 2) + 1;
          if (v15 >> 62)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v17);
          }

          *(4 * v14) = v8;
          v11 = 4 * v14 + 4;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 4);
        }

        a2[1] = v11;
      }

      v5 = [selfCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)vg_vectorFloat3ByInvokingFloatValue
{
  v26 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE7reserveEm(a2, [self count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v21 + 1) + 8 * i) vg_float3ByInvokingFloatValue];
        v20 = v8;
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = (v10 - *a2) >> 4;
          if ((v12 + 1) >> 60)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v13 = v9 - *a2;
          v14 = v13 >> 3;
          if (v13 >> 3 <= (v12 + 1))
          {
            v14 = v12 + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv4_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a2, v15);
          }

          *(16 * v12) = v8;
          v11 = 16 * v12 + 16;
          v16 = a2[1] - *a2;
          v17 = (16 * v12 - v16);
          memcpy(v17, *a2, v16);
          v18 = *a2;
          *a2 = v17;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 16);
        }

        a2[1] = v11;
      }

      v5 = [selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)vg_arrayWithNumbersFromFloat3:()VG
{
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  HIDWORD(v4) = a2.n128_u32[1];
  LODWORD(v4) = a2.n128_u32[1];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v7 = [self arrayWithObjects:{v3, v5, v6, 0}];

  return v7;
}

+ (id)vg_arrayWithNumbersFromFloat4:()VG
{
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  HIDWORD(v4) = a2.n128_u32[1];
  LODWORD(v4) = a2.n128_u32[1];
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v8 = [self arrayWithObjects:{v3, v5, v6, v7, 0}];

  return v8;
}

+ (id)vg_arrayWithRowMajorNumbersFromFloat3x3:()VG
{
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  v5 = [self arrayWithObjects:{v21, v20, v19, 0}];
  HIDWORD(v6) = a2.n128_u32[1];
  LODWORD(v6) = a2.n128_u32[1];
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  HIDWORD(v8) = a3.n128_u32[1];
  LODWORD(v8) = a3.n128_u32[1];
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  HIDWORD(v10) = a4.n128_u32[1];
  LODWORD(v10) = a4.n128_u32[1];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v12 = [self arrayWithObjects:{v7, v9, v11, 0}];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v16 = [self arrayWithObjects:{v13, v14, v15, 0}];
  v17 = [self arrayWithObjects:{v5, v12, v16, 0}];

  return v17;
}

+ (id)vg_arrayWithRowMajorNumbersFromFloat4x4:()VG
{
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:a3.n128_f64[0]];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:a5.n128_f64[0]];
  v6 = [self arrayWithObjects:{v30, v29, v28, v27, 0}];
  HIDWORD(v7) = a2.n128_u32[1];
  LODWORD(v7) = a2.n128_u32[1];
  v26 = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  HIDWORD(v9) = a3.n128_u32[1];
  LODWORD(v9) = a3.n128_u32[1];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  HIDWORD(v11) = a4.n128_u32[1];
  LODWORD(v11) = a4.n128_u32[1];
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  HIDWORD(v13) = a5.n128_u32[1];
  LODWORD(v13) = a5.n128_u32[1];
  v24 = v12;
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v25 = [self arrayWithObjects:{v8, v10, v12, v23, 0}];
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[2]))}];
  v15 = [self arrayWithObjects:{v33, v32, v31, v14, 0}];
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[3]))}];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a5.n128_u32[1], a5.n128_u32[3]))}];
  v20 = [self arrayWithObjects:{v16, v17, v18, v19, 0}];
  v21 = [self arrayWithObjects:{v26, v25, v15, v20, 0}];

  return v21;
}

- (id)vg_dataByInvokingFloatValue
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB28] dataWithLength:{4 * objc_msgSend(self, "count")}];
  mutableBytes = [v2 mutableBytes];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        [*(*(&v11 + 1) + 8 * i) floatValue];
        *mutableBytes++ = v8;
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (__n128)vg_float3ByInvokingFloatValue
{
  v2 = [self objectAtIndexedSubscript:0];
  [v2 floatValue];
  v11 = v3;
  v4 = [self objectAtIndexedSubscript:1];
  [v4 floatValue];
  v10 = v5;
  v6 = [self objectAtIndexedSubscript:2];
  [v6 floatValue];
  v9 = v7;

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v10;
  result.n128_u32[2] = v9;
  return result;
}

- (__n128)vg_float4ByInvokingFloatValue
{
  v2 = [self objectAtIndexedSubscript:0];
  [v2 floatValue];
  v14 = v3;
  v4 = [self objectAtIndexedSubscript:1];
  [v4 floatValue];
  v13 = v5;
  v6 = [self objectAtIndexedSubscript:2];
  [v6 floatValue];
  v12 = v7;
  v8 = [self objectAtIndexedSubscript:3];
  [v8 floatValue];
  *&v9 = __PAIR64__(v13, v14);
  *(&v9 + 1) = __PAIR64__(v10, v12);
  v15 = v9;

  return v15;
}

- (__n128)vg_float3x3FromRowMajorByInvokingFloatValue
{
  v26 = [self objectAtIndexedSubscript:0];
  v25 = [v26 objectAtIndexedSubscript:0];
  [v25 floatValue];
  v18 = v2;
  v24 = [self objectAtIndexedSubscript:1];
  v23 = [v24 objectAtIndexedSubscript:0];
  [v23 floatValue];
  v17 = v3;
  v22 = [self objectAtIndexedSubscript:2];
  v21 = [v22 objectAtIndexedSubscript:0];
  [v21 floatValue];
  v16 = v4;
  v20 = [self objectAtIndexedSubscript:0];
  v19 = [v20 objectAtIndexedSubscript:1];
  [v19 floatValue];
  v5 = [self objectAtIndexedSubscript:1];
  v6 = [v5 objectAtIndexedSubscript:1];
  [v6 floatValue];
  v7 = [self objectAtIndexedSubscript:2];
  v8 = [v7 objectAtIndexedSubscript:1];
  [v8 floatValue];
  v9 = [self objectAtIndexedSubscript:0];
  v10 = [v9 objectAtIndexedSubscript:2];
  [v10 floatValue];
  v11 = [self objectAtIndexedSubscript:1];
  v12 = [v11 objectAtIndexedSubscript:2];
  [v12 floatValue];
  v13 = [self objectAtIndexedSubscript:2];
  v14 = [v13 objectAtIndexedSubscript:2];
  [v14 floatValue];

  result.n128_u32[0] = v18;
  result.n128_u32[1] = v17;
  result.n128_u32[2] = v16;
  return result;
}

- (__n128)vg_float3x3From1DArrayByInvokingFloatValue
{
  v2 = [self objectAtIndexedSubscript:0];
  [v2 floatValue];
  v17 = v3;
  v4 = [self objectAtIndexedSubscript:3];
  [v4 floatValue];
  v16 = v5;
  v6 = [self objectAtIndexedSubscript:6];
  [v6 floatValue];
  v15 = v7;
  v8 = [self objectAtIndexedSubscript:1];
  [v8 floatValue];
  v9 = [self objectAtIndexedSubscript:4];
  [v9 floatValue];
  v10 = [self objectAtIndexedSubscript:7];
  [v10 floatValue];
  v11 = [self objectAtIndexedSubscript:2];
  [v11 floatValue];
  v12 = [self objectAtIndexedSubscript:5];
  [v12 floatValue];
  v13 = [self objectAtIndexedSubscript:8];
  [v13 floatValue];

  result.n128_u32[0] = v17;
  result.n128_u32[1] = v16;
  result.n128_u32[2] = v15;
  return result;
}

@end