@interface SITraceableHelpers
+ (id)traceableTransform:(__n128)transform;
@end

@implementation SITraceableHelpers

+ (id)traceableTransform:(__n128)transform
{
  v39[4] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v38[0] = v29;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:a2.n128_f64[0]];
  v38[1] = v28;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:transform.n128_f64[0]];
  v38[2] = v27;
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:a4.n128_f64[0]];
  v38[3] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  v39[0] = v25;
  HIDWORD(v4) = self.n128_u32[1];
  LODWORD(v4) = self.n128_u32[1];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v37[0] = v24;
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v37[1] = v23;
  HIDWORD(v6) = transform.n128_u32[1];
  LODWORD(v6) = transform.n128_u32[1];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v37[2] = v22;
  HIDWORD(v7) = a4.n128_u32[1];
  LODWORD(v7) = a4.n128_u32[1];
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v37[3] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  v39[1] = v20;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[2]))}];
  v36[0] = v19;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v36[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[2]))}];
  v36[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  v36[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  v39[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(self.n128_u32[1], self.n128_u32[3]))}];
  v35[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[3]))}];
  v35[1] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(transform.n128_u32[1], transform.n128_u32[3]))}];
  v35[2] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[3]))}];
  v35[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v39[3] = v16;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v34;
}

@end