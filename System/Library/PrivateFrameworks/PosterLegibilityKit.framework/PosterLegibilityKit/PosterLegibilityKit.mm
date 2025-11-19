id PLKLogRendering()
{
  if (PLKLogRendering_onceToken != -1)
  {
    PLKLogRendering_cold_1();
  }

  v1 = PLKLogRendering___logObj;

  return v1;
}

id PLKLogCaching()
{
  if (PLKLogCaching_onceToken != -1)
  {
    PLKLogCaching_cold_1();
  }

  v1 = PLKLogCaching___logObj;

  return v1;
}

id PLKLogCommon()
{
  if (PLKLogCommon_onceToken != -1)
  {
    PLKLogCommon_cold_1();
  }

  v1 = PLKLogCommon___logObj;

  return v1;
}

uint64_t PLKGraphicsContextComponentsCountForType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_21E5F3DB0[a1];
  }
}

id NSStringFromPLKLegibilityFilterOptions(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFromPLKLegibilityFilterOptions_block_invoke;
  v13 = &unk_27835B1B8;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{@", ", v10, v11}];

  return v8;
}

void *__NSStringFromPLKLegibilityFilterOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = @"BackdropAware";
  if (a2 != 1)
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"None";
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result addObject:v3];
  }

  return result;
}

double PLKDefaultScreenScale()
{
  if (PLKDefaultScreenScale_onceToken != -1)
  {
    PLKDefaultScreenScale_cold_1();
  }

  return *&PLKDefaultScreenScale_defaultScale;
}

void __PLKDefaultScreenScale_block_invoke()
{
  v1 = [MEMORY[0x277D0AA90] mainConfiguration];
  [v1 pointScale];
  PLKDefaultScreenScale_defaultScale = v0;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

void sub_21E5DB56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E5DB7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21E5DC884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 176));
  _Unwind_Resume(a1);
}

uint64_t ____generateImageForCacheKey_block_invoke(void *a1, void *a2)
{
  v2 = a1[7];
  if (v2)
  {
    *a2 = *v2;
  }

  return (*(a1[6] + 16))(a1[6], a1[4], a1[5]);
}

uint64_t _UILegibilityStyleForPLKLegibilityStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_21E5E1F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v28 - 112));
  _Unwind_Resume(a1);
}

