float *ColorsWheelContext_create(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    ColorsWheelContext_create_cold_13();
  }

  if (a3 < 0)
  {
    ColorsWheelContext_create_cold_12();
  }

  if (a4 < 0)
  {
    ColorsWheelContext_create_cold_11();
  }

  if (a5 < 0)
  {
    ColorsWheelContext_create_cold_10();
  }

  if (a6 < 0)
  {
    ColorsWheelContext_create_cold_9();
  }

  if (a7 < 0)
  {
    ColorsWheelContext_create_cold_8();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    ColorsWheelContext_create_cold_7();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        ColorsWheelContext_create_cold_1();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void ColorsWheelContext_destroy(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t ColorsWheelContext_computeColorComponent(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    ColorsWheelContext_computeColorComponent_cold_1();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t ColorsWheelContext_drawMatrix_f32(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = ColorsWheelContext_computeColorComponent(v14, 0, v28, a10, a11, a12);
          *v27 = ColorsWheelContext_computeColorComponent(v14, 1, v28, v29, v30, v31);
          result = ColorsWheelContext_computeColorComponent(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

FILE *createPathIfNeededAndOpenFile(const char *a1)
{
  v2 = [NSString stringWithFormat:@"%s", a1];
  v3 = [v2 stringByDeletingLastPathComponent];
  v4 = +[NSFileManager defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = fopen(a1, "wb");
  }

  else
  {
    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken != -1)
    {
      createPathIfNeededAndOpenFile_cold_1();
    }

    v8 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

FILE *writePPMFromRGBA(unsigned int a1, int a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  result = createPathIfNeededAndOpenFile(a5);
  if (result)
  {
    v10 = result;
    v11 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      fprintf(v10, "P6 %u %u 255\n", a1, a2);
      if (a2)
      {
        v13 = 0;
        do
        {
          v14 = a1;
          v15 = v12;
          for (i = a4; v14; --v14)
          {
            *v15 = *i;
            v15[1] = i[1];
            v15[2] = i[2];
            i += 4;
            v15 += 3;
          }

          fwrite(v12, 3uLL, a1, v10);
          a4 += a3;
          ++v13;
        }

        while (v13 != a2);
      }

      free(v12);
    }

    return fclose(v10);
  }

  return result;
}

void __getCameraCaptureLegacyLog_block_invoke(id a1)
{
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

uint64_t isLowLightingCondition(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      a1 = 0;
    }

    else
    {
      v5 = [v3 objectForKeyedSubscript:@"ExposureInfo"];
      v6 = v5;
      a1 = 0;
      if (v4 && v5)
      {
        [v5 floatValue];
        a1 = v7 > 0.0083;
      }
    }
  }

  return a1;
}

double setDefaultConfig(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 44) = 0xF00000000;
  *(a1 + 36) = 0;
  *&result = 16842752;
  *(a1 + 55) = 16842752;
  *(a1 + 59) = 0;
  return result;
}

id packDetectionResult(void *a1, void *a2, CGFloat a3, CGFloat a4, float a5, float32x2_t a6, uint64_t a7, int a8, void *a9, CMTime *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, unint64_t a15)
{
  v21 = a1;
  v22 = a2;
  v23 = a9;
  v107 = a13;
  v24 = a14;
  v25 = +[NSMutableDictionary dictionary];
  time = *a10;
  v26 = CMTimeCopyAsDictionary(&time, kCFAllocatorDefault);
  [v25 setObject:v26 forKeyedSubscript:@"IspTimestamp"];

  v27 = v22;
  v28 = v21;
  v29 = v23;
  v30 = v24;
  v31 = v29;
  v32 = v30;
  v33 = objc_alloc_init(NSMutableDictionary);
  [v33 setObject:&off_4A048 forKeyedSubscript:@"GhostInfoVersion"];
  v113.x = a3;
  v113.y = a4;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v113);
  [v33 setObject:? forKeyedSubscript:?];
  [v33 setObject:v31 forKeyedSubscript:@"MetaData"];
  [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:@"PipeReset"];
  [v33 setObject:v28 forKeyedSubscript:@"RepairMeta"];
  v106 = v32;
  [v33 setObject:v32 forKeyedSubscript:@"RepairMeta_HW"];
  v34 = [v28 mutableBytes];
  v35 = vmul_f32(a6, a6);
  v35.f32[0] = sqrtf(vaddv_f32(v35));
  v36 = [NSNumber numberWithFloat:*&v35];
  [v33 setObject:v36 forKeyedSubscript:@"OpticalCenterOffsetMag"];

  v37 = [NSNumber numberWithFloat:*&a6];
  [v33 setObject:v37 forKeyedSubscript:@"OpticalCenterOffsetX"];

  HIDWORD(v38) = a6.i32[1];
  LODWORD(v38) = a6.i32[1];
  v39 = [NSNumber numberWithFloat:v38];
  [v33 setObject:v39 forKeyedSubscript:@"OpticalCenterOffsetY"];

  *&v40 = a5;
  v41 = [NSNumber numberWithFloat:v40];
  [v33 setObject:v41 forKeyedSubscript:@"OpticalCenterEstConfidence "];

  *&v42 = *v34;
  v43 = [NSNumber numberWithFloat:v42];
  [v33 setObject:v43 forKeyedSubscript:@"AverageGhostCount"];

  v44 = *&a15 > 0.0 && *v34 > 0;
  v45 = [NSNumber numberWithInt:v44];
  [v33 setObject:v45 forKeyedSubscript:@"LightweightDetector1TruePositive"];

  v46 = *&a15 > 0.0 && *v34 == 0;
  v47 = [NSNumber numberWithInt:v46];
  [v33 setObject:v47 forKeyedSubscript:@"LightweightDetector1FalsePositive"];

  v110 = v33;
  if (*&a15 <= 0.0)
  {
    v50 = [NSNumber numberWithInt:*v34 > 0];
    [v33 setObject:v50 forKeyedSubscript:@"LightweightDetector1FalseNegative"];

    v51 = 0;
    v52 = 0;
    v49 = a8;
    goto LABEL_14;
  }

  v48 = [NSNumber numberWithInt:0];
  [v33 setObject:v48 forKeyedSubscript:@"LightweightDetector1FalseNegative"];

  if (SHIDWORD(a15) <= 10)
  {
    v49 = a8;
LABEL_13:
    v52 = *v34 > 0;
    v51 = 1;
    goto LABEL_14;
  }

  v51 = 0;
  v49 = a8;
  if (HIDWORD(a15) <= 0x320)
  {
    v52 = 0;
    if (*&a15 < 15.0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v52 = 0;
LABEL_14:
  v53 = [NSNumber numberWithInt:v52];
  [v110 setObject:v53 forKeyedSubscript:@"LightweightDetector2TruePositive"];

  if (v51)
  {
    v54 = *v34 == 0;
  }

  else
  {
    v54 = 0;
  }

  v55 = [NSNumber numberWithInt:v54];
  [v110 setObject:v55 forKeyedSubscript:@"LightweightDetector2FalsePositive"];

  v56 = (v51 & 1) == 0 && *v34 > 0;
  v57 = [NSNumber numberWithInt:v56];
  [v110 setObject:v57 forKeyedSubscript:@"LightweightDetector2FalseNegative"];

  if (*&a15 <= 0.0)
  {
    v58 = 0;
    v59 = 0;
    goto LABEL_27;
  }

  if (SHIDWORD(a15) <= 5)
  {
LABEL_26:
    v59 = *v34 > 0;
    v58 = 1;
    goto LABEL_27;
  }

  v58 = 0;
  if (HIDWORD(a15) <= 0x320)
  {
    v59 = 0;
    if (*&a15 < 15.0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v59 = 0;
LABEL_27:
  v60 = [NSNumber numberWithInt:v59];
  [v110 setObject:v60 forKeyedSubscript:@"LightweightDetector3TruePositive"];

  if (v58)
  {
    v61 = *v34 == 0;
  }

  else
  {
    v61 = 0;
  }

  v62 = [NSNumber numberWithInt:v61];
  [v110 setObject:v62 forKeyedSubscript:@"LightweightDetector3FalsePositive"];

  v63 = (v58 & 1) == 0 && *v34 > 0;
  v64 = [NSNumber numberWithInt:v63];
  [v110 setObject:v64 forKeyedSubscript:@"LightweightDetector3FalseNegative"];

  if (*&a15 <= 0.0)
  {
    v65 = 0;
    v66 = 0;
    goto LABEL_40;
  }

  if (SHIDWORD(a15) <= 10)
  {
LABEL_39:
    v66 = *v34 > 0;
    v65 = 1;
    goto LABEL_40;
  }

  v65 = 0;
  if (HIDWORD(a15) <= 0x320)
  {
    v66 = 0;
    if (*&a15 < 10.0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v66 = 0;
LABEL_40:
  v67 = [NSNumber numberWithInt:v66];
  [v110 setObject:v67 forKeyedSubscript:@"LightweightDetector4TruePositive"];

  if (v65)
  {
    v68 = *v34 == 0;
  }

  else
  {
    v68 = 0;
  }

  v69 = [NSNumber numberWithInt:v68];
  [v110 setObject:v69 forKeyedSubscript:@"LightweightDetector4FalsePositive"];

  v70 = (v65 & 1) == 0 && *v34 > 0;
  v71 = [NSNumber numberWithInt:v70];
  [v110 setObject:v71 forKeyedSubscript:@"LightweightDetector4FalseNegative"];

  if (*&a15 <= 0.0)
  {
    v73 = 0;
    v74 = 0;
    v72 = v107;
    goto LABEL_53;
  }

  if (SHIDWORD(a15) <= 5)
  {
    v72 = v107;
LABEL_52:
    v74 = *v34 > 0;
    v73 = 1;
    goto LABEL_53;
  }

  v73 = 0;
  v72 = v107;
  if (HIDWORD(a15) <= 0x320)
  {
    v74 = 0;
    if (*&a15 < 10.0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v74 = 0;
LABEL_53:
  v75 = [NSNumber numberWithInt:v74];
  [v110 setObject:v75 forKeyedSubscript:@"LightweightDetector5TruePositive"];

  if (v73)
  {
    v76 = *v34 == 0;
  }

  else
  {
    v76 = 0;
  }

  v77 = [NSNumber numberWithInt:v76];
  [v110 setObject:v77 forKeyedSubscript:@"LightweightDetector5FalsePositive"];

  v78 = (v73 & 1) == 0 && *v34 > 0;
  v79 = [NSNumber numberWithInt:v78];
  [v110 setObject:v79 forKeyedSubscript:@"LightweightDetector5FalseNegative"];

  v80 = *v34;
  if (v80 < 1)
  {
    v82 = 0.0;
    if (!*v34)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v81 = (v34 + 1812);
    LODWORD(v82) = 0;
    v83 = *v34;
    do
    {
      v84 = *v81++;
      v82 = vcvtd_n_f64_u32(v84, 8uLL) + *&v82;
      *&v82 = v82;
      --v83;
    }

    while (v83);
  }

  v85 = *(v34 + 1204);
  if (v85)
  {
    *&v82 = ((*&v82 / v80) / v85) / HIDWORD(*(v34 + 1204));
    v86 = [NSNumber numberWithFloat:v82];
    [v110 setObject:v86 forKeyedSubscript:@"AverageGhostArea"];

    if (!v49)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

LABEL_66:
  [v110 setObject:&off_4A058 forKeyedSubscript:{@"AverageGhostArea", v82}];
  if (!v49)
  {
    goto LABEL_73;
  }

LABEL_69:
  v99 = v31;
  v101 = v28;
  v103 = v25;
  v87 = objc_alloc_init(NSMutableArray);
  if ([v27 count])
  {
    v88 = 0;
    do
    {
      v89 = [v27 objectAtIndexedSubscript:{v88, v99, v101, v103}];
      v90 = objc_alloc_init(NSMutableDictionary);
      [v89 roi];
      v91 = v87;
      v92 = v27;
      v93 = CGRectCreateDictionaryRepresentation(v114);
      v94 = [[NSDictionary alloc] initWithDictionary:v93];

      [v90 setObject:v94 forKeyedSubscript:@"GhostRect"];
      v95 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v89 trackID]);
      [v90 setObject:v95 forKeyedSubscript:@"GhostTrackID"];

      v96 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v89 trackedCnt]);
      [v90 setObject:v96 forKeyedSubscript:@"GhostTrackCount"];

      v27 = v92;
      v87 = v91;
      [v91 addObject:v90];

      ++v88;
    }

    while ([v27 count] > v88);
  }

  [v110 setObject:v87 forKeyedSubscript:{@"GhostsArray", v99, v101, v103}];

  v72 = v107;
  v28 = v102;
  v25 = v104;
  v31 = v100;
LABEL_73:

  [v25 setObject:v110 forKeyedSubscript:@"GhostsInfoMetaData"];
  v97 = [v25 objectForKeyedSubscript:@"GhostsInfoMetaData"];
  [v97 setObject:v72 forKeyedSubscript:@"InputTexture"];

  return v25;
}

void commitCommandBuffer(void *a1, int a2)
{
  v3 = a1;
  [v3 commit];
  if (a2)
  {
    [v3 waitUntilCompleted];
  }

  else
  {
    [v3 waitUntilScheduled];
  }
}

__CFArray *createBBoxArrayWithMeta(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  if (!a1)
  {
    createBBoxArrayWithMeta_cold_1();
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v2, &kCFTypeArrayCallBacks);
  if (v2 >= 1)
  {
    if (v2 >= 0x20)
    {
      v2 = 32;
    }

    else
    {
      v2 = v2;
    }

    v5 = (a1 + 28);
    do
    {
      v8.origin.x = *(v5 - 7);
      v8.origin.y = *(v5 - 6);
      v8.size.width = (*(v5 - 1) + *(v5 - 1));
      v8.size.height = (*v5 + *v5);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);
      CFArrayAppendValue(Mutable, DictionaryRepresentation);
      CFRelease(DictionaryRepresentation);
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return Mutable;
}

CFTypeRef arrayRetainCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void arrayReleaseCallback(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void releaseReferenceFrames(__CFArray *a1)
{
  CFArrayRemoveAllValues(a1);

  CFRelease(a1);
}

uint64_t HomographyToBuffer(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = 0;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v8 = result + 36;
  v9 = 1;
  v13[0] = a5;
  v13[1] = a6;
  v13[2] = a7;
LABEL_2:
  for (i = 0; ; ++i)
  {
    v11 = i / 3u;
    v12 = i % 3u;
    if ((v9 & 1) == 0)
    {
      break;
    }

    *(result + 4 * i) = *(&v14[v11] & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
    if (i == 9)
    {
      v9 = 0;
      *(v8 + v7) = 1065353216;
      v7 = 40;
      goto LABEL_2;
    }

LABEL_7:
    ;
  }

  *(result + 4 * i + 40) = *(&v13[v11] & 0xFFFFFFFFFFFFFFF3 | (4 * (v12 & 3)));
  if (i != 9)
  {
    goto LABEL_7;
  }

  *(v8 + v7) = 1065353216;
  return result;
}

void BoundingBoxToBuffer(void *a1, void *a2, void *a3, uint64_t a4)
{
  for (i = 0; i != 3; ++i)
  {
    if (i == 1)
    {
      v9 = a2;
    }

    else
    {
      v9 = a3;
    }

    if (!i)
    {
      v9 = a1;
    }

    v10 = v9;
    if ([v10 count])
    {
      v11 = 0;
      do
      {
        v12 = [v10 objectAtIndexedSubscript:{v11, 0, 0, 0, 0}];
        CGRectMakeWithDictionaryRepresentation(v12, &v13);

        *(a4 + 16 * v11++) = vcvt_hight_f32_f64(vcvt_f32_f64(v13.origin), vaddq_f64(v13.origin, v13.size));
      }

      while ([v10 count] > v11);
    }

    a4 += 256;
  }
}

uint64_t createVTDeghostingFrame(uint64_t a1, uint64_t a2, int a3, __int128 *a4, const void *a5, const void *a6)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    BBoxArrayWithMeta = createBBoxArrayWithMeta(a2, a3);
    CFDictionaryAddValue(Mutable, kVTDeghostingFrameKey_BoundingBoxes, BBoxArrayWithMeta);
    CFRelease(BBoxArrayWithMeta);
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  createVTDeghostingFrame_cold_1();
  if (a5)
  {
LABEL_3:
    CFDictionaryAddValue(Mutable, kVTDeghostingFrameKey_BorderPixels, a5);
  }

LABEL_4:
  if (a4)
  {
    v13 = a4[1];
    v14 = a4[2];
    v15 = *a4;
    v16 = VTCreateArrayRepresentationOfHomographyMatrix();
    CFDictionaryAddValue(Mutable, kVTDeghostingFrameKey_Homography, v16);
    CFRelease(v16);
  }

  if (a6)
  {
    CFDictionaryAddValue(Mutable, kVTDeghostingFrameKey_RepairWeights, a6);
  }

  v17 = VTDeghostingFrameBufferCreate();
  CFRelease(Mutable);
  return v17;
}

uint64_t getWSpatialUsingGhostMotion_PA_L(float *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, float *a6, float a7)
{
  if (!a4)
  {
    return getWSpatialUsingGhostMotion_PA_L_cold_3();
  }

  if (!a5)
  {
    return getWSpatialUsingGhostMotion_PA_L_cold_2();
  }

  if (!a2)
  {
    return getWSpatialUsingGhostMotion_PA_L_cold_1();
  }

  v10 = fminf(fmaxf((a7 + -450.0) / 2150.0, 0.0), 1.0);
  if (a3)
  {
    v11 = 0.01;
  }

  else
  {
    v11 = 0.005;
  }

  v12 = a1[1];
  v13 = *a1;
  v14 = v12;
  v15 = a1[2] - *a1;
  v16 = v15;
  v17 = a1[3] - v12;
  v18 = v17;
  v26 = 0;
  v19 = v15 * v17;
  v25 = 0;
  getWSpatialFromOverlap(&v26, &v26 + 1, a2, &v25, a4, 0, v13, v14, v15, v17, v15 * v17);
  v24 = 0.0;
  v23 = 0;
  result = getWSpatialFromOverlap(&v24, &v26 + 1, a2, &v23, a5, 1, v13, v14, v16, v18, v19);
  if (v10 > 0.5 && *&v26 <= 0.9 && v24 <= 0.8)
  {
    v21 = (v10 * fminf(fmaxf((*&v26 + v24) + -0.5, 0.0), 1.0)) / 5.0 + *(&v26 + 1);
    *(&v26 + 1) = v21;
  }

  v22 = *(&v26 + 1);
  if (v25)
  {
    v22 = v11 + *(&v26 + 1);
  }

  if (v23)
  {
    v22 = v11 + v22;
  }

  *a6 = fminf(v22, 1.0);
  return result;
}

void __destructor_8_s8_s16_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

id __copy_constructor_8_8_t0w8_s8_s16_s24_s32_t40w8(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  a1[2] = *(a2 + 16);
  a1[3] = *(a2 + 24);
  result = *(a2 + 32);
  a1[4] = result;
  a1[5] = *(a2 + 40);
  return result;
}

void sub_12D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  __destructor_8_s8_s16_s24_s32(&a23);
  __destructor_8_s8_s16_s24_s32(&a29);
  _Unwind_Resume(a1);
}

uint64_t syncRoiMotions(float32x2_t *a1)
{
  v1 = a1->i16[0];
  if (v1 >= 1)
  {
    v2 = &a1[207];
    v3 = a1->i16[0];
    v4 = a1 + 223;
    do
    {
      v4->i32[0] = v4[-16].i32[0];
      v4 = (v4 + 4);
      --v3;
    }

    while (v3);
    do
    {
      v5 = v1;
      v6 = &a1[223];
      v7 = a1 + 7;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        v10 = *v7;
        v7 += 4;
        v11 = vsub_f32(a1[4 * v3 + 7], v10);
        v11.f32[0] = 1.0 - fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v11, v11))) * 0.0039062, 0.0), 1.0);
        v10.i32[0] = *v6++;
        v8 = v8 + (v11.f32[0] * v10.f32[0]);
        v9 = v9 + v11.f32[0];
        --v5;
      }

      while (v5);
      v12 = *&v2[2 * v3];
      v13 = v8 / v9;
      if (v12 >= v13)
      {
        v12 = v13;
      }

      *&v2[2 * v3++] = v12;
    }

    while (v3 != v1);
  }

  return 0;
}

HWGPUSimBridge *VTDeghostingSessionCreateImpl(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a4 objectForKey:@"FlagHW_GPU"];
  if ([v7 BOOLValue])
  {
    v8 = objc_alloc_init(HWGPUSimBridge);
  }

  else
  {
    v8 = 0;
  }

  [(HWGPUSimBridge *)v8 setWidth:a1];
  [(HWGPUSimBridge *)v8 setHeight:a2];
  [(HWGPUSimBridge *)v8 setOptions:a4];
  if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_0 != -1)
  {
    VTDeghostingSessionCreateImpl_cold_1();
  }

  v9 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0;
  if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109376;
    *v17 = a1;
    *&v17[4] = 1024;
    *&v17[6] = a2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[DeghostingImpl] Width: %d, Height: %d\n", &v16, 0xEu);
  }

  v10 = [(HWGPUSimBridge *)v8 options];

  if (v10)
  {
    v11 = [(HWGPUSimBridge *)v8 options];
    v12 = [v11 objectForKeyedSubscript:kVTDeghostingSessionCreationOption_MaximumReferenceFrameDistance];
    v13 = [v12 intValue];

    if (getCameraCaptureLegacyLog_cameraCaptureLegacyLogOnceToken_0 != -1)
    {
      VTDeghostingSessionCreateImpl_cold_2();
    }

    v14 = getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0;
    if (os_log_type_enabled(getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      *v17 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[DeghostingImpl] Reference distance %ld", &v16, 0xCu);
    }

    v10 = v8;
  }

  return v10;
}

