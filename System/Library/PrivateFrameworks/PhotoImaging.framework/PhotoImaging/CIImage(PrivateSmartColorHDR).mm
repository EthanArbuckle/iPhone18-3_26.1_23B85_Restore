@interface CIImage(PrivateSmartColorHDR)
- (id)smartColorHDRStatistics;
@end

@implementation CIImage(PrivateSmartColorHDR)

- (id)smartColorHDRStatistics
{
  v1 = MEMORY[0x1EEE9AC00](self);
  v89 = *MEMORY[0x1E69E9840];
  v2 = v1;
  context = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695F620];
  v85[0] = *MEMORY[0x1E695F870];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E695F920]];
  v85[1] = *MEMORY[0x1E695F830];
  v86[0] = v4;
  v86[1] = @"PISmartColorHDR-sat-histogram";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v6 = [v3 contextWithOptions:v5];

  [v2 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v11;
  v16 = v13;
  v17 = 4 * v11;
  v18 = [MEMORY[0x1E695DF88] dataWithLength:v17 * v13];
  bytes = [v18 bytes];
  mutableBytes = [v18 mutableBytes];
  v20 = *MEMORY[0x1E695F910];
  v76 = v6;
  v78 = v2;
  [v6 render:v2 toBitmap:mutableBytes rowBytes:v17 bounds:v20 format:0 colorSpace:{v8, v10, v12, v14}];
  bzero(v82, 0x400uLL);
  bzero(v81, 0x400uLL);
  v75 = &v73;
  bzero(v88, 0x400uLL);
  bzero(v87, 0x400uLL);
  bzero(v84, 0x400uLL);
  bzero(v83, 0x400uLL);
  if (v16)
  {
    v24 = 0;
    v25 = 1.0 / (v16 * v15);
    v26 = (bytes + 2);
    do
    {
      v27 = v26;
      for (i = v15; i; --i)
      {
        LOBYTE(v21) = *(v27 - 2);
        LOBYTE(v22) = *(v27 - 1);
        v29 = *&v21 / 255.0;
        v30 = *&v22 / 255.0;
        LOBYTE(v23) = *v27;
        v31 = *&v23 / 255.0;
        v32 = (v29 + v30 + v31) / 3.0;
        v21 = v29 * 255.0;
        v33 = llround(v21);
        v22 = v30 * 255.0;
        v34 = llround(v22);
        *&v22 = v25 + *&v87[4 * v34];
        v35 = llround(v31 * 255.0);
        *&v88[4 * v33] = v25 + *&v88[4 * v33];
        *&v21 = v25 + v84[v35];
        v23 = v32 * 255.0;
        *&v87[4 * v34] = LODWORD(v22);
        v36 = llround(v32 * 255.0);
        *&v22 = v83[v36];
        v84[v35] = *&v21;
        *&v21 = v25 + *&v22;
        v83[v36] = v25 + *&v22;
        v27 += 4;
      }

      ++v24;
      v26 += v17;
    }

    while (v24 != v16);
  }

  v37 = 0;
  __asm { FMOV            V1.4S, #1.0 }

  do
  {
    v43 = *&v83[v37];
    v44 = vabdq_f32(*&v88[v37 * 4], v43);
    v45 = vabdq_f32(*&v87[v37 * 4], v43);
    v46 = vabdq_f32(*&v84[v37], v43);
    *&v82[v37 * 4] = vminnmq_f32(vmaxnmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v44.f32), vcvtq_f64_f32(*v45.f32)), vcvtq_f64_f32(*v46.f32))), vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v44), vcvt_hight_f64_f32(v45)), vcvt_hight_f64_f32(v46))), 0), _Q1);
    *&v81[v37 * 4] = v45;
    v37 += 4;
  }

  while (v37 != 256);

  objc_autoreleasePoolPop(context);
  v47 = 0;
  v48 = 71362;
  v49 = 71362;
  do
  {
    *&v48 = *&v48 + *&v82[v47];
    *&v49 = *&v49 + *&v81[v47];
    v47 += 4;
  }

  while (v47 != 1024);
  v50 = 0;
  v51 = 0.0;
  v52 = 0.0;
  do
  {
    v52 = v52 + *&v82[v50];
    *&v88[v50] = v52 / *&v48;
    v51 = v51 + *&v81[v50];
    *&v87[v50] = v51 / *&v49;
    v50 += 4;
  }

  while (v50 != 1024);
  v53 = 0;
  v54 = 0.0;
  v55 = 0.0;
  do
  {
    v56 = *&v88[4 * v53];
    if (v56 >= 0.75 && v54 == 0.0)
    {
      v54 = v53 / 255.0;
    }

    if (v56 >= 0.98 && v55 == 0.0)
    {
      v55 = v53 / 255.0;
    }

    ++v53;
  }

  while (v53 != 256);
  v57 = 0;
  v58 = 0.0;
  do
  {
    if (*&v87[4 * v57] >= 0.98 && v58 == 0.0)
    {
      v58 = v57 / 255.0;
    }

    ++v57;
  }

  while (v57 != 256);
  v59 = 1.0;
  v60 = fmaxf(fminf(1.0 - v55, 1.0), 0.0);
  v61 = v54 >= 0.9 || v55 < 0.99;
  v62 = vabds_f32(0.5, v54);
  if (!v61)
  {
    v60 = v62;
  }

  if (v58 >= v55)
  {
    v59 = 2.0;
  }

  v63 = fminf(v60 * v59, 0.2);
  v79[0] = @"satPercentile75";
  v64 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v80[0] = v64;
  v79[1] = @"satPercentile98";
  *&v65 = v55;
  v66 = [MEMORY[0x1E696AD98] numberWithFloat:v65];
  v80[1] = v66;
  v79[2] = @"satPercentileG98";
  *&v67 = v58;
  v68 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
  v80[2] = v68;
  v79[3] = @"satAutoValue";
  *&v69 = v63;
  v70 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
  v80[3] = v70;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:4];

  return v71;
}

@end