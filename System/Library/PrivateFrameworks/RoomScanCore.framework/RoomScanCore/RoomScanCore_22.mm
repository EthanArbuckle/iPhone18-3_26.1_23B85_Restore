void sub_26235BA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26235BA28(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v5;
  v6 = malloc_type_malloc(8 * v5 * v4, 0x100004000313F17uLL);
  *(a1 + 8) = v6;
  if (v6)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      memcpy(v6, v7, 8 * *(a1 + 4) * *a1);
    }
  }

  return a1;
}

uint64_t sub_26235BA98(uint64_t a1)
{
  for (i = 0; i != -96; i -= 24)
  {
    v3 = *(a1 + i + 72);
    if (v3)
    {
      *(a1 + i + 80) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

double sub_26235BAF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    return 0.0;
  }

  v5 = 0.0;
  do
  {
    v6 = *v2;
    v7 = *(a2 + 8);
    v8 = *(v7 + 16 * *(*v2 + 8));
    v44[0] = *(v7 + 16 * **v2);
    v44[1] = v8;
    v37 = v44[0];
    v39 = v8;
    v41 = *(v7 + 16 * *(v6 + 24));
    v43[0] = *(v7 + 16 * *(v6 + 16));
    v43[1] = v41;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v35 = v43[0];
    v9 = vsubq_f64(v44[0], v43[0]);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v9, v9)));
    sub_26225B14C(&v45, &v48);
    v10 = vsubq_f64(v37, v41);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
    sub_26225B14C(&v45, &v48);
    v11 = vsubq_f64(v39, v35);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v11, v11)));
    sub_26225B14C(&v45, &v48);
    v12 = vsubq_f64(v39, v41);
    v48 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
    sub_26225B14C(&v45, &v48);
    if (v45 == v46)
    {
      v14 = v45;
    }

    else
    {
      v13 = v45 + 1;
      v14 = v45;
      if (v45 + 1 != v46)
      {
        v15 = *v45;
        v14 = v45;
        v16 = v45 + 1;
        do
        {
          v17 = *v16++;
          v18 = v17;
          if (v17 < v15)
          {
            v15 = v18;
            v14 = v13;
          }

          v13 = v16;
        }

        while (v16 != v46);
      }
    }

    v19 = v14 - v45;
    v20 = v44[v19 >> 1];
    v21 = 1 - (v19 >> 1);
    v22 = v44[v21];
    v23 = v19 & 1;
    v24 = v43[v23];
    v25 = v43[v23 ^ 1];
    if (v45)
    {
      v40 = v44[v21];
      v42 = v20;
      v36 = v43[v23 ^ 1];
      v38 = v43[v23];
      operator delete(v45);
      v25 = v36;
      v24 = v38;
      v22 = v40;
      v20 = v42;
    }

    v26 = vsubq_f64(v20, v22);
    v27 = vsubq_f64(v24, v25);
    v28 = vaddvq_f64(vmulq_f64(v26, v27));
    v29 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27)));
    v30 = v28 / fmax(vmulq_laneq_f64(v29, v29, 1).f64[0], 2.22507386e-308);
    if (v30 <= 1.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1.0;
    }

    if (v30 >= -1.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = -1.0;
    }

    v33 = fabs(acos(v32) * 180.0 / 3.14159265 + -90.0);
    v5 = v5 + v33 * sqrt(v33);
    v2 += 3;
  }

  while (v2 != v3);
  return v5;
}

void sub_26235BD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235BD7C(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v5 = (a1 + 40);
  sub_2621E1D40(&v5);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;

  JUMPOUT(0x266727420);
}

uint64_t sub_26235BE4C(uint64_t a1)
{
  *a1 = &unk_2874EEE88;
  v2 = *(a1 + 72);
  if (v2)
  {
    free(v2);
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
  v6 = (a1 + 40);
  sub_2621E1D40(&v6);
  *a1 = &unk_2874EEEC0;
  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = 0;
  return a1;
}

void sub_26235BEFC(uint64_t a1, int *a2, double a3)
{
  __B = a3;
  sub_26235C7F4(a1, *a2, a2[1]);
  v5 = *(a2 + 1);
  v6 = *(a1 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    vDSP_vsmulD(v5, 1, &__B, v6, 1, a2[1] * *a2);
  }
}

void sub_26235BF64(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  if (v3)
  {
    free(v3);
    v1[1] = 0;
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

double sub_26235BF84(int *a1, uint64_t a2)
{
  v4 = a1[1] * *a1;
  if (v4)
  {
    v5 = a1[1] * *a1;
    v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    v7 = v6;
    if (v6)
    {
      bzero(v6, 8 * v4);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 1);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a2 + 8);
      if (v9)
      {
        vDSP_vmulD(v8, 1, v9, 1, v7, 1, a1[1] * *a1);
      }
    }
  }

  __C = 0.0;
  vDSP_sveD(v7, 1, &__C, v4);
  v10 = __C;
  if (v7)
  {
    free(v7);
  }

  return v10;
}

double sub_26235C08C(int *a1)
{
  sub_26235BA28(&v4, a1);
  v1 = __C;
  if (__C)
  {
    vDSP_vabsD(__C, 1, __C, 1, v5 * v4);
    v1 = __C;
    if (__C)
    {
      vDSP_vmulD(__C, 1, __C, 1, __C, 1, v5 * v4);
      v1 = __C;
    }
  }

  v7 = 0.0;
  vDSP_sveD(v1, 1, &v7, v5 * v4);
  v2 = v7;
  if (__C)
  {
    free(__C);
  }

  return v2;
}

void sub_26235C13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_26235C154(uint64_t a1, int *a2, signed int a3, int a4)
{
  v9 = *a2;
  v8 = a2[1];
  if (*a2)
  {
    if (v9 != 1 && v8 >= 2)
    {
      v11 = malloc_type_malloc(8 * v8 * v9, 0x100004000313F17uLL);
      v12 = *(a2 + 1);
      if (v12 && v11)
      {
        vDSP_mtransD(v12, 1, v11, 1, a2[1], *a2);
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 1);
        cblas_dcopy_NEWLAPACK();
        free(v11);
      }

      v9 = *a2;
      v8 = a2[1];
    }
  }

  *a2 = v8;
  a2[1] = v9;
  v16 = a4 - a3;
  v17 = *(a2 + 1);
  if (!v17 || a3 < 0)
  {
    v18 = 0;
  }

  else if (v8 > a3)
  {
    v18 = (v17 + 8 * v9 * a3);
  }

  else
  {
    v18 = 0;
  }

  v19 = v9 * v16;
  if (v9 * v16)
  {
    v20 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
    v21 = v20;
    if (v18 && v20)
    {
      memcpy(v20, v18, 8 * v19);
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *a2;
  v23 = a2[1];
  if (*a2 && v22 != 1 && v23 >= 2)
  {
    v24 = malloc_type_malloc(8 * v23 * v22, 0x100004000313F17uLL);
    v25 = *(a2 + 1);
    if (v25 && v24)
    {
      vDSP_mtransD(v25, 1, v24, 1, a2[1], *a2);
      v26 = *a2;
      v27 = a2[1];
      v28 = *(a2 + 1);
      cblas_dcopy_NEWLAPACK();
      free(v24);
    }

    v22 = *a2;
    v23 = a2[1];
  }

  *a2 = v23;
  a2[1] = v22;
  sub_26235C7F4(a1, v9, v16);
  if (v21)
  {
    if (v19 && *(a1 + 8) && *(a1 + 4) * *a1)
    {
      if (v16 == 1 || v9 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(v21, 1, *(a1 + 8), 1, v9, v16);
      }
    }

    free(v21);
  }
}

void sub_26235C3A8(_Unwind_Exception *a1)
{
  v4 = v1[1];
  if (v4)
  {
    free(v4);
    v1[1] = 0;
  }

  *v1 = 0;
  free(v2);
  _Unwind_Resume(a1);
}

void sub_26235C3DC(unsigned int *a1, int a2, int a3, int *a4)
{
  if (*(a1 + 1))
  {
    v4 = *(a4 + 1) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return;
  }

  v9 = *a1;
  v10 = a1[1];
  if (*a1)
  {
    if (v9 != 1 && v10 >= 2)
    {
      v12 = malloc_type_malloc(8 * v10 * v9, 0x100004000313F17uLL);
      v13 = *(a1 + 1);
      if (v13 && v12)
      {
        vDSP_mtransD(v13, 1, v12, 1, a1[1], *a1);
        v14 = *a1;
        v15 = a1[1];
        v16 = *(a1 + 1);
        cblas_dcopy_NEWLAPACK();
        free(v12);
      }

      v9 = *a1;
      v10 = a1[1];
    }
  }

  *a1 = v10;
  a1[1] = v9;
  v17 = *a4 * a4[1];
  if (v17)
  {
    v18 = malloc_type_malloc(8 * v17, 0x100004000313F17uLL);
    v19 = v18;
    if (v18)
    {
      bzero(v18, 8 * v17);
    }
  }

  else
  {
    v19 = 0;
  }

  if (*(a4 + 1))
  {
    v21 = *a4;
    v20 = a4[1];
    v22 = !v17 || v19 == 0;
    if (!v22 && v20 * v21 != 0)
    {
      if (v21 == 1 || v20 == 1)
      {
        cblas_dcopy_NEWLAPACK();
      }

      else
      {
        vDSP_mtransD(*(a4 + 1), 1, v19, 1, v20, v21);
      }
    }
  }

  v24 = *(a1 + 1);
  if (v24)
  {
    if (!v19)
    {
      goto LABEL_36;
    }

    memcpy((v24 + 8 * (a1[1] * a2)), v19, 8 * a1[1] * (a3 - a2));
  }

  else if (!v19)
  {
    goto LABEL_36;
  }

  free(v19);
LABEL_36:
  v25 = *a1;
  v26 = a1[1];
  if (*a1 && v25 != 1 && v26 >= 2)
  {
    v27 = malloc_type_malloc(8 * v26 * v25, 0x100004000313F17uLL);
    v28 = *(a1 + 1);
    if (v28)
    {
      if (v27)
      {
        vDSP_mtransD(v28, 1, v27, 1, a1[1], *a1);
        v29 = *a1;
        v30 = a1[1];
        v31 = *(a1 + 1);
        cblas_dcopy_NEWLAPACK();
        free(v27);
      }
    }

    v25 = *a1;
    v26 = a1[1];
  }

  *a1 = v26;
  a1[1] = v25;
}

void *sub_26235C610(uint64_t a1, int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_26235C7F4(a1, *a2, a2[1]);
  v5 = *(a2 + 1);
  result = *(v4 + 8);
  if (v5)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = memcpy(result, v5, 8 * *a2 * a2[1]);
    v13 = *a2;
    MEMORY[0x28223BE20](v8);
    v9 = *(a1 + 8);
    v10 = dgetrf_NEWLAPACK();
    MEMORY[0x28223BE20](v10);
    v11 = *(a1 + 8);
    result = dgetri_NEWLAPACK();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26235C744(_Unwind_Exception *exception_object)
{
  v3 = v1[1];
  if (v3)
  {
    free(v3);
    v1[1] = 0;
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t sub_26235C764(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a2 > *a1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3 > 0.0 && *(a2 + 8) < v3)
  {
    return 2;
  }

  v5 = *(a1 + 16);
  if (v5 > 0.0 && *(a2 + 16) < v5)
  {
    return 3;
  }

  v7 = *(a1 + 24);
  if (v7 > 0.0 && *(a2 + 24) < v7)
  {
    return 4;
  }

  v9 = *(a1 + 32);
  if (*(a2 + 32) <= v9 || v9 <= 0.0)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_26235C7F4(uint64_t a1, int a2, int a3)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 4) = a3;
  if (a3 * a2)
  {
    v4 = malloc_type_malloc(8 * a3 * a2, 0x100004000313F17uLL);
    *(a1 + 8) = v4;
    if (v4)
    {
      bzero(v4, 8 * *(a1 + 4) * *a1);
    }
  }

  return a1;
}

double *sub_26235C858(double *result, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7, double *a8, double *a9, _BYTE *a10, double *a11, double *a12, _DWORD *a13)
{
  *a13 = 0;
  v13 = *a10;
  v14 = *a7;
  v15 = *a4;
  v16 = *result;
  if (*a4 >= *result)
  {
    v17 = *result;
  }

  else
  {
    v17 = *a4;
  }

  if (v16 >= v15)
  {
    v18 = *result;
  }

  else
  {
    v18 = *a4;
  }

  if (v14 < v18 && v14 > v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a10;
  }

  v21 = *a3;
  v22 = v14 - v16;
  if (*a3 * (v14 - v16) >= 0.0)
  {
    v20 = 1;
  }

  v23 = *a12;
  v24 = *a11;
  if (*a12 < *a11)
  {
    v20 = 1;
  }

  if (!v20)
  {
    v25 = *a9;
    v26 = *a8;
    v27 = *a2;
    if (*a8 > *a2)
    {
      v28 = 0;
      *a13 = 1;
      v29 = v27 - v26;
      v30 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      if (v21 >= v25)
      {
        v31 = a3;
      }

      else
      {
        v31 = a9;
      }

      v32 = *v31;
      if (v30 >= *v31)
      {
        v32 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      }

      v33 = v32 * sqrt(-v21 / v32 * (v25 / v32) + v30 / v32 * (v30 / v32));
      v34 = -v33;
      if (v14 >= v16)
      {
        v34 = v33;
      }

      v35 = v16 + (v30 + v34 - v21) / (v25 + v34 + v34 - v21) * v22;
      v36 = v16 + v21 / (v21 + v29 / v22) * 0.5 * v22;
      v37 = vabdd_f64(v35, v16);
      v38 = vabdd_f64(v36, v16);
      v23 = v35 + (v36 - v35) * 0.5;
      if (v37 < v38)
      {
        v23 = v35;
      }

      *a10 = 1;
      *a4 = v14;
      *a5 = *a8;
      *a6 = *a9;
      goto LABEL_42;
    }

    v39 = fabs(v21);
    if (v21 / v39 * v25 < 0.0)
    {
      v40 = 0;
      *a13 = 2;
      v41 = v25 + v21 + (v27 - v26) * 3.0 / v22;
      if (v21 >= v25)
      {
        v42 = a3;
      }

      else
      {
        v42 = a9;
      }

      v43 = *v42;
      if (v41 >= *v42)
      {
        v43 = v41;
      }

      v44 = v43 * sqrt(-v21 / v43 * (v25 / v43) + v41 / v43 * (v41 / v43));
      v45 = -v44;
      if (v14 <= v16)
      {
        v45 = v44;
      }

      v23 = v14 + (v41 + v45 - v25) / (v21 + v45 + v45 - v25) * (v16 - v14);
      v46 = v14 + v25 / (v25 - v21) * (v16 - v14);
      if (vabdd_f64(v23, v14) <= vabdd_f64(v46, v14))
      {
        v23 = v46;
      }

      v13 = 1;
      *a10 = 1;
      *a4 = v16;
      *a5 = *a2;
      *a6 = *a3;
      v14 = *a7;
      goto LABEL_41;
    }

    if (fabs(v25) >= v39)
    {
      *a13 = 4;
      if (v13)
      {
        v40 = 0;
        v56 = *a6;
        v57 = v25 + *a6 + (v26 - *a5) * 3.0 / (v15 - v14);
        v58 = *a9;
        if (*a6 >= v25)
        {
          v58 = *a6;
        }

        if (v57 >= v58)
        {
          v58 = v25 + *a6 + (v26 - *a5) * 3.0 / (v15 - v14);
        }

        v59 = v58 * sqrt(-v56 / v58 * (v25 / v58) + v57 / v58 * (v57 / v58));
        v60 = -v59;
        if (v14 <= v15)
        {
          v60 = v59;
        }

        v23 = v14 + (v57 + v60 - v25) / (v56 + v60 + v60 - v25) * (v15 - v14);
      }

      else
      {
        v40 = 0;
        if (v14 <= v16)
        {
          v23 = v24;
        }
      }

      goto LABEL_41;
    }

    *a13 = 3;
    v50 = v25 + v21 + (v27 - v26) * 3.0 / v22;
    if (v21 >= v25)
    {
      v51 = a3;
    }

    else
    {
      v51 = a9;
    }

    v52 = *v51;
    if (v50 >= *v51)
    {
      v52 = v50;
    }

    v53 = v52 * sqrt(fmax(-v21 / v52 * (v25 / v52) + v50 / v52 * (v50 / v52), 0.0));
    v54 = -v53;
    if (v14 <= v16)
    {
      v54 = v53;
    }

    if (v53 == 0.0 || (v55 = (v50 + v54 - v25) / (v54 + v21 - v25 + v54), v55 >= 0.0))
    {
      if (v14 <= v16)
      {
        v23 = v24;
      }
    }

    else
    {
      v23 = v14 + v55 * (v16 - v14);
    }

    v61 = v14 + v25 / (v25 - v21) * (v16 - v14);
    v62 = vabdd_f64(v14, v23);
    v63 = vabdd_f64(v14, v61);
    if (v13)
    {
      if (v62 < v63)
      {
LABEL_75:
        v40 = 1;
LABEL_41:
        *result = v14;
        *a2 = *a8;
        *a3 = *a9;
        v28 = (v40 & v13) == 0;
LABEL_42:
        v47 = *a12;
        if (v23 < *a12)
        {
          v47 = v23;
        }

        if (*a11 >= v47)
        {
          v47 = *a11;
        }

        *a7 = v47;
        if (!v28)
        {
          v48 = *result + (*a4 - *result) * 0.66;
          v49 = v48 < v47;
          if (*a4 > *result)
          {
            v49 = v47 < v48;
          }

          if (!v49)
          {
            v47 = *result + (*a4 - *result) * 0.66;
          }

          *a7 = v47;
        }

        return result;
      }
    }

    else if (v62 > v63)
    {
      goto LABEL_75;
    }

    v40 = 1;
    v23 = v61;
    goto LABEL_41;
  }

  return result;
}

void sub_26235CC7C(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t sub_26235CD84(uint64_t result, int *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v87 = *v10;
        v88 = *v11;
        if (*(**a3 + 16 * v87 + 8) < *(**a3 + 16 * v88 + 8))
        {
          *v11 = v87;
          *v10 = v88;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v96 = v11 + 1;
      v97 = v11[1];
      v98 = v11 + 2;
      v99 = v11[2];
      v100 = *v11;
      v101 = **a3;
      v102 = *(v101 + 16 * v97 + 8);
      v103 = *(v101 + 16 * *v11 + 8);
      v104 = v99;
      v105 = *(v101 + 16 * v99 + 8);
      if (v102 >= v103)
      {
        if (v105 < v102)
        {
          v106 = v97;
          *v96 = v99;
          *v98 = v97;
          v107 = v11;
          v108 = v11 + 1;
          v104 = v97;
          if (v105 < v103)
          {
            goto LABEL_173;
          }

LABEL_175:
          v162 = *v10;
          if (*(v101 + 16 * v162 + 8) < *(v101 + 16 * v104 + 8))
          {
            *v98 = v162;
            *v10 = v97;
            v163 = *v98;
            v164 = *v96;
            v165 = *(v101 + 16 * v163 + 8);
            if (v165 < *(v101 + 16 * v164 + 8))
            {
              v11[1] = v163;
              v11[2] = v164;
              v166 = *v11;
              if (v165 < *(v101 + 16 * v166 + 8))
              {
                *v11 = v163;
                v11[1] = v166;
              }
            }
          }

          return result;
        }
      }

      else
      {
        v106 = v100;
        if (v105 < v102)
        {
          v107 = v11;
          v108 = v11 + 2;
          v97 = *v11;
          goto LABEL_173;
        }

        *v11 = v97;
        v11[1] = v100;
        v107 = v11 + 1;
        v108 = v11 + 2;
        v97 = v100;
        if (v105 < v103)
        {
LABEL_173:
          *v107 = v99;
          *v108 = v100;
          v104 = v106;
          goto LABEL_175;
        }
      }

      v97 = v99;
      goto LABEL_175;
    }

    if (v12 == 5)
    {
      v86 = **a3;

      return sub_26235D8EC(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v86);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v109 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v110 = 0;
            v111 = **a3;
            v112 = v11;
            do
            {
              v114 = *v112;
              v113 = v112[1];
              v112 = v109;
              v115 = *(v111 + 16 * v113 + 8);
              if (v115 < *(v111 + 16 * v114 + 8))
              {
                v116 = v110;
                while (1)
                {
                  *(v11 + v116 + 4) = v114;
                  if (!v116)
                  {
                    break;
                  }

                  v114 = *(v11 + v116 - 4);
                  v116 -= 4;
                  if (v115 >= *(v111 + 16 * v114 + 8))
                  {
                    v117 = (v11 + v116 + 4);
                    goto LABEL_122;
                  }
                }

                v117 = v11;
LABEL_122:
                *v117 = v113;
              }

              v109 = v112 + 1;
              v110 += 4;
            }

            while (v112 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v156 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v157 = **a3;
          do
          {
            v159 = *v9;
            v158 = v9[1];
            v9 = v156;
            v160 = *(v157 + 16 * v158 + 8);
            if (v160 < *(v157 + 16 * v159 + 8))
            {
              do
              {
                *v156 = v159;
                v159 = *(v156 - 2);
                --v156;
              }

              while (v160 < *(v157 + 16 * v159 + 8));
              *v156 = v158;
            }

            v156 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v118 = (v12 - 2) >> 1;
        v119 = *a3;
        v120 = v118;
        do
        {
          v121 = v120;
          if (v118 >= v120)
          {
            v122 = (2 * v120) | 1;
            v123 = &v11[v122];
            v124 = 2 * v120 + 2;
            v125 = *v119;
            if (v124 < v12 && *(v125 + 16 * *v123 + 8) < *(v125 + 16 * v123[1] + 8))
            {
              ++v123;
              v122 = 2 * v121 + 2;
            }

            v126 = &v11[v121];
            v127 = *v123;
            v128 = *v126;
            v129 = *(v125 + 16 * v128 + 8);
            if (*(v125 + 16 * v127 + 8) >= v129)
            {
              do
              {
                v130 = v123;
                *v126 = v127;
                if (v118 < v122)
                {
                  break;
                }

                v131 = 2 * v122;
                v122 = (2 * v122) | 1;
                v123 = &v11[v122];
                v132 = v131 + 2;
                if (v132 < v12 && *(v125 + 16 * *v123 + 8) < *(v125 + 16 * v123[1] + 8))
                {
                  ++v123;
                  v122 = v132;
                }

                v127 = *v123;
                v126 = v130;
              }

              while (*(v125 + 16 * v127 + 8) >= v129);
              *v130 = v128;
            }
          }

          v120 = v121 - 1;
        }

        while (v121);
        v133 = *a3;
        do
        {
          v134 = 0;
          v135 = *v11;
          v136 = *a3;
          v137 = v11;
          do
          {
            v138 = v137;
            v139 = &v137[v134];
            v137 = v139 + 1;
            v140 = 2 * v134;
            result = (2 * v134) | 1;
            v134 = result;
            v141 = v140 + 2;
            if (v141 < v12)
            {
              v143 = v139[2];
              v142 = v139 + 2;
              result = *v136 + 16 * v143;
              if (*(*v136 + 16 * *(v142 - 1) + 8) < *(result + 8))
              {
                v137 = v142;
                v134 = v141;
              }
            }

            *v138 = *v137;
          }

          while (v134 <= (v12 - 2) / 2);
          if (v137 == --a2)
          {
            *v137 = v135;
          }

          else
          {
            *v137 = *a2;
            *a2 = v135;
            v144 = (v137 - v11 + 4) >> 2;
            v145 = v144 < 2;
            v146 = v144 - 2;
            if (!v145)
            {
              v147 = v146 >> 1;
              v148 = &v11[v147];
              v149 = *v148;
              v150 = *v137;
              v151 = *v133;
              v152 = *(*v133 + 16 * v150 + 8);
              if (*(*v133 + 16 * v149 + 8) < v152)
              {
                do
                {
                  v153 = v148;
                  *v137 = v149;
                  if (!v147)
                  {
                    break;
                  }

                  v147 = (v147 - 1) >> 1;
                  v148 = &v11[v147];
                  v149 = *v148;
                  v137 = v153;
                }

                while (*(v151 + 16 * v149 + 8) < v152);
                *v153 = v150;
              }
            }
          }

          v145 = v12-- <= 2;
        }

        while (!v145);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 16 * v16 + 8);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 16 * v18 + 8);
      v21 = *(v15 + 16 * v19 + 8);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v13;
          v27 = *v11;
          if (*(v15 + 16 * v26 + 8) < *(v15 + 16 * v27 + 8))
          {
            *v11 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        v30 = *v10;
        if (*(v15 + 16 * v30 + 8) < v21)
        {
          *v13 = v30;
LABEL_27:
          *v10 = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v11[1];
      v34 = *(v15 + 16 * v32 + 8);
      v35 = *(v15 + 16 * v33 + 8);
      v36 = *(a2 - 2);
      v37 = *(v15 + 16 * v36 + 8);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v11[1];
          if (*(v15 + 16 * v38 + 8) < *(v15 + 16 * v39 + 8))
          {
            v11[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v11[1] = v36;
          goto LABEL_39;
        }

        v11[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 16 * v41 + 8) < v35)
        {
          *v31 = v41;
LABEL_39:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v11[2];
      v46 = *(v15 + 16 * v44 + 8);
      v47 = *(v15 + 16 * v45 + 8);
      v48 = *(a2 - 3);
      v49 = *(v15 + 16 * v48 + 8);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v11[2];
          if (*(v15 + 16 * v50 + 8) < *(v15 + 16 * v51 + 8))
          {
            v11[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v11[2] = v48;
          goto LABEL_48;
        }

        v11[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 16 * v52 + 8) < v47)
        {
          *v42 = v52;
LABEL_48:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 16 * v53 + 8);
      v56 = *(v15 + 16 * v54 + 8);
      v57 = *v42;
      v58 = *(v15 + 16 * v57 + 8);
      if (v55 >= v56)
      {
        if (v58 >= v55)
        {
          goto LABEL_56;
        }

        *v14 = v57;
        *v42 = v53;
        v42 = v14;
        LODWORD(v53) = v54;
        if (v58 >= v56)
        {
          LODWORD(v53) = v57;
          goto LABEL_56;
        }
      }

      else if (v58 >= v55)
      {
        *v31 = v53;
        *v14 = v54;
        v31 = v14;
        LODWORD(v53) = v57;
        if (v58 >= v56)
        {
          LODWORD(v53) = v54;
LABEL_56:
          v59 = *v11;
          *v11 = v53;
          *v14 = v59;
          goto LABEL_57;
        }
      }

      *v31 = v57;
      *v42 = v54;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 16 * v22 + 8);
    v25 = *(v15 + 16 * v23 + 8);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v28 = *v11;
        v29 = *v14;
        if (*(v15 + 16 * v28 + 8) < *(v15 + 16 * v29 + 8))
        {
          *v14 = v28;
          *v11 = v29;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    v40 = *v10;
    if (*(v15 + 16 * v40 + 8) < v25)
    {
      *v11 = v40;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v60 = *v11;
    v61 = v15 + 16 * *v11;
    if (a5)
    {
      v62 = *(v61 + 8);
LABEL_60:
      v63 = v11;
      do
      {
        v64 = v63;
        v66 = v63[1];
        ++v63;
        v65 = v66;
      }

      while (*(v15 + 16 * v66 + 8) < v62);
      v67 = a2;
      if (v64 == v11)
      {
        v67 = a2;
        do
        {
          if (v63 >= v67)
          {
            break;
          }

          v69 = *--v67;
        }

        while (*(v15 + 16 * v69 + 8) >= v62);
      }

      else
      {
        do
        {
          v68 = *--v67;
        }

        while (*(v15 + 16 * v68 + 8) >= v62);
      }

      if (v63 < v67)
      {
        v70 = *v67;
        v71 = v65;
        v72 = v63;
        v73 = v67;
        do
        {
          *v72 = v70;
          *v73 = v71;
          do
          {
            v64 = v72;
            v74 = v72[1];
            ++v72;
            v71 = v74;
          }

          while (*(v15 + 16 * v74 + 8) < v62);
          do
          {
            v75 = *--v73;
            v70 = v75;
          }

          while (*(v15 + 16 * v75 + 8) >= v62);
        }

        while (v72 < v73);
      }

      if (v64 != v11)
      {
        *v11 = *v64;
      }

      *v64 = v60;
      if (v63 < v67)
      {
        goto LABEL_79;
      }

      v76 = sub_26235DAC8(v11, v64, *a3);
      v11 = v64 + 1;
      result = sub_26235DAC8(v64 + 1, a2, *a3);
      if (result)
      {
        a2 = v64;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_79:
        result = sub_26235CD84(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v64 + 1;
      }
    }

    else
    {
      v62 = *(v61 + 8);
      if (*(v15 + 16 * *(v11 - 1) + 8) < v62)
      {
        goto LABEL_60;
      }

      if (v62 >= *(v15 + 16 * *v10 + 8))
      {
        v78 = v11 + 1;
        do
        {
          v11 = v78;
          if (v78 >= a2)
          {
            break;
          }

          ++v78;
        }

        while (v62 >= *(v15 + 16 * *v11 + 8));
      }

      else
      {
        do
        {
          v77 = v11[1];
          ++v11;
        }

        while (v62 >= *(v15 + 16 * v77 + 8));
      }

      v79 = a2;
      if (v11 < a2)
      {
        v79 = a2;
        do
        {
          v80 = *--v79;
        }

        while (v62 < *(v15 + 16 * v80 + 8));
      }

      if (v11 < v79)
      {
        v81 = *v11;
        v82 = *v79;
        do
        {
          *v11 = v82;
          *v79 = v81;
          do
          {
            v83 = v11[1];
            ++v11;
            v81 = v83;
          }

          while (v62 >= *(v15 + 16 * v83 + 8));
          do
          {
            v84 = *--v79;
            v82 = v84;
          }

          while (v62 < *(v15 + 16 * v84 + 8));
        }

        while (v11 < v79);
      }

      v85 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v85;
      }

      a5 = 0;
      *v85 = v60;
    }
  }

  v89 = *v11;
  v90 = v11[1];
  v91 = **a3;
  v92 = *(v91 + 16 * v90 + 8);
  v93 = *(v91 + 16 * v89 + 8);
  v94 = *v10;
  v95 = *(v91 + 16 * v94 + 8);
  if (v92 >= v93)
  {
    if (v95 < v92)
    {
      v11[1] = v94;
      *v10 = v90;
      v155 = *v11;
      v154 = v11[1];
      if (*(v91 + 16 * v154 + 8) < *(v91 + 16 * v155 + 8))
      {
        *v11 = v154;
        v11[1] = v155;
      }
    }
  }

  else
  {
    if (v95 >= v92)
    {
      *v11 = v90;
      v11[1] = v89;
      v161 = *v10;
      if (*(v91 + 16 * v161 + 8) >= v93)
      {
        return result;
      }

      v11[1] = v161;
    }

    else
    {
      *v11 = v94;
    }

    *v10 = v89;
  }

  return result;
}

int *sub_26235D8EC(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 16 * *a2 + 8);
  v9 = *(a6 + 16 * *result + 8);
  v10 = *a3;
  v11 = *(a6 + 16 * *a3 + 8);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v12 = v10;
      goto LABEL_13;
    }

    *a2 = v10;
    *a3 = v6;
    v13 = *a2;
    v14 = *result;
    if (*(a6 + 16 * v13 + 8) >= *(a6 + 16 * v14 + 8))
    {
      v12 = v6;
      v10 = v6;
      goto LABEL_13;
    }

    *result = v13;
    *a2 = v14;
    v10 = *a3;
    goto LABEL_11;
  }

  v12 = v7;
  if (v11 >= v8)
  {
    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 16 * *a3 + 8) < v9)
    {
      *a2 = v10;
      goto LABEL_9;
    }

LABEL_11:
    v12 = v10;
    goto LABEL_13;
  }

  *result = v10;
LABEL_9:
  *a3 = v7;
  v10 = v7;
LABEL_13:
  v15 = *a4;
  if (*(a6 + 16 * v15 + 8) < *(a6 + 16 * v12 + 8))
  {
    *a3 = v15;
    *a4 = v10;
    v16 = *a3;
    v17 = *a2;
    if (*(a6 + 16 * v16 + 8) < *(a6 + 16 * v17 + 8))
    {
      *a2 = v16;
      *a3 = v17;
      v18 = *a2;
      v19 = *result;
      if (*(a6 + 16 * v18 + 8) < *(a6 + 16 * v19 + 8))
      {
        *result = v18;
        *a2 = v19;
      }
    }
  }

  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 16 * v20 + 8) < *(a6 + 16 * v21 + 8))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 16 * v22 + 8) < *(a6 + 16 * v23 + 8))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 16 * v24 + 8) < *(a6 + 16 * v25 + 8))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 16 * v26 + 8) < *(a6 + 16 * v27 + 8))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL sub_26235DAC8(int *a1, int *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 16 * v7 + 8);
      v10 = *(*a3 + 16 * v6 + 8);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 16 * v11 + 8);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v37 = *a1;
          v36 = a1[1];
          if (*(v8 + 16 * v36 + 8) < *(v8 + 16 * v37 + 8))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v47 = *(a2 - 1);
        if (*(v8 + 16 * v47 + 8) >= v10)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26235D8EC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *a3;
    v29 = *(*a3 + 16 * v24 + 8);
    v30 = *(*a3 + 16 * *a1 + 8);
    v31 = v26;
    v32 = *(*a3 + 16 * v26 + 8);
    if (v29 >= v30)
    {
      if (v32 < v29)
      {
        v33 = v24;
        *v23 = v26;
        *v25 = v24;
        v34 = a1;
        v35 = a1 + 1;
        v31 = v24;
        if (v32 >= v30)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = v27;
      if (v32 < v29)
      {
        v34 = a1;
        v35 = a1 + 2;
        v24 = *a1;
LABEL_44:
        *v34 = v26;
        *v35 = v27;
        v31 = v33;
LABEL_46:
        v48 = *(a2 - 1);
        if (*(v28 + 16 * v48 + 8) < *(v28 + 16 * v31 + 8))
        {
          *v25 = v48;
          *(a2 - 1) = v24;
          v49 = *v25;
          v50 = *v23;
          v51 = *(v28 + 16 * v49 + 8);
          if (v51 < *(v28 + 16 * v50 + 8))
          {
            a1[1] = v49;
            a1[2] = v50;
            v52 = *a1;
            if (v51 < *(v28 + 16 * v52 + 8))
            {
              *a1 = v49;
              a1[1] = v52;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v27;
      v34 = a1 + 1;
      v35 = a1 + 2;
      v24 = v27;
      if (v32 < v30)
      {
        goto LABEL_44;
      }
    }

    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 16 * v4 + 8) < *(*a3 + 16 * v5 + 8))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = *(*a3 + 16 * v15 + 8);
  v19 = *(*a3 + 16 * v16 + 8);
  v20 = *(*a3 + 16 * v13 + 8);
  if (v18 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v18)
    {
      *a1 = v15;
      a1[1] = v16;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v13;
    *v22 = v16;
    goto LABEL_26;
  }

  if (v20 < v18)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v14;
    v43 = *(v17 + 16 * v41 + 8);
    if (v43 < *(v17 + 16 * v42 + 8))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v43 >= *(v17 + 16 * v42 + 8))
        {
          v46 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v46 = a1;
LABEL_34:
      *v46 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v14 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

void sub_26235DE34(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;

  JUMPOUT(0x266727420);
}

void *sub_26235DEBC(void *a1)
{
  *a1 = &unk_2874EEEF8;
  v2 = a1[15];
  if (v2)
  {
    free(v2);
    a1[15] = 0;
  }

  a1[14] = 0;
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  a1[12] = 0;
  return a1;
}

void *sub_26235DF24(void *a1)
{
  *a1 = &unk_2874EEEC0;
  v2 = a1[4];
  if (v2)
  {
    free(v2);
    a1[4] = 0;
  }

  a1[3] = 0;
  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  a1[1] = 0;
  return a1;
}

char **sub_26235DF8C(char **a1, char **a2, char **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        sub_26223200C(a3, *v4, v4[1], (v4[1] - *v4) >> 3);
      }

      v4 += 3;
      a3 += 3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *sub_26235DFFC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_262234B80(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_26220AA28(v8);
  return v4;
}

void sub_26235E254(void *a1, void *a2, uint64_t *a3)
{
  __p[16] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v87 = a2;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v91, v99, 16);
  if (v8)
  {
    v9 = *v92;
    v10 = vdup_n_s32(0x3DCCCCCDu);
    v11 = vdup_n_s32(0xBDCCCCCD);
    v83 = *v92;
    do
    {
      v12 = 0;
      v84 = v8;
      do
      {
        if (*v92 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v91 + 1) + 8 * v12);
        objc_msgSend_quad(v13, v6, v7);
        v90 = v14;
        objc_msgSend_quad(v13, v15, v16);
        v89 = v17;
        objc_msgSend_quad(v13, v18, v19);
        v88 = v20;
        objc_msgSend_quad(v13, v21, v22);
        v23 = vsubq_f32(v90, v89).u64[0];
        v24.f32[0] = -*(&v23 + 1);
        v24.i32[1] = v23;
        v25 = vmul_f32(v24, v24);
        v25.i32[0] = vadd_f32(v25, vdup_lane_s32(v25, 1)).u32[0];
        v26 = vrsqrte_f32(v25.u32[0]);
        v27 = vmul_f32(v26, vrsqrts_f32(v25.u32[0], vmul_f32(v26, v26)));
        v28 = vmul_n_f32(v24, vmul_f32(v27, vrsqrts_f32(v25.u32[0], vmul_f32(v27, v27))).f32[0]);
        v30 = vmul_f32(vadd_f32(v88, v29), 0x3F0000003F000000);
        v31 = *a3;
        v32 = a3[1];
        v33 = sub_26233D994(*a3, v32, vmla_f32(v30, v10, v28));
        v34 = sub_26233D994(v31, v32, vmla_f32(v30, v11, v28));
        if (!v33 && v34)
        {
          if (v13)
          {
            v35 = *(v13 + 272);
            v37 = *(v13 + 304);
            v36 = *(v13 + 320);
            *(v13 + 272) = *(v13 + 288);
            *(v13 + 288) = v35;
            *(v13 + 304) = v36;
            *(v13 + 320) = v37;
            v38 = *(v13 + 125);
            *(v13 + 125) = *(v13 + 127);
            *(v13 + 127) = v38;
            v39 = *(v13 + 228);
            *(v13 + 228) = *(v13 + 236);
            v6 = *(v13 + 8);
            v7 = *(v13 + 16);
            v40 = v7 - v6;
            v41 = (v7 - v6) >> 4;
            *(v13 + 236) = v39;
            if (v41 >= 2)
            {
              memset(__p, 0, 24);
              sub_2621DDA38(__p, v6, v7, (v7 - v6) >> 4);
              v42 = (v40 >> 4) - 2;
              v43 = __p[0];
              v44 = ((v40 << 28) - 0x100000000) >> 28;
              *(*(v13 + 8) + v44) = *(__p[0] + v42);
              *(*(v13 + 8) + 16 * v42) = *&v43[v44];
              if ((v40 >> 4) >= 3)
              {
                v45 = 0;
                v46 = (v41 << 32) - 0x300000000;
                do
                {
                  *(*(v13 + 8) + 16 * v45++) = *&v43[v46 >> 28];
                  v46 -= 0x100000000;
                }

                while (v42 != v45);
              }

              if (*(v13 + 40) - *(v13 + 32) >= 3uLL)
              {
                v95 = 0uLL;
                *&v96 = 0;
                sub_2621C8E70(&v95, *(v13 + 56), *(v13 + 64), (*(v13 + 64) - *(v13 + 56)) >> 2);
                v47 = *(v13 + 32);
                if ((*(v13 + 40) - *(v13 + 32)) >= 0)
                {
                  operator new();
                }

                sub_2621CBEB0();
              }

              operator delete(v43);
            }
          }

          v48 = objc_msgSend_identifier(v13, v6, v7);
          v51 = objc_msgSend_copy(v48, v49, v50);

          v52 = objc_opt_new();
          sub_2622C533C(v13, v52);

          if (v13)
          {
            *(v13 + 105) = 0;
          }

          if (!objc_msgSend_type(v13, v53, v54))
          {
            v57 = objc_msgSend_identifier(v13, v55, v56);
            v58 = v51;
            v59 = v57;
            if (v87)
            {
              v60 = v58;
              v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
              v64 = sub_2622B261C(v60, v87[5]);
              objc_msgSend_addObjectsFromArray_(v63, v65, v64);

              v66 = sub_2622B261C(v60, v87[4]);
              objc_msgSend_addObjectsFromArray_(v63, v67, v66);

              v68 = sub_2622B261C(v60, v87[6]);
              objc_msgSend_addObjectsFromArray_(v63, v69, v68);

              v70 = sub_2622B261C(v60, v87[7]);
              objc_msgSend_addObjectsFromArray_(v63, v71, v70);

              v72 = sub_2622B261C(v60, v87[12]);
              objc_msgSend_addObjectsFromArray_(v63, v73, v72);

              v74 = sub_2622B261C(v60, v87[13]);
              objc_msgSend_addObjectsFromArray_(v63, v75, v74);

              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v76 = v63;
              v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v95, __p, 16);
              if (v78)
              {
                v79 = *v96;
                do
                {
                  for (i = 0; i != v78; ++i)
                  {
                    if (*v96 != v79)
                    {
                      objc_enumerationMutation(v76);
                    }

                    sub_2622C534C(*(*(&v95 + 1) + 8 * i), v59);
                  }

                  v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v81, &v95, __p, 16);
                }

                while (v78);
              }

              v9 = v83;
            }
          }

          v8 = v84;
        }

        ++v12;
      }

      while (v12 != v8);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v91, v99, 16);
    }

    while (v8);
  }

  v82 = *MEMORY[0x277D85DE8];
}

