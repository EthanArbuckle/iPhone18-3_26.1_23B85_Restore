CVPixelBufferRef sub_1724(int a1, int a2, OSType a3)
{
  pixelBufferOut = 0;
  v11 = kCVPixelBufferIOSurfacePropertiesKey;
  v12 = &__NSDictionary0__struct;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = CVPixelBufferCreate(0, a1, a2, a3, v6, &pixelBufferOut);
  v8 = pixelBufferOut;
  if (v7)
  {
    v9 = pixelBufferOut == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    CFRelease(pixelBufferOut);
    v8 = 0;
    pixelBufferOut = 0;
  }

  return v8;
}

void sub_1888(uint64_t a1)
{
  v4 = *(v1 + 8 * v2);
  *(v1 + 8 * v2) = a1;
}

uint64_t sub_18AC()
{

  return fig_log_get_emitter();
}

__n64 sub_18E8@<D0>(int a1@<W8>)
{
  result.n64_u32[0] = (a1 + v2 + 2 * ((a1 + v2) / v3 - 2 * ((a1 + v2) / v3 / v3)) + 1) / v3;
  result.n64_u32[1] = (v1 - 2 * (v1 / v3) + v1 + 2 * ((v1 - 2 * (v1 / v3) + v1) / v3 - 2 * ((v1 - 2 * (v1 / v3) + v1) / v3 / v3)) + 1) / v3;
  return result;
}

FILE *sub_1C20(const char *a1)
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
    if (qword_1E1F0 != -1)
    {
      sub_BF18();
    }

    v8 = qword_1E1E8;
    if (os_log_type_enabled(qword_1E1E8, OS_LOG_TYPE_DEFAULT))
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

FILE *sub_2224(unsigned int a1, int a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  result = sub_1C20(a5);
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

void sub_657C(id a1)
{
  qword_1E1E8 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

uint64_t sub_7834()
{

  return fig_log_get_emitter();
}

void sub_82D8(id a1)
{
  qword_1E1F8 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

float *sub_831C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_DA38();
  }

  if (a3 < 0)
  {
    sub_DA0C();
  }

  if (a4 < 0)
  {
    sub_D9E0();
  }

  if (a5 < 0)
  {
    sub_D9B4();
  }

  if (a6 < 0)
  {
    sub_D988();
  }

  if (a7 < 0)
  {
    sub_D95C();
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
    sub_D930();
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
        sub_D904();
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
        sub_D904();
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
        sub_D904();
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
        sub_D904();
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
        sub_D904();
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
        sub_D904();
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

void sub_8914(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_8954(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_DA64();
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

uint64_t sub_8A38(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
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
          *(v27 - 1) = sub_8954(v14, 0, v28, a10, a11, a12);
          *v27 = sub_8954(v14, 1, v28, v29, v30, v31);
          result = sub_8954(v14, 2, v28, v32, v33, v34);
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

void sub_BEBC(id a1)
{
  qword_1E208 = os_log_create("com.apple.cameracapture", "legacyLog");

  _objc_release_x1();
}

uint64_t sub_C3D8(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C484(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C530(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C5DC(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C688(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C734(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C7E0(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C88C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C938(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_C9E4(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CA90(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CB3C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CBE8(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CC94(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_CD10(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CDBC(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_CE68()
{
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_CEE4(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_CF60(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_CFDC(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_D058(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_D0D4()
{
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_D150(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

uint64_t sub_D1CC(uint64_t a1, _DWORD *a2)
{
  sub_18A0(a1, a2);
  fig_log_get_emitter();
  sub_1820();
  return FigDebugAssert3();
}

void sub_D248(void *a1, _DWORD *a2)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  *a2 = FigSignalErrorAtGM();
}

void sub_D30C(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_1820();
  FigDebugAssert3();
}

void sub_D3A0(__int16 a1, void *a2, _DWORD *a3)
{
  *a3 = a1;
  fig_log_get_emitter();
  sub_1820();
  FigDebugAssert3();
}

void sub_D438(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_1820();
  FigDebugAssert3();
}

void sub_D4CC(void *a1, _DWORD *a2)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_D590(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_D63C(void *a1, _DWORD *a2)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_D700()
{
  fig_log_get_emitter();
  sub_17E0();
  return FigDebugAssert3();
}

uint64_t sub_D77C()
{
  fig_log_get_emitter();
  sub_17E0();
  return FigDebugAssert3();
}

uint64_t sub_D7F8()
{
  fig_log_get_emitter();
  sub_17E0();
  return FigDebugAssert3();
}

uint64_t sub_D874()
{
  fig_log_get_emitter();
  sub_17E0();
  return FigDebugAssert3();
}

void sub_DD6C()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

uint64_t sub_DE1C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_DEC8(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_DF74(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_DFD8(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E084(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E130(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E1DC(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E288(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_E334()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

void sub_E3E4()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

uint64_t sub_E494(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_E5C4(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_E670()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

uint64_t sub_E720(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_E7CC()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

void sub_E87C()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

void sub_E92C()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

void sub_E9DC()
{
  sub_1874();
  sub_17F4();
  sub_18AC();
  sub_18D8();
  FigDebugAssert3();
  sub_18AC();
  *v0 = FigSignalErrorAtGM();
  sub_9BA0();
}

uint64_t sub_EA8C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EB38(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EBE4(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EC90(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_ED3C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EDE8(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EE94(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EF40(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_EFEC(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_F09C(_DWORD *a1)
{
  sub_7834();
  sub_1838();
  FigDebugAssert3();
  sub_7834();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}