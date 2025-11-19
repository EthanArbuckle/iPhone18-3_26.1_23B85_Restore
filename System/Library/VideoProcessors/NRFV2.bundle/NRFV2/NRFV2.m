uint64_t sub_2957F85E8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957F861C(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2957F86D0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957F8704(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2957FA434()
{

  return fig_log_get_emitter();
}

void sub_2957FCDF4(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_width(v3, v4, v5, v6);
  v11 = objc_msgSend_height(v3, v8, v9, v10) * v7;
  v15 = v11 * objc_msgSend_depth(v3, v12, v13, v14);
  v16 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  v20 = 4 * objc_msgSend_width(v3, v17, v18, v19);
  v24 = objc_msgSend_width(v3, v21, v22, v23);
  v28 = 4 * v24 * objc_msgSend_height(v3, v25, v26, v27);
  v53 = objc_msgSend_width(v3, v29, v30, v31, 0, 0, 0);
  *&v54 = objc_msgSend_height(v3, v32, v33, v34);
  *(&v54 + 1) = objc_msgSend_depth(v3, v35, v36, v37);
  objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v3, v38, v16, v20, v28, &v48, 0, 0);
  v39 = 0.0;
  if (v15)
  {
    v40 = 1.1755e-38;
    v41 = 3.4028e38;
    v42 = v16;
    do
    {
      v43 = *v42++;
      v44 = v43;
      if (v43 < v41)
      {
        v41 = v44;
      }

      if (v44 > v40)
      {
        v40 = v44;
      }

      v39 = v39 + v44;
      --v15;
    }

    while (v15);
    v45 = v41;
    v46 = v40;
  }

  else
  {
    v45 = 3.40282347e38;
    v46 = 1.17549435e-38;
  }

  if (qword_2A138BA50 != -1)
  {
    sub_29587AE90();
  }

  v47 = qword_2A138BA48;
  if (os_log_type_enabled(qword_2A138BA48, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 136315906;
    v49 = a2;
    v50 = 2048;
    v51 = v45;
    v52 = 2048;
    v53 = *&v46;
    LOWORD(v54) = 2048;
    *(&v54 + 2) = v39;
    _os_log_impl(&dword_2957F6000, v47, OS_LOG_TYPE_DEFAULT, "%s\t(%f,\t%f\t%g)", &v48, 0x2Au);
  }

  free(v16);
}

uint64_t sub_2957FD11C()
{
  qword_2A138BA48 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

void sub_29580163C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_2958016DC(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_2958018C8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295801968(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295802EE4(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295804204(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_2958042A4(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295804360(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295804400(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_2958044BC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29580455C(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_2958071C4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295807264(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295807DB0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295807E50(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295808758(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_GPUEndTime(v3, v4, v5, v6);
  objc_msgSend_GPUStartTime(v3, v7, v8, v9);

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 36);

    kdebug_trace();
  }
}

void sub_2958087F8(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_295808CDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void sub_295808D04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t sub_295808D34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return objc_msgSend_setLabel_(v4, a2, 0, a4);
}

uint64_t sub_295808D4C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return objc_msgSend_newTextureWithDescriptor_(a1, a2, v4, a4);
}

void sub_295809F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  for (i = 264; i != -24; i -= 24)
  {
    sub_295809FB8((&a43 + i));
  }

  _Unwind_Resume(a1);
}

void sub_295809FB8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_29580A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  for (i = 216; i != -24; i -= 24)
  {
    sub_295809FB8((&a33 + i));
  }

  _Unwind_Resume(a1);
}

void sub_29580AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  for (i = 216; i != -24; i -= 24)
  {
    sub_295809FB8((&a33 + i));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29580B938(void *a1)
{
  v1 = a1;
  v5 = objc_msgSend_device(v1, v2, v3, v4, 0, 0, 0, 0);
  objc_msgSend_pixelFormat(v1, v6, v7, v8);

  MTLPixelFormatGetInfoForDevice();
  return 0;
}

uint64_t sub_2958133B0(float32x2_t *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  isEqualToString = objc_msgSend_isEqualToString_(v7[5], v8, @"2019_LowLight", v9);
  v11 = 36;
  if (!isEqualToString)
  {
    v11 = 0;
  }

  v12 = *(a3 + v11);
  v15 = v7;
  v16 = v15[5];
  if (v16 && !objc_msgSend_isEqualToString_(v16, v13, @"2019_DF", v14))
  {
    if (!objc_msgSend_isEqualToString_(v15[5], v17, @"2019_LowLight", v18))
    {
      goto LABEL_17;
    }

    v37 = powf(*(v15 + 3), a4);
    v24 = (v37 * powf(v12, *(v15 + 6))) * *(v15 + 8);
  }

  else
  {
    v19 = ldexpf(1.0, -a4);
    v20 = powf(v12, v19 / *(v15 + 3));
    v21 = exp2f(-a4 / v20);
    v24 = powf(v12, *(v15 + 6)) * v21;
  }

  v25 = (1.0 / sqrtf((1 << a4))) * 0.0039216;
  a1->f32[0] = (v25 * v24) / *(v15 + 4);
  v26 = *(v15 + 7);
  if (v12 > 8.0)
  {
    v26 = v26 + v26;
  }

  a1->f32[1] = v24 / v26;
  a1[1].f32[0] = v25 * v24;
  v27 = v15[5];
  if (!v27 || objc_msgSend_isEqualToString_(v27, v22, @"2019_DF", v23))
  {
    v30 = ((a4 + 1.0) * (a4 + 1.0)) * powf(*(v15 + 2), (a4 + 1.0) / -1.9);
    *&v31 = v30 * (v25 * powf(v12 * *(a3 + 8), *(v15 + 5)));
    v41 = v31;
    a1[2].i32[0] = v31;
    v34 = v30 * (v25 * powf(v12 * *(a3 + 4), *(v15 + 5)));
    goto LABEL_11;
  }

  if (!objc_msgSend_isEqualToString_(v15[5], v28, @"2019_LowLight", v29))
  {
LABEL_17:
    v35 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  v38 = powf(*(v15 + 2), a4);
  *&v39 = *(v15 + 9) * (v38 * (v25 * powf(v12 * *(a3 + 8), *(v15 + 5))));
  v41 = v39;
  a1[2].i32[0] = v39;
  v34 = *(v15 + 9) * (v38 * (v25 * powf(v12 * *(a3 + 4), *(v15 + 5))));
LABEL_11:
  a1[2] = __PAIR64__(LODWORD(v34), v41);
  v35 = 0;
  if (objc_msgSend_isEqualToString_(v15[5], v32, @"2019_DF", v33, v41))
  {
    v36 = vdup_n_s32(0x437F0000u);
    a1[1].f32[0] = a1[1].f32[0] * 255.0;
    *a1 = vmul_f32(*a1, v36);
    a1[2] = vmul_f32(a1[2], v36);
  }

LABEL_18:

  return v35;
}

float32x2_t sub_295813774(float32x2_t *a1, float a2)
{
  a1->f32[0] = a1->f32[0] * a2;
  a1[1].f32[0] = a1[1].f32[0] * a2;
  result = vmul_n_f32(a1[2], a2);
  a1[2] = result;
  return result;
}

float sub_2958142F0(float *a1, float *a2, unsigned int a3, int a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v58 = a3;
    v10 = 0.0;
    v11 = 2.0;
    v12 = a3;
    v13 = 0.0;
    v57 = a3;
    while (1)
    {
      v14 = 0;
      do
      {
        v15 = 747796405 * v9 - 1403630843;
        v16 = 277803737 * ((v9 >> ((v9 >> 28) + 4)) ^ v9);
        v17 = (v16 ^ (v16 >> 22)) % a3;
        v18 = a1[v17];
        v19 = a2[v17];
        v20 = 277803737 * ((v15 >> ((v15 >> 28) + 4)) ^ v15);
        v21 = (v20 ^ (v20 >> 22)) % a3;
        v22 = a1[v21];
        v23 = a2[v21];
        v24 = v18 + v22;
        if (a4)
        {
          v25 = fminf(((v19 + v23) - v24) * 0.5, 0.00048828);
          if (v25 < -0.00048828)
          {
            v25 = -0.00048828;
          }

          v26 = 1.0;
        }

        else
        {
          v27 = (v22 * v22) + (v18 * v18);
          v28 = (v27 * v11) - (v24 * v24);
          if (v28 <= 0.00000095367)
          {
            v26 = 1.0;
            v25 = 0.0;
          }

          else
          {
            v29 = (v22 * v23) + (v18 * v19);
            v30 = v19 + v23;
            v25 = ((v29 * -v24) + (v30 * v27)) / v28;
            v26 = ((v29 * v11) - (v30 * v24)) / v28;
          }
        }

        v9 = 747796405 * v15 - 1403630843;
      }

      while (v25 == 0.0 && v14++ < 9);
      if (v25 != 0.0)
      {
        v32 = sqrtf((v26 * v26) + 1.0);
        v33 = 0.0;
        v34 = v12;
        v35 = a2;
        v36 = a1;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v40 = 0.0;
        do
        {
          v41 = *v36;
          v42 = *v35;
          if ((vabds_f32(v25 + (v26 * *v36), *v35) / v32) < 0.00097656)
          {
            v40 = v40 + 1.0;
            v39 = v39 + v41;
            v38 = v38 + (v41 * v41);
            v37 = v37 + v42;
            v33 = v33 + (v41 * v42);
          }

          ++v36;
          ++v35;
          --v34;
        }

        while (v34);
        if (v40 == 0.0)
        {
          return v10;
        }

        if (a4)
        {
          v43 = fminf((v37 - v39) / v40, 0.00048828);
          if (v43 >= -0.00048828)
          {
            v44 = v43;
          }

          else
          {
            v44 = -0.00048828;
          }

          v45 = 1.0;
        }

        else
        {
          v46 = (v40 * v38) - (v39 * v39);
          if (v46 <= 0.00000095367)
          {
            v45 = 1.0;
            v44 = 0.0;
          }

          else
          {
            v44 = ((v33 * -v39) + (v37 * v38)) / v46;
            v45 = ((v40 * v33) - (v37 * v39)) / v46;
          }
        }

        v47 = 0;
        v48 = sqrtf((v45 * v45) + 1.0);
        v49 = 0.0;
        v50 = v12;
        v51 = a2;
        v52 = a1;
        do
        {
          v53 = vabds_f32(v44 + (v45 * *v52), *v51) / v48;
          if (v53 < 0.00073242)
          {
            ++v47;
            v49 = v49 + ((1.0 - *v52) * ((v53 * -1024.0) + 1.0));
          }

          ++v52;
          ++v51;
          --v50;
        }

        while (v50);
        if (v49 > v13)
        {
          v54 = logf(1.0 - ((v47 / v58) * (v47 / v58)));
          v12 = v57;
          v11 = 2.0;
          v55 = (-6.9078 / v54) > v8;
          v10 = v44;
          v13 = v49;
          if (!v55)
          {
            return v44;
          }
        }
      }

      ++v8;
      v44 = v10;
      if (v8 == 500)
      {
        return v44;
      }
    }
  }

  return 0.0;
}

void sub_2958152E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_295815304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29581531C(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 40);
  v4 = *(*(a1[6] + 8) + 40);
  v8 = a2;
  objc_msgSend_calculateAdjustmentParametersWithParamsBuffer_statsBuffer_(v2, v5, v3, v4);
  objc_msgSend_setSignaledValue_(v8, v6, 2, v7);
}

uint64_t sub_295815398()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2958153CC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295815E30()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295815E64(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2958160B8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2958160EC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29581639C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2958163D0(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295816728()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29581675C(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

CGFloat sub_295816EA0@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = MEMORY[0x29EDB90A0];
  v15 = *(MEMORY[0x29EDB90A0] + 16);
  v16 = *MEMORY[0x29EDB90A0];
  *a2 = *MEMORY[0x29EDB90A0];
  *(a2 + 16) = v15;
  v14 = *(v4 + 32);
  *(a2 + 32) = v14;
  v5 = 0.0;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v6 = 0;
        v3 = 1;
        v5 = 1.57079633;
        goto LABEL_16;
      }

      v3 = 1;
      v5 = 1.57079633;
      goto LABEL_15;
    }

    if (a1 != 7)
    {
      v6 = 0;
      if (a1 == 8)
      {
        v6 = 0;
        v3 = 1;
        v5 = 4.71238898;
      }

      goto LABEL_16;
    }

    v3 = 1;
    v5 = 4.71238898;
LABEL_15:
    v6 = 1;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (a1 != 3)
  {
    v6 = 0;
    if (a1 != 4)
    {
      goto LABEL_16;
    }

    v3 = 1;
    v5 = 3.14159265;
    goto LABEL_15;
  }

  v6 = 0;
  v3 = 1;
  v5 = 3.14159265;
LABEL_16:
  CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
  *&t1.a = v16;
  *&t1.c = v15;
  *&t1.tx = v14;
  CGAffineTransformConcat(a2, &t1, &t2);
  if (v6)
  {
    CGAffineTransformMakeScale(&t1, -1.0, 1.0);
    v7 = *(a2 + 16);
    *&v17.a = *a2;
    *&v17.c = v7;
    *&v17.tx = *(a2 + 32);
    CGAffineTransformConcat(&t2, &v17, &t1);
    v8 = *&t2.c;
    *a2 = *&t2.a;
    *(a2 + 16) = v8;
    *(a2 + 32) = *&t2.tx;
  }

  if (v3)
  {
    CGAffineTransformMakeRotation(&t1, v5);
    v9 = *(a2 + 16);
    *&v17.a = *a2;
    *&v17.c = v9;
    *&v17.tx = *(a2 + 32);
    CGAffineTransformConcat(&t2, &v17, &t1);
    v10 = *&t2.c;
    *a2 = *&t2.a;
    *(a2 + 16) = v10;
    *(a2 + 32) = *&t2.tx;
  }

  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v11 = *(a2 + 16);
  *&v17.a = *a2;
  *&v17.c = v11;
  *&v17.tx = *(a2 + 32);
  CGAffineTransformConcat(&t2, &v17, &t1);
  v12 = *&t2.c;
  *a2 = *&t2.a;
  *(a2 + 16) = v12;
  result = t2.tx;
  *(a2 + 32) = *&t2.tx;
  return result;
}

id sub_2958170BC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v6 = objc_msgSend_count(v1, v3, v4, v5);
  v9 = objc_msgSend_initWithCapacity_(v2, v7, v6, v8);
  if (v1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v1;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v25, v24, 16);
    if (v12)
    {
      v16 = v12;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v30 = 0;
          v31 = &v30;
          v32 = 0x2050000000;
          v20 = qword_2A138BA58;
          v33 = qword_2A138BA58;
          if (!qword_2A138BA58)
          {
            v29[0] = MEMORY[0x29EDCA5F8];
            v29[1] = 3221225472;
            v29[2] = sub_2958172C0;
            v29[3] = &unk_29EDDBEE8;
            v29[4] = &v30;
            sub_2958172C0(v29, v13, v14, v15);
            v20 = v31[3];
          }

          v21 = v20;
          _Block_object_dispose(&v30, 8);
          if (objc_opt_isKindOfClass())
          {
            v22 = objc_msgSend_landmarks(v19, v13, v14, v15);

            if (v22)
            {
              objc_msgSend_addObject_(v9, v13, v19, v15);
            }
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v25, v24, 16);
      }

      while (v16);
    }
  }

  return v9;
}

Class sub_2958172C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0;
  if (!qword_2A18C2228)
  {
    v9[1] = MEMORY[0x29EDCA5F8];
    v9[2] = 3221225472;
    v9[3] = sub_2958173C0;
    v9[4] = &unk_29EDDBF20;
    v9[5] = v9;
    v10 = xmmword_29EDDBF08;
    v11 = 0;
    qword_2A18C2228 = _sl_dlopen();
  }

  if (!qword_2A18C2228)
  {
    sub_29588D640(v9, a2, a3, a4);
  }

  if (v9[0])
  {
    free(v9[0]);
  }

  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29588D5C4(result, v6, v7, v8);
  }

  qword_2A138BA58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2958173C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A18C2228 = result;
  return result;
}

void sub_295819574(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295819614(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

double sub_29581A3D8(__int128 *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a1;
  v8 = a1[1];
  v18 = a1[2];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v3 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v17[v3])), v5, *&v17[v3], 1), v6, v17[v3], 2);
    ++v3;
  }

  while (v3 != 3);
  v9 = 0;
  v12 = v19;
  v10 = v20;
  v11 = v21;
  v12.i32[3] = 0;
  HIDWORD(v10) = 0;
  HIDWORD(v11) = 0;
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v17[0] = v12;
  v17[1] = v10;
  v18 = v11;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  do
  {
    *(&v19 + v9 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v17[v9])), v14, *&v17[v9], 1), v15, v17[v9], 2);
    ++v9;
  }

  while (v9 != 3);
  if (fabsf(*(&v21 + 2)) > 0.00000001)
  {
    v12.i64[0] = vmulq_n_f32(v19, 1.0 / *(&v21 + 2)).u64[0];
  }

  return *v12.i64;
}