id sub_26235E988(float32x2_t *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v311 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  v251 = a4;
  v254 = a6;
  v255 = v10;
  v252 = v11;
  if (!a1)
  {
    v253 = 0;
    goto LABEL_136;
  }

  v253 = objc_msgSend_copy(v10, v12, v13);
  v16 = objc_msgSend_walls(v10, v14, v15);
  v19 = objc_msgSend_count(v16, v17, v18);
  v22 = objc_msgSend_curvedWalls(v10, v20, v21);
  v25 = objc_msgSend_count(v22, v23, v24);

  v28 = v25 + v19;
  v256 = objc_msgSend_count(v11, v26, v27);
  if (!(v25 + v19 + v256))
  {
    goto LABEL_136;
  }

  memset(v298, 0, sizeof(v298));
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v297 = 0u;
  v31 = objc_msgSend_walls(v255, v29, v30);
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v294, v310, 16);
  if (v35)
  {
    v36 = *v295;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v295 != v36)
        {
          objc_enumerationMutation(v31);
        }

        v38 = *(*(&v294 + 1) + 8 * i);
        objc_msgSend_quad(v38, v33, v34);
        *&v302 = v39;
        sub_2621CBA84(v298, &v302);
        objc_msgSend_quad(v38, v40, v41);
        *&v302 = v42;
        sub_2621CBA84(v298, &v302);
      }

      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v294, v310, 16);
    }

    while (v35);
  }

  v293 = 0u;
  v291 = 0u;
  v292 = 0u;
  v290 = 0u;
  v45 = objc_msgSend_curvedWalls(v255, v43, v44);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v290, v309, 16);
  if (v49)
  {
    v50 = *v291;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v291 != v50)
        {
          objc_enumerationMutation(v45);
        }

        v52 = *(*(&v290 + 1) + 8 * j);
        objc_msgSend_quad(v52, v47, v48);
        *&v302 = v53;
        sub_2621CBA84(v298, &v302);
        objc_msgSend_quad(v52, v54, v55);
        *&v302 = v56;
        sub_2621CBA84(v298, &v302);
      }

      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v290, v309, 16);
    }

    while (v49);
  }

  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  v59 = objc_msgSend_curvedWalls(v255, v57, v58);
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v286, v308, 16);
  if (v63)
  {
    v64 = *v287;
    do
    {
      for (k = 0; k != v63; ++k)
      {
        if (*v287 != v64)
        {
          objc_enumerationMutation(v59);
        }

        v66 = *(*(&v286 + 1) + 8 * k);
        objc_msgSend_startOrientation(v66, v61, v62);
        v68 = v67;
        objc_msgSend_endOrientation(v66, v69, v70);
        v72 = (v71 * 3.1416) / 180.0;
        for (m = ((v68 * 3.1416) / 180.0) + 0.05236; m < v72; m = m + 0.05236)
        {
          v74 = cosf(m);
          objc_msgSend_radius(v66, v75, v76);
          v78 = v77;
          v79 = sinf(m);
          objc_msgSend_radius(v66, v80, v81);
          v83 = v82;
          objc_msgSend_circleCenter(v66, v84, v85);
          v86.f32[0] = v74 * v78;
          v86.f32[1] = v79 * v83;
          *&v302 = vadd_f32(v86, v87);
          sub_2621CBA84(v298, &v302);
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v286, v308, 16);
    }

    while (v63);
  }

  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v88 = v11;
  v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v282, v307, 16);
  if (v92)
  {
    v93 = *v283;
    do
    {
      for (n = 0; n != v92; ++n)
      {
        if (*v283 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v95 = *(*(&v282 + 1) + 8 * n);
        v96 = objc_msgSend_boxesDict(v95, v90, v91);
        v98 = objc_msgSend_objectForKey_(v96, v97, @"rawdetection");
        v99 = v98 == 0;

        if (!v99)
        {
          memset(v306, 0, sizeof(v306));
          v305 = 0u;
          v304 = 0u;
          v303 = 0u;
          v302 = 0u;
          v100 = objc_msgSend_boxesDict(v95, v90, v91);
          v102 = objc_msgSend_objectForKeyedSubscript_(v100, v101, @"rawdetection");
          sub_262211250(&v302, v102);

          __p[0] = v302;
          sub_2621CBA84(v298, __p);
          __p[0] = v303;
          sub_2621CBA84(v298, __p);
          __p[0] = v304;
          sub_2621CBA84(v298, __p);
          __p[0] = v305;
          sub_2621CBA84(v298, __p);
        }
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v282, v307, 16);
    }

    while (v92);
  }

  if (v28 <= 3 && (a5 & 1) == 0)
  {
    v105 = a1[5].i8[0];
    if (v251 && (a1[5].i8[0] & 1) == 0)
    {
      v106 = v251[14];
      v109 = objc_msgSend_count(v106, v107, v108) == 0;

      if (!v109)
      {
        v110 = *(v251[10] + 48);
        if ((a1[5].i8[0] & 1) == 0)
        {
          a1[5].i8[0] = 1;
        }

        a1[4] = v110;
        goto LABEL_46;
      }

      v105 = a1[5].i8[0];
    }

    if (v105)
    {
LABEL_46:
      sub_2621CBA84(v298, &a1[4]);
    }
  }

  LOBYTE(v302) = 0;
  LOBYTE(v306[0]) = 0;
  if (!v254)
  {
    goto LABEL_64;
  }

  v111 = objc_msgSend_floors(v254, v103, v104);
  v114 = objc_msgSend_count(v111, v112, v113) == 0;

  if (v114)
  {
    goto LABEL_64;
  }

  v117 = objc_msgSend_floors(v254, v115, v116);
  v119 = objc_msgSend_objectAtIndexedSubscript_(v117, v118, 0);
  v122 = objc_msgSend_identifier(v119, v120, v121);
  v125 = objc_msgSend_copy(v122, v123, v124);
  v126 = a1[6];
  a1[6] = v125;

  v129 = objc_msgSend_floors(v254, v127, v128);
  v131 = objc_msgSend_objectAtIndexedSubscript_(v129, v130, 0);
  objc_msgSend_quad(v131, v132, v133);
  DWORD2(v302) = v134;
  DWORD2(v303) = v135;
  DWORD2(v304) = v136;
  *&v302 = v137;
  *&v303 = v138;
  DWORD2(v305) = v139;
  *&v304 = v140;
  *&v305 = v141;
  if ((v306[0] & 1) == 0)
  {
    LOBYTE(v306[0]) = 1;
  }

  if ((v306[0] & 1) == 0)
  {
    sub_2622386B8();
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v270 = 0;
  sub_2621DDA38(__p, &v302, v306, 4uLL);
  v142 = __p[0];
  if ((__p[1] - __p[0]) == 64)
  {
    v143 = vsubq_f32(*(__p[0] + 1), *__p[0]);
    v144 = vmulq_f32(v143, v143).u64[0];
    v144.f32[0] = sqrtf(vaddv_f32(v144));
    if (v144.f32[0] >= 0.000001)
    {
      v145 = vdiv_f32(*v143.f32, vdup_lane_s32(v144, 0));
      if ((a1[2].i8[0] & 1) == 0)
      {
        a1[2].i8[0] = 1;
      }

      a1[1] = v145;
    }

    else if (a1[2].i8[0] == 1)
    {
      a1[2].i8[0] = 0;
    }

LABEL_63:
    operator delete(v142);
    goto LABEL_64;
  }

  if (a1[2].i8[0] == 1)
  {
    a1[2].i8[0] = 0;
  }

  if (v142)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (v28)
  {
    v146 = v28;
  }

  else
  {
    v146 = 2 * v256;
  }

  sub_262298008(v281, a1 + 1, v298, v146);
  v148 = v281[0];
  if ((v281[1] - v281[0]) != 32)
  {
    goto LABEL_132;
  }

  for (ii = 0; ii != 4; ++ii)
  {
    if (v255)
    {
      v150 = v255[4];
    }

    else
    {
      v150 = 0;
    }

    *&v147 = v148[ii];
    DWORD2(v147) = v150;
    *(&v277 + ii) = v147;
  }

  v151 = objc_alloc_init(RS3DSurface);
  v152 = v151;
  *__p = v277;
  v270 = v278;
  v271 = v279;
  *v272 = v280;
  v249 = v151;
  if (v151)
  {
    objc_copyStruct(&v151[1], __p, 64, 1, 0);
    *(v152 + 104) = 5;
    sub_2622C533C(v152, *&a1[6]);
    *(v152 + 105) = 1;
    *(v152 + 108) = 1065353216;
  }

  else
  {
    sub_2622C533C(0, *&a1[6]);
  }

  if (a5)
  {
    memset(v299, 0, sizeof(v299));
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v155 = objc_msgSend_curvedWalls(v255, v153, v154);
    v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v156, &v273, v301, 16);
    if (v159)
    {
      v160 = *v274;
      do
      {
        for (jj = 0; jj != v159; ++jj)
        {
          if (*v274 != v160)
          {
            objc_enumerationMutation(v155);
          }

          v162 = *(*(&v273 + 1) + 8 * jj);
          v163 = objc_msgSend_identifier(v162, v157, v158);
          v166 = objc_msgSend_UUIDString(v163, v164, v165);
          v167 = v166;
          v170 = objc_msgSend_UTF8String(v166, v168, v169);
          sub_2621D0F64(&v268, v170);
          objc_msgSend_quad(v162, v171, v172);
          v257 = v173;
          objc_msgSend_quad(v162, v174, v175);
          sub_2621CC174(__p, &v268, 1, v257, v176);
          if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v268.__r_.__value_.__l.__data_);
          }

          sub_2621CC20C(v299, __p);
          if (v272[0])
          {
            v272[1] = v272[0];
            operator delete(v272[0]);
          }

          if (SBYTE7(v270) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v159 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v157, &v273, v301, 16);
      }

      while (v159);
    }

    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v179 = objc_msgSend_walls(v255, v177, v178);
    v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v180, &v264, v300, 16);
    if (v183)
    {
      v184 = *v265;
      do
      {
        for (kk = 0; kk != v183; ++kk)
        {
          if (*v265 != v184)
          {
            objc_enumerationMutation(v179);
          }

          v186 = *(*(&v264 + 1) + 8 * kk);
          v187 = objc_msgSend_identifier(v186, v181, v182);
          v190 = objc_msgSend_UUIDString(v187, v188, v189);
          v191 = v190;
          v194 = objc_msgSend_UTF8String(v190, v192, v193);
          sub_2621D0F64(&v263, v194);
          objc_msgSend_quad(v186, v195, v196);
          v258 = v197;
          objc_msgSend_quad(v186, v198, v199);
          sub_2621CC174(__p, &v263, 0, v258, v200);
          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          sub_2621CC20C(v299, __p);
          if (v272[0])
          {
            v272[1] = v272[0];
            operator delete(v272[0]);
          }

          if (SBYTE7(v270) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v181, &v264, v300, 16);
      }

      while (v183);
    }

    memset(v260, 0, sizeof(v260));
    sub_262291970(&v261, v299, 1, v260);
    __p[0] = v260;
    sub_2621CC514(__p);
    v202 = v261;
    v201 = v262;
    v203 = v262 - v261;
    v204 = 0xCCCCCCCCCCCCCCCDLL * ((v262 - v261) >> 3);
    if (v204 >= 4)
    {
      if ((v306[0] & 1) == 0)
      {
        v302 = v277;
        v303 = v278;
        v304 = v279;
        v305 = v280;
        LOBYTE(v306[0]) = 1;
      }

      sub_2621CD160(__p, 4uLL);
      v205 = 0;
      v206 = v261;
      v207 = __p[0];
      v208 = v204;
      v209 = v204;
      while (1)
      {
        v210 = *(&v302 + v205);
        if (v205)
        {
          v211 = (v209 + 1) % v204;
          v209 = v204;
          if ((v211 + 3 - v205) % v204 != v208)
          {
            v212 = 3.4028e38;
            v209 = v204;
            do
            {
              v213 = vsub_f32(*&v210, *(v206 + 40 * v211));
              v214 = sqrtf(vaddv_f32(vmul_f32(v213, v213)));
              if (v214 < v212)
              {
                v212 = v214;
                v209 = v211;
              }

              if (v211 + 1 == v204)
              {
                v211 = 0;
              }

              else
              {
                ++v211;
              }
            }

            while ((v211 + 3 - v205) % v204 != v208);
          }

          v207[v205] = v209;
        }

        else
        {
          v209 = v204;
          if (v201 != v202)
          {
            v215 = 0;
            v216 = 3.4028e38;
            v217 = v206;
            v209 = v204;
            do
            {
              v218 = *v217;
              v217 += 5;
              v219 = vsub_f32(*&v210, v218);
              v220 = sqrtf(vaddv_f32(vmul_f32(v219, v219)));
              if (v220 < v216)
              {
                v216 = v220;
                v209 = v215;
              }

              ++v215;
            }

            while (v204 != v215);
          }

          *v207 = v209;
          v208 = v209;
        }

        if (++v205 == 4)
        {
          if ((v203 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_2621CBEB0();
        }
      }
    }

    LOBYTE(v259) = 0;
    sub_26232C090(__p, 4);
    sub_2621CD1D8(&v259, 4uLL);
    sub_2621CBF10(1uLL);
  }

  v221 = objc_msgSend_array(MEMORY[0x277CBEB18], v153, v154);
  objc_msgSend_addObject_(v221, v222, v249);
  sub_2622AE960(v253, v221);
  v225 = objc_msgSend_walls(v253, v223, v224);
  v228 = objc_msgSend_count(v225, v226, v227);
  v231 = objc_msgSend_walls(v255, v229, v230);
  if (v228 < objc_msgSend_count(v231, v232, v233))
  {

LABEL_130:
    sub_2622B1D54(v253, v236, v237);
    goto LABEL_131;
  }

  v238 = objc_msgSend_curvedWalls(v253, v234, v235);
  v241 = objc_msgSend_count(v238, v239, v240);
  v244 = objc_msgSend_curvedWalls(v255, v242, v243);
  LODWORD(v241) = v241 < objc_msgSend_count(v244, v245, v246);

  if (v241)
  {
    goto LABEL_130;
  }

LABEL_131:

  v148 = v281[0];
LABEL_132:
  if (v148)
  {
    operator delete(v148);
  }

  if (v298[0])
  {
    operator delete(v298[0]);
  }

LABEL_136:

  v247 = *MEMORY[0x277D85DE8];

  return v253;
}

void sub_262360974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v69);
  a54 = &a69;
  sub_2621CC5A0(&a54);
  a69 = &STACK[0x478];
  sub_2621CC628(&a69);

  if (STACK[0x348])
  {
    operator delete(STACK[0x348]);
  }

  if (STACK[0x460])
  {
    operator delete(STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void sub_262360F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2;
  while (1)
  {
    sub_2623616E4(a1, v4);
    a1 += 40;
    v4 += 40;
    if (v4 == a3)
    {
      break;
    }

    if (a1 == v6)
    {
      v6 = v4;
    }
  }

  if (a1 != v6)
  {
    v7 = v6;
    do
    {
      while (1)
      {
        sub_2623616E4(a1, v6);
        a1 += 40;
        v6 += 40;
        if (v6 == a3)
        {
          break;
        }

        if (a1 == v7)
        {
          v7 = v6;
        }
      }

      v6 = v7;
    }

    while (a1 != v7);
  }
}

char *sub_262360FF0(char *__src, char *a2, char *a3)
{
  v3 = a2 - __src;
  if (a2 != __src)
  {
    v4 = a3 - a2;
    if (a3 != a2)
    {
      v5 = __src;
      if (__src + 1 == a2)
      {
        v6 = *__src;
        __src = memmove(__src, a2, a3 - a2);
        v5[v4] = v6;
      }

      else if (a2 + 1 == a3)
      {
        v7 = *(a3 - 1);
        if (a3 - 1 != __src)
        {
          __src = memmove(__src + 1, __src, a3 - 1 - __src);
        }

        *v5 = v7;
      }

      else if (v3 == v4)
      {
        v8 = __src + 1;
        v9 = a2 + 1;
        do
        {
          v10 = *(v8 - 1);
          *(v8 - 1) = *(v9 - 1);
          *(v9 - 1) = v10;
          if (v8 == a2)
          {
            break;
          }

          ++v8;
        }

        while (v9++ != a3);
      }

      else
      {
        v12 = a2 - __src;
        do
        {
          v13 = v12;
          v12 = v4;
          v4 = v13 % v4;
        }

        while (v4);
        v14 = &__src[v12];
        do
        {
          v16 = *--v14;
          v15 = v16;
          v17 = &v14[v3];
          v18 = v14;
          do
          {
            v19 = v17;
            *v18 = *v17;
            v20 = a3 - v17;
            if (v3 >= v20)
            {
              v17 = &a2[-v20];
            }

            else
            {
              v17 = &v19[v3];
            }

            v18 = v19;
          }

          while (v17 != v14);
          *v19 = v15;
        }

        while (v14 != __src);
      }
    }
  }

  return __src;
}

double sub_262361124(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a2;
  *&v14 = a6;
  *(&v14 + 1) = a7;
  for (i = 0; v15 != a5; a4 = v15)
  {
    v10 = v16;
    v16 = sub_2623611FC(v16, a3, a4 + 4);
    sub_262361424((v16 == v10), &v16, &v15, &v14, &i);
    if (v16 == a3)
    {
      break;
    }

    v11 = v15;
    v15 = sub_2623611FC(v15, a5, v16 + 4);
    sub_262361424((v15 == v11), &v16, &v15, &v14, &i);
  }

  *a1 = a3;
  *(a1 + 8) = a5;
  result = *&v14;
  *(a1 + 16) = v14;
  return result;
}

void *sub_2623611FC(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return a2;
  }

  v4 = a1;
  if ((sub_26225E3EC(a1 + 4, a3) & 0x80) != 0)
  {
    v7 = 1;
LABEL_6:
    if (v7)
    {
      v8 = 0;
      v9 = v4;
      while (v9 != a2)
      {
        v10 = v9[1];
        v11 = v9;
        if (v10)
        {
          do
          {
            v9 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = v11[2];
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (!v12);
        }

        if (++v8 == v7)
        {
          v13 = v7;
          v8 = v7;
          goto LABEL_28;
        }
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
      v8 = 0;
      v9 = v4;
    }

LABEL_28:
    while (v9 != a2)
    {
      if ((sub_26225E3EC(v9 + 4, a3) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v7 *= 2;
      v4 = v9;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = 0;
      v13 = -v7;
      if (-v7 > 1)
      {
        v14 = -v7;
      }

      else
      {
        v14 = 1;
      }

      while (v9 != a2)
      {
        v15 = *v9;
        v16 = v9;
        if (*v9)
        {
          do
          {
            v9 = v15;
            v15 = v15[1];
          }

          while (v15);
        }

        else
        {
          do
          {
            v9 = v16[2];
            v12 = *v9 == v16;
            v16 = v9;
          }

          while (v12);
        }

        if (++v8 == v14)
        {
          v8 = v14;
          goto LABEL_28;
        }
      }
    }

    v9 = a2;
LABEL_33:
    v17 = v8 - v13 + v7;
    if (v17)
    {
      if (v17 == 1)
      {
        return v9;
      }

      else
      {
        do
        {
          v18 = v17 >> 1;
          v19 = v4;
          if (v17 >= 2)
          {
            v20 = v17 >> 1;
            v21 = v4;
            do
            {
              v22 = v21[1];
              if (v22)
              {
                do
                {
                  v19 = v22;
                  v22 = *v22;
                }

                while (v22);
              }

              else
              {
                do
                {
                  v19 = v21[2];
                  v12 = *v19 == v21;
                  v21 = v19;
                }

                while (!v12);
              }

              v21 = v19;
            }

            while (v20-- > 1);
          }

          if ((sub_26225E3EC(v19 + 4, a3) & 0x80) != 0)
          {
            v24 = v19[1];
            if (v24)
            {
              do
              {
                v4 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v4 = v19[2];
                v12 = *v4 == v19;
                v19 = v4;
              }

              while (!v12);
            }

            v18 = v17 + ~v18;
          }

          v17 = v18;
        }

        while (v18);
      }
    }
  }

  return v4;
}

void *sub_262361424(void *result, uint64_t a2, uint64_t a3, void **a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_262361530(*a4, a4[1], (*a2 + 32));
      a4[1] = result;
      v9 = result[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = result[2];
          v11 = *v10 == result;
          result = v10;
        }

        while (!v11);
      }

      a4[1] = v10;
      v12 = *a2;
      v13 = *(*a2 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      *a2 = v14;
      v15 = *a3;
      v16 = *(*a3 + 8);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v11 = *v17 == v15;
          v15 = v17;
        }

        while (!v11);
      }

      v18 = 0;
      *a3 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  *a5 = v18;
  return result;
}

void *sub_262361530(void *a1, void *a2, void *a3)
{
  v6 = a1 + 1;
  if (a1 + 1 != a2 && (sub_26225E3EC(a3, a2 + 4) & 0x80) == 0)
  {
    if ((sub_26225E3EC(a2 + 4, a3) & 0x80) == 0)
    {
      v18 = a2;
      v7 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }

      return v7;
    }

    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v17 = a2;
      do
      {
        v13 = v17[2];
        v15 = *v13 == v17;
        v17 = v13;
      }

      while (!v15);
    }

    if (v13 == v6 || (sub_26225E3EC(a3, v13 + 4) & 0x80) != 0)
    {
      if (v11)
      {
        v18 = v13;
      }

      else
      {
        v18 = a2;
        v13 = a2 + 1;
      }

      goto LABEL_22;
    }

LABEL_19:
    v13 = sub_26225E318(a1, &v18, a3);
    goto LABEL_22;
  }

  v8 = *a2;
  if (*a1 == a2)
  {
    v10 = a2;
  }

  else
  {
    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    if ((sub_26225E3EC(v10 + 4, a3) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    v18 = a2;
    goto LABEL_25;
  }

  v18 = v10;
  v13 = v10 + 1;
LABEL_22:
  v7 = *v13;
  if (!*v13)
  {
LABEL_25:
    sub_262293118();
  }

  return v7;
}

void sub_2623616E4(uint64_t a1, uint64_t a2)
{
  sub_262292E28(v8, a1);
  sub_262339704(v6, a1, a2);
  sub_2621CC7B4(v7);
  sub_262339704(v4, a2, v8);
  sub_2621CC7B4(v5);
  sub_2621CC7B4(v9);
}

void sub_262361768(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v3 = *(a1 + 48);
    *(a1 + 48) = v2;

    if (*(a1 + 40) == 1)
    {
      *(a1 + 40) = 0;
    }

    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 0;
    }
  }
}

