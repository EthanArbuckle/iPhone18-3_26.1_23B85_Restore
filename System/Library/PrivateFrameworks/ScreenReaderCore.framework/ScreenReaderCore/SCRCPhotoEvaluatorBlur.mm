@interface SCRCPhotoEvaluatorBlur
+ (id)detect:(id)a3 inRect:(CGRect)a4;
@end

@implementation SCRCPhotoEvaluatorBlur

+ (id)detect:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v86 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (detect_inRect__onceToken != -1)
  {
    +[SCRCPhotoEvaluatorBlur detect:inRect:];
  }

  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  if (CGRectIsEmpty(v88) || (v89.origin.x = x, v89.origin.y = y, v89.size.width = width, v89.size.height = height, CGRectIsNull(v89)) || (v90.origin.x = x, v90.origin.y = y, v90.size.width = width, v90.size.height = height, CGRectIsInfinite(v90)))
  {
    v10 = [a1 detect:v9];
    goto LABEL_7;
  }

  v12 = [v9 width];
  v13 = [v9 data];
  v14 = [v9 bytesPerPixel];
  v15 = [v9 width];
  [v9 height];
  v76[2] = v76;
  v16 = v15 - width;
  if (v16 >= x)
  {
    v16 = x;
  }

  if (x >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = (MEMORY[0x28223BE20])();
  v24 = (v76 - v22);
  v85 = v15;
  v77 = v9;
  if (v25 < 1)
  {
    v42 = 0;
LABEL_23:
    v76[0] = v42;
    v76[1] = v76;
    v44 = vcvtd_n_f64_s64(v18 / 15 * (v15 / 15), 2uLL);
    if (v44 < 150.0)
    {
      v44 = 150.0;
    }

    v45 = v44;
    v46 = (MEMORY[0x28223BE20])();
    MEMORY[0x28223BE20](v46);
    v52 = v76 - v51;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    if ((v15 + 14) < 0x1D)
    {
      v56 = 1;
    }

    else
    {
      v56 = v48;
    }

    v78 = v56;
    v57 = (v56 - 1);
    v81 = v50;
    v58 = v50;
    v59 = *(v47 + 808);
    v79 = v49;
    do
    {
      v60 = 0;
      v82 = v49 + 8 * v53;
      v80 = v53;
      v61 = v53 * v78;
      do
      {
        if (v45 < 1)
        {
          v67 = 0;
        }

        else
        {
          v83 = v60;
          v84 = v54;
          v62 = 0;
          v63 = v60 * v81;
          do
          {
            v64 = (rand() / v59 * v57 + 1.0);
            v65 = (v61 + v64 + (v63 + (rand() / v59 * v58)) * v85) * v14;
            v66 = ((21846 * (*(v13 + v65 + 1) + *(v13 + v65) + *(v13 + v65 + 2))) >> 16) - ((21846 * (*(v13 + v65 - v14 + 1) + *(v13 + v65 - v14) + *(v13 + v65 - v14 + 2))) >> 16);
            *&v52[8 * v62] = v66;
            v55 += v66;
            ++v62;
          }

          while (v45 != v62);
          v67 = 0;
          v68 = v45;
          v69 = v52;
          do
          {
            v70 = *v69++;
            v67 = ((v70 - v55 / v45) * (v70 - v55 / v45) + v67);
            --v68;
          }

          while (v68);
          v60 = v83;
          v54 = v84;
        }

        v71 = v67 / v45;
        *(v82 + 120 * v60) = v71;
        v54 += v71;
        ++v60;
      }

      while (v60 != 15);
      v49 = v79;
      v53 = v80 + 1;
    }

    while (v80 != 14);
    v9 = v77;
    if (v76[0] > 59)
    {
      goto LABEL_45;
    }

    v72 = 0;
    v73 = 0;
    do
    {
      if (*(v79 + v72) < 100)
      {
        ++v73;
      }

      v72 += 8;
    }

    while (v72 != 1800);
    v43 = v73 / 225.0;
    if (v43 <= 0.7)
    {
LABEL_45:
      v74 = 0;
      v75 = 0;
      do
      {
        if (*(v79 + v74) < v54 / 225)
        {
          ++v75;
        }

        v74 += 8;
      }

      while (v74 != 1800);
      v43 = v75 / 225.0;
    }

    goto LABEL_50;
  }

  v83 = v18;
  v26 = 0;
  v27 = fmax(v12 / 500.0, 1.0);
  v28 = (v21 - v27);
  v84 = v27;
  v29 = v27;
  v30 = v20;
  v82 = v23;
  v31 = v23;
  v32 = (v76 - v22);
  do
  {
    v33 = v19;
    v34 = (v29 + rand() / 2147483650.0 * v28);
    v35 = rand();
    v19 = v33;
    v36 = v17 + v34;
    v15 = v85;
    v37 = v36 + (v33 + (v35 / 2147483650.0 * v30)) * v85;
    v38 = ((21846 * (*(v13 + v37 * v14 + 1) + *(v13 + v37 * v14) + *(v13 + v37 * v14 + 2))) >> 16) - ((21846 * (*(v13 + (v37 - v84) * v14 + 1) + *(v13 + (v37 - v84) * v14) + *(v13 + (v37 - v84) * v14 + 2))) >> 16);
    *v32++ = v38;
    v26 += v38;
    --v31;
  }

  while (v31);
  v39 = 0;
  v40 = v82;
  do
  {
    v41 = *v24++;
    v39 = ((v41 - v26 / v82) * (v41 - v26 / v82) + v39);
    --v40;
  }

  while (v40);
  v42 = v39 / v82;
  v43 = 0.0;
  v9 = v77;
  v18 = v83;
  if (v42 <= 150)
  {
    goto LABEL_23;
  }

LABEL_50:
  v10 = [[SCRCPhotoEvaluatorResultBlur alloc] initWithBlurLevel:v43];
LABEL_7:

  return v10;
}

void __40__SCRCPhotoEvaluatorBlur_detect_inRect___block_invoke()
{
  Current = CFAbsoluteTimeGetCurrent();

  srand(Current);
}

@end