uint64_t sub_29581CC70()
{

  return fig_log_get_emitter();
}

uint64_t sub_29581CC88()
{

  return fig_log_get_emitter();
}

uint64_t sub_29581D324(void *a1, float *a2, float *a3)
{
  v5 = a1;
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, *MEMORY[0x29EDC0590], v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v5, v9, *MEMORY[0x29EDC05A8], v10);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  v17 = objc_msgSend_objectForKeyedSubscript_(v5, v15, *MEMORY[0x29EDC0538], v16);
  v20 = objc_msgSend_objectForKeyedSubscript_(v5, v18, *MEMORY[0x29EDC0528], v19);
  v24 = v20;
  if (v8)
  {
    v25 = v20 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25 || v17 == 0)
  {
    sub_2958931AC();
    v79 = 4294954512;
    goto LABEL_22;
  }

  if (objc_msgSend_length(v14, v21, v22, v23) > 0x1B018)
  {
    sub_295893148();
LABEL_28:
    v79 = 4294954516;
    goto LABEL_22;
  }

  v27 = v14;
  v31 = objc_msgSend_bytes(v27, v28, v29, v30);
  v35 = objc_msgSend_length(v14, v32, v33, v34);
  memcpy(a3 + 27654, v31, v35);
  if (objc_msgSend_length(v24, v36, v37, v38) >= 0x205)
  {
    sub_2958930E4();
    goto LABEL_28;
  }

  v39 = v24;
  v43 = objc_msgSend_bytes(v39, v40, v41, v42);
  v47 = objc_msgSend_length(v24, v44, v45, v46);
  memcpy(a3 + 55308, v43, v47);
  if (objc_msgSend_length(v17, v48, v49, v50) >= 0x205)
  {
    sub_295893080();
    goto LABEL_28;
  }

  v51 = v17;
  v55 = objc_msgSend_bytes(v51, v52, v53, v54);
  v59 = objc_msgSend_length(v17, v56, v57, v58);
  memcpy(a3 + 55437, v55, v59);
  if (objc_msgSend_length(v8, v60, v61, v62) > 0x1B018)
  {
    sub_29589301C();
    goto LABEL_28;
  }

  v63 = v8;
  v67 = objc_msgSend_bytes(v63, v64, v65, v66);
  v71 = objc_msgSend_length(v8, v68, v69, v70);
  memcpy(a3, v67, v71);
  v72 = sub_29583725C(a3);
  v73 = sub_2958372C4(a3);
  if (v72 == 8 && v73 == 6)
  {
    if (sub_2958373F4(a3))
    {
      sub_295892F54();
    }

    else
    {
      v74 = (*a2 / a2[9]) / a2[10];
      a3[55566] = v74;
      v75 = *(a3 + 110616);
      if (*(a3 + 110616))
      {
        v76 = a3 + 110617;
        LOWORD(v74) = *(a3 + v75 + 110616);
        HIWORD(v77) = 18303;
        v78 = LODWORD(v74) / 65535.0;
        do
        {
          LOWORD(v77) = *v76;
          v77 = LODWORD(v77) / v78;
          *v76++ = v77;
          --v75;
        }

        while (v75);
      }
    }
  }

  else
  {
    sub_295892FB8();
  }

  v79 = 0;
LABEL_22:

  return v79;
}

void sub_29581E480(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29581E520(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_29581FA58(uint64_t result, int a2, int *a3, uint64_t a4, unint64_t a5, unint64_t *a6, float a7, float a8, float a9, float a10, float a11, double a12)
{
  v12 = result + 40 * a2;
  LOWORD(a12) = *(v12 + 34);
  v13 = (round(*&a12 / 90.0) * 90.0) % 0x168u;
  switch(v13)
  {
    case 0x10Eu:
      a7 = (1.0 - a7) - a9;
      v14 = a8;
      goto LABEL_7;
    case 0xB4u:
      v14 = (1.0 - a7) - a9;
      a7 = (1.0 - a8) - a10;
      break;
    case 0x5Au:
      v14 = (1.0 - a8) - a10;
LABEL_7:
      v15 = a10;
      goto LABEL_10;
    default:
      v14 = a7;
      a7 = a8;
      break;
  }

  v15 = a9;
  a9 = a10;
LABEL_10:
  v16 = v14;
  v17 = *(v12 + 16);
  v18 = *(v12 + 24);
  v19.f64[0] = *v12 + v16 * v17;
  v20.f64[0] = v17 * v15;
  v19.f64[1] = *(v12 + 8) + a7 * v18;
  v20.f64[1] = v18 * a9;
  *(a4 + 16 * *a3 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v20);
  v21 = *a3;
  *(a4 + 4 * v21 + 336) = a11;
  v22 = vcvtps_u32_f32(vmuls_lane_f32(a5, vcvt_f32_f64(v20), 1));
  v23 = v22 >> (v22 > 0xC8) >> (v22 >> (v22 > 0xC8) > 0xC8);
  if (v23 >= 0xC9)
  {
    return sub_29589480C();
  }

  if (*a6 > v23)
  {
    v23 = *a6;
  }

  *a6 = v23;
  *a3 = v21 + 1;
  return result;
}

void sub_29581FBFC(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = MEMORY[0x29EDC0388];
  v216 = v3;
  if (!v3)
  {
    v13 = 0;
    LOBYTE(v14) = 0;
    v15 = 256.0;
    v16 = 4096.0;
    v205 = 0;
    v206 = 1.0;
    v207 = 1.0;
    v208 = 0.02;
    v17 = 1.0;
    v18 = 0.0;
    v203 = 0;
    v204 = 0.0;
    v19 = *MEMORY[0x29EDC0388];
    v20 = 0.0;
    v201 = 1.0;
    v202 = 1.0;
    v212 = 4096.0;
    v213 = 4096.0;
    v210 = 4096.0;
    v211 = 4096.0;
    v209 = 4096.0;
    v21 = 0;
    v200 = 1.0;
    v197 = 0x7F80000000000000;
    v22 = 1.0;
    v214 = 256.0;
    v215 = 1.0;
    goto LABEL_79;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x29EDC04D0], v5);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_floatValue(v7, v8, v9, v10);
  }

  else
  {
    *&v12 = 0.02;
  }

  v208 = *&v12;
  v23 = objc_msgSend_objectForKeyedSubscript_(v216, v8, *MEMORY[0x29EDC0368], v10);

  v22 = 1.0;
  LODWORD(v27) = 1.0;
  if (v23)
  {
    *&v27 = vcvts_n_f32_s32(objc_msgSend_intValue(v23, v24, v25, v26, v27), 8uLL);
  }

  v215 = *&v27;
  v28 = objc_msgSend_objectForKeyedSubscript_(v216, v24, *MEMORY[0x29EDC0770], v26);

  if (v28)
  {
    v22 = vcvts_n_f32_s32(objc_msgSend_intValue(v28, v29, v30, v31), 8uLL);
  }

  v32 = objc_msgSend_objectForKeyedSubscript_(v216, v29, *MEMORY[0x29EDC0758], v31);

  if (v32)
  {
    v214 = objc_msgSend_intValue(v32, v33, v34, v35);
  }

  else
  {
    v214 = 256.0;
  }

  v36 = objc_msgSend_objectForKeyedSubscript_(v216, v33, *MEMORY[0x29EDC0390], v35);

  if (v36)
  {
    v16 = objc_msgSend_intValue(v36, v37, v38, v39);
  }

  else
  {
    v16 = 4096.0;
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(v216, v37, *MEMORY[0x29EDC0398], v39);

  if (v40)
  {
    v213 = objc_msgSend_intValue(v40, v41, v42, v43);
  }

  else
  {
    v213 = 4096.0;
  }

  v44 = objc_msgSend_objectForKeyedSubscript_(v216, v41, *MEMORY[0x29EDC0370], v43);

  if (v44)
  {
    v212 = objc_msgSend_intValue(v44, v45, v46, v47);
  }

  else
  {
    v212 = 4096.0;
  }

  v19 = *v6;
  v48 = objc_msgSend_objectForKeyedSubscript_(v216, v45, *v6, v47);

  if (v48)
  {
    v211 = objc_msgSend_intValue(v48, v49, v50, v51);
  }

  else
  {
    v211 = 4096.0;
  }

  v52 = objc_msgSend_objectForKeyedSubscript_(v216, v49, *MEMORY[0x29EDC0380], v51);

  if (v52)
  {
    v210 = objc_msgSend_intValue(v52, v53, v54, v55);
  }

  else
  {
    v210 = 4096.0;
  }

  v56 = objc_msgSend_objectForKeyedSubscript_(v216, v53, *MEMORY[0x29EDC0378], v55);

  if (v56)
  {
    v209 = objc_msgSend_intValue(v56, v57, v58, v59);
  }

  else
  {
    v209 = 4096.0;
  }

  v60 = objc_msgSend_objectForKeyedSubscript_(v216, v57, *MEMORY[0x29EDC0768], v59);

  v17 = 1.0;
  LODWORD(v64) = 1.0;
  if (v60)
  {
    *&v64 = vcvts_n_f32_s32(objc_msgSend_intValue(v60, v61, v62, v63, v64), 8uLL);
  }

  v207 = *&v64;
  v65 = objc_msgSend_objectForKeyedSubscript_(v216, v61, *MEMORY[0x29EDC0548], v63);

  if (v65)
  {
    v17 = vcvts_n_f32_s32(objc_msgSend_intValue(v65, v66, v67, v68), 0xCuLL);
  }

  v69 = objc_msgSend_objectForKeyedSubscript_(v216, v66, *MEMORY[0x29EDC03E8], v68);

  if (v69)
  {
    v73 = objc_msgSend_unsignedLongLongValue(v69, v70, v71, v72);
  }

  else
  {
    v73 = 1.0;
  }

  v206 = v73;
  v74 = objc_msgSend_objectForKeyedSubscript_(v216, v70, *MEMORY[0x29EDC04C8], v72);

  v18 = 0.0;
  v78 = 0;
  if (v74)
  {
    objc_msgSend_floatValue(v74, v75, v76, v77, 0.0);
  }

  v205 = v78;
  v79 = objc_msgSend_objectForKeyedSubscript_(v216, v75, *MEMORY[0x29EDC0678], v77);

  if (v79)
  {
    objc_msgSend_floatValue(v79, v80, v81, v82);
    v18 = v83 * 0.000015259;
  }

  v84 = objc_msgSend_objectForKeyedSubscript_(v216, v80, *MEMORY[0x29EDC0680], v82);

  v20 = 0.0;
  v88 = 0.0;
  if (v84)
  {
    objc_msgSend_floatValue(v84, v85, v86, v87, 0.0);
    v88 = v89 * 0.000015259;
  }

  v204 = v88;
  v90 = objc_msgSend_objectForKeyedSubscript_(v216, v85, *MEMORY[0x29EDC0478], v87);

  if (v90)
  {
    objc_msgSend_floatValue(v90, v91, v92, v93);
    v20 = v94 * 0.000015259;
  }

  v95 = objc_msgSend_objectForKeyedSubscript_(v216, v91, *MEMORY[0x29EDC06C0], v93);

  if (v95)
  {
    objc_msgSend_floatValue(v95, v96, v97, v98);
  }

  else
  {
    v99 = 0;
  }

  v203 = v99;
  v100 = objc_msgSend_objectForKeyedSubscript_(v216, v96, *MEMORY[0x29EDC05A0], v98);

  v104 = 1.0;
  LODWORD(v105) = 1.0;
  if (v100)
  {
    objc_msgSend_floatValue(v100, v101, v102, v103, v105);
  }

  v202 = *&v105;
  v106 = objc_msgSend_objectForKeyedSubscript_(v216, v101, *MEMORY[0x29EDC0360], v103);

  if (v106)
  {
    objc_msgSend_floatValue(v106, v107, v108, v109);
    v104 = v110;
  }

  v111 = objc_msgSend_objectForKeyedSubscript_(v216, v107, *MEMORY[0x29EDC0350], v109);

  if (v111)
  {
    objc_msgSend_floatValue(v111, v112, v113, v114);
  }

  else
  {
    v115 = 1.0;
  }

  v200 = v115;
  v201 = v104;
  v116 = objc_msgSend_objectForKeyedSubscript_(v216, v112, *MEMORY[0x29EDC0760], v114);

  if (v116)
  {
    objc_msgSend_floatValue(v116, v117, v118, v119);
    v15 = v120 * 256.0;
  }

  else
  {
    v15 = 256.0;
  }

  v121 = objc_msgSend_objectForKeyedSubscript_(v216, v117, *MEMORY[0x29EDC0618], v119);

  if (v121)
  {
    objc_msgSend_floatValue(v121, v122, v123, v124);
    HIDWORD(v198) = v125;
  }

  else
  {
    HIDWORD(v198) = 2139095040;
  }

  v126 = objc_msgSend_objectForKeyedSubscript_(v216, v122, *MEMORY[0x29EDC0280], v124);

  if (v126)
  {
    v13 = objc_msgSend_intValue(v126, v127, v128, v129) == 1;
  }

  else
  {
    v13 = 0;
  }

  v130 = objc_msgSend_objectForKeyedSubscript_(v216, v127, *MEMORY[0x29EDC05C0], v129);

  if (v130)
  {
    objc_msgSend_floatValue(v130, v131, v132, v133);
  }

  else
  {
    v134 = 0;
  }

  LODWORD(v198) = v134;

  v135 = *MEMORY[0x29EDC0798];
  v138 = objc_msgSend_objectForKeyedSubscript_(v216, v136, *MEMORY[0x29EDC0798], v137);

  if (v138)
  {
    objc_msgSend_objectForKeyedSubscript_(v216, v139, v135, v140, v198);
  }

  else
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v216, v139, @"HREnabled", v140);

    if (!v14)
    {
      goto LABEL_75;
    }

    objc_msgSend_objectForKeyedSubscript_(v216, v141, @"HREnabled", v142, v198);
  }
  v143 = ;
  v145 = v143;
  if (v143)
  {
    LOBYTE(v14) = objc_msgSend_BOOLValue(v143, v141, v144, v142);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

LABEL_75:
  v146 = objc_msgSend_objectForKeyedSubscript_(v216, v141, *MEMORY[0x29EDC0448], v142, v198);
  v150 = v146;
  if (v146)
  {
    objc_msgSend_floatValue(v146, v147, v148, v149);
    v21 = v151;
  }

  else
  {
    v21 = 0;
  }

  v3 = v216;
LABEL_79:
  v152 = v18;
  objc_msgSend_objectForKeyedSubscript_(v3, v4, v19, v5, v197);

  v155 = objc_msgSend_objectForKeyedSubscript_(v216, v153, *MEMORY[0x29EDC04F0], v154);
  v159 = v155;
  v160 = v17;
  if (v155)
  {
    objc_msgSend_floatValue(v155, v156, v157, v158);
    v164 = v163;
  }

  else
  {
    v165 = objc_msgSend_objectForKeyedSubscript_(v216, v156, @"ExperimentalMetadata", v158);
    v168 = objc_msgSend_objectForKeyedSubscript_(v165, v166, @"SRL", v167);
    v171 = objc_msgSend_objectForKeyedSubscript_(v168, v169, @"faceExpRatio", v170);

    if (v171)
    {
      v172 = objc_msgSend_objectForKeyedSubscript_(v216, v161, @"ExperimentalMetadata", v162);
      v175 = objc_msgSend_objectForKeyedSubscript_(v172, v173, @"SRL", v174);
      v178 = objc_msgSend_objectForKeyedSubscript_(v175, v176, @"faceExpRatio", v177);

      objc_msgSend_floatValue(v178, v179, v180, v181);
      v164 = v182;
    }

    else
    {
      v164 = 0;
    }
  }

  v183 = v214 / v15;
  v184 = (v214 / v15) * (v22 * v215);
  v185 = 0.066667;
  if (v208 <= 0.066667)
  {
    v185 = v208;
  }

  *(a2 + 100) = v164;
  *a2 = v184;
  *(a2 + 4) = v213 / v16;
  *(a2 + 8) = v212 / v16;
  *(a2 + 12) = v211 / v210;
  *(a2 + 16) = v209 / v210;
  *(a2 + 20) = v215;
  *(a2 + 24) = v183;
  *(a2 + 36) = v184 / v183;
  *(a2 + 40) = v207;
  *(a2 + 44) = v160;
  *(a2 + 48) = v208;
  *(a2 + 52) = v206;
  *(a2 + 56) = HIDWORD(v199);
  *(a2 + 60) = v205;
  *(a2 + 64) = v152;
  *(a2 + 68) = v204;
  *(a2 + 72) = v20;
  *(a2 + 76) = v203;
  *(a2 + 80) = v202;
  *(a2 + 84) = v13;
  v186 = (v201 * (v208 * v184)) / (v200 * v185);
  v187 = objc_msgSend_objectForKeyedSubscript_(v216, v161, *MEMORY[0x29EDC0358], v162);
  *(a2 + 85) = objc_msgSend_BOOLValue(v187, v188, v189, v190);

  v193 = objc_msgSend_objectForKeyedSubscript_(v216, v191, *MEMORY[0x29EDC0588], v192);
  *(a2 + 92) = objc_msgSend_BOOLValue(v193, v194, v195, v196);

  *(a2 + 96) = v186;
  *(a2 + 88) = v199;
  *(a2 + 86) = v14;
  *(a2 + 104) = v21;
}