uint64_t sub_262361958(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v7 = v4[3];
  }

  if (v5)
  {
    v6 = v5[3];
  }

  if (v7 >= v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    if (v4)
    {
      v10 = v4[3];
    }

    if (v5)
    {
      v9 = v5[3];
    }

    v8 = v10 > v9;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

uint64_t sub_2623619D8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_timestamp(a2, v5, v6);
  v8 = v7;
  objc_msgSend_timestamp(v4, v9, v10);
  if (v8 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v8 > v11;
  }

  return v12;
}

void sub_262361A44(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    v10 = v3 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (v4 - *a1) >> 4;
    v13 = 16 * v8;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    *(v13 + 8) = *(a2 + 2);
    v6 = 16 * v8 + 16;
    v15 = v6;
    v16 = 16 * v8 - 16 * v12;
    if (v7 != v4)
    {
      v17 = v7;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17 = 0;
        *v18 = v19;
        *(v18 + 8) = *(v17 + 2);
        v17 += 2;
        v18 += 16;
      }

      while (v17 != v4);
      do
      {
        v20 = *v7;
        v7 += 2;
      }

      while (v7 != v4);
      v7 = *a1;
      v15 = v6;
    }

    *a1 = v16;
    *(a1 + 8) = v15;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    *(v4 + 8) = *(a2 + 2);
    v6 = v4 + 16;
  }

  *(a1 + 8) = v6;
}

void sub_262361BB8(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v136 = (a2 - 16);
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = (a2 - v8) >> 4;
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3uLL:
                v67 = *(v8 + 6);
                v68 = *(a2 - 2);
                if (v67 <= *(v8 + 2))
                {
                  if (v68 <= v67)
                  {
                    return;
                  }

                  v65 = (v8 + 16);
                  v66 = (a2 - 16);
                  goto LABEL_174;
                }

                if (v68 > v67)
                {
                  goto LABEL_113;
                }

                sub_2623626B8(v8, (v8 + 16));
                if (*(a2 - 2) <= *(v8 + 6))
                {
                  return;
                }

                v69 = (v8 + 16);
LABEL_114:
                v70 = (a2 - 16);
LABEL_115:

                sub_2623626B8(v69, v70);
                return;
              case 4uLL:

                sub_26236271C(v8, (v8 + 16), (v8 + 32), v136);
                return;
              case 5uLL:
                sub_26236271C(v8, (v8 + 16), (v8 + 32), (v8 + 48));
                if (*(a2 - 2) <= *(v8 + 14))
                {
                  return;
                }

                sub_2623626B8((v8 + 48), v136);
                if (*(v8 + 14) <= *(v8 + 10))
                {
                  return;
                }

                sub_2623626B8((v8 + 32), (v8 + 48));
                if (*(v8 + 10) <= *(v8 + 6))
                {
                  return;
                }

                v65 = (v8 + 16);
                v66 = (v8 + 32);
LABEL_174:
                sub_2623626B8(v65, v66);
                if (*(v8 + 6) <= *(v8 + 2))
                {
                  return;
                }

                v70 = (v8 + 16);
                v69 = v8;
                goto LABEL_115;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) <= *(v8 + 2))
              {
                return;
              }

LABEL_113:
              v69 = v8;
              goto LABEL_114;
            }
          }

          if (v9 <= 23)
          {
            v71 = v8 + 16;
            v73 = v8 == a2 || v71 == a2;
            if (a4)
            {
              if (!v73)
              {
                v74 = 0;
                v75 = v8;
                do
                {
                  v76 = *(v75 + 6);
                  v77 = *(v75 + 2);
                  v75 = v71;
                  if (v76 > v77)
                  {
                    v78 = *v71;
                    *v71 = 0;
                    v79 = v74;
                    while (1)
                    {
                      v80 = a1 + v79;
                      v81 = *(a1 + v79);
                      *v80 = 0;
                      v82 = *(a1 + v79 + 16);
                      *(v80 + 16) = v81;

                      *(v80 + 24) = *(v80 + 8);
                      if (!v79)
                      {
                        break;
                      }

                      v79 -= 16;
                      if (v76 <= *(v80 - 8))
                      {
                        v83 = a1 + v79 + 16;
                        goto LABEL_136;
                      }
                    }

                    v83 = a1;
LABEL_136:
                    v84 = *v83;
                    *v83 = v78;

                    *(v83 + 8) = v76;
                  }

                  v71 = v75 + 16;
                  v74 += 16;
                }

                while (v75 + 16 != a2);
              }
            }

            else if (!v73)
            {
              do
              {
                v129 = v71;
                v130 = *(a1 + 24);
                if (v130 > *(a1 + 8))
                {
                  v131 = *v71;
                  *v71 = 0;
                  do
                  {
                    v132 = a1;
                    v133 = *a1;
                    *a1 = 0;
                    v134 = *(a1 + 16);
                    *(a1 + 16) = v133;

                    *(a1 + 24) = *(a1 + 8);
                    a1 -= 16;
                  }

                  while (v130 > *(v132 - 8));
                  v135 = *(a1 + 16);
                  *(a1 + 16) = v131;

                  *(a1 + 24) = v130;
                }

                v71 = v129 + 16;
                a1 = v129;
              }

              while (v129 + 16 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v85 = v10 >> 1;
              v86 = v10 >> 1;
              do
              {
                v87 = v86;
                if (v85 >= v86)
                {
                  v88 = (2 * v86) | 1;
                  v89 = a1 + 16 * v88;
                  if (2 * v87 + 2 < v9)
                  {
                    v90 = *(v89 + 8);
                    v91 = *(v89 + 24);
                    v89 += 16 * (v90 > v91);
                    if (v90 > v91)
                    {
                      v88 = 2 * v87 + 2;
                    }
                  }

                  v92 = a1 + 16 * v87;
                  v93 = *(v92 + 8);
                  if (*(v89 + 8) <= v93)
                  {
                    v94 = *v92;
                    *v92 = 0;
                    do
                    {
                      v95 = v92;
                      v92 = v89;
                      v96 = *v89;
                      *v92 = 0;
                      v97 = *v95;
                      *v95 = v96;

                      *(v95 + 8) = *(v92 + 8);
                      if (v85 < v88)
                      {
                        break;
                      }

                      v98 = (2 * v88) | 1;
                      v89 = a1 + 16 * v98;
                      if (2 * v88 + 2 < v9)
                      {
                        v99 = *(v89 + 8);
                        v100 = *(v89 + 24);
                        v89 += 16 * (v99 > v100);
                        if (v99 > v100)
                        {
                          v98 = 2 * v88 + 2;
                        }
                      }

                      v88 = v98;
                    }

                    while (*(v89 + 8) <= v93);
                    v101 = *v92;
                    *v92 = v94;

                    *(v92 + 8) = v93;
                  }
                }

                v86 = v87 - 1;
              }

              while (v87);
              do
              {
                v102 = 0;
                v103 = *a1;
                *a1 = 0;
                v104 = *(a1 + 8);
                v105 = a1;
                do
                {
                  v106 = v105 + 16 * v102;
                  v107 = v106 + 16;
                  if (2 * v102 + 2 >= v9)
                  {
                    v102 = (2 * v102) | 1;
                  }

                  else
                  {
                    v108 = *(v106 + 24);
                    v109 = *(v106 + 40);
                    v110 = v106 + 32;
                    if (v108 <= v109)
                    {
                      v102 = (2 * v102) | 1;
                    }

                    else
                    {
                      v107 = v110;
                      v102 = 2 * v102 + 2;
                    }
                  }

                  v111 = *v107;
                  *v107 = 0;
                  v112 = *v105;
                  *v105 = v111;

                  *(v105 + 8) = *(v107 + 8);
                  v105 = v107;
                }

                while (v102 <= ((v9 - 2) >> 1));
                v113 = a2 - 16;
                if (v107 == a2 - 16)
                {
                  v128 = *v107;
                  *v107 = v103;

                  *(v107 + 8) = v104;
                }

                else
                {
                  v114 = *(a2 - 2);
                  *(a2 - 2) = 0;
                  v115 = *v107;
                  *v107 = v114;

                  *(v107 + 8) = *(a2 - 2);
                  v116 = *(a2 - 2);
                  *(a2 - 2) = v103;

                  *(a2 - 2) = v104;
                  v117 = (v107 - a1 + 16) >> 4;
                  v118 = v117 < 2;
                  v119 = v117 - 2;
                  if (!v118)
                  {
                    v120 = v119 >> 1;
                    v121 = a1 + 16 * (v119 >> 1);
                    v122 = *(v107 + 8);
                    if (*(v121 + 8) > v122)
                    {
                      v123 = *v107;
                      *v107 = 0;
                      do
                      {
                        v124 = v107;
                        v107 = v121;
                        v125 = *v121;
                        *v107 = 0;
                        v126 = *v124;
                        *v124 = v125;

                        *(v124 + 8) = *(v107 + 8);
                        if (!v120)
                        {
                          break;
                        }

                        v120 = (v120 - 1) >> 1;
                        v121 = a1 + 16 * v120;
                      }

                      while (*(v121 + 8) > v122);
                      v127 = *v107;
                      *v107 = v123;

                      *(v107 + 8) = v122;
                    }
                  }
                }

                a2 = v113;
                v118 = v9-- <= 2;
              }

              while (!v118);
            }

            return;
          }

          v11 = &v8[16 * (v9 >> 1)];
          v12 = *(a2 - 2);
          if (v9 >= 0x81)
          {
            v13 = *(v11 + 8);
            if (v13 <= *(a1 + 8))
            {
              if (v12 <= v13 || (sub_2623626B8(a1 + 16 * (v9 >> 1), v136), *(v11 + 8) <= *(a1 + 8)))
              {
LABEL_26:
                v19 = *(v11 - 8);
                v20 = *(a2 - 6);
                if (v19 <= *(a1 + 24))
                {
                  if (v20 <= v19 || (sub_2623626B8(v11 - 16, (a2 - 32)), *(v11 - 8) <= *(a1 + 24)))
                  {
LABEL_39:
                    v23 = *(v11 + 24);
                    v24 = *(a2 - 10);
                    if (v23 <= *(a1 + 40))
                    {
                      if (v24 <= v23 || (sub_2623626B8(v11 + 16, (a2 - 48)), *(v11 + 24) <= *(a1 + 40)))
                      {
LABEL_48:
                        v27 = *(v11 + 8);
                        v28 = *(v11 + 24);
                        if (v27 <= *(v11 - 8))
                        {
                          if (v28 <= v27)
                          {
                            goto LABEL_57;
                          }

                          sub_2623626B8(v11, v11 + 16);
                          if (*(v11 + 8) <= *(v11 - 8))
                          {
                            goto LABEL_57;
                          }

                          v30 = v11 - 16;
                          v29 = v11;
                        }

                        else if (v28 <= v27)
                        {
                          sub_2623626B8(v11 - 16, v11);
                          if (*(v11 + 24) <= *(v11 + 8))
                          {
LABEL_57:
                            v31 = *a1;
                            *a1 = 0;
                            v32 = *v11;
                            *v11 = 0;
                            v33 = *a1;
                            *a1 = v32;

                            v34 = *v11;
                            *v11 = v31;

                            v35 = *(a1 + 8);
                            *(a1 + 8) = *(v11 + 8);
                            *(v11 + 8) = v35;
                            goto LABEL_58;
                          }

                          v29 = v11 + 16;
                          v30 = v11;
                        }

                        else
                        {
                          v29 = v11 + 16;
                          v30 = v11 - 16;
                        }

                        sub_2623626B8(v30, v29);
                        goto LABEL_57;
                      }

                      v25 = a1 + 32;
                      v26 = v11 + 16;
                    }

                    else
                    {
                      v25 = a1 + 32;
                      if (v24 <= v23)
                      {
                        sub_2623626B8(v25, v11 + 16);
                        if (*(a2 - 10) <= *(v11 + 24))
                        {
                          goto LABEL_48;
                        }

                        v25 = v11 + 16;
                      }

                      v26 = (a2 - 48);
                    }

                    sub_2623626B8(v25, v26);
                    goto LABEL_48;
                  }

                  v21 = a1 + 16;
                  v22 = v11 - 16;
                }

                else
                {
                  v21 = a1 + 16;
                  if (v20 <= v19)
                  {
                    sub_2623626B8(v21, v11 - 16);
                    if (*(a2 - 6) <= *(v11 - 8))
                    {
                      goto LABEL_39;
                    }

                    v21 = v11 - 16;
                  }

                  v22 = (a2 - 32);
                }

                sub_2623626B8(v21, v22);
                goto LABEL_39;
              }

              v14 = a1;
              v15 = a1 + 16 * (v9 >> 1);
            }

            else
            {
              v14 = a1;
              if (v12 <= v13)
              {
                sub_2623626B8(a1, a1 + 16 * (v9 >> 1));
                if (*(a2 - 2) <= *(v11 + 8))
                {
                  goto LABEL_26;
                }

                v14 = a1 + 16 * (v9 >> 1);
              }

              v15 = (a2 - 16);
            }

            sub_2623626B8(v14, v15);
            goto LABEL_26;
          }

          v16 = *(a1 + 8);
          if (v16 > *(v11 + 8))
          {
            v17 = a1 + 16 * (v9 >> 1);
            if (v12 <= v16)
            {
              sub_2623626B8(v17, a1);
              if (*(a2 - 2) <= *(a1 + 8))
              {
                goto LABEL_58;
              }

              v17 = a1;
            }

            v18 = (a2 - 16);
            goto LABEL_34;
          }

          if (v12 > v16)
          {
            sub_2623626B8(a1, v136);
            if (*(a1 + 8) > *(v11 + 8))
            {
              v17 = a1 + 16 * (v9 >> 1);
              v18 = a1;
LABEL_34:
              sub_2623626B8(v17, v18);
            }
          }

LABEL_58:
          --a3;
          if (a4)
          {
            break;
          }

          v36 = *(a1 + 8);
          if (*(a1 - 8) > v36)
          {
            goto LABEL_61;
          }

          v52 = *a1;
          *a1 = 0;
          if (v36 <= *(a2 - 2))
          {
            v55 = (a1 + 16);
            do
            {
              v8 = v55;
              if (v55 >= a2)
              {
                break;
              }

              v56 = *(v55 + 2);
              v55 += 16;
            }

            while (v36 <= v56);
          }

          else
          {
            v53 = a1;
            do
            {
              v8 = (v53 + 16);
              v54 = *(v53 + 24);
              v53 += 16;
            }

            while (v36 <= v54);
          }

          v57 = a2;
          if (v8 < a2)
          {
            v58 = a2;
            do
            {
              v57 = (v58 - 16);
              v59 = *(v58 - 2);
              v58 -= 16;
            }

            while (v36 > v59);
          }

          while (v8 < v57)
          {
            sub_2623626B8(v8, v57);
            do
            {
              v60 = *(v8 + 6);
              v8 += 16;
            }

            while (v36 <= v60);
            do
            {
              v61 = *(v57 - 8);
              v57 -= 16;
            }

            while (v36 > v61);
          }

          if (v8 - 16 != a1)
          {
            v62 = *(v8 - 2);
            *(v8 - 2) = 0;
            v63 = *a1;
            *a1 = v62;

            *(a1 + 8) = *(v8 - 2);
          }

          v64 = *(v8 - 2);
          *(v8 - 2) = v52;

          a4 = 0;
          *(v8 - 2) = v36;
        }

        v36 = *(a1 + 8);
