@interface OZSceneComposer
- (__n128)doIntersectionFrom:(uint64_t)a3 lookingAt:(uint64_t)a4 scene:(void *)a5;
@end

@implementation OZSceneComposer

- (__n128)doIntersectionFrom:(uint64_t)a3 lookingAt:(uint64_t)a4 scene:(void *)a5
{
  v43[4] = *MEMORY[0x277D85DE8];
  v5 = [a5 rootNode];
  v6 = *MEMORY[0x277CDBB50];
  v42[0] = *MEMORY[0x277CDBB60];
  v42[1] = v6;
  v43[0] = &unk_28732D658;
  v43[1] = MEMORY[0x277CBEC28];
  v7 = *MEMORY[0x277CDBB40];
  v42[2] = *MEMORY[0x277CDBB58];
  v42[3] = v7;
  v43[2] = &unk_28732D670;
  v43[3] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v9 = vmulq_f32(a2, a2);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmul_f32(*v9.f32, *v9.f32);
  v12 = vmulq_f32(vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, v11)).f32[0]), vdupq_n_s32(0x466A6000u));
  v13 = vaddq_f32(a1, v12);
  v11.i32[0] = a1.i32[2];
  v12.i32[0] = a1.i32[1];
  LODWORD(v14) = v13.i32[1];
  LODWORD(v15) = v13.i32[2];
  v16 = [v5 hitTestWithSegmentFromPoint:v8 toPoint:*a1.i64 options:{*v12.i64, *&v11, *v13.i64, v14, v15}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    v20 = 3.4028e38;
    __asm { FMOV            V0.4S, #1.0 }

    v33 = _Q0;
    v35 = 0u;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v37 + 1) + 8 * i) simdWorldCoordinates];
        v28 = vsubq_f32(v27, a1);
        v29 = vmulq_f32(v28, v28);
        v30 = v29.f32[2] + vaddv_f32(*v29.f32);
        if (v30 < v20)
        {
          *&v31 = v27.i64[0];
          *(&v31 + 1) = __PAIR64__(HIDWORD(v33), v27.u32[2]);
          v35 = v31;
          v20 = v30;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v18);
  }

  return v35;
}

@end