uint64_t sub_295820588(uint64_t a1, double *a2, unint64_t a3, unint64_t a4)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v7 = *MEMORY[0x29EDC0750];
  if (!FigCFDictionaryGetCGRectIfPresent() || (v8 = *a2, *a2 == 0.0) && a2[1] == 0.0 && a2[2] == 0.0 && a2[3] == 0.0)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = a3;
    a2[3] = a4;
    v8 = 0.0;
  }

  v9 = a3;
  if (v8 < 0.0 || v8 > v9)
  {
    return 4294954516;
  }

  v11 = a2[1];
  v12 = a4;
  if (v11 < 0.0 || v11 > v12)
  {
    return 4294954516;
  }

  v14 = a2[2];
  if (v14 < 0.0 || v14 > v9)
  {
    return 4294954516;
  }

  v17 = a2[3];
  result = 4294954516;
  if (v17 >= 0.0)
  {
    if (v17 > v12)
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float sub_295820670(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 1) >= 2)
  {
    result = 1.0;
    if (!a3)
    {
      return (*a1 * *(a1 + 48)) / (*a2 * *(a2 + 48));
    }
  }

  else
  {
    v3 = 1.0;
    v4 = 1.0;
    if (*(a1 + 86) == 1)
    {
      v4 = *(a1 + 44);
    }

    if (*(a2 + 86) == 1)
    {
      v3 = *(a2 + 44);
    }

    result = ((*(a1 + 36) * *(a1 + 48)) / v4) / ((*(a2 + 36) * *(a2 + 48)) / v3);
    v6 = sqrtf(result);
    if (a3 == 1)
    {
      return v6;
    }
  }

  return result;
}

float sub_295820700(uint64_t a1, uint64_t a2)
{
  result = 1.0;
  if (a1 && a2)
  {
    v3 = *(a2 + 48);
    if (v3 != 0.0)
    {
      return *(a1 + 48) / v3;
    }
  }

  return result;
}

float sub_295820728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 223936);
  if (v3 == 2)
  {
    if (*(a3 + 224144))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = v3 == 1;
  }

  return sub_295820670(a1, a2, v4);
}

uint64_t sub_29582075C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v8 = a2;
  v9 = (a2 + 221184);
  v10 = a1;
  v11 = *(MEMORY[0x29EDCA928] + 16);
  v168 = *MEMORY[0x29EDCA928];
  v169 = v11;
  v170 = *(MEMORY[0x29EDCA928] + 32);
  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v12, *MEMORY[0x29EDC0460], v13);
  v17 = objc_msgSend_objectForKeyedSubscript_(v10, v15, @"SensorID", v16);
  *v8 = objc_msgSend_intValue(v17, v18, v19, v20);

  v23 = objc_msgSend_objectForKeyedSubscript_(v10, v21, *MEMORY[0x29EDC0270], v22);
  v9[1824] = objc_msgSend_BOOLValue(v23, v24, v25, v26);

  sub_29581FBFC(v10, v8 + 16);
  v27 = sub_295820588(v10, (v8 + 128), a3, a4);
  if (v27)
  {
    sub_295894870();
    goto LABEL_47;
  }

  *(v8 + 164) = sub_29581D324(v10, (v8 + 16), (v8 + 168)) == 0;
  v30 = objc_msgSend_objectForKeyedSubscript_(v10, v28, *MEMORY[0x29EDC0000], v29);
  *(v8 + 160) = objc_msgSend_intValue(v30, v31, v32, v33);

  if (a5)
  {
    v36 = objc_msgSend_objectForKeyedSubscript_(v10, v34, *MEMORY[0x29EDC0648], v35);
    *(v8 + 4) = objc_msgSend_BOOLValue(v36, v37, v38, v39);

    v42 = objc_msgSend_objectForKeyedSubscript_(v10, v40, *MEMORY[0x29EDC03E8], v41);
    *(v8 + 8) = objc_msgSend_longLongValue(v42, v43, v44, v45);

    v48 = objc_msgSend_objectForKeyedSubscript_(v10, v46, *MEMORY[0x29EDC06A0], v47);
    if (objc_msgSend_BOOLValue(v48, v49, v50, v51))
    {
      *(v8 + 5) = 1;
    }

    else
    {
      v54 = objc_msgSend_objectForKeyedSubscript_(v10, v52, *MEMORY[0x29EDC0210], v53);
      objc_msgSend_floatValue(v54, v55, v56, v57);
      *(v8 + 5) = v58 < 0.0;
    }

    *(v8 + 6) = *(v8 + 100);
  }

  if (v14)
  {
    v59 = v14;
    v63 = objc_msgSend_bytes(v59, v60, v61, v62);
    v67 = objc_msgSend_length(v14, v64, v65, v66);
    if (v63)
    {
      if (v67 == 36)
      {
        for (i = 0; i != 3; ++i)
        {
          v69 = 0;
          v70 = &v168 + i;
          v71 = *v70;
          do
          {
            v72 = *v63++;
            v167 = v71;
            *(&v167 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3))) = v72;
            v71 = v167;
            *(v70 + 2) = DWORD2(v167);
            *v70 = v71;
            ++v69;
          }

          while (v69 != 3);
        }
      }
    }
  }

  v73 = v169;
  *(v8 + 222960) = v168;
  *(v8 + 222976) = v73;
  *(v8 + 222992) = v170;
  v9[1825] = v14 != 0;
  v74 = objc_msgSend_objectForKeyedSubscript_(v10, v34, @"DetectedObjectsInfo", v35);
  v77 = v74;
  if (v74)
  {
    v166 = v9;
    v78 = objc_msgSend_objectForKeyedSubscript_(v74, v75, @"HumanFaces", v76);
    v81 = v78;
    v165 = v8;
    v162 = v14;
    v160 = v78;
    v161 = v77;
    if (v78)
    {
      v159 = v10;
      v82 = objc_msgSend_objectForKeyedSubscript_(v78, v79, @"ObjectsArray", v80);
      v86 = v82;
      if (v82)
      {
        if (objc_msgSend_count(v82, v83, v84, v85) >= 0xA)
        {
          v91 = (v166 + 1828);
          *(v166 + 457) = 10;
          goto LABEL_21;
        }

        v90 = objc_msgSend_count(v86, v87, v88, v89);
        *(v166 + 457) = v90;
        if (v90 >= 1)
        {
          v91 = (v166 + 1828);
LABEL_21:
          v92 = 0;
          v93 = v165 + 223016;
          v94 = @"Rect";
          v95 = @"ConfidenceLevel";
          v163 = v86;
          while (1)
          {
            v96 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, v92, v89);
            v99 = objc_msgSend_objectForKeyedSubscript_(v96, v97, v94, v98);
            v100 = v99;
            if (!v99)
            {
              goto LABEL_30;
            }

            if (!CGRectMakeWithDictionaryRepresentation(v99, v93))
            {
              goto LABEL_30;
            }

            v103 = objc_msgSend_objectForKeyedSubscript_(v96, v101, v95, v102);
            if (!v103)
            {
              goto LABEL_30;
            }

            v106 = v103;
            v107 = v91;
            v108 = v94;
            v109 = v95;
            v110 = objc_msgSend_objectForKeyedSubscript_(v96, v104, @"AngleInfoRoll", v105);
            if (!v110)
            {
              break;
            }

            v113 = v110;
            v114 = objc_msgSend_objectForKeyedSubscript_(v96, v111, @"AngleInfoYaw", v112);

            v95 = v109;
            v94 = v108;
            v91 = v107;
            v86 = v163;
            if (v114)
            {
              v117 = objc_msgSend_objectForKeyedSubscript_(v96, v115, v95, v116);
              *(v93 + 32) = objc_msgSend_shortValue(v117, v118, v119, v120);

              v123 = objc_msgSend_objectForKeyedSubscript_(v96, v121, @"AngleInfoRoll", v122);
              *(v93 + 34) = objc_msgSend_shortValue(v123, v124, v125, v126);

              v106 = objc_msgSend_objectForKeyedSubscript_(v96, v127, @"AngleInfoYaw", v128);
              *(v93 + 36) = objc_msgSend_shortValue(v106, v129, v130, v131);
LABEL_29:
            }

LABEL_30:

            ++v92;
            v93 += 40;
            if (v92 >= *v91)
            {
              goto LABEL_31;
            }
          }

          v94 = v108;
          v91 = v107;
          v86 = v163;
          goto LABEL_29;
        }
      }

LABEL_31:

      v10 = v159;
      v81 = v160;
      v8 = v165;
      v14 = v162;
      v27 = 0;
      v77 = v161;
    }

    v132 = objc_msgSend_objectForKeyedSubscript_(v77, v79, @"HumanBodies", v80);
    if (!v132)
    {
      goto LABEL_45;
    }

    v164 = v132;
    v135 = objc_msgSend_objectForKeyedSubscript_(v132, v133, @"ObjectsArray", v134);
    v139 = v135;
    if (v135)
    {
      if (objc_msgSend_count(v135, v136, v137, v138) >= 0xA)
      {
        v144 = (v166 + 2232);
        *(v166 + 558) = 10;
LABEL_38:
        v145 = 0;
        v146 = v165 + 223424;
        do
        {
          v147 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, v145, v142);
          v150 = objc_msgSend_objectForKeyedSubscript_(v147, v148, @"Rect", v149);
          v153 = objc_msgSend_objectForKeyedSubscript_(v147, v151, @"ConfidenceLevel", v152);
          v154 = v153;
          if (v150 && v153 && CGRectMakeWithDictionaryRepresentation(v150, v146))
          {
            *(v146 + 32) = objc_msgSend_shortValue(v154, v155, v156, v157);
          }

          ++v145;
          v146 += 40;
        }

        while (v145 < *v144);
        goto LABEL_44;
      }

      v143 = objc_msgSend_count(v139, v140, v141, v142);
      *(v166 + 558) = v143;
      if (v143 >= 1)
      {
        v144 = (v166 + 2232);
        goto LABEL_38;
      }
    }

LABEL_44:

    v132 = v164;
    v8 = v165;
    v14 = v162;
    v27 = 0;
    v81 = v160;
    v77 = v161;
LABEL_45:

    v9 = v166;
  }

  v9[2640] = sub_295822E8C(v10, v8 + 223832) == 0;
LABEL_47:

  return v27;
}

void sub_295822CA4(int a1, int *a2, void *a3)
{
  v5 = a3;
  if (a1 == 1)
  {
    v8 = @"GreenGhostBrightLight";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_31;
    }

    v8 = @"GreenGhostLowLight";
  }

  v62 = v5;
  v9 = objc_msgSend_objectForKeyedSubscript_(v5, v6, v8, v7);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"isEnabled", v11);
    v17 = objc_msgSend_BOOLValue(v13, v14, v15, v16);

    v20 = objc_msgSend_objectForKeyedSubscript_(v12, v18, @"isRunning", v19);
    v24 = objc_msgSend_BOOLValue(v20, v21, v22, v23);

    if (v24)
    {
      v27 = v17 | 2;
    }

    else
    {
      v27 = v17;
    }

    v28 = objc_msgSend_objectForKeyedSubscript_(v12, v25, @"foundFacesOrBodies", v26);
    v32 = objc_msgSend_BOOLValue(v28, v29, v30, v31);

    if (v32)
    {
      v35 = v27 | 4;
    }

    else
    {
      v35 = v27;
    }

    v36 = a1 == 1;
    if (a1 == 1)
    {
      v37 = @"isBrightScene";
    }

    else
    {
      v37 = @"exceedsMaxMaskAverage";
    }

    if (a1 == 1)
    {
      v38 = @"roiIsComputed";
    }

    else
    {
      v38 = @"skipRepair";
    }

    if (v36)
    {
      v39 = @"hasValidClippingData";
    }

    else
    {
      v39 = @"tripodMode";
    }

    v40 = objc_msgSend_objectForKeyedSubscript_(v12, v33, v37, v34);
    v44 = objc_msgSend_BOOLValue(v40, v41, v42, v43);

    if (v44)
    {
      v47 = v35 | 8;
    }

    else
    {
      v47 = v35;
    }

    v48 = objc_msgSend_objectForKeyedSubscript_(v12, v45, v38, v46);
    v52 = objc_msgSend_BOOLValue(v48, v49, v50, v51);

    if (v52)
    {
      v55 = v47 | 0x10;
    }

    else
    {
      v55 = v47;
    }

    v56 = objc_msgSend_objectForKeyedSubscript_(v12, v53, v39, v54);
    v60 = objc_msgSend_BOOLValue(v56, v57, v58, v59);

    v61 = v55 | 0x20;
    if (!v60)
    {
      v61 = v55;
    }
  }

  else
  {
    v61 = 0;
  }

  *a2 = v61;

  v5 = v62;
LABEL_31:
}