LABEL_61:
        v37 = *a1;
        *a1 = 0;
        v38 = a1;
        do
        {
          v39 = v38;
          v38 += 16;
        }

        while (*(v39 + 6) > v36);
        v40 = a2;
        if (v39 == a1)
        {
          v43 = a2;
          while (v38 < v43)
          {
            v41 = (v43 - 16);
            v44 = *(v43 - 2);
            v43 -= 16;
            if (v44 > v36)
            {
              goto LABEL_71;
            }
          }

          v41 = v43;
        }

        else
        {
          do
          {
            v41 = (v40 - 16);
            v42 = *(v40 - 2);
            v40 -= 16;
          }

          while (v42 <= v36);
        }

LABEL_71:
        if (v38 >= v41)
        {
          v8 = v38;
        }

        else
        {
          v45 = v41;
          v8 = v38;
          do
          {
            sub_2623626B8(v8, v45);
            do
            {
              v46 = *(v8 + 6);
              v8 += 16;
            }

            while (v46 > v36);
            do
            {
              v47 = *(v45 - 8);
              v45 -= 16;
            }

            while (v47 <= v36);
          }

          while (v8 < v45);
        }

        if (v8 - 16 != a1)
        {
          v48 = *(v8 - 2);
          *(v8 - 2) = 0;
          v49 = *a1;
          *a1 = v48;

          *(a1 + 8) = *(v8 - 2);
        }

        v50 = *(v8 - 2);
        *(v8 - 2) = v37;

        *(v8 - 2) = v36;
        if (v38 >= v41)
        {
          break;
        }

LABEL_84:
        sub_262361BB8(a1, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }

      v51 = sub_262362834(a1, v8 - 16);
      if (sub_262362834(v8, a2))
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_84;
      }
    }

    a2 = v8 - 16;
    if (!v51)
    {
      continue;
    }

    break;
  }
}

void sub_262362638(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2623626B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
}

void sub_26236271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  if (v8 <= *(a1 + 8))
  {
    if (v9 > v8)
    {
      sub_2623626B8(a2, a3);
      if (*(a2 + 8) > *(v7 + 8))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_2623626B8(a1, v10);
      goto LABEL_10;
    }

    sub_2623626B8(a1, a2);
    if (*(a3 + 8) > *(a2 + 8))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 8) > *(a3 + 8))
  {
    sub_2623626B8(a3, a4);
    if (*(a3 + 8) > *(a2 + 8))
    {
      sub_2623626B8(a2, a3);
      if (*(a2 + 8) > *(v7 + 8))
      {

        sub_2623626B8(v7, a2);
      }
    }
  }
}

BOOL sub_262362834(_DWORD *a1, char *a2)
{
  v3 = a1;
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[6];
        v9 = *(a2 - 2);
        if (v8 > a1[2])
        {
          if (v9 <= v8)
          {
            sub_2623626B8(a1, (a1 + 4));
            if (*(a2 - 2) <= v3[6])
            {
              return 1;
            }

            a1 = v3 + 4;
          }

          v5 = (a2 - 16);
          goto LABEL_31;
        }

        if (v9 <= v8)
        {
          return 1;
        }

        v6 = (a1 + 4);
        v7 = (a2 - 16);
        break;
      case 4:
        sub_26236271C(a1, (a1 + 4), (a1 + 8), (a2 - 16));
        return 1;
      case 5:
        sub_26236271C(a1, (a1 + 4), (a1 + 8), (a1 + 12));
        if (*(a2 - 2) <= v3[14])
        {
          return 1;
        }

        sub_2623626B8((v3 + 12), (a2 - 16));
        if (v3[14] <= v3[10])
        {
          return 1;
        }

        sub_2623626B8((v3 + 8), (v3 + 12));
        if (v3[10] <= v3[6])
        {
          return 1;
        }

        v6 = (v3 + 4);
        v7 = (v3 + 8);
        break;
      default:
        goto LABEL_16;
    }

    sub_2623626B8(v6, v7);
    if (v3[6] > v3[2])
    {
      v5 = (v3 + 4);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) > a1[2])
    {
      v5 = (a2 - 16);
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_2623626B8(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = (a1 + 8);
  v11 = a1[6];
  v12 = a1[10];
  if (v11 > a1[2])
  {
    if (v12 <= v11)
    {
      sub_2623626B8(a1, (a1 + 4));
      if (v3[10] <= v3[6])
      {
        goto LABEL_36;
      }

      a1 = v3 + 4;
    }

    v13 = (v3 + 8);
    goto LABEL_35;
  }

  if (v12 > v11)
  {
    sub_2623626B8((a1 + 4), (a1 + 8));
    if (v3[6] > v3[2])
    {
      v13 = (v3 + 4);
      a1 = v3;
LABEL_35:
      sub_2623626B8(a1, v13);
    }
  }

LABEL_36:
  v14 = (v3 + 12);
  if (v3 + 12 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 2);
    if (v17 > *(v10 + 2))
    {
      v18 = *v14;
      *v14 = 0;
      v19 = v15;
      while (1)
      {
        v20 = v3 + v19;
        v21 = *(v3 + v19 + 32);
        *(v20 + 4) = 0;
        v22 = *(v3 + v19 + 48);
        *(v20 + 6) = v21;

        *(v20 + 14) = *(v20 + 10);
        if (v19 == -32)
        {
          break;
        }

        v19 -= 16;
        if (v17 <= *(v20 + 6))
        {
          v23 = v3 + v19 + 48;
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      v24 = *v23;
      *v23 = v18;

      *(v23 + 8) = v17;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v10 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void sub_262362D50(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2621C74C4(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_262362DD4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2621C7004(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id sub_262362E58(float *a1, void *a2, void *a3)
{
  v204[16] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v155 = v4;
  v156 = a1;
  if (!a1)
  {
LABEL_28:
    v24 = 0;
    goto LABEL_179;
  }

  if (!v4 || !objc_msgSend_count(v4, v5, v6))
  {
    if (a3)
    {
      v22 = MEMORY[0x277CCA9B8];
      v198 = *MEMORY[0x277CBEE30];
      v199 = @"Insufficient input!";
      v158 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v5, &v199, &v198, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v22, v23, @"com.apple.RoomScanCoreError", -1002);
      *a3 = v24 = 0;

      goto LABEL_179;
    }

    goto LABEL_28;
  }

  v177[0] = 0;
  v177[1] = 0;
  v178 = 0;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v165 = 0u;
  v7 = v155;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v200, v204, 16);
  if (v9)
  {
    v10 = *v201;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v201 != v10)
        {
          objc_enumerationMutation(v7);
        }

        *v190 = sub_262378FF8(*(*(&v200 + 1) + 8 * i));
        sub_2621D9F60(v177, v190);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v200, v204, 16);
    }

    while (v9);
    v165 = *v177;
  }

  v13 = v165;
  if (v165 == *(&v165 + 1))
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v15 - v14;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2);
      v18 = v17 + 1;
      if (v17 + 1 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v14 >> 2) > v18)
      {
        v18 = 0x5555555555555556 * (-v14 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v14 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v19 = 0x1555555555555555;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        sub_262241270(v19);
      }

      v20 = 4 * ((v15 - v14) >> 2);
      *v20 = *v13;
      *(v20 + 8) = -1;
      v15 = v20 + 12;
      v21 = 12 * v17 + 12 * (v16 / -12);
      memcpy((v20 + 12 * (v16 / -12)), v14, v16);
      if (v14)
      {
        operator delete(v14);
      }

      v14 = v21;
      v13 += 2;
    }

    while (v13 != *(&v165 + 1));
  }

  v25 = v156[54];
  v183 = 0;
  v184 = 0;
  __p = 0;
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 2);
  sub_262349634(&__p, v14, v15, v26);
  sub_2623496B0(v190, 1, &__p, v25 * 0.5);
  if (__p)
  {
    v183 = __p;
    operator delete(__p);
  }

  sub_262336EFC(v190);
  v27 = DWORD1(v192);
  v179 = 0;
  v180 = 0;
  v181 = 0;
  sub_262349634(&v179, v190[0], v190[1], 0xAAAAAAAAAAAAAAABLL * ((v190[1] - v190[0]) >> 2));
  if (v27 == 1)
  {
    v174 = 0;
    __dst = 0;
    v176 = 0;
  }

  else
  {
    *v186 = 0u;
    v187 = 0u;
    LODWORD(v188) = 1065353216;
    LODWORD(v173) = 0;
    if (v15 == v14)
    {
      v38 = 0;
      __dst = 0;
      v176 = 0;
      v174 = 0;
    }

    else
    {
      v28 = 0;
      v29 = v179;
      v30 = 8;
      do
      {
        v172 = *&v29[v30];
        v168 = &v172;
        v31 = sub_2621C65A4(v186, v172);
        sub_2621C7CD0((v31 + 3), &v173);
        LODWORD(v173) = ++v28;
        v30 += 12;
      }

      while (v26 > v28);
      v32 = v187;
      __dst = 0;
      v176 = 0;
      v174 = 0;
      if (v187)
      {
        v33 = (v156[56] * ((v177[1] - v177[0]) >> 4));
        do
        {
          v34 = v32[3];
          v35 = v32[4];
          v36 = (v35 - v34) >> 2;
          if (v35 - v34 == 4 || v36 < v33)
          {
            sub_262282F1C(&v174, __dst, v34, v35, v36);
          }

          v32 = *v32;
        }

        while (v32);
        v38 = v187;
      }

      else
      {
        v38 = 0;
      }
    }

    sub_2621C7150(v38);
    v39 = v186[0];
    v186[0] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  if (v179)
  {
    operator delete(v179);
  }

  if (v190[0])
  {
    v190[1] = v190[0];
    operator delete(v190[0]);
  }

  if (v14)
  {
    operator delete(v14);
  }

  v40 = v177[0];
  v41 = v177[1];
  if (v177[0] == v177[1])
  {
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = v43 - v42;
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2) + 1;
      if (v45 > 0x1555555555555555)
      {
        sub_2621CBEB0();
      }

      if (0x5555555555555556 * (-v42 >> 2) > v45)
      {
        v45 = 0x5555555555555556 * (-v42 >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v42 >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v46 = 0x1555555555555555;
      }

      else
      {
        v46 = v45;
      }

      if (v46)
      {
        sub_262241270(v46);
      }

      v47 = 4 * ((v43 - v42) >> 2);
      *v47 = v40[2];
      *(v47 + 4) = 0xFFFFFFFF00000000;
      v43 = v47 + 12;
      v48 = (v47 + 12 * (v44 / -12));
      memcpy(v48, v42, v44);
      if (v42)
      {
        operator delete(v42);
      }

      v42 = v48;
      v40 += 4;
    }

    while (v40 != v41);
  }

  v49 = v156[55];
  v183 = 0;
  v184 = 0;
  __p = 0;
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 2);
  sub_262349634(&__p, v42, v43, v50);
  sub_2623496B0(v190, 1, &__p, v49 * 0.5);
  if (__p)
  {
    v183 = __p;
    operator delete(__p);
  }

  sub_262336EFC(v190);
  v51 = DWORD1(v192);
  v179 = 0;
  v180 = 0;
  v181 = 0;
  sub_262349634(&v179, v190[0], v190[1], 0xAAAAAAAAAAAAAAABLL * ((v190[1] - v190[0]) >> 2));
  if (v51 == 1)
  {
    v168 = 0;
    v169 = 0;
    v170 = 0;
  }

  else
  {
    *v186 = 0u;
    v187 = 0u;
    LODWORD(v188) = 1065353216;
    v172 = 0;
    if (v43 == v42)
    {
      v62 = 0;
      v169 = 0;
      v170 = 0;
      v168 = 0;
    }

    else
    {
      v52 = 0;
      v53 = v179;
      v54 = 8;
      do
      {
        v171 = *&v53[v54];
        v173 = &v171;
        v55 = sub_2621C65A4(v186, v171);
        sub_2621C7CD0((v55 + 3), &v172);
        v172 = ++v52;
        v54 += 12;
      }

      while (v50 > v52);
      v56 = v187;
      v169 = 0;
      v170 = 0;
      v168 = 0;
      if (v187)
      {
        v57 = (v156[56] * ((v177[1] - v177[0]) >> 4));
        do
        {
          v58 = v56[3];
          v59 = v56[4];
          v60 = (v59 - v58) >> 2;
          if (v59 - v58 == 4 || v60 < v57)
          {
            sub_262282F1C(&v168, v169, v58, v59, v60);
          }

          v56 = *v56;
        }

        while (v56);
        v62 = v187;
      }

      else
      {
        v62 = 0;
      }
    }

    sub_2621C7150(v62);
    v63 = v186[0];
    v186[0] = 0;
    if (v63)
    {
      operator delete(v63);
    }
  }

  if (v179)
  {
    operator delete(v179);
  }

  if (v190[0])
  {
    v190[1] = v190[0];
    operator delete(v190[0]);
  }

  if (v42)
  {
    operator delete(v42);
  }

  v159 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v66 = v174;
  v65 = __dst;
  if (v174 != __dst)
  {
    v67 = v174;
    do
    {
      objc_msgSend_addIndex_(v159, v64, *v67++);
    }

    while (v67 != v65);
  }

  v68 = v168;
  v69 = v169;
  if (v168 != v169)
  {
    v70 = v168;
    do
    {
      objc_msgSend_addIndex_(v159, v64, *v70++);
    }

    while (v70 != v69);
  }

  if (v68)
  {
    operator delete(v68);
  }

  if (v66)
  {
    operator delete(v66);
  }

  if (v177[0])
  {
    operator delete(v177[0]);
  }

  v71 = objc_alloc(MEMORY[0x277CBEB18]);
  v154 = objc_msgSend_initWithArray_(v71, v72, v7);
  if (objc_msgSend_count(v159, v73, v74))
  {
    if (a3)
    {
      v77 = MEMORY[0x277CCA9B8];
      v196 = *MEMORY[0x277CBEE30];
      v197 = @"Outlier Room is found!";
      v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v75, &v197, &v196, 1);
      *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v77, v79, @"com.apple.RoomScanCoreError", -1001, v78);
    }

    objc_msgSend_removeObjectsAtIndexes_(v154, v75, v159);
  }

  if (v154 && objc_msgSend_count(v154, v75, v76))
  {
    v153 = v154;
    v81 = objc_msgSend_sortedArrayUsingComparator_(v153, v80, &unk_2874EEF50);
    v192 = 0u;
    v193 = 0u;
    *v190 = 0u;
    v191 = 0u;
    obj = v81;
    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, v190, v204, 16);
    if (v85)
    {
      v86 = 0;
      v87 = 0;
      v161 = *v191;
      do
      {
        v88 = 0;
        v162 = v85;
        do
        {
          if (*v191 != v161)
          {
            objc_enumerationMutation(obj);
          }

          v89 = *(v190[1] + v88);
          *v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v90 = objc_msgSend_walls(v89, v83, v84);
          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v91, v186, &v200, 16);
          v163 = v88;
          if (v94)
          {
            v95 = *v187;
            do
            {
              for (j = 0; j != v94; ++j)
              {
                if (*v187 != v95)
                {
                  objc_enumerationMutation(v90);
                }

                v97 = *(v186[1] + j);
                objc_msgSend_quad(v97, v92, v93);
                v167 = v98;
                objc_msgSend_quad(v97, v99, v100);
                v102 = fminf(v167, v101);
                v103 = v87 - v86;
                v104 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 2) + 1;
                if (v104 > 0x1555555555555555)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * (-v86 >> 2) > v104)
                {
                  v104 = 0x5555555555555556 * (-v86 >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v86 >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v105 = 0x1555555555555555;
                }

                else
                {
                  v105 = v104;
                }

                if (v105)
                {
                  sub_262241270(v105);
                }

                v106 = 4 * ((v87 - v86) >> 2);
                *v106 = v102;
                *(v106 + 4) = 0xFFFFFFFF00000000;
                v87 = v106 + 12;
                v107 = (v106 + 12 * (v103 / -12));
                memcpy(v107, v86, v103);
                if (v86)
                {
                  operator delete(v86);
                }

                v86 = v107;
              }

              v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v92, v186, &v200, 16);
            }

            while (v94);
          }

          v88 = v163 + 1;
        }

        while (v163 + 1 != v162);
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v83, v190, v204, 16);
      }

      while (v85);

      if (v87 == v86)
      {
        v130 = 0;
      }

      else
      {
        v180 = 0;
        v181 = 0;
        v179 = 0;
        sub_262349634(&v179, v86, v87, 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 2));
        sub_2623496B0(&__p, 1, &v179, 1.75);
        if (v179)
        {
          v180 = v179;
          operator delete(v179);
        }

        sub_262336EFC(&__p);
        v166 = v185;
        v177[0] = 0;
        v177[1] = 0;
        v178 = 0;
        sub_262349634(v177, __p, v183, 0xAAAAAAAAAAAAAAABLL * ((v183 - __p) >> 2));
        v110 = objc_msgSend_count(obj, v108, v109);
        LODWORD(v168) = 0;
        sub_2621DE86C(&v174, v110);
        v164 = v110;
        if (v110)
        {
          v112 = 0;
          v113 = 0;
          v114 = v177[0];
          do
          {
            v115 = 0;
            v116 = 0;
            v117 = 0.0;
            while (1)
            {
              v118 = objc_msgSend_objectAtIndexedSubscript_(obj, v111, v112);
              v121 = objc_msgSend_walls(v118, v119, v120);
              v124 = objc_msgSend_count(v121, v122, v123) > v115;

              if (!v124)
              {
                break;
              }

              v125 = v114[3 * v113 + 2];
              v126 = __OFSUB__(v125, 1);
              v127 = v125 - 1;
              if (v127 < 0 == v126)
              {
                v117 = v117 + v127;
                ++v113;
                ++v116;
              }

              ++v115;
            }

            if (v116 > 0)
            {
              v117 = v117 / v116;
            }

            *(v174 + v112++) = llroundf(v117);
          }

          while (v112 != v164);
        }

        v130 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v111, v166);
        if (v166 >= 1)
        {
          do
          {
            v131 = objc_msgSend_array(MEMORY[0x277CBEB18], v128, v129);
            objc_msgSend_addObject_(v130, v132, v131);

            --v166;
          }

          while (v166);
        }

        if (v164)
        {
          for (k = 0; k != v164; ++k)
          {
            v134 = objc_msgSend_objectAtIndexedSubscript_(obj, v128, k);
            v136 = objc_msgSend_objectAtIndexedSubscript_(v130, v135, *(v174 + k));
            objc_msgSend_addObject_(v136, v137, v134);
          }
        }

        if (v174)
        {
          __dst = v174;
          operator delete(v174);
        }

        if (v177[0])
        {
          operator delete(v177[0]);
        }

        if (__p)
        {
          v183 = __p;
          operator delete(__p);
        }
      }

      if (v86)
      {
        operator delete(v86);
      }
    }

    else
    {

      v130 = 0;
    }

    v140 = objc_msgSend_count(v130, v138, v139);
    v142 = v140;
    if (v140)
    {
      LODWORD(v200) = 2139095039;
      sub_2621CD1D8(v204, v140);
      v24 = objc_opt_new();
      if (v142 >= 1)
      {
        v144 = (v142 & 0x7FFFFFFF) + 1;
        do
        {
          v145 = objc_msgSend_objectAtIndexedSubscript_(v130, v143, v144 - 2);
          v146 = sub_262364054(v156, v145, (v144 - 2), v204, a3);
          objc_msgSend_appendFloorPlan_(v24, v147, v146);

          --v144;
        }

        while (v144 > 1);
      }

      if (v204[0])
      {
        v204[1] = v204[0];
        operator delete(v204[0]);
      }
    }

    else
    {
      if (a3)
      {
        v148 = MEMORY[0x277CCA9B8];
        v194 = *MEMORY[0x277CBEE30];
        v195 = @"Insufficient input!";
        v149 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v141, &v195, &v194, 1);
        *a3 = objc_msgSend_errorWithDomain_code_userInfo_(v148, v150, @"com.apple.RoomScanCoreError", -1002, v149);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_179:
  v151 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_262363D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (v50)
  {
    operator delete(v50);
  }

  _Unwind_Resume(a1);
}