uint64_t __PLKLogCommon_block_invoke()
{
  PLKLogCommon___logObj = os_log_create("com.apple.PosterLegibilityKit", "Common");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLKLogRendering_block_invoke()
{
  PLKLogRendering___logObj = os_log_create("com.apple.PosterLegibilityKit", "Rendering");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLKLogCaching_block_invoke()
{
  PLKLogCaching___logObj = os_log_create("com.apple.PosterLegibilityKit", "Caching");

  return MEMORY[0x2821F96F8]();
}

id PLKLogLabel()
{
  if (PLKLogLabel_onceToken != -1)
  {
    PLKLogLabel_cold_1();
  }

  v1 = PLKLogLabel___logObj;

  return v1;
}

uint64_t __PLKLogLabel_block_invoke()
{
  PLKLogLabel___logObj = os_log_create("com.apple.PosterLegibilityKit", "Label");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t contrast(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 2)
  {
    v8 = a2 / a1;
    v9 = a3 / a1;
    v10 = a4 / a1;
    v11 = 0.0;
    v12 = fmax(a5 / a1 - v8 * v8, 0.0);
    v13 = sqrtf(v12);
    v14 = fmax(a6 / a1 - v9 * v9, 0.0);
    v15 = sqrtf(v14);
    v16 = fmax(a7 / a1 - v10 * v10, 0.0);
    v17 = sqrtf(v16);
    v18 = v13 / v8;
    if (v8 <= 0.0)
    {
      v18 = 0.0;
    }

    v19 = 0.0;
    if (v9 > 0.0)
    {
      v19 = v15 / v9 * 0.7152;
    }

    v20 = v17 / v10;
    if (v10 <= 0.0)
    {
      v20 = 0.0;
    }

    v21 = fmin(fmax(v8 + v13 * -2.0, 0.0), 255.0);
    v22 = fmin(fmax(v9 + v15 * -2.0, 0.0), 255.0);
    v23 = fmin(fmax(v10 + v17 * -2.0, 0.0), 255.0);
    [MEMORY[0x277D75348] _luminanceWithRed:fmin(fmax(v8 + v13 * 2.0 green:0.0) blue:{255.0) / 255.0, fmin(fmax(v9 + v15 * 2.0, 0.0), 255.0) / 255.0, fmin(fmax(v10 + v17 * 2.0, 0.0), 255.0) / 255.0, v19 + v18 * 0.2126 + v20 * 0.0722, *&v15}];
    v25 = v24;
    [MEMORY[0x277D75348] _luminanceWithRed:v21 / 255.0 green:v22 / 255.0 blue:v23 / 255.0];
    if (v25 + v26 > 0.0)
    {
      v11 = (v25 - v26) / (v25 + v26) * 0.4;
    }

    v27 = v32 * v32 + v13 * v13 + v17 * v17;
    v28 = v11 + v31 * 0.4 + sqrtf(v27) / 765.0 * 0.2;
    v29 = llround(fmin(fmax(v28 + v28, 0.0), 1.0) * 255.0);
    v7 = v29 & ~(v29 >> 63);
    if (v7 >= 255)
    {
      LOBYTE(v7) = -1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

uint64_t saturation(unint64_t a1, float64x2_t a2, float64_t a3, double a4, float64x2_t a5, float64_t a6, double a7)
{
  if (a1)
  {
    a2.f64[1] = a3;
    v7 = vdupq_lane_s64(COERCE__INT64(a1), 0);
    v8 = vdivq_f64(a2, v7);
    v9 = a4 / a1;
    v10 = fmax(v8.f64[0] / 255.0, fmax(v8.f64[1] / 255.0, v9 / 255.0));
    v11 = fmin(v8.f64[0] / 255.0, fmin(v8.f64[1] / 255.0, v9 / 255.0));
    v12 = v10 - v11;
    v13 = (v10 - v11) / v10;
    if (v10 <= 0.0)
    {
      v13 = 0.0;
    }

    if (v10 > 0.1)
    {
      v14 = v12 / (v10 + 0.0001) * 0.3 + 0.7;
      if (v13 > 0.7)
      {
        v14 = 1.2;
      }

      v13 = v13 * v14;
    }

    a5.f64[1] = a6;
    v15 = fmax(a7 / a1 - v9 * v9, 0.0);
    v16 = sqrtf(v15);
    v17 = vandq_s8(vdivq_f64(vcvtq_f64_f32(vsqrt_f32(vcvt_f32_f64(vmaxnmq_f64(vmlsq_f64(vdivq_f64(a5, v7), v8, v8), 0)))), v8), vcgtq_f64(v8, vdupq_n_s64(0x3FB999999999999AuLL)));
    if (v9 <= 0.1)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v16 / v9;
    }

    v19 = (vaddvq_f64(v17) + v18) / 3.0;
    v20 = fmin(fmax(v19 + v19, 0.0), 0.3);
    *&v19 = v19 * v20 + v13 * (1.0 - v20);
    v21 = llround(fmin(fmax(powf(*&v19, 0.8) * 255.0, 0.0), 255.0));
    v22 = v21 & ~(v21 >> 63);
    if (v22 >= 255)
    {
      LOBYTE(v22) = -1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

id PLKAverageColorFromColorBoxes(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v121 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = v11;
  if (!v11 || !*(v11 + 11) || !*(v11 + 12))
  {
    goto LABEL_90;
  }

  v120 = a6;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v16 = v11[1];
  v15 = v11[2];
  v123.origin.x = a2;
  v123.origin.y = a3;
  v123.size.width = a4;
  v123.size.height = a5;
  if (!CGRectEqualToRect(v123, *MEMORY[0x277CBF390]))
  {
    v124.origin.x = a2;
    v124.origin.y = a3;
    v124.size.width = a4;
    v124.size.height = a5;
    v137.origin.x = v13;
    v137.origin.y = v14;
    v137.size.width = v16;
    v137.size.height = v15;
    if (CGRectIntersectsRect(v124, v137))
    {
      v13 = a2;
      v14 = a3;
      v16 = a4;
      v15 = a5;
      goto LABEL_7;
    }

LABEL_90:
    v109 = 0;
    goto LABEL_91;
  }

LABEL_7:
  v125.origin.x = v13;
  v125.origin.y = v14;
  v125.size.width = v16;
  v125.size.height = v15;
  MinY = CGRectGetMinY(v125);
  v126.origin.x = v13;
  v126.origin.y = v14;
  v126.size.width = v16;
  v126.size.height = v15;
  MaxY = CGRectGetMaxY(v126);
  v127.origin.x = v13;
  v127.origin.y = v14;
  v127.size.width = v16;
  v127.size.height = v15;
  MinX = CGRectGetMinX(v127);
  v128.origin.x = v13;
  v128.origin.y = v14;
  v128.size.width = v16;
  v128.size.height = v15;
  MaxX = CGRectGetMaxX(v128);
  v116 = &v112;
  v118 = MaxX;
  v21 = MaxX + v120;
  v22 = *(v12 + 12);
  v23 = *(v12 + 11) - 1;
  v24 = *(v12 + 13);
  v112 = MinY - v120;
  v113 = MinX - v120;
  v25 = (MinY - v120) / v24;
  v26 = vcvtms_u32_f32(v25);
  if (v23 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  v114 = MaxY + v120;
  v115 = v21;
  v28 = (MaxY + v120) / v24;
  v29 = vcvtms_u32_f32(v28);
  if (v27 > v29)
  {
    v29 = v27;
  }

  if (v23 >= v29)
  {
    v23 = v29;
  }

  v30 = v22 - 1;
  v31 = (MinX - v120) / v24;
  v32 = vcvtms_u32_f32(v31);
  if (v30 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v34 = v21 / v24;
  v35 = vcvtms_u32_f32(v34);
  v119 = v33;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v30 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v30;
  }

  v117 = v27;
  v37 = v23 - v27;
  v38 = v23 - v27 + 1;
  MEMORY[0x28223BE20]();
  v40 = (&v112 - v39);
  v41 = v38 >> 1;
  if (v38 >= 2)
  {
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v38 >> 1;
    }

    v43 = -v42;
    v44 = v117;
    v45 = v40;
    do
    {
      v129.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v44 col:0];
      x = v129.origin.x;
      y = v129.origin.y;
      width = v129.size.width;
      height = v129.size.height;
      v50 = CGRectGetMinY(v129);
      v130.origin.x = x;
      v130.origin.y = y;
      v130.size.width = width;
      v130.size.height = height;
      v51 = CGRectGetMaxY(v130);
      if (MinY > v50)
      {
        v52 = 0.0;
        if (v120 > 0.00000011920929)
        {
          if (MinY >= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = MinY;
          }

          v54 = v112;
          if (v112 < v50)
          {
            v54 = v50;
          }

          v52 = (v53 - v54) * ((1.0 - (MinY - v54) / v120 + 1.0 - (MinY - v53) / v120) * 0.5);
        }

        height = fmax(v51 - MinY, 0.0) + v52;
      }

      *v45++ = height / *(v12 + 13);
      ++v44;
      v55 = __CFADD__(v43++, 1);
    }

    while (!v55);
  }

  if (v38)
  {
    do
    {
      v131.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:0 col:?];
      v56 = v131.origin.x;
      v57 = v131.origin.y;
      v58 = v131.size.width;
      v59 = v131.size.height;
      v60 = CGRectGetMinY(v131);
      v132.origin.x = v56;
      v132.origin.y = v57;
      v132.size.width = v58;
      v132.size.height = v59;
      v61 = CGRectGetMaxY(v132);
      if (MaxY < v61)
      {
        if (v61 >= MaxY)
        {
          v62 = MaxY;
        }

        else
        {
          v62 = v61;
        }

        v63 = 0.0;
        if (v120 > 0.00000011920929)
        {
          if (MaxY >= v60)
          {
            v64 = MaxY;
          }

          else
          {
            v64 = v60;
          }

          if (v114 < v61)
          {
            v61 = v114;
          }

          v63 = (v61 - v64) * ((1.0 - (v64 - MaxY) / v120 + 1.0 - (v61 - MaxY) / v120) * 0.5);
        }

        v59 = fmax(v62 - v60, 0.0) + v63;
      }

      v40[v41++] = v59 / *(v12 + 13);
    }

    while (v41 < v38);
  }

  v65 = v36 - v119 + 1;
  MEMORY[0x28223BE20]();
  v69 = (&v112 - v68);
  v70 = v65 >> 1;
  if (v65 >= 2)
  {
    if (v70 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v65 >> 1;
    }

    v72 = -v71;
    v73 = v119;
    v74 = v69;
    do
    {
      v133.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v73 col:?];
      v75 = v133.origin.x;
      v76 = v133.origin.y;
      v77 = v133.size.width;
      v78 = v133.size.height;
      v79 = CGRectGetMinX(v133);
      v134.origin.x = v75;
      v134.origin.y = v76;
      v134.size.width = v77;
      v134.size.height = v78;
      v80 = CGRectGetMaxX(v134);
      if (MinX > v79)
      {
        v66 = v120;
        v81 = 0.0;
        if (v120 > 0.00000011920929)
        {
          if (MinX >= v80)
          {
            v82 = v80;
          }

          else
          {
            v82 = MinX;
          }

          v83 = v113;
          if (v113 < v79)
          {
            v83 = v79;
          }

          v84 = v82 - v83;
          v66 = 1.0 - (MinX - v83) / v120;
          v81 = v84 * ((v66 + 1.0 - (MinX - v82) / v120) * 0.5);
        }

        v77 = fmax(v80 - MinX, 0.0) + v81;
      }

      *v74++ = v77 / *(v12 + 13);
      ++v73;
      v55 = __CFADD__(v72++, 1);
    }

    while (!v55);
  }

  v85 = v120;
  if (v65)
  {
    do
    {
      v135.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v119 + v70 col:?];
      v86 = v135.origin.x;
      v87 = v135.origin.y;
      v88 = v135.size.width;
      v89 = v135.size.height;
      v90 = CGRectGetMinX(v135);
      v136.origin.x = v86;
      v136.origin.y = v87;
      v136.size.width = v88;
      v136.size.height = v89;
      v91 = CGRectGetMaxX(v136);
      if (v118 < v91)
      {
        if (v91 >= v118)
        {
          v92 = v118;
        }

        else
        {
          v92 = v91;
        }

        v93 = 0.0;
        if (v85 > 0.00000011920929)
        {
          if (v118 >= v90)
          {
            v94 = v118;
          }

          else
          {
            v94 = v90;
          }

          if (v115 < v91)
          {
            v91 = v115;
          }

          v66 = v91 - v94;
          v93 = (v91 - v94) * ((1.0 - (v94 - v118) / v85 + 1.0 - (v91 - v118) / v85) * 0.5);
        }

        v88 = fmax(v92 - v90, 0.0) + v93;
      }

      v69[v70++] = v88 / *(v12 + 13);
    }

    while (v70 < v65);
  }

  if (v38)
  {
    v95 = 0;
    v96 = 5 * v117;
    v97 = 0.0;
    v66 = 255.0;
    v98 = 0.0;
    v99 = 0.0;
    v100 = 0.0;
    do
    {
      if (v65)
      {
        v101 = v40[v95];
        v102 = (*(v12 + 10) + 5 * v119 + 1 + *(v12 + 12) * v96);
        v103 = v69;
        v104 = v65;
        do
        {
          v105 = *v103++;
          LOBYTE(v67) = *(v102 - 1);
          *&v106 = v101 * v105 * *&v67 / 255.0;
          v100 = v100 + *&v106;
          LOBYTE(v106) = *v102;
          *&v107 = v101 * v105 * v106 / 255.0;
          v99 = v99 + *&v107;
          LOBYTE(v107) = v102[1];
          v67 = v101 * v105 * v107 / 255.0;
          v98 = v98 + v67;
          v97 = v97 + v101 * v105;
          v102 += 5;
          --v104;
        }

        while (v104);
      }

      v96 += 5;
    }

    while (v95++ != v37);
  }

  else
  {
    v100 = 0.0;
    v99 = 0.0;
    v98 = 0.0;
    v97 = 0.0;
  }

  v109 = [MEMORY[0x277D75348] colorWithRed:v100 / v97 green:v99 / v97 blue:v98 / v97 alpha:{1.0, v66, *&v112}];
LABEL_91:

  v110 = *MEMORY[0x277D85DE8];

  return v109;
}

double PLKCalculateContrastFromColorBoxes(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  if (!v13)
  {
    goto LABEL_32;
  }

  v67.origin.x = a4;
  v67.origin.y = a5;
  v67.size.width = a6;
  v67.size.height = a7;
  if (CGRectEqualToRect(v67, *MEMORY[0x277CBF390]))
  {
    v14 = v13[1];
    v15 = v13[2];
    BSRectWithSize();
    a4 = v16;
    a5 = v17;
    a6 = v18;
    a7 = v19;
  }

  v20 = a6 == *MEMORY[0x277CBF3A8] && a7 == *(MEMORY[0x277CBF3A8] + 8);
  if (v20)
  {
    goto LABEL_32;
  }

  v21 = v13[11];
  if (!v21)
  {
    goto LABEL_32;
  }

  v22 = v13[12];
  if (!v22)
  {
    goto LABEL_32;
  }

  v23 = v21 - 1;
  v24 = v22 - 1;
  v68.origin.x = a4;
  v68.origin.y = a5;
  v68.size.width = a6;
  v68.size.height = a7;
  v25 = v13[13];
  v26 = CGRectGetMinY(v68) / v25;
  v27 = vcvtms_u32_f32(v26);
  if (v23 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  v69.origin.x = a4;
  v69.origin.y = a5;
  v69.size.width = a6;
  v69.size.height = a7;
  v29 = CGRectGetMaxY(v69) / v25;
  v30 = vcvtms_u32_f32(v29);
  if (v28 > v30)
  {
    v30 = v28;
  }

  if (v23 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v23;
  }

  v70.origin.x = a4;
  v70.origin.y = a5;
  v70.size.width = a6;
  v70.size.height = a7;
  v32 = CGRectGetMinX(v70) / v25;
  v33 = vcvtms_u32_f32(v32);
  if (v24 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v24;
  }

  v71.origin.x = a4;
  v71.origin.y = a5;
  v71.size.width = a6;
  v71.size.height = a7;
  v35 = CGRectGetMaxX(v71) / v25;
  *&v35 = v35;
  v36 = vcvtms_u32_f32(*&v35);
  if (v34 > v36)
  {
    v36 = v34;
  }

  if (v24 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v24;
  }

  if (a6 < v25 || a7 < v25)
  {
    v43 = 1.0;
    LOBYTE(v43) = *(v13[10] + 5 * v34 + 5 * v13[12] * v28 + 3);
    v41 = fmin(fmin(a6, a7) / v25, 1.0) * (v43 / 255.0);
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  v38 = v13[10];
  if (!v38)
  {
LABEL_32:
    if (a2)
    {
      *a2 = 0.0;
    }

    v41 = -1.0;
    goto LABEL_35;
  }

  v39 = v31 - v28 + 1;
  v40 = v37 - v34 + 1;
  if (v40 * v39 == 1)
  {
    LOBYTE(v35) = *(v38 + 5 * v34 + 5 * v13[12] * v28 + 3);
    v41 = *&v35 / 255.0;
    if (!a2)
    {
LABEL_35:
      if (a3)
      {
        *a3 = 0.0;
      }

      goto LABEL_37;
    }

LABEL_39:
    *a2 = v41;
    goto LABEL_35;
  }

  v44 = (v40 * v39);
  if (v31 - v28 == -1)
  {
    v57 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v54 = 0.0;
    v60 = 0.0;
    v61 = 0.0;
    v62 = 0.0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 5 * v34 + v38 + 1;
    v53 = 5 * v28;
    v54 = 0.0;
    do
    {
      if (v40)
      {
        v55 = (v52 + v13[12] * v53);
        v56 = v40;
        do
        {
          v51 += *(v55 - 1);
          v50 += *v55;
          v49 += v55[1];
          v48 += *(v55 - 1) * *(v55 - 1);
          v47 += *v55 * *v55;
          v46 += v55[1] * v55[1];
          LOBYTE(v35) = v55[2];
          v35 = *&v35;
          v54 = v54 + v35;
          v55 += 5;
          --v56;
        }

        while (v56);
      }

      v53 += 5;
      v20 = v45++ == v31 - v28;
    }

    while (!v20);
    v57 = v51;
    v58 = v50;
    v59 = v49;
    v60 = v48;
    v61 = v47;
    v62 = v46;
  }

  v63 = fmin(a6 * a7 / (v25 * v44 * v25), 1.0);
  v64 = v54 / v44;
  if (a2)
  {
    *a2 = v64 / 255.0;
  }

  v65 = v63 * contrast(v44, v57, v58, v59, v60, v61, v62);
  if (a3)
  {
    *a3 = v65 / 255.0;
  }

  v66 = fmin(fmax(1.0 - v63, 0.0), 0.5);
  v41 = (v65 * (1.0 - (v66 + 0.5)) + v64 * (v66 + 0.5)) / (v66 + 0.5 + 1.0 - (v66 + 0.5)) / 255.0;
LABEL_37:

  return v41;
}

double PLKCalculateSaturationFromColorBoxes(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  if (!v13)
  {
    goto LABEL_35;
  }

  v62.origin.x = a4;
  v62.origin.y = a5;
  v62.size.width = a6;
  v62.size.height = a7;
  if (CGRectEqualToRect(v62, *MEMORY[0x277CBF390]))
  {
    v14 = v13[1];
    v15 = v13[2];
    BSRectWithSize();
    a4 = v16;
    a5 = v17;
    a6 = v18;
    a7 = v19;
  }

  v20 = a6 == *MEMORY[0x277CBF3A8] && a7 == *(MEMORY[0x277CBF3A8] + 8);
  if (v20)
  {
    goto LABEL_35;
  }

  v21 = v13[11];
  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = v13[12];
  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = v21 - 1;
  v24 = v22 - 1;
  v63.origin.x = a4;
  v63.origin.y = a5;
  v63.size.width = a6;
  v63.size.height = a7;
  v25 = v13[13];
  v26 = CGRectGetMinY(v63) / v25;
  v27 = vcvtms_u32_f32(v26);
  if (v23 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  v64.origin.x = a4;
  v64.origin.y = a5;
  v64.size.width = a6;
  v64.size.height = a7;
  v29 = CGRectGetMaxY(v64) / v25;
  v30 = vcvtms_u32_f32(v29);
  if (v28 > v30)
  {
    v30 = v28;
  }

  if (v23 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v23;
  }

  v65.origin.x = a4;
  v65.origin.y = a5;
  v65.size.width = a6;
  v65.size.height = a7;
  v32 = CGRectGetMinX(v65) / v25;
  v33 = vcvtms_u32_f32(v32);
  if (v24 >= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v24;
  }

  v66.origin.x = a4;
  v66.origin.y = a5;
  v66.size.width = a6;
  v66.size.height = a7;
  v36.f64[0] = CGRectGetMaxX(v66) / v25;
  *v36.f64 = v36.f64[0];
  v37 = vcvtms_u32_f32(*v36.f64);
  if (v34 > v37)
  {
    v37 = v34;
  }

  v38 = v24 >= v37 ? v37 : v24;
  v39 = v13[10];
  if (v39)
  {
    v40 = v38 - v34 + 1;
    v41 = (v40 * (v31 - v28 + 1));
    if (v31 - v28 == -1)
    {
      v36.f64[0] = 0.0;
      v54 = 0.0;
      v55 = 0.0;
      v51 = 0.0;
      v35.f64[0] = 0.0;
      v56 = 0.0;
      v57 = 0.0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 5 * v34 + v39 + 2;
      v50 = 5 * v28;
      v51 = 0.0;
      do
      {
        if (v40)
        {
          v52 = (v49 + v13[12] * v50);
          v53 = v40;
          do
          {
            v48 += *(v52 - 2);
            v47 += *(v52 - 1);
            v46 += *v52;
            v45 += *(v52 - 2) * *(v52 - 2);
            v44 += *(v52 - 1) * *(v52 - 1);
            v43 += *v52 * *v52;
            LOBYTE(v36.f64[0]) = v52[2];
            v36.f64[0] = *&v36.f64[0];
            v51 = v51 + v36.f64[0];
            v52 += 5;
            --v53;
          }

          while (v53);
        }

        v50 += 5;
        v20 = v42++ == v31 - v28;
      }

      while (!v20);
      v36.f64[0] = v48;
      v54 = v47;
      v55 = v46;
      v35.f64[0] = v45;
      v56 = v44;
      v57 = v43;
    }

    v60 = v51 / v41;
    if (a2)
    {
      *a2 = v60 / 255.0;
    }

    v61 = saturation(v41, v36, v54, v55, v35, v56, v57);
    if (a3)
    {
      *a3 = v61 / 255.0;
    }

    if (v60 >= v61)
    {
      v61 = v60;
    }

    v58 = v61 / 255.0;
  }

  else
  {
LABEL_35:
    if (a2)
    {
      *a2 = 0.0;
    }

    v58 = -1.0;
    if (a3)
    {
      *a3 = 0.0;
    }
  }

  return v58;
}

id PLKAverageSaturationFromColorBoxes(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = a1;
  v12 = v11;
  if (!v11 || !*(v11 + 11) || !*(v11 + 12))
  {
    goto LABEL_38;
  }

  v52 = a6;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v15 = v11[1];
  v16 = v11[2];
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  if (CGRectEqualToRect(v54, *MEMORY[0x277CBF390]))
  {
    goto LABEL_7;
  }

  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  v60.origin.x = v13;
  v60.origin.y = v14;
  v60.size.width = v15;
  v60.size.height = v16;
  if (!CGRectIntersectsRect(v55, v60))
  {
LABEL_38:
    v50 = 0;
    goto LABEL_39;
  }

  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
LABEL_7:
  v56.origin.x = v13;
  v56.origin.y = v14;
  v56.size.width = v15;
  v56.size.height = v16;
  MinY = CGRectGetMinY(v56);
  v57.origin.x = v13;
  v57.origin.y = v14;
  v57.size.width = v15;
  v57.size.height = v16;
  MaxY = CGRectGetMaxY(v57);
  v58.origin.x = v13;
  v58.origin.y = v14;
  v58.size.width = v15;
  v58.size.height = v16;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v13;
  v59.origin.y = v14;
  v59.size.width = v15;
  v59.size.height = v16;
  v20 = CGRectGetMaxX(v59) + v52;
  v22 = *(v12 + 13);
  v23 = (MinY - v52) / v22;
  v24 = vcvtms_u32_f32(v23);
  v25 = *(v12 + 11) - 1;
  v26 = (MaxY + v52) / v22;
  v27 = vcvtms_u32_f32(v26);
  if (v25 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = *(v12 + 11) - 1;
  }

  if (v28 <= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  if (v25 < v29)
  {
    v29 = *(v12 + 11) - 1;
  }

  v30 = *(v12 + 12) - 1;
  v31 = (MinX - v52) / v22;
  v32 = vcvtms_u32_f32(v31);
  if (v30 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(v12 + 12) - 1;
  }

  v34 = v20 / v22;
  v35 = vcvtms_u32_f32(v34);
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v30 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = *(v12 + 12) - 1;
  }

  v37 = v29 - v28;
  v38 = v29 - v28 + 1;
  if (v38 >= 2)
  {
    PLKAverageSaturationFromColorBoxes_cold_1(v38 >> 1, v28, v12);
  }

  else if (v29 - v28 == -1)
  {
    goto LABEL_25;
  }

  PLKAverageSaturationFromColorBoxes_cold_2();
LABEL_25:
  v39 = v36 - v33 + 1;
  if (v39 >= 2)
  {
    PLKAverageSaturationFromColorBoxes_cold_3(v39 >> 1, v33, v12);
LABEL_45:
    PLKAverageSaturationFromColorBoxes_cold_4();
    if (v38)
    {
      goto LABEL_28;
    }

LABEL_46:
    v49 = MEMORY[0x277D75348];
    v44 = 0.5;
    v43 = 0.5;
    v42 = 0.5;
    goto LABEL_47;
  }

  if (v36 - v33 != -1)
  {
    goto LABEL_45;
  }

  if (!v38)
  {
    goto LABEL_46;
  }

LABEL_28:
  v40 = 0;
  v41 = 5 * v28;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  do
  {
    if (v36 - v33 != -1)
    {
      v46 = (*(v12 + 10) + 5 * v33 + 2 + *(v12 + 12) * v41);
      v47 = v36 - v33 + 1;
      do
      {
        LOBYTE(v21) = v46[2];
        v21 = *&v21 / 255.0;
        if (v21 > v45)
        {
          LOBYTE(v44) = *(v46 - 2);
          v44 = *&v44 / 255.0;
          LOBYTE(v43) = *(v46 - 1);
          v43 = *&v43 / 255.0;
          LOBYTE(v42) = *v46;
          v45 = v21;
          v42 = *&v42 / 255.0;
        }

        v46 += 5;
        --v47;
      }

      while (v47);
    }

    v41 += 5;
  }

  while (v40++ != v37);
  if (v45 <= 0.0)
  {
    goto LABEL_46;
  }

  v49 = MEMORY[0x277D75348];
LABEL_47:
  v50 = [v49 colorWithRed:v44 green:v43 blue:v42 alpha:1.0];
LABEL_39:

  return v50;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *PLKGraphicsContextTypeDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%d)", a1];
  }

  else
  {
    v2 = off_27835B8B0[a1];
  }

  return v2;
}

unint64_t PLKGraphicsContextCalculateBytesNeededForSize(unint64_t a1, double a2, double a3, double a4)
{
  if (a1 <= 4)
  {
    v4 = qword_21E5F3DB0[a1];
  }

  return CGBitmapGetAlignedBytesPerRow() * vcvtpd_u64_f64(a3 * a4);
}

void sub_21E5EBD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_21E5EC080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

id PLKIOSurfaceFromCGImage(id a1, int a2)
{
  if (a1)
  {
    v4 = *MEMORY[0x277CBF548];
    Property = CGImageGetProperty();
    if (!Property && CGImageGetImageProvider() && ((CallbackVersion = CGImageProviderGetCallbackVersion(), v8 = CGImageWasCreatedWithIOSurface(), CallbackVersion > 1) ? (v9 = a2) : (v9 = 0), (v8 & 1) != 0 || v9))
    {
      a1 = CGImageProviderCopyIOSurface();
    }

    else
    {
      a1 = Property;
    }

    v2 = vars8;
  }

  return a1;
}

id __PLKCreateCroppedIOSurface(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  if (CGRectIsEmpty(v23) || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  texture = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  v12 = *MEMORY[0x277CBECE8];
  v13 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v9, 0, &pixelBufferOut);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = pixelBufferOut == 0;
  }

  if (v14 || ((v13 = VTPixelTransferSessionCreate(v12, &pixelTransferSessionOut)) == 0 ? (v15 = pixelTransferSessionOut == 0) : (v15 = 1), v15))
  {
    IOSurfaceBackedCVPixelBufferWithAttributes = v13;
  }

  else
  {
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v24);
    IOSurfaceBackedCVPixelBufferWithAttributes = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    if (!IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      IOSurfaceGetPixelFormat(v9);
      IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
      v16 = 0;
      if (IOSurfaceBackedCVPixelBufferWithAttributes || !texture)
      {
        goto LABEL_19;
      }

      IOSurfaceBackedCVPixelBufferWithAttributes = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture);
      if (!IOSurfaceBackedCVPixelBufferWithAttributes)
      {
        v16 = CVPixelBufferGetIOSurface(texture);
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture);
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

LABEL_5:

  return v10;
}

void ___PLKReleaseIOSurface(void *a1)
{
  [a1 unlockWithOptions:1 seed:0];
  [a1 decrementUseCount];
}

void PLKAverageSaturationFromColorBoxes_cold_1(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  do
  {
    [(PLKColorBoxes *)a3 rectForColorBoxAtRow:a2 col:0];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinY(v6);
    v7.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxY(v7);
    ++a2;
    --v5;
  }

  while (v5);
}

void PLKAverageSaturationFromColorBoxes_cold_2()
{
  OUTLINED_FUNCTION_7();
  do
  {
    [(PLKColorBoxes *)v1 rectForColorBoxAtRow:0 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinY(v4);
    v5.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxY(v5);
    ++v3;
  }

  while (v3 < v0);
}

void PLKAverageSaturationFromColorBoxes_cold_3(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  do
  {
    [(PLKColorBoxes *)a3 rectForColorBoxAtRow:a2 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinX(v6);
    v7.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxX(v7);
    ++a2;
    --v5;
  }

  while (v5);
}

void PLKAverageSaturationFromColorBoxes_cold_4()
{
  OUTLINED_FUNCTION_7();
  do
  {
    [(PLKColorBoxes *)v1 rectForColorBoxAtRow:v2 + v3 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinX(v4);
    v5.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxX(v5);
    ++v3;
  }

  while (v3 < v0);
}