uint64_t sub_295822E8C(void *a1, uint64_t a2)
{
  v3 = a1;
  v30 = *MEMORY[0x29EDB90E0];
  v31 = *(MEMORY[0x29EDB90E0] + 16);
  v4 = *MEMORY[0x29EDC0748];
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    sub_295896924();
    v11 = 0;
    goto LABEL_24;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v5, *MEMORY[0x29EDC05B0], v6);
  v11 = v7;
  if (!v7)
  {
LABEL_24:
    v28 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  if (objc_msgSend_length(v7, v8, v9, v10) <= 7)
  {
    sub_2958968C4();
    goto LABEL_24;
  }

  v12 = v11;
  v16 = objc_msgSend_bytes(v12, v13, v14, v15);
  v20 = objc_msgSend_length(v11, v17, v18, v19);
  v21 = v16[1];
  if (v20 < v21)
  {
    sub_295896864();
    goto LABEL_24;
  }

  if (*v16 != 1)
  {
    v28 = 0;
    goto LABEL_25;
  }

  if (v21 <= 0x2B)
  {
    sub_295896804();
    goto LABEL_24;
  }

  v22 = v11;
  v26 = objc_msgSend_bytes(v22, v23, v24, v25);
  if (v26[19] == -1)
  {
    sub_295896760(&v32);
    v28 = v32;
    goto LABEL_25;
  }

  if (v26[17] == -1)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v26[20] != -1)
  {
    ++v27;
  }

  if (v26[21] != -1)
  {
    ++v27;
  }

  if (2 * v26[11] * v26[10] * v27 + 44 != v16[1])
  {
    sub_295896700();
    goto LABEL_24;
  }

  v28 = 0;
  v26[4] = (v26[4] - *&v30);
  v26[5] = (v26[5] - *(&v30 + 1));
  *a2 = 1;
  *(a2 + 4) = v27;
  *(a2 + 8) = v26;
LABEL_25:

  return v28;
}

