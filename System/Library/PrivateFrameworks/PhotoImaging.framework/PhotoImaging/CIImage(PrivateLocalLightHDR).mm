@interface CIImage(PrivateLocalLightHDR)
- (id)localLightHDRStatisticsNoProxy;
@end

@implementation CIImage(PrivateLocalLightHDR)

- (id)localLightHDRStatisticsNoProxy
{
  v1 = MEMORY[0x1EEE9AC00](self);
  v66[256] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695F620];
  v3 = *MEMORY[0x1E695F830];
  v64[0] = *MEMORY[0x1E695F7F0];
  v64[1] = v3;
  v65[0] = MEMORY[0x1E695E110];
  v65[1] = @"PILocalLightHDR-stats";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
  v5 = [v2 contextWithOptions:v4];

  v6 = v1;
  v7 = v5;
  [v6 extent];
  v69 = CGRectIntegral(v68);
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  [v6 extent];
  v13 = v12;
  [v6 extent];
  v15 = v14;
  v16 = 4 * v13;
  v17 = [MEMORY[0x1E695DF88] dataWithLength:4 * v13 * v14];
  bytes = [v17 bytes];
  mutableBytes = [v17 mutableBytes];
  v50 = v6;
  v51 = v7;
  [v7 render:v6 toBitmap:mutableBytes rowBytes:4 * v13 bounds:*MEMORY[0x1E695F910] format:0 colorSpace:{x, y, width, height}];
  v20 = 0;
  v21 = 0;
  LODWORD(v22) = 0;
  v23 = vcvtas_u32_f32(v15 / 31.0);
  v59 = v13 - 1;
  v60 = vcvtas_u32_f32(v13 / 31.0);
  v55 = v15;
  v53 = v15 - 1;
  v24 = bytes + 2;
  v52 = 4 * v13 * v23;
  v54 = v23;
  do
  {
    v25 = 0;
    v57 = v21;
    v58 = v20;
    v26 = v21 * v23;
    if (v21 * v23 + v23 <= v53)
    {
      v27 = v21 * v23 + v23;
    }

    else
    {
      v27 = v55;
    }

    v22 = v22;
    v28 = v27 + v20;
    v56 = v24;
    do
    {
      v29 = v25 * v60;
      bzero(v66, 0x800uLL);
      v33 = v25 * v60 + v60;
      if (v33 >= v59)
      {
        v33 = v59;
      }

      if (v33 > v29)
      {
        v34 = v24;
        do
        {
          v35 = v34;
          v36 = v28;
          if (v27 > v26)
          {
            do
            {
              LOBYTE(v30) = *(v35 - 2);
              LOBYTE(v31) = *(v35 - 1);
              v31 = *&v31 / 255.0;
              LOBYTE(v32) = *v35;
              v32 = *&v32 / 255.0;
              v37 = llround((*&v30 / 255.0 + v31 + v32) / 3.0 * 255.0);
              v30 = 1.0 / (v33 * v27) + *&v66[v37];
              *&v66[v37] = v30;
              v35 += v16;
              --v36;
            }

            while (v36);
          }

          ++v29;
          v34 += 4;
        }

        while (v29 != v33);
      }

      area_light_stats_from_histogram(v66, &v63[80 * v22++]);
      ++v25;
      v24 += 4 * v60;
    }

    while (v25 != 31);
    v21 = v57 + 1;
    v23 = v54;
    v20 = v58 - v54;
    v24 = v56 + v52;
  }

  while (v57 != 30);

  v38 = 961;
  v39 = arealight_coeffs_from_stats(v63, 961);
  v40 = average_light_coeffs_from_stats(v63, 0x3C1uLL);
  v41 = v40;
  v42 = 0.0;
  v43 = 56;
  v44 = 0.0;
  do
  {
    v45 = *&v63[v43];
    if (v45 > v44)
    {
      v44 = *&v63[v43];
    }

    v42 = v42 + v45;
    v43 += 80;
    --v38;
  }

  while (v38);
  if (v44 + v42 / -961.0 <= 0.5)
  {
    v46 = v44;
  }

  else
  {
    v46 = v44 * 0.45;
  }

  v61[0] = @"lightMap";
  v61[1] = @"lightMapWidth";
  v62[0] = v39;
  v62[1] = &unk_1F471EE80;
  v61[2] = @"lightMapHeight";
  v61[3] = @"lightMapAvg";
  v62[2] = &unk_1F471EE80;
  v62[3] = v40;
  v61[4] = @"localAutoValue";
  if (fabs(v46) < 1.0e-10)
  {
    v46 = 0.0;
  }

  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
  v62[4] = v47;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:5];

  return v48;
}

@end