void **sub_262364054(uint64_t a1, void *a2, const char *a3, void *a4, void *a5)
{
  v1162 = *MEMORY[0x277D85DE8];
  obj = a2;
  v8 = objc_msgSend_count(obj, v6, v7);
  sub_26220EDA4(&v1088, v8);
  v11 = 0;
  v1087 = a1;
  while (objc_msgSend_count(obj, v9, v10) > v11)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(obj, v12, v11);
    v14 = sub_26236A948(a1, v13);
    *(v1088 + v11) = v14;

    ++v11;
    a1 = v1087;
  }

  obja = obj;
  v1154[1] = 0;
  v1154[0] = 0;
  *&v1155 = 0;
  v15 = v1088;
  v16 = v1089;
  if (v1088 == v1089)
  {
    v18 = 0;
    v17 = 0;
  }

  else
  {
    do
    {
      *&buf = __sincosf_stret(*v15 * 4.0);
      DWORD2(buf) = -1;
      sub_262240B6C(v1154, &buf);
      ++v15;
    }

    while (v15 != v16);
    v17 = v1154[0];
    v18 = v1154[1];
  }

  v19 = *(a1 + 228);
  *&v1151 = 0;
  __p = 0uLL;
  sub_262349634(&__p, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 2));
  v20 = (v19 * 4.0) / 180.0 * 3.14159265;
  sub_2623496B0(&buf, 1, &__p, v20);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  sub_262336EFC(&buf);
  v21 = DWORD1(v1127);
  v1142 = 0uLL;
  v1143 = 0;
  sub_262349634(&v1142, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
  v1138 = 0uLL;
  *&v1139 = 0;
  if (v21 == 1)
  {
    v1032 = objc_alloc_init(MEMORY[0x277CCAA78]);
    goto LABEL_57;
  }

  memset(v1144, 0, 32);
  *&v1144[32] = 1065353216;
  LODWORD(v1121) = 0;
  v1079 = v1142;
  if (*(&v1142 + 1) != v1142)
  {
    v24 = 0;
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1142 + 1) - v1142) >> 2);
    v26 = (v1142 + 8);
    do
    {
      v27 = *v26;
      v26 += 3;
      src.i32[0] = v27;
      *&v1117 = &src;
      v28 = sub_2621C65A4(v1144, v27);
      sub_2621C7CD0((v28 + 3), &v1121);
      LODWORD(v1121) = ++v24;
    }

    while (v25 > v24);
  }

  v29 = objc_msgSend_count(obja, v22, v23);
  v31 = *&v1144[16];
  if (*&v1144[16])
  {
    v32 = (*(a1 + 232) * v29);
    do
    {
      v33 = v31[3];
      v34 = v31[4];
      v35 = (v34 - v33) >> 2;
      if (v34 - v33 == 4 || v35 < v32)
      {
        sub_262282F1C(&v1138, *(&v1138 + 1), v33, v34, v35);
      }

      v31 = *v31;
    }

    while (v31);
    v37 = v1138;
    if (*(&v1138 + 1) != v1138)
    {
      v38 = v1138;
      v39 = objc_msgSend_count(obja, v30, v33);
      sub_262370CD4(&v1117, v39);
      for (i = 0; objc_msgSend_count(obja, v40, v41) > i; ++i)
      {
        v44 = objc_msgSend_objectAtIndexedSubscript_(obja, v43, i);
        v47 = objc_msgSend_floors(v44, v45, v46);

        if (objc_msgSend_count(v47, v48, v49))
        {
          v51 = objc_msgSend_objectAtIndexedSubscript_(v47, v50, 0);
          if (objc_msgSend_polygonSize(v51, v52, v53))
          {
            v56 = v1117;
            v57 = objc_msgSend_polygonSize(v51, v54, v55);
            sub_26220F5A0((v56 + 24 * i), v57);
            v62 = objc_msgSend_polygon(v51, v58, v59);
            for (j = 0; objc_msgSend_polygonSize(v51, v60, v61) > j; ++j)
            {
              v64 = *v62;
              *&v1121 = *v62;
              sub_2621CBA84(v1117 + 24 * i, &v1121);
              ++v62;
            }
          }
        }
      }

      v1032 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v67 = *(&v1138 + 1);
      if (v37 != *(&v1138 + 1))
      {
        v68 = v37;
        do
        {
          v69 = *v68;
          if (*(v1117 + 24 * v69 + 8) != *(v1117 + 24 * v69))
          {
            v70 = 0;
            v71 = 0;
            v72 = *(v1079 + 12 * v69 + 8);
            v73 = 0.0;
            v74 = (v1079 + 8);
            while (objc_msgSend_count(obja, v65, v66) > v71)
            {
              if (v69 != v71 && *(v1117 + v70 + 8) != *(v1117 + v70) && *v74 != v72)
              {
                LODWORD(v75) = 1036831949;
                sub_26233E420(&v1121, *(v1117 + 24 * v69), *(v1117 + 24 * v69 + 8), (v1117 + v70), v75);
                v76 = *(&v1121 + 1) ? v1121 / *(&v1121 + 1) : 0.0;
                if (v76 >= v73)
                {
                  v73 = v76;
                }
              }

              ++v71;
              v74 += 3;
              v70 += 24;
            }

            v37 = v38;
            if (v73 > *(v1087 + 236))
            {
              objc_msgSend_addIndex_(v1032, v65, v69);
            }
          }

          ++v68;
        }

        while (v68 != v67);
      }

      *&v1121 = &v1117;
      sub_2621E1CB0(&v1121);
      goto LABEL_53;
    }
  }

  else
  {
    v37 = 0;
  }

  v1032 = objc_alloc_init(MEMORY[0x277CCAA78]);
LABEL_53:
  sub_2621C7150(*&v1144[16]);
  v77 = *v1144;
  *v1144 = 0;
  if (v77)
  {
    operator delete(v77);
  }

  if (v37)
  {
    *(&v1138 + 1) = v37;
    operator delete(v37);
  }

LABEL_57:
  if (v1142)
  {
    operator delete(v1142);
  }

  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  if (v1154[0])
  {
    operator delete(v1154[0]);
  }

  v78 = sub_26236ADAC(obja, v1032, a5);

  objb = v78;
  if (objc_msgSend_count(objb, v79, v80) < 2)
  {
    goto LABEL_121;
  }

  v83 = objc_msgSend_count(objb, v81, v82);
  v84 = v1087;
  LODWORD(buf) = 0;
  sub_2621CD1D8(v1144, v83);
  for (k = 0; objc_msgSend_count(objb, v85, v86) > k; ++k)
  {
    v89 = objc_msgSend_objectAtIndexedSubscript_(objb, v88, k);
    v90 = sub_26236A948(v84, v89);
    *(*v1144 + 4 * k) = v90;

    v84 = v1087;
  }

  v1154[1] = 0;
  v1154[0] = 0;
  *&v1155 = 0;
  v91 = *v1144;
  v92 = *&v1144[8];
  if (*v1144 == *&v1144[8])
  {
    v94 = 0;
    v93 = 0;
  }

  else
  {
    do
    {
      *&buf = __sincosf_stret(*v91 * 4.0);
      DWORD2(buf) = -1;
      sub_262240B6C(v1154, &buf);
      ++v91;
    }

    while (v91 != v92);
    v93 = v1154[0];
    v94 = v1154[1];
  }

  v95 = *(v84 + 208);
  *&v1151 = 0;
  __p = 0uLL;
  sub_262349634(&__p, v93, v94, 0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 2));
  v96 = v95 * 4.0 / 180.0 * 3.14159265 * 0.5;
  sub_2623496B0(&buf, 1, &__p, v96);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  sub_262336EFC(&buf);
  v97 = SDWORD1(v1127);
  v1142 = 0uLL;
  v1143 = 0;
  sub_262349634(&v1142, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
  if (v97)
  {
    *&v1117 = 0;
    sub_262378F74(&v1138, v97);
    LODWORD(v1121) = 0;
    sub_2621CD1D8(&v1117, v97);
    v98 = v1142;
    if (*(&v1142 + 1) != v1142)
    {
      v99 = 0;
      v100 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1142 + 1) - v1142) >> 2);
      v101 = (v1142 + 8);
      do
      {
        v102 = *v101 - 1;
        if (*v101 >= 1)
        {
          *(v1138 + 8 * v102) = vadd_f32(*(v101 - 2), *(v1138 + 8 * v102));
          *(v1117 + 4 * v102) = *(v1117 + 4 * v102) + 1.0;
        }

        ++v99;
        v101 += 3;
      }

      while (v100 > v99);
    }

    v103 = v1117 + 4;
    _ZF = v1117 == *(&v1117 + 1) || v103 == *(&v1117 + 1);
    v105 = v1117;
    if (!_ZF)
    {
      v106 = *v1117;
      v105 = v1117;
      v107 = (v1117 + 4);
      do
      {
        v108 = *v107++;
        v109 = v108;
        if (v106 < v108)
        {
          v106 = v109;
          v105 = v103;
        }

        v103 = v107;
      }

      while (v107 != *(&v1117 + 1));
    }

    v110 = v105 - v1117;
    v111 = (v1117 + ((v105 - v1117) << 30 >> 30));
    v112 = vld1_dup_f32(v111);
    v113 = vdiv_f32(*(v1138 + ((v105 - v1117) << 30 >> 29)), v112);
    v116 = atan2f(v113.f32[0], v113.f32[1]);
    if (v116 >= 0.0)
    {
      v118 = v116;
    }

    else
    {
      v117 = v116 + 6.28318531;
      v118 = v117;
    }

    v119 = objc_msgSend_count(objb, v114, v115);
    src.i32[0] = 0;
    sub_2621CD1D8(&v1121, v119);
    v122 = 0;
    v123 = v110 >> 2;
    v124 = v118 * 0.25;
    while (objc_msgSend_count(objb, v120, v121) > v122)
    {
      v125 = v98[3 * v122 + 2];
      _VF = __OFSUB__(v125, 1);
      v127 = v125 - 1;
      if (v127 < 0 == _VF && v127 == v123)
      {
        v128 = 0;
        v129 = *(*v1144 + 4 * v122);
        v130 = 3.4028e38;
        do
        {
          v131 = v124 + *&dword_2623A8BA0[v128];
          if (vabds_f32(v129, v131) < fabsf(v130))
          {
            v130 = v129 - v131;
          }

          ++v128;
        }

        while (v128 != 3);
        *(v1121 + 4 * v122) = v130;
      }

      ++v122;
    }

    for (m = 0; objc_msgSend_count(objb, v120, v121) > m; ++m)
    {
      v134 = objc_msgSend_objectAtIndexedSubscript_(objb, v133, m);
      v137 = v134;
      if (v134)
      {
        v140 = objc_msgSend_walls(v134, v135, v136);
        if (v140)
        {
          v141 = objc_msgSend_walls(v137, v138, v139);
          v144 = objc_msgSend_count(v141, v142, v143) == 0;

          if (!v144)
          {
            v1080 = sub_262378FF8(v137);
            v145 = vnegq_f32(v1080);
            v145.i32[2] = 0;
            src = v145;
            objc_copyStruct(v137 + 32, &src, 16, 1, 0);
            v137[5] = 0;
            sub_2622B4144(v137);
            src = 0u;
            objc_copyStruct(v137 + 32, &src, 16, 1, 0);
            v137[5] = *(v1121 + 4 * m);
            sub_2622B4144(v137);
            v146 = v1080;
            v146.n128_u32[2] = 0;
            src = v146;
            objc_copyStruct(v137 + 32, &src, 16, 1, 0);
            v137[5] = 0;
            sub_2622B4144(v137);
            src = 0u;
            objc_copyStruct(v137 + 32, &src, 16, 1, 0);
          }
        }
      }
    }

    if (v1121)
    {
      *(&v1121 + 1) = v1121;
      operator delete(v1121);
    }

    if (v1117)
    {
      *(&v1117 + 1) = v1117;
      operator delete(v1117);
    }

    if (v1138)
    {
      *(&v1138 + 1) = v1138;
      operator delete(v1138);
    }

    if (!v98)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v98 = v1142;
    if (!v1142)
    {
      goto LABEL_115;
    }
  }

  operator delete(v98);
LABEL_115:
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  if (v93)
  {
    operator delete(v93);
  }

  if (*v1144)
  {
    *&v1144[8] = *v1144;
    operator delete(*v1144);
  }

LABEL_121:

  objc = objb;
  v1031 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v149 = objc_msgSend_count(objc, v147, v148);
  if (v149 >= 2)
  {
    v1047 = v149;
    v154 = objc_msgSend_array(MEMORY[0x277CBEB18], v150, v151);
    for (n = 0; objc_msgSend_count(objc, v152, v153) > n; ++n)
    {
      v157 = objc_msgSend_objectAtIndexedSubscript_(objc, v156, n);
      v1156 = 0u;
      v1157 = 0u;
      *v1154 = 0u;
      v1155 = 0u;
      v160 = objc_msgSend_walls(v157, v158, v159);
      v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v161, v1154, &buf, 16);
      if (v163)
      {
        v164 = *v1155;
        do
        {
          for (ii = 0; ii != v163; ++ii)
          {
            if (*v1155 != v164)
            {
              objc_enumerationMutation(v160);
            }

            v166 = *(v1154[1] + ii);
            if (v166)
            {
              *(v166 + 160) = n;
            }
          }

          v163 = objc_msgSend_countByEnumeratingWithState_objects_count_(v160, v162, v1154, &buf, 16);
        }

        while (v163);
      }

      v169 = objc_msgSend_walls(v157, v167, v168);
      objc_msgSend_addObjectsFromArray_(v154, v170, v169);
    }

    sub_262377468(&v1142, v154);
    v173 = 0;
    v1138 = 0uLL;
    *&v1139 = 0;
    __p = 0u;
    v1151 = 0u;
    LODWORD(v1152) = 1065353216;
    v174 = v1142;
    v1081 = v1142 + 48;
    __src = 1;
    v1056 = v1142;
    while (objc_msgSend_count(v154, v171, v172) > v173)
    {
      v178 = objc_msgSend_objectAtIndexedSubscript_(v154, v175, v173);
      if (v178)
      {
        v179 = &v174[48 * v173];
        v180 = v1081;
        for (jj = __src; objc_msgSend_count(v154, v176, v177) > jj; ++jj)
        {
          v185 = objc_msgSend_objectAtIndexedSubscript_(v154, v182, jj);
          if (v185)
          {
            v186 = objc_msgSend_identifier(v178, v183, v184);
            v189 = objc_msgSend_identifier(v185, v187, v188);
            isEqual = objc_msgSend_isEqual_(v186, v190, v189);

            if ((isEqual & 1) == 0 && v178[20] != v185[20])
            {
              sub_26229E1DC(v1144, v179, v180, (v1087 + 8));
              if (*v1144 == -1)
              {
                if (sub_2621DCE38(*v179, v179[1], *v180, v180[1]))
                {
                  *&v1117 = __PAIR64__(jj, v173);
                  sub_26223C48C(&v1138, &v1117);
                }
              }

              else
              {
                *&v1117 = v1144;
                v192 = sub_262377054(&__p, *v1144);
                *&v1117 = __PAIR64__(jj, v173);
                sub_26223C48C((v192 + 3), &v1117);
              }

              if (*(&v1145 + 1))
              {
                *&v1146 = *(&v1145 + 1);
                operator delete(*(&v1145 + 1));
              }

              if (*&v1144[56])
              {
                *&v1144[64] = *&v1144[56];
                operator delete(*&v1144[56]);
              }
            }
          }

          v180 += 6;
        }
      }

      ++v173;
      ++__src;
      v1081 += 48;
      v174 = v1056;
    }

    v193 = *(&v1138 + 1);
    __srca = v1138;
    if (*(&v1138 + 1) != v1138)
    {
      v194 = v1047 & 0x7FFFFFFF;
      sub_262370CD4(v1144, v194);
      v196 = 0;
      do
      {
        v197 = v194;
        v198 = objc_msgSend_objectAtIndexedSubscript_(objc, v195, v196);
        v201 = v198;
        *&v1118 = 0;
        v1117 = 0uLL;
        if (v198)
        {
          v202 = objc_msgSend_floors(v198, v199, v200);
          v205 = v202;
          if (v202 && objc_msgSend_count(v202, v203, v204))
          {
            v207 = objc_msgSend_objectAtIndexedSubscript_(v205, v206, 0);
            if (objc_msgSend_polygonSize(v207, v208, v209))
            {
              v212 = objc_msgSend_polygonSize(v207, v210, v211);
              sub_26220F5A0(&v1117, v212);
              v217 = objc_msgSend_polygon(v207, v213, v214);
              for (kk = 0; objc_msgSend_polygonSize(v207, v215, v216) > kk; ++kk)
              {
                v219 = *v217;
                *&v1121 = *v217;
                sub_2621CBA84(&v1117, &v1121);
                ++v217;
              }
            }
          }
        }

        v220 = *v1144 + 24 * v196;
        v221 = *v220;
        if (*v220)
        {
          *(v220 + 8) = v221;
          operator delete(v221);
          *v220 = 0;
          *(v220 + 8) = 0;
          *(v220 + 16) = 0;
        }

        *v220 = v1117;
        *(v220 + 16) = v1118;

        ++v196;
        v194 = v197;
      }

      while (v196 != v197);
      v222 = 0;
      do
      {
        v223 = objc_msgSend_objectAtIndexedSubscript_(objc, v195, v222);
        v226 = objc_msgSend_walls(v223, v224, v225);
        v1082 = v223;
        v229 = objc_msgSend_count(v226, v227, v228);

        if (v229)
        {
          sub_26220EDA4(&v1117, v197);
          sub_26220EDA4(&v1121, v197);
          v231 = __srca;
          do
          {
            v232 = objc_msgSend_objectAtIndexedSubscript_(v154, v230, *v231);
            if (v232)
            {
              v233 = v232[20];
            }

            else
            {
              v233 = 0;
            }

            v234 = v233 == v222;

            if (v234)
            {
              v236 = objc_msgSend_objectAtIndexedSubscript_(v154, v235, v231[1]);
              if (v236)
              {
                v237 = v236[20];
              }

              else
              {
                LODWORD(v237) = 0;
              }

              if ((sub_262378E34(*v231, v237, &__p, v154) & 1) == 0)
              {
                *(v1117 + 4 * v237) = *(v1117 + 4 * v237) + 1.0;
              }
            }

            v238 = objc_msgSend_objectAtIndexedSubscript_(v154, v235, v231[1]);
            if (v238)
            {
              v239 = v238[20];
            }

            else
            {
              v239 = 0;
            }

            v240 = v239 == v222;

            if (v240)
            {
              v242 = objc_msgSend_objectAtIndexedSubscript_(v154, v230, *v231);
              if (v242)
              {
                v243 = v242[20];
              }

              else
              {
                LODWORD(v243) = 0;
              }

              if ((sub_262378E34(v231[1], v243, &__p, v154) & 1) == 0)
              {
                *(v1117 + 4 * v243) = *(v1117 + 4 * v243) + 1.0;
              }
            }

            v231 += 2;
          }

          while (v231 != v193);
          v244 = v197;
          v245 = v1117;
          v246 = v229;
          v247 = 0.0;
          do
          {
            v248 = *v245++;
            v249 = v248 / v246;
            if (*&v247 < (v248 / v246))
            {
              *&v247 = v249;
            }

            --v244;
          }

          while (v244);
          if (*&v247 > *(v1087 + 240))
          {
            v250 = v1151;
            if (v1151)
            {
              v251 = 0.0;
              do
              {
                if (*(v250 + 4) != 3)
                {
                  v252 = v250[3];
                  v253 = v250[4];
                  while (v252 != v253)
                  {
                    v254 = *v252;
                    v255 = v252[1];
                    if ((v254 & 0x80000000) == 0 && objc_msgSend_count(v154, v230, v241) > v254)
                    {
                      v256 = objc_msgSend_objectAtIndexedSubscript_(v154, v230, v254);
                      v257 = v256 ? v256[20] : 0;
                      v258 = v257 == v222;

                      if (v258)
                      {
                        v251 = v251 + 1.0;
                      }
                    }

                    if ((v255 & 0x80000000) == 0 && objc_msgSend_count(v154, v230, v241) > v255)
                    {
                      v259 = objc_msgSend_objectAtIndexedSubscript_(v154, v230, v255);
                      v260 = v259 ? v259[20] : 0;
                      v261 = v260 == v222;

                      if (v261)
                      {
                        v251 = v251 + 1.0;
                      }
                    }

                    v252 += 2;
                  }
                }

                v250 = *v250;
              }

              while (v250);
            }

            else
            {
              v251 = 0.0;
            }

            if ((v251 / v246) <= *(v1087 + 248) && *(*v1144 + 24 * v222 + 8) != *(*v1144 + 24 * v222))
            {
              v262 = v197;
              v263 = 0;
              v264 = 0.0;
              v265 = v222;
              do
              {
                if (v265 && *(*v1144 + v263 + 8) != *(*v1144 + v263))
                {
                  LODWORD(v247) = 1036831949;
                  sub_26233E420(&src, *(*v1144 + 24 * v222), *(*v1144 + 24 * v222 + 8), (*v1144 + v263), v247);
                  if (src.i64[1])
                  {
                    *&v247 = src.u64[0] / src.u64[1];
                  }

                  else
                  {
                    v247 = 0.0;
                  }

                  if (v264 < *&v247)
                  {
                    v264 = *&v247;
                  }
                }

                v263 += 24;
                --v265;
                --v262;
              }

              while (v262);
              if (v264 > *(v1087 + 244))
              {
                objc_msgSend_addIndex_(v1031, v230, v222);
              }
            }
          }

          if (v1121)
          {
            *(&v1121 + 1) = v1121;
            operator delete(v1121);
          }

          v223 = v1082;
          if (v1117)
          {
            *(&v1117 + 1) = v1117;
            operator delete(v1117);
          }
        }

        ++v222;
      }

      while (v222 != v197);
      *&v1117 = v1144;
      sub_2621E1CB0(&v1117);
      v174 = v1056;
    }

    sub_2621C7150(v1151);
    v266 = __p;
    *&__p = 0;
    if (v266)
    {
      operator delete(v266);
    }

    if (__srca)
    {
      operator delete(__srca);
    }

    if (v174)
    {
      operator delete(v174);
    }
  }

  v267 = sub_26236ADAC(objc, v1031, a5);

  v268 = v1087;
  sub_26236AF10(v1087, v267);
  sub_26236CC8C(v1087, v267);
  __srcb = v267;
  v269 = 0;
  *v270.i32 = *(v1087 + 656) * 0.5;
  v271 = vdup_lane_s32(v270, 0);
  do
  {
    v1057 = v269;
    v272 = expf(v269 * -0.25);
    sub_262377468(&__p, *(v268 + 256));
    sub_262377468(&v1142, *(v268 + 264));
    v275 = 0;
    objd = v272 * -0.4;
    while (objc_msgSend_count(__srcb, v273, v274) > v275)
    {
      v278 = objc_msgSend_objectAtIndexedSubscript_(__srcb, v276, v275);
      buf = 0uLL;
      *&v1126 = 0;
      memset(v1144, 0, 24);
      v280 = *(v1087 + 344);
      v281 = v278;
      if (v280)
      {
        v282 = __p;
        while (1)
        {
          v283 = v280[3];
          v284 = v280[4];
          if (v283 != v284)
          {
            break;
          }

LABEL_297:
          v280 = *v280;
          if (!v280)
          {
            goto LABEL_298;
          }
        }

        v285 = v283 + 1;
        while (2)
        {
          v286 = objc_msgSend_objectAtIndexedSubscript_(*(v1087 + 256), v277, *(v285 - 1));
          if (v286)
          {
            v287 = v286[20];
          }

          else
          {
            v287 = 0;
          }

          v289 = objc_msgSend_objectAtIndexedSubscript_(*(v1087 + 256), v288, *v285);
          if (v289)
          {
            v290 = v289[20];
          }

          else
          {
            v290 = 0;
          }

          if (v287 != v275 && v290 != v275)
          {
            goto LABEL_290;
          }

          if (v287 == v275)
          {
            v291 = v285 - 1;
          }

          else
          {
            v291 = v285;
          }

          if (v287 == v275)
          {
            v292 = v285;
          }

          else
          {
            v292 = v285 - 1;
          }

          v293 = (v282 + 48 * *v291);
          v294 = (v282 + 48 * *v292);
          v295 = *v294;
          v296 = v294[1];
          v298 = *v293;
          v297 = v293[1];
          *&v1138 = v298;
          *(&v1138 + 1) = v297;
          *&v1117 = v295;
          *(&v1117 + 1) = v296;
          v299 = vmul_f32(vadd_f32(v298, v297), 0x3F0000003F000000);
          v300 = *(v280 + 4);
          if (v300 <= 4)
          {
            if (v300 != 3)
            {
              if (v300 == 4)
              {
                v301 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(v296, 0x3F0000003F000000), 0x3F0000003F000000, v295), 0x3F0000003F000000), 0x3F0000003F000000, v299);
                v302 = vsub_f32(v297, v298);
                v303 = vaddv_f32(vmul_f32(vsub_f32(v301, v298), v302));
                v304 = vaddv_f32(vmul_f32(v302, v302));
                if (v304 < 0.000001)
                {
                  v304 = 0.000001;
                }

                v305 = vsub_f32(vmla_n_f32(v298, v302, v303 / v304), v301);
                v306 = vmul_f32(v305, v305);
                v307 = 0;
                if (sqrtf(vaddv_f32(v306)) >= 0.000001)
                {
                  v308 = vadd_f32(v306, vdup_lane_s32(v306, 1)).u32[0];
                  v309 = vrsqrte_f32(v308);
                  v310 = vmul_f32(v309, vrsqrts_f32(v308, vmul_f32(v309, v309)));
                  v307 = vmul_n_f32(v305, vmul_f32(v310, vrsqrts_f32(v308, vmul_f32(v310, v310))).f32[0]);
                }

                v311 = vmla_f32(v301, v307, v271);
                goto LABEL_288;
              }

LABEL_278:
              v311 = v299;
              goto LABEL_288;
            }

LABEL_290:
            v346 = v285 + 1;
            v285 += 2;
            v278 = v281;
            if (v346 == v284)
            {
              goto LABEL_297;
            }

            continue;
          }

          break;
        }

        if (v300 != 5)
        {
          if (v300 != 6)
          {
            goto LABEL_278;
          }

          v312 = vsub_f32(v296, v295);
          v313 = vaddv_f32(vmul_f32(vsub_f32(v298, v295), v312));
          v314 = vaddv_f32(vmul_f32(v312, v312));
          if (v314 < 0.000001)
          {
            v314 = 0.000001;
          }

          v315 = vmla_n_f32(v295, v312, v313 / v314);
          v316 = vsub_f32(v315, v295);
          v317 = vsub_f32(v315, v296);
          v318 = v315;
          if (vaddv_f32(vmul_f32(v316, v317)) > 0.00001)
          {
            v319 = vmul_f32(v316, v316);
            v320 = vmul_f32(v317, v317);
            v321 = vsqrt_f32(vadd_f32(vzip1_s32(v319, v320), vzip2_s32(v319, v320)));
            v318 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v321, 1), v321)), 0), v296, v295);
          }

          v322 = vmla_n_f32(v295, v312, vaddv_f32(vmul_f32(vsub_f32(v297, v295), v312)) / v314);
          v323 = vsub_f32(v322, v295);
          v324 = vsub_f32(v322, v296);
          v325 = v322;
          if (vaddv_f32(vmul_f32(v323, v324)) > 0.00001)
          {
            v326 = vmul_f32(v323, v323);
            v327 = vmul_f32(v324, v324);
            v324 = vzip1_s32(v326, v327);
            v328 = vsqrt_f32(vadd_f32(v324, vzip2_s32(v326, v327)));
            v325 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v328, 1), v328)), 0), v296, v295);
          }

          v329 = vsub_f32(v315, v318);
          v330 = vmul_f32(v329, v329);
          v330.f32[0] = sqrtf(vaddv_f32(v330));
          v324.i32[0] = *(v1087 + 72);
          v331 = vsub_f32(vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v324, v330)), 0), v315, v318), v315);
          v332 = vsub_f32(v322, v325);
          v333 = vmul_f32(v332, v332);
          v333.f32[0] = sqrtf(vaddv_f32(v333));
          v311 = vadd_f32(vadd_f32(vmul_f32(vadd_f32(v315, v322), 0x3F0000003F000000), v331), vsub_f32(vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(v324, v333)), 0), v322, v325), v322));
          goto LABEL_288;
        }

        sub_2621DCD34(v1154, &v1138, &v1117);
        v334 = *(v1087 + 72);
        if (*v1154[0] < v334)
        {
LABEL_282:
          v335 = v298;
        }

        else
        {
          if (*(v1154[0] + 1) < v334)
          {
            v295 = v296;
            goto LABEL_282;
          }

          v335 = v297;
          if (*(v1154[0] + 2) >= v334)
          {
            v295 = v296;
            v335 = v297;
            if (*(v1154[0] + 3) >= v334)
            {
              operator delete(v1154[0]);
              goto LABEL_290;
            }
          }
        }

        v1083 = v335;
        v336 = vmla_f32(vmul_f32(v295, 0x3F0000003F000000), 0x3F0000003F000000, v335);
        v337 = vsub_f32(v297, v298);
        v338 = vaddv_f32(vmul_f32(vsub_f32(v336, v298), v337));
        v339 = vaddv_f32(vmul_f32(v337, v337));
        if (v339 < 0.000001)
        {
          v339 = 0.000001;
        }

        v340 = vsub_f32(vmla_n_f32(v298, v337, v338 / v339), v336);
        v341 = vmul_f32(v340, v340);
        v342 = 0;
        if (sqrtf(vaddv_f32(v341)) >= 0.000001)
        {
          v343 = vadd_f32(v341, vdup_lane_s32(v341, 1)).u32[0];
          v344 = vrsqrte_f32(v343);
          v345 = vmul_f32(v344, vrsqrts_f32(v343, vmul_f32(v344, v344)));
          v342 = vmul_n_f32(v340, vmul_f32(v345, vrsqrts_f32(v343, vmul_f32(v345, v345))).f32[0]);
        }

        v311 = vmla_f32(v336, v342, v271);
        operator delete(v1154[0]);
        v299 = v1083;