uint64_t sub_295823048(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v5 = a5;
  v54.i64[0] = a3;
  v54.i64[1] = a4;
  v6 = *(a1 + 8);
  v52 = *(v6 + 8);
  v53 = *(v6 + 10);
  v48.i32[0] = *(v6 + 12);
  v48.i32[1] = *(v6 + 14);
  v50 = *(v6 + 16);
  v51 = *(v6 + 18);
  v7 = *(v6 + 28);
  v56 = *(v6 + 22);
  if (*(v6 + 22))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v6 + 20);
    v13 = *(v6 + 38);
    v57 = *(a1 + 8);
    v14 = v6 + 44;
    v49 = *(v6 + 28);
    v15 = v7;
    v16 = 0;
    do
    {
      v17 = objc_msgSend_string(MEMORY[0x29EDBA050], a2, a3, a4);
      if (v12)
      {
        v20 = 0;
        do
        {
          v60 = v9;
          v21 = *(v14 + 2 * v13);
          v22 = v14;
          v23 = v12;
          v24 = v16;
          v25 = v21 << *(v57 + 24);
          v26 = v10;
          v27 = v8;
          v28 = v17;
          objc_msgSend_appendFormat_(v17, v18, @"[ %5u ] ", v19, v25);
          v17 = v28;
          v8 = v27;
          if ((v25 / v15) > *(a5 + 8))
          {
            ++v11;
          }

          v29 = v25 > v26;
          if (v25 <= v26)
          {
            v10 = v26;
          }

          else
          {
            v10 = v25;
          }

          v16 = v24;
          v12 = v23;
          v14 = v22;
          v9 = v60;
          if (v29)
          {
            v9 = v16;
            v8 = v20;
          }

          v13 += *(a1 + 4);
          ++v20;
        }

        while (v12 != v20);
      }

      v16 = (v16 + 1);
    }

    while (v16 != v56);
    v5 = a5;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v15 = v7;
  }

  if ((v10 / v15) < *(v5 + 4))
  {
    if (!dword_2A18C2398)
    {
      return 0;
    }

LABEL_20:
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    return 0;
  }

  if (v11 > *(v5 + 12))
  {
    if (!dword_2A18C2398)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v32 = vcvt_f32_u32(v48);
  if (dword_2A18C2398)
  {
    v61 = v32;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v32 = v61;
  }

  v34.f32[0] = v32.f32[0] + (v52 + v8 * v50);
  v34.f32[1] = v32.f32[1] + (v53 + v9 * v51);
  __asm { FMOV            V1.2S, #-1.0 }

  v40 = vadd_f32(v34, _D1);
  __asm { FMOV            V1.2D, #-1.0 }

  _Q1 = vaddq_f64(vcvtq_f64_u64(v54), _Q1);
  v43 = vcvt_f32_f64(vsubq_f64(_Q1, vcvtq_f64_f32(v40)));
  v44 = vmul_n_f32(v32, *v5);
  *v45.f32 = vmaxnm_f32(vsub_f32(v43, v44), 0);
  v46 = vadd_f32(vadd_f32(v32, v43), v44);
  v47 = vsub_f32(vbsl_s8(vmovn_s64(vcgtq_f64(vcvtq_f64_f32(v46), _Q1)), vcvt_f32_f64(_Q1), v46), *v45.f32);
  __asm { FMOV            V1.2S, #1.0 }

  *&v45.u32[2] = vadd_f32(v47, *&_Q1.f64[0]);
  *a2 = vcvtq_u32_f32(v45);
  return 1;
}

uint64_t sub_2958246B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_device(v5, v6, v7, v8);
  v12 = objc_msgSend_minimumLinearTextureAlignmentForPixelFormat_(v9, v10, a2, v11);

  PixelSizeInBytes = objc_msgSend_getPixelSizeInBytes_(v5, v13, a2, v14);
  v16 = PixelSizeInBytes * a1 % v12;
  if (v16)
  {
    return PixelSizeInBytes * a1 + v12 - v16;
  }

  else
  {
    return PixelSizeInBytes * a1;
  }
}

uint64_t sub_295826790()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2958267C4(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295826878()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2958268AC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void sub_295828100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_295828118(int a1, float32x4_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a3 + a5;
  if (!a1)
  {
    v8 = 1.0 - a3;
    a3 = 1.0 - (a3 + a5);
  }

  v9 = a3;
  v10 = v8;
  v11 = *a2.i64 + a4;
  v12 = *a2.i64;
  v13 = a4 * *&a8 * 0.5;
  v14 = a5 * *(&a8 + 1) * 0.5;
  a2.f32[0] = v12 - v13;
  if (a2.f32[0] < 0.0)
  {
    a2.f32[0] = 0.0;
  }

  v15 = v11 + v13;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  v16 = v9 - v14;
  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = v10 + v14;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  *&a6 = a6;
  *&a7 = a7;
  *v18.f32 = vdup_lane_s32(*&a6, 0);
  *&v18.u32[2] = vdup_lane_s32(*&a7, 0);
  a2.f32[1] = v15;
  a2.i64[1] = __PAIR64__(LODWORD(v17), LODWORD(v16));
  a2.i64[0] = vmulq_f32(v18, a2).u64[0];
  return *a2.i64;
}

Class sub_295829264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0;
  if (!qword_2A18C2230)
  {
    v9[1] = MEMORY[0x29EDCA5F8];
    v9[2] = 3221225472;
    v9[3] = sub_295829364;
    v9[4] = &unk_29EDDBF20;
    v9[5] = v9;
    v10 = xmmword_29EDDBFB8;
    v11 = 0;
    qword_2A18C2230 = _sl_dlopen();
  }

  if (!qword_2A18C2230)
  {
    sub_29588D640(v9, a2, a3, a4);
  }

  if (v9[0])
  {
    free(v9[0]);
  }

  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_29588D5C4(result, v6, v7, v8);
  }

  qword_2A138BA60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_295829364(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A18C2230 = result;
  return result;
}

void sub_29582B90C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29582B9AC(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29582C680(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29582C720(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29582CD5C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29582CDFC(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29582D334(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29582D3D4(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29582D984(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29582DA24(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_295833834()
{
  qword_2A18C22D8 = objc_alloc_init(SyntheticLongShared);

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_295833ED4(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    return kdebug_trace();
  }

  return result;
}

void sub_295833F08(uint64_t a1, void *a2)
{
  v13 = a2;
  if (objc_msgSend_status(v13, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v13, v6, v7, v8);
    objc_msgSend_GPUStartTime(v13, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v13, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = *(a1 + 32);
    kdebug_trace();
  }
}

void sub_2958354C4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295835564(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_2958366E8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295836788(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_295837220(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = 2;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[v2];
  }

  if (v1 == 5)
  {
    v2 = 8;
    return a1[v2];
  }

  return 0;
}

unint64_t sub_29583725C(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  if (v2 <= 3)
  {
    if (v2 != 1 && v2 != 2 && v2 != 3)
    {
      return v1;
    }

    return a1[1] - (a1[7] + a1[8]);
  }

  switch(v2)
  {
    case 4u:
      return a1[1] - (a1[7] + a1[8]);
    case 5u:
      return a1[7];
    case 0x3E9u:
      return a1[1] - (a1[7] + a1[8]);
  }

  return v1;
}

unint64_t sub_2958372C4(unsigned __int16 *a1)
{
  v1 = 0;
  v2 = *a1;
  if (v2 <= 3)
  {
    if (v2 != 1 && v2 != 2 && v2 != 3)
    {
      return v1;
    }

    return a1[2] - (a1[5] + a1[6]);
  }

  switch(v2)
  {
    case 4u:
      return a1[2] - (a1[5] + a1[6]);
    case 5u:
      return a1[8];
    case 0x3E9u:
      return a1[2] - (a1[5] + a1[6]);
  }

  return v1;
}

uint64_t sub_29583732C(unsigned __int16 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[7];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_295837354(unsigned __int16 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29583737C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = 9;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[v2];
  }

  if (v1 == 5)
  {
    v2 = 3;
    return a1[v2];
  }

  return 0;
}

uint64_t sub_2958373B8(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = 10;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[v2];
  }

  if (v1 == 5)
  {
    v2 = 4;
    return a1[v2];
  }

  return 0;
}

uint64_t sub_2958373F4(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = 3;
  if ((v1 - 1) < 4 || v1 == 1001)
  {
    return a1[v2];
  }

  if (v1 == 5)
  {
    v2 = 9;
    return a1[v2];
  }

  return 0;
}

uint64_t sub_295837430(unsigned __int16 *a1)
{
  result = 0;
  v3 = *a1;
  if (v3 <= 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return 2 * a1[4];
    }

    if (v3 != 3)
    {
      return result;
    }

    return a1[4];
  }

  switch(v3)
  {
    case 4u:
      return a1[4];
    case 5u:
      return a1[10];
    case 0x3E9u:
      return a1[4];
  }

  return result;
}

uint64_t sub_295837494(unsigned __int16 *a1)
{
  v2 = 0;
  sub_2958374C4(a1, &v2, 0);
  return v2;
}

unsigned __int16 *sub_2958374C4(unsigned __int16 *result, void *a2, uint64_t *a3)
{
  v3 = *result;
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      v5 = 0;
      v4 = result[11];
      if (a2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v6 = v3 == 1001;
      v5 = 27;
      v4 = 0;
      if (!v6)
      {
        v5 = 0;
      }

      if (a2)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 1u:
        v7 = result[4];
        if (v7 == 33)
        {
          v8 = 33;
        }

        else
        {
          v8 = 0;
        }

        if (v7 == 60)
        {
          v4 = 33;
        }

        else
        {
          v4 = v8;
        }

        if (v7 == 60)
        {
          v5 = 27;
        }

        else
        {
          v5 = 0;
        }

        if (a2)
        {
          goto LABEL_44;
        }

        break;
      case 2u:
        v9 = result[4];
        v10 = 27;
        if (v9 == 92)
        {
          v4 = 65;
        }

        else
        {
          v4 = 0;
        }

        if (v9 != 92)
        {
          v10 = 0;
        }

        if (v9 == 65)
        {
          v4 = 65;
          v10 = 0;
        }

        v11 = 27;
        if (v9 == 60)
        {
          v12 = 33;
        }

        else
        {
          v12 = 0;
        }

        if (v9 != 60)
        {
          v11 = 0;
        }

        if (v9 == 33)
        {
          v12 = 33;
          v11 = 0;
        }

        if (result[4] > 0x40u)
        {
          v5 = v10;
        }

        else
        {
          v4 = v12;
          v5 = v11;
        }

        if (a2)
        {
          goto LABEL_44;
        }

        break;
      case 3u:
        v4 = result[11];
        v5 = result[12];
        if (!a2)
        {
          break;
        }

LABEL_44:
        *a2 = v4;
        break;
      default:
        v4 = 0;
        v5 = 0;
        if (a2)
        {
          goto LABEL_44;
        }

        break;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

unsigned __int16 *sub_2958375D8(unsigned __int16 *result)
{
  v1 = 0;
  if (result)
  {
    sub_2958374C4(result, 0, &v1);
    return v1;
  }

  return result;
}

unsigned __int16 *sub_29583760C(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = &a1[a2];
  v4 = v3 + 13;
  v5 = v3 + 12;
  if (v2 == 5)
  {
    v6 = v3 + 12;
  }

  else
  {
    v6 = 0;
  }

  if (v2 != 4)
  {
    v5 = v6;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v7 = v3 + 11;
  if (v2 == 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v2 != 1)
  {
    v7 = v8;
  }

  if (*a1 <= 2u)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

double sub_295837654(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = *(MEMORY[0x29EDCA928] + 16);
  v36 = *MEMORY[0x29EDCA928];
  v34 = *(MEMORY[0x29EDCA928] + 32);
  v37 = 0;
  v38 = 0;
  sub_2958374C4(a1, &v38, &v37);
  if (!v37)
  {
    return *&v36;
  }

  v8 = *a1;
  if ((v8 - 1) < 4 || v8 == 1001)
  {
    v9 = a1[7];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + a2;
  if ((v8 - 1) < 4 || v8 == 1001)
  {
    v11 = a1[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 + a3;
  v13 = sub_295837430(a1) * v10;
  v14 = sub_2958373F4(a1);
  if (v8 > 2)
  {
    v16.i32[3] = HIDWORD(v35);
    result = *&v36;
    if (v8 != 3)
    {
      if (v8 != 1001)
      {
        return result;
      }

      v17 = &a1[v38 + 12 + ((v13 + v14 * v12) >> 1)];
      v18 = 1.0 / a1[11];
      if (a4)
      {
LABEL_19:
        if (a4 == 2)
        {
          v27 = (v17 + 4);
          v19 = 52;
          v20 = 46;
          v21 = 40;
          v22 = 34;
          v23 = 28;
          v24 = 22;
          v25 = 16;
          v26 = 10;
        }

        else
        {
          if (a4 != 1)
          {
            return result;
          }

          v27 = (v17 + 2);
          v19 = 50;
          v20 = 44;
          v21 = 38;
          v22 = 32;
          v23 = 26;
          v24 = 20;
          v25 = 14;
          v26 = 8;
        }

        goto LABEL_23;
      }

LABEL_16:
      v19 = 48;
      v20 = 42;
      v21 = 36;
      v22 = 30;
      v23 = 24;
      v24 = 18;
      v25 = 12;
      v26 = 6;
      v27 = v17;
LABEL_23:
      v16.f32[0] = *v27;
      v28 = *(v17 + v24);
      v29 = *(v17 + v21);
      v16.f32[1] = *(v17 + v26);
      v16.f32[2] = *(v17 + v25);
      v30 = *(v17 + v23);
      v31 = *(v17 + v22);
      v32 = *(v17 + v20);
      v33 = *(v17 + v19);
      *&result = vmulq_n_f32(v16, v18).u64[0];
      return result;
    }

    v17 = &a1[v38 + 13 + ((v13 + v14 * v12) >> 1)];
LABEL_18:
    v18 = 0.00024414;
    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16.i32[3] = HIDWORD(v35);
  result = *&v36;
  if (v8 == 1 || v8 == 2)
  {
    v17 = &a1[v38 + 11 + ((v13 + v14 * v12) >> 1)];
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_2958378A4(unsigned __int16 *a1)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (v2 == 4 || v2 == 1001)
    {
      v3 = 24;
      goto LABEL_10;
    }
  }

  else
  {
    if (v2 - 1 < 2)
    {
      v3 = 22;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 26;
      goto LABEL_10;
    }
  }

  v3 = 0;
LABEL_10:
  v4 = sub_295837220(a1);
  v5 = v3 + sub_2958373F4(a1) * v4;
  v6 = MEMORY[0x29EDB8DA0];

  return MEMORY[0x2A1C70FE8](v6, sel_dataWithBytes_length_, a1, v5);
}

uint64_t sub_29583A764()
{
  v2 = *(v0 + 912);

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t sub_29583A7AC()
{

  return _os_log_send_and_compose_impl();
}

BOOL sub_29583A7D0(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t sub_29583A7F0(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

void sub_2958425A4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = a2;
  v7 = a3;
  *a4 = 0;
  if (objc_msgSend_isEqualToString_(v30, v8, @"Bias", v9))
  {
    objc_msgSend_doubleValue(v7, v10, v11, v12);
    **(a1 + 32) = v13;
  }

  else if (objc_msgSend_isEqualToString_(v30, v10, @"CornerWeight", v12))
  {
    objc_msgSend_doubleValue(v7, v14, v15, v16);
    *(*(a1 + 32) + 16) = v17;
  }

  else if (objc_msgSend_isEqualToString_(v30, v14, @"FocusWeight", v16))
  {
    objc_msgSend_doubleValue(v7, v18, v19, v20);
    *(*(a1 + 32) + 24) = v21;
  }

  else if (objc_msgSend_isEqualToString_(v30, v18, @"MotionWeight", v20))
  {
    objc_msgSend_doubleValue(v7, v22, v23, v24);
    *(*(a1 + 32) + 32) = v25;
  }

  else if (objc_msgSend_isEqualToString_(v30, v22, @"GyroWeight", v24))
  {
    objc_msgSend_doubleValue(v7, v26, v27, v28);
    *(*(a1 + 32) + 8) = v29;
  }
}

uint64_t sub_295843084(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v8 = a1;
  v315 = a2;
  v320 = a3;
  v319 = a4;
  v364[0] = 0;
  v314 = v8;
  v11 = objc_msgSend_scannerWithString_(MEMORY[0x29EDBA0E0], v9, v8, v10);
  LOBYTE(a3) = objc_msgSend_scanHexInt_(v11, v12, v364, v13);

  if ((a3 & 1) != 0 && (objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v14, v364[0], v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    v18 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v340 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v352 = 0u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    obj = v315;
    v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v352, v351, 16);
    if (v321)
    {
      v317 = *v353;
      v318 = v17;
      p_vtable = DenoiseFusePipeline.vtable;
      v335 = v18;
      do
      {
        v23 = 0;
        do
        {
          if (*v353 != v317)
          {
            objc_enumerationMutation(obj);
          }

          v328 = v23;
          v339 = *(*(&v352 + 1) + 8 * v23);
          v24 = objc_msgSend_objectForKeyedSubscript_(obj, v20, v339, v21);
          v347 = 0u;
          v348 = 0u;
          v349 = 0u;
          v350 = 0u;
          v25 = v24;
          v338 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v347, v346, 16);
          if (v338)
          {
            v336 = v25;
            v337 = *v348;
            do
            {
              v27 = 0;
              do
              {
                if (*v348 != v337)
                {
                  objc_enumerationMutation(v25);
                }

                v28 = *(*(&v347 + 1) + 8 * v27);
                context = objc_autoreleasePoolPush();
                v31 = objc_msgSend_objectForKeyedSubscript_(v25, v29, v28, v30);
                if (!v31)
                {
                  objc_autoreleasePoolPop(context);
                  goto LABEL_150;
                }

                v32 = v31;
                v344 = v28;
                v33 = v339;
                v34 = v18;
                v343 = v340;
                v345 = v32;
                if (objc_msgSend_isEqualToString_(v33, v35, @"DenoiseAndSharpening", v36))
                {
                  v39 = objc_opt_new();
                  if (objc_msgSend_readPlist_(v39, v40, v32, v41))
                  {
                    sub_2958B05C4();
                    goto LABEL_132;
                  }

LABEL_19:
                  if (v39)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_103;
                }

                if (objc_msgSend_isEqualToString_(v33, v37, @"NoiseModel", v38))
                {
                  v39 = objc_opt_new();
                  if (objc_msgSend_readPlist_(v39, v44, v32, v45))
                  {
                    sub_2958B0524();
                    goto LABEL_132;
                  }

                  goto LABEL_19;
                }

                if (!objc_msgSend_isEqualToString_(v33, v42, @"Fusion", v43))
                {
                  if (objc_msgSend_isEqualToString_(v33, v74, @"ToneMapping", v75))
                  {
                    v39 = objc_opt_new();
                    if (objc_msgSend_readPlist_(v39, v164, v32, v165))
                    {
                      sub_2958AFD6C();
                      goto LABEL_132;
                    }

                    goto LABEL_19;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v162, @"SyntheticLong", v163))
                  {
                    v331 = v33;
                    v333 = v27;
                    v168 = objc_opt_new();
                    v171 = objc_msgSend_objectForKeyedSubscript_(v32, v169, @"StaticSceneMotionThreshold", v170);
                    objc_msgSend_setObject_forKeyedSubscript_(v168, v172, v171, @"StaticSceneMotionThreshold");

                    v173 = objc_alloc((p_vtable + 487));
                    v176 = objc_msgSend_objectForKeyedSubscript_(v32, v174, @"SyntheticLongPedestal", v175);
                    v179 = objc_msgSend_initWithArray_(v173, v177, v176, v178);

                    if (objc_msgSend_isValid(v179, v180, v181, v182))
                    {
                      v358 = 0u;
                      v359 = 0u;
                      v356 = 0u;
                      v357 = 0u;
                      v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC43D8, v183, &v356, v364, 16);
                      if (!v184)
                      {
                        goto LABEL_80;
                      }

                      v185 = v184;
                      v186 = *v357;
                      while (1)
                      {
                        for (i = 0; i != v185; ++i)
                        {
                          if (*v357 != v186)
                          {
                            objc_enumerationMutation(&unk_2A1CC43D8);
                          }

                          v188 = *(*(&v356 + 1) + 8 * i);
                          v189 = objc_opt_new();
                          v192 = objc_msgSend_objectForKeyedSubscript_(v32, v190, v188, v191);
                          Plist = objc_msgSend_readPlist_(v189, v193, v192, v194);

                          objc_storeStrong(v189 + 8, v179);
                          if (Plist)
                          {
                            sub_2958AFCCC();
                            v73 = v365;
                            p_vtable = (DenoiseFusePipeline + 24);
                            v25 = v336;
                            v32 = v345;
LABEL_93:

                            v27 = v333;
                            v33 = v331;
                            goto LABEL_24;
                          }

                          objc_msgSend_setObject_forKeyedSubscript_(v168, v196, v189, v188);

                          v32 = v345;
                        }

                        v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC43D8, v197, &v356, v364, 16);
                        if (!v185)
                        {
LABEL_80:

                          v39 = v168;
                          v32 = v345;
                          p_vtable = (DenoiseFusePipeline + 24);
                          v18 = v335;
                          v25 = v336;
                          v27 = v333;
                          v33 = v331;
                          goto LABEL_19;
                        }
                      }
                    }

                    sub_2958AFC6C();
                    v73 = -1;
                    goto LABEL_93;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v166, @"SyntheticReference", v167))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v200, v32, v201))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AFBCC();
LABEL_132:
                    v73 = v364[0];
                    goto LABEL_104;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v198, @"FrameSelection", v199))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v204, v32, v205))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AFB2C();
                    goto LABEL_132;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v202, @"GainMap", v203))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v208, v32, v209))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AFA8C();
                    goto LABEL_132;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v206, @"SemanticStyles", v207))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v212, v32, v213))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AF9EC();
                    goto LABEL_132;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v210, @"BrightLightGreenGhost", v211))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v216, v32, v217))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AF94C();
                    goto LABEL_132;
                  }

                  if (objc_msgSend_isEqualToString_(v33, v214, @"LowLightGreenGhost", v215))
                  {
                    v39 = objc_opt_new();
                    if (!objc_msgSend_readPlist_(v39, v218, v32, v219))
                    {
                      goto LABEL_19;
                    }

                    sub_2958AF8AC();
                    goto LABEL_132;
                  }

LABEL_103:
                  v73 = 0;
                  goto LABEL_104;
                }

                v76 = objc_opt_new();
                v79 = objc_msgSend_valueForKey_(v32, v77, @"Bands", v78);
                v80 = v79;
                v332 = v27;
                v334 = v76;
                v330 = v33;
                if (!v79)
                {
                  v161 = FigSignalErrorAtGM();
                  goto LABEL_115;
                }

                v367 = 0u;
                v368 = 0u;
                v365 = 0u;
                v366 = 0u;
                v329 = v79;
                v323 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v81, &v365, v364, 16);
                if (!v323)
                {
                  v161 = 0;
                  goto LABEL_114;
                }

                v325 = *v366;
                v326 = v34;
                v316 = v80;
LABEL_29:
                v82 = 0;
                while (1)
                {
                  if (*v366 != v325)
                  {
                    objc_enumerationMutation(v329);
                  }

                  v327 = v82;
                  v83 = *(*(&v365 + 1) + 8 * v82);
                  v84 = objc_opt_new();
                  v360 = 0u;
                  v361 = 0u;
                  v362 = 0u;
                  v363 = 0u;
                  v85 = v83;
                  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v360, &v356, 16);
                  if (!v87)
                  {
                    goto LABEL_58;
                  }

                  v90 = v87;
                  v91 = *v361;
                  while (2)
                  {
                    for (j = 0; j != v90; ++j)
                    {
                      if (*v361 != v91)
                      {
                        objc_enumerationMutation(v85);
                      }

                      v93 = *(*(&v360 + 1) + 8 * j);
                      v94 = objc_msgSend_objectForKeyedSubscript_(v85, v88, v93, v89);
                      if (objc_msgSend_isEqualToString_(v93, v95, @"AdaptiveBlur", v96))
                      {
                        v99 = objc_alloc((p_vtable + 487));
                        v102 = objc_msgSend_initWithArray_(v99, v100, v94, v101);
                        v103 = v84[1];
                        v84[1] = v102;

                        if (!v102)
                        {
                          sub_2958AFFF4();
LABEL_107:
                          v18 = v335;
                          v25 = v336;
                          v27 = v332;

                          goto LABEL_112;
                        }
                      }

                      else if (objc_msgSend_isEqualToString_(v93, v97, @"LumaBlackThreshold", v98))
                      {
                        v106 = objc_alloc((p_vtable + 487));
                        v109 = objc_msgSend_initWithArray_(v106, v107, v94, v108);
                        v110 = v84[2];
                        v84[2] = v109;

                        if (!v109)
                        {
                          sub_2958AFF94();
                          goto LABEL_107;
                        }
                      }

                      else if (objc_msgSend_isEqualToString_(v93, v104, @"ChromaBlackThreshold", v105))
                      {
                        v113 = objc_alloc((p_vtable + 487));
                        v116 = objc_msgSend_initWithArray_(v113, v114, v94, v115);
                        v117 = v84[3];
                        v84[3] = v116;

                        if (!v116)
                        {
                          sub_2958AFF34();
                          goto LABEL_107;
                        }
                      }

                      else if (objc_msgSend_isEqualToString_(v93, v111, @"DecayEdgeBoost", v112))
                      {
                        v120 = objc_alloc((p_vtable + 487));
                        v123 = objc_msgSend_initWithArray_(v120, v121, v94, v122);
                        v124 = v84[4];
                        v84[4] = v123;

                        if (!v123)
                        {
                          sub_2958AFED4();
                          goto LABEL_107;
                        }
                      }

                      else
                      {
                        v127 = v84 + 5;
                        if (objc_msgSend_isEqualToString_(v93, v118, @"DiffWeight", v119) & 1) != 0 || (v127 = v84 + 6, (objc_msgSend_isEqualToString_(v93, v125, @"LumaFusionStrength", v126)) || (v127 = v84 + 7, (objc_msgSend_isEqualToString_(v93, v125, @"ChromaFusionStrength", v126)))
                        {
                          v128 = objc_msgSend_objectForKeyedSubscript_(v85, v125, v93, v126);
                          v129 = *v127;
                          v130 = v128;
                          v131 = v129;
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            goto LABEL_111;
                          }

                          v341 = v130;
                          v132 = v130;
                          v135 = objc_msgSend_objectForKeyedSubscript_(v132, v133, @"EV0Reference", v134);
                          v138 = objc_msgSend_objectForKeyedSubscript_(v132, v136, @"EVMReference", v137);
                          if (sub_2958447CC(v135, v131[1]))
                          {
                            sub_2958AFE0C();
LABEL_110:

                            p_vtable = DenoiseFusePipeline.vtable;
                            v130 = v341;
LABEL_111:

                            v18 = v335;
                            v25 = v336;
                            v27 = v332;
LABEL_112:
                            v32 = v345;
                            v34 = v326;
                            goto LABEL_113;
                          }

                          if (sub_2958447CC(v138, v131[2]))
                          {
                            sub_2958AFE70();
                            goto LABEL_110;
                          }

                          p_vtable = DenoiseFusePipeline.vtable;
                        }
                      }
                    }

                    v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v360, &v356, 16);
                    if (v90)
                    {
                      continue;
                    }

                    break;
                  }

LABEL_58:

                  v141 = objc_msgSend_objectForKey_(v85, v139, @"LumaBlackThreshold", v140);
                  v18 = v335;
                  v25 = v336;
                  v32 = v345;
                  v34 = v326;
                  if (v141)
                  {
                    v144 = v141;
                    v145 = objc_msgSend_objectForKey_(v85, v142, @"ChromaBlackThreshold", v143);

                    if (!v145)
                    {
                      break;
                    }
                  }

LABEL_62:
                  v152 = objc_msgSend_objectForKey_(v85, v142, @"DecayEdgeBoost", v143);

                  if (!v152)
                  {
                    v155 = objc_alloc((p_vtable + 487));
                    v158 = objc_msgSend_initWithArray_(v155, v156, &unk_2A1CC43F0, v157);
                    v159 = v84[4];
                    v84[4] = v158;

                    if (!v158)
                    {
                      sub_2958B00C4();
                      goto LABEL_146;
                    }
                  }

                  objc_msgSend_addObject_(v334[1], v153, v84, v154);

                  v82 = v327 + 1;
                  v27 = v332;
                  if (v327 + 1 == v323)
                  {
                    v161 = 0;
                    v76 = v334;
                    v80 = v316;
                    v323 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v160, &v365, v364, 16);
                    if (!v323)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_29;
                  }
                }

                v146 = objc_msgSend_objectForKeyedSubscript_(v85, v142, @"LumaBlackThreshold", v143);
                v147 = objc_alloc((p_vtable + 487));
                v150 = objc_msgSend_initWithArray_(v147, v148, v146, v149);
                v151 = v84[3];
                v84[3] = v150;

                if (v150)
                {

                  goto LABEL_62;
                }

                sub_2958B0054(v146);
LABEL_146:
                v27 = v332;
LABEL_113:

                v161 = 0xFFFFFFFFLL;
                v76 = v334;
                v80 = v316;
LABEL_114:

LABEL_115:
                if (v161)
                {
                  sub_2958B0124(v161, v76);
                  v73 = 0;
                  goto LABEL_142;
                }

                *(v76 + 24) = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v32, v221, @"PreWarpInputs", 0, 0);
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v222, @"GrayGhostingCutoff", 0, 0.0);
                *(v76 + 7) = v223;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v224, @"GrayGhostingEV0EVMDifferenceThreshold", 0, 0.0);
                *(v76 + 8) = v225;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v226, @"GrayGhostingEV0WeightThreshold", 0, 0.0);
                *(v76 + 9) = v227;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v228, @"GrayGhostingClippingThreshold", 0, 0.0);
                *(v76 + 10) = v229;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v230, @"MotionDetectionClippingCutoffHigh", 0, 0.0);
                *(v76 + 12) = v231;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v232, @"MotionDetectionClippingCutoffLow", 0, 0.0);
                *(v76 + 13) = v233;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v234, @"MotionDetectionSifrEitCutoffHigh", 0, 0.0);
                *(v76 + 14) = v235;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v236, @"MotionDetectionSifrEitCutoffLow", 0, 0.0);
                *(v76 + 15) = v237;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v238, @"MotionDetectionGradientCutoffHigh", 0, 0.0);
                *(v76 + 16) = v239;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v240, @"MotionDetectionGamma", 0, 0.0);
                *(v76 + 17) = v241;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v242, @"MotionDetectionMotionThreshold", 0, 0.0);
                *(v76 + 18) = v243;
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v244, @"MotionDetectionMotionThresholdStaticScene", 0, 0.0);
                *(v76 + 19) = v245;
                *(v76 + 44) = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v32, v246, @"EnableMotionDetection", 0, 0);
                objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v32, v247, @"BlackAdaptiveBlurBoost", 0, 0.0);
                *(v76 + 34) = v248;
                v251 = objc_msgSend_objectForKeyedSubscript_(v32, v249, @"GrayGhostingDepthOverrides", v250);
                v255 = v251;
                if (a5 && v251)
                {
                  LODWORD(v254) = *(v76 + 8);
                  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v251, v252, @"GrayGhostingEV0EVMDifferenceThreshold", 0, v254);
                  *(v76 + 8) = v256;
                  LODWORD(v257) = *(v76 + 10);
                  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v255, v258, @"GrayGhostingClippingThreshold", 0, v257);
                  *(v76 + 10) = v259;
                }

                v32 = v345;
                v260 = objc_msgSend_objectForKeyedSubscript_(v345, v252, @"LensShadingFactor", v253);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v261 = objc_alloc((p_vtable + 487));
                  v264 = objc_msgSend_initWithArray_(v261, v262, v260, v263);
                  v265 = v334;
                  v266 = v334[11];
                  v334[11] = v264;

                  if (!v334[11])
                  {
                    sub_2958B0488(v364);
                    goto LABEL_140;
                  }
                }

                else
                {
                  v265 = v334;
                  v268 = v334[11];
                  v334[11] = 0;

                  objc_msgSend_cmi_floatValueForKey_defaultValue_found_(v345, v269, @"LensShadingFactor", 0, 0.0);
                  *(v334 + 20) = v270;
                }

                *(v265 + 24) = objc_msgSend_cmi_intValueForKey_defaultValue_found_(v345, v267, @"HybridRegistrationMode", 0, 0);
                v271 = objc_alloc((p_vtable + 487));
                v274 = objc_msgSend_valueForKey_(v345, v272, @"ShadowDenseBlendStrength", v273);
                v277 = objc_msgSend_initWithArray_(v271, v275, v274, v276);
                v278 = v265[13];
                v265[13] = v277;

                if (!v265[13])
                {
                  sub_2958B03EC(v364);
LABEL_140:
                  v73 = v364[0];
                  goto LABEL_141;
                }

                v279 = objc_alloc((p_vtable + 487));
                v282 = objc_msgSend_valueForKey_(v345, v280, @"NonShadowDenseBlendStrength", v281);
                v285 = objc_msgSend_initWithArray_(v279, v283, v282, v284);
                v286 = v265[14];
                v265[14] = v285;

                if (!v265[14])
                {
                  sub_2958B0350(v364);
                  goto LABEL_140;
                }

                v288 = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v345, v287, @"EnablePatchBasedFusion", 0, 0);
                *(v265 + 120) = v288;
                if (!v288)
                {
                  goto LABEL_130;
                }

                v291 = objc_msgSend_objectForKeyedSubscript_(v345, v289, @"PatchBasedFusionParameters", v290);
                if (!v291)
                {
                  sub_2958B02B4(v364);
                  v73 = v364[0];
                  goto LABEL_138;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  sub_2958B0198();
                  v73 = -1;
LABEL_138:

LABEL_141:
                  v27 = v332;

                  v32 = v345;
LABEL_142:
                  v33 = v330;
                  goto LABEL_104;
                }

                v292 = objc_opt_new();
                v295 = objc_msgSend_readPlist_(v292, v293, v291, v294);
                if (v295)
                {
                  sub_2958B01F8(v295, v292, v291, v364);
                  goto LABEL_140;
                }

                v265 = v334;
                v296 = v334[16];
                v334[16] = v292;

                v32 = v345;
LABEL_130:
                *(v265 + 140) = objc_msgSend_cmi_BOOLValueForKey_defaultValue_found_(v32, v289, @"EnableStationaryFusion", 0, 0);

                v27 = v332;
                v33 = v330;
                v39 = v265;
LABEL_20:
                v46 = v32;
                v47 = v27;
                v48 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                v49 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                v50 = v39;
                objc_msgSend_setObject_forKeyedSubscript_(v48, v51, v39, v344);
                objc_msgSend_setObject_forKeyedSubscript_(v49, v52, v46, v344);
                v56 = objc_msgSend_allKeys(v34, v53, v54, v55);
                v59 = objc_msgSend_containsObject_(v56, v57, v33, v58);

                v62 = v34;
                if (v59)
                {
                  v63 = objc_msgSend_objectForKeyedSubscript_(v34, v60, v33, v61);
                  objc_msgSend_addEntriesFromDictionary_(v63, v64, v48, v65);

                  v66 = v33;
                  v69 = objc_msgSend_objectForKeyedSubscript_(v343, v67, v33, v68);
                  objc_msgSend_addEntriesFromDictionary_(v69, v70, v49, v71);
                }

                else
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v34, v60, v48, v33);
                  v66 = v33;
                  objc_msgSend_setObject_forKeyedSubscript_(v343, v72, v49, v33);
                }

                v25 = v336;

                v73 = 0;
                v27 = v47;
                v32 = v345;
                v33 = v66;
                v34 = v62;
LABEL_24:
                v18 = v335;
LABEL_104:

                objc_autoreleasePoolPop(context);
                if (v73)
                {
                  goto LABEL_150;
                }

                ++v27;
              }

              while (v27 != v338);
              v297 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v220, &v347, v346, 16);
              v338 = v297;
            }

            while (v297);
          }

LABEL_150:

          v17 = v318;
          v300 = objc_msgSend_objectForKeyedSubscript_(v18, v298, v318, v299);

          if (v300)
          {
            v303 = objc_msgSend_objectForKeyedSubscript_(v320, v301, v318, v302);
            objc_msgSend_addEntriesFromDictionary_(v303, v304, v18, v305);

            v308 = objc_msgSend_objectForKeyedSubscript_(v319, v306, v318, v307);
            objc_msgSend_addEntriesFromDictionary_(v308, v309, v340, v310);
          }

          else
          {
            objc_msgSend_setObject_forKeyedSubscript_(v320, v301, v18, v318);
            objc_msgSend_setObject_forKeyedSubscript_(v319, v311, v340, v318);
          }

          v23 = v328 + 1;
        }

        while (v328 + 1 != v321);
        v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v352, v351, 16);
      }

      while (v321);
    }

    v312 = 0;
  }

  else
  {
    sub_2958B0664(v364);
    v312 = v364[0];
  }

  return v312;
}

float sub_29584472C(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return NAN;
  }

  v3 = *(a1 + 16);
  if (*v3 >= a2)
  {
    return v3[1];
  }

  v4 = &v3[2 * v2];
  if (*(v4 - 2) <= a2)
  {
    return *(v4 - 1);
  }

  if (v2 == 1)
  {
    return NAN;
  }

  v5 = (v2 - 1);
  for (i = v3 + 2; ; i += 2)
  {
    v7 = *(i - 2);
    if (v7 <= a2 && *i > a2)
    {
      break;
    }

    if (!--v5)
    {
      return NAN;
    }
  }

  return *(i - 1) + (((a2 - v7) * (i[1] - *(i - 1))) / (*i - v7));
}

uint64_t sub_2958447CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = [GainValueArray alloc];
    v34 = objc_msgSend_initWithArray_(v31, v32, v3, v33);
    v35 = v4[1];
    v4[1] = v34;

    if (v34)
    {
      v36 = [GainValueArray alloc];
      v39 = objc_msgSend_initWithArray_(v36, v37, v3, v38);
      v40 = v4[2];
      v4[2] = v39;

      if (v39)
      {
        v41 = [GainValueArray alloc];
        v44 = objc_msgSend_initWithArray_(v41, v42, v3, v43);
        v45 = v4[3];
        v4[3] = v44;

        if (v44)
        {
          v30 = 0;
          goto LABEL_11;
        }

        sub_2958B0A64();
      }

      else
      {
        sub_2958B0AC4();
      }
    }

    else
    {
      sub_2958B0B24();
    }

    v30 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v5 = v3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"SparseFrameParameters", v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(v5, v9, @"SparseFrameParametersStaticScene", v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v5, v12, @"DenseFrameParameters", v13);
  v15 = [GainValueArray alloc];
  v18 = objc_msgSend_initWithArray_(v15, v16, v8, v17);
  v19 = v4[1];
  v4[1] = v18;

  if (!v18)
  {
    sub_2958B0C44();
LABEL_17:
    v30 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  v20 = [GainValueArray alloc];
  v23 = objc_msgSend_initWithArray_(v20, v21, v11, v22);
  v24 = v4[2];
  v4[2] = v23;

  if (!v23)
  {
    sub_2958B0BE4();
    goto LABEL_17;
  }

  v25 = [GainValueArray alloc];
  v28 = objc_msgSend_initWithArray_(v25, v26, v14, v27);
  v29 = v4[3];
  v4[3] = v28;

  if (!v28)
  {
    sub_2958B0B84();
    goto LABEL_17;
  }

  v30 = 0;
LABEL_6:

LABEL_11:
  return v30;
}

uint64_t sub_295846984()
{
  qword_2A18C2218 = objc_alloc_init(NRFMonitor);

  return MEMORY[0x2A1C71028]();
}

void sub_295846BD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_releaseAllNRFSingletons(WeakRetained, v1, v2, v3);
}

void sub_29584AF9C(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29584BC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_29584BC6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_didFinishProcessingWithCompletionStatus_(v1, v2, WeakRetained, v3);
}

uint64_t sub_29584FD68()
{
  host_info_outCnt = 0;
  v34 = 0;
  memset(host_info_out, 0, 60);
  v32 = 0;
  memset(task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 10;
  v29[0] = 0;
  v29[1] = 0;
  v28 = 4;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *v4 = 0u;
  v5 = 0u;
  v3 = 93;
  v0 = MEMORY[0x29EDCA6B0];
  if (task_info(*MEMORY[0x29EDCA6B0], 0x12u, task_info_out, &task_info_outCnt))
  {
    return sub_2958B636C();
  }

  if (task_info(*v0, 3u, v29, &v28))
  {
    return sub_2958B6404();
  }

  if (task_info(*v0, 0x16u, v4, &v3))
  {
    return sub_2958B649C();
  }

  v1 = MEMORY[0x29C253040]();
  host_info_outCnt = 15;
  host_page_size(v1, &v34);
  result = host_statistics(v1, 2, host_info_out, &host_info_outCnt);
  if (result)
  {
    return sub_2958B6534();
  }

  return result;
}

void sub_295851BE8(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v16, v15, 16);
  if (v4)
  {
    v8 = v4;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = objc_msgSend_unsignedIntValue(*(*(&v16 + 1) + 8 * v10), v5, v6, v7);
        objc_msgSend_processor_didCompleteProcessingForSurfaceID_(v11, v14, v12, v13);
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v16, v15, 16);
    }

    while (v8);
  }
}

