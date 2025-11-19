uint64_t sub_2957D5B00()
{
  qword_2A1389E48 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

void sub_2957D9C40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2957D9C50()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957D9C84(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_status(v8, v2, v3) == 4)
  {
    objc_msgSend_GPUEndTime(v8, v4, v5);
    objc_msgSend_GPUStartTime(v8, v6, v7);
  }

  else
  {
    objc_msgSend_status(v8, v4, v5);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

FILE *sub_2957DADF4(const char *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%s", a1);
  v6 = objc_msgSend_stringByDeletingLastPathComponent(v3, v4, v5);
  v9 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v7, v8);
  v20 = 0;
  v11 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v10, v6, 1, 0, &v20);
  v12 = v20;
  if (v11)
  {
    v13 = fopen(a1, "wb");
  }

  else
  {
    if (qword_2A1389E60 != -1)
    {
      sub_2957E384C();
    }

    v14 = qword_2A1389E58;
    if (os_log_type_enabled(qword_2A1389E58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2957D4000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

FILE *sub_2957DB3F8(unsigned int a1, const char *a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  v7 = a2;
  result = sub_2957DADF4(a5, a2);
  if (result)
  {
    v10 = result;
    v11 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      fprintf(v10, "P6 %u %u 255\n", a1, v7);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v14 = a1;
          v15 = v12;
          for (j = a4; v14; --v14)
          {
            *v15 = *j;
            v15[1] = j[1];
            v15[2] = j[2];
            j += 4;
            v15 += 3;
          }

          fwrite(v12, 3uLL, a1, v10);
          a4 += a3;
        }
      }

      free(v12);
    }

    return fclose(v10);
  }

  return result;
}

uint64_t sub_2957DF750()
{
  qword_2A1389E58 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

float *sub_2957DF794(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_2957E3CBC();
  }

  if (a3 < 0)
  {
    sub_2957E3C90();
  }

  if (a4 < 0)
  {
    sub_2957E3C64();
  }

  if (a5 < 0)
  {
    sub_2957E3C38();
  }

  if (a6 < 0)
  {
    sub_2957E3C0C();
  }

  if (a7 < 0)
  {
    sub_2957E3BE0();
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
    sub_2957E3BB4();
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
        sub_2957E3B88();
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
        sub_2957E3B88();
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
        sub_2957E3B88();
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
        sub_2957E3B88();
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
        sub_2957E3B88();
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
        sub_2957E3B88();
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

void sub_2957DFD8C(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_2957DFDCC(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_2957E3CE8();
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

uint64_t sub_2957DFEB0(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
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
          *(v27 - 1) = sub_2957DFDCC(v14, 0, v28, a10, a11, a12);
          *v27 = sub_2957DFDCC(v14, 1, v28, v29, v30, v31);
          result = sub_2957DFDCC(v14, 2, v28, v32, v33, v34);
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

uint64_t sub_2957E04A0(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x29EDBA070];
  v6 = a2;
  v7 = a1;
  v9 = objc_msgSend_numberWithUnsignedInt_(v5, v8, a3);
  v10 = sub_2957E0A68(v7, v6, v9);

  v13 = objc_msgSend_longLongValue(v10, v11, v12);
  return v13;
}

float sub_2957E0530(void *a1, void *a2, float a3)
{
  v5 = MEMORY[0x29EDBA070];
  v6 = a2;
  v7 = a1;
  *&v8 = a3;
  v11 = objc_msgSend_numberWithFloat_(v5, v9, v10, v8);
  v12 = sub_2957E0A68(v7, v6, v11);

  objc_msgSend_floatValue(v12, v13, v14);
  v16 = v15;

  return v16;
}

id sub_2957E0A68(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v18, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_objectForKeyedSubscript_(*(*(&v19 + 1) + 8 * i), v11, v6);
        if (v15)
        {
          v16 = v15;

          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v18, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = v7;
LABEL_11:

  return v16;
}

uint64_t sub_2957E12EC(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957E1378(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957E1404(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957E14F0(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  sub_2957D64A8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957E1578(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  sub_2957D64A8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957E1600()
{
  sub_2957D6498();
  sub_2957D648C();
  return FigDebugAssert3();
}

uint64_t sub_2957E1658(_DWORD *a1)
{
  sub_2957D647C();
  sub_2957D648C();
  FigDebugAssert3();
  sub_2957D64A8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2957E1A04(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

uint64_t sub_2957E1C6C(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2957E27A4(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E294C(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E2AF4(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E2C9C(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E2E44(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E2FEC(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

void sub_2957E3328(void *a1)
{
  sub_2957D5664();
  FigDebugAssert3();
}

uint64_t sub_2957E3400(BOOL *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result != 0;
  return result;
}

void sub_2957E34B0(uint64_t a1, void *a2)
{
  sub_2957DAB48();
  FigDebugAssert3();
}