LABEL_288:
        LODWORD(v1121) = 0;
        v1154[0] = vsub_f32(vmla_lane_f32(vmul_n_f32(0x800000003F800000, v299.f32[0]), 0x3F80000000000000, v299, 1), v311);
        sub_2621C8F2C(&buf, &v1121);
        sub_2621CBA84(v1144, v1154);
        if (*(v280 + 4) == 4)
        {
          sub_2621C8F2C(&buf, &v1121);
          sub_2621CBA84(v1144, v1154);
        }

        goto LABEL_290;
      }

LABEL_298:
      v347 = *(v1087 + 384);
      if (v347)
      {
        v348 = v1142;
        do
        {
          v349 = v347[3];
          v350 = v347[4];
          if (v349 != v350)
          {
            v351 = v349 + 1;
            do
            {
              v352 = objc_msgSend_objectAtIndexedSubscript_(*(v1087 + 264), v277, *(v351 - 1));
              if (v352)
              {
                v353 = v352[20];
              }

              else
              {
                v353 = 0;
              }

              v355 = objc_msgSend_objectAtIndexedSubscript_(*(v1087 + 264), v354, *v351);
              if (v355)
              {
                v356 = v355[20];
              }

              else
              {
                v356 = 0;
              }

              if (v353 == v275 || v356 == v275)
              {
                if (v353 == v275)
                {
                  v357 = v351 - 1;
                }

                else
                {
                  v357 = v351;
                }

                v358 = (v348 + 48 * *v357);
                v360 = *v358;
                v359 = v358[1];
                v361 = vmul_f32(vadd_f32(*v358, v359), 0x3F0000003F000000);
                v362 = v361;
                if (*(v347 + 4) == 4)
                {
                  if (v353 == v275)
                  {
                    v363 = v351;
                  }

                  else
                  {
                    v363 = v351 - 1;
                  }

                  v364 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(*(v348 + 48 * *v363 + 8), 0x3F0000003F000000), 0x3F0000003F000000, *(v348 + 48 * *v363)), 0x3F0000003F000000), 0x3F0000003F000000, v361);
                  v365 = vsub_f32(v359, v360);
                  v366 = vaddv_f32(vmul_f32(vsub_f32(v364, v360), v365));
                  v367 = vaddv_f32(vmul_f32(v365, v365));
                  if (v367 < 0.000001)
                  {
                    v367 = 0.000001;
                  }

                  v368 = vmla_n_f32(v360, v365, v366 / v367);
                  v369 = vsub_f32(v368, v360);
                  v370 = vsub_f32(v368, v359);
                  if (vaddv_f32(vmul_f32(v369, v370)) > 0.00001)
                  {
                    v371 = vmul_f32(v369, v369);
                    v372 = vmul_f32(v370, v370);
                    v373 = vsqrt_f32(vadd_f32(vzip1_s32(v371, v372), vzip2_s32(v371, v372)));
                    v368 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v373, 1), v373)), 0), v359, v360);
                  }

                  v374 = vsub_f32(v368, v364);
                  v375 = vmul_f32(v374, v374);
                  v376 = 0;
                  if (sqrtf(vaddv_f32(v375)) >= 0.000001)
                  {
                    v377 = vadd_f32(v375, vdup_lane_s32(v375, 1)).u32[0];
                    v378 = vrsqrte_f32(v377);
                    v379 = vmul_f32(v378, vrsqrts_f32(v377, vmul_f32(v378, v378)));
                    v376 = vmul_n_f32(v374, vmul_f32(v379, vrsqrts_f32(v377, vmul_f32(v379, v379))).f32[0]);
                  }

                  v362 = vmla_f32(v364, v376, v271);
                }

                LODWORD(v1138) = 0;
                v1154[0] = vsub_f32(vmla_lane_f32(vmul_n_f32(0x800000003F800000, v361.f32[0]), 0x3F80000000000000, v361, 1), v362);
                sub_2621C8F2C(&buf, &v1138);
                sub_2621CBA84(v1144, v1154);
                if (*(v347 + 4) == 4)
                {
                  sub_2621C8F2C(&buf, &v1138);
                  sub_2621CBA84(v1144, v1154);
                }
              }

              v380 = v351 + 1;
              v351 += 2;
              v278 = v281;
            }

            while (v380 != v350);
          }

          v347 = *v347;
        }

        while (v347);
      }

      v381 = buf;
      if (*(&buf + 1) == buf)
      {
        v389 = 0.0;
        v391 = 0;
        v385 = *v1144;
        if (*v1144)
        {
          goto LABEL_336;
        }
      }

      else
      {
        v382 = 0.0;
        v383 = buf;
        do
        {
          v384 = *v383++;
          v382 = v382 + v384;
        }

        while (v383 != *(&buf + 1));
        v385 = *v1144;
        v386 = 0;
        if (*v1144 != *&v1144[8])
        {
          v387 = *v1144;
          do
          {
            v388 = *v387++;
            v386 = vadd_f32(v386, v388);
          }

          while (v387 != *&v1144[8]);
        }

        v389 = (v382 * objd) / ((*(&buf + 1) - buf) >> 2);
        v390 = vmul_n_f32(v386, objd);
        v386.f32[0] = ((*&v1144[8] - *v1144) >> 3);
        v391 = vdiv_f32(v390, vdup_lane_s32(v386, 0));
        if (*v1144)
        {
LABEL_336:
          operator delete(v385);
        }
      }

      if (v381)
      {
        operator delete(v381);
      }

      if (v278)
      {
        v278[5] = v389;
        *&v279 = v391;
        buf = v279;
        objc_copyStruct(v278 + 32, &buf, 16, 1, 0);
      }

      ++v275;
    }

    v392 = __srcb;
    memset(v1144, 0, 64);
    obje = v392;
    v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(obje, v393, v1144, &buf, 16);
    if (v394)
    {
      v395 = **&v1144[16];
      do
      {
        for (mm = 0; mm != v394; ++mm)
        {
          if (**&v1144[16] != v395)
          {
            objc_enumerationMutation(obje);
          }

          sub_2622B4144(*(*&v1144[8] + 8 * mm));
        }

        v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(obje, v397, v1144, &buf, 16);
      }

      while (v394);
    }

    if (v1142)
    {
      operator delete(v1142);
    }

    v268 = v1087;
    if (__p)
    {
      operator delete(__p);
    }

    v269 = v1057 + 1;
  }

  while (v1057 != 9);

  v398 = v1087;
  sub_26236E9C8(v1087, obje);
  v1036 = objc_msgSend_array(MEMORY[0x277CBEB18], v399, v400);
  v401 = *(v1087 + 624);
  v402 = *(v1087 + 616);
  v403 = 0xCCCCCCCCCCCCCCCDLL * ((v401 - v402) >> 3);
  sub_262371EA8(&src, v403);
  v404 = *(v1087 + 448);
  v405 = *(v1087 + 456);
  if (v404 != v405)
  {
    if (v403 <= 1)
    {
      v403 = 1;
    }

    do
    {
      if (v401 != v402)
      {
        v406 = 0;
        v407 = 0;
        v408 = v403;
        do
        {
          v409 = *(v1087 + 616);
          if (sub_2621C719C((v409 + v406), *v404) || sub_2621C719C((v409 + v406), *(v404 + 4)))
          {
            sub_262371F84(src.i64[0] + v407, v404);
          }

          v407 += 24;
          v406 += 40;
          --v408;
        }

        while (v408);
      }

      v404 += 12;
    }

    while (v404 != v405);
  }

  v1033 = src.i64[1];
  v410 = src.i64[0];
  if (src.i64[0] != src.i64[1])
  {
    do
    {
      *v1154 = 0u;
      v1155 = 0u;
      LODWORD(v1156) = 1065353216;
      v411 = *v410;
      v412 = v410[1];
      if (*v410 == v412)
      {
        v413 = 0;
        v414 = 0;
        v1106 = 0uLL;
        *&v1107 = 0;
      }

      else
      {
        do
        {
          sub_2621C729C(v1154, *v411);
          sub_2621C729C(v1154, v411[1]);
          v411 += 3;
        }

        while (v411 != v412);
        v413 = v1155;
        v1106 = 0uLL;
        *&v1107 = 0;
        v414 = 0;
        if (v1155)
        {
          v415 = v1155;
          do
          {
            ++v414;
            v415 = *v415;
          }

          while (v415);
        }
      }

      v1037 = v410;
      sub_2623720A0(&v1106, v413, v414);
      log = v1036;
      v417 = *(&v1106 + 1);
      v418 = v1106;
      if (*(&v1106 + 1) - v1106 >= 5uLL)
      {
        *&v1151 = 0;
        v419 = 0uLL;
        __p = 0u;
        buf = 0u;
        v1126 = 0u;
        LODWORD(v1127) = 1065353216;
        memset(v1144, 0, 32);
        *&v1144[32] = 1065353216;
        v1143 = 0;
        v1142 = 0u;
        if (v1106 == *(&v1106 + 1))
        {
          goto LABEL_393;
        }

        do
        {
          v420 = *v418;
          v421 = objc_msgSend_objectAtIndexedSubscript_(*(v398 + 256), v416, *v418);
          v422 = sub_26223FCEC(v421).n128_u64[0];
          v424 = v423;
          objc_msgSend_quad(v421, v425, v426);
          v1085 = v427;
          objc_msgSend_quad(v421, v428, v429);
          v430 = v1085;
          *&v1117 = v422;
          *(&v1117 + 2) = v420;
          HIDWORD(v1117) = 0;
          *&v1118 = __PAIR64__(v431, v1085);
          v1086 = v431;
          *&v1139 = 0;
          v1138 = 0uLL;
          sub_2621DC430(&v1138, &v1117, &v1118 + 8, 6uLL);
          *&v1121 = v424;
          *(&v1121 + 2) = v420;
          HIDWORD(v1121) = 1065353216;
          *&v1122 = __PAIR64__(v1086, v430);
          *&v1118 = 0;
          v1117 = 0uLL;
          sub_2621DC430(&v1117, &v1121, &v1122 + 8, 6uLL);
          sub_2622F3228(&__p, &v1138);
          sub_2622F3228(&__p, &v1117);
          v432 = vceq_f32(v422, v424);
          if ((vpmin_u32(v432, v432).u32[0] & 0x80000000) == 0)
          {
            v433 = vsub_f32(vext_s8(v424, v422, 4uLL), vext_s8(v422, v424, 4uLL));
            v434 = vmul_f32(v433, v433);
            v434.i32[0] = vadd_f32(v434, vdup_lane_s32(v434, 1)).u32[0];
            v435 = vrsqrte_f32(v434.u32[0]);
            v436 = vmul_f32(v435, vrsqrts_f32(v434.u32[0], vmul_f32(v435, v435)));
            v437 = vmul_n_f32(v433, vmul_f32(v436, vrsqrts_f32(v434.u32[0], vmul_f32(v436, v436))).f32[0]);
            v438 = vneg_f32(v437);
            v439 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v437.f32[0] < 0.0), 0x1FuLL)), v438, v437);
            *v438.i32 = -*&v439.i32[1];
            *&v1121 = vzip1_s32(v438, v439);
            sub_2621CBA84(&v1142, &v1121);
          }

          if (v1117)
          {
            operator delete(v1117);
          }

          if (v1138)
          {
            operator delete(v1138);
          }

          ++v418;
          v398 = v1087;
        }

        while (v418 != v417);
        v442 = v1142;
        v419 = __p;
        if (*(&v1142 + 1) == v1142)
        {
LABEL_393:
          v456 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v419 + 1) - v419) >> 3));
          if (*(&v419 + 1) == v419)
          {
            v457 = 0;
          }

          else
          {
            v457 = v456;
          }

          sub_262374FE8(v419, *(&v419 + 1), v457, 1);
        }

        else
        {
          v443 = 0;
          *&v1117 = 0;
          v444 = 0;
          if (__p != *(&__p + 1))
          {
            v445 = __p;
            do
            {
              v446 = *v445;
              v445 += 3;
              v441 = *v446;
              v444 = vadd_f32(v444, *v446);
              *&v1117 = v444;
            }

            while (v445 != *(&__p + 1));
          }

          v447 = 0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 3);
          *v441.i32 = v447;
          *&v1117 = vdiv_f32(v444, vdup_lane_s32(v441, 0));
          *&v1121 = 0;
          do
          {
            v448 = *v442++;
            v449.i32[1] = v448.i32[1];
            v443 = vadd_f32(v448, v443);
            *&v1121 = v443;
          }

          while (v442 != *(&v1142 + 1));
          *v449.i32 = ((*(&v1142 + 1) - v1142) >> 3);
          v450 = vdiv_f32(v443, vdup_lane_s32(v449, 0));
          v451 = vmul_f32(v450, v450);
          v451.i32[0] = vadd_f32(v451, vdup_lane_s32(v451, 1)).u32[0];
          v452 = vrsqrte_f32(v451.u32[0]);
          v453 = vmul_f32(v452, vrsqrts_f32(v451.u32[0], vmul_f32(v452, v452)));
          v440.n128_u64[0] = vmul_n_f32(v450, vmul_f32(v453, vrsqrts_f32(v451.u32[0], vmul_f32(v453, v453))).f32[0]);
          *&v1121 = v440.n128_u64[0];
          *&v1138 = &v1117;
          *(&v1138 + 1) = &v1121;
          v454 = 126 - 2 * __clz(v447);
          if (__p == *(&__p + 1))
          {
            v455 = 0;
          }

          else
          {
            v455 = v454;
          }

          sub_26237332C(__p, *(&__p + 1), &v1138, v455, 1, v440);
        }

        if (*(&__p + 1) != __p)
        {
          v459 = *(*__p + 16);
          v458 = *(*__p + 20);
          v460 = **__p;
          v1138 = 0uLL;
          *&v1139 = 0;
          sub_2621C8E70(&v1138, *__p, *(__p + 8), (*(__p + 8) - *__p) >> 2);
          v462 = *(v1138 + 16);
          v461 = *(v1138 + 20);
          sub_2621CBEC8(1uLL);
        }

        if (v1142)
        {
          operator delete(v1142);
        }

        sub_2621C74C4(v1144);
        sub_2621C74C4(&buf);
        *&buf = &__p;
        sub_2621E1D40(&buf);
        v418 = v1106;
      }

      if (v418)
      {
        operator delete(v418);
      }

      sub_2621C74C4(v1154);
      v410 = v1037 + 3;
      v398 = v1087;
    }

    while (v1037 + 3 != v1033);
  }

  *&buf = &src;
  sub_2621E1CB0(&buf);

  v465 = objc_msgSend_array(MEMORY[0x277CBEB18], v463, v464);
  v466 = obje;
  v1084 = v465;
  *v1154 = 0u;
  v1155 = 0u;
  v1156 = 0u;
  v1157 = 0u;
  v1058 = v466;
  v468 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1058, v467, v1154, &buf, 16);
  if (v468)
  {
    v471 = v468;
    __srcc = *v1155;
    do
    {
      for (nn = 0; nn != v471; ++nn)
      {
        if (*v1155 != __srcc)
        {
          objc_enumerationMutation(v1058);
        }

        v473 = *(v1154[1] + nn);
        __p = 0u;
        v1151 = 0u;
        v1152 = 0u;
        v1153 = 0u;
        v474 = objc_msgSend_walls(v473, v469, v470);
        v478 = objc_msgSend_countByEnumeratingWithState_objects_count_(v474, v475, &__p, v1144, 16);
        if (v478)
        {
          v479 = *v1151;
          do
          {
            for (i1 = 0; i1 != v478; ++i1)
            {
              if (*v1151 != v479)
              {
                objc_enumerationMutation(v474);
              }

              v481 = *(*(&__p + 1) + 8 * i1);
              if (!v481 || (v481[106] & 1) == 0 && (v481[107] & 1) == 0)
              {
                v482 = objc_msgSend_copy(*(*(&__p + 1) + 8 * i1), v476, v477);
                objc_msgSend_addObject_(v1084, v483, v482);

                v484 = objc_alloc_init(MEMORY[0x277CBEB18]);
                objc_msgSend_addObject_(v484, v485, v481);
                v486 = *(v1087 + 648);
                v489 = objc_msgSend_identifier(v481, v487, v488);
                objc_msgSend_setObject_forKeyedSubscript_(v486, v490, v484, v489);
              }
            }

            v478 = objc_msgSend_countByEnumeratingWithState_objects_count_(v474, v476, &__p, v1144, 16);
          }

          while (v478);
        }
      }

      v471 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1058, v469, v1154, &buf, 16);
    }

    while (v471);
  }

  *&v1094 = v1087;
  v491 = v1036;
  v492 = v1084;
  __p = 0uLL;
  *&v1151 = 0;
  v1142 = 0uLL;
  v1143 = 0;
  *&v1098 = &__p;
  *(&v1098 + 1) = &v1142;
  v1048 = v492;
  sub_262372EC0(&v1098, v491);
  sub_262372EC0(&v1098, v492);
  v493 = v1142;
  if (*(&__p + 1) == __p)
  {
    goto LABEL_489;
  }

  v494 = v492;
  if (*(&v1142 + 1) != v1142)
  {
    v495 = *(v1094 + 164);
    *&v1139 = 0;
    v1138 = 0uLL;
    sub_262349634(&v1138, __p, *(&__p + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 2));
    sub_2623496B0(&buf, 1, &v1138, v495);
    if (v1138)
    {
      *(&v1138 + 1) = v1138;
      operator delete(v1138);
    }

    sub_262336EFC(&buf);
    v496 = *(v1094 + 160);
    *&v1118 = 0;
    v1117 = 0uLL;
    sub_262349634(&v1117, v1142, *(&v1142 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v1142 + 1) - v1142) >> 2));
    sub_2623496B0(v1144, 1, &v1117, v496);
    if (v1117)
    {
      *(&v1117 + 1) = v1117;
      operator delete(v1117);
    }

    sub_262336EFC(v1144);
    v497 = SDWORD1(v1127);
    v1121 = 0uLL;
    *&v1122 = 0;
    sub_262349634(&v1121, buf, *(&buf + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 2));
    v498 = *&v1144[36];
    src = 0uLL;
    *&v1111 = 0;
    sub_262349634(&src, *v1144, *&v1144[8], 0xAAAAAAAAAAAAAAABLL * ((*&v1144[8] - *v1144) >> 2));
    if (!v497 || !v498)
    {
      goto LABEL_480;
    }

    v1154[0] = 0;
    sub_26237302C(&v1106, v498);
    if (src.i64[1] != src.i64[0])
    {
      v499 = 0xAAAAAAAAAAAAAAABLL * ((src.i64[1] - src.i64[0]) >> 2);
      if (v499 <= 1)
      {
        v499 = 1;
      }

      v500 = v1106 - 8;
      v501 = (src.i64[0] + 8);
      __asm { FMOV            V0.2S, #1.0 }

      do
      {
        v504 = *v501;
        if (v504 >= 1)
        {
          v505.i32[1] = HIDWORD(_D0);
          v505.i32[0] = *(v501 - 2);
          *(v500 + 8 * v504) = vadd_f32(*(v500 + 8 * v504), v505);
        }

        v501 += 3;
        --v499;
      }

      while (v499);
    }

    if (v498 >= 1)
    {
      v506 = v1106;
      v507 = v498;
      do
      {
        *v506 = *v506 / v506[1];
        v506 += 2;
        --v507;
      }

      while (v507);
    }

    v1154[0] = 0;
    sub_26237302C(&v1102, v497);
    if (*(&v1121 + 1) != v1121)
    {
      v508 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1121 + 1) - v1121) >> 2);
      if (v508 <= 1)
      {
        v508 = 1;
      }

      v509 = v1102 - 8;
      v510 = (v1121 + 8);
      __asm { FMOV            V0.2S, #1.0 }

      do
      {
        v512 = *v510;
        if (v512 >= 1)
        {
          v513.i32[1] = HIDWORD(_D0);
          v513.i32[0] = *(v510 - 2);
          *(v509 + 8 * v512) = vadd_f32(*(v509 + 8 * v512), v513);
        }

        v510 += 3;
        --v508;
      }

      while (v508);
    }

    if (v497 <= 0)
    {
      LODWORD(v1090) = 0;
      v516 = v1102;
    }

    else
    {
      v514 = v1102;
      v515 = v497;
      do
      {
        *v514 = *v514 / v514[1];
        v514 += 2;
        --v515;
      }

      while (v515);
      LODWORD(v1090) = 0;
      v516 = v1102;
      if (v497 != 1)
      {
        v517 = *(v1094 + 184);
        v518 = (v1102 + 4);
        v519 = 0.0;
        v520 = 0.0;
        do
        {
          v521 = *v518;
          if (*v518 > (v519 * v517))
          {
            v522 = (v521 * *(v518 - 1)) + (v520 * v519);
            v519 = v519 + v521;
            v520 = v522 / v519;
            *&v1090 = v520;
          }

          v518 += 2;
          --v497;
        }

        while (v497);
LABEL_461:
        if ((a3 + 1) >= (a4[1] - *a4) >> 2)
        {
          v523 = 3.4028e38;
        }

        else
        {
          v523 = *(*a4 + 4 * (a3 + 1));
        }

        if (v498 < 1)
        {
          v525 = -3.4028e38;
        }

        else
        {
          v524 = v1106;
          v525 = -3.4028e38;
          do
          {
            v526 = *v524;
            v524 += 2;
            v527 = v526;
            if (v526 > v525 && v527 <= v523)
            {
              v525 = v527;
            }

            --v498;
          }

          while (v498);
        }

        if (v525 <= (v523 - *(v1094 + 192)))
        {
          v525 = v523 - *(v1094 + 196);
        }

        v1154[0] = &v1094;
        v1154[1] = &v1106;
        *&v1155 = &v1090;
        *(&v1155 + 1) = &src;
        *&v1156 = v525;
        sub_2623730C8(v1154, v491, 0);
        v531 = objc_msgSend_count(v491, v529, v530);
        sub_2623730C8(v1154, v492, v531);
        *(*a4 + 4 * a3) = v1090;
        if (v1102)
        {
          *(&v1102 + 1) = v1102;
          operator delete(v1102);
        }

        if (v1106)
        {
          *(&v1106 + 1) = v1106;
          operator delete(v1106);
        }

LABEL_480:
        if (src.i64[0])
        {
          src.i64[1] = src.i64[0];
          operator delete(src.i64[0]);
        }

        if (v1121)
        {
          operator delete(v1121);
        }

        if (*v1144)
        {
          *&v1144[8] = *v1144;
          operator delete(*v1144);
        }

        if (buf)
        {
          *(&buf + 1) = buf;
          operator delete(buf);
        }

        v493 = v1142;
LABEL_489:
        v494 = v492;
        goto LABEL_490;
      }
    }

    LODWORD(v1090) = *v516;
    goto LABEL_461;
  }