void VTDeghostingSessionReleaseImpl(id a1)
{
  if (a1)
  {
  }
}

uint64_t VTDeghostingSessionCalculateStatisticsCtoObjectiveC(void *a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a1;
  v9 = a6;
  Frame = VTDeghostingFrameBufferGetFrame();
  Parameters = VTDeghostingFrameBufferGetParameters();
  v11 = kVTDeghostingFrameKey_BoundingBoxes;
  Value = CFDictionaryGetValue(Parameters, kVTDeghostingFrameKey_BoundingBoxes);
  v12 = CFDictionaryGetValue(Parameters, kVTDeghostingFrameKey_BorderPixels);
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
    v15 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  v14 = Count;
  CFArrayGetValueAtIndex(a3, 0);
  v15 = VTDeghostingFrameBufferGetFrame();
  v16 = VTDeghostingFrameBufferGetParameters();
  v17 = CFDictionaryGetValue(v16, v11);
  v18 = kVTDeghostingFrameKey_Homography;
  CFDictionaryGetValue(v16, kVTDeghostingFrameKey_Homography);
  if (v14 == 1)
  {
LABEL_5:
    v21 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  CFArrayGetValueAtIndex(a3, 1);
  v19 = VTDeghostingFrameBufferGetFrame();
  v20 = VTDeghostingFrameBufferGetParameters();
  v21 = CFDictionaryGetValue(v20, v11);
  CFDictionaryGetValue(v20, v18);
LABEL_6:
  VTCreateHomographyMatrixWithArrayRepresentation();
  v30 = v23;
  v31 = v22;
  v29 = v24;
  VTCreateHomographyMatrixWithArrayRepresentation();
  [v8 hwStatisticsFromVT:Value homography1:v17 BBoxCur:v21 warpedBBox0:Frame warpedMeta1:v15 inputBuf:v19 ref0Buf:v31 ref1Buf:v30 borderPixels:v29 outputStruct:{v25, v26, v27, v12, v9}];

  return 0;
}

uint64_t VTDeghostingSessionMitigateGhostsCtoObjectiveC(void *a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  v11 = a1;
  Frame = VTDeghostingFrameBufferGetFrame();
  Parameters = VTDeghostingFrameBufferGetParameters();
  v14 = kVTDeghostingFrameKey_BoundingBoxes;
  v41 = [Parameters objectForKey:kVTDeghostingFrameKey_BoundingBoxes];
  v40 = [Parameters objectForKey:kVTDeghostingFrameKey_BorderPixels];
  v15 = [Parameters objectForKey:kVTDeghostingFrameKey_RepairWeights];
  Count = CFArrayGetCount(a3);
  v17 = matrix_identity_float3x3.columns[0];
  v18 = matrix_identity_float3x3.columns[1];
  v19 = matrix_identity_float3x3.columns[2];
  if (Count < 1)
  {
    v21 = 0;
    Value = 0;
    v28 = 0;
    v29 = 0;
    v27 = matrix_identity_float3x3.columns[2];
    v26 = matrix_identity_float3x3.columns[1];
    v25 = matrix_identity_float3x3.columns[0];
  }

  else
  {
    v20 = Count;
    v32 = matrix_identity_float3x3.columns[2];
    v34 = matrix_identity_float3x3.columns[1];
    v36 = matrix_identity_float3x3.columns[0];
    v38 = Frame;
    v39 = a4;
    CFArrayGetValueAtIndex(a3, 0);
    v21 = VTDeghostingFrameBufferGetFrame();
    v22 = VTDeghostingFrameBufferGetParameters();
    Value = CFDictionaryGetValue(v22, v14);
    v24 = kVTDeghostingFrameKey_Homography;
    CFDictionaryGetValue(v22, kVTDeghostingFrameKey_Homography);
    VTCreateHomographyMatrixWithArrayRepresentation();
    if (v20 == 1)
    {
      v28 = 0;
      v29 = 0;
      Frame = v38;
      a4 = v39;
      v18.i64[0] = v34.i64[0];
      v17.i64[0] = v36.i64[0];
      v19.i64[0] = v32.i64[0];
    }

    else
    {
      v35 = v26.i64[0];
      v37 = v27.i64[0];
      v33 = v25.i64[0];
      CFArrayGetValueAtIndex(a3, 1);
      v29 = VTDeghostingFrameBufferGetFrame();
      v30 = VTDeghostingFrameBufferGetParameters();
      v28 = CFDictionaryGetValue(v30, v14);
      CFDictionaryGetValue(v30, v24);
      VTCreateHomographyMatrixWithArrayRepresentation();
      v17.i64[0] = v25.i64[0];
      v18.i64[0] = v26.i64[0];
      v25.i64[0] = v33;
      v26.i64[0] = v35;
      v19.i64[0] = v27.i64[0];
      v27.i64[0] = v37;
      Frame = v38;
      a4 = v39;
    }
  }

  [v11 hwMitigationFromVT:v41 homography1:Value BBoxCur:v28 warpedBBox0:Frame warpedMeta1:v21 inputBuf:v29 ref0Buf:*v25.i64 ref1Buf:*v26.i64 borderPixels:*v27.i64 outputBuf:*v17.i64 boundingBoxWeights:*v18.i64 outputStruct:{*v19.i64, v40, a4, v15, v10}];

  return 0;
}

void __getCameraCaptureLegacyLog_block_invoke_0(id a1)
{
  getCameraCaptureLegacyLog_cameraCaptureLegacyLog_0 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

uint64_t __VTDeghostingSessionCreateForGeneratingStatistics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (VTDeghostingSessionGetTypeID_initOnce != -1)
  {
    __VTDeghostingSessionCreateForGeneratingStatistics_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  Impl = VTDeghostingSessionCreateImpl(a3, a4, 1, a2);
  if (Impl)
  {
    v11 = Impl;
    result = 0;
    Instance[2] = v11;
    *a5 = Instance;
  }

  else
  {
    CFRelease(Instance);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t __VTDeghostingSessionCreateForRepairingImages(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (VTDeghostingSessionGetTypeID_initOnce != -1)
  {
    __VTDeghostingSessionCreateForGeneratingStatistics_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  Impl = VTDeghostingSessionCreateImpl(a3, a4, 0, a2);
  if (Impl)
  {
    v11 = Impl;
    result = 0;
    Instance[2] = v11;
    *a5 = Instance;
  }

  else
  {
    CFRelease(Instance);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void __VTDeghostingSessionFinalize(uint64_t a1)
{
  puts("[DEBUG] Release");
  v2 = *(a1 + 16);
  if (v2)
  {
    VTDeghostingSessionReleaseImpl(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef __VTDeghostingSessionCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<VTDeghostingSession %p [%p]>{obj = %p}", a1, v3, a1[2]);
}

id extractCurrMetaDataFromSeiArray(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[RawMetaDataReader alloc] initWithMetaBuffer:v1];

    v3 = [(RawMetaDataReader *)v2 readMetaDataInfoFromSimulation:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id extractMetaDataFromDictionaries(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (v9)
  {
    if ([RawMetaDataReader isOpticalCenterKeyV2Present:v9])
    {
      [RawMetaDataReader readMetaDataFromDictionary:v9 andValidWidth:a2 andValidHeight:a3 andLightSource:a4 andKeyPoints:a5];
    }

    else
    {
      extractCurrMetaDataFromSeiArray(v9);
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id createConfigDictForRepair(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = v2;
  if (v2)
  {
    [v2 setObject:&off_4A000 forKeyedSubscript:@"LightMode"];
    [v3 setObject:&off_4A000 forKeyedSubscript:@"HomographyType"];
    [v3 setObject:&off_4A018 forKeyedSubscript:@"RepairFrameDelay"];
    if (v1)
    {
      [v3 setObject:v1 forKeyedSubscript:@"TuningParameters"];
    }
  }

  else
  {
    createConfigDictForRepair_cold_1();
  }

  return v3;
}

id createConfigDictForDetection(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  if (v4)
  {
    [v4 setObject:&off_4A000 forKeyedSubscript:@"LightMode"];
    [v5 setObject:&off_4A000 forKeyedSubscript:@"HomographyType"];
    v6 = [NSNumber numberWithBool:a1];
    [v5 setObject:v6 forKeyedSubscript:@"DrawBoundingBox"];

    if (v3)
    {
      [v5 setObject:v3 forKeyedSubscript:@"TuningParameters"];
    }
  }

  else
  {
    createConfigDictForDetection_cold_1();
  }

  return v5;
}

CVImageBufferRef getLightSourceMaskFromSampleBuffer(const void *a1)
{
  AttachedMediaFromSampleBuffer = getAttachedMediaFromSampleBuffer(a1, kFigCaptureSampleBufferAttachedMediaKey_LightSourceMask);
  if (AttachedMediaFromSampleBuffer)
  {

    return CMSampleBufferGetImageBuffer(AttachedMediaFromSampleBuffer);
  }

  else
  {
    getLightSourceMaskFromSampleBuffer_cold_1();
    return 0;
  }
}

void *getAttachedMediaFromSampleBuffer(const void *a1, void *a2)
{
  v3 = a2;
  v4 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:v3];

    if (!v6)
    {
      getAttachedMediaFromSampleBuffer_cold_1();
    }
  }

  else
  {
    getAttachedMediaFromSampleBuffer_cold_2();
    v6 = 0;
  }

  return v6;
}

CFTypeRef getKeypointDataFromSampleBuffer(const void *a1)
{
  AttachedMediaFromSampleBuffer = getAttachedMediaFromSampleBuffer(a1, kFigCaptureSampleBufferAttachedMediaKey_KeypointDescriptorData);
  if (!AttachedMediaFromSampleBuffer)
  {
    getKeypointDataFromSampleBuffer_cold_3();
    return 0;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(AttachedMediaFromSampleBuffer);
  if (!DataBuffer)
  {
    getKeypointDataFromSampleBuffer_cold_2();
    return 0;
  }

  v3 = CMGetAttachment(DataBuffer, kCMBlockBufferAttachmentKey_CVDataBuffer, 0);
  if (v3)
  {
    IOSurface = CVDataBufferGetIOSurface();
    IOSurfaceLock(IOSurface, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
    if (*BaseAddress == 1000)
    {
      v6 = *(BaseAddress + 2);
      v7 = *(BaseAddress + 3);
      *BaseAddress = 1;
      *(BaseAddress + 4) = 0uLL;
      *(BaseAddress + 20) = v6;
      *(BaseAddress + 7) = 0;
      *(BaseAddress + 4) = v7;
      *(BaseAddress + 40) = 0uLL;
    }

    IOSurfaceUnlock(IOSurface, 0, 0);
  }

  else
  {
    getKeypointDataFromSampleBuffer_cold_1();
  }

  return v3;
}

uint64_t extractFutureReferenceFrames(uint64_t a1, uint64_t *a2, int a3)
{
  v29 = 0u;
  v28 = 0u;
  if (!a1 || (*(a1 + 12) = 0, !a2) || (v5 = *(a1 + 8), v5 >= 3))
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    OneFrameFromSampleBuffer = 2;
    goto LABEL_24;
  }

  if (*(a2 + 3) - 1 < v5)
  {
    v5 = *(a2 + 3) - 1;
  }

  if (v5 >= 1)
  {
    v6 = a3;
    v7 = 0;
    v8 = 0;
    v9 = 48 * v5;
    do
    {
      v10 = *a2;
      v11 = *a2 + v7;
      v12 = *(v11 + 24);
      if (!v12)
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        OneFrameFromSampleBuffer = 4294954516;
        goto LABEL_24;
      }

      if (v6)
      {
        OneFrameFromSampleBuffer = fetchOneFrameFromSampleBuffer(&v27, v12);
        if (OneFrameFromSampleBuffer)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(*(v11 + 24));
      if (ImageBuffer)
      {
        v15 = *(v10 + v7 + 32);
        if (v15)
        {
          if (*(v10 + v7 + 40) != 1)
          {
            OneFrameFromSampleBuffer = 0;
            v15 = 0;
            goto LABEL_17;
          }

          v15 = CFDictionaryGetValue(v15, @"MetaData");
        }

        OneFrameFromSampleBuffer = 0;
      }

      else
      {
        fig_log_get_emitter();
        FigDebugAssert3();
        v15 = 0;
        OneFrameFromSampleBuffer = 4294954516;
      }

LABEL_17:
      v16 = v28;
      *&v28 = v15;
      v17 = v15;

      v27 = ImageBuffer;
      v18 = v10 + v7;
      v19 = [*(v18 + 32) objectForKeyedSubscript:@"RepairMeta"];
      v6 = a3;
      v20 = *(&v28 + 1);
      *(&v28 + 1) = v19;

      v21 = [*(v18 + 32) objectForKeyedSubscript:@"RepairMeta_HW"];
      v22 = v29;
      *&v29 = v21;

      v23 = [*(v18 + 32) objectForKeyedSubscript:@"InputTexture"];
      v24 = *(&v29 + 1);
      *(&v29 + 1) = v23;

      if (!ImageBuffer)
      {
LABEL_11:
        fig_log_get_emitter();
        FigDebugAssert3();
        goto LABEL_24;
      }

      if (!v28)
      {
        break;
      }

LABEL_19:
      __copy_assignment_8_8_t0w8_s8_s16_s24_s32_t40w8(*a1 + v8, &v27);
      ++*(a1 + 12);
      v8 += 48;
      v7 += 24;
    }

    while (v9 != v8);
  }

  OneFrameFromSampleBuffer = 0;
LABEL_24:
  __destructor_8_s8_s16_s24_s32(&v27);
  return OneFrameFromSampleBuffer;
}

void sub_17660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __destructor_8_s8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w8_s8_s16_s24_s32_t40w8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  *(a1 + 40) = *(a2 + 40);
}

uint64_t initLookAheadFrameArray(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      *a1 = 0;
      free(v4);
    }

    *(a1 + 8) = 0;
    v5 = malloc_type_calloc(a2, 0x30uLL, 0xA004077B9D09AuLL);
    *a1 = v5;
    if (v5)
    {
      result = 0;
      *(a1 + 8) = a2;
    }

    else
    {
      initLookAheadFrameArray_cold_1();
      return 4294954510;
    }
  }

  else
  {
    initLookAheadFrameArray_cold_2();
    return 2;
  }

  return result;
}

void freeLookAheadFrameArray(char **a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    v3 = *a1;
    if (v2 < 1)
    {
      if (!v3)
      {
LABEL_8:
        a1[1] = 0;
        return;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *&v3[v4 + 8];
        *&v3[v4 + 8] = 0;

        v7 = &(*a1)[v4];
        *v7 = 0;
        v8 = *(v7 + 2);
        *(v7 + 2) = 0;

        v9 = &(*a1)[v4];
        v10 = *(v9 + 3);
        *(v9 + 3) = 0;

        v11 = &(*a1)[v4];
        v12 = *(v11 + 4);
        *(v11 + 4) = 0;

        v3 = *a1;
        *&(*a1)[v4 + 40] = 0;
        ++v5;
        v4 += 48;
      }

      while (v5 < *(a1 + 2));
    }

    *a1 = 0;
    free(v3);
    goto LABEL_8;
  }
}

void sub_18258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __destructor_8_s8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

BOOL checkOverlapWithCluster(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      [v3 extendBBox];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [v4 objectAtIndexedSubscript:v5];
      [v14 extendBBox];
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v17;
      v22.size.height = v18;
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      v19 = CGRectIntersectsRect(v21, v22);

      if (v19)
      {
        break;
      }

      ++v5;
    }

    while ([v4 count] > v5);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return fig_log_get_emitter();
}

void sub_1F858(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CVBuffer *createPixelBufferFromInput(__CVBuffer *a1)
{
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  CVPixelBufferGetPixelFormatType(a1);
  PixelBuffer = CreatePixelBuffer();
  v3 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v3)
  {
    v4 = v3;
    CVBufferSetAttachments(PixelBuffer, v3, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v4);
  }

  return PixelBuffer;
}

__CVBuffer *createPixelBufferFromInputWithDifferentRes(__CVBuffer *a1)
{
  equivalentUncompressedPixelFormat(a1);
  PixelBuffer = CreatePixelBuffer();
  v3 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v3)
  {
    v4 = v3;
    CVBufferSetAttachments(PixelBuffer, v3, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v4);
  }

  return PixelBuffer;
}

id equivalentUncompressedPixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(kCFAllocatorDefault, PixelFormatType);
  if (CVPixelBufferGetPlaneCount(a1))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:kCVPixelFormatPlanes];
    v5 = [v4 objectAtIndexedSubscript:0];

    v6 = [v5 objectForKeyedSubscript:kCVPixelFormatCompressionType];
    v7 = [v6 intValue];

    if (v7)
    {
      v8 = [(__CFDictionary *)v3 objectForKeyedSubscript:kCVPixelFormatEquivalentUncompressedPixelFormat];
      PixelFormatType = [v8 intValue];
    }
  }

  return PixelFormatType;
}

__CVBuffer *createPixelBufferFromInputWithDifferentFormat(__CVBuffer *a1)
{
  PixelBuffer = CreatePixelBuffer();
  v3 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v3)
  {
    v4 = v3;
    CVBufferSetAttachments(PixelBuffer, v3, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v4);
  }

  return PixelBuffer;
}

id createTextureFromCVPixelBufferWithReadFmt(__CVBuffer *a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_40;
  }

  v8 = equivalentUncompressedPixelFormat(a1);
  v9 = 0;
  if (v8 <= 1278226535)
  {
    if (v8 > 1278226480)
    {
      if (v8 != 1278226481 && v8 != 1278226488)
      {
        if (v8 != 1278226534)
        {
          goto LABEL_40;
        }

        v10 = 55;
        goto LABEL_39;
      }

      v11 = a4 == 0;
      v12 = 13;
      v13 = 10;
    }

    else
    {
      if (v8 == 875704422 || v8 == 875704438)
      {
        v14 = a4 == 0;
        v15 = 13;
        if (a4)
        {
          v15 = 10;
        }

        v16 = 33;
        v17 = 30;
        goto LABEL_30;
      }

      if (v8 != 1111970369)
      {
        goto LABEL_40;
      }

      v11 = a4 == 0;
      v12 = 73;
      v13 = 80;
    }

LABEL_36:
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v13;
    }

    goto LABEL_39;
  }

  if (v8 <= 1882468911)
  {
    if (v8 == 1278226536)
    {
      v10 = 25;
      goto LABEL_39;
    }

    if (v8 == 1278226742)
    {
      v10 = 20;
      goto LABEL_39;
    }

    if (v8 != 1380401729)
    {
      goto LABEL_40;
    }

    v11 = a4 == 0;
    v12 = 73;
    v13 = 70;
    goto LABEL_36;
  }

  if (v8 > 2016686639)
  {
    if (v8 != 2016686640 && v8 != 2019963440)
    {
      goto LABEL_40;
    }

    v14 = a4 == 0;
    v15 = 23;
    if (a4)
    {
      v15 = 20;
    }

    v16 = 63;
    v17 = 60;
LABEL_30:
    if (!v14)
    {
      v16 = v17;
    }

    if (a3)
    {
      v10 = v16;
    }

    else
    {
      v10 = v15;
    }

    goto LABEL_39;
  }

  if (v8 == 1882468912 || v8 == 1885745712)
  {
    v10 = 508;
LABEL_39:
    v9 = [v7 bindPixelBufferToMTL2DTexture:a1 pixelFormat:v10 usage:7 plane:a3];
  }

LABEL_40:

  return v9;
}