void sub_295852790(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_295852830(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

void sub_29585517C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_29585521C(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

uint64_t sub_295856998(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A18C2238 = result;
  return result;
}

void sub_295859D04(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v620 = 0u;
  v621 = 0u;
  v618 = 0u;
  v619 = 0u;
  objc_msgSend_defaultRadialParams_(VideoDefringingTuningParameters, a2, 1, a4);
  objc_msgSend_defaultLUTParams_(VideoDefringingTuningParameters, v4, 1, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v617[0] = MEMORY[0x29EDB8EB0];
  v616[0] = @"CorrectionEnabled";
  v616[1] = @"RadialParameters";
  v614[0] = @"a0";
  LODWORD(v12) = v618;
  v553 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v13, v14, v15, v12);
  v615[0] = v553;
  v614[1] = @"a1";
  LODWORD(v16) = DWORD1(v618);
  v550 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v17, v18, v19, v16);
  v615[1] = v550;
  v614[2] = @"a2";
  LODWORD(v20) = DWORD2(v618);
  v24 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v21, v22, v23, v20);
  v615[2] = v24;
  v614[3] = @"a3";
  LODWORD(v25) = HIDWORD(v618);
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v26, v27, v28, v25);
  v615[3] = v29;
  v614[4] = @"MinCoefficient";
  LODWORD(v30) = DWORD1(v621);
  v34 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v31, v32, v33, v30);
  v615[4] = v34;
  v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v35, v615, v614, 5);
  v617[1] = v36;
  v616[2] = @"DesaturateParameters";
  v612[0] = @"Amount";
  LODWORD(v37) = v7;
  v41 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v38, v39, v40, v37);
  v613[0] = v41;
  v612[1] = @"Angle";
  LODWORD(v42) = v9;
  v46 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v43, v44, v45, v42);
  v613[1] = v46;
  v612[2] = @"Cutoff";
  LODWORD(v47) = v11;
  v51 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v48, v49, v50, v47);
  v613[2] = v51;
  v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v52, v613, v612, 3);
  v617[2] = v53;
  v555 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v54, v617, v616, 3);

  v611 = 0;
  v610 = 0u;
  v609 = 0u;
  v608 = 0u;
  v607 = 0u;
  v606 = 0u;
  v605 = 0u;
  v604 = 0u;
  v603 = 0u;
  v602 = 0u;
  v601 = 0u;
  v600 = 0u;
  v599 = 0u;
  v598 = 0u;
  v597 = 0u;
  objc_msgSend_defaultCorrectionParams_(VideoDefringingTuningParameters, v55, 2, v56);
  v596 = 0u;
  v595 = 0u;
  v594 = 0u;
  v593 = 0u;
  objc_msgSend_defaultRadialParams_(VideoDefringingTuningParameters, v57, 2, v58);
  objc_msgSend_defaultLUTParams_(VideoDefringingTuningParameters, v59, 2, v60);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v592[0] = MEMORY[0x29EDB8EB0];
  v591[0] = @"CorrectionEnabled";
  v591[1] = @"RadialParameters";
  v589[0] = @"a0";
  LODWORD(v67) = v593;
  v551 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v68, v69, v70, v67);
  v590[0] = v551;
  v589[1] = @"a1";
  LODWORD(v71) = DWORD1(v593);
  v548 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v72, v73, v74, v71);
  v590[1] = v548;
  v589[2] = @"a2";
  LODWORD(v75) = DWORD2(v593);
  v546 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v76, v77, v78, v75);
  v590[2] = v546;
  v589[3] = @"a3";
  LODWORD(v79) = HIDWORD(v593);
  v544 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v80, v81, v82, v79);
  v590[3] = v544;
  v589[4] = @"MinCoefficient";
  LODWORD(v83) = DWORD1(v596);
  v542 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v84, v85, v86, v83);
  v590[4] = v542;
  v540 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v87, v590, v589, 5);
  v592[1] = v540;
  v591[2] = @"DesaturateParameters";
  v587[0] = @"Amount";
  LODWORD(v88) = v62;
  v538 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v89, v90, v91, v88);
  v588[0] = v538;
  v587[1] = @"Angle";
  LODWORD(v92) = v64;
  v536 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v93, v94, v95, v92);
  v588[1] = v536;
  v587[2] = @"Cutoff";
  LODWORD(v96) = v66;
  v534 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v97, v98, v99, v96);
  v588[2] = v534;
  v532 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v100, v588, v587, 3);
  v592[2] = v532;
  v591[3] = @"CorrectionParameters";
  v585[0] = @"MaxChroma";
  LODWORD(v101) = DWORD1(v599);
  v530 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v102, v103, v104, v101);
  v586[0] = v530;
  v585[1] = @"BlueTh0";
  LODWORD(v105) = DWORD2(v599);
  v528 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v106, v107, v108, v105);
  v586[1] = v528;
  v585[2] = @"BlueTh1";
  LODWORD(v109) = HIDWORD(v599);
  v526 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v110, v111, v112, v109);
  v586[2] = v526;
  v585[3] = @"BlueCrTh0";
  LODWORD(v113) = v600;
  v524 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v114, v115, v116, v113);
  v586[3] = v524;
  v585[4] = @"ContrastTh0";
  LODWORD(v117) = HIDWORD(v600);
  v522 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v118, v119, v120, v117);
  v586[4] = v522;
  v585[5] = @"ContrastTh1";
  LODWORD(v121) = v601;
  v520 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v122, v123, v124, v121);
  v586[5] = v520;
  v585[6] = @"DarknessTh0";
  LODWORD(v125) = DWORD1(v601);
  v518 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v126, v127, v128, v125);
  v586[6] = v518;
  v585[7] = @"DarknessTh1";
  LODWORD(v129) = DWORD2(v601);
  v516 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v130, v131, v132, v129);
  v586[7] = v516;
  v585[8] = @"PbrightnessTh0";
  LODWORD(v133) = DWORD1(v602);
  v514 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v134, v135, v136, v133);
  v586[8] = v514;
  v585[9] = @"PbrightnessTh1";
  LODWORD(v137) = DWORD2(v602);
  v512 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v138, v139, v140, v137);
  v586[9] = v512;
  v585[10] = @"BlueBrightThr0";
  LODWORD(v141) = HIDWORD(v602);
  v510 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v142, v143, v144, v141);
  v586[10] = v510;
  v585[11] = @"BlueBrightThr1";
  LODWORD(v145) = v603;
  v508 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v146, v147, v148, v145);
  v586[11] = v508;
  v585[12] = @"ColorfullThr0";
  LODWORD(v149) = DWORD1(v603);
  v506 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v150, v151, v152, v149);
  v586[12] = v506;
  v585[13] = @"ColorfullThr1";
  LODWORD(v153) = DWORD2(v603);
  v504 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v154, v155, v156, v153);
  v586[13] = v504;
  v585[14] = @"ColorfullPThr0";
  LODWORD(v157) = HIDWORD(v603);
  v502 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v158, v159, v160, v157);
  v586[14] = v502;
  v585[15] = @"ColorfullPThr1";
  LODWORD(v161) = v604;
  v500 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v162, v163, v164, v161);
  v586[15] = v500;
  v585[16] = @"BlueCrThr0";
  LODWORD(v165) = v600;
  v498 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v166, v167, v168, v165);
  v586[16] = v498;
  v585[17] = @"BlueCrThr1";
  LODWORD(v169) = DWORD2(v604);
  v496 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v170, v171, v172, v169);
  v586[17] = v496;
  v585[18] = @"DarkBlueCbThr0";
  LODWORD(v173) = DWORD1(v606);
  v494 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v174, v175, v176, v173);
  v586[18] = v494;
  v585[19] = @"DarkBlueCbThr1";
  LODWORD(v177) = DWORD2(v606);
  v492 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v178, v179, v180, v177);
  v586[19] = v492;
  v585[20] = @"SkyBlueYThr0";
  LODWORD(v181) = HIDWORD(v606);
  v185 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v182, v183, v184, v181);
  v586[20] = v185;
  v585[21] = @"SkyBlueYThr1";
  LODWORD(v186) = v607;
  v190 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v187, v188, v189, v186);
  v586[21] = v190;
  v585[22] = @"SkyBlueCbThr0";
  LODWORD(v191) = DWORD1(v607);
  v195 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v192, v193, v194, v191);
  v586[22] = v195;
  v585[23] = @"SkyBlueCbThr1";
  LODWORD(v196) = DWORD2(v607);
  v200 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v197, v198, v199, v196);
  v586[23] = v200;
  v585[24] = @"SkyBluePThr0";
  LODWORD(v201) = HIDWORD(v607);
  v205 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v202, v203, v204, v201);
  v586[24] = v205;
  v585[25] = @"SkyBluePThr1";
  LODWORD(v206) = v608;
  v210 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v207, v208, v209, v206);
  v586[25] = v210;
  v585[26] = @"FiltThr";
  LODWORD(v211) = DWORD2(v609);
  v215 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v212, v213, v214, v211);
  v586[26] = v215;
  v217 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v216, v586, v585, 27);
  v592[3] = v217;
  v554 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v218, v592, v591, 4);

  v584 = 0;
  v583 = 0u;
  v582 = 0u;
  v581 = 0u;
  v580 = 0u;
  v579 = 0u;
  v578 = 0u;
  v577 = 0u;
  v576 = 0u;
  v575 = 0u;
  v574 = 0u;
  v573 = 0u;
  v572 = 0u;
  v571 = 0u;
  v570 = 0u;
  objc_msgSend_defaultCorrectionParams_(VideoDefringingTuningParameters, v219, 2, v220);
  v569 = 0u;
  v568 = 0u;
  v567 = 0u;
  v566 = 0u;
  objc_msgSend_defaultRadialParams_(VideoDefringingTuningParameters, v221, 2, v222);
  objc_msgSend_defaultLUTParams_(VideoDefringingTuningParameters, v223, 2, v224);
  v226 = v225;
  v228 = v227;
  v230 = v229;
  v565[0] = MEMORY[0x29EDB8EB0];
  v564[0] = @"CorrectionEnabled";
  v564[1] = @"RadialParameters";
  v562[0] = @"a0";
  LODWORD(v231) = v566;
  v552 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v232, v233, v234, v231);
  v563[0] = v552;
  v562[1] = @"a1";
  LODWORD(v235) = DWORD1(v566);
  v549 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v236, v237, v238, v235);
  v563[1] = v549;
  v562[2] = @"a2";
  LODWORD(v239) = DWORD2(v566);
  v547 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v240, v241, v242, v239);
  v563[2] = v547;
  v562[3] = @"a3";
  LODWORD(v243) = HIDWORD(v566);
  v545 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v244, v245, v246, v243);
  v563[3] = v545;
  v562[4] = @"MinCoefficient";
  LODWORD(v247) = DWORD1(v569);
  v543 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v248, v249, v250, v247);
  v563[4] = v543;
  v541 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v251, v563, v562, 5);
  v565[1] = v541;
  v564[2] = @"DesaturateParameters";
  v560[0] = @"Amount";
  LODWORD(v252) = v226;
  v539 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v253, v254, v255, v252);
  v561[0] = v539;
  v560[1] = @"Angle";
  LODWORD(v256) = v228;
  v537 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v257, v258, v259, v256);
  v561[1] = v537;
  v560[2] = @"Cutoff";
  LODWORD(v260) = v230;
  v535 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v261, v262, v263, v260);
  v561[2] = v535;
  v533 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v264, v561, v560, 3);
  v565[2] = v533;
  v564[3] = @"CorrectionParameters";
  v558[0] = @"RadialScale";
  LODWORD(v265) = v570;
  v531 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v266, v267, v268, v265);
  v559[0] = v531;
  v558[1] = @"RadialR0";
  LODWORD(v269) = DWORD1(v570);
  v529 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v270, v271, v272, v269);
  v559[1] = v529;
  v558[2] = @"RadialR1";
  LODWORD(v273) = DWORD2(v570);
  v527 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v274, v275, v276, v273);
  v559[2] = v527;
  v558[3] = @"RadialF0";
  LODWORD(v277) = HIDWORD(v570);
  v525 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v278, v279, v280, v277);
  v559[3] = v525;
  v558[4] = @"RadialF1";
  LODWORD(v281) = v571;
  v523 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v282, v283, v284, v281);
  v559[4] = v523;
  v558[5] = @"RadialF2";
  LODWORD(v285) = DWORD1(v571);
  v521 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v286, v287, v288, v285);
  v559[5] = v521;
  v558[6] = @"MaxChroma";
  LODWORD(v289) = DWORD1(v572);
  v519 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v290, v291, v292, v289);
  v559[6] = v519;
  v558[7] = @"BlueTh0";
  LODWORD(v293) = DWORD2(v572);
  v517 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v294, v295, v296, v293);
  v559[7] = v517;
  v558[8] = @"BlueTh1";
  LODWORD(v297) = HIDWORD(v572);
  v515 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v298, v299, v300, v297);
  v559[8] = v515;
  v558[9] = @"BlueCrTh0";
  LODWORD(v301) = v573;
  v513 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v302, v303, v304, v301);
  v559[9] = v513;
  v558[10] = @"BrightnessTh0";
  LODWORD(v305) = DWORD1(v573);
  v511 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v306, v307, v308, v305);
  v559[10] = v511;
  v558[11] = @"BrightnessTh1";
  LODWORD(v309) = DWORD2(v573);
  v509 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v310, v311, v312, v309);
  v559[11] = v509;
  v558[12] = @"ContrastTh0";
  LODWORD(v313) = HIDWORD(v573);
  v507 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v314, v315, v316, v313);
  v559[12] = v507;
  v558[13] = @"ContrastTh1";
  LODWORD(v317) = v574;
  v505 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v318, v319, v320, v317);
  v559[13] = v505;
  v558[14] = @"DarknessTh0";
  LODWORD(v321) = DWORD1(v574);
  v503 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v322, v323, v324, v321);
  v559[14] = v503;
  v558[15] = @"DarknessTh1";
  LODWORD(v325) = DWORD2(v574);
  v501 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v326, v327, v328, v325);
  v559[15] = v501;
  v558[16] = @"LumaKnee";
  LODWORD(v329) = HIDWORD(v574);
  v499 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v330, v331, v332, v329);
  v559[16] = v499;
  v558[17] = @"LumaAmp";
  LODWORD(v333) = v575;
  v497 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v334, v335, v336, v333);
  v559[17] = v497;
  v558[18] = @"PbrightnessTh0";
  LODWORD(v337) = DWORD1(v575);
  v495 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v338, v339, v340, v337);
  v559[18] = v495;
  v558[19] = @"PbrightnessTh1";
  LODWORD(v341) = DWORD2(v575);
  v493 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v342, v343, v344, v341);
  v559[19] = v493;
  v558[20] = @"BlueBrightThr0";
  LODWORD(v345) = HIDWORD(v575);
  v491 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v346, v347, v348, v345);
  v559[20] = v491;
  v558[21] = @"BlueBrightThr1";
  LODWORD(v349) = v576;
  v490 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v350, v351, v352, v349);
  v559[21] = v490;
  v558[22] = @"ColorfullThr0";
  LODWORD(v353) = DWORD1(v576);
  v489 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v354, v355, v356, v353);
  v559[22] = v489;
  v558[23] = @"ColorfullThr1";
  LODWORD(v357) = DWORD2(v576);
  v488 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v358, v359, v360, v357);
  v559[23] = v488;
  v558[24] = @"ColorfullPThr0";
  LODWORD(v361) = HIDWORD(v576);
  v487 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v362, v363, v364, v361);
  v559[24] = v487;
  v558[25] = @"ColorfullPThr1";
  LODWORD(v365) = v577;
  v486 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v366, v367, v368, v365);
  v559[25] = v486;
  v558[26] = @"BlueCrThr0";
  LODWORD(v369) = DWORD1(v577);
  v485 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v370, v371, v372, v369);
  v559[26] = v485;
  v558[27] = @"BlueCrThr1";
  LODWORD(v373) = DWORD2(v577);
  v484 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v374, v375, v376, v373);
  v559[27] = v484;
  v558[28] = @"DarkAchromThr0";
  LODWORD(v377) = HIDWORD(v577);
  v483 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v378, v379, v380, v377);
  v559[28] = v483;
  v558[29] = @"DarkAchromThr1";
  LODWORD(v381) = v578;
  v482 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v382, v383, v384, v381);
  v559[29] = v482;
  v558[30] = @"DarkAchromCThr";
  LODWORD(v385) = DWORD1(v578);
  v481 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v386, v387, v388, v385);
  v559[30] = v481;
  v558[31] = @"DarkAchromYThr";
  LODWORD(v389) = DWORD2(v578);
  v480 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v390, v391, v392, v389);
  v559[31] = v480;
  v558[32] = @"DarkBlueYThr0";
  LODWORD(v393) = HIDWORD(v578);
  v479 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v394, v395, v396, v393);
  v559[32] = v479;
  v558[33] = @"DarkBlueYThr1";
  LODWORD(v397) = v579;
  v478 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v398, v399, v400, v397);
  v559[33] = v478;
  v558[34] = @"DarkBlueCbThr0";
  LODWORD(v401) = DWORD1(v579);
  v477 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v402, v403, v404, v401);
  v559[34] = v477;
  v558[35] = @"DarkBlueCbThr1";
  LODWORD(v405) = DWORD2(v579);
  v476 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v406, v407, v408, v405);
  v559[35] = v476;
  v558[36] = @"SkyBlueYThr0";
  LODWORD(v409) = HIDWORD(v579);
  v475 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v410, v411, v412, v409);
  v559[36] = v475;
  v558[37] = @"SkyBlueYThr1";
  LODWORD(v413) = v580;
  v474 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v414, v415, v416, v413);
  v559[37] = v474;
  v558[38] = @"SkyBlueCbThr0";
  LODWORD(v417) = DWORD1(v580);
  v473 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v418, v419, v420, v417);
  v559[38] = v473;
  v558[39] = @"SkyBlueCbThr1";
  LODWORD(v421) = DWORD2(v580);
  v472 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v422, v423, v424, v421);
  v559[39] = v472;
  v558[40] = @"SkyBluePThr0";
  LODWORD(v425) = HIDWORD(v580);
  v429 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v426, v427, v428, v425);
  v559[40] = v429;
  v558[41] = @"SkyBluePThr1";
  LODWORD(v430) = v581;
  v434 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v431, v432, v433, v430);
  v559[41] = v434;
  v558[42] = @"FiltThr";
  LODWORD(v435) = DWORD2(v582);
  v439 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v436, v437, v438, v435);
  v559[42] = v439;
  v558[43] = @"MixFiltLUT";
  LODWORD(v440) = HIDWORD(v582);
  v444 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v441, v442, v443, v440);
  v559[43] = v444;
  v558[44] = @"EITThr0";
  LODWORD(v445) = DWORD1(v581);
  v449 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v446, v447, v448, v445);
  v559[44] = v449;
  v558[45] = @"EITThr1";
  LODWORD(v450) = DWORD2(v581);
  v454 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v451, v452, v453, v450);
  v559[45] = v454;
  v558[46] = @"AwbRatioThr0";
  LODWORD(v455) = HIDWORD(v581);
  v459 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v456, v457, v458, v455);
  v559[46] = v459;
  v558[47] = @"AwbRatioThr1";
  LODWORD(v460) = v582;
  v464 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v461, v462, v463, v460);
  v559[47] = v464;
  v466 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v465, v559, v558, 48);
  v565[3] = v466;
  v468 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v467, v565, v564, 4);

  v556[0] = @"Slomo";
  v556[1] = @"Video";
  v557[0] = v555;
  v557[1] = v554;
  v556[2] = @"Still";
  v557[2] = v468;
  v470 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v469, v557, v556, 3);
  v471 = qword_2A18C2250;
  qword_2A18C2250 = v470;
}

uint64_t sub_29585CE58()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585CE8C(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29585DBBC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585DBF0(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29585DE88()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585DEBC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29585E200()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585E234(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29585E8F4()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585E928(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

id sub_29585E9DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = qword_2A138BA68;
  v11 = qword_2A138BA68;
  if (!qword_2A138BA68)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = sub_2958620B8;
    v7[3] = &unk_29EDDBEE8;
    v7[4] = &v8;
    sub_2958620B8(v7, a2, a3, a4);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_29585EAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_29585EABC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585EAF0(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29585F810()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29585F844(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29586064C()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295860680(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

Class sub_2958620B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0;
  if (!qword_2A18C2240)
  {
    v9[1] = MEMORY[0x29EDCA5F8];
    v9[2] = 3221225472;
    v9[3] = sub_2958621B8;
    v9[4] = &unk_29EDDBF20;
    v9[5] = v9;
    v10 = xmmword_29EDDC450;
    v11 = 0;
    qword_2A18C2240 = _sl_dlopen();
  }

  if (!qword_2A18C2240)
  {
    sub_29588D640(v9, a2, a3, a4);
  }

  if (v9[0])
  {
    free(v9[0]);
  }

  result = objc_getClass("VNObservation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2958C1264(result, v6, v7, v8);
  }

  qword_2A138BA68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2958621B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_2A18C2240 = result;
  return result;
}

float64_t sub_295862268(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(a1);
  return a1.f64[0];
}

void sub_295864434(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_msgSend_GPUEndTime(v2, v3, v4, v5);
  objc_msgSend_GPUStartTime(v2, v6, v7, v8);

  if (*MEMORY[0x29EDB9270] == 1)
  {

    kdebug_trace();
  }
}

void sub_2958644D4(void *a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_status(v15, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v15, v6, v7, v8);
    objc_msgSend_GPUStartTime(v15, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v15, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    kdebug_trace();
  }
}

id sub_29586565C(unsigned int a1)
{
  if (a1 <= 3)
  {
    v4[0] = xmmword_29EDDC468;
    v4[1] = *off_29EDDC478;
    v1 = *(v4 + a1);
    for (i = 24; i != -8; i -= 8)
    {
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_2958660E0(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    v2 = *(result + 40);
    return kdebug_trace();
  }

  return result;
}

void sub_295866114(uint64_t a1, void *a2)
{
  v14 = a2;
  if (objc_msgSend_status(v14, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v14, v6, v7, v8);
    objc_msgSend_GPUStartTime(v14, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v14, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    kdebug_trace();
  }
}

uint64_t sub_2958666DC(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    v2 = *(result + 40);
    return kdebug_trace();
  }

  return result;
}

void sub_295866710(uint64_t a1, void *a2)
{
  v14 = a2;
  if (objc_msgSend_status(v14, v3, v4, v5) == 4)
  {
    objc_msgSend_GPUEndTime(v14, v6, v7, v8);
    objc_msgSend_GPUStartTime(v14, v9, v10, v11);
  }

  else
  {
    objc_msgSend_status(v14, v6, v7, v8);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    kdebug_trace();
  }
}

uint64_t sub_29586AE90()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29586AEC4(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v2, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6, v7);
    objc_msgSend_GPUStartTime(v11, v8, v9, v10);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6, v7);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_29586AF94(void *a1, unint64_t a2, unint64_t a3, void *a4, int a5, uint64_t a6)
{
  v11 = a1;
  v12 = a4;
  v16 = objc_msgSend_allocator(v12, v13, v14, v15);
  v20 = objc_msgSend_newTextureDescriptor(v16, v17, v18, v19);

  if (!v20)
  {
    sub_2958C77E8(&v106);
    goto LABEL_15;
  }

  v24 = objc_msgSend_desc(v20, v21, v22, v23);
  objc_msgSend_setUsage_(v24, v25, 7, v26);

  v30 = objc_msgSend_desc(v20, v27, v28, v29);
  objc_msgSend_setWidth_(v30, v31, a2, v32);

  v36 = objc_msgSend_desc(v20, v33, v34, v35);
  objc_msgSend_setHeight_(v36, v37, a3, v38);

  v42 = objc_msgSend_desc(v20, v39, v40, v41);
  objc_msgSend_setPixelFormat_(v42, v43, 25, v44);

  if (a5)
  {
    v48 = v11[4];
    if ((FigMetalIsValid() & 1) == 0)
    {
      objc_msgSend_setLabel_(v20, v49, 0, v50);
      v54 = objc_msgSend_allocator(v12, v51, v52, v53);
      v57 = objc_msgSend_newTextureWithDescriptor_(v54, v55, v20, v56);
      v58 = v11[4];
      v11[4] = v57;

      if (!v11[4])
      {
        sub_2958C7578(&v106);
        goto LABEL_15;
      }
    }

    v59 = v11[2];
    if ((FigMetalIsValid() & 1) == 0)
    {
      objc_msgSend_setLabel_(v20, v45, 0, v47);
      v63 = objc_msgSend_allocator(v12, v60, v61, v62);
      v66 = objc_msgSend_newTextureWithDescriptor_(v63, v64, v20, v65);
      v67 = v11[2];
      v11[2] = v66;

      if (!v11[2])
      {
        sub_2958C7614(&v106);
        goto LABEL_15;
      }
    }
  }

  v68 = objc_msgSend_desc(v20, v45, v46, v47);
  objc_msgSend_setWidth_(v68, v69, a2 >> 1, v70);

  v74 = objc_msgSend_desc(v20, v71, v72, v73);
  objc_msgSend_setHeight_(v74, v75, a3 >> 1, v76);

  v80 = objc_msgSend_desc(v20, v77, v78, v79);
  objc_msgSend_setPixelFormat_(v80, v81, 65, v82);

  if (a6)
  {
    v83 = v11[5];
    if (FigMetalIsValid())
    {
      goto LABEL_10;
    }

    objc_msgSend_setLabel_(v20, v84, 0, v85);
    v89 = objc_msgSend_allocator(v12, v86, v87, v88);
    v92 = objc_msgSend_newTextureWithDescriptor_(v89, v90, v20, v91);
    v93 = v11[5];
    v11[5] = v92;

    if (v11[5])
    {
LABEL_10:
      v94 = v11[3];
      if (FigMetalIsValid())
      {
        goto LABEL_12;
      }

      objc_msgSend_setLabel_(v20, v95, 0, v96);
      v100 = objc_msgSend_allocator(v12, v97, v98, v99);
      v103 = objc_msgSend_newTextureWithDescriptor_(v100, v101, v20, v102);
      v104 = v11[3];
      v11[3] = v103;

      if (v11[3])
      {
LABEL_12:
        a6 = 0;
        goto LABEL_13;
      }

      sub_2958C774C(&v106);
    }

    else
    {
      sub_2958C76B0(&v106);
    }

LABEL_15:
    a6 = v106;
  }

LABEL_13:

  return a6;
}

id sub_29586E880(void *a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a2, a4);
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *a3 = 25;
  }

  return v5;
}

void sub_295875D8C(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295875E28(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295875EC4(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295875F60(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295875FFC(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295876098(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295876134(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295876234(void *a1)
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

uint64_t sub_2958762D8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

void sub_295876370(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_29587640C(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_2958764A8(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295876544(void *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

void sub_295876644(void *a1)
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  FigSignalErrorAtGM();
}

uint64_t sub_29587674C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2958767E8(void *a1)
{
  sub_2957F884C();
  FigDebugAssert3();
}

uint64_t sub_2958769D8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876A74(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876CF0(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876D9C(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876E48(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876EF4(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295876FA0(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587704C()
{
  fig_log_get_emitter();
  sub_2957FA41C();
  return FigDebugAssert3();
}

void sub_2958770C4(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957FA41C();
  FigDebugAssert3();
}

uint64_t sub_295877154()
{
  fig_log_get_emitter();
  sub_2957FA41C();
  return FigDebugAssert3();
}

uint64_t sub_2958771CC(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877278(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877324(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958773D0(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587747C(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877528(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958775D4(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877680(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587772C(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958777D8(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877884(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877930(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958779DC(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877A88(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877B34(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877BE0(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877C8C(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877D38(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877DE4(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877E90(_DWORD *a1)
{
  sub_2957FA434();
  sub_2957FA408();
  FigDebugAssert3();
  sub_2957FA434();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877F3C(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295877FA0(_DWORD *a1)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958789F0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878A7C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878B08()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878B94()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878C20()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878CAC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878D38()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878DC4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878E50()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878EDC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878F68()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295878FF4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295879080()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587910C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295879198()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295879224()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958792B0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587933C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587942C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_2958794C4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879560(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958795FC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879698(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879734(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958797D0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587986C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879908(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958799A4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879A40(uint64_t a1, _DWORD *a2)
{
  sub_2957FD170();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295879AE0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879B7C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879C18()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295879CB0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295879D48()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295879DE0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879E7C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879F18(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295879FB4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A050(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A0EC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A188(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A224(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A2C0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A35C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A3F8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A494(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A530(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A630(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A6CC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A768(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A804(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A8A0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A93C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587A9D8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587AA74(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29587AB74(void *a1, _DWORD *a2)
{
  sub_2957FD170();
  FigDebugAssert3();
  sub_2957F8880();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29587AC18(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29587ACB4(void *a1, _DWORD *a2)
{
  sub_2957FD170();
  FigDebugAssert3();
  sub_2957F8880();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29587AD58(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587ADF4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587AEB8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587AF44()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587AFD0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B05C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B0E8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B174()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B200()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B28C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B318()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B3A4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587B430()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_29587B4C8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_29587B560()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_29587B5F8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B694(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B730(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B7CC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B868(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B904(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587B9A0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BA3C(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BA8C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BB28(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BBC4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BC60(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BE8C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587BF28(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587C150(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29587F808()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587F894()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587F920()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587F9AC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_29587FA44(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
  return objc_msgSend_status(a2, v3, v4, v5);
}

uint64_t sub_29587FABC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FB48()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FBD4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FC60()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FCEC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FD78()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FE04()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FE90()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FF1C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29587FFA8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295880034()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958800C0()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_29588014C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958801D8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295880264()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958802F0()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958804A4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295880530()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958806E8()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295880774()
{
  sub_2957F888C();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958808C0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29588094C()
{
  sub_2957F888C();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

uint64_t sub_2958809E4()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880A7C()
{
  sub_2957F888C();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880B14()
{
  sub_2957F888C();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880BAC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880C44()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880CDC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295880E94(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295880F30(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295880FCC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881068(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295881104(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_295881174()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295881214()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_2958812B4(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_295881324()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_2958813C4()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295881464()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  sub_2957F8880();
  *v0 = FigSignalErrorAtGM();
}

uint64_t sub_295881504(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958815A0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588163C(void *a1, _DWORD *a2)
{
  v3 = a1;
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_2958816E8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881784(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881820(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958818BC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881A78(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295881B14(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295881BB0(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295881C4C(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295881CE8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881D84(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881E20(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881EBC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295881F58(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295881FF4(void *a1, _DWORD *a2)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2958820A8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882144(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958821E0(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_29588227C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882318(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958823B4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295882450(void *a1, void *a2, void *a3, _DWORD *a4)
{
  FigDebugAssert3();
  sub_2957F8880();
  *a4 = FigSignalErrorAtGM();
}

void sub_295882524(void *a1, void *a2, _DWORD *a3)
{
  sub_2957FD170();
  FigDebugAssert3();
  sub_2957F8880();
  *a3 = FigSignalErrorAtGM();
}

uint64_t sub_2958825E0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29588267C(void *a1, _DWORD *a2)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_295882730(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29588282C()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  sub_2957F8880();
  *v0 = FigSignalErrorAtGM();
}

void sub_2958828CC()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  sub_2957F8880();
  *v0 = FigSignalErrorAtGM();
}

void sub_29588296C()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295882A0C()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295882AAC()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295882B4C()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

uint64_t sub_295882BEC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882CE8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882D84(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295882E20(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882EBC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882F58(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295882FF4(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295883090(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588312C(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_2958831C8(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295883264(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295883300(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588339C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883438(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958834D4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883570(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588360C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958836A8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883744(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958837E0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588393C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958839D8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883A74(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883B10(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883BAC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883C48(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295883CE4(void *a1, void *a2, _DWORD *a3)
{
  FigDebugAssert3();
  sub_2957F8880();
  *a3 = FigSignalErrorAtGM();
}

uint64_t sub_295883DA0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883E3C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883ED8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295883F74(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884010(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958840AC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884148(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958841E4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884280(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588431C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958843B8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884454(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958844F0(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_29588458C(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295884628(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295884724(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958847C0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588485C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958848F8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884994(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884A30(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884B2C(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295884C28(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884CC4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884D60(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884DFC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884E98(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884F34(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295884FD0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588506C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295885108(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295885384(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_2958853F4(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_295885464(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

uint64_t sub_2958854D4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295885570()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  sub_2957F8880();
  *v0 = FigSignalErrorAtGM();
}

void sub_295885610()
{
  sub_295808DC0();
  sub_2957FD170();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  sub_2957F8880();
  *v0 = FigSignalErrorAtGM();
}

void sub_2958856B0(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_295885720(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_295885790()
{
  sub_295808DD4();
  sub_295808C74();
  FigDebugAssert3();
  v3 = *(v2 + 912);
  *v0 = FigSignalErrorAtGM();
}

void sub_295885830(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_2958858A0(uint64_t a1, void *a2)
{
  sub_295808C24();
  FigDebugAssert3();
}

uint64_t sub_295885910(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958859AC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295885A48(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295885AE4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295885F64()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295885FF0()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29588607C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295886108()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295886194()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295886220()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_2958862AC()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295886338()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_29588642C()
{
  sub_2957F888C();
  FigDebugAssert3();
  sub_2957F8880();

  return FigSignalErrorAtGM();
}

uint64_t sub_295886528(uint64_t a1, void *a2)
{
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2958865D8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886674(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295886710(uint64_t a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29580D784(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_2958867C0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588685C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958868F8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295886994(uint64_t a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29580D784(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_295886A44(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886AE0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295886B7C(uint64_t a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29580D784(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_295886C2C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886CC8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886D64(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886E00(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886E9C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886F38(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295886FD4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887070(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588710C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958871A8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887244(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958872E0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588737C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887418(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958874B4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295887550(void *a1, _DWORD *a2)
{
  FigDebugAssert3();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2958875FC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887698(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887734(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958877D0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588786C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887908(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958879A4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887A40(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887ADC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887B78(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887C14(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887CB0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887D4C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887DE8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887E84(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887F20(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295887FBC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295888058(uint64_t a1, void *a2, void *a3)
{
  sub_295808C24();
  FigDebugAssert3();
}

void sub_2958880E0(uint64_t a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29580D784(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_295888190(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588852C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958885C8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295888664(uint64_t a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  v1 = FigSignalErrorAtGM();
  v9 = sub_29580D784(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, a1);
}

uint64_t sub_295888714(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958887B0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588884C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958888E8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888984(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888A20(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888ABC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888B58(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888BF4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888C90(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888D2C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888DC8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295888FE4()
{
  FigDebugAssert3();
  sub_2957F8880();
  return FigSignalErrorAtGM();
}

uint64_t sub_295889078(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958890C8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889164(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958891B4(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889250(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958892EC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889388(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889424(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958894C0(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29588955C(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958895F8(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889694(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889730(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2958897CC(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889868(_DWORD *a1)
{
  sub_2957F885C();
  FigDebugAssert3();
  sub_2957F8880();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295889904(uint64_t a1, _DWORD *a2)
{
  sub_295808C34();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}