LABEL_490:
  if (v493)
  {
    *(&v1142 + 1) = v493;
    operator delete(v493);
    v494 = v492;
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
    v494 = v492;
  }

  *&v1098 = v1087;
  v532 = v1058;
  v1038 = v491;
  *&v1094 = v1038;
  *&v1102 = &v1098;
  *(&v1102 + 1) = &v1094;
  v1138 = 0u;
  v1139 = 0u;
  v1140 = 0u;
  v1141 = 0u;
  v1052 = v532;
  v536 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1052, v533, &v1138, &buf, 16);
  if (v536)
  {
    v1059 = *v1139;
    do
    {
      v537 = 0;
      __srcd = v536;
      do
      {
        if (*v1139 != v1059)
        {
          objc_enumerationMutation(v1052);
        }

        v538 = *(*(&v1138 + 1) + 8 * v537);
        v1117 = 0u;
        v1118 = 0u;
        v1119 = 0u;
        v1120 = 0u;
        v539 = objc_msgSend_doors(v538, v534, v535);
        v541 = objc_msgSend_countByEnumeratingWithState_objects_count_(v539, v540, &v1117, v1144, 16);
        if (v541)
        {
          v542 = *v1118;
          do
          {
            for (i2 = 0; i2 != v541; ++i2)
            {
              if (*v1118 != v542)
              {
                objc_enumerationMutation(v539);
              }

              sub_2623724D8(&v1102, *(*(&v1117 + 1) + 8 * i2), @"door", v538);
            }

            v541 = objc_msgSend_countByEnumeratingWithState_objects_count_(v539, v544, &v1117, v1144, 16);
          }

          while (v541);
        }

        v1123 = 0u;
        v1124 = 0u;
        v1121 = 0u;
        v1122 = 0u;
        v547 = objc_msgSend_opendoors(v538, v545, v546);
        v549 = objc_msgSend_countByEnumeratingWithState_objects_count_(v547, v548, &v1121, v1154, 16);
        if (v549)
        {
          v550 = *v1122;
          do
          {
            for (i3 = 0; i3 != v549; ++i3)
            {
              if (*v1122 != v550)
              {
                objc_enumerationMutation(v547);
              }

              sub_2623724D8(&v1102, *(*(&v1121 + 1) + 8 * i3), @"opendoor", v538);
            }

            v549 = objc_msgSend_countByEnumeratingWithState_objects_count_(v547, v552, &v1121, v1154, 16);
          }

          while (v549);
        }

        v1112 = 0u;
        v1113 = 0u;
        src = 0u;
        v1111 = 0u;
        v555 = objc_msgSend_openings(v538, v553, v554);
        v557 = objc_msgSend_countByEnumeratingWithState_objects_count_(v555, v556, &src, &__p, 16);
        if (v557)
        {
          v558 = *v1111;
          do
          {
            for (i4 = 0; i4 != v557; ++i4)
            {
              if (*v1111 != v558)
              {
                objc_enumerationMutation(v555);
              }

              sub_2623724D8(&v1102, *(src.i64[1] + 8 * i4), @"opening", v538);
            }

            v557 = objc_msgSend_countByEnumeratingWithState_objects_count_(v555, v560, &src, &__p, 16);
          }

          while (v557);
        }

        v1108 = 0u;
        v1109 = 0u;
        v1106 = 0u;
        v1107 = 0u;
        v563 = objc_msgSend_windows(v538, v561, v562);
        v565 = objc_msgSend_countByEnumeratingWithState_objects_count_(v563, v564, &v1106, &v1142, 16);
        if (v565)
        {
          v566 = *v1107;
          do
          {
            for (i5 = 0; i5 != v565; ++i5)
            {
              if (*v1107 != v566)
              {
                objc_enumerationMutation(v563);
              }

              sub_2623724D8(&v1102, *(*(&v1106 + 1) + 8 * i5), @"window", v538);
            }

            v565 = objc_msgSend_countByEnumeratingWithState_objects_count_(v563, v568, &v1106, &v1142, 16);
          }

          while (v565);
        }

        ++v537;
      }

      while (v537 != __srcd);
      v536 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1052, v534, &v1138, &buf, 16);
    }

    while (v536);
  }

  v1019 = objc_msgSend_array(MEMORY[0x277CBEB18], v569, v570);
  sub_262371014(v1087, v1019, *(v1087 + 264), v1087 + 368);

  v1020 = objc_msgSend_array(MEMORY[0x277CBEB18], v571, v572);
  sub_262371014(v1087, v1020, *(v1087 + 272), v1087 + 408);

  v573 = v1052;
  v574 = v1019;
  v575 = v1020;
  v1121 = 0u;
  v1122 = 0u;
  v1123 = 0u;
  v1124 = 0u;
  v576 = v573;
  loga = v576;
  v578 = objc_msgSend_countByEnumeratingWithState_objects_count_(v576, v577, &v1121, &buf, 16);
  if (v578)
  {
    v1060 = *v1122;
    do
    {
      __srce = v578;
      for (i6 = 0; i6 != __srce; ++i6)
      {
        if (*v1122 != v1060)
        {
          objc_enumerationMutation(v576);
        }

        v582 = *(*(&v1121 + 1) + 8 * i6);
        src = 0u;
        v1111 = 0u;
        v1112 = 0u;
        v1113 = 0u;
        v583 = objc_msgSend_doors(v582, v579, v580);
        v587 = objc_msgSend_countByEnumeratingWithState_objects_count_(v583, v584, &src, v1144, 16);
        if (v587)
        {
          v588 = *v1111;
          do
          {
            for (i7 = 0; i7 != v587; ++i7)
            {
              if (*v1111 != v588)
              {
                objc_enumerationMutation(v583);
              }

              v590 = *(src.i64[1] + 8 * i7);
              if (!v590 || (v590[106] & 1) == 0)
              {
                v591 = objc_msgSend_copy(v590, v585, v586);
                objc_msgSend_addObject_(v574, v592, v591);
              }
            }

            v587 = objc_msgSend_countByEnumeratingWithState_objects_count_(v583, v585, &src, v1144, 16);
          }

          while (v587);
        }

        v1108 = 0u;
        v1109 = 0u;
        v1106 = 0u;
        v1107 = 0u;
        v595 = objc_msgSend_opendoors(v582, v593, v594);
        v599 = objc_msgSend_countByEnumeratingWithState_objects_count_(v595, v596, &v1106, v1154, 16);
        if (v599)
        {
          v600 = *v1107;
          do
          {
            for (i8 = 0; i8 != v599; ++i8)
            {
              if (*v1107 != v600)
              {
                objc_enumerationMutation(v595);
              }

              v602 = *(*(&v1106 + 1) + 8 * i8);
              if (!v602 || (v602[106] & 1) == 0)
              {
                v603 = objc_msgSend_copy(v602, v597, v598);
                objc_msgSend_addObject_(v574, v604, v603);
              }
            }

            v599 = objc_msgSend_countByEnumeratingWithState_objects_count_(v595, v597, &v1106, v1154, 16);
          }

          while (v599);
        }

        v1104 = 0u;
        v1105 = 0u;
        v1102 = 0u;
        v1103 = 0u;
        v607 = objc_msgSend_openings(v582, v605, v606);
        v611 = objc_msgSend_countByEnumeratingWithState_objects_count_(v607, v608, &v1102, &__p, 16);
        if (v611)
        {
          v612 = *v1103;
          do
          {
            for (i9 = 0; i9 != v611; ++i9)
            {
              if (*v1103 != v612)
              {
                objc_enumerationMutation(v607);
              }

              v614 = *(*(&v1102 + 1) + 8 * i9);
              if (!v614 || (v614[106] & 1) == 0)
              {
                v615 = objc_msgSend_copy(v614, v609, v610);
                objc_msgSend_addObject_(v574, v616, v615);
              }
            }

            v611 = objc_msgSend_countByEnumeratingWithState_objects_count_(v607, v609, &v1102, &__p, 16);
          }

          while (v611);
        }

        v1100 = 0u;
        v1101 = 0u;
        v1098 = 0u;
        v1099 = 0u;
        v619 = objc_msgSend_windows(v582, v617, v618);
        v623 = objc_msgSend_countByEnumeratingWithState_objects_count_(v619, v620, &v1098, &v1142, 16);
        if (v623)
        {
          v624 = *v1099;
          do
          {
            for (i10 = 0; i10 != v623; ++i10)
            {
              if (*v1099 != v624)
              {
                objc_enumerationMutation(v619);
              }

              v626 = *(*(&v1098 + 1) + 8 * i10);
              if (!v626 || (v626[106] & 1) == 0)
              {
                v627 = objc_msgSend_copy(v626, v621, v622);
                objc_msgSend_addObject_(v575, v628, v627);
              }
            }

            v623 = objc_msgSend_countByEnumeratingWithState_objects_count_(v619, v621, &v1098, &v1142, 16);
          }

          while (v623);
        }

        v576 = loga;
      }

      v578 = objc_msgSend_countByEnumeratingWithState_objects_count_(loga, v579, &v1121, &buf, 16);
    }

    while (v578);
  }

  v1097 = 0u;
  v1095 = 0u;
  v1096 = 0u;
  v1094 = 0u;
  v629 = v574;
  v633 = objc_msgSend_countByEnumeratingWithState_objects_count_(v629, v630, &v1094, &v1138, 16);
  if (v633)
  {
    v634 = *v1095;
    do
    {
      for (i11 = 0; i11 != v633; ++i11)
      {
        if (*v1095 != v634)
        {
          objc_enumerationMutation(v629);
        }

        v636 = *(*(&v1094 + 1) + 8 * i11);
        v637 = *(v1087 + 640);
        v638 = objc_msgSend_parentIdentifier(v636, v631, v632);
        v640 = objc_msgSend_objectForKeyedSubscript_(v637, v639, v638);

        if (v640)
        {
          v643 = objc_msgSend_copy(v640, v641, v642);
          sub_2622C534C(v636, v643);
        }
      }

      v633 = objc_msgSend_countByEnumeratingWithState_objects_count_(v629, v631, &v1094, &v1138, 16);
    }

    while (v633);
  }

  v1092 = 0u;
  v1093 = 0u;
  v1090 = 0u;
  v1091 = 0u;
  v644 = v575;
  v648 = objc_msgSend_countByEnumeratingWithState_objects_count_(v644, v645, &v1090, &v1117, 16);
  if (v648)
  {
    v649 = *v1091;
    do
    {
      for (i12 = 0; i12 != v648; ++i12)
      {
        if (*v1091 != v649)
        {
          objc_enumerationMutation(v644);
        }

        v651 = *(*(&v1090 + 1) + 8 * i12);
        v652 = *(v1087 + 640);
        v653 = objc_msgSend_parentIdentifier(v651, v646, v647);
        v655 = objc_msgSend_objectForKeyedSubscript_(v652, v654, v653);

        if (v655)
        {
          v658 = objc_msgSend_copy(v655, v656, v657);
          sub_2622C534C(v651, v658);
        }
      }

      v648 = objc_msgSend_countByEnumeratingWithState_objects_count_(v644, v646, &v1090, &v1117, 16);
    }

    while (v648);
  }

  v1015 = loga;
  v659 = v1038;
  v1014 = v1048;
  v1012 = v629;
  v1013 = v644;
  v1121 = 0u;
  v1122 = 0u;
  v1123 = 0u;
  v1124 = 0u;
  v1053 = v659;
  v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1053, v660, &v1121, &__p, 16);
  if (v662)
  {
    v663 = *v1122;
    do
    {
      for (i13 = 0; i13 != v662; ++i13)
      {
        if (*v1122 != v663)
        {
          objc_enumerationMutation(v1053);
        }

        v665 = *(*(&v1121 + 1) + 8 * i13);
        if (v665)
        {
          v665[2] = v665[1];
          v665[11] = v665[10];
          v665[5] = v665[4];
          v665[8] = v665[7];
        }
      }

      v662 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1053, v661, &v1121, &__p, 16);
    }

    while (v662);
  }

  v666 = objc_opt_new();
  v1112 = 0u;
  v1113 = 0u;
  src = 0u;
  v1111 = 0u;
  v667 = v1015;
  v670 = objc_msgSend_countByEnumeratingWithState_objects_count_(v667, v668, &src, &v1142, 16);
  if (v670)
  {
    v671 = *v1111;
    do
    {
      for (i14 = 0; i14 != v670; ++i14)
      {
        if (*v1111 != v671)
        {
          objc_enumerationMutation(v667);
        }

        objc_msgSend_appendFloorPlan_(v666, v669, *(src.i64[1] + 8 * i14));
      }

      v670 = objc_msgSend_countByEnumeratingWithState_objects_count_(v667, v669, &src, &v1142, 16);
    }

    while (v670);
  }

  v1022 = v666;
  v1023 = v667;
  v1011 = v1053;
  v1016 = v1014;
  objc_opt_self();
  v673 = v1011;
  v674 = v1016;
  v1021 = v673;
  objc_opt_self();
  LOBYTE(buf) = 0;
  BYTE4(buf) = 0;
  *v1144 = &buf;
  sub_262370E1C(v1144, v673);
  sub_262370E1C(v1144, v674);
  v1018 = v674;

  v677 = *&buf;
  if ((buf & 0x100000000) != 0)
  {
    logb = objc_msgSend_objects(v1022, v675, v676);
    v1141 = 0u;
    v1140 = 0u;
    v1139 = 0u;
    v1138 = 0u;
    v1024 = v1023;
    v1029 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1024, v678, &v1138, &buf, 16);
    if (v1029)
    {
      v681 = 0;
      v682 = v677;
      v1026 = *v1139;
      do
      {
        v1034 = 0;
        do
        {
          if (*v1139 != v1026)
          {
            objc_enumerationMutation(v1024);
          }

          v683 = *(*(&v1138 + 1) + 8 * v1034);
          if (v683)
          {
            v684 = v683[4];
          }

          else
          {
            v684 = 0.0;
          }

          v685 = objc_msgSend_objects(v683, v679, v680);
          v688 = objc_msgSend_count(v685, v686, v687);

          if (v688 + v681 > objc_msgSend_count(logb, v689, v690))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x266727130](exception, "Inconsistent object counts between aggregated_floorplan and source_floorplans.");
            __cxa_throw(exception, &unk_2874EF270, MEMORY[0x277D82600]);
          }

          if (v681 < v688 + v681)
          {
            v691 = v682 - v684;
            v1039 = v688 + v681;
            do
            {
              i17 = objc_msgSend_objectAtIndexedSubscript_(logb, v679, v681);
              v695 = objc_msgSend_type(i17, v693, v694);
              __srcf = i17;
              v1049 = v681;
              v697 = objc_msgSend_isEqual_(v695, v696, @"Stairs");

              if ((v697 & 1) == 0)
              {
                v1106 = 0uLL;
                *&v1107 = 0;
                v1117 = 0u;
                v1118 = 0u;
                v1119 = 0u;
                v1120 = 0u;
                v700 = objc_msgSend_boxesDict(i17, v698, v699);
                v704 = objc_msgSend_countByEnumeratingWithState_objects_count_(v700, v701, &v1117, v1144, 16);
                if (v704)
                {
                  v1061 = *v1118;
                  do
                  {
                    for (i15 = 0; i15 != v704; ++i15)
                    {
                      if (*v1118 != v1061)
                      {
                        objc_enumerationMutation(v700);
                      }

                      v706 = *(*(&v1117 + 1) + 8 * i15);
                      v1160 = 0u;
                      v1161 = 0u;
                      v1158 = 0u;
                      v1159 = 0u;
                      v1156 = 0u;
                      v1157 = 0u;
                      *v1154 = 0u;
                      v1155 = 0u;
                      v707 = objc_msgSend_boxesDict(i17, v702, v703);
                      v709 = objc_msgSend_objectForKeyedSubscript_(v707, v708, v706);
                      sub_262211250(v1154, v709);

                      for (i16 = 1; i16 != 17; i16 += 2)
                      {
                        *&v1154[i16] = v691 + *&v1154[i16];
                      }

                      v711 = v706;
                      v712 = *(&v1106 + 1);
                      if (*(&v1106 + 1) >= v1107)
                      {
                        v714 = v1106;
                        v715 = *(&v1106 + 1) - v1106;
                        v716 = 0x8E38E38E38E38E39 * ((*(&v1106 + 1) - v1106) >> 4) + 1;
                        if (v716 > 0x1C71C71C71C71C7)
                        {
                          sub_2621CBEB0();
                        }

                        if (0x1C71C71C71C71C72 * ((v1107 - v1106) >> 4) > v716)
                        {
                          v716 = 0x1C71C71C71C71C72 * ((v1107 - v1106) >> 4);
                        }

                        if (0x8E38E38E38E38E39 * ((v1107 - v1106) >> 4) >= 0xE38E38E38E38E3)
                        {
                          v717 = 0x1C71C71C71C71C7;
                        }

                        else
                        {
                          v717 = v716;
                        }

                        if (v717)
                        {
                          if (v717 <= 0x1C71C71C71C71C7)
                          {
                            operator new();
                          }

                          sub_2621C6A34();
                        }

                        v718 = 16 * ((*(&v1106 + 1) - v1106) >> 4);
                        *v718 = v711;
                        v719 = v1159;
                        *(v718 + 80) = v1158;
                        *(v718 + 96) = v719;
                        v720 = v1161;
                        *(v718 + 112) = v1160;
                        *(v718 + 128) = v720;
                        v721 = v1155;
                        *(v718 + 16) = *v1154;
                        *(v718 + 32) = v721;
                        v722 = v1157;
                        v723 = v718 - v715;
                        *(v718 + 48) = v1156;
                        *(v718 + 64) = v722;
                        if (v714 != v712)
                        {
                          v724 = v714;
                          v725 = v723;
                          do
                          {
                            v726 = *v724;
                            *v724 = 0;
                            *v725 = v726;
                            v727 = *(v724 + 1);
                            v728 = *(v724 + 2);
                            v729 = *(v724 + 4);
                            *(v725 + 48) = *(v724 + 3);
                            *(v725 + 64) = v729;
                            *(v725 + 16) = v727;
                            *(v725 + 32) = v728;
                            v730 = *(v724 + 5);
                            v731 = *(v724 + 6);
                            v732 = *(v724 + 8);
                            *(v725 + 112) = *(v724 + 7);
                            *(v725 + 128) = v732;
                            *(v725 + 80) = v730;
                            *(v725 + 96) = v731;
                            v724 += 18;
                            v725 += 144;
                          }

                          while (v724 != v712);
                          do
                          {

                            v714 += 18;
                          }

                          while (v714 != v712);
                          v714 = v1106;
                        }

                        v713 = (v718 + 144);
                        *&v1106 = v723;
                        *(&v1106 + 1) = v713;
                        *&v1107 = 0;
                        if (v714)
                        {
                          operator delete(v714);
                        }
                      }

                      else
                      {
                        **(&v1106 + 1) = v711;
                        *(v712 + 5) = v1158;
                        *(v712 + 6) = v1159;
                        *(v712 + 7) = v1160;
                        *(v712 + 8) = v1161;
                        *(v712 + 1) = *v1154;
                        *(v712 + 2) = v1155;
                        *(v712 + 3) = v1156;
                        *(v712 + 4) = v1157;
                        v713 = v712 + 18;
                      }

                      i17 = __srcf;
                      *(&v1106 + 1) = v713;
                    }

                    v704 = objc_msgSend_countByEnumeratingWithState_objects_count_(v700, v702, &v1117, v1144, 16);
                  }

                  while (v704);
                }

                v734 = *(&v1106 + 1);
                v733 = v1106;
                for (i17 = __srcf; v733 != v734; v733 = &v735[8])
                {
                  v736 = *v733;
                  v735 = (v733 + 2);
                  sub_26223FC2C(__srcf, v735, v736);
                }

                v1154[0] = &v1106;
                sub_262370D9C(v1154);
              }

              v681 = v1049 + 1;
            }

            while (v1049 + 1 < v1039);
          }

          v1034 = v1034 + 1;
        }

        while (v1034 != v1029);
        v737 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1024, v679, &v1138, &buf, 16);
        v1029 = v737;
      }

      while (v737);
    }
  }

  else
  {
    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    logb = qword_27FF0C058;
    if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2621C3000, logb, OS_LOG_TYPE_DEBUG, "Unable to get merged floor height; abort object height adjustment.", &buf, 2u);
    }
  }

  v1062 = objc_msgSend_array(MEMORY[0x277CBEB18], v738, v739);
  objc_msgSend_addObjectsFromArray_(v1062, v740, v1021);
  objc_msgSend_addObjectsFromArray_(v1062, v741, v1018);
  v742 = v1022;
  v743 = v1062;
  v744 = v1012;
  v1017 = v1013;
  objc_opt_self();
  logc = objc_opt_new();
  sub_2622AE900(logc, v743);
  v747 = objc_msgSend_array(MEMORY[0x277CBEB18], v745, v746);
  v750 = objc_msgSend_array(MEMORY[0x277CBEB18], v748, v749);
  v753 = objc_msgSend_array(MEMORY[0x277CBEB18], v751, v752);
  v1141 = 0u;
  v1140 = 0u;
  v1139 = 0u;
  v1138 = 0u;
  v1050 = v744;
  v755 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1050, v754, &v1138, v1154, 16);
  if (v755)
  {
    v756 = *v1139;
    do
    {
      for (i18 = 0; i18 != v755; ++i18)
      {
        if (*v1139 != v756)
        {
          objc_enumerationMutation(v1050);
        }

        v758 = *(*(&v1138 + 1) + 8 * i18);
        v761 = objc_msgSend_type(v758, v759, v760);
        v762 = v747;
        if (v761 == 2)
        {
          goto LABEL_672;
        }

        if (v761 == 3)
        {
          v762 = v753;
LABEL_672:
          objc_msgSend_addObject_(v762, v762, v758);
          goto LABEL_673;
        }

        v762 = v750;
        if (v761 == 4)
        {
          goto LABEL_672;
        }

LABEL_673:
      }

      v755 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1050, v763, &v1138, v1154, 16);
    }

    while (v755);
  }

  sub_26223FCDC(logc, v747);
  sub_2622AE920(logc, v753);
  sub_26223FCBC(logc, v750);
  sub_2622AE910(logc, v1017);
  v766 = objc_msgSend_curvedWalls(v742, v764, v765);
  sub_2622AE930(logc, v766);

  v769 = objc_msgSend_curvedDoors(v742, v767, v768);
  sub_2622AE940(logc, v769);

  v772 = objc_msgSend_curvedWindows(v742, v770, v771);
  sub_2622AE950(logc, v772);

  v775 = objc_msgSend_roomTypes(v742, v773, v774);
  sub_2622AE970(logc, v775);

  v778 = logc;
  if (logc)
  {
    sub_26229CF80(&buf);
    memset(&v1144[8], 0, 64);
    v1145 = 0u;
    v1146 = 0u;
    v1148 = 0;
    *v1144 = &unk_2874EF0B8;
    v1147 = 0;
    v1149 = 257;
    sub_262241864(&buf, logc, 0, v1144);
    *v1144 = &unk_2874EF0B8;
    if (v1148)
    {
      sub_2621D1B78(v1148);
    }

    sub_262241820(v1137);
    v779 = v1136;
    v1136 = 0;
    if (v779)
    {
      operator delete(v779);
    }

    sub_26229D160(&buf);
    v778 = logc;
  }

  v780 = objc_msgSend_walls(v778, v776, v777);
  v783 = objc_msgSend_openings(v778, v781, v782);
  v786 = objc_msgSend_objects(v742, v784, v785);
  v787 = sub_2622B27C4(v780, v783, v786);
  sub_26223FCCC(logc, v787);

  v790 = objc_msgSend_walls(logc, v788, v789);
  memset(v1144, 0, 64);
  v791 = v790;
  v794 = objc_msgSend_countByEnumeratingWithState_objects_count_(v791, v792, v1144, &buf, 16);
  if (v794)
  {
    v795 = **&v1144[16];
    do
    {
      for (i19 = 0; i19 != v794; ++i19)
      {
        if (**&v1144[16] != v795)
        {
          objc_enumerationMutation(v791);
        }

        v797 = *(*&v1144[8] + 8 * i19);
        if (v797 && *(v797 + 132) < *(v1087 + 144))
        {
          *(v797 + 132) = 0;
        }
      }

      v794 = objc_msgSend_countByEnumeratingWithState_objects_count_(v791, v793, v1144, &buf, 16);
    }

    while (v794);
  }

  sub_2622AEE64(logc, v798, v799);
  v800 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (logc)
  {
    isa_high = HIDWORD(logc[1].isa);
    isa = logc[2].isa;
  }

  else
  {
    isa_high = 0;
    isa = 0;
  }

  v1025 = isa_high;
  v802 = v1023;
  v1030 = v800;
  v1106 = 0uLL;
  *&v1107 = 0;
  v1117 = 0u;
  v1118 = 0u;
  v1119 = 0u;
  v1120 = 0u;
  v1035 = v802;
  v804 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1035, v803, &v1117, &v1138, 16);
  if (v804)
  {
    v1040 = *v1118;
    do
    {
      v805 = 0;
      v1054 = v804;
      do
      {
        if (*v1118 != v1040)
        {
          objc_enumerationMutation(v1035);
        }

        v806 = v805;
        v1063 = *(*(&v1117 + 1) + 8 * v805);
        v811 = objc_msgSend_roomTypes(v1063, v807, v808);
        for (i20 = 0; objc_msgSend_count(v811, v809, v810) > i20; ++i20)
        {
          v814 = objc_msgSend_objectAtIndexedSubscript_(v811, v813, i20);
          v817 = objc_msgSend_label(v814, v815, v816);
          v818 = v817 == 0;

          if (v818)
          {
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v851 = qword_27FF0C058;
            if (os_log_type_enabled(v851, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_2621C3000, v851, OS_LOG_TYPE_ERROR, "Invalid label in RSRoomType, skipping", &buf, 2u);
            }

            goto LABEL_737;
          }

          v820 = objc_msgSend_objectAtIndexedSubscript_(v811, v819, i20);
          v823 = objc_msgSend_polygon(v820, v821, v822);
          if (!objc_msgSend_count(v823, v824, v825))
          {

LABEL_712:
            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v851 = qword_27FF0C058;
            if (os_log_type_enabled(v851, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_2621C3000, v851, OS_LOG_TYPE_ERROR, "Invalid polygon in RSRoomType, skipping", &buf, 2u);
            }

LABEL_737:

            continue;
          }

          v827 = objc_msgSend_objectAtIndexedSubscript_(v811, v826, i20);
          v830 = objc_msgSend_polygon(v827, v828, v829);
          v833 = objc_msgSend_points(v830, v831, v832) == 0;

          if (v833)
          {
            goto LABEL_712;
          }

          for (i21 = 0; ; ++i21)
          {
            v836 = objc_msgSend_objectAtIndexedSubscript_(v811, v834, i20);
            v839 = objc_msgSend_polygon(v836, v837, v838);
            v842 = objc_msgSend_count(v839, v840, v841) > i21;

            if (!v842)
            {
              break;
            }

            v844 = objc_msgSend_objectAtIndexedSubscript_(v811, v843, i20);
            v847 = objc_msgSend_polygon(v844, v845, v846);
            v850 = *(objc_msgSend_points(v847, v848, v849) + 8 * i21);
          }

          v852 = objc_msgSend_objectAtIndexedSubscript_(v811, v843, i20);
          objc_msgSend_polygonCenter(v852, v853, v854);
          v856 = objc_msgSend_objectAtIndexedSubscript_(v811, v855, i20);
          objc_msgSend_polygonCenter(v856, v857, v858);

          v860 = objc_msgSend_objectAtIndexedSubscript_(v811, v859, i20);
          v861 = *(&v1106 + 1);
          if (*(&v1106 + 1) >= v1107)
          {
            v863 = v1106;
            v864 = (*(&v1106 + 1) - v1106) >> 3;
            v865 = v864 + 1;
            if ((v864 + 1) >> 61)
            {
              sub_2621CBEB0();
            }

            v866 = v1107 - v1106;
            if ((v1107 - v1106) >> 2 > v865)
            {
              v865 = v866 >> 2;
            }

            if (v866 >= 0x7FFFFFFFFFFFFFF8)
            {
              v867 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v867 = v865;
            }

            if (v867)
            {
              if (!(v867 >> 61))
              {
                operator new();
              }

              sub_2621C6A34();
            }

            v868 = (8 * v864);
            v869 = &v868[-((*(&v1106 + 1) - v1106) >> 3)];
            *v868 = v860;
            v862 = v868 + 1;
            if (v863 != v861)
            {
              v870 = v863;
              v871 = v869;
              do
              {
                v872 = *v870;
                *v870++ = 0;
                *v871++ = v872;
              }

              while (v870 != v861);
              do
              {
              }

              while (v863 != v861);
              v863 = v1106;
            }

            *&v1106 = v869;
            *(&v1106 + 1) = v862;
            *&v1107 = 0;
            if (v863)
            {
              operator delete(v863);
            }
          }

          else
          {
            **(&v1106 + 1) = v860;
            v862 = v861 + 1;
          }

          *(&v1106 + 1) = v862;
        }

        v805 = v806 + 1;
      }

      while ((v806 + 1) != v1054);
      v804 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1035, v873, &v1117, &v1138, 16);
    }

    while (v804);
  }

  v874 = *(&v1106 + 1) - v1106;
  v875 = ((*(&v1106 + 1) - v1106) >> 3);
  sub_262370CD4(&v1102, v875);
  v878 = (v874 >> 3) & 0x7FFFFFFF;
  __srcg = v874 >> 3;
  if ((v874 >> 3) >= 1)
  {
    v879 = 0;
    do
    {
      v880 = objc_msgSend_polygon(*(v1106 + 8 * v879), v876, v877);
      v881 = v1102;
      v884 = objc_msgSend_count(v880, v882, v883);
      sub_26220F5A0((v881 + 24 * v879), v884);
      v889 = objc_msgSend_points(v880, v885, v886);
      for (i22 = 0; objc_msgSend_count(v880, v887, v888) > i22; ++i22)
      {
        *&buf = *(v889 + 8 * i22);
        sub_2621CBA84(v1102 + 24 * v879, &buf);
      }

      ++v879;
    }

    while (v879 != v878);
  }

  sub_2621E1C0C(&v1098, v875);
  *v1144 = 0;
  if (__srcg <= 0)
  {
    v1094 = 0uLL;
    *&v1095 = 0;
    v1121 = 0u;
    v1122 = 0u;
    LODWORD(v1123) = 1065353216;
  }

  else
  {
    v893 = 0;
    v894 = 1;
    v895 = 24;
    do
    {
      LODWORD(v1154[0]) = v893 + 1;
      v896 = v895;
      v897 = v894;
      v898 = v893 + 1;
      if (v893 + 1 < v878)
      {
        do
        {
          v899 = objc_msgSend_label(*(v1106 + 8 * v893), v891, v892);
          v902 = objc_msgSend_label(*(v1106 + 8 * v894), v900, v901);
          v904 = objc_msgSend_isEqual_(v899, v903, v902);

          if (v904)
          {
            LODWORD(v905) = 1036831949;
            sub_26233E420(&buf, *(v1102 + 24 * v893), *(v1102 + 24 * v893 + 8), (v1102 + v896), v905);
            v906 = buf / v1126;
            if ((buf / *(&buf + 1)) >= v906)
            {
              v906 = buf / *(&buf + 1);
            }

            if (v906 >= *(v1087 + 188))
            {
              sub_2621C7CD0(v1098 + 24 * v893, v1154);
              sub_2621C7CD0(v1098 + v896, v1144);
            }
          }

          LODWORD(v1154[0]) = ++v894;
          v896 += 24;
        }

        while (v878 != v894);
      }

      *v1144 = v893 + 1;
      v894 = v897 + 1;
      v895 += 24;
      ++v893;
    }

    while (v898 != v878);
    v907 = 0;
    v1094 = 0uLL;
    *&v1095 = 0;
    v1121 = 0u;
    v1122 = 0u;
    LODWORD(v1123) = 1065353216;
    LODWORD(__p) = 0;
    do
    {
      if (!sub_2621C719C(&v1121, v907))
      {
        v1154[1] = 0;
        v1154[0] = 0;
        *&v1155 = 0;
        v1126 = 0u;
        v1127 = 0u;
        buf = 0u;
        sub_26228324C(&buf, &__p);
        sub_2621C729C(&v1121, v907);
        while (*(&v1127 + 1))
        {
          v908 = *(*(*(&buf + 1) + ((v1127 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v1127 & 0x3FF));
          *v1144 = v908;
          --*(&v1127 + 1);
          *&v1127 = v1127 + 1;
          if (v1127 >= 0x800)
          {
            operator delete(**(&buf + 1));
            *(&buf + 1) += 8;
            *&v1127 = v1127 - 1024;
          }

          sub_2621C7CD0(v1154, v1144);
          v909 = v1098 + 24 * v908;
          v910 = *v909;
          v911 = *(v909 + 8);
          while (v910 != v911)
          {
            LODWORD(v1142) = *v910;
            v912 = v1142;
            if (!sub_2621C719C(&v1121, v1142))
            {
              sub_26228324C(&buf, &v1142);
              sub_2621C729C(&v1121, v912);
            }

            ++v910;
          }
        }

        v913 = *(&v1094 + 1);
        if (*(&v1094 + 1) >= v1095)
        {
          v916 = 0xAAAAAAAAAAAAAAABLL * ((*(&v1094 + 1) - v1094) >> 3);
          v917 = v916 + 1;
          if (v916 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_2621CBEB0();
          }

          if (0x5555555555555556 * ((v1095 - v1094) >> 3) > v917)
          {
            v917 = 0x5555555555555556 * ((v1095 - v1094) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v1095 - v1094) >> 3) >= 0x555555555555555)
          {
            v918 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v918 = v917;
          }

          *&v1144[32] = &v1094;
          if (v918)
          {
            sub_2621E1E3C(v918);
          }

          v919 = (8 * ((*(&v1094 + 1) - v1094) >> 3));
          *v1144 = 0;
          *&v1144[8] = v919;
          *&v1144[16] = v919;
          *&v1144[24] = 0;
          *v919 = 0;
          v919[1] = 0;
          v919[2] = 0;
          sub_2621C8B60(24 * v916, v1154[0], v1154[1], (v1154[1] - v1154[0]) >> 2);
          v915 = *&v1144[16] + 24;
          v920 = (*&v1144[8] - (*(&v1094 + 1) - v1094));
          memcpy(v920, v1094, *(&v1094 + 1) - v1094);
          v921 = v1094;
          v922 = v1095;
          *&v1094 = v920;
          *(&v1094 + 1) = v915;
          *&v1095 = *&v1144[24];
          *&v1144[16] = v921;
          *&v1144[24] = v922;
          *&v1144[8] = v921;
          *v1144 = v921;
          sub_26220AA90(v1144);
          v914 = v1154[0];
        }

        else
        {
          **(&v1094 + 1) = 0;
          *(v913 + 8) = 0;
          *(v913 + 16) = 0;
          v914 = v1154[0];
          sub_2621C8B60(v913, v1154[0], v1154[1], (v1154[1] - v1154[0]) >> 2);
          v915 = v913 + 24;
        }

        *(&v1094 + 1) = v915;
        sub_262283C10(&buf);
        if (v914)
        {
          operator delete(v914);
        }

        v907 = __p;
      }

      LODWORD(__p) = ++v907;
    }

    while (v907 < __srcg);
  }

  objc_msgSend_removeAllObjects(v1030, v891, v892);
  v1041 = *(&v1094 + 1);
  if (v1094 != *(&v1094 + 1))
  {
    __asm { FMOV            V0.2S, #-5.0 }

    v926 = vdup_n_s32(0x3CA3D70Au);
    __asm { FMOV            V14.2S, #1.0 }

    v928 = v1094;
    __asm { FMOV            V9.2S, #5.0 }

    do
    {
      v1055 = v928;
      v931 = v928;
      v930 = *v928;
      v932 = v931[1] - v930;
      if (v932)
      {
        if (v932 != 1)
        {
          objc_msgSend_label(*(v1106 + 8 * *v930), v923, v924);
          objc_claimAutoreleasedReturnValue();
          v1090 = 0uLL;
          *&v1091 = 0;
          v938 = *v1055;
          v939 = v1055[1];
          if (*v1055 == v939)
          {
            v949 = 0;
            v940 = 0;
            v951 = 0x80000000800000;
            v952 = vneg_f32(0x80000000800000);
            v950 = 1;
          }

          else
          {
            v940 = 0;
            do
            {
              v941 = (v1102 + 24 * *v938);
              if (v940 >= v1091)
              {
                v942 = 0xAAAAAAAAAAAAAAABLL * ((v940 - v1090) >> 3);
                v943 = v942 + 1;
                if (v942 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v1091 - v1090) >> 3) > v943)
                {
                  v943 = 0x5555555555555556 * ((v1091 - v1090) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v1091 - v1090) >> 3) >= 0x555555555555555)
                {
                  v944 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v944 = v943;
                }

                *&v1127 = &v1090;
                if (v944)
                {
                  sub_2621E1EE4(v944);
                }

                v945 = (8 * ((v940 - v1090) >> 3));
                *&buf = 0;
                *(&buf + 1) = v945;
                v1126 = v945;
                *v945 = 0;
                v945[1] = 0;
                v945[2] = 0;
                sub_2621CC8B4(24 * v942, *v941, v941[1], (v941[1] - *v941) >> 3);
                v940 = (v1126 + 24);
                v946 = (*(&buf + 1) - (*(&v1090 + 1) - v1090));
                memcpy(v946, v1090, *(&v1090 + 1) - v1090);
                v947 = v1090;
                v948 = v1091;
                *&v1090 = v946;
                *(&v1090 + 1) = v940;
                *&v1091 = *(&v1126 + 1);
                *&v1126 = v947;
                *(&v1126 + 1) = v948;
                *(&buf + 1) = v947;
                *&buf = v947;
                sub_26220AA90(&buf);
              }

              else
              {
                *v940 = 0;
                v940[1] = 0;
                v940[2] = 0;
                sub_2621CC8B4(v940, *v941, v941[1], (v941[1] - *v941) >> 3);
                v940 += 3;
              }

              *(&v1090 + 1) = v940;
              ++v938;
            }

            while (v938 != v939);
            v949 = v1090;
            v950 = v1090 == v940;
            v951 = 0x80000000800000;
            v952 = vneg_f32(0x80000000800000);
            if (v1090 != v940)
            {
              v953 = v1090;
              do
              {
                for (i23 = *v953; i23 != v953[1]; ++i23)
                {
                  v955 = *i23;
                  v952 = vbsl_s8(vcgt_f32(v952, v955), v955, v952);
                  v951 = vbsl_s8(vcgt_f32(v955, v951), v955, v951);
                }

                v953 += 3;
              }

              while (v953 != v940);
            }
          }

          v956 = vsub_f32(v951, v952);
          v1116 = (v956.f32[0] / 0.02) + 10;
          v1115 = (v956.f32[1] / 0.02) + 10;
          src = 0uLL;
          *&v1111 = 0;
          v1064 = v940;
          if (!v950)
          {
            do
            {
              memset(v1144, 0, 24);
              sub_26220F5A0(v1144, v949[1] - *v949);
              v957 = *v949;
              v958 = v949[1];
              if (*v949 != v958)
              {
                v959 = *&v1144[16];
                v960 = *&v1144[8];
                v961 = *v1144;
                do
                {
                  v962 = vadd_f32(vdiv_f32(vsub_f32(*v957, v952), v926), _D9);
                  v963 = -v962.f32[0];
                  if (v962.f32[0] >= 0.0)
                  {
                    v963 = v962.f32[0];
                  }

                  v964 = v963;
                  v965 = v963 - v963;
                  if (v965 < 0.5)
                  {
                    v966 = v964;
                  }

                  else
                  {
                    v966 = v964 + 1;
                  }

                  v967 = (v964 & 1) + v964;
                  if (v965 != 0.5)
                  {
                    v967 = v966;
                  }

                  if (v962.f32[0] < 0.0)
                  {
                    v967 = -v967;
                  }

                  LODWORD(v968) = v967;
                  v969 = -v962.f32[1];
                  if (v962.f32[1] >= 0.0)
                  {
                    v969 = v962.f32[1];
                  }

                  v970 = v969;
                  v971 = v969 - v969;
                  if (v971 < 0.5)
                  {
                    v972 = v970;
                  }

                  else
                  {
                    v972 = v970 + 1;
                  }

                  v973 = (v970 & 1) + v970;
                  if (v971 != 0.5)
                  {
                    v973 = v972;
                  }

                  if (v962.f32[1] < 0.0)
                  {
                    v973 = -v973;
                  }

                  HIDWORD(v968) = v973;
                  if (v960 >= v959)
                  {
                    v974 = v960 - v961;
                    v975 = (v960 - v961) >> 3;
                    v976 = v975 + 1;
                    if ((v975 + 1) >> 61)
                    {
                      *&v1144[16] = v959;
                      *&v1144[8] = v960;
                      *v1144 = v961;
                      sub_2621CBEB0();
                    }

                    if ((v959 - v961) >> 2 > v976)
                    {
                      v976 = (v959 - v961) >> 2;
                    }

                    if (v959 - v961 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v977 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v977 = v976;
                    }

                    if (v977)
                    {
                      sub_2621CBEC8(v977);
                    }

                    v959 = 0;
                    *(8 * v975) = v968;
                    v960 = (8 * v975 + 8);
                    memcpy(0, v961, v974);
                    if (v961)
                    {
                      operator delete(v961);
                    }

                    v961 = 0;
                  }

                  else
                  {
                    *v960 = v968;
                    v960 += 8;
                  }

                  ++v957;
                }

                while (v957 != v958);
                *&v1144[16] = v959;
                *&v1144[8] = v960;
                *v1144 = v961;
                v940 = v1064;
              }

              v978 = src.i64[1];
              if (src.i64[1] >= v1111)
              {
                v981 = 0xAAAAAAAAAAAAAAABLL * ((src.i64[1] - src.i64[0]) >> 3);
                v982 = v981 + 1;
                if (v981 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((v1111 - src.i64[0]) >> 3) > v982)
                {
                  v982 = 0x5555555555555556 * ((v1111 - src.i64[0]) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v1111 - src.i64[0]) >> 3) >= 0x555555555555555)
                {
                  v983 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v983 = v982;
                }

                *&v1127 = &src;
                if (v983)
                {
                  if (v983 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v984 = (8 * ((src.i64[1] - src.i64[0]) >> 3));
                *&buf = 0;
                *(&buf + 1) = v984;
                v1126 = v984;
                v984[1] = 0;
                v984[2] = 0;
                *v984 = 0;
                sub_262341F64(24 * v981, *v1144, *&v1144[8], (*&v1144[8] - *v1144) >> 3);
                v980 = v1126 + 24;
                v985 = (*(&buf + 1) - (src.i64[1] - src.i64[0]));
                memcpy(v985, src.i64[0], src.i64[1] - src.i64[0]);
                v986 = src.i64[0];
                v987 = v1111;
                src.i64[0] = v985;
                src.i64[1] = v980;
                *&v1111 = *(&v1126 + 1);
                *&v1126 = v986;
                *(&v1126 + 1) = v987;
                *(&buf + 1) = v986;
                *&buf = v986;
                sub_26220AA90(&buf);
                v979 = *v1144;
              }

              else
              {
                *src.i64[1] = 0;
                *(v978 + 8) = 0;
                *(v978 + 16) = 0;
                v979 = *v1144;
                sub_262341F64(v978, *v1144, *&v1144[8], (*&v1144[8] - *v1144) >> 3);
                v980 = v978 + 24;
              }

              src.i64[1] = v980;
              if (v979)
              {
                operator delete(v979);
              }

              v949 += 3;
            }

            while (v949 != v940);
          }

          sub_2622D4838(&buf, &v1116, &v1115);
          sub_26225F17C(v1154, 0, &buf);
          v1114 = 1;
          v989 = src.i64[1];
          for (i24 = src.i64[0]; i24 != v989; i24 += 3)
          {
            sub_2621DA470(v1154, *i24, i24[1]);
          }

          v1126 = 0u;
          v1127 = 0u;
          buf = 0u;
          sub_26222D2A8(&v1128, v1154);
          v1135 = 0;
          v1134 = 0u;
          v1133 = 0u;
          v1132 = 0u;
          buf = v1129;
          v1126 = v1130;
          v1127 = v1131;
          sub_26233EBDC(&v1142, &buf);
        }

        v933 = objc_msgSend_copy(*(v1106 + 8 * *v930), v923, v924);
        v934 = v933;
        if (v933)
        {
          *(v933 + 8) = isa;
          *(v933 + 12) = v1025;
        }

        v935 = (v1102 + 24 * **v1055);
        sub_26233E620(*v935, v935[1]);
        if (v934)
        {
          v934[7] = v937;
        }

        objc_msgSend_addObject_(v1030, v936, v934);
      }

      v928 = v1055 + 3;
    }

    while (v1055 + 3 != v1041);
  }

  sub_2621C74C4(&v1121);
  *&buf = &v1094;
  sub_2621E1CB0(&buf);
  *&buf = &v1098;
  sub_2621E1CB0(&buf);
  *&buf = &v1102;
  sub_2621E1CB0(&buf);
  *&buf = &v1106;
  sub_2621C512C(&buf);

  sub_2622AE970(logc, v1030);
  sub_262337358(*(v1087 + 664), v1035, logc);
  v990 = v1035;
  v991 = logc;
  sub_2622B0C74(v991, a3, v992);
  memset(v1144, 0, 64);
  v993 = v990;
  v996 = objc_msgSend_countByEnumeratingWithState_objects_count_(v993, v994, v1144, &buf, 16);
  if (v996)
  {
    v997 = **&v1144[16];
    do
    {
      for (i25 = 0; i25 != v996; ++i25)
      {
        if (**&v1144[16] != v997)
        {
          objc_enumerationMutation(v993);
        }

        sub_2622B0C74(*(*&v1144[8] + 8 * i25), a3, v995);
      }

      v996 = objc_msgSend_countByEnumeratingWithState_objects_count_(v993, v999, v1144, &buf, 16);
    }

    while (v996);
  }

  v1000 = v993;
  v1001 = v991;
  memset(v1144, 0, 64);
  v1002 = v1000;
  v1004 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1002, v1003, v1144, &buf, 16);
  if (v1004)
  {
    v1005 = **&v1144[16];
    do
    {
      for (i26 = 0; i26 != v1004; ++i26)
      {
        if (**&v1144[16] != v1005)
        {
          objc_enumerationMutation(v1002);
        }

        sub_2622B1A88(*(*&v1144[8] + 8 * i26));
      }

      v1004 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1002, v1007, v1144, &buf, 16);
    }

    while (v1004);
  }

  sub_2622B1A88(v1001);
  if (v1088)
  {
    v1089 = v1088;
    operator delete(v1088);
  }

  v1008 = *MEMORY[0x277D85DE8];

  return v1001;
}