uint64_t getMetalFormat(__CVBuffer *a1, int a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = 0;
  if (PixelFormatType <= 875704421)
  {
    if (PixelFormatType <= 762865201)
    {
      if (PixelFormatType > 645428783)
      {
        if (PixelFormatType > 758670895)
        {
          if (PixelFormatType != 758670896 && PixelFormatType != 758674992)
          {
            v5 = 26160;
LABEL_33:
            v9 = v5 | 0x2D780000;
            goto LABEL_64;
          }

LABEL_51:
          v10 = a2 == 0;
          v11 = 540;
          v12 = 520;
          goto LABEL_66;
        }

        if (PixelFormatType != 645428784)
        {
          v13 = 30258;
          goto LABEL_54;
        }

        goto LABEL_65;
      }

      if (PixelFormatType > 645424687)
      {
        if (PixelFormatType != 645424688)
        {
          v13 = 26162;
LABEL_54:
          v7 = v13 | 0x26780000;
LABEL_55:
          if (PixelFormatType != v7)
          {
            return result;
          }

          goto LABEL_56;
        }

LABEL_65:
        v10 = a2 == 0;
        v11 = 546;
        v12 = 528;
        goto LABEL_66;
      }

      if (PixelFormatType == 641230384)
      {
        goto LABEL_51;
      }

      v8 = 641234480;
LABEL_50:
      if (PixelFormatType != v8)
      {
        return result;
      }

      goto LABEL_51;
    }

    if (PixelFormatType > 792229423)
    {
      if (PixelFormatType > 796419633)
      {
        if (PixelFormatType != 796419634)
        {
          if (PixelFormatType != 796423728)
          {
            v7 = 796423730;
            goto LABEL_55;
          }

          goto LABEL_65;
        }

        goto LABEL_56;
      }

      if (PixelFormatType == 792229424)
      {
        goto LABEL_51;
      }

      v9 = 796419632;
LABEL_64:
      if (PixelFormatType != v9)
      {
        return result;
      }

      goto LABEL_65;
    }

    if (PixelFormatType > 762869297)
    {
      if (PixelFormatType != 762869298)
      {
        v8 = 792225328;
        goto LABEL_50;
      }
    }

    else if (PixelFormatType != 762865202)
    {
      v5 = 30256;
      goto LABEL_33;
    }

    goto LABEL_56;
  }

  if (PixelFormatType > 2016686641)
  {
    if (PixelFormatType > 2084075055)
    {
      if (PixelFormatType <= 2088265265)
      {
        if (PixelFormatType == 2084075056)
        {
          goto LABEL_51;
        }

        v9 = 2088265264;
        goto LABEL_64;
      }

      if (PixelFormatType != 2088265266)
      {
        if (PixelFormatType != 2088269360)
        {
          v7 = 2088269362;
          goto LABEL_55;
        }

        goto LABEL_65;
      }

LABEL_56:
      v10 = a2 == 0;
      v11 = 547;
      v12 = 529;
      goto LABEL_66;
    }

    if (PixelFormatType > 2019963441)
    {
      if (PixelFormatType != 2019963442)
      {
        v8 = 2084070960;
        goto LABEL_50;
      }
    }

    else if (PixelFormatType != 2016686642)
    {
      v6 = 2019963440;
      goto LABEL_37;
    }

    v10 = a2 == 0;
    v11 = 544;
    v12 = 526;
LABEL_66:
    if (v10)
    {
      return v11;
    }

    else
    {
      return v12;
    }
  }

  if (PixelFormatType > 1882468911)
  {
    if (PixelFormatType <= 1885745711)
    {
      if (PixelFormatType != 1882468912)
      {
        if (PixelFormatType != 1882468914)
        {
          return result;
        }

        return 547;
      }
    }

    else if (PixelFormatType != 1885745712)
    {
      if (PixelFormatType != 1885745714)
      {
        v6 = 2016686640;
LABEL_37:
        if (PixelFormatType != v6)
        {
          return result;
        }

        v10 = a2 == 0;
        v11 = 543;
        v12 = 525;
        goto LABEL_66;
      }

      return 547;
    }

    return 546;
  }

  if (PixelFormatType <= 1278226487)
  {
    if (PixelFormatType == 875704422)
    {
      goto LABEL_51;
    }

    v8 = 875704438;
    goto LABEL_50;
  }

  v14 = 25;
  if (PixelFormatType != 1278226536)
  {
    v14 = 0;
  }

  if (PixelFormatType == 1278226488)
  {
    return 10;
  }

  else
  {
    return v14;
  }
}

id createSingleTextureFromYuvBuffer(__CVBuffer *a1, void *a2, int a3, char a4)
{
  v7 = a2;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (!IOSurface)
  {
    createSingleTextureFromYuvBuffer_cold_2();
LABEL_13:
    v17 = 0;
    goto LABEL_8;
  }

  v9 = IOSurface;
  LODWORD(v27) = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  MetalFormat = getMetalFormat(a1, a3);
  if (!MetalFormat)
  {
    createSingleTextureFromYuvBuffer_cold_1();
    goto LABEL_13;
  }

  v11 = MetalFormat;
  WidthOfPlane = IOSurfaceGetWidthOfPlane(v9, 0);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, 0);
  ElementWidth = IOSurfaceGetElementWidth(v9);
  ElementHeight = IOSurfaceGetElementHeight(v9);
  v16 = 1;
  adjustColorAndSpatialKey(v9, &v19, 1);
  if ((a4 & 1) == 0)
  {
    if ((v11 - 540) > 6)
    {
      v16 = 3;
    }

    else
    {
      v16 = qword_43930[v11 - 540];
    }
  }

  v17 = [v7 bindIOSurfaceToMTL2DTexture:v9 pixelFormat:v11 usage:v16 width:WidthOfPlane / ElementWidth height:HeightOfPlane / ElementHeight plane:0, v19, v20, v21, v22, v23, v24, v25, v26, v27];
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  IOSurfaceSetBulkAttachments2();
LABEL_8:

  return v17;
}

uint64_t adjustColorAndSpatialKey(uint64_t a1, __int128 *a2, int a3)
{
  if (!a1)
  {
    return adjustColorAndSpatialKey_cold_1();
  }

  if (a3)
  {
    IOSurfaceGetBulkAttachments();
    v17 = a2[6];
    v19 = a2[7];
    v21 = *(a2 + 32);
    v9 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v15 = a2[5];
    v5 = *a2;
    v7 = a2[1];
  }

  else
  {
    v18 = a2[6];
    v20 = a2[7];
    v22 = *(a2 + 32);
    v10 = a2[2];
    v12 = a2[3];
    v14 = a2[4];
    v16 = a2[5];
    v6 = *a2;
    v8 = a2[1];
  }

  return IOSurfaceSetBulkAttachments2();
}

uint64_t createBBoxArrayWithMeta_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t createVTDeghostingFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getWSpatialFromOverlap(uint64_t result, float *a2, uint64_t a3, _BYTE *a4, uint64_t a5, int a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, float a11)
{
  if (a5 && (v11 = result) != 0 && a2 && a3 && a4)
  {
    if (*(a3 + 2 * a6) - 33 >= 0xFFFFFFE0)
    {
      v20 = 0;
      v21 = a6;
      v22 = a11;
      v23 = (a3 + (a6 << 10) + 16);
      do
      {
        v24 = *(v23 - 3);
        v25 = *(v23 - 2);
        v32.origin.x = v24;
        v32.origin.y = v25;
        v32.size.width = (*(v23 - 1) - v24);
        v32.size.height = (*v23 - v25);
        v30.origin.x = a7;
        v30.origin.y = a8;
        v30.size.width = a9;
        v30.size.height = a10;
        v31 = CGRectIntersection(v30, v32);
        v26 = *v11;
        v27 = v31.size.height * v31.size.width;
        v28 = v31.size.height * v31.size.width / v22;
        if (v28 > *v11)
        {
          v26 = v28;
        }

        *v11 = v26;
        result = CGRectIsNull(v31);
        if ((result & 1) == 0)
        {
          *a4 = 1;
          v29 = v27 * *(a5 + 4 * v20) / v22;
          if (*a2 >= v29)
          {
            v29 = *a2;
          }

          *a2 = v29;
        }

        ++v20;
        v23 += 8;
      }

      while (v20 < *(a3 + 2 * v21));
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
    return FigDebugAssert3();
  }

  return result;
}

uint64_t getWSpatialUsingGhostMotion_PA_L_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getWSpatialUsingGhostMotion_PA_L_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getWSpatialUsingGhostMotion_PA_L_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t warpPrevMetaBuffer(void *a1, uint64_t a2, int a3, int32x4_t a4, int32x4_t a5, int32x4_t a6)
{
  v8 = [a1 contents];
  if (!v8)
  {
    v10 = 0;
    v15 = a3;
    result = 5;
LABEL_12:
    *(a2 + 2 * v15) = v10;
    return result;
  }

  if (a2)
  {
    v9 = *v8;
    if (v9 >= 32)
    {
      v10 = 32;
    }

    else
    {
      v10 = *v8;
    }

    if (v9 <= 0)
    {
      result = 0;
      v15 = a3;
    }

    else
    {
      v11 = v10;
      v12 = vzip1q_s32(a4, a5);
      v12.i32[2] = a6.i32[0];
      v13 = vzip2q_s32(vzip1q_s32(a4, a6), vdupq_lane_s32(*a5.i8, 1));
      v14 = vzip2q_s32(a4, a5);
      v14.i32[2] = a6.i32[2];
      v15 = a3;
      v16 = (a2 + (a3 << 10) + 20);
      v17 = (v8 + 26);
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      do
      {
        v19 = *(v17 - 3);
        v20 = *(v17 - 2);
        v21 = vmulq_n_f32(v12, v19);
        v22 = vaddq_f32(v14, vmlaq_n_f32(v21, v13, v20));
        v23 = vdiv_f32(*v22.i8, vdup_laneq_s32(v22, 2));
        v24 = vmulq_n_f32(v12, v19 + (*(v17 - 1) - v19));
        v25 = vaddq_f32(v14, vmlaq_n_f32(v24, v13, v20));
        v26 = v20 + (*v17 - v20);
        v27 = vaddq_f32(v14, vmlaq_n_f32(v21, v13, v26));
        *v27.i8 = vdiv_f32(*v27.i8, vdup_laneq_s32(v27, 2));
        v28 = vaddq_f32(v14, vmlaq_n_f32(v24, v13, v26));
        *v28.i8 = vdiv_f32(*v28.i8, vdup_laneq_s32(v28, 2));
        v29 = vdiv_f32(*v25.i8, vdup_laneq_s32(v25, 2));
        *v21.f32 = vcgt_f32(v29, v23);
        *v25.i8 = vbsl_s8(*v21.f32, v23, v29);
        v30 = vcgt_f32(*v28.i8, *v27.i8);
        v31 = vbsl_s8(v30, *v27.i8, *v28.i8);
        *v25.i8 = vbsl_s8(vcgt_f32(v31, *v25.i8), *v25.i8, v31);
        v32 = vbsl_s8(*v21.f32, v29, v23);
        *v28.i8 = vbsl_s8(v30, *v28.i8, *v27.i8);
        *v28.i8 = vadd_f32(*v25.i8, vsub_f32(vbsl_s8(vcgt_f32(*v28.i8, v32), *v28.i8, v32), *v25.i8));
        *v33.i8 = vcvt_s32_f32(*v25.i8);
        v33.i64[1] = v33.i64[0];
        *v34.i8 = vcvt_s32_f32(*v28.i8);
        v34.i64[1] = v34.i64[0];
        v27.i64[0] = vaddq_s32(v34, v33).u64[0];
        v27.i64[1] = vsubq_s32(v34, v33).i64[1];
        v16[-1].i64[0] = v25.i64[0];
        v16[-1].i64[1] = v28.i64[0];
        *v16 = vmulq_f32(vcvtq_f32_s32(v27), v18);
        v16 += 2;
        v17 += 8;
        --v11;
      }

      while (v11);
      result = 0;
    }

    goto LABEL_12;
  }

  return 5;
}

uint64_t syncWeightsSpatial(float32x2_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 5;
  }

  v2 = a1->i16[0];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = v2;
      v5 = (a2 + 2436);
      v6 = a1 + 7;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        v10 = *v6;
        v6 += 4;
        v11 = vsub_f32(a1[4 * i + 7], v10);
        v11.f32[0] = 1.0 - fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v11, v11))) * 0.0078125, 0.0), 1.0);
        v9 = v9 + (v11.f32[0] * *v5);
        v8 = v8 + (v11.f32[0] * (1.0 - *(v5 - 32)));
        v7 = v7 + v11.f32[0];
        ++v5;
        --v4;
      }

      while (v4);
      *(a2 + 2436 + 4 * i) = v9 / v7;
      *(a2 + 2308 + 4 * i) = 1.0 - (v8 / v7);
    }
  }

  return 0;
}

uint64_t syncWeightsSpatialForSWWeights(float32x2_t *a1)
{
  if (!a1)
  {
    return 5;
  }

  v1 = a1->i16[0];
  if (v1 >= 1)
  {
    v2 = a1->i16[0];
    v3 = a1 + 709;
    do
    {
      v3->i32[0] = v3[-16].i32[0];
      v3 = (v3 + 4);
      --v2;
    }

    while (v2);
    do
    {
      v4 = v1;
      v5 = &a1[709];
      v6 = a1 + 7;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v9 = *v6;
        v6 += 4;
        v10 = vsub_f32(a1[4 * v2 + 7], v9);
        v10.f32[0] = 1.0 - fminf(fmaxf(sqrtf(vaddv_f32(vmul_f32(v10, v10))) * 0.0078125, 0.0), 1.0);
        v9.i32[0] = *v5++;
        v8 = v8 + (v10.f32[0] * v9.f32[0]);
        v7 = v7 + v10.f32[0];
        --v4;
      }

      while (v4);
      a1[693].f32[v2++] = v8 / v7;
    }

    while (v2 != v1);
  }

  return 0;
}

uint64_t fetchOneFrameFromSampleBuffer(__CVBuffer **a1, CMSampleBufferRef sbuf)
{
  if (!a1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    FigDebugAssert3();
    v6 = 0;
    v17 = 2;
    goto LABEL_9;
  }

  if (!sbuf || (ImageBuffer = CMSampleBufferGetImageBuffer(sbuf)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    FigDebugAssert3();
    v6 = 0;
    v17 = 4294954516;
    goto LABEL_9;
  }

  v5 = ImageBuffer;
  v6 = CMGetAttachment(sbuf, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v6)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    FigDebugAssert3();
    goto LABEL_14;
  }

  v7 = CMGetAttachment(sbuf, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v7)
  {
LABEL_14:
    v17 = 4294954513;
    goto LABEL_9;
  }

  v8 = v7;
  AttachedMediaFromSampleBuffer = getAttachedMediaFromSampleBuffer(sbuf, kFigCaptureSampleBufferAttachedMediaKey_LightSourceMask);
  if (!AttachedMediaFromSampleBuffer || (v10 = AttachedMediaFromSampleBuffer, (v11 = getAttachedMediaFromSampleBuffer(sbuf, kFigCaptureSampleBufferAttachedMediaKey_KeypointDescriptorData)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_0();
    FigDebugAssert3();

    goto LABEL_14;
  }

  v12 = v11;
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v5);
  v15 = extractMetaDataFromDictionaries(v6, Width, Height, v10, v12);
  v16 = a1[1];
  a1[1] = v15;

  *a1 = v5;
  a1[5] = CMSampleBufferGetImageBuffer(v10);

  v17 = 0;
LABEL_9:

  return v17;
}

uint64_t createConfigDictForRepair_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t createConfigDictForDetection_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getLightSourceMaskFromSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getAttachedMediaFromSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getAttachedMediaFromSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getKeypointDataFromSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getKeypointDataFromSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t getKeypointDataFromSampleBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t initLookAheadFrameArray_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t initLookAheadFrameArray_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

__CVBuffer *createSingleCachedTextureFromPixelBuffer(__CVBuffer *a1, __CVMetalTextureCache *a2, void *a3, int a4, char a5)
{
  v9 = a3;
  image = 0;
  bzero(__src, 0x84uLL);
  if (!a1)
  {
    v18 = 0;
    goto LABEL_13;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface && (v11 = IOSurface, (MetalFormat = getMetalFormat(a1, a4)) != 0))
  {
    v13 = MetalFormat;
    v14 = 1;
    adjustColorAndSpatialKey(v11, __src, 1);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    if ((a5 & 1) == 0)
    {
      if (v13 - 540 > 6)
      {
        v14 = 3;
      }

      else
      {
        v14 = qword_43930[v13 - 540];
      }
    }

    v20 = kCVMetalTextureUsage;
    v17 = [NSNumber numberWithUnsignedInteger:v14];
    v21 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    if (!CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, a2, a1, v18, v13, WidthOfPlane, HeightOfPlane, 0, &image))
    {
      a1 = CVMetalTextureGetTexture(image);
      if (a1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        IOSurfaceSetBulkAttachments2();
      }

      goto LABEL_11;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_2();
    FigDebugAssert3();
    v18 = 0;
  }

  a1 = 0;
LABEL_11:
  if (image)
  {
    CFRelease(image);
  }

LABEL_13:

  return a1;
}

uint64_t createSingleTextureFromYuvBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t createSingleTextureFromYuvBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t adjustColorAndSpatialKey_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}