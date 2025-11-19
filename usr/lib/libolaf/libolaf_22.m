void Mult_Mat_scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = a3[1];
  v9 = v8 * *a3;
  if (v9 <= a4)
  {
    *a5 = v7;
    a5[1] = v8;
    if (v7)
    {
      v12 = 0;
      for (i = 0; i != v7; ++i)
      {
        if (v8)
        {
          v14 = a3[1] * i;
          v15 = v12;
          v16 = v8;
          do
          {
            *&a5[2 * v15++ + 2] = *&a3[2 * v14++ + 2] * a1;
            --v16;
          }

          while (v16);
        }

        v12 += v8;
      }
    }

    v17 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mult_Mat_scalar", 2012, v10, v11, a4, v9);
    }

    g_FPE_AssertFlag = 1;
    v18 = *MEMORY[0x29EDCA608];

    Set_Mat_Size(a4, a5, 0, 0);
  }
}

void Mat_Eq_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  v7 = a3[1];
  if (*a3 > 0x33 || v7 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Mat_Eq_Scalar", 2046, v11, v12, v6, v7);
    }

    g_FPE_AssertFlag = 1;
    *a5 = 0;
    goto LABEL_23;
  }

  if (v7 * v6 <= a4)
  {
    *a5 = v6;
    a5[1] = v7;
    if (v6)
    {
      v13 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (v7)
        {
          v15 = a3[1] * i;
          v16 = v13;
          v17 = v7;
          do
          {
            if (*&a3[2 * v15 + 2] == a1)
            {
              v18 = 1.0;
            }

            else
            {
              v18 = 0.0;
            }

            *&a5[2 * v16++ + 2] = v18;
            ++v15;
            --v17;
          }

          while (v17);
        }

        v13 += v7;
      }
    }

LABEL_23:
    v19 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v10 = *(g_TCU + 8);
    }

    else
    {
      v10 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mat_Eq_Scalar", 2054, v9, v10, a4, v7 * v6);
  }

  g_FPE_AssertFlag = 1;
  v20 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a4, a5, 0, 0);
}

void Mat_Greater_than_Scalar(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  v7 = a3[1];
  if (*a3 > 0x33 || v7 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Mat_Greater_than_Scalar", 2090, v11, v12, v6, v7);
    }

    g_FPE_AssertFlag = 1;
    *a5 = 0;
    goto LABEL_23;
  }

  if (v7 * v6 <= a4)
  {
    *a5 = v6;
    a5[1] = v7;
    if (v6)
    {
      v13 = 0;
      for (i = 0; i != v6; ++i)
      {
        if (v7)
        {
          v15 = a3[1] * i;
          v16 = v13;
          v17 = v7;
          do
          {
            if (*&a3[2 * v15 + 2] <= a1)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = 1.0;
            }

            *&a5[2 * v16++ + 2] = v18;
            ++v15;
            --v17;
          }

          while (v17);
        }

        v13 += v7;
      }
    }

LABEL_23:
    v19 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v10 = *(g_TCU + 8);
    }

    else
    {
      v10 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Mat_Greater_than_Scalar", 2098, v9, v10, a4, v7 * v6);
  }

  g_FPE_AssertFlag = 1;
  v20 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a4, a5, 0, 0);
}

uint64_t Filter_Rows_from_Mat(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  if (a4[1] * *a4 != *a2)
  {
    if (g_FPE_LogSeverity)
    {
      v8 = a2[1];
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input selector vector length does not match given matrix! length=%d, size=%dx%d", "Filter_Rows_from_Mat", 2266, v9, v10, a4[1] * *a4, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  result = Find_First_NonZero_in_Vector_Starting_At(a3, a4, 0);
  if (result == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      if (result != v12)
      {
        v13 = a2[1];
        if (v13)
        {
          v14 = v13 * result;
          v15 = v13 * v12;
          do
          {
            *&a2[2 * v15++ + 2] = *&a2[2 * v14++ + 2];
            --v13;
          }

          while (v13);
        }
      }

      ++v12;
      result = Find_First_NonZero_in_Vector_Starting_At(a3, a4, result + 1);
    }

    while (result != -1);
  }

  *a2 = v12;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void Filter_Cols_from_Mat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v6;
  v25 = *MEMORY[0x29EDCA608];
  v14 = *v11;
  v15 = v11[1];
  if (v7[1] * *v7 != v15)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input selector vector length does not match given matrix! length=%d, size=%dx%d", "Filter_Cols_from_Mat", 2299, v16, v17, v8[1] * *v8, v14, v15);
    }

    g_FPE_AssertFlag = 1;
  }

  First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(v10, v8, 0);
  if (First_NonZero_in_Vector_Starting_At == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0;
    do
    {
      if (First_NonZero_in_Vector_Starting_At != v19)
      {
        v20 = *v12;
        if (v20)
        {
          v21 = 0;
          v22 = v12[1];
          do
          {
            *&v12[2 * v19 + 2 + 2 * v21] = *&v12[2 * (First_NonZero_in_Vector_Starting_At + v21) + 2];
            v21 += v22;
            --v20;
          }

          while (v20);
        }
      }

      ++v19;
      First_NonZero_in_Vector_Starting_At = Find_First_NonZero_in_Vector_Starting_At(v10, v8, First_NonZero_in_Vector_Starting_At + 1);
    }

    while (First_NonZero_in_Vector_Starting_At != -1);
  }

  bzero(v24, 0x2008uLL);
  Copy_SubMat_from_Mat(1.0, v13, v12, 0, 0, v14, v19, 1024, v24);
  Copy_Mat(1024, v24, v13, v12);
  v23 = *MEMORY[0x29EDCA608];
}

void Norma2_Vec(uint64_t a1, int *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == 1 || v3 == 1)
  {
    if (v2)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0.0;
      do
      {
        v8 = v5;
        v9 = a2[1];
        if (v3)
        {
          do
          {
            v7 = v7 + *&a2[2 * v8 + 2] * *&a2[2 * v8 + 2];
            ++v8;
            --v9;
          }

          while (v9);
        }

        ++v6;
        v5 += v3;
      }

      while (v6 != v2);
    }
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f first input is not a vector! size = %dx%d", "Norma2_Vec", 2330, v10, v11, v2, v3);
    }

    g_FPE_AssertFlag = 1;
  }

  v12 = *MEMORY[0x29EDCA608];
}

void SVD_decomp(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, int *a6, const char *a7, uint64_t a8)
{
  v49 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4 || !a6 || !a8)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v20 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f some input matrices are NULL: A=%p, U=%p, S=%p, Vt=%p");
    }

    goto LABEL_26;
  }

  Set_Mat_Size(a3, a4, 0, 0);
  Set_Mat_Size(a5, a6, 0, 0);
  Set_Mat_Size(a7, a8, 0, 0);
  v18 = *a2;
  __n = *(a2 + 4);
  __m = v18;
  if (v18 != __n)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v21 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f A=%p is not a square matrix! M=%d, N=%d");
    }

    goto LABEL_26;
  }

  if (v18 >= 4)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f SVD_decomp should operate on [2x2] or [3x3] matrices. A is a [%dx%d] matrix");
    }

LABEL_26:
    g_FPE_AssertFlag = 1;
    goto LABEL_27;
  }

  v22 = v18 * v18;
  if (v18 * v18 > a3)
  {
    if (g_FPE_LogSeverity)
    {
      v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v24 = *(g_TCU + 8);
      }

      else
      {
        v24 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f U has %d elements, while %d are required!", "SVD_decomp", 2409, v23, v24, a3, v18 * v18);
    }

    g_FPE_AssertFlag = 1;
    v32 = a3;
    v33 = a4;
LABEL_47:
    Set_Mat_Size(v32, v33, 0, 0);
    goto LABEL_27;
  }

  if (v22 > a5)
  {
    if (g_FPE_LogSeverity)
    {
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v26 = *(g_TCU + 8);
      }

      else
      {
        v26 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f S has %d elements, while %d are required!", "SVD_decomp", 2415, v25, v26, a5, v18 * v18);
    }

    g_FPE_AssertFlag = 1;
    v32 = a5;
    v33 = a6;
    goto LABEL_47;
  }

  if (v22 > a7)
  {
    if (g_FPE_LogSeverity)
    {
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v29 = *(g_TCU + 8);
      }

      else
      {
        v29 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f V has %d elements, while %d are required!", "SVD_decomp", 2421, v28, v29, a7, v18 * v18);
    }

    g_FPE_AssertFlag = 1;
    v32 = a7;
    v33 = a8;
    goto LABEL_47;
  }

  Transpose_Mat(a1, a2, a1, a2, v16, v17);
  __jobvt = 65;
  __ldu = v18;
  __lda = v18;
  v39 = 0;
  __ldvt = v18;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  __lwork = 15;
  memset(v46, 0, sizeof(v46));
  Set_Mat_Size(3, v46, 3, 1);
  dgesvd_(&__jobvt, &__jobvt, &__m, &__n, (a2 + 8), &__lda, v46 + 1, (a4 + 8), &__ldu, (a8 + 8), &__ldvt, v47, &__lwork, &v39);
  if (v39 < 1)
  {
    Set_Mat_Size(a3, a4, __m, __m);
    Set_Mat_Size(a5, a6, __m, __m);
    Set_Mat_Size(a7, a8, __m, __m);
    Copy_Vec_to_Mat_diag(3, v46, 0, 0, 1, 1, a5, a6);
    Transpose_Mat(a1, a2, a1, a2, v34, v35);
    Transpose_Mat(a3, a4, a3, a4, v36, v37);
  }

  else if ((g_FPE_LogSeverity & 2) != 0)
  {
    v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v31 = *(g_TCU + 8);
    }

    else
    {
      v31 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f The algorithm computing SVD failed to converge.\n", "SVD_decomp", 2468, v30, v31);
  }

LABEL_27:
  v27 = *MEMORY[0x29EDCA608];
}

uint64_t All_Mat_Greater_Than(double a1, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Greater_Than", 2501, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    result = 1;
    while (1)
    {
      v8 = a3[1];
      v9 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        goto LABEL_18;
      }
    }

    while (*&a3[2 * v9 + 2] > a1)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t All_Mat_Smaller_Than(double a1, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Smaller_Than", 2532, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    result = 1;
    while (1)
    {
      v8 = a3[1];
      v9 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        goto LABEL_18;
      }
    }

    while (*&a3[2 * v9 + 2] < a1)
    {
      ++v9;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Any_Mat_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 * *a2;
  if (a4)
  {
    v7 = a4;
  }

  if (v5 > 0x33 || v6 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Equal_To", 2573, v18, v19, v5, v6);
    }

    v17 = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (!v6)
      {
LABEL_15:
        v10 = ++v8 < v5;
        if (v8 == v5)
        {
          goto LABEL_16;
        }
      }

      v11 = v9 + v6;
      v12 = a2[1];
      while (1)
      {
        v4 = v9 + 1 <= v7;
        if (v9 + 1 > v7)
        {
          break;
        }

        v13 = *&a2[2 * v9 + 2];
        v14 = v13 < 0.0;
        v15 = floor(v13 + 0.5);
        v16 = -floor(0.5 - v13);
        if (!v14)
        {
          v16 = v15;
        }

        if (v16 == a3)
        {
          break;
        }

        ++v9;
        if (!--v12)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }

    v17 = v10 && v4;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v17;
}

BOOL Any_Mat_Not_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 * *a2;
  if (a4)
  {
    v7 = a4;
  }

  if (v5 > 0x33 || v6 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Not_Equal_To", 2619, v18, v19, v5, v6);
    }

    v17 = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      while (!v6)
      {
LABEL_15:
        v10 = ++v8 < v5;
        if (v8 == v5)
        {
          goto LABEL_16;
        }
      }

      v11 = v9 + v6;
      v12 = a2[1];
      while (1)
      {
        v4 = v9 + 1 <= v7;
        if (v9 + 1 > v7)
        {
          break;
        }

        v13 = *&a2[2 * v9 + 2];
        v14 = v13 < 0.0;
        v15 = floor(v13 + 0.5);
        v16 = -floor(0.5 - v13);
        if (!v14)
        {
          v16 = v15;
        }

        if (v16 != a3)
        {
          break;
        }

        ++v9;
        if (!--v12)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_16:
      v10 = 0;
    }

    v17 = v10 && v4;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t All_Mat_Equal_To(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 * *a2;
  if (a4)
  {
    v6 = a4;
  }

  if (v4 > 0x33 || v5 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v17 = *(g_TCU + 8);
      }

      else
      {
        v17 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "All_Mat_Equal_To", 2665, v16, v17, v4, v5);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v4)
  {
    v7 = 0;
    v8 = 0;
    result = 1;
    while (!v5)
    {
LABEL_15:
      if (++v7 == v4)
      {
        goto LABEL_25;
      }
    }

    v10 = v8 + v5;
    v11 = a2[1];
    while (v8 + 1 <= v6)
    {
      v12 = *&a2[2 * v8 + 2];
      v13 = v12 < 0.0;
      v14 = floor(v12 + 0.5);
      v15 = -floor(0.5 - v12);
      if (!v13)
      {
        v15 = v14;
      }

      if (v15 != a3)
      {
        break;
      }

      ++v8;
      if (!--v11)
      {
        v8 = v10;
        goto LABEL_15;
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Any_Mat_Greater_Than(double a1, uint64_t a2, int *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 > 0x33 || v4 > 0x33)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrix dimenssions is too big! size = %dx%d", "Any_Mat_Greater_Than", 2701, v10, v11, v3, v4);
    }

    result = 0;
    g_FPE_AssertFlag = 1;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = a3[1];
      v8 = v5;
      if (v4)
      {
        break;
      }

LABEL_8:
      result = 0;
      ++v6;
      v5 += v4;
      if (v6 == v3)
      {
        goto LABEL_18;
      }
    }

    while (*&a3[2 * v8 + 2] <= a1)
    {
      ++v8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void Sign_Mat(uint64_t a1, int *a2, const char *a3, int *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Sign_Mat", 2732, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    goto LABEL_25;
  }

  if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v6;
          v16 = v12;
          do
          {
            v17 = *&a2[2 * v14 + 2];
            v18 = v17 < 0.0;
            if (v17 <= 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = 1.0;
            }

            if (v18)
            {
              v19 = -1.0;
            }

            *&a4[2 * v16++ + 2] = v19;
            ++v14;
            --v15;
          }

          while (v15);
        }

        v12 += v6;
      }
    }

LABEL_25:
    v20 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Sign_Mat", 2740, v8, v9, a3, v6 * v5);
  }

  g_FPE_AssertFlag = 1;
  v21 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a3, a4, 0, 0);
}

void Abs_Mat(uint64_t a1, int *a2, const char *a3, int *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 > 0x33 || v6 >= 0x34)
  {
    if (g_FPE_LogSeverity)
    {
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v11 = *(g_TCU + 8);
      }

      else
      {
        v11 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix too big: %dx%d", "Abs_Mat", 2773, v10, v11, v5, v6);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    goto LABEL_22;
  }

  if (v6 * v5 <= a3)
  {
    *a4 = v5;
    a4[1] = v6;
    if (v5)
    {
      v12 = 0;
      for (i = 0; i != v5; ++i)
      {
        if (v6)
        {
          v14 = a2[1] * i;
          v15 = v6;
          v16 = v12;
          do
          {
            v17 = *&a2[2 * v14 + 2];
            if (v17 < 0.0)
            {
              v17 = -v17;
            }

            *&a4[2 * v16++ + 2] = v17;
            ++v14;
            --v15;
          }

          while (v15);
        }

        v12 += v6;
      }
    }

LABEL_22:
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  if (g_FPE_LogSeverity)
  {
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v9 = *(g_TCU + 8);
    }

    else
    {
      v9 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Abs_Mat", 2781, v8, v9, a3, v6 * v5);
  }

  g_FPE_AssertFlag = 1;
  v19 = *MEMORY[0x29EDCA608];

  Set_Mat_Size(a3, a4, 0, 0);
}

double Norma_Vec(uint64_t a1, int *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  Norma2_Vec(a1, a2);
  v3 = v2;
  if (v2 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v5 = *(g_TCU + 8);
      }

      else
      {
        v5 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Norma_Vec", 2843, v4, v5, v3);
    }

    g_FPE_AssertFlag = 1;
    v3 = 1.0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return sqrt(v3);
}

void Eig2x2(uint64_t a1, int *a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v49 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != 2 || v9 != 2)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f requested matrix must by 2x2! input is %dx%d", "Eig2x2", 2862, v11, v12, v8, v9);
    }

    g_FPE_AssertFlag = 1;
    *a4 = 0;
    *a6 = 0;
LABEL_23:
    v27 = *MEMORY[0x29EDCA608];
    return;
  }

  if (a5 > 3)
  {
    if (a3 > 3)
    {
      v19 = *(a2 + 1);
      v20 = *(a2 + 2);
      v21 = *(a2 + 3);
      v22 = *(a2 + 4);
      Set_Mat_Size(a3, a4, 2, 2);
      Set_Mat_Size(a5, a6, 2, 2);
      v23 = v19 + v22;
      v24 = v20 * v21 + (v19 - v22) * (v19 - v22) * 0.25;
      if (v24 < 0.0)
      {
        if (g_FPE_LogSeverity)
        {
          v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v26 = *(g_TCU + 8);
          }

          else
          {
            v26 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "Eig2x2", 2899, v25, v26, v24);
        }

        g_FPE_AssertFlag = 1;
        v24 = 1.0;
      }

      v32 = sqrt(v24);
      v33 = v32 + v23 * 0.5;
      v34 = -(v32 - v23 * 0.5);
      *(a6 + 8) = v33;
      v35 = a6 + 8;
      *(a6 + 8 + 8 * (*(a6 + 4) + 1)) = v34;
      v36 = (a4 + 8);
      if (v21 == 0.0)
      {
        if (v20 == 0.0)
        {
          *(a4 + 8) = 0x3FF0000000000000;
          v37 = *(a4 + 4);
          v36->i64[v37] = 0;
          *(a4 + 16) = 0;
          v21 = 1.0;
        }

        else
        {
          *(a4 + 8) = v20;
          v37 = *(a4 + 4);
          *&v36->i64[v37] = v33 - v19;
          *(a4 + 16) = v20;
          v21 = v34 - v19;
        }
      }

      else
      {
        *(a4 + 8) = v33 - v22;
        v37 = *(a4 + 4);
        *&v36->i64[v37] = v21;
        *(a4 + 16) = v34 - v22;
      }

      *&v36->i64[(v37 + 1)] = v21;
      v38 = sqrt(*&v36->i64[v37] * *&v36->i64[v37] + *(a4 + 8) * *(a4 + 8));
      v39 = sqrt(v21 * v21 + *(a4 + 16) * *(a4 + 16));
      if (fabs(v38) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v40 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v41 = *(g_TCU + 8);
          }

          else
          {
            v41 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Eig2x2", 2936, v40, v41, v38, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v38 = 1.0;
      }

      if (fabs(v39) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v42 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v43 = *(g_TCU + 8);
          }

          else
          {
            v43 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "Eig2x2", 2937, v42, v43, v39, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v39 = 1.0;
      }

      *(a4 + 8) = *(a4 + 8) / v38;
      v44 = *(a4 + 4);
      *&v36->i64[v44] = *&v36->i64[v44] / v38;
      *(a4 + 16) = *(a4 + 16) / v39;
      v45 = v44 + 1;
      *&v36->i64[(v44 + 1)] = *&v36->i64[(v44 + 1)] / v39;
      if (v34 < v33)
      {
        v46 = *(a6 + 4) + 1;
        v47 = *(a6 + 8);
        *(a6 + 8) = *(v35 + 8 * v46);
        *(v35 + 8 * v46) = v47;
        *v36 = vextq_s8(*v36, *v36, 8uLL);
        v48 = v36->i64[v44];
        v36->i64[v44] = v36->i64[v45];
        v36->i64[v45] = v48;
      }

      goto LABEL_23;
    }

    if (g_FPE_LogSeverity)
    {
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      else
      {
        v18 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f eigVec has %d elements, while %d are required!", "Eig2x2", 2878, v17, v18, a3, 4);
    }

    g_FPE_AssertFlag = 1;
    v31 = *MEMORY[0x29EDCA608];
    v29 = a3;
    v30 = a4;
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v15 = *(g_TCU + 8);
      }

      else
      {
        v15 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f eigVal has %d elements, while %d are required!", "Eig2x2", 2872, v14, v15, a5, 4);
    }

    g_FPE_AssertFlag = 1;
    v28 = *MEMORY[0x29EDCA608];
    v29 = a5;
    v30 = a6;
  }

  Set_Mat_Size(v29, v30, 0, 0);
}

void Set_Vec_Values_By_Idx(double a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *a4;
  v5 = a4[1];
  if (v5 * *a4)
  {
    v9 = 0;
    v10 = a3[1] * *a3 - 1;
    v11 = a3 + 2;
    do
    {
      v12 = a4[v9 + 2];
      if (v12 > v10)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Vec_Values_By_Idx", 2989, (*&g_MacClockTicksToMsRelation * v13), v14, v9, v12, *a3, a3[1]);
          v4 = *a4;
          v5 = a4[1];
        }

        g_FPE_AssertFlag = 1;
      }

      *&v11[2 * v12] = a1;
      ++v9;
    }

    while (v9 < (v4 * v5));
  }

  v15 = *MEMORY[0x29EDCA608];
}

void Set_Mat_Cols_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4[1] * *a4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Mat_Cols_By_Idx", 3013, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          *&v9[2 * v12] = a1;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 < (a4[1] * *a4));
  }

  v17 = *MEMORY[0x29EDCA608];
}

void Set_Mat_Rows_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4[1] * *a4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v10)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix size [%ux%u]", "Set_Mat_Rows_By_Idx", 3041, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v11)
      {
        v15 = a3[1] * v12;
        v16 = v11;
        do
        {
          *&v9[2 * v15++] = a1;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 < (a4[1] * *a4));
  }

  v17 = *MEMORY[0x29EDCA608];
}

void Set_Mat_Cols_From_Mat_By_Idx(uint64_t a1, unsigned int *a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = a5[1];
  if (v5 != *a5)
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input matrices dimensions don't agree! [%ux%u] vs. [%ux%u]");
    }

    goto LABEL_25;
  }

  v7 = (a3[1] * *a3);
  if (v7 != a2[1])
  {
    if (g_FPE_LogSeverity)
    {
      mach_continuous_time();
      if (g_TCU)
      {
        v24 = *(g_TCU + 8);
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input vector and small matrix dimensions don't agree! [%u] vs. [%ux%u]");
    }

LABEL_25:
    g_FPE_AssertFlag = 1;
    goto LABEL_26;
  }

  if (v7)
  {
    v9 = 0;
    v10 = a3 + 2;
    v11 = a2 + 2;
    v12 = a5 + 2;
    v13 = &unk_2A14BE000;
    v14 = &unk_2A14BE000;
    v26 = a2;
    do
    {
      v15 = v10[v9];
      if (v15 >= v6)
      {
        if (v13[1316])
        {
          v16 = v13;
          v17 = mach_continuous_time();
          if (g_TCU)
          {
            v18 = *(g_TCU + 8);
          }

          else
          {
            v18 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Set_Mat_Cols_From_Mat_By_Idx", 3150, (*&g_MacClockTicksToMsRelation * v17), v18, v9, v15, v5, v6);
          v13 = v16;
          a2 = v26;
          v14 = &unk_2A14BE000;
        }

        v14[2616] = 1;
      }

      if (v5)
      {
        v19 = a2[1];
        v20 = a5[1];
        v21 = v9;
        v22 = v5;
        do
        {
          *&v12[2 * v15] = *&v11[2 * v21];
          v15 += v20;
          v21 += v19;
          --v22;
        }

        while (v22);
      }

      ++v9;
    }

    while (v9 != v7);
  }

LABEL_26:
  v25 = *MEMORY[0x29EDCA608];
}

void Max_Mat_Scalar_Col_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = (a4[1] * *a4);
  if (v4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Max_Mat_Scalar_Col_By_Idx", 3183, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          v17 = *&v9[2 * v12];
          if (v17 <= a1)
          {
            v17 = a1;
          }

          *&v9[2 * v12] = v17;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 != v4);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void Min_Mat_Scalar_Col_By_Idx(double a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = (a4[1] * *a4);
  if (v4)
  {
    v7 = 0;
    v8 = a4 + 2;
    v9 = a3 + 2;
    v10 = *a3;
    v11 = a3[1];
    do
    {
      v12 = v8[v7];
      if (v12 >= v11)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Min_Mat_Scalar_Col_By_Idx", 3226, (*&g_MacClockTicksToMsRelation * v13), v14, v7, v12, v10, v11);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v10)
      {
        v15 = a3[1];
        v16 = v10;
        do
        {
          v17 = *&v9[2 * v12];
          if (v17 >= a1)
          {
            v17 = a1;
          }

          *&v9[2 * v12] = v17;
          v12 += v15;
          --v16;
        }

        while (v16);
      }

      ++v7;
    }

    while (v7 != v4);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void Abs_Mat_Col_By_Idx(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = (a3[1] * *a3);
  if (v3)
  {
    v5 = 0;
    v6 = a3 + 2;
    v7 = a2 + 2;
    v8 = *a2;
    v9 = a2[1];
    do
    {
      v10 = v6[v5];
      if (v10 >= v9)
      {
        if (g_FPE_LogSeverity)
        {
          v11 = mach_continuous_time();
          if (g_TCU)
          {
            v12 = *(g_TCU + 8);
          }

          else
          {
            v12 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f input index at place %u with value of %u exceeds matrix column span [%ux%u]", "Abs_Mat_Col_By_Idx", 3263, (*&g_MacClockTicksToMsRelation * v11), v12, v5, v10, v8, v9);
        }

        g_FPE_AssertFlag = 1;
      }

      if (v8)
      {
        v13 = a2[1];
        v14 = v8;
        do
        {
          v15 = *&v7[2 * v10];
          if (v15 < 0.0)
          {
            v15 = -v15;
          }

          *&v7[2 * v10] = v15;
          v10 += v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  v16 = *MEMORY[0x29EDCA608];
}

const char *Append_To_Row_Vec(uint64_t a1, _DWORD *a2, const char *a3, int *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != 1 && v8 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_To_Row_Vec", 3325, v12, v13, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v14 = (v8 * v7);
  if (v9 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input is not a row vector:  [%ux%d]", "Append_To_Row_Vec", 3326, v15, v16, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v10 + v14 <= a3)
  {
    result = Set_Mat_Size(a3, a4, 1, v10 + v14);
    if (v14)
    {
      v20 = (a2 + 2);
      do
      {
        v21 = *v20++;
        *&a4[2 * v10++ + 2] = v21;
        --v14;
      }

      while (v14);
    }

    v22 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      else
      {
        v18 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Append_To_Row_Vec", 3330, v17, v18, a3, v10 + v14);
    }

    g_FPE_AssertFlag = 1;
    v23 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

const char *Append_To_Col_Vec(uint64_t a1, _DWORD *a2, const char *a3, int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = *a2;
  v8 = a2[1];
  v9 = *a4;
  v10 = a4[1];
  if (*a2 != 1 && v8 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_To_Col_Vec", 3361, v12, v13, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v14 = (v8 * v7);
  if (v10 >= 2)
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input is not a row vector:  [%ux%d]", "Append_To_Col_Vec", 3362, v15, v16, v9, v10);
    }

    g_FPE_AssertFlag = 1;
  }

  v17 = v10 + v14;
  if (v17 <= a3)
  {
    result = Set_Mat_Size(a3, a4, v9 + v14, 1);
    if (v14)
    {
      v21 = (a2 + 2);
      do
      {
        v22 = *v21++;
        *&a4[2 * v9++ + 2] = v22;
        --v14;
      }

      while (v14);
    }

    v23 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Mout has %d elements, while %d are required!", "Append_To_Col_Vec", 3366, v18, v19, a3, v17);
    }

    g_FPE_AssertFlag = 1;
    v24 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

const char *Append_On_Left_Vec(double a1, uint64_t a2, unsigned int *a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 * *a3;
  if (*a3 != 1 && v9 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Append_On_Left_Vec", 3397, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 + 1 <= a4)
  {
    if (v10 <= v9)
    {
      v20 = v9 + 1;
      v18 = a4;
      v19 = a5;
      v17 = 1;
    }

    else
    {
      v17 = v10 + 1;
      v18 = a4;
      v19 = a5;
      v20 = 1;
    }

    result = Set_Mat_Size(v18, v19, v17, v20);
    if (v11)
    {
      v22 = 2 * v11;
      do
      {
        *(a5 + 8 + v22 * 4) = *&a3[v22];
        v22 -= 2;
      }

      while (v22 * 4);
    }

    *(a5 + 8) = a1;
    v23 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Append_On_Left_Vec", 3401, v15, v16, a4, v11 + 1);
    }

    g_FPE_AssertFlag = 1;
    v24 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Shift_Right_Vec(double a1, uint64_t a2, int *a3, const char *a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 * *a3;
  if (*a3 != 1 && v9 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Shift_Right_Vec", 3441, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 <= a4)
  {
    result = Set_Mat_Size(a4, a5, v10, v9);
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = v18 - 1;
      v20 = (a5 + 8 * v18 + 8);
      do
      {
        v21 = v19;
        *v20-- = *&a3[2 * v19-- + 2];
      }

      while (v21);
    }

    *(a5 + 8) = a1;
    v22 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Shift_Right_Vec", 3445, v15, v16, a4, v11 + 1);
    }

    g_FPE_AssertFlag = 1;
    v23 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Shift_Left_Vec(double a1, uint64_t a2, int *a3, const char *a4, int *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v10 = *a3;
  v9 = a3[1];
  v11 = (v9 * *a3);
  if (*a3 != 1 && v9 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Shift_Left_Vec", 3478, v13, v14, v10, v9);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v11 <= a4)
  {
    result = Set_Mat_Size(a4, a5, v10, v9);
    if (v11 >= 2)
    {
      v18 = a5 + 2;
      v19 = v11 - 1;
      v20 = (a3 + 4);
      do
      {
        v21 = *v20++;
        *v18++ = v21;
        --v19;
      }

      while (v19);
    }

    *&a5[2 * (v11 - 1) + 2] = a1;
    v22 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v16 = *(g_TCU + 8);
      }

      else
      {
        v16 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Shift_Left_Vec", 3482, v15, v16, a4, v9 * v10);
    }

    g_FPE_AssertFlag = 1;
    v23 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a4, a5, 0, 0);
  }

  return result;
}

const char *Diff_Vec(uint64_t a1, _DWORD *a2, const char *a3, int *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 * *a2;
  if (*a2 != 1 && v7 != 1)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Added input is not a vector: [%ux%d]", "Diff_Vec", 3513, v11, v12, v8, v7);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v9 - 1 <= a3)
  {
    if (v8 <= v7)
    {
      v18 = v7 - 1;
      v15 = a3;
      v16 = a4;
      v17 = 1;
    }

    else
    {
      v15 = a3;
      v16 = a4;
      v17 = v8 - 1;
      v18 = 1;
    }

    result = Set_Mat_Size(v15, v16, v17, v18);
    if (v9 >= 2)
    {
      v20 = (a4 + 2);
      v21 = v9 - 1;
      v22 = (a2 + 4);
      do
      {
        *v20++ = *v22 - *(v22 - 1);
        ++v22;
        --v21;
      }

      while (v21);
    }

    v23 = *MEMORY[0x29EDCA608];
  }

  else
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Vout has %d elements, while %d are required!", "Diff_Vec", 3517, v13, v14, a3, v9 - 1);
    }

    g_FPE_AssertFlag = 1;
    v24 = *MEMORY[0x29EDCA608];

    return Set_Mat_Size(a3, a4, 0, 0);
  }

  return result;
}

void Diag_Mult_Mat(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4[1] * *a4;
  if (v6 != v7)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input matrix must be square: [%ux%d]", "Diag_Mult_Mat", 3552, v9, v10, v6, v7);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v6 != v8)
  {
    if (g_FPE_LogSeverity)
    {
      v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v12 = *(g_TCU + 8);
      }

      else
      {
        v12 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Input vector must have same length as matrix rows/columns: mat=[%ux%d], vec=[%ux%u]", "Diag_Mult_Mat", 3553, v11, v12, v6, v7, *a4, a4[1]);
    }

    g_FPE_AssertFlag = 1;
  }

  if (v6)
  {
    v13 = 0;
    v14 = a2[1] + 1;
    v15 = (a4 + 2);
    do
    {
      v16 = *v15++;
      *&a2[2 * v13 + 2] = *&a2[2 * v13 + 2] * v16;
      v13 += v14;
      --v6;
    }

    while (v6);
  }

  v17 = *MEMORY[0x29EDCA608];
}

uint64_t Fused_Nav_Update_Wrapper(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "Fused_Nav_Update_Wrapper: Entry");
  v2 = *(a1 + 392);
  Fused_Nav_Update(*(a1 + 216), *(a1 + 272), *(a1 + 72), *(a1 + 144), *(a1 + 128), *(a1 + 80), *(a1 + 88));
  GNSS_Validate_p_list(a1, "Fused_Nav_Update_Wrapper:  Exit");
  v3 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t GncP12_41HandleClearPosData(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(&v19, 0, sizeof(v19));
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CLEAR_GNSS_REQ,Mask,0x%X\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_41HandleClearPosData", *(a1 + 12));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    g_GnssDataClrMask = v4;
    if ((v4 & 0x40000) != 0)
    {
      v9 = "FACT";
    }

    else if ((v4 & 0x10000) != 0)
    {
      v9 = "COLD";
    }

    else if ((v4 & 0x20000) != 0)
    {
      v9 = "WARM";
    }

    else if ((v4 & 0x100000) != 0)
    {
      v9 = "HOST";
    }

    else
    {
      if ((v4 & 0x80000) == 0)
      {
        if ((v4 & 0x200000) != 0)
        {
          MEMORY[0x29C29E950](&v19, "VHOT");
          v6 = 0;
        }

        else
        {
          if ((v4 & 4) != 0)
          {
            std::string::push_back(&v19, 80);
            v4 = *(a1 + 12);
          }

          LOWORD(v5) = v4;
          if ((v4 & 8) != 0)
          {
            std::string::push_back(&v19, 84);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x80) != 0)
          {
            std::string::push_back(&v19, 70);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x10) != 0)
          {
            std::string::push_back(&v19, 73);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x20) != 0)
          {
            std::string::push_back(&v19, 85);
            v5 = *(a1 + 12);
          }

          if (v5)
          {
            std::string::push_back(&v19, 69);
            v5 = *(a1 + 12);
          }

          if ((v5 & 2) != 0)
          {
            std::string::push_back(&v19, 65);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x40) != 0)
          {
            std::string::push_back(&v19, 72);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x800) != 0)
          {
            std::string::push_back(&v19, 67);
            v5 = *(a1 + 12);
          }

          if ((v5 & 0x200) != 0)
          {
            xofSvcs_ClrRtiData();
            v5 = *(a1 + 12);
          }

          v6 = (v4 >> 3) & 1;
          if ((v5 & 0x400) != 0)
          {
            xofSvcs_ClrOrbData();
            xofSvcs_ClrBceOrbData();
            g_OrbitDataAvailable = 0;
            g_BceOrbitDataInjected = 0;
          }
        }

LABEL_40:
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
            v12 = &v19;
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v12 = v19.__r_.__value_.__r.__words[0];
            }

            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ValidClearReq DeleteReq,%s,MERstReq,%u\n", v11, "GNC", 73, "GncP12_41HandleClearPosData", v12, v6);
            LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v19;
          }

          else
          {
            v14 = v19.__r_.__value_.__r.__words[0];
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v15 = v19.__r_.__value_.__l.__size_;
          }

          GncP16_27UpdateStateClearNVReqRcvd(v14, v15, v6);
          if (g_GncPStateInfo > 0x10u)
          {
            goto LABEL_56;
          }

          v16 = 1;
          if (((1 << g_GncPStateInfo) & 0x10C08) != 0)
          {
            goto LABEL_59;
          }

          if (g_GncPStateInfo != 4)
          {
LABEL_56:
            v16 = 0;
          }

          GncP04_21SendClearGnssAck(v16);
        }

        else
        {
          GncP04_21SendClearGnssAck(1);
        }

LABEL_59:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        goto LABEL_61;
      }

      v9 = "VHOT";
    }

    MEMORY[0x29C29E950](&v19, v9);
    v6 = 1;
    goto LABEL_40;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_41HandleClearPosData", 517);
    LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
  }

LABEL_61:
  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2996584C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GncP12_42HandleAssistStatus(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_42HandleAssistStatus");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP16_22UpdateStateAssistDataRcvd(0);
    if (GN_AGNSS_Get_Assist_Req(&v12, v25, v24, v23, v22, v21, v20))
    {
      v4 = gnssOsa_Calloc("GncP12_42HandleAssistStatus", 355, 1, 0x588uLL);
      if (v4)
      {
        v5 = v4;
        v4[3] = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        *(v5 + 16) = v12;
        *(v5 + 17) = v13;
        *(v5 + 19) = v16;
        if (v15 == 1)
        {
          GncP11_15PopulateGnssAssist((v5 + 6), v25, v14, v18, v19, v17);
        }

        else
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 488) = 0;
        *(v5 + 256) = 0;
        *(v5 + 720) = 0;
        *(v5 + 952) = 0;
        *(v5 + 1184) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASSIST_STATUS_RSP =>GNM\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_42HandleAssistStatus");
          LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
        }

        AgpsSendFsmMsg(134, 128, 8786948, v5);
      }
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP12_42HandleAssistStatus", 517);
    LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_32HandleGADRefPos(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RPOS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_32HandleGADRefPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP12_09InjectGadRefPos(a1 + 12, *(a1 + 64));
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP12_32HandleGADRefPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_09InjectGadRefPos(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x24uLL, 0, 0x24uLL);
  __s = *a1;
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v5 = 0;
LABEL_5:
    v29 = v5;
    v30 = *(a1 + 20);
    v6 = *(a1 + 36);
    if (v6)
    {
      v7 = v6 != 1;
      v32 = *(a1 + 28);
      v8 = *(a1 + 40);
    }

    else
    {
      v7 = -1;
      v8 = -1;
    }

    v31 = v7;
    v35 = v8;
    v33 = *(a1 + 30);
    v12 = *(a1 + 32);
    v13 = vcvts_n_f32_u32(v12, 1uLL);
    if (v12 >= 0xB4)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13;
    }

    v34 = v14;
    v36 = *(a1 + 41);
    v37 = -1;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G GADPOS LatSign,%d,Lat,%d,Long,%d,UncSemiMajor,%d,UncSemiMinor,%d,OrienMajorAxis,%d,UncAlt,%d,Confi,%d,AltDir,%d,Alt,%d\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP12_09InjectGadRefPos", v29, v30, HIDWORD(v30), v33, HIBYTE(v33), v34, v35, v36, v31, v32);
      LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G GADPOS Verdirect,%d,Bearing,%d,HorSpeed,%d,VerSpeed,%d,HorUncSpeed,%d,VerUncSpeed,%d\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 73, "GncP12_09InjectGadRefPos", v37, *(&v37 + 1), *(&v37 + 3), SBYTE5(v37), BYTE6(v37), HIBYTE(v37));
      LbsOsaTrace_WriteLog(8u, __str, v18, 4, 1);
    }

    v19 = *(a1 + 48);
    if (v19 >= 5)
    {
      v19 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Trust,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP12_09InjectGadRefPos", 770, *(a1 + 48));
        LbsOsaTrace_WriteLog(8u, __str, v21, 2, 1);
        v19 = 0;
      }
    }

    v22 = a2 - 1;
    if (a2 - 1) < 0xA && ((0x36Fu >> v22))
    {
      v23 = dword_29975FC10[v22];
    }

    else
    {
      v23 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Source,%u\n", (*&g_MacClockTicksToMsRelation * v24), "GNC", 87, "GncP12_09InjectGadRefPos", 770, a2);
        LbsOsaTrace_WriteLog(8u, __str, v25, 2, 1);
        v23 = 0;
      }
    }

    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    result = GN_AGPS_Set_GAD_Ref_Pos(&__s, v19, v23);
    if ((result & 1) == 0)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GadPos\n");
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

  if (v4 == 2)
  {
    v5 = 1;
    goto LABEL_5;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v27 = *(a1 + 16);
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx LatSign,%u\n", (*&g_MacClockTicksToMsRelation * v10));
LABEL_28:
    result = LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
  }

LABEL_29:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP12_04HandleGpsRefTime(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_04HandleGpsRefTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    memset_s(&__s, 0xCuLL, 0, 0xCuLL);
    v4 = *(a1 + 12);
    v5 = *(a1 + 136);
    __s = *(a1 + 132);
    v31 = v4;
    v32 = *(a1 + 24);
    if (v5 > 0xB)
    {
      goto LABEL_39;
    }

    v6 = 1 << v5;
    if ((v6 & 0x9E0) != 0)
    {
      v7 = *(a1 + 16);
      goto LABEL_11;
    }

    if ((v6 & 0x1E) != 0)
    {
      v7 = 999;
    }

    else
    {
LABEL_39:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v28 = mach_continuous_time();
        v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v28), "GNC", 87, "GncP12_04HandleGpsRefTime", 770);
        LbsOsaTrace_WriteLog(8u, __str, v29, 2, 1);
      }

      v7 = -1;
    }

LABEL_11:
    v33 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G RefTime OSTime,%u,TOW,%d,WeekNo,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP12_04HandleGpsRefTime", __s, v31, v32, v33);
      LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
    }

    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if ((GN_AGPS_Set_Ref_Time(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G Time\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
      LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
    }

    if (*(a1 + 32))
    {
      memset_s(&v34, 0x98uLL, 0, 0x98uLL);
      v15 = *(a1 + 32);
      if (v15 >= 0x18)
      {
        LOBYTE(v15) = 24;
      }

      v35 = v15;
      v34 = *(a1 + 12);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist NumTOWA,%d,TOWms,%d\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 73, "GncP12_04HandleGpsRefTime", v35, v34);
        LbsOsaTrace_WriteLog(8u, __str, v17, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist SV,AntiSF,AlertF,TLMResrvd,TLMWord\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 73, "GncP12_04HandleGpsRefTime");
        LbsOsaTrace_WriteLog(8u, __str, v19, 4, 1);
      }

      if (v35)
      {
        v20 = 0;
        v21 = (a1 + 38);
        v22 = v36;
        do
        {
          *(v22 - 5) = *(v21 - 4) + 1;
          *(v22 - 4) = *(v21 - 1);
          *(v22 - 3) = *v21;
          *(v22 - 1) = *(v21 - 3);
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v23 = mach_continuous_time();
            v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TOWAssist %2d,%7d,%7d,%10d,%8d\n", (*&g_MacClockTicksToMsRelation * v23), "GNC", 73, "GncP12_04HandleGpsRefTime", *(v22 - 5), *(v22 - 1), *v22, *(v22 - 4), *(v22 - 3));
            LbsOsaTrace_WriteLog(8u, __str, v24, 4, 1);
          }

          if (v20 > 0xE)
          {
            break;
          }

          v21 += 3;
          ++v20;
          v22 += 6;
        }

        while (v20 < v35);
      }

      if ((GN_AGPS_Set_TOW_Assist(&v34) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G TOW\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP12_04HandleGpsRefTime", 257);
        v10 = 2;
        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP12_04HandleGpsRefTime", 517);
    v10 = 0;
LABEL_32:
    LbsOsaTrace_WriteLog(8u, __str, v9, v10, 1);
  }

LABEL_33:
  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_02HandleGpsNavModel(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_NAVM_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_02HandleGpsNavModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 69, "GncP12_02HandleGpsNavModel", 517);
    v19 = 0;
LABEL_24:
    LbsOsaTrace_WriteLog(8u, __str, v18, v19, 1);
    goto LABEL_25;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP12_02HandleGpsNavModel", 513);
    v19 = 2;
    goto LABEL_24;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (*(a1 + 24))
  {
    v5 = 0;
    v6 = (v4 + 38);
    do
    {
      memset_s(&__s, 0x48uLL, 0, 0x48uLL);
      __s = *(v6 - 38) + 1;
      v24 = *(v6 - 37);
      v25 = *(v6 - 18);
      v26 = v6[10];
      v27 = *(v6 - 34);
      v28 = *(v6 - 5);
      v29 = 0;
      v30 = *(v6 - 15);
      v31 = v6[9];
      v32 = *(v6 - 16);
      v33 = *(v6 - 4);
      v34 = *v6;
      v35 = v6[17];
      v36 = *(v6 - 1);
      v37 = v6[18];
      v38 = v6[4];
      v39 = v6[3];
      v40 = v6[12];
      v41 = v6[11];
      v42 = *(v6 - 3);
      v43 = *(v6 + 1);
      *&v7 = *(v6 + 5);
      *(&v7 + 1) = *(v6 + 13);
      v44 = v7;
      v45 = *(v6 + 19);
      v46 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph SvId,%d,CodeOnL2,%d,URA,%d,SVHealth,%d,FitIntFlag,%d,AODA,%d,L2PFlag,%d,TGD,%d,AF2,%d,Week,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_02HandleGpsNavModel", __s, v24, v25, HIBYTE(v25), v26, HIBYTE(v26), v27, v28, SHIBYTE(v28), v29);
        LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph TOC,%d,TOE,%d,IODC,%d,Af1,%d,dn,%d,IDot,%d,Crs,%d,Crc,%d,Cus,%d,Cuc,%d\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncP12_02HandleGpsNavModel", v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Eph Cis,%d,Cic,%d,af0,%d,M0,%d,e,%d,APowHalf,%d,Omega0,%d,I0,%d,W,%d,OmegaDot,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP12_02HandleGpsNavModel", v40, v41, v42, v43, v44, DWORD1(v44), DWORD2(v44), HIDWORD(v44), v45, HIDWORD(v45));
        LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
      }

      if ((GN_AGPS_Set_Eph_El(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G EPH SatID,%u\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_02HandleGpsNavModel", 257, __s);
        LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
      }

      ++v5;
      v6 += 42;
    }

    while (v5 < *(a1 + 24));
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 16) = 0;
LABEL_25:
  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_01HandleGpsAlmanac(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ALMANAC_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_01HandleGpsAlmanac");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (*(a1 + 16))
    {
      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      v4 = *(a1 + 16);
      if (*(a1 + 32))
      {
        v5 = 0;
        do
        {
          memset_s(&__s, 0x24uLL, 0, 0x24uLL);
          v20 = *v4 + 1;
          __s = v4[2];
          v21 = v4[7];
          v22 = v4[6];
          v23 = *(v4 + 30);
          v24 = *(v4 + 2);
          v25 = *(v4 + 4);
          v26 = *(v4 + 14);
          v27 = *(v4 + 12);
          v28 = 0;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v6 = mach_continuous_time();
            v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM SvId,%d,Wna,%d,SVHealth,%d,toa,%d,Af0,%d,Af1,%d,e,%d\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP12_01HandleGpsAlmanac", v20, __s, v21, v22, v23, SHIWORD(v23), v24);
            LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ALM delta_I,%d,OmegaDot,%d,APowHalf,%d,Omega0,%d,w,%d,M0,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_01HandleGpsAlmanac", v25, v26, v27, DWORD1(v27), DWORD2(v27), HIDWORD(v27));
            LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
          }

          if ((GN_AGPS_Set_Alm_El(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v10 = mach_continuous_time();
            v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G ALM SatID,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_01HandleGpsAlmanac", 257, v20);
            LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
          }

          ++v5;
          v4 += 36;
        }

        while (v5 < *(a1 + 32));
        v4 = *(a1 + 16);
      }

      if (v4)
      {
        free(v4);
      }

      *(a1 + 16) = 0;
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 87, "GncP12_01HandleGpsAlmanac", 513);
      LbsOsaTrace_WriteLog(8u, __str, v15, 2, 1);
    }

    v16 = *(a1 + 24);
    if (v16)
    {
      free(v16);
    }

    *(a1 + 24) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_01HandleGpsAlmanac", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  v17 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_07HandleGpsRti(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_RTI_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_07HandleGpsRti");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v18[0] = 0;
    v18[1] = 0;
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    LOBYTE(v4) = *(a1 + 12);
    if (v4)
    {
      v5 = 0;
      do
      {
        if (v4 <= (v5 + 1))
        {
          v6 = v5 + 1;
        }

        else
        {
          v6 = v4;
        }

        v7 = (v6 + ~v5);
        if (v7 >= 0xF)
        {
          v7 = 15;
        }

        memset_pattern16(__s, &unk_299729150, 4 * v7 + 4);
        v8 = 0;
        v9 = v5;
        do
        {
          v10 = v8;
          *(v18 + v8) = *(a1 + 13 + v5 + v8) + 1;
          ++v8;
        }

        while (v10 <= 0xE && v8 + v5 < v4);
        if ((GN_AGNSS_Set_Bad_SV_List(v8, __s, v18) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RTI,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP12_07HandleGpsRti", 257, v8);
          LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
        }

        v5 += v8;
        v4 = *(a1 + 12);
      }

      while (v4 > (v9 + v8));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 69, "GncP12_07HandleGpsRti", 517);
    LbsOsaTrace_WriteLog(8u, __str, v14, 0, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_13HandleNwGpsPos(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NETWORK_POS_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_13HandleNwGpsPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    GncP12_09InjectGadRefPos(a1 + 12, 10);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP12_13HandleNwGpsPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_33HandleIonoData(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_IONO_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_33HandleIonoData");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    memset_s(&__s, 0x10uLL, 0, 0x10uLL);
    if (*(a1 + 12) == 1)
    {
      __s = 0;
      v15 = *(a1 + 16);
      v16 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G Iono ZCount,%d,A0,%d,A1,%d,A2,%d,A3,%d,B0,%d,B1,%d,B2,%d,B3,%d\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_33HandleIonoData", __s, v15, SBYTE1(v15), SBYTE2(v15), SBYTE3(v15), SBYTE4(v15), SBYTE5(v15), SBYTE6(v15), SHIBYTE(v15));
        LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
      }

      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      if ((GN_AGPS_Set_Ion(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G IONO\n");
LABEL_14:
        v8 = v6;
        v9 = 2;
        goto LABEL_15;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v13 = *(a1 + 12);
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:Iono Type,%u\n", (*&g_MacClockTicksToMsRelation * v10));
      goto LABEL_14;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_33HandleIonoData", 517);
    v9 = 0;
LABEL_15:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_37HandleUtcModel(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_UTC_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_37HandleUtcModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (*(a1 + 12) == 1)
    {
      memset_s(&__s, 0x14uLL, 0, 0x14uLL);
      __s = 0;
      v15 = *(a1 + 16);
      v16 = *(a1 + 24);
      v17 = *(a1 + 28);
      v18 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:UTC ZCount,%d,A1,%d,A0,%d,Tot,%d,Wnt,%d,dtLs,%d,WNLSF,%d,DN,%d,dtLSF,%d\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP12_37HandleUtcModel", __s, v15, HIDWORD(v15), v16, BYTE1(v16), SBYTE2(v16), HIBYTE(v16), v17, SHIBYTE(v17));
        LbsOsaTrace_WriteLog(8u, __str, v5, 4, 1);
      }

      *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      GncP16_22UpdateStateAssistDataRcvd(__str);
      if ((GN_AGPS_Set_UTC(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G UTC\n");
LABEL_14:
        v8 = v6;
        v9 = 2;
        goto LABEL_15;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v13 = *(a1 + 12);
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:UTC Type,%u\n", (*&g_MacClockTicksToMsRelation * v10));
      goto LABEL_14;
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_37HandleUtcModel", 517);
    v9 = 0;
LABEL_15:
    LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_35HandleGnssRefTime(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTIME_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_35HandleGnssRefTime");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP12_35HandleGnssRefTime", 517);
      v9 = 0;
LABEL_20:
      LbsOsaTrace_WriteLog(8u, __str, v8, v9, 1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  memset_s(&__s, 0x14uLL, 0, 0x14uLL);
  v20 = GncP11_03ConvertGnssIDToGn(*(a1 + 424));
  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (v20)
  {
    v21 = *(a1 + 12);
    v22 = *(a1 + 20) + 1000 * *(a1 + 16);
    __s = *(a1 + 32);
    v4 = *(a1 + 428);
    if (v4 > 0xB)
    {
      goto LABEL_27;
    }

    v5 = 1 << v4;
    if ((v5 & 0x9E0) != 0)
    {
      v6 = *(a1 + 24);
      goto LABEL_14;
    }

    if ((v5 & 0x1E) != 0)
    {
      v6 = 999;
    }

    else
    {
LABEL_27:
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP12_35HandleGnssRefTime", 770);
        LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
      }

      v6 = -1;
    }

LABEL_14:
    v23 = v6;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS RefTime OSTime,%u,Type,%d,Day,%d,TOD,%d,RMS,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP12_35HandleGnssRefTime", __s, v20, v21, v22, v23);
      LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
    }

    if ((GN_AGNSS_Set_Ref_Time(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS Time\n");
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v18 = *(a1 + 424);
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSId,%u\n", (*&g_MacClockTicksToMsRelation * v10));
LABEL_19:
    v8 = v11;
    v9 = 2;
    goto LABEL_20;
  }

LABEL_21:
  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_40HandleGnssRti(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_RTI_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_40HandleGnssRti");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if (*(a1 + 12))
    {
      v4 = 0;
      v5 = a1 + 272;
      do
      {
        memset(v17, 0, sizeof(v17));
        memset_s(__s, 0x100uLL, 0, 0x100uLL);
        v6 = 0;
        while (v4 < *(a1 + 12))
        {
          v7 = GncP11_03ConvertGnssIDToGn(*(v5 + 4 * v4 - 256));
          __s[v6] = v7;
          if (v7)
          {
            *(v17 + v6++) = *(v5 + v4) + 1;
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 87, "GncP12_40HandleGnssRti", 515);
            LbsOsaTrace_WriteLog(8u, __str, v9, 2, 1);
          }

          ++v4;
          if (v6 >= 0x40u)
          {
            v4 = v4;
            goto LABEL_15;
          }
        }

        v4 = v4;
        if (!v6)
        {
          continue;
        }

LABEL_15:
        if ((GN_AGNSS_Set_Bad_SV_List(v6, __s, v17) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:RTI,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 87, "GncP12_40HandleGnssRti", 257, v6);
          LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
        }
      }

      while (v4 < *(a1 + 12));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_40HandleGnssRti", 517);
    LbsOsaTrace_WriteLog(8u, __str, v13, 0, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_39HandleTimeModel(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_TIME_MODEL_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_39HandleTimeModel");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 69, "GncP12_39HandleTimeModel", 517);
    v14 = 0;
LABEL_26:
    LbsOsaTrace_WriteLog(8u, __str, v13, v14, 1);
    goto LABEL_27;
  }

  memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  __s = GncP11_03ConvertGnssIDToGn(*(a1 + 12));
  if (!__s)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSIDFrom\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 87, "GncP12_39HandleTimeModel", 515);
    v14 = 2;
    goto LABEL_26;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (*(a1 + 16))
  {
    v4 = 0;
    v5 = (a1 + 42);
    while (1)
    {
      v24 = GncP11_03ConvertGnssIDToGn(*(v5 - 3));
      if (v24)
      {
        break;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSIDTo\n");
LABEL_19:
        LbsOsaTrace_WriteLog(8u, __str, v11, 2, 1);
      }

LABEL_20:
      v5 += 12;
      if (++v4 >= *(a1 + 16))
      {
        goto LABEL_27;
      }
    }

    v25 = 0;
    v19 = *(v5 - 11);
    v21 = *(v5 - 9);
    v22 = *(v5 - 10);
    v6 = *v5;
    if (((*v5 + 64) & 0xFF80) != 0)
    {
      LOBYTE(v6) = 127;
    }

    v23 = v6;
    v7 = *(v5 - 1);
    if (v7 == 0xFFFF)
    {
      LOWORD(v7) = 0x7FFF;
    }

    v20 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G TIMEMDL TypeFrm,%d,TOW,%d,Week,%d,tA0,%d,tA1,%d,tA2,%d,deltaT,%d,TypeTo,%d\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 73, "GncP12_39HandleTimeModel", __s, v19, v20, v21, HIDWORD(v21), v22, v23, v24);
      LbsOsaTrace_WriteLog(8u, __str, v9, 4, 1);
    }

    if ((GN_AGNSS_Set_Time_Model(&__s) & 1) != 0 || !LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS TimeModel GNSSID,%u\n", v10);
    goto LABEL_19;
  }

LABEL_27:
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_03HandleGpsAcqAssist(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_ACQ_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_03HandleGpsAcqAssist");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    GncP16_22UpdateStateAssistDataRcvd(__str);
    if (*(a1 + 28))
    {
      v4 = 0;
      do
      {
        memset_s(&__s, 0xE8uLL, 0, 0xE8uLL);
        v5 = 0;
        v6 = 0;
        __s = *(a1 + 12);
        v7 = v4;
        v4 += 16;
        v8 = (a1 + 41 + 12 * v7);
        while (v7 < *(a1 + 28))
        {
          v9 = &__s + v5;
          v9[6] = *(v8 - 11) + 1;
          *(v9 + 4) = *(v8 - 9);
          v9[10] = *(v8 - 10);
          v9[11] = *(v8 - 7);
          *(v9 + 6) = *(v8 - 5);
          v9[14] = *(v8 - 6);
          *(v9 + 15) = *(v8 - 3);
          v10 = *(v8 - 1);
          if (v10 == 255)
          {
            LOBYTE(v10) = 0;
          }

          v9[17] = v10;
          v11 = *v8;
          if (v11 == 255)
          {
            LOBYTE(v11) = 0;
          }

          v9[18] = v11;
          if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v12 = mach_continuous_time();
            v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ACQ SvId,%d,D0,%d,D1,%d,DoppUnc,%d,CodePhase,%d,IntCodePh,%d,GPSBitNo,%d,CodeWind,%d,Azi,%d,Elev,%d\n", (*&g_MacClockTicksToMsRelation * v12), "GNC", 73, "GncP12_03HandleGpsAcqAssist", v9[6], *(v9 + 4), v9[10], v9[11], *(v9 + 6), v9[14], v9[15], v9[16], v9[17], v9[18]);
            LbsOsaTrace_WriteLog(8u, __str, v13, 4, 1);
          }

          ++v7;
          --v6;
          v5 += 14;
          v8 += 12;
          if (v5 == 224)
          {
            LOBYTE(v14) = 16;
            goto LABEL_17;
          }
        }

        v14 = -v6;
        v4 = v7;
LABEL_17:
        v24 = v14;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:G ACQ RefGPSTOW,%d,NumAA,%d\n", (*&g_MacClockTicksToMsRelation * v15), "GNC", 73, "GncP12_03HandleGpsAcqAssist", __s, v24);
          LbsOsaTrace_WriteLog(8u, __str, v16, 4, 1);
        }

        if ((GN_AGPS_Set_Acq_Ass(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:G ACQ\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP12_03HandleGpsAcqAssist", 257);
          LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
        }
      }

      while (*(a1 + 28) > v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 69, "GncP12_03HandleGpsAcqAssist", 517);
    LbsOsaTrace_WriteLog(8u, __str, v20, 0, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_34HandleGnssAcqAssist(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_ASST_GNSS_ACQ_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_34HandleGnssAcqAssist");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      goto LABEL_38;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v22), "GNC", 69, "GncP12_34HandleGnssAcqAssist", 517);
    v24 = 0;
    goto LABEL_37;
  }

  *__str = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  GncP16_22UpdateStateAssistDataRcvd(__str);
  if (!*(a1 + 25))
  {
    goto LABEL_38;
  }

  v4 = 0;
  do
  {
    memset_s(&__s, 0x3D0uLL, 0, 0x3D0uLL);
    v31 = *(a1 + 24);
    v30 = GncP11_03ConvertGnssIDToGn(*(a1 + 20));
    if (!v30)
    {
      v5 = *(a1 + 16);
      if (v5 != -1)
      {
        v6 = 0;
        goto LABEL_10;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        break;
      }

      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GnssTimeID and GpsTow\n", (*&g_MacClockTicksToMsRelation * v25), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 515);
      v24 = 2;
LABEL_37:
      LbsOsaTrace_WriteLog(8u, __str, v23, v24, 1);
      break;
    }

    v5 = 0;
    v6 = *(a1 + 12);
LABEL_10:
    v7 = 0;
    __s = v6;
    v29 = v5;
    v8 = (a1 + 48 + 24 * v4);
    while (v4 < *(a1 + 25))
    {
      v9 = &v33[5 * v7];
      v10 = GncP11_03ConvertGnssIDToGn(*(v8 - 4));
      *v9 = v10;
      if (v10)
      {
        *(v9 + 4) = *(v8 - 20) + 1;
        *(v9 + 6) = *(v8 - 10);
        v11 = *(v8 - 1);
        *(v9 + 10) = *(v8 - 6);
        v12 = (v11 * 0.703125);
        if (v11 > 0x1FF)
        {
          LOWORD(v12) = 0;
        }

        *(v9 + 7) = v12;
        if ((*v8 & 0x80u) == 0)
        {
          v13 = (*v8 * 0.703125);
        }

        else
        {
          v13 = 0;
        }

        *(v9 + 16) = v13;
        ++v7;
        if (!LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 1))
        {
          goto LABEL_23;
        }

        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS ACQ Type,%d,SvId,%d,D0,%d,D1,%d,DoppUnc,%d,CodePhase,%d,IntCodePh,%d,CodeWin,%d,Azi,%d,Elev,%d\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 73, "GncP12_34HandleGnssAcqAssist", *v9, *(v9 + 4), *(v9 + 3), *(v9 + 8), *(v9 + 9), *(v9 + 5), *(v9 + 12), *(v9 + 13), *(v9 + 7), *(v9 + 16));
        v16 = 4;
        goto LABEL_22;
      }

      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSSID,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 515, *(v8 - 4));
        v16 = 2;
LABEL_22:
        LbsOsaTrace_WriteLog(8u, __str, v15, v16, 1);
      }

LABEL_23:
      ++v4;
      v8 += 24;
      if (v7 >= 0x30)
      {
        v4 = v4;
        goto LABEL_26;
      }
    }

    v4 = v4;
    if (!v7)
    {
      continue;
    }

LABEL_26:
    v32 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:GNSS ACQ Ref_GNSSTOD,%d,RefGPSTOW,%d,GNSSType,%d,Conf,%d,Num_AA,%d\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 73, "GncP12_34HandleGnssAcqAssist", __s, v29, v30, v31, v32);
      LbsOsaTrace_WriteLog(8u, __str, v19, 4, 1);
    }

    if ((GN_AGNSS_Set_Acq_Ass(&__s) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:GNSS ACQ\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP12_34HandleGnssAcqAssist", 257);
      LbsOsaTrace_WriteLog(8u, __str, v21, 2, 1);
    }
  }

  while (v4 < *(a1 + 25));
LABEL_38:
  v26 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t GncP12_10ClearPeRtiInfo(void)
{
  v5 = *MEMORY[0x29EDCA608];
  result = GN_GPS_Set_RTI_Bad_SV_List(0, 0, 0);
  if ((result & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:ClearRTI\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 87, "GncP12_10ClearPeRtiInfo", 257);
      result = LbsOsaTrace_WriteLog(8u, __str, v2, 2, 1);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP12_06HandleGpsFta(uint64_t a1)
{
  v31 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_PULSE_IND\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP12_06HandleGpsFta");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = g_GncPStateInfo;
    if ((g_GncPStateInfo - 9) > 0xFDu)
    {
      memset_s(&__s, 0x20uLL, 0, 0x20uLL);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:FTA,Wk,%u,TowSec,%u,TowFracNs,%u,UncUs,%u, OsTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP12_06HandleGpsFta", *(a1 + 12), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 32));
        LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
      }

      LODWORD(v9) = *(a1 + 16);
      LODWORD(v10) = *(a1 + 20);
      __s = v9 + v10 * 0.000000001;
      v25 = *(a1 + 12);
      v26 = *(a1 + 24);
      v27 = -1;
      v28 = *(a1 + 32);
      v29 = 1;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ASST:FTA G,TOW,%f,WeekNo,%d,AbsRMSus,%d,RelRMSns,%d,OS_Time_ms,%u,MultPulses,%d\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 73, "GncP12_06HandleGpsFta", __s, v25, v26, v27, v28, v29);
        LbsOsaTrace_WriteLog(8u, __str, v14, 4, 1);
      }

      if (GN_AGPS_Set_EFSP_Time(&__s))
      {
        v15 = 1;
      }

      else
      {
        v15 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ASST:FTA G\n", (*&g_MacClockTicksToMsRelation * v16), "GNC", 87, "GncP12_06HandleGpsFta", 257);
          LbsOsaTrace_WriteLog(8u, __str, v17, 2, 1);
          v15 = 0;
        }
      }

      v18 = gnssOsa_Calloc("GncP12_06HandleGpsFta", 1281, 1, 0x14uLL);
      if (v18)
      {
        v19 = v18;
        *(v18 + 3) = *(a1 + 36);
        *(v18 + 4) = v15;
        if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_FTA_STATUS_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 73, "GncP12_06HandleGpsFta");
          LbsOsaTrace_WriteLog(8u, __str, v21, 4, 1);
        }

        AgpsSendFsmMsg(134, 131, 8595204, v19);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Ignored in State,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 73, "GncP12_06HandleGpsFta", 262, v4);
      v7 = 4;
LABEL_9:
      LbsOsaTrace_WriteLog(8u, __str, v6, v7, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP12_06HandleGpsFta", 517);
    v7 = 0;
    goto LABEL_9;
  }

  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

BOOL G5K_ME_Poll_New_Meas(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  result = 0;
  v204[1] = *MEMORY[0x29EDCA608];
  v204[0] = 0.0;
  *a6 = 0;
  if (*(a1 + 402) == 1)
  {
    v193 = a1;
    API_Get_UTC_Cor(1, v204);
    v11 = -0.5;
    if (v204[0] > 0.0)
    {
      v11 = 0.5;
    }

    v12 = v204[0] + v11;
    if (v204[0] + v11 <= 2147483650.0)
    {
      if (v12 < -2147483650.0)
      {
        v194 = 0;
        goto LABEL_10;
      }

      v13 = v12;
    }

    else
    {
      LOBYTE(v13) = -1;
    }

    v194 = v13;
LABEL_10:
    v14 = a4;
    v15 = (v193 + 10848);
    v16 = v193;
    if (*a3 && *(v193 + 448) - *a3 < 0 || *(v193 + 403) == 1 && *a4 && *(v193 + 512) - *a4 < 0 || *(v193 + 408) == 1 && (v17 = a5[672]) != 0 && *(v193 + 10816) - v17 < 0 || *(v193 + 412) == 1 && (v18 = a5[673]) != 0 && *(v193 + 10820) - v18 < 0 || *(v193 + 416) == 1 && (v19 = a5[674]) != 0 && *(v193 + 10824) - v19 < 0 || *(v193 + 420) == 1 && (v20 = a5[675]) != 0 && *(v193 + 10828) - v20 < 0)
    {
      *(v193 + 403) = 0;
      *(v193 + 408) = 0;
      *(v193 + 412) = 0;
      *(v193 + 416) = 0;
      *(v193 + 420) = 0;
      *(v193 + 465) = 0;
      *(a4 + 7460) = 0;
      *a6 = 1;
    }

    v21 = *(v193 + 508);
    if (v21 && v21 == *(v193 + 448) && *(v193 + 460) > *(a2 + 948))
    {
      EvCrt_d("ME_Poll_New: Invalid TTick", v21);
LABEL_73:
      v51 = 0;
      *(v16 + 424) = 0;
      *(v16 + 412) = 0;
      *(v16 + 416) = 0;
      *(v16 + 420) = 0;
      *(v16 + 413) = 0;
      *(v16 + 417) = 0;
      *(v16 + 421) = 0;
      *(v193 + 402) = 0;
      *(v193 + 410) = 0;
      do
      {
        v52 = v16 + 540 + v51;
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 15) = 0;
        v51 += 20;
      }

      while (v51 != 160);
      v53 = 0;
      v54 = v16;
      do
      {
        *(v54 + 752) = 0;
        *(v54 + 720) = 0uLL;
        *(v54 + 736) = 0uLL;
        *(v54 + 704) = 0uLL;
        v55 = v16 + 3392 + v53;
        *(v55 + 32) = 0;
        *v55 = 0uLL;
        *(v55 + 16) = 0uLL;
        *(v54 + 8173) = 0;
        *(v54 + 8160) = 0uLL;
        v53 += 36;
        *(v54 + 8144) = 0uLL;
        *(v54 + 8128) = 0uLL;
        v54 += 56;
      }

      while (v53 != 1728);
      *(v16 + 11172) = 0;
      *(v16 + 11176) = 0;
      *(v16 + 11180) = 0u;
      *(v16 + 11196) = 0u;
      *(v16 + 11212) = 0u;
      *(v16 + 11228) = 0u;
      *(v16 + 11241) = 0;
      *(v15 + 312) = 0;
      *(v16 + 11380) = 0;
      *(v16 + 11252) = 0u;
      *(v16 + 11268) = 0u;
      *(v16 + 11284) = 0u;
      *(v16 + 11300) = 0u;
      *(v16 + 11316) = 0u;
      *(v16 + 11332) = 0u;
      *(v16 + 11348) = 0u;
      *(v16 + 11364) = 0u;
      *(v15 + 313) = v194;
      result = *(v16 + 508) == 0;
      *(v16 + 10816) = 0u;
      goto LABEL_78;
    }

    v22 = a4 + 4096;
    *(v193 + 508) = 0;
    v23 = *(v193 + 512);
    if (*(v193 + 403) != 1 || v23 != *(v193 + 448))
    {
      if (v23)
      {
        v28 = *(v193 + 398) + 1;
        *(v193 + 398) = v28;
        EvLog_nd("ME_Poll_New: Missed {H", 5, v10, v28, *(v193 + 406), *(v193 + 400), v23, *(v193 + 448));
        v22 = a4 + 4096;
        v14 = a4;
      }

      v29 = 0;
      v30 = *(v193 + 468);
      *v14 = *(v193 + 448);
      *(v14 + 4) = v30;
      *(v14 + 21) = 0;
      *(v14 + 24) = 0;
      do
      {
        v31 = v14 + 2720 + v29;
        *(v31 + 32) = 0;
        *v31 = 0uLL;
        *(v31 + 16) = 0uLL;
        v29 += 36;
      }

      while (v29 != 1728);
      *(v22 + 3360) = 0;
      *(v22 + 3361) = v194;
      goto LABEL_48;
    }

    v24 = v23 - *a4;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v23 - *a4;
    }

    v26 = v25;
    *(a4 + 24) = 0;
    *(a4 + 21) = 0;
    v198 = (v193 + 10832);
    if (*(v193 + 11158) == 1)
    {
      for (i = 0; i != 160; i += 20)
      {
        if (*(v193 + 558 + i) == 1)
        {
          *v198 = v23;
          goto LABEL_80;
        }
      }

      if (v23 - *(v193 + 10832) >= 12001)
      {
        *(v193 + 11120) = 0u;
        *(v193 + 11136) = 0u;
        *(v193 + 11088) = 0u;
        *(v193 + 11104) = 0u;
        *(v193 + 11056) = 0u;
        *(v193 + 11072) = 0u;
        *(v193 + 11024) = 0u;
        *(v193 + 11040) = 0u;
        *(v193 + 10992) = 0u;
        *(v193 + 11008) = 0u;
        *(v193 + 10960) = 0u;
        *(v193 + 10976) = 0u;
        *(v193 + 10928) = 0u;
        *(v193 + 10944) = 0u;
        *(v193 + 10896) = 0u;
        *(v193 + 10912) = 0u;
        *(v193 + 10864) = 0u;
        *(v193 + 10880) = 0u;
        *v198 = 0u;
        *(v193 + 10848) = 0u;
        *(v193 + 11151) = 0;
      }

LABEL_80:
      v57 = 20;
      v58 = (v193 + 10848);
      do
      {
        if (*v58)
        {
          if (v23 - *(v58 - 2) < 150000)
          {
            v59 = *(v58 - 1) + v24;
            *(v58 - 1) = v59;
            if (*(v58 - 12) == 2)
            {
              if (v59 >= 86400000)
              {
                v60 = v59 - 86400000;
LABEL_89:
                *(v58 - 1) = v60;
              }
            }

            else if (v59 >= 604800000)
            {
              v60 = v59 - 604800000;
              goto LABEL_89;
            }
          }

          else
          {
            *(v58 - 6) = 0;
            *(v58 - 2) = 0;
          }
        }

        v58 += 8;
        --v57;
      }

      while (v57);
    }

    v61 = 0;
    v192 = a2 + 1394;
    v62 = v193 + 540;
    v63 = v193 + 10836;
    v64 = 100.0 / v26;
    v201 = v23;
    v195 = a2;
    do
    {
      v65 = v62 + 20 * v61;
      if (*(v65 + 18) == 1)
      {
        *v198 = v23;
        *(v15 + 310) = 1;
        v66 = *(v65 + 16);
        if (v66 <= 0xF)
        {
          v66 = 0;
          *(v65 + 16) = 0;
        }

        v67 = *(v65 + 17);
        if (v67 <= 0xF)
        {
          v67 = 0;
          *(v65 + 17) = 0;
        }

        if (v67 == v66)
        {
          LOBYTE(v66) = v66 + 1;
          *(v65 + 16) = v66;
        }

        if (*(v15 + 308) != v66 || v67 != *(v15 + 309))
        {
          v68 = 0;
          v200 = v61;
          v69 = 1;
          do
          {
            v70 = v68;
            if (v69)
            {
              v71 = *(v65 + 16);
              if (*(v65 + 16))
              {
                v72 = *(v65 + 17);
                v73 = (255 * (v71 - v72)) / v71;
              }

              else
              {
                v73 = 0;
                v72 = *(v65 + 17);
              }

              v75 = (v65 + 8);
              if (!v72)
              {
                v73 = v71 >> 1;
                v75 = (v65 + 8);
              }
            }

            else
            {
              v74 = *(v65 + 17);
              if (!v74)
              {
                goto LABEL_139;
              }

              v73 = 1;
              v75 = (v65 + 12);
            }

            v76 = 0;
            v77 = (v193 + 10851);
            do
            {
              v78 = *(v77 - 3);
              if (*(v77 - 3))
              {
                v79 = *(v77 - 15);
                if (Is_Legal(v79))
                {
                  v80 = *(v65 + 4);
                  if (Is_Legal(v80) && v80 == v79)
                  {
                    v81 = *(v77 - 7);
                    v82 = *v75 - v81 >= 0 ? *v75 - v81 : v81 - *v75;
                    if (v82 <= 0x14)
                    {
                      if (*v75 != v81)
                      {
                        *(v77 - 7) = (*v75 - v81) * v73 / (v73 + v78) + v81;
                      }

                      *(v77 - 3) = v73 + v78 + 24;
                      ++*(v77 - 1);
                      *v77 = *v65;
                      v91 = v201;
                      v63 = v193 + 10836;
                      goto LABEL_133;
                    }
                  }
                }
              }

              ++v76;
              v77 += 16;
            }

            while (v76 != 20);
            v83 = 0;
            v84 = 0xFFFFFFF;
            v85 = (v193 + 10848);
            v76 = 0xFFFFFFFFLL;
            v63 = v193 + 10836;
            do
            {
              v87 = *v85;
              v85 += 8;
              v86 = v87;
              if (!v87)
              {
                v76 = v83;
                goto LABEL_130;
              }

              v88 = v84 <= v86;
              if (v84 >= v86)
              {
                v84 = v86;
              }

              if (!v88)
              {
                v76 = v83;
              }

              ++v83;
            }

            while (v83 != 20);
            if ((v76 & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

LABEL_130:
            v89 = v193 + 10836 + 16 * v76;
            v90 = 12;
            if (v69)
            {
              v90 = 8;
            }

            *(v89 + 8) = *(v65 + v90);
            *(v89 + 12) = v73;
            *(v89 + 14) = 0;
            *(v89 + 15) = *v65;
            *v89 = *(v65 + 4);
            v91 = v201;
LABEL_133:
            *(v63 + 16 * v76 + 4) = v91;
LABEL_134:
            v69 = 0;
            v68 = 1;
          }

          while ((v70 & 1) == 0);
          v74 = *(v65 + 17);
LABEL_139:
          LODWORD(v23) = v201;
          v15 = (v193 + 10848);
          *(v193 + 11156) = *(v65 + 16);
          *(v193 + 11157) = v74;
          v62 = v193 + 540;
          a2 = v195;
          v61 = v200;
        }
      }

      ++v61;
    }

    while (v61 != 8);
    v16 = v193;
    if (*(v15 + 310) == 1)
    {
      v92 = 0;
      v93 = 0;
      v94 = -1;
      v95 = v15;
      do
      {
        v97 = *v95;
        v95 += 8;
        v96 = v97;
        v98 = v93 <= v97;
        if (v93 < v97)
        {
          v94 = v92;
        }

        if (v98)
        {
          v93 = v96;
        }

        ++v92;
      }

      while (v92 != 20);
      if ((v94 & 0x80000000) == 0 && v93)
      {
        v99 = v63 + 16 * v94;
        v100 = *(v99 + 12);
        if (v100 >= 0xFF)
        {
          LOBYTE(v100) = -1;
        }

        *(a4 + 24) = *(v99 + 8);
        *(a4 + 22) = v100;
        *(a4 + 21) = *(v99 + 15);
        *(a4 + 28) = *v99;
      }
    }

    if (!*(v193 + 529) && !*(v193 + 530) && !*(v193 + 531))
    {
      v101 = (v193 + 3397);
      v102 = 48;
      do
      {
        v103 = *(v101 - 1);
        v104 = v103 >= 2;
        v105 = v103 - 2;
        if (v104)
        {
          *(v101 - 1) = v105;
          *(v193 + 529) = 514;
          *(v193 + 531) = 2;
        }

        v106 = *v101;
        v104 = v106 >= 2;
        v107 = v106 - 2;
        if (v104)
        {
          *v101 = v107;
        }

        v101 += 36;
        --v102;
      }

      while (v102);
    }

    memcpy((a4 + 2720), (v193 + 3392), 0x6C0uLL);
    v108 = a4 + 32;
    memcpy((a4 + 32), (v193 + 704), 0xA80uLL);
    memcpy((a4 + 4448), (v193 + 5120), 0x3C0uLL);
    memcpy((a4 + 5408), (v193 + 6080), 0x800uLL);
    *a4 = *(v193 + 512);
    *(a4 + 8) = *(v193 + 520);
    *(a4 + 10) = *(v193 + 522);
    *(a4 + 14) = *(v193 + 526);
    *(a4 + 18) = *(v193 + 530);
    *(a4 + 19) = *(v193 + 531);
    *(a4 + 7456) = v15[156];
    if (*(v193 + 460))
    {
      ++*(a4 + 7460);
    }

    v109 = *(v193 + 405);
    v110 = *(v193 + 406);
    v111 = (v109 - v110);
    if (v111 < 1)
    {
      if ((v111 & 0x80000000) != 0)
      {
        v113 = (v111 + 48);
        v114 = *(v193 + 400) + v113;
        *(v193 + 400) = v114;
        v115 = *(v193 + 396) + 1;
        *(v193 + 396) = v115;
        EvLog_nd("ME_Poll_New: Missed {M & {T", 3, v10, v113, v114, v115);
        for (j = 0; j != 1728; j += 36)
        {
          v117 = a4 + 2720 + j;
          *(v117 + 32) = 0;
          *v117 = 0uLL;
          *(v117 + 16) = 0uLL;
          *(v108 + 48) = 0;
          *(v108 + 16) = 0uLL;
          *(v108 + 32) = 0uLL;
          *v108 = 0uLL;
          v108 += 56;
        }

        EvLog("ME_Poll_New: Flushing due to missed {T");
      }
    }

    else
    {
      v112 = *(v193 + 400) + v109 - v110;
      *(v193 + 400) = v112;
      EvLog_nd("ME_Poll_New: Missed {M", 4, v10, v111, v112, v109, v110);
    }

    *(a2 + 1548) = 0u;
    *(a2 + 1564) = 0u;
    *(a2 + 1516) = 0u;
    *(a2 + 1532) = 0u;
    *(a2 + 1484) = 0u;
    *(a2 + 1500) = 0u;
    *(a2 + 1452) = 0u;
    *(a2 + 1468) = 0u;
    *(a2 + 1420) = 0u;
    *(a2 + 1436) = 0u;
    *(a2 + 1388) = 0u;
    *(a2 + 1404) = 0u;
    if (*(v15 + 415) == 1)
    {
      *(a2 + 1457) = 1;
      *(a2 + 1446) = v15[202];
      v118 = v15[203];
      if (v118 >= 0x64)
      {
        v119 = v64 * v118;
        v120 = -0.5;
        if (v119 > 0.0)
        {
          v120 = 0.5;
        }

        v121 = v119 + v120;
        if (v121 <= 2147483650.0)
        {
          if (v121 >= -2147483650.0)
          {
            v118 = v121;
          }

          else
          {
            LOBYTE(v118) = 0;
          }
        }

        else
        {
          LOBYTE(v118) = -1;
        }
      }

      *(a2 + 1448) = v118;
      *(a2 + 1450) = v15[204];
      *(a2 + 1452) = *(v15 + 410);
      *(a2 + 1454) = v15[206];
      *(a2 + 1456) = *(v15 + 414);
    }

    if (*(v15 + 329) == 1)
    {
      *(a2 + 1390) = 256;
      *(a2 + 1388) = v15[162];
      v122 = *(v15 + 328);
      if (v122 < 0x64)
      {
LABEL_193:
        *(a2 + 1390) = v122;
        goto LABEL_194;
      }

      if (v15[163])
      {
        v123 = v64 * v15[163];
        v124 = -0.5;
        if (v123 > 0.0)
        {
          v124 = 0.5;
        }

        v125 = v123 + v124;
        if (v125 <= 2147483650.0)
        {
          if (v125 >= -2147483650.0)
          {
            v122 = v125;
          }

          else
          {
            LOBYTE(v122) = 0;
          }
        }

        else
        {
          LOBYTE(v122) = -1;
        }

        goto LABEL_193;
      }
    }

LABEL_194:
    if (*(v15 + 400) == 1)
    {
      *(a2 + 1444) = 1;
      *(a2 + 1392) = v15[166];
      *&v126 = *(v15 + 167);
      WORD4(v126) = v15[171];
      WORD5(v126) = v15[177];
      HIDWORD(v126) = *(v193 + 11204);
      *v192 = v126;
      *(a2 + 1410) = *(v15 + 90);
      *&v126 = *(v15 + 187);
      *(v192 + 20) = v126;
      *(a2 + 1422) = v15[191];
      LOWORD(v126) = v15[172];
      v127 = v64 * v126;
      v128 = -0.5;
      if (v127 <= 0.0)
      {
        v129 = -0.5;
      }

      else
      {
        v129 = 0.5;
      }

      v130 = v127 + v129;
      if (v130 <= 2147483650.0)
      {
        if (v130 >= -2147483650.0)
        {
          v131 = v130;
        }

        else
        {
          LOBYTE(v131) = 0;
        }
      }

      else
      {
        LOBYTE(v131) = -1;
      }

      *(a2 + 1424) = v131;
      LOWORD(v130) = v15[173];
      v132 = v64 * *&v130;
      if (v132 > 0.0)
      {
        v128 = 0.5;
      }

      v133 = v132 + v128;
      if (v133 <= 2147483650.0)
      {
        if (v133 >= -2147483650.0)
        {
          v134 = v133;
        }

        else
        {
          LOBYTE(v134) = 0;
        }
      }

      else
      {
        LOBYTE(v134) = -1;
      }

      *(a2 + 1425) = v134;
      LOWORD(v133) = v15[174];
      v135 = v64 * *&v133;
      v136 = -0.5;
      if (v135 <= 0.0)
      {
        v137 = -0.5;
      }

      else
      {
        v137 = 0.5;
      }

      v138 = v135 + v137;
      if (v138 <= 2147483650.0)
      {
        if (v138 >= -2147483650.0)
        {
          v139 = v138;
        }

        else
        {
          LOBYTE(v139) = 0;
        }
      }

      else
      {
        LOBYTE(v139) = -1;
      }

      *(a2 + 1426) = v139;
      LOWORD(v138) = v15[175];
      v140 = v64 * *&v138;
      if (v140 > 0.0)
      {
        v136 = 0.5;
      }

      v141 = v140 + v136;
      if (v141 <= 2147483650.0)
      {
        if (v141 >= -2147483650.0)
        {
          v142 = v141;
        }

        else
        {
          LOBYTE(v142) = 0;
        }
      }

      else
      {
        LOBYTE(v142) = -1;
      }

      *(a2 + 1427) = v142;
      LOWORD(v141) = v15[176];
      v143 = v64 * *&v141;
      v144 = -0.5;
      if (v143 <= 0.0)
      {
        v145 = -0.5;
      }

      else
      {
        v145 = 0.5;
      }

      v146 = v143 + v145;
      if (v146 <= 2147483650.0)
      {
        if (v146 >= -2147483650.0)
        {
          v147 = v146;
        }

        else
        {
          LOBYTE(v147) = 0;
        }
      }

      else
      {
        LOBYTE(v147) = -1;
      }

      *(a2 + 1428) = v147;
      LOWORD(v146) = v15[182];
      v148 = v64 * *&v146;
      if (v148 > 0.0)
      {
        v144 = 0.5;
      }

      v149 = v148 + v144;
      if (v149 <= 2147483650.0)
      {
        if (v149 >= -2147483650.0)
        {
          v150 = v149;
        }

        else
        {
          LOBYTE(v150) = 0;
        }
      }

      else
      {
        LOBYTE(v150) = -1;
      }

      *(a2 + 1429) = v150;
      LOWORD(v149) = v15[183];
      v151 = v64 * *&v149;
      v152 = -0.5;
      if (v151 <= 0.0)
      {
        v153 = -0.5;
      }

      else
      {
        v153 = 0.5;
      }

      v154 = v151 + v153;
      if (v154 <= 2147483650.0)
      {
        if (v154 >= -2147483650.0)
        {
          v155 = v154;
        }

        else
        {
          LOBYTE(v155) = 0;
        }
      }

      else
      {
        LOBYTE(v155) = -1;
      }

      *(a2 + 1430) = v155;
      LOWORD(v154) = v15[184];
      v156 = v64 * *&v154;
      if (v156 > 0.0)
      {
        v152 = 0.5;
      }

      v157 = v156 + v152;
      if (v157 <= 2147483650.0)
      {
        if (v157 >= -2147483650.0)
        {
          v158 = v157;
        }

        else
        {
          LOBYTE(v158) = 0;
        }
      }

      else
      {
        LOBYTE(v158) = -1;
      }

      *(a2 + 1431) = v158;
      LOWORD(v157) = v15[185];
      v159 = v64 * *&v157;
      v160 = -0.5;
      if (v159 <= 0.0)
      {
        v161 = -0.5;
      }

      else
      {
        v161 = 0.5;
      }

      v162 = v159 + v161;
      if (v162 <= 2147483650.0)
      {
        if (v162 >= -2147483650.0)
        {
          v163 = v162;
        }

        else
        {
          LOBYTE(v163) = 0;
        }
      }

      else
      {
        LOBYTE(v163) = -1;
      }

      *(a2 + 1432) = v163;
      LOWORD(v162) = v15[186];
      v164 = v64 * *&v162;
      if (v164 > 0.0)
      {
        v160 = 0.5;
      }

      v165 = v164 + v160;
      if (v165 <= 2147483650.0)
      {
        if (v165 >= -2147483650.0)
        {
          v166 = v165;
        }

        else
        {
          LOBYTE(v166) = 0;
        }
      }

      else
      {
        LOBYTE(v166) = -1;
      }

      *(a2 + 1433) = v166;
      LOWORD(v165) = v15[192];
      v167 = v64 * *&v165;
      v168 = -0.5;
      if (v167 <= 0.0)
      {
        v169 = -0.5;
      }

      else
      {
        v169 = 0.5;
      }

      v170 = v167 + v169;
      if (v170 <= 2147483650.0)
      {
        if (v170 >= -2147483650.0)
        {
          v171 = v170;
        }

        else
        {
          LOBYTE(v171) = 0;
        }
      }

      else
      {
        LOBYTE(v171) = -1;
      }

      *(a2 + 1434) = v171;
      LOWORD(v170) = v15[193];
      v172 = v64 * *&v170;
      if (v172 > 0.0)
      {
        v168 = 0.5;
      }

      v173 = v172 + v168;
      if (v173 <= 2147483650.0)
      {
        if (v173 >= -2147483650.0)
        {
          v174 = v173;
        }

        else
        {
          LOBYTE(v174) = 0;
        }
      }

      else
      {
        LOBYTE(v174) = -1;
      }

      *(a2 + 1435) = v174;
      LOWORD(v173) = v15[194];
      v175 = v64 * *&v173;
      v176 = -0.5;
      if (v175 <= 0.0)
      {
        v177 = -0.5;
      }

      else
      {
        v177 = 0.5;
      }

      v178 = v175 + v177;
      if (v178 <= 2147483650.0)
      {
        if (v178 >= -2147483650.0)
        {
          v179 = v178;
        }

        else
        {
          LOBYTE(v179) = 0;
        }
      }

      else
      {
        LOBYTE(v179) = -1;
      }

      *(a2 + 1436) = v179;
      LOWORD(v178) = v15[195];
      v180 = v64 * *&v178;
      if (v180 > 0.0)
      {
        v176 = 0.5;
      }

      v181 = v180 + v176;
      if (v181 <= 2147483650.0)
      {
        if (v181 >= -2147483650.0)
        {
          v182 = v181;
        }

        else
        {
          LOBYTE(v182) = 0;
        }
      }

      else
      {
        LOBYTE(v182) = -1;
      }

      *(a2 + 1437) = v182;
      LOWORD(v181) = v15[196];
      v183 = v64 * *&v181;
      v184 = -0.5;
      if (v183 > 0.0)
      {
        v184 = 0.5;
      }

      v185 = v183 + v184;
      if (v185 <= 2147483650.0)
      {
        if (v185 >= -2147483650.0)
        {
          v186 = v185;
        }

        else
        {
          LOBYTE(v186) = 0;
        }
      }

      else
      {
        LOBYTE(v186) = -1;
      }

      *(a2 + 1438) = v186;
      *(a2 + 1440) = *(v193 + 11244);
    }

    if (*(v15 + 532) == 1)
    {
      v187 = *(v193 + 11280);
      v188 = *(v193 + 11312);
      *(a2 + 1492) = *(v193 + 11296);
      *(a2 + 1508) = v188;
      *(a2 + 1476) = v187;
      v189 = *(v193 + 11328);
      v190 = *(v193 + 11344);
      v191 = *(v193 + 11360);
      *(a2 + 1572) = *(v193 + 11376);
      *(a2 + 1540) = v190;
      *(a2 + 1556) = v191;
      *(a2 + 1524) = v189;
    }

    if (*(v15 + 430) == 1)
    {
      *(a2 + 1460) = *(v193 + 11264);
    }

LABEL_48:
    if (*(v16 + 408) == 1 && *(v16 + 10816) == *(v16 + 448) || *(v16 + 412) == 1 && *(v16 + 10820) == *(v16 + 448) || *(v16 + 416) == 1 && *(v16 + 10824) == *(v16 + 448) || *(v16 + 420) == 1 && *(v16 + 10828) == *(v16 + 448))
    {
      memcpy(a5, (v16 + 8128), 0xA80uLL);
      if (*(v16 + 408) == 1)
      {
        a5[672] = *(v16 + 10816);
        v32 = *(v16 + 409);
        v33 = *(v16 + 410);
        v34 = (v32 - v33);
        if (v34 >= 1)
        {
          v35 = *(v16 + 411) + v32 - v33;
          *(v16 + 411) = v35;
          EvLog_nd("ME_Poll_New: Missed {G", 4, v10, v34, v35, v32, v33);
        }
      }

      if (*(v16 + 412) == 1)
      {
        a5[673] = *(v16 + 10820);
        v36 = *(v16 + 413);
        v37 = *(v16 + 414);
        v38 = (v36 - v37);
        if (v38 >= 1)
        {
          v39 = *(v16 + 415) + v36 - v37;
          *(v16 + 415) = v39;
          EvLog_nd("ME_Poll_New: Missed {F", 4, v10, v38, v39, v36, v37);
        }
      }

      if (*(v16 + 416) == 1)
      {
        a5[674] = *(v16 + 10824);
        v40 = *(v16 + 417);
        v41 = *(v16 + 418);
        v42 = (v40 - v41);
        if (v42 >= 1)
        {
          v43 = *(v16 + 419) + v40 - v41;
          *(v16 + 419) = v43;
          EvLog_nd("ME_Poll_New: Missed {A I", 4, v10, v42, v43, v40, v41);
        }
      }

      if (*(v16 + 420) == 1)
      {
        a5[675] = *(v16 + 10828);
        v44 = *(v16 + 421);
        v45 = *(v16 + 422);
        v46 = (v44 - v45);
        if (v46 >= 1)
        {
          v47 = *(v16 + 423) + v44 - v45;
          *(v16 + 423) = v47;
          EvLog_nd("ME_Poll_New: Missed {C", 4, v10, v46, v47, v44, v45);
        }
      }
    }

    *a3 = *(v16 + 448);
    v48 = *(v16 + 468);
    a3[4] = v48;
    *(a2 + 20) = *(v16 + 491) == *(a2 + 16);
    if (*(v16 + 424) == 1)
    {
      v49 = *(v16 + 432);
      if (v49)
      {
        v203 = 0;
        *&v202[0] = v48;
        v202[1] = *(v16 + 428) * 0.001;
        v50 = v49 / 0x3E8;
        if (v49 < 0x3E8)
        {
          v50 = 1;
        }

        LODWORD(v203) = v50;
        Core_Set_Clk_Drift("ME {O eFA:", v202, v10);
      }
    }

    goto LABEL_73;
  }

LABEL_78:
  v56 = *MEMORY[0x29EDCA608];
  return result;
}

void *G5K_ME_Flush_Data()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v25 = *MEMORY[0x29EDCA608];
  *(v0 + 412) = 0;
  *(v0 + 416) = 0;
  *(v0 + 420) = 0;
  *(v0 + 424) = 0;
  *(v0 + 500) = 0;
  *(v0 + 414) = 0;
  *(v0 + 417) = 0;
  *(v0 + 421) = 0;
  *(v0 + 496) = 0;
  *(v0 + 465) = 0;
  *(v0 + 402) = 0;
  v2 = 540;
  *(v0 + 410) = 0;
  do
  {
    v3 = v0 + v2;
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 15) = 0;
    v2 += 20;
  }

  while (v2 != 700);
  *(v0 + 11151) = 0;
  *(v0 + 11136) = 0u;
  *(v0 + 11120) = 0u;
  *(v0 + 11104) = 0u;
  *(v0 + 11088) = 0u;
  *(v0 + 11072) = 0u;
  *(v0 + 11056) = 0u;
  *(v0 + 11040) = 0u;
  *(v0 + 11024) = 0u;
  *(v0 + 11008) = 0u;
  *(v0 + 10992) = 0u;
  *(v0 + 10976) = 0u;
  *(v0 + 10960) = 0u;
  *(v0 + 10944) = 0u;
  *(v0 + 10928) = 0u;
  *(v0 + 10912) = 0u;
  *(v0 + 10896) = 0u;
  *(v0 + 10880) = 0u;
  *(v0 + 10864) = 0u;
  *(v0 + 10848) = 0u;
  *(v0 + 10832) = 0u;
  v4 = *(v0 + 504);
  v5 = *(v0 + 394);
  v6 = *(v0 + 411);
  v7 = *(v0 + 415);
  v8 = *(v0 + 419);
  v9 = *(v0 + 423);
  bzero(v24, 0x2C78uLL);
  for (i = 0; i != 160; i += 20)
  {
    v11 = &v24[i];
    v11[540] = 0;
    *(v11 + 68) = 0;
    *&v24[i + 551] = 0;
  }

  for (j = 0; j != 2688; j += 56)
  {
    v13 = &v24[j];
    *(v13 + 88) = 0;
    *(v13 + 356) = 0;
    *&v24[j + 716] = 0;
    *(v13 + 362) = 0;
    v14 = &v24[j + 728];
    *(v13 + 94) = 0;
    *(v13 + 372) = 0;
    *v14 = 0uLL;
  }

  for (k = 3392; k != 5120; k += 36)
  {
    v16 = &v24[k];
    v16[32] = 0;
    *v16 = 0uLL;
    *(v16 + 1) = 0uLL;
  }

  v17 = -960;
  do
  {
    v18 = &v24[v17];
    *(v18 + 3048) = 0;
    *(v18 + 380) = 0uLL;
    v17 += 20;
  }

  while (v17);
  v19 = -2048;
  do
  {
    *&v24[v19 + 8128] = 0;
    *&v24[v19 + 8134] = 0;
    v19 += 16;
  }

  while (v19);
  v20 = 2688;
  v21 = &v24[8180];
  do
  {
    *(v21 - 13) = 0;
    *v21 = 0;
    v21 += 56;
    v20 -= 56;
  }

  while (v20);
  *&v24[11160] = 0;
  *&v24[11244] = 0;
  v24[11248] = 0;
  memset(&v24[11180], 0, 62);
  *&v24[11260] = 0;
  *&v24[11255] = 0;
  *&v24[11252] = 0;
  memset(&v24[10816], 0, 343);
  *&v24[11170] = 0;
  *&v24[11164] = 0;
  result = memcpy(v1, v24, 0x2C78uLL);
  *(v1 + 384) = v1;
  *(v1 + 504) = v4;
  *(v1 + 394) = v5;
  *(v1 + 411) = v6;
  *(v1 + 415) = v7;
  *(v1 + 419) = v8;
  *(v1 + 423) = v9;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm35_11SendV1FwDbgCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v29 = *MEMORY[0x29EDCA608];
  memset_s(__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(v26, 0x7FCuLL, 0, 0x7FCuLL);
  *&v24[3] = 0;
  v24[7] = 0;
  strcpy(v24, "Dd");
  strcpy(v23, "Di");
  __s[0] = 83;
  v26[0] = 83;
  LbsOsaTrace_GetModuleConfig(&v24[3], 5u);
  if ((v24[7] & 8) != 0)
  {
    v6 = 4;
  }

  else
  {
    if ((v24[7] & 2) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if ((v24[7] & 4) != 0)
    {
      v6 = 3;
    }
  }

  v26[4] = v6;
  v26[10] = v6;
  v26[11] = v6;
  if (*&v24[3])
  {
    v7 = v24[7] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 3088;
  }

  *&v24[3] = 0;
  v24[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v24[3], 6u);
  if ((v24[7] & 8) != 0)
  {
    v9 = 4;
  }

  else if ((v24[7] & 4) != 0)
  {
    v9 = 3;
  }

  else if ((v24[7] & 2) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v26[9] = v9;
  if (*&v24[3])
  {
    v10 = v24[7] == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v8 |= 0x200u;
  }

  *&v24[3] = 0;
  v24[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v24[3], 7u);
  if ((v24[7] & 8) != 0)
  {
    v11 = 4;
  }

  else if ((v24[7] & 4) != 0)
  {
    v11 = 3;
  }

  else if ((v24[7] & 2) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v26[6] = v11;
  if (*&v24[3])
  {
    v12 = v24[7] == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v8 |= 0x40u;
  }

  *&v24[3] = 0;
  v24[7] = 0;
  v13 = 4;
  LbsOsaTrace_GetModuleConfig(&v24[3], 4u);
  if ((v24[7] & 8) == 0)
  {
    if ((v24[7] & 4) != 0)
    {
      v13 = 3;
    }

    else if ((v24[7] & 2) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v26[7] = v13;
  if (*&v24[3])
  {
    v14 = v24[7] == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v8 |= 0x80u;
  }

  *&v24[3] = 0;
  v24[7] = 0;
  LbsOsaTrace_GetModuleConfig(&v24[3], 0x14u);
  if ((v24[7] & 8) != 0)
  {
    v15 = 4;
  }

  else if ((v24[7] & 4) != 0)
  {
    v15 = 3;
  }

  else if ((v24[7] & 2) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v26[8] = v15;
  if (*&v24[3])
  {
    v16 = v24[7] == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v8 | 0x100;
  if (v16)
  {
    v17 = v8;
  }

  if (v17 <= 1)
  {
    LOWORD(v17) = 1;
  }

  v28 = v17;
  Gnm07_06EncodeNSend(v24, __s, "EXT DEBUG CFG");
  Gnm07_06EncodeNSend(v23, v26, "INT DEBUG CFG");
  v18 = gnssOsa_Calloc("Gnm35_11SendV1FwDbgCfg", 136, 1, 0x50uLL);
  if (v18)
  {
    v19 = v18;
    v18[3] = 64;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_CFG_UPDATE_IND =>GNCP CfgMask,0x%X\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 73, "Gnm35_11SendV1FwDbgCfg", v19[3]);
      LbsOsaTrace_WriteLog(0xBu, __str, v21, 4, 1);
    }

    AgpsSendFsmMsg(128, 134, 8394499, v19);
  }

  v22 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm35_32MapV1TaDebugConfig(int a1)
{
  v10 = *MEMORY[0x29EDCA608];
  TaTraceCfg = Gnm34_15GetTaTraceCfg(a1);
  v2 = TaTraceCfg;
  if (TaTraceCfg >= 7)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    LOBYTE(v3) = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TaLogSeverity,%hhu\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm35_32MapV1TaDebugConfig", 770, v2);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v3 = 0x4030403020100uLL >> (8 * (TaTraceCfg & 0x1F));
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t Gnm35_15SendV2DbgCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v17 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(&v10, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v9, "DfP", sizeof(v9));
  __s = 339;
  DebugElCfgV2 = Gnm35_51GetDebugElCfgV2(5u);
  v15 = Gnm35_51GetDebugElCfgV2(5u);
  v16 = Gnm35_51GetDebugElCfgV2(5u);
  Gnm07_06EncodeNSend(v9, &__s, "GCPU DEBUG CFG");
  qmemcpy(v8, "DmM", sizeof(v8));
  v10 = 339;
  v11 = Gnm35_51GetDebugElCfgV2(0x14u);
  v12 = Gnm35_51GetDebugElCfgV2(4u);
  result = Gnm07_06EncodeNSend(v8, &v10, "MCPU DEBUG CFG");
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm35_51GetDebugElCfgV2(unsigned int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v13 = 0;
  if (LbsOsaTrace_GetModuleConfig(&v12, a1))
  {
    if ((v13 & 2) != 0)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((v13 & 4) != 0)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2;
    }

    if ((v13 & 8) != 0)
    {
      v4 = 4;
    }

    else
    {
      v4 = v3;
    }

    if (v12)
    {
      v5 = v13 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    v6 = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Module,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm35_51GetDebugElCfgV2", 770, a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
      v6 = 0;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t Gnm35_15SendV1TaDbgCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v17 = *MEMORY[0x29EDCA608];
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  memset_s(&v10, 0x7FCuLL, 0, 0x7FCuLL);
  qmemcpy(v9, "DfP", sizeof(v9));
  __s = 595;
  v14 = Gnm35_32MapV1TaDebugConfig(1);
  v15 = Gnm35_32MapV1TaDebugConfig(2);
  v16 = Gnm35_32MapV1TaDebugConfig(3);
  Gnm07_06EncodeNSend(v9, &__s, "GCPU TA DEBUG CFG");
  qmemcpy(v8, "DmM", sizeof(v8));
  v10 = 595;
  v11 = Gnm35_32MapV1TaDebugConfig(5);
  v12 = Gnm35_32MapV1TaDebugConfig(4);
  result = Gnm07_06EncodeNSend(v8, &v10, "MCPU TA DEBUG CFG");
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm35_12SendDbgCfg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_HWStatus[0] == 1)
  {
    v6 = qword_2A1920A8C;
    if (qword_2A1920A8C != 3431 || HIDWORD(qword_2A1920A8C) != 2 || dword_2A1920A94 != 1)
    {
      if (qword_2A1920A8C != 1107 && qword_2A1920A8C != 2472)
      {
        if (qword_2A1920A8C != 2473)
        {
          v9 = g_GnssHw;
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v9 = g_GnssHw;
    if (g_GnssHw == 2)
    {
LABEL_19:
      v11 = Gnm35_15SendV2DbgCfg(a1, a2, a3, a4, a5, a6);
      v17 = *MEMORY[0x29EDCA608];

      Gnm35_15SendV1TaDbgCfg(v11, v12, v13, v14, v15, v16);
      return;
    }

    if (g_GnssHw == 1)
    {
LABEL_28:
      v21 = *MEMORY[0x29EDCA608];

      Gnm35_15SendV2DbgCfg(a1, a2, a3, a4, a5, a6);
      return;
    }

    if (g_GnssHw)
    {
      if (g_GnssHw != 3)
      {
        v6 = qword_2A1920A8C;
LABEL_24:
        v18 = v6 == 848;
        v19 = v9 == 4;
        if (g_HWStatus[0])
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        if (!v20)
        {
          v22 = *MEMORY[0x29EDCA608];
          return;
        }

        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  v10 = *MEMORY[0x29EDCA608];

  Gnm35_11SendV1FwDbgCfg(a1, a2, a3, a4, a5, a6);
}

uint64_t Gnm35_31HandleDMessages(unsigned __int8 *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 1);
  if (v3 > 0x48)
  {
    if (v3 == 73)
    {
      v4 = *a1;
      v5 = "IntDbgCfg";
      goto LABEL_12;
    }

    if (v3 == 77)
    {
      v4 = *a1;
      v5 = "McpuDbgCfg";
      goto LABEL_12;
    }
  }

  else
  {
    if (v3 == 68)
    {
      v4 = *a1;
      v5 = "ExtDbgCfg";
      goto LABEL_12;
    }

    if (v3 == 70)
    {
      v4 = *a1;
      v5 = "GcpuDbgCfg";
LABEL_12:
      Gnm35_21HandleDRspStatus(v4, v5);
      goto LABEL_13;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm35_31HandleDMessages", 778, *(a2 + 1));
    LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm35_21HandleDRspStatus(int a1, const char *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a1 == 32)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s Success\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm35_21HandleDRspStatus", a2);
      v6 = 4;
LABEL_6:
      result = LbsOsaTrace_WriteLog(0xBu, __str, v5, v6, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx %s Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm35_21HandleDRspStatus", 257, a2, a1);
      v6 = 2;
      goto LABEL_6;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP01_00InitPeUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x29EDCA608];
  GN_GPS_Initialise(a1, a2, a3, a4, a5, a6);
  result = gnssOsa_InitCriticalSection("GncP01_00InitPeUpdate", 92, &g_PosUpdateCritic);
  g_GncP_PEUpdate[6360] = 0;
  g_GncP_PEUpdate[0] = 0;
  word_2A191F6D4 = 0;
  g_GncP_PEUpdate[6494] = 0;
  g_GncP_PEUpdate[8080] = 0;
  qword_2A191FD10 = 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void gncP01_01DeInitPeUpdate(void)
{
  v1 = *MEMORY[0x29EDCA608];
  GN_GPS_Shutdown();
  gnssOsa_MacDeinitCriticalSection("gncP01_01DeInitPeUpdate", 109, &g_PosUpdateCritic);
  if (qword_2A191FD10)
  {
    free(qword_2A191FD10);
  }

  qword_2A191FD10 = 0;
  v0 = *MEMORY[0x29EDCA608];
}

void *GncP01_05ClearGncPosData(void)
{
  MEMORY[0x2A1C7C4A8]();
  __src[1012] = *MEMORY[0x29EDCA608];
  bzero(__src, 0x1FA0uLL);
  WORD2(__src[797]) = -1;
  WORD2(__src[798]) = -1;
  v0 = &__src[807] + 1;
  v1 = 56;
  do
  {
    *(v0 - 4) = 0;
    *(v0 - 6) = 0;
    *(v0 - 20) = 0;
    *(v0 - 12) = -1;
    *(v0 - 5) = -1;
    *(v0 - 2) = -1;
    *(v0 - 4) = -1;
    *v0 = -1;
    v0 += 7;
    v1 -= 28;
  }

  while (v1);
  *(&__src[811] + 4) = 0;
  v2 = &__src[1006] + 1;
  v3 = 56;
  do
  {
    *(v2 - 25) = 0;
    *(v2 - 17) = 127;
    *(v2 - 15) = 0;
    *(v2 - 13) = 0;
    *(v2 - 9) = 0;
    *(v2 - 5) = 0;
    *(v2 - 1) = 0;
    v2 += 28;
    v3 -= 28;
  }

  while (v3);
  LOBYTE(__src[1010]) = 0;
  __src[1011] = 0;
  result = memcpy(&g_GncP_PEUpdate, __src, 0x1FA0uLL);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *GncP01_27PopulateGadData(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_GncP_PEUpdate == 1 && xmmword_2A191F650 == 1 && DWORD1(xmmword_2A191F650) == dword_2A191DD7C && GncP11_30CheckUtcValidity(word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96))
  {
    v2 = dword_2A191DD80;
    v3 = DWORD2(xmmword_2A191F650);
    *a1 = DWORD2(xmmword_2A191F650);
    *(a1 + 4) = v2;
    *(a1 + 13) = *(&dword_2A191DD80 + 6388);
    v4 = dword_2A191DEB8 & 0x7707FFFF;
    *(a1 + 16) = dword_2A191DEA0 & 0x373F;
    *(a1 + 20) = v4;
    *(a1 + 24) = v3;
    *(a1 + 28) = 0x200000001;
    *(a1 + 44) = qword_2A191F680;
    v5 = *(&dword_2A191DD80 + 6412);
    *(a1 + 52) = word_2A191F68A;
    *(a1 + 54) = v5;
    *(a1 + 55) = *(&dword_2A191DD80 + 6413);
    v6 = *(&dword_2A191DD80 + 6416);
    *(a1 + 64) = *(&dword_2A191DD80 + 6415);
    *(a1 + 65) = v6;
    *(a1 + 66) = -1;
    *(a1 + 68) = 0xFFFFFFFFLL;
    if (*(&dword_2A191DD80 + 6396))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    *(a1 + 36) = 16;
    *(a1 + 40) = v7;
    v8 = *(&dword_2A191DD80 + 6414);
    v9 = 2 * v8;
    if (v8 > 0x59)
    {
      v9 = -1;
    }

    v10 = *(&dword_2A191DD80 + 6408);
    *(a1 + 56) = v9;
    v11 = 2 * (v10 == 1);
    if (!v10)
    {
      v11 = 1;
    }

    *(a1 + 60) = v11;
    *(a1 + 76) = 8;
    *(a1 + 80) = *(&xmmword_2A191F690 + 2);
    *(a1 + 84) = *(&dword_2A191DD80 + 6417);
    *(a1 + 86) = *(&dword_2A191DD80 + 6422);
    v12 = *(&dword_2A191DD80 + 6423);
    if (v12 == 255)
    {
      LOWORD(v12) = -1;
    }

    *(a1 + 88) = v12;
    v13 = *(&dword_2A191DD80 + 6424);
    if (v13 == 255)
    {
      LOWORD(v13) = -1;
    }

    *(a1 + 90) = v13;
    v14 = 0x18E6u;
    v15 = *(&dword_2A191DD80 + v14);
    *(a1 + 100) = dword_2A191F660 % 0x36EE80u;
    *(a1 + 106) = v15;
    *(a1 + 107) = -1;
    *(a1 + 108) = xmmword_2A191F670;
    *(a1 + 112) = GncP11_02ConvertAGnssID(HIDWORD(xmmword_2A191F650));
    v16 = *(&dword_2A191DD80 + v14);
    *(a1 + 92) = dword_2A191F668;
    *(a1 + 96) = v16;
    if (word_2A191F664 >= 0)
    {
      v17 = (word_2A191F664 * 0.4);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 104) = v17;
    v18 = llround(*&qword_2A191DDC0);
    *(a1 + 118) = word_2A191DD98;
    v19 = dword_2A191DD80;
    *(a1 + 120) = v18;
    *(a1 + 124) = v19;
    *(a1 + 116) = byte_2A191DD89;
  }

  else
  {
    v20 = DWORD1(xmmword_2A191F650);
    *a1 = DWORD1(xmmword_2A191F650);
    *(a1 + 24) = v20;
    *(a1 + 28) = 7;
  }

  result = memcpy_s("GncP01_27PopulateGadData", 1173, (a1 + 128), 0x38u, &xmmword_2A191F690 + 12, 0x38uLL);
  *(a1 + 184) = BYTE1(xmmword_2A191F650);
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP01_32ExecutePE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v180 = *MEMORY[0x29EDCA608];
  GN_GPS_Update();
  memset_s(__s, 0x18C8uLL, 0, 0x18C8uLL);
  v6 = &unk_2A1926000;
  if (*xmmword_2A1926A30)
  {
    v7 = *xmmword_2A1926A30 == Last_Published_Nav_Data_TTag;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_170;
  }

  memcpy(__s, xmmword_2A1926A30, sizeof(__s));
  Last_Published_Nav_Data_TTag = __s[0];
  v8 = byte_2A1939000;
  if (*(*(p_api + 88) + 32) != __s[0])
  {
    memcpy(__s, xmmword_2A1926A30, sizeof(__s));
    Last_Published_Nav_Data_TTag = __s[0];
  }

  if (gnssOsa_MacEnterCriticalSection("GncP01_31Update", 1216, &g_PosUpdateCritic))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(v178, 0x410uLL);
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v11 = 1550;
      goto LABEL_169;
    }

    goto LABEL_171;
  }

  v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  LOWORD(v178[0]) = 0;
  BYTE2(v178[0]) = 0;
  HIDWORD(v178[0]) = 0;
  v178[794] = 0;
  memset_s(v178, 0x18D8uLL, 0, 0x18D8uLL);
  HIDWORD(v178[0]) = v12;
  LOBYTE(v178[0]) = 0;
  if (xmmword_2A1926A30 && *xmmword_2A1926A30)
  {
    memcpy(&v178[1], xmmword_2A1926A30, 0x18C8uLL);
    LOBYTE(v178[0]) = WORD1(v178[2]) != 0;
    BYTE1(v178[0]) = GN_AGPS_Get_UTC(v179);
  }

  v13 = 0;
  v14 = BYTE5(v178[40]);
  v179[0] = 0;
  *&v179[2] = 0;
  memset(&v179[8], 0, 27);
  v15 = 1;
  while (1)
  {
    v16 = v15;
    if (!GncP04_08GetNextSessInstn(v13, v179, 1u))
    {
      break;
    }

    v15 = 0;
    v17 = &v178[794] + 4 * v13;
    v17[1] = v179[0];
    *(v17 + 1) = *&v179[2];
    *v17 = v14;
    v13 = 1;
    if ((v16 & 1) == 0)
    {
      LOBYTE(v13) = 2;
      break;
    }
  }

  BYTE2(v178[0]) = v13;
  if ((v178[0] & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(v179, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: No Valid Nav\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncP01_18UpdateNavData");
    LbsOsaTrace_WriteLog(8u, v179, v19, 2, 1);
  }

  memcpy(g_GncP_PEUpdate, v178, 0x18D8uLL);
  v20 = 0;
  v21 = 1;
  do
  {
    while (1)
    {
      v22 = v21;
      v23 = &g_GncPCntxtInfo + 36 * v20;
      if (v23[8] == 1)
      {
        break;
      }

      v21 = 0;
      v20 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v21 = 0;
    v24 = v23[9];
    v20 = 1;
  }

  while ((v22 & ((v24 & 2) == 0)) != 0);
  if ((v24 & 2) != 0)
  {
LABEL_35:
    v30 = 0;
    *v179 = 0;
    *&v179[8] = 0;
    *&v179[16] = 0;
    *&v179[20] = -1;
    v179[22] = 0;
    *&v179[24] = 0;
    *&v179[28] = -1;
    *&v179[32] = 0;
    v179[36] = 0;
    do
    {
      v31 = &v179[v30];
      *(v31 + 21) = 0;
      *(v31 + 19) = 0;
      v31[80] = 0;
      v31[88] = -1;
      *(v31 + 45) = -1;
      *(v31 + 23) = -1;
      v31[96] = -1;
      v30 += 28;
      *(v31 + 25) = -1;
    }

    while (v30 != 56);
    *&v179[4] = v12;
    GN_AGNSS_Get_GAD_Data(&v179[8], 255, &v179[12], &v179[16], &v179[20], &v179[22], &v179[24], &v179[28], &v179[32], &v179[36], &v179[40]);
    if (!v32)
    {
LABEL_71:
      v36 = 0;
      v163[0] = 0;
      v164 = 0;
      memset(v167, 0, sizeof(v167));
      v37 = 1;
      v165 = 0;
      v166 = 0;
      while (1)
      {
        v38 = v37;
        if (!GncP04_08GetNextSessInstn(v36, v163, 2u))
        {
          break;
        }

        v169 = 0;
        v170 = 0;
        v171 = -1;
        v172[0] = 0;
        v173 = 0;
        v174 = -1;
        v175 = 0;
        v176[0] = 0;
        if (v167[9] == 1)
        {
          v40 = v167[6] | 0x80;
        }

        else
        {
          v40 = v167[6];
        }

        LOWORD(v39) = *v167;
        *&v41 = rint(log(v39 / 10.0 + 1.0) / 0.0953101798);
        v42 = *&v41;
        v160 = *&v41;
        LOWORD(v41) = *&v167[2];
        v43 = rint(log(v41 / 45.0 + 1.0) / 0.0246926126);
        v161 = v43;
        if (!v42)
        {
          v160 = -1;
        }

        if (!v43)
        {
          v161 = -1;
        }

        v162 = HIDWORD(v165) + v165;
        v44 = &v179[28 * v36 + 76];
        v44[1] = v163[0];
        *(v44 + 1) = v164;
        *v44 = 0;
        GN_AGNSS_Get_GAD_Data(0, v40, &v169 + 1, &v170, &v171, v172, &v173, &v174, &v175, v176, &v177);
        if (v45)
        {
          *v44 = GN_AGPS_Qual_Pos(0, &v160);
          v44[4] = v176[0];
          *(v44 + 2) = GncP11_02ConvertAGnssID(HIDWORD(v169));
          v46 = v172[0];
          v44[12] = v172[0];
          *(v44 + 4) = v170 % 0x36EE80;
          *(v44 + 6) = v173;
          v44[20] = v46;
          v47 = (v171 * 0.4);
          if (v171 < 0)
          {
            LOWORD(v47) = -1;
          }

          *(v44 + 7) = v47;
        }

        if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          bzero(v178, 0x410uLL);
          v48 = mach_continuous_time();
          v49 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: ID,%u,Qual,%u,GnssUsed,%u,TimeGnssId,%u,ToD,%u,TodUnc,%u,ToDSubMs,%u,ToW,%u,ToWUnc,%u,ReqConst,%u,HAcc,%u,VAcc,%u,Deadline,%u\n", (*&g_MacClockTicksToMsRelation * v48), "GNC", 68, "GncP01_19QualGadReqs", *(v44 + 1), *v44, v44[4], *(v44 + 2), *(v44 + 4), v44[12], *(v44 + 7), *(v44 + 6), v44[20], v40, v160, v161, v162);
          LbsOsaTrace_WriteLog(8u, v178, v49, 5, 1);
        }

        v37 = 0;
        v36 = 1;
        if ((v38 & 1) == 0)
        {
          LOBYTE(v36) = 2;
          break;
        }
      }

      v179[1] = v36;
      if ((v179[0] & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v50 = mach_continuous_time();
        v51 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: No Valid GAD\n", (*&g_MacClockTicksToMsRelation * v50), "GNC", 87, "GncP01_20UpdateGADData");
        LbsOsaTrace_WriteLog(8u, v178, v51, 2, 1);
      }

      xmmword_2A191F6B0 = *&v179[96];
      unk_2A191F6C0 = *&v179[112];
      dword_2A191F6D0 = *&v179[128];
      xmmword_2A191F670 = *&v179[32];
      *&qword_2A191F680 = *&v179[48];
      xmmword_2A191F690 = *&v179[64];
      unk_2A191F6A0 = *&v179[80];
      xmmword_2A191F650 = *v179;
      *&dword_2A191F660 = *&v179[16];
      v6 = &unk_2A1926000;
      v8 = byte_2A1939000;
      goto LABEL_92;
    }

    if (v179[44] >= 2u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v125 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx LatSgn,%u\n", v125);
LABEL_68:
        LbsOsaTrace_WriteLog(8u, v178, v33, 2, 1);
        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (*&v179[48] >= 0x800000u)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v126 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx Lat,%u\n", v126);
        goto LABEL_68;
      }

LABEL_69:
      v35 = 0;
LABEL_70:
      v179[0] = v35;
      goto LABEL_71;
    }

    if ((*&v179[52] - 0x800000) >> 24 != 255)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v127 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx Long,%d\n", v127);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[56] - 2 <= 0xFC)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v128 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx AltDir,%d\n", v128);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[60] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v130 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx UncSemiMj,%u\n", v130);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[61] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v131 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx UncSemiMi,%u\n", v131);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[63] <= -2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v132 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx UncAlt,%u\n", v132);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[62] - 255 >= 0xFFFFFF5B)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v133 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx UncMjAx,%u\n", v133);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[64] - 255 >= 0xFFFFFF66)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v134 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v33 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx Conf,%u\n", v134);
        goto LABEL_68;
      }

      goto LABEL_69;
    }

    if (v179[65] - 2 > 0xFC)
    {
      if (*&v179[66] - 360 > 0xFE96)
      {
        if (*&v179[68] > -2)
        {
          if (v179[70] > -2)
          {
            if (*&v179[16] <= 0x5265BFFu)
            {
              if (*&v179[20] - 10000 > 0xD8EE)
              {
                if ((v179[22] & 0x80000000) != 0)
                {
                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(v178, 0x410uLL);
                    v146 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx ToDUnc,%u\n", v146);
                    goto LABEL_294;
                  }
                }

                else if (*&v179[24] < 0x240C8400u)
                {
                  if (*&v179[28] - 10000 > 0xD8EE)
                  {
                    v35 = 1;
                    goto LABEL_70;
                  }

                  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                  {
                    bzero(v178, 0x410uLL);
                    v147 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                    v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx ToWSubMS,%d\n", v147);
                    goto LABEL_294;
                  }
                }

                else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
                {
                  bzero(v178, 0x410uLL);
                  v145 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                  v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx ToW,%u\n", v145);
                  goto LABEL_294;
                }
              }

              else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
              {
                bzero(v178, 0x410uLL);
                v144 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
                v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx ToDSubMS,%d\n", v144);
                goto LABEL_294;
              }
            }

            else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
            {
              bzero(v178, 0x410uLL);
              v143 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
              v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx ToD,%u\n", v143);
              goto LABEL_294;
            }
          }

          else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(v178, 0x410uLL);
            v142 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx VertSpd,%d\n", v142);
            goto LABEL_294;
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(v178, 0x410uLL);
          v141 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx HorSpd,%d\n", v141);
          goto LABEL_294;
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(v178, 0x410uLL);
        v140 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx Bearing,%d\n", v140);
        goto LABEL_294;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v178, 0x410uLL);
      v129 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v34 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx VertDir,%d\n", v129);
LABEL_294:
      LbsOsaTrace_WriteLog(8u, v178, v34, 2, 1);
      v35 = 0;
      goto LABEL_70;
    }

    v35 = 0;
    goto LABEL_70;
  }

LABEL_27:
  v25 = 0;
  v26 = 1;
  do
  {
    while (1)
    {
      v27 = v26;
      v28 = &g_GncPCntxtInfo + 36 * v25;
      if (v28[8] == 1)
      {
        break;
      }

      v26 = 0;
      v25 = 1;
      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v26 = 0;
    v29 = v28[9];
    v25 = 1;
  }

  while ((v27 & ((v29 & 4) == 0)) != 0);
  if ((v29 & 4) != 0)
  {
    goto LABEL_35;
  }

LABEL_34:
  LOBYTE(xmmword_2A191F650) = 0;
LABEL_92:
  v52 = 0;
  v53 = 1;
  do
  {
    while (1)
    {
      v54 = v53;
      v55 = &g_GncPCntxtInfo + 36 * v52;
      if (v55[8] == 1)
      {
        break;
      }

      v53 = 0;
      v52 = 1;
      if ((v54 & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    v53 = 0;
    v56 = v55[9];
    v52 = 1;
  }

  while ((v54 & ((v56 & 4) == 0)) != 0);
  if ((v56 & 4) == 0)
  {
LABEL_99:
    word_2A191F6D4 = 0;
    byte_2A191F6D6 = 0;
    goto LABEL_145;
  }

  v57 = 0;
  v178[0] = 0;
  do
  {
    v58 = v178 + v57;
    *(&v178[191] + v57 + 4) = 0;
    v58[1540] = 127;
    *(v58 + 771) = 0;
    *(v58 + 386) = 0;
    v58[1548] = 0;
    *(v58 + 388) = 0;
    v57 += 28;
    *(v58 + 778) = 0;
  }

  while (v57 != 56);
  memset_s(v178, 0x634uLL, 0, 0x634uLL);
  if (g_GncP_PEUpdate[0])
  {
    v59 = dword_2A191DD84;
  }

  else
  {
    v59 = v12;
  }

  HIDWORD(v178[0]) = v59;
  if (!GN_AGNSS_Get_Meas(0, 255, &v178[45]))
  {
    LOBYTE(v178[0]) = 0;
    goto LABEL_123;
  }

  if (HIDWORD(v178[45]) > 0x5265BFF)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v179, 0x410uLL);
    v135 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v60 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx ToD,%u\n", v135);
LABEL_122:
    LbsOsaTrace_WriteLog(8u, v179, v60, 2, 1);
    goto LABEL_123;
  }

  if (LOWORD(v178[46]) - 10000 <= 0xD8EE)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v179, 0x410uLL);
    v136 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v60 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx ToDSubMS,%d\n", v136);
    goto LABEL_122;
  }

  if (SBYTE2(v178[46]) < 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v179, 0x410uLL);
    v138 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v60 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx ToDUnc,%u\n", v138);
    goto LABEL_122;
  }

  if (SBYTE3(v178[46]) <= -2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v179, 0x410uLL);
    v137 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v60 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx DeltaToD,%d\n", v137);
    goto LABEL_122;
  }

  if (LOBYTE(v178[47]) > 0x30u)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_123;
    }

    bzero(v179, 0x410uLL);
    v139 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v60 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx NumGnssMeas,%u\n", v139);
    goto LABEL_122;
  }

  if (!LOBYTE(v178[47]))
  {
    goto LABEL_240;
  }

  v93 = 0;
  v94 = 0;
  v95 = 1;
  while (1)
  {
    v96 = HIDWORD(v178[v93 + 47]);
    if (v96 > 15)
    {
      break;
    }

    if (v96 > 3)
    {
      if (v96 == 4)
      {
        if (LOBYTE(v178[v93 + 48]) - 160 <= 0xFFFFFFD7)
        {
          if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
          {
            bzero(v179, 0x410uLL);
            v124 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v159 = LOBYTE(v178[v93 + 48]);
            v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,SSVId,%u\n", v124);
            goto LABEL_238;
          }

          goto LABEL_239;
        }
      }

      else if (v96 != 8)
      {
        goto LABEL_269;
      }
    }

    else if (v96 == 1)
    {
      if (LOBYTE(v178[v93 + 48]) >= 0x22u)
      {
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(v179, 0x410uLL);
          v123 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v158 = LOBYTE(v178[v93 + 48]);
          v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,GSVId,%u\n", v123);
          goto LABEL_238;
        }

        goto LABEL_239;
      }
    }

    else if (v96 != 2)
    {
      goto LABEL_269;
    }

LABEL_215:
    if (SBYTE1(v178[v93 + 48]) < 0)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v97 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v148 = BYTE1(v178[v93 + 48]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CPAmb,%u\n", v97);
      goto LABEL_238;
    }

    if (BYTE2(v178[v93 + 48]) >= 0x40u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v99 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v149 = BYTE2(v178[v93 + 48]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,SNR,%u\n", v99);
      goto LABEL_238;
    }

    if (BYTE3(v178[v93 + 48]) >= 4u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v100 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v150 = BYTE3(v178[v93 + 48]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,MPath,%u\n", v100);
      goto LABEL_238;
    }

    if (SBYTE4(v178[v93 + 48]) < 0)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v101 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v151 = BYTE4(v178[v93 + 48]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,IntCP,%u\n", v101);
      goto LABEL_238;
    }

    if (BYTE5(v178[v93 + 48]) >= 0x40u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v102 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v152 = BYTE5(v178[v93 + 48]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,PhRMS,%u\n", v102);
      goto LABEL_238;
    }

    if (LODWORD(v178[v93 + 49]) > 0x200000)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v103 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v153 = LODWORD(v178[v93 + 49]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CP,%u\n", v103);
      goto LABEL_238;
    }

    if (HIWORD(v178[v93 + 49]) >= 0xFDE9u)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        goto LABEL_239;
      }

      bzero(v179, 0x410uLL);
      v104 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v154 = HIWORD(v178[v93 + 49]);
      v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,CarrLk,%u\n", v104);
      goto LABEL_238;
    }

    v94 = v95++ >= LOBYTE(v178[47]);
    v93 += 3;
    if (3 * LOBYTE(v178[47]) == v93)
    {
      goto LABEL_240;
    }
  }

  if (v96 > 63)
  {
    if (v96 == 64 || v96 == 128)
    {
      goto LABEL_215;
    }

LABEL_269:
    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_239;
    }

    bzero(v179, 0x410uLL);
    v117 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v155 = HIDWORD(v178[v93 + 47]);
    v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,Type,%u\n", v117);
LABEL_238:
    LbsOsaTrace_WriteLog(8u, v179, v98, 2, 1);
    goto LABEL_239;
  }

  if (v96 == 16)
  {
    if (LOBYTE(v178[v93 + 48]) - 203 > 0xFFFFFFF5)
    {
      goto LABEL_215;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      goto LABEL_239;
    }

    bzero(v179, 0x410uLL);
    v119 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v156 = LOBYTE(v178[v93 + 48]);
    v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,QSVId,%u\n", v119);
    goto LABEL_238;
  }

  if (v96 != 32)
  {
    goto LABEL_269;
  }

  if (LOBYTE(v178[v93 + 48]) < 0x1Au)
  {
    goto LABEL_215;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(v179, 0x410uLL);
    v121 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v157 = LOBYTE(v178[v93 + 48]);
    v98 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: #%04hx Idx,%u,RSVId,%u\n", v121);
    goto LABEL_238;
  }

LABEL_239:
  if (v94)
  {
LABEL_240:
    v105 = 0;
    v106 = 1;
    LOBYTE(v178[0]) = 1;
    do
    {
      while (1)
      {
        v107 = v106;
        v108 = &g_GncPCntxtInfo + 36 * v105;
        if (v108[8] == 1 && (v108[9] & 4) != 0)
        {
          break;
        }

        v106 = 0;
        GPS_MS_Ass_Meas = 0;
        v105 = 1;
        if ((v107 & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      v110 = v108[38];
      if ((v107 & 1) == 0)
      {
        break;
      }

      v106 = 0;
      v105 = 1;
    }

    while ((v110 & 1) == 0);
    if (v110)
    {
      GPS_MS_Ass_Meas = API_Get_GPS_MS_Ass_Meas(0, 1, &v178[23]);
    }

    else
    {
      GPS_MS_Ass_Meas = 0;
    }

LABEL_250:
    v111 = 0;
    BYTE2(v178[0]) = GPS_MS_Ass_Meas;
    v112 = 1;
    do
    {
      while (1)
      {
        v113 = v112;
        v114 = &g_GncPCntxtInfo + 36 * v111;
        if (v114[8] == 1 && (v114[9] & 4) != 0)
        {
          break;
        }

        v112 = 0;
        v115 = 0;
        v111 = 1;
        if ((v113 & 1) == 0)
        {
          goto LABEL_259;
        }
      }

      v112 = 0;
      v116 = v114[38];
      v111 = 1;
    }

    while ((v113 & v116 & 1) != 0);
    if (v116)
    {
      v115 = 0;
    }

    else
    {
      v115 = API_Get_GPS_MS_Ass_Meas(0, 0, &v178[1]);
    }

LABEL_259:
    BYTE1(v178[0]) = v115;
  }

LABEL_123:
  v61 = 0;
  v163[0] = 0;
  v164 = 0;
  memset(v167, 0, sizeof(v167));
  v165 = 0;
  v166 = 0;
  v62 = 1;
  while (1)
  {
    v63 = v62;
    if (!GncP04_08GetNextSessInstn(v61, v163, 4u))
    {
      break;
    }

    memset_s(v179, 0x494uLL, 0, 0x494uLL);
    v64 = &v178[191] + 28 * v61 + 4;
    v64[1] = v163[0];
    *(v64 + 1) = v164;
    *v64 = 0;
    v64[8] = 127;
    if (GN_AGNSS_Get_Meas(0, v167[6], v179))
    {
      *v64 = v179[17];
      *(v64 + 1) = GncP11_02ConvertAGnssID(*v179);
      *(v64 + 3) = *&v179[4] % 0x36EE80u;
      v64[8] = v179[10];
      if (*&v179[8] >> 4 > 0x270u)
      {
        v65 = -1;
      }

      else
      {
        v65 = (*&v179[8] * 0.4);
      }

      *(v64 + 5) = v65;
      if (v179[11] == 255)
      {
        v64[16] = -1;
        *(v64 + 5) = 0;
      }

      else
      {
        v64[16] = v179[11];
        *(v64 + 5) = GncP11_02ConvertAGnssID(*&v179[20]);
        v64[24] = 1;
        v64[25] = v179[24] - 1;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
    {
      bzero(&v169, 0x410uLL);
      v66 = mach_continuous_time();
      v67 = snprintf(&v169, 0x40FuLL, "%10u %s%c %s: ID,%u,Qual,%u,TimeGnssId,%u,ToD,%u,TodUnc,%u,ReqConst,%u\n", (*&g_MacClockTicksToMsRelation * v66), "GNC", 68, "GncP01_21QualMeasReqs", *(v64 + 1), *v64, *(v64 + 1), *(v64 + 3), v64[8], v167[6]);
      LbsOsaTrace_WriteLog(8u, &v169, v67, 5, 1);
    }

    v62 = 0;
    v61 = 1;
    if ((v63 & 1) == 0)
    {
      LOBYTE(v61) = 2;
      break;
    }
  }

  BYTE3(v178[0]) = v61;
  if (v178[0])
  {
    v6 = &unk_2A1926000;
    v8 = byte_2A1939000;
    if ((v178[0] & 0x100) == 0 && (v178[0] & 0x10000) == 0 && LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v179, 0x410uLL);
      mach_continuous_time();
      v68 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: No GPS Meas\n");
      goto LABEL_143;
    }
  }

  else
  {
    v6 = &unk_2A1926000;
    v8 = byte_2A1939000;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(v179, 0x410uLL);
      mach_continuous_time();
      v68 = snprintf(v179, 0x40FuLL, "%10u %s%c %s: No GNSS Meas\n");
LABEL_143:
      LbsOsaTrace_WriteLog(8u, v179, v68, 2, 1);
    }
  }

  memcpy(&word_2A191F6D4, v178, 0x634uLL);
LABEL_145:
  v69 = 0;
  v70 = 1;
  do
  {
    while (1)
    {
      v71 = v70;
      v72 = &g_GncPCntxtInfo + 36 * v69;
      if (v72[8] == 1)
      {
        break;
      }

      v70 = 0;
      v69 = 1;
      if ((v71 & 1) == 0)
      {
        v74 = qword_2A191FD10;
LABEL_152:
        if (v74)
        {
          free(v74);
        }

        qword_2A191FD10 = 0;
        goto LABEL_166;
      }
    }

    v70 = 0;
    v73 = v72[9];
    v69 = 1;
  }

  while ((v71 & ((v73 & 8) == 0)) != 0);
  v74 = qword_2A191FD10;
  if ((v73 & 8) == 0)
  {
    goto LABEL_152;
  }

  if (qword_2A191FD10 || (v74 = gnssOsa_Calloc("GncP01_28UpdateRawMeas", 1186, 1, 0x288F8uLL), (qword_2A191FD10 = v74) != 0))
  {
    v75 = *(*(*(v8 + 182) + 88) + 32);
    if (v75)
    {
      v76 = v75 == Last_Published_Raw_Meas_TTag;
    }

    else
    {
      v76 = 1;
    }

    v77 = !v76;
    if (!v76)
    {
      API_Get_Raw_Meas_Data(v74);
      Last_Published_Raw_Meas_TTag = v75;
    }

    byte_2A191FD08 = v77;
  }

LABEL_166:
  if (!gnssOsa_MacExitCriticalSection("GncP01_31Update", 1231, &g_PosUpdateCritic))
  {
    g_MEResetInfo = 0;
    GncP03_10SndNewUpdtSM();
    v80 = g_GncPCntxtInfo;
    if (g_GncPCntxtInfo)
    {
      v81 = v6[326];
      if (v81)
      {
        if (*v81)
        {
          memcpy(v179, v81, sizeof(v179));
          v82 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 1425, 1, 0x18uLL);
          if (v82)
          {
            v83 = v82;
            v84 = gnssOsa_Calloc("GncP01_51SndNmeaUpdt", 1431, 20480, 1uLL);
            v83[2] = v84;
            if (v84)
            {
              v85 = v84;
              if ((v80 & 0x200) != 0 && *(&xmmword_2A1926A30 + 1) && **(&xmmword_2A1926A30 + 1))
              {
                v86 = v178;
                memcpy(v178, *(&xmmword_2A1926A30 + 1), sizeof(v178));
              }

              else
              {
                v86 = 0;
              }

              v87 = GN_GPS_Encode_NMEA(0x5000u, v85, v80, v179, v86);
              *(v83 + 6) = v87;
              if (v87)
              {
                if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
                {
                  bzero(&v169, 0x410uLL);
                  v88 = mach_continuous_time();
                  v89 = snprintf(&v169, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_NMEA_DATA_IND =>GNM Len,%u\n", (*&g_MacClockTicksToMsRelation * v88), "GNC", 73, "GncP01_51SndNmeaUpdt", *(v83 + 6));
                  LbsOsaTrace_WriteLog(8u, &v169, v89, 4, 1);
                }

                AgpsSendFsmMsg(134, 128, 8786691, v83);
                goto LABEL_191;
              }

              if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
              {
                bzero(&v169, 0x410uLL);
                v90 = mach_continuous_time();
                v91 = snprintf(&v169, 0x40FuLL, "%10u %s%c %s: Encode Failed\n", (*&g_MacClockTicksToMsRelation * v90), "GNC", 87, "GncP01_51SndNmeaUpdt");
                LbsOsaTrace_WriteLog(8u, &v169, v91, 2, 1);
              }

              v92 = v83[2];
              if (v92)
              {
                free(v92);
              }
            }

            free(v83);
          }
        }
      }
    }

LABEL_191:
    GncP16_19ChkQualUpdtMEFixInt();
    GncP24_55UpdateBceOrbitAssistance(0);
    result = 1;
    goto LABEL_171;
  }

  result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
  if (result)
  {
    bzero(v178, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 1551;
LABEL_169:
    v78 = snprintf(v178, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v10, "GNC", 69, "GncP01_31Update", v11);
    LbsOsaTrace_WriteLog(8u, v178, v78, 0, 1);
LABEL_170:
    result = 0;
  }

LABEL_171:
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP01_33CheckSessionQualMet(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 5))
  {
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v5;
      v7 = &g_GncP_PEUpdate[4 * v4 + 6352];
      if (g_GncP_PEUpdate[4 * v4 + 6353] == *a1 && *&g_GncP_PEUpdate[4 * v4 + 6354] == *(a1 + 2))
      {
        goto LABEL_18;
      }

      v5 = 0;
      v8 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  if ((*(a1 + 5) & 2) != 0)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v7 = &g_GncP_PEUpdate[28 * v9 + 6436];
      if (g_GncP_PEUpdate[28 * v9 + 6437] == *a1 && *&g_GncP_PEUpdate[28 * v9 + 6438] == *(a1 + 2))
      {
        break;
      }

      v10 = 0;
      v8 = 0;
      v9 = 1;
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_18:
    v8 = *v7;
    goto LABEL_28;
  }

  if ((*(a1 + 5) & 8) == 0)
  {
    if ((*(a1 + 5) & 4) != 0)
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v13;
        if (g_GncP_PEUpdate[28 * v12 + 8025] == *a1 && *&g_GncP_PEUpdate[28 * v12 + 8026] == *(a1 + 2))
        {
          break;
        }

        v13 = 0;
        v8 = 0;
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (g_GncP_PEUpdate[28 * v12 + 8032] <= 0x5Fu && g_GncP_PEUpdate[28 * v12 + 8024] == 255)
      {
        v8 = 1;
        goto LABEL_28;
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ID,%u,Output,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 87, "GncP01_33CheckSessionQualMet", 770, *(a1 + 2), *(a1 + 5));
      LbsOsaTrace_WriteLog(8u, __str, v3, 2, 1);
    }

    goto LABEL_27;
  }

  v8 = byte_2A191FD08;
LABEL_28:
  v15 = *MEMORY[0x29EDCA608];
  return v8 & 1;
}

uint64_t GncP01_34HandleRespSentInd(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND ID,%u,Type,%u,OSTtag,%u,BBTtag,%u\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP01_34HandleRespSentInd", *(a1 + 14), *(a1 + 12), *(a1 + 16), *(a1 + 20));
      LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
    }

    v4 = *(a1 + 12);
    if ((v4 | 2) == 3)
    {
      GN_AGPS_Mark_Response_Sent(*(a1 + 16), *(a1 + 20));
    }

    else
    {
      GN_GPS_Mark_Single_Pos_Used(v4 != 2, *(a1 + 14), *(a1 + 16), *(a1 + 20));
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 69, "GncP01_34HandleRespSentInd", 517);
    LbsOsaTrace_WriteLog(8u, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

void *GncP01_50GetNavData(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  if (g_GncP_PEUpdate[0] != 1)
  {
    *a1 = dword_2A191DD7C;
    goto LABEL_9;
  }

  *a1 = dword_2A191DD84;
  if (GncP11_30CheckUtcValidity(word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96))
  {
    *(a1 + 8) = *&dword_2A191DD80;
    *(a1 + 16) = *&byte_2A191DD88;
    *(a1 + 18) = byte_2A191DD79;
    *(a1 + 20) = *&word_2A191DD8A;
    *(a1 + 28) = word_2A191DD92;
    *(a1 + 30) = *&word_2A191DD94;
    *(a1 + 36) = word_2A191DD98;
    *(a1 + 40) = qword_2A191DE18;
    *(a1 + 48) = *&qword_2A191DDA0;
    *(a1 + 64) = unk_2A191DDB0;
    *(a1 + 72) = vextq_s8(*&qword_2A191DDB8, *&qword_2A191DDB8, 8uLL);
    *(a1 + 88) = unk_2A191DDC8;
    *(a1 + 104) = unk_2A191DDD8;
    *(a1 + 120) = unk_2A191DDE8;
    *(a1 + 136) = unk_2A191DDF8;
    *(a1 + 152) = unk_2A191DE08;
    *(a1 + 168) = unk_2A191DE20;
    *(a1 + 184) = *algn_2A191DE30;
    *(a1 + 200) = *&algn_2A191DE30[16];
    *(a1 + 216) = *&algn_2A191DE30[32];
    *(a1 + 232) = *&algn_2A191DE30[48];
    *(a1 + 248) = *&algn_2A191DE30[64];
    *(a1 + 288) = qword_2A191DE80;
    *(a1 + 264) = xmmword_2A191DE88;
    *(a1 + 280) = qword_2A191DE98;
    *(a1 + 304) = dword_2A191DEA0 & 0x373F;
    v2 = dword_2A191DEA8;
    if (dword_2A191DEA8 > 3)
    {
      if ((dword_2A191DEA8 - 4) >= 2)
      {
        goto LABEL_25;
      }

      v2 = 3;
    }

    else if ((dword_2A191DEA8 - 2) < 2)
    {
      v2 = 2;
    }

    else
    {
      if (!dword_2A191DEA8)
      {
        *(a1 + 296) = 0;
LABEL_16:
        *(a1 + 297) = unk_2A191DEBD;
        *(a1 + 299) = byte_2A191DEBC;
        *(a1 + 300) = GncP11_23ConvertUsrState(dword_2A191DEA4);
        *(a1 + 301) = GncP11_24ConvertGnssContent(dword_2A191DEAC);
        *(a1 + 312) = GncP11_25ConvertReliab(dword_2A191DEB0);
        *(a1 + 313) = GncP11_32ConvertEstimatedTech(dword_2A191DEB4);
        *(a1 + 308) = dword_2A191DEB8 & 0x7707FFFF;
        v7 = byte_2A191DEBF;
        *(a1 + 314) = byte_2A191DEBF;
        *(a1 + 315) = byte_2A191DEC0;
        if (v7)
        {
          v8 = 0;
          v9 = 0x54Cu;
          v10 = 0xA40u;
          do
          {
            v11 = &g_GncP_PEUpdate[4 * v8];
            v12 = a1 + v8;
            *(a1 + v8 + 316) = GncP11_01ConvertGnssID(*(v11 + 83));
            v13 = GncP11_05ConvertGnssSignalID(*(v11 + 211));
            v14 = a1 + 4 * v8;
            *(v14 + 444) = v13;
            *(v12 + 1340) = g_GncP_PEUpdate[v8 + 1740];
            *(v12 + 1468) = g_GncP_PEUpdate[v8 + 1868];
            v15 = &g_GncP_PEUpdate[8 * v8];
            *(a1 + 8 * v8 + 1600) = *(v15 + 250);
            v16 = (a1 + v10);
            *v16 = *&g_GncP_PEUpdate[v10 + 400];
            v16[128] = *&g_GncP_PEUpdate[v10 + 1424];
            v16[256] = *&g_GncP_PEUpdate[v10 + 2448];
            v17 = a1 + 3648 + v8;
            *(v17 + 2048) = g_GncP_PEUpdate[v8 + 6096];
            *(v17 + 2176) = g_GncP_PEUpdate[v8 + 6224];
            LOBYTE(v17) = g_GncP_PEUpdate[v9 + 2];
            *(a1 + v9 - 400) = *&g_GncP_PEUpdate[v9];
            *(a1 + v9 - 398) = *(a1 + v9 - 398) & 0xE0 | v17 & 0x1F;
            if (!*(a1 + v8 + 316) || !*(v14 + 444))
            {
              if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
              {
                bzero(__str, 0x410uLL);
                v18 = mach_continuous_time();
                v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ConstID,%u,SVId,%u,SigID,%u,FreqCh,%u,SNR,%.2f,Used,%u,Conf,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, *(v11 + 83), g_GncP_PEUpdate[v8 + 1740], *(v11 + 211), g_GncP_PEUpdate[v8 + 1868], *(v15 + 250), g_GncP_PEUpdate[v8 + 6096], g_GncP_PEUpdate[v8 + 6224]);
                LbsOsaTrace_WriteLog(8u, __str, v19, 2, 1);
              }
            }

            if ((++v8 & 0x80) != 0)
            {
              break;
            }

            v9 += 3;
            v10 += 8;
          }

          while (v8 < *(a1 + 314));
        }

        goto LABEL_9;
      }

      if (dword_2A191DEA8 != 1)
      {
LABEL_25:
        if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v20 = mach_continuous_time();
          v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FixType,%u\n", (*&g_MacClockTicksToMsRelation * v20), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, dword_2A191DEA8);
          LbsOsaTrace_WriteLog(8u, __str, v21, 2, 1);
        }

        goto LABEL_16;
      }
    }

    *(a1 + 296) = v2;
    goto LABEL_16;
  }

  if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid UTC Y,%u,M,%u,D,%u,H,%u,M,%u,S,%u,MS,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNC", 87, "GncP01_14PopulateNavDataContent", 770, word_2A191DD8A, word_2A191DD8C, word_2A191DD8E, word_2A191DD90, word_2A191DD92, word_2A191DD94, word_2A191DD96);
    LbsOsaTrace_WriteLog(8u, __str, v6, 2, 1);
  }

LABEL_9:
  result = memcpy_s("GncP01_50GetNavData", 1399, (a1 + 5952), 8u, &byte_2A191DD7A + 6350, 8uLL);
  *(a1 + 5960) = byte_2A191DD7A;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP_GetNavData(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetNavData", 1482, &g_PosUpdateCritic))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = 1550;
LABEL_7:
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "GNC", 69, "GncP_GetNavData", v4);
      result = LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
    }
  }

  else
  {
    GncP01_50GetNavData(a1);
    result = gnssOsa_MacExitCriticalSection("GncP_GetNavData", 1490, &g_PosUpdateCritic);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = 1551;
        goto LABEL_7;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP_GetGADData(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetGADData", 1501, &g_PosUpdateCritic))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = 1550;
LABEL_7:
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "GNC", 69, "GncP_GetGADData", v4);
      result = LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
    }
  }

  else
  {
    GncP01_27PopulateGadData(a1);
    result = gnssOsa_MacExitCriticalSection("GncP_GetGADData", 1509, &g_PosUpdateCritic);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = 1551;
        goto LABEL_7;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP_GetLatestUpdtOsTime(void)
{
  v9 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetLatestUpdtOsTime", 1522, &g_PosUpdateCritic))
  {
    v0 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1550);
      LbsOsaTrace_WriteLog(8u, __str, v2, 0, 1);
      v0 = 0;
    }
  }

  else
  {
    v3 = 4;
    if (g_GncP_PEUpdate[0])
    {
      v3 = 12;
    }

    v0 = *&g_GncP_PEUpdate[v3];
    if (gnssOsa_MacExitCriticalSection("GncP_GetLatestUpdtOsTime", 1537, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 69, "GncP_GetLatestUpdtOsTime", 1551);
      LbsOsaTrace_WriteLog(8u, __str, v5, 0, 1);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t GncP_GetMeasData(int a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetMeasData", 1553, &g_PosUpdateCritic))
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v7, "GNC", 69, "GncP_GetMeasData", 1550);
LABEL_44:
      result = LbsOsaTrace_WriteLog(8u, __str, v8, 0, 1);
      goto LABEL_45;
    }

    goto LABEL_45;
  }

  *a2 = dword_2A191F6D8;
  *(a2 + 4) = dword_2A191DD80;
  if (*(&dword_2A191DD80 + 6484) == 1 && g_GncP_PEUpdate[0] == 1)
  {
    v28 = a3;
    *(a2 + 28) |= 2u;
    *(a2 + 8) = *(&dword_2A191DD80 + 6861);
    *(a2 + 24) = dword_2A191DEB8 & 0x7707FFFF;
    *(a2 + 20) = dword_2A191DEA0 & 0x373F;
    *(a2 + 704) = dword_2A191F840 % 0x36EE80u;
    *(a2 + 710) = *(&dword_2A191DD80 + 6854);
    *(a2 + 712) = dword_2A191F848;
    *(a2 + 716) = GncP11_02ConvertAGnssID(dword_2A191F83C);
    *(a2 + 696) = -1;
    *(a2 + 700) = -1;
    v9 = (word_2A191F844 * 0.4);
    if (word_2A191F844 >> 4 > 0x270u)
    {
      LOWORD(v9) = -1;
    }

    *(a2 + 708) = v9;
    *(a2 + 711) = *(&dword_2A191DD80 + 6855);
    *(a2 + 722) = word_2A191DD98;
    *(a2 + 724) = llround(*&qword_2A191DDC0);
    *(a2 + 728) = dword_2A191DD80;
    *(a2 + 720) = byte_2A191DD89;
    if (*(&dword_2A191DD80 + 6860))
    {
      v10 = 0;
      do
      {
        v11 = &g_GncP_PEUpdate[24 * v10 + 6872];
        v12 = GncP11_02ConvertAGnssID(*v11);
        if (LbsOsaTrace_IsLoggingAllowed(8u, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Index,%u,GnssId,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 68, "GncP01_13PopulateGnssMeasData", v10, *v11);
          LbsOsaTrace_WriteLog(8u, __str, v14, 5, 1);
        }

        v15 = *(a2 + 732);
        if (*(a2 + 732))
        {
          v16 = a2 + 748;
          v17 = *(a2 + 732);
          do
          {
            if (v12 == *(v16 - 12))
            {
              if (*(v16 - 2) <= 0x3FuLL)
              {
                GncP01_12ConvertOneGnssSvMeas(a1, v12, v16 + 20 * *(v16 - 2), v11);
                ++*(v16 - 2);
              }

              goto LABEL_24;
            }

            v16 += 10280;
            --v17;
          }

          while (v17);
          if (v15 <= 0xF)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v15 = 0;
LABEL_19:
          v18 = a2 + 736 + 10280 * v15;
          *v18 = v12;
          *(v18 + 4) = 1;
          *(v18 + 8) = 1;
          v19 = g_GncP_PEUpdate[24 * v10 + 6877];
          if (v19 >= 0x7F)
          {
            LOBYTE(v19) = 127;
          }

          *(v18 + 9) = v19;
          GncP01_12ConvertOneGnssSvMeas(a1, v12, v18 + 12, v11);
          ++*(v18 + 10);
          ++*(a2 + 732);
        }

LABEL_24:
        if (v10 > 0x2E)
        {
          break;
        }

        ++v10;
      }

      while (v10 < byte_2A191F84C);
    }

    if (*(a2 + 732))
    {
      v20 = 1;
    }

    else
    {
      v20 = 7;
    }

    *(a2 + 692) = v20;
    if (v28)
    {
      if (byte_2A191F6D6 != 1)
      {
        goto LABEL_41;
      }

      *(a2 + 28) |= 1u;
      v21 = &dword_2A191F78C;
      *(a2 + 696) = dword_2A191F78C;
      *(a2 + 700) = byte_2A191F790;
    }

    else
    {
      if (HIBYTE(word_2A191F6D4) != 1)
      {
        goto LABEL_41;
      }

      *(a2 + 28) |= 1u;
      *(a2 + 696) = dword_2A191F6DC;
      *(a2 + 700) = *(&dword_2A191DD80 + 6496);
      *(a2 + 722) = word_2A191DD98;
      v21 = &dword_2A191DD80 + 1623;
      *(a2 + 724) = llround(*&qword_2A191DDC0);
      *(a2 + 728) = dword_2A191DD80;
      *(a2 + 720) = byte_2A191DD89;
    }

    v22 = *(v21 + 12);
    if (*(v21 + 12))
    {
      v23 = 0;
      *(a2 + 44) = 1;
      *(a2 + 32) = *v21;
      *(a2 + 40) = *(v21 + 4);
      *(a2 + 49) = v22;
      *(a2 + 36) = v21[2];
      *(a2 + 48) = *(v21 + 5);
      *(a2 + 41) = *(v21 + 6);
      if (v22 >= 0x10)
      {
        v22 = 16;
      }

      v24 = 10 * v22;
      do
      {
        v25 = a2 + v23;
        *(v25 + 50) = *(v21 + v23 + 14) - 1;
        *(v25 + 51) = *(v21 + v23 + 15);
        *(v25 + 52) = *(v21 + v23 + 16);
        *(v25 + 56) = *(v21 + v23 + 20);
        v23 += 10;
      }

      while (v24 != v23);
    }

    else
    {
      *(a2 + 44) = 7;
    }
  }

LABEL_41:
  memcpy_s("GncP_GetMeasData", 1614, (a2 + 165288), 0x38u, &unk_2A191FCD0, 0x38uLL);
  *(a2 + 165344) = byte_2A191F6D7;
  result = gnssOsa_MacExitCriticalSection("GncP_GetMeasData", 1617, &g_PosUpdateCritic);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v26, "GNC", 69, "GncP_GetMeasData", 1551);
      goto LABEL_44;
    }
  }

LABEL_45:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP_GetDetailedMeasData(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("GncP_GetDetailedMeasData", 1630, &g_PosUpdateCritic))
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "GNC", 69, "GncP_GetDetailedMeasData", 1550);
      LbsOsaTrace_WriteLog(8u, __str, v4, 0, 1);
      v2 = 0;
    }
  }

  else
  {
    if (byte_2A191FD08 != 1 || qword_2A191FD10 == 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = GncP27_30PopulateRawMeas(qword_2A191FD10, a1);
    }

    if (gnssOsa_MacExitCriticalSection("GncP_GetDetailedMeasData", 1642, &g_PosUpdateCritic) && LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 69, "GncP_GetDetailedMeasData", 1551);
      LbsOsaTrace_WriteLog(8u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

unint64_t GncP01_12ConvertOneGnssSvMeas(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a3 && a4)
  {
    if (a2 == 4)
    {
      v7 = -120;
    }

    else
    {
      v7 = -1;
    }

    if (a2 == 16)
    {
      v7 = 63;
    }

    *a3 = *(a4 + 4) + v7;
    *(a3 + 1) = *(a4 + 6);
    *(a3 + 4) = *(a4 + 8);
    *(a3 + 8) = *(a4 + 12);
    *(a3 + 12) = *(a4 + 16);
    v8 = *(a4 + 20);
    if ((v8 & 0x80000000) != 0)
    {
      *(a3 + 3) |= 1u;
      v9 = -floor(vcvtd_n_f64_s32(v8, 6uLL));
    }

    else
    {
      v9 = floor(vcvtd_n_f64_u32(v8, 6uLL));
    }

    *(a3 + 16) = v9;
    if (v9 >> 25)
    {
      if (LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AccDelta,%u\n", (*&g_MacClockTicksToMsRelation * v13), "GNC", 87, "GncP01_12ConvertOneGnssSvMeas", 772, *(a3 + 16));
        LbsOsaTrace_WriteLog(8u, __str, v14, 2, 1);
      }

      *(a3 + 16) = 0x1FFFFFF;
    }

    result = mach_continuous_time();
    if ((*&g_MacClockTicksToMsRelation * result) - a1 < *(a4 + 18))
    {
      *(a3 + 3) |= 2u;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 87, "GncP01_12ConvertOneGnssSvMeas", 513);
      result = LbsOsaTrace_WriteLog(8u, __str, v12, 2, 1);
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Comp_ith_DO_Res(uint64_t result, double *a2, uint64_t a3, uint64_t a4, double *a5, double a6)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = a4 + 8 * result;
  *(v6 + 26304) = *(a3 + 40) * a2[1] + *(a3 + 32) * *a2 + *(a3 + 48) * a2[2] - *(a3 + 64) * 299792458.0;
  *a5 = (*(a3 + 40) - *(a4 + 696)) * a2[1] + (*(a3 + 32) - *(a4 + 688)) * *a2 + (*(a3 + 48) - *(a4 + 704)) * a2[2] + (*(a4 + 760) - *(a3 + 64)) * 299792458.0;
  v7 = *(a3 + 72) * dbl_29975FC40[*(a3 + 120) == 1];
  *(v6 + 10024) = v7;
  v8 = a4 + result;
  *(v8 + 8488) = 1;
  ++*(a4 + 8386);
  v9 = *(v8 + 8440);
  if ((v9 & 1) != 0 || *(a4 + result + 14016) == 1)
  {
    v10 = *a5 + a6 * 0.190293673;
    *(a4 + 10408 + 8 * result) = v10;
    v11 = *(a4 + 24 * result + 8872) + *(a4 + 24 * result + 8880);
    v12 = (a4 + 8 * result);
    if (*(a4 + result + 1224) == 1)
    {
      v10 = v10 - v12[255];
      *(a4 + 10408 + 8 * result) = v10;
      v7 = v12[303];
    }

    *(a4 + 12424 + 8 * result) = v11 + v7;
    v12[1397] = v10;
    if (v9 && fabs(v10) < 6000.0)
    {
      v13 = a4 + result;
      *(v13 + 8536) = 1;
      ++*(a4 + 8387);
      *(v13 + 26160) = 1;
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void DD_Assist_BDS_Data(int *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = 0;
  v98 = *MEMORY[0x29EDCA608];
  v84 = a4 + 33548;
  v8 = a4 + 28220;
  v89 = a1 + 1627;
  v93 = a1 + 1614;
  v9 = a4 + 3065;
  v92 = a2 - 241;
  v95 = a1 + 1624;
  v85 = a4 + 3990;
  v88 = a1 + 1626;
  v90 = a1 + 1625;
  v91 = a4 + 3065;
  v10 = a3 + 92;
  v94 = a3 + 92;
  do
  {
    if (*(v10 + v7) > 0xA5u || *(a4[3058] + v7) == 1 && (v92 - *(v9 + 25 * v7)) > 0xFFFFF806)
    {
      goto LABEL_40;
    }

    v97 = 0;
    memset(v96, 0, 23);
    memset(&v96[24], 0, 70);
    if (!Core_Get_BDS_Eph((v7 + 1), a2, v96) || (v11 = a4[3058], *(v11 + v7) == 1) && (v12 = *(v9 + 25 * v7), *v96 <= v12) && a2 - v12 > -1801)
    {
      *(a4[3053] + 20 * v7 + 8) = 0;
      goto LABEL_40;
    }

    v13 = v96[22];
    v14 = v96[22] == 0;
    v15 = v95;
    if (v7 >= 0x13 && (v15 = v90, (v7 - 19) >= 0xB) && (v15 = v88, (v7 - 30) > 6))
    {
      v16 = 0;
      if (!*(v11 + v7))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *v15;
      if (!*(v11 + v7))
      {
        goto LABEL_19;
      }
    }

    v17 = v91 + 25 * v7;
    if (*v96 - *v17 <= 10799)
    {
      v87 = a4[3058];
      v86 = v96[22] == 0;
      v18 = Is_BDS_IntEph_Real(v91 + 100 * v7);
      v14 = v86;
      v11 = v87;
      if (v18)
      {
        v19 = Is_BDS_IntEph_Real(v96);
        v14 = v86;
        v11 = v87;
        if (!v19)
        {
          *v17 = a2;
          v9 = v91;
          v10 = v94;
          goto LABEL_40;
        }
      }
    }

LABEL_19:
    v20 = a4[3052];
    if (v16 < 1)
    {
      v9 = v91;
      v10 = v94;
    }

    else
    {
      v21 = *(v20 + v7) | v13;
      v9 = v91;
      v10 = v94;
      if (!v21)
      {
        v22 = a4[3060];
        if (*(v22 + v7) != 1)
        {
          goto LABEL_28;
        }

        if ((*(v85 + 44 * v7 + 42) & 1) != 0 || v16 + 3600 <= a2)
        {
          if (v16 + 100 < a2)
          {
            *(a4[3055] + v7) = 0;
            *(v22 + v7) = 0;
            *(v93 + v7) = -1;
            v20 = a4[3052];
            v11 = a4[3058];
          }

LABEL_28:
          v14 = 1;
          goto LABEL_29;
        }

        v14 = 0;
      }
    }

LABEL_29:
    v23 = v9 + 100 * v7;
    v24 = *&v96[80];
    *(v23 + 64) = *&v96[64];
    *(v23 + 80) = v24;
    *(v23 + 96) = v97;
    v25 = *&v96[16];
    *v23 = *v96;
    *(v23 + 16) = v25;
    v26 = *&v96[48];
    *(v23 + 32) = *&v96[32];
    *(v23 + 48) = v26;
    *(a4[3054] + v7) = 1;
    *(v11 + v7) = 1;
    *(v20 + v7) = v14;
    if (v14)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v28 = a4[3053] + 20 * v7;
    v29 = (v28 + 12);
    v30 = (v28 + 8);
    if (*(v23 + 4) == 5)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    *v31 = v27;
    if (a2 >= 1)
    {
      *(a4[3061] + v7) = 1;
      Core_Save_BDS_Eph((v7 + 1), 0, v23);
      v20 = a4[3052];
    }

    v32 = 0;
    LODWORD(v33) = 0;
    v34 = p_NV;
    v35 = p_NV + 12868;
    v36 = *(v20 + 29);
    v37 = *(v20 + 16);
    *(p_NV + 12868) = *v20;
    *(v35 + 16) = v37;
    *(v35 + 29) = v36;
    v38 = 55665;
    do
    {
      v39 = *(v34 + 12864 + v32) ^ BYTE1(v38);
      v38 = 52845 * (v38 + v39) + 22719;
      v33 = (v33 + v39);
      ++v32;
    }

    while (v32 != 48);
    *(v34 + 12856) = v33;
    *(v89 + v7) = 255;
LABEL_40:
    ++v7;
  }

  while (v7 != 37);
  if (a2 >= 1)
  {
    for (i = 0; i != 37; ++i)
    {
      if (*(a4[3052] + i) == 1 && (*(*(a5 + 928) + i) & 1) == 0 && *(v94 + i) <= 0xA5u && (*(a4[3059] + i) != 1 || a2 - *v8 >= 241))
      {
        v97 = 0;
        memset(v96, 0, 23);
        memset(&v96[24], 0, 70);
        BDS_IntEph = EE_Get_BDS_IntEph(i + 1, a2, v96);
        v42 = a4[3059];
        if (!BDS_IntEph || *(v42 + i) == 1 && *v96 <= *v8)
        {
          *(v42 + i) = 0;
        }

        else
        {
          v43 = *&v96[16];
          *v8 = *v96;
          *(v8 + 1) = v43;
          *(v8 + 24) = v97;
          v44 = *&v96[80];
          *(v8 + 4) = *&v96[64];
          *(v8 + 5) = v44;
          v45 = *&v96[48];
          *(v8 + 2) = *&v96[32];
          *(v8 + 3) = v45;
          *(a4[3054] + i) = 1;
          *(v42 + i) = 1;
          *(v89 + i) = 255;
          Debug_Log_BDS_Eph(2, v96);
        }
      }

      v8 += 100;
    }
  }

  v46 = 0;
  memset(v96, 0, 44);
  while (2)
  {
    if (*(a4[3060] + v46) == 1 && a2 - *(v85 + 11 * v46) <= 1800)
    {
      v47 = v46 + 1;
      goto LABEL_85;
    }

    v47 = v46 + 1;
    if (Core_Get_BDS_Alm((v46 + 1), a2, v96) && (*(a4[3060] + v46) != 1 || *v96 > *(v85 + 11 * v46)))
    {
      v48 = v95;
      if (v46 >= 0x13 && (v48 = v90, (v46 - 19) >= 0xB) && (v48 = v88, (v46 - 30) >= 7))
      {
        v50 = a4[3052];
      }

      else
      {
        v49 = *v48;
        v50 = a4[3052];
        if (v49 >= 1)
        {
          v51 = *(v50 + v46) & v96[42];
          if (*(v50 + v46) & 1) == 0 && (v96[42])
          {
            v52 = a4[3058];
            if (*(v52 + v46) == 1)
            {
              v53 = v91 + 100 * v46;
              v54 = v53[22];
              v55 = *v53;
              if (v54)
              {
                v56 = v55 + 3600 <= a2;
              }

              else
              {
                v56 = 1;
              }

              if (!v56)
              {
                v51 = 0;
                goto LABEL_78;
              }

              if (v55 + 100 < a2)
              {
                *(a4[3054] + v46) = 0;
                *(v52 + v46) = 0;
                *(v89 + v46) = 255;
              }
            }

            v51 = 1;
          }

LABEL_78:
          v57 = (v85 + 44 * v46);
          v58 = *&v96[16];
          *v57 = *v96;
          v57[1] = v58;
          *(v57 + 28) = *&v96[28];
          *(a4[3055] + v46) = 1;
          *(a4[3060] + v46) = 1;
          *(v50 + v46) = v51;
          if (a2 >= 1)
          {
            v59 = 0;
            LODWORD(v60) = 0;
            v61 = (p_NV + 56 * (v46 + 1));
            v62 = v61 + 1611;
            v63 = *(v57 + 28);
            v64 = *v57;
            v61[807] = v57[1];
            v61[806] = v64;
            *(v61 + 12924) = v63;
            v65 = v61 + 806;
            v66 = 55665;
            do
            {
              v67 = *(v65 + v59) ^ BYTE1(v66);
              v66 = 52845 * (v66 + v67) + 22719;
              v60 = (v60 + v67);
              ++v59;
            }

            while (v59 != 48);
            *v62 = v60;
            v50 = a4[3052];
          }

          v68 = 0;
          LODWORD(v69) = 0;
          v70 = p_NV;
          v71 = p_NV + 12868;
          v72 = *(v50 + 29);
          v73 = *(v50 + 16);
          *(p_NV + 12868) = *v50;
          *(v71 + 16) = v73;
          *(v71 + 29) = v72;
          v74 = 55665;
          do
          {
            v75 = *(v70 + 12864 + v68) ^ BYTE1(v74);
            v74 = 52845 * (v74 + v75) + 22719;
            v69 = (v69 + v75);
            ++v68;
          }

          while (v68 != 48);
          *(v70 + 12856) = v69;
          *(v93 + v46) = -1;
          goto LABEL_85;
        }
      }

      v51 = v96[42];
      goto LABEL_78;
    }

LABEL_85:
    v46 = v47;
    if (v47 != 37)
    {
      continue;
    }

    break;
  }

  memset(v96, 0, 20);
  if (((*(v84 + 1) - 4) > 2 || a2 - *v84 >= 1801) && Core_Get_BDS_BGTO(a2, v96) && ((*(v84 + 1) - 4) > 2 || *v96 > *v84))
  {
    *v84 = *v96;
    *(v84 + 4) = *&v96[16];
    if (a2 >= 1)
    {
      v76 = 0;
      LODWORD(v77) = 0;
      v78 = p_NV;
      v79 = (p_NV + 12920);
      *(p_NV + 12936) = *&v96[16];
      *v79 = *v96;
      v80 = 55665;
      do
      {
        v81 = *(v79 + v76) ^ BYTE1(v80);
        v80 = 52845 * (v80 + v81) + 22719;
        v77 = (v77 + v81);
        ++v76;
      }

      while (v76 != 24);
      *(v78 + 12912) = v77;
    }
  }

  v82 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm27_04ComputeCS(unsigned __int8 *a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      --v3;
    }

    while (v3);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CalcCS,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 68, "Gnm27_04ComputeCS", v2);
    LbsOsaTrace_WriteLog(0xBu, __str, v6, 5, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

void *Gnm27_21HandleFixedMeRestoreNoAck(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_FIXED_ME_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm27_21HandleFixedMeRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 69, "Gnm27_21HandleFixedMeRestoreNoAck", 517);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 0, 1);
    }

    goto LABEL_9;
  }

  if (BYTE1(dword_2A19397C1) != 1)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  BYTE1(dword_2A19397C1) = 0;
  if (BYTE2(dword_2A19397C1) <= 2u)
  {
    Gnm27_23RestoreFixedMe(&dword_2A19397C1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  byte_2A19397C5 = 0;
  dword_2A19397C1 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v15, 0x400uLL, "ASSERT: %s %d MWB : Beta table restore timeout after max attempts", "Gnm27_21HandleFixedMeRestoreNoAck", 145);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 69, "Gnm27_21HandleFixedMeRestoreNoAck", v15);
      LbsOsaTrace_WriteLog(0xEu, __str, v14, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm27_21HandleFixedMeRestoreNoAck", "gnm27NvXOCalib.cpp", 146, "false && Beta table restore timeout after max attempts");
  }

  Gnm03_60BaseBandResetReq(4);
  result = &a_GnmResetState;
LABEL_10:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm27_23RestoreFixedMe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v36 = *MEMORY[0x29EDCA608];
  bzero(v30, 0x7FCuLL);
  v30[1] = -1;
  bzero(&v34[1], 0x7D2uLL);
  v29 = 0;
  if (!gnssOsa_getNvSize(4, &v29) || !v29)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(v35, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx ME Beta File\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 87, "Gnm27_32ReadCalibData", 1572);
      LbsOsaTrace_WriteLog(0xBu, v35, v15, 2, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(v35, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: Populating default Beta Table\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 87, "Gnm27_32ReadCalibData");
      LbsOsaTrace_WriteLog(0xBu, v35, v17, 2, 1);
    }

    v34[0] = 0;
    memcpy(&v34[1], &g_BetaC0, 0x1F4uLL);
    memcpy(&v34[501], &g_BetaC1, 0x1F4uLL);
    memcpy(&v34[1001], &g_BetaC2, 0x1F4uLL);
    memcpy(&v34[1501], &g_BetaC3, 0x1F4uLL);
    goto LABEL_15;
  }

  v34[0] = 0;
  Nv = gnssOsa_readNv(4, &v34[1], 0x7D2uLL);
  if (Nv == 2002)
  {
    if (!v34[0])
    {
      v8 = *&v34[2001];
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 5, 0, 0))
      {
        bzero(v35, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: ME RcvdPayloadCS,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 68, "Gnm27_05VerifyCS", v8);
        LbsOsaTrace_WriteLog(0xBu, v35, v10, 5, 1);
      }

      if (v8 != Gnm27_04ComputeCS(&v34[1], 0x7D0u))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(v35, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx ME ComputedPayloadCS\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm27_05VerifyCS", 771);
          v13 = 2;
LABEL_19:
          LbsOsaTrace_WriteLog(0xBu, v35, v12, v13, 1);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

LABEL_15:
    memcpy(__dst, v34, sizeof(__dst));
    v31 = 2000;
    memcpy(v32, &__dst[1], sizeof(v32));
    Gnm26_03SendXRestoreFixedMeCalib(v30);
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(v34, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(v34, 0x40FuLL, "%10u %s%c %s: Restoring ME Fixed data\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm27_23RestoreFixedMe");
    v20 = 4;
    goto LABEL_22;
  }

  v21 = Nv;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(v35, 0x410uLL);
    v22 = mach_continuous_time();
    v12 = snprintf(v35, 0x40FuLL, "%10u %s%c %s: #%04hx ME Beta NV File ReqRead,%u,ActualRead,%zu\n", (*&g_MacClockTicksToMsRelation * v22), "GNM", 69, "Gnm27_32ReadCalibData", 1571, 2002, v21);
    v13 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v31 = 0;
  Gnm26_03SendXRestoreFixedMeCalib(v30);
  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    goto LABEL_23;
  }

  bzero(v34, 0x410uLL);
  v23 = mach_continuous_time();
  v19 = snprintf(v34, 0x40FuLL, "%10u %s%c %s: Sending error\n", (*&g_MacClockTicksToMsRelation * v23), "GNM", 87, "Gnm27_23RestoreFixedMe");
  v20 = 2;
LABEL_22:
  LbsOsaTrace_WriteLog(0xBu, v34, v19, v20, 1);
LABEL_23:
  result = AgpsFsmStartTimer(0x802D06u, 0xFAu);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    v25 = 0;
    if (result)
    {
      bzero(v34, 0x410uLL);
      v26 = mach_continuous_time();
      v27 = snprintf(v34, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v26), "GNM", 87, "Gnm27_23RestoreFixedMe", 1544);
      result = LbsOsaTrace_WriteLog(0xBu, v34, v27, 2, 1);
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  v6[1] = v25;
  ++v6[2];
  *v6 = 0;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void *Gnm27_22HandleFixedMeRestoreAck(unsigned __int8 *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1[1])
  {
    v7 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx WP Restore ACK SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 87, "Gnm27_22HandleFixedMeRestoreAck", 770, a1[1]);
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 2, 1);
      v7 = 0;
    }
  }

  else
  {
    v7 = Gnm25_18CheckRestoreStatus(*a1, "Fixed ME");
  }

  if (BYTE1(dword_2A19397C1) == 1)
  {
    if (AgpsFsmStopTimer(8400134) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm27_22HandleFixedMeRestoreAck", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v11, 2, 1);
    }

    BYTE1(dword_2A19397C1) = 0;
  }

  if (v7)
  {
    byte_2A19397C5 = 0;
    dword_2A19397C1 = 0;
    Gnm10_29SendFwActivity(1, 1);
    HIWORD(dword_2A19397C6) = 0;
    LOBYTE(dword_2A19397C6) = 1;
    Gnm29_01RestoreVarMENv(0);
LABEL_14:
    result = 0;
    goto LABEL_17;
  }

  if (BYTE2(dword_2A19397C1) <= 2u)
  {
    Gnm27_23RestoreFixedMe(&dword_2A19397C1, v2, v3, v4, v5, v6);
    goto LABEL_14;
  }

  byte_2A19397C5 = 0;
  dword_2A19397C1 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v16, 0x400uLL, "ASSERT: %s %d MWB : Beta table restore failed after max attempts", "Gnm27_22HandleFixedMeRestoreAck", 221);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 69, "Gnm27_22HandleFixedMeRestoreAck", v16);
      LbsOsaTrace_WriteLog(0xEu, __str, v15, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm27_22HandleFixedMeRestoreAck", "gnm27NvXOCalib.cpp", 222, "false && Beta table restore failed after max attempts");
  }

  Gnm03_60BaseBandResetReq(5);
  result = &a_GnmResetState;
LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm38_02HandleBMessages(unsigned __int8 *a1, unsigned __int8 *a2, uint8x8_t a3)
{
  v29 = *MEMORY[0x29EDCA608];
  if (a2[1] != 66)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_38;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v22 = *a2;
    v24 = a2[1];
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u\n", v11);
LABEL_37:
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    goto LABEL_38;
  }

  memset(v27, 0, 13);
  v5 = g_HWStatus[0];
  if (g_HWStatus[0] == 1)
  {
    v6 = qword_2A1920A8C;
    v8 = dword_2A1920A94 == 1 && HIDWORD(qword_2A1920A8C) == 2 && qword_2A1920A8C == 3431;
    if (!v8 && qword_2A1920A8C != 1107)
    {
      v9 = 0;
      v10 = 0;
LABEL_22:
      if (v6 == 2472)
      {
        goto LABEL_30;
      }

      v13 = g_GnssHw;
      goto LABEL_27;
    }
  }

  else
  {
    v13 = g_GnssHw;
    if (g_GnssHw != 3 && g_GnssHw != 0)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_25;
    }
  }

  if (a2[2] != 80)
  {
LABEL_35:
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_38;
    }

    bzero(__str, 0x410uLL);
    v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v25 = a2[1];
    v26 = a2[2];
    v23 = *a2;
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDExtn,%u\n", v19, "GNM");
    goto LABEL_37;
  }

  Gnm37_27MapSbCfgPlcToGnmBright(v27, (a1 + 4));
  v9 = *a1;
  v10 = a1[1];
  if (v5)
  {
    v6 = qword_2A1920A8C;
    goto LABEL_22;
  }

  v13 = g_GnssHw;
LABEL_25:
  if (v13 == 1)
  {
    goto LABEL_30;
  }

  v6 = qword_2A1920A8C;
LABEL_27:
  v15 = v6 == 2473;
  v16 = v13 == 2;
  if (!v5)
  {
    v15 = v16;
  }

  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (a2[2] != 77)
  {
    goto LABEL_35;
  }

  Gnm37_28MapSbCfgPlcToGnmSunshine(v27, (a1 + 4), a3);
  v9 = *a1;
  v10 = a1[1];
LABEL_32:
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Rx zx%c%c%c,Status,%u,SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm38_02HandleBMessages", *a2, a2[1], a2[2], v9, v10);
    LbsOsaTrace_WriteLog(0xBu, __str, v18, 4, 1);
  }

  Gnm37_12HandleSbConfigRsp(v9, v10, v27);
LABEL_38:
  v20 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm38_12SendSBCfg(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v26[255] = *MEMORY[0x29EDCA608];
  if (g_HWStatus == 1)
  {
    v6 = HIDWORD(g_HWStatus);
    v8 = dword_2A1920A94 == 1 && dword_2A1920A90 == 2 && HIDWORD(g_HWStatus) == 3431;
    if (!v8 && HIDWORD(g_HWStatus) != 1107)
    {
      if (HIDWORD(g_HWStatus) != 2472)
      {
        v9 = g_GnssHw;
        goto LABEL_24;
      }

LABEL_28:
      memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
      qmemcpy(v22, "BbM", sizeof(v22));
      __s = a2;
      v25 = v5;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: zxBbM ReqType,%c,ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm38_11SendSBCfgSunshine", a2, v5);
        LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
      }

      if (a2 != 71)
      {
        if (a2 == 83)
        {
          if (a3)
          {
            Gnm37_26MapSbCfgGnmToPlcSunshine(v26, a3, v15);
            goto LABEL_34;
          }

          result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
          if (!result)
          {
            goto LABEL_44;
          }

LABEL_42:
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SBConfig\n");
          goto LABEL_43;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
        if (!result)
        {
          goto LABEL_44;
        }

        goto LABEL_38;
      }

LABEL_35:
      v18 = "GET SIDEBAND CFG REQ";
      goto LABEL_36;
    }

    goto LABEL_15;
  }

  v9 = g_GnssHw;
  switch(g_GnssHw)
  {
    case 3:
      goto LABEL_15;
    case 1:
      goto LABEL_28;
    case 0:
LABEL_15:
      memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
      qmemcpy(v22, "BbP", sizeof(v22));
      __s = a2;
      v25 = v5;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: zxBbP ReqType,%c,ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm38_10SendSBCfgBright", a2, v5);
        LbsOsaTrace_WriteLog(0xBu, __str, v11, 4, 1);
      }

      if (a2 == 71)
      {
        goto LABEL_35;
      }

      if (a2 == 83)
      {
        if (a3)
        {
          Gnm37_25MapSbCfgGnmToPlcBright(v26, a3);
LABEL_34:
          v18 = "SET SIDEBAND CFG REQ";
LABEL_36:
          result = Gnm07_06EncodeNSend(v22, &__s, v18);
          goto LABEL_44;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
        if (!result)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
      if (result)
      {
LABEL_38:
        bzero(__str, 0x410uLL);
        v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RequestType:%u\n", v19);
LABEL_43:
        result = LbsOsaTrace_WriteLog(0xBu, __str, v20, 2, 1);
        goto LABEL_44;
      }

      goto LABEL_44;
  }

  v6 = HIDWORD(g_HWStatus);
LABEL_24:
  v12 = v6 == 2473;
  v13 = v9 == 2;
  if (g_HWStatus)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    goto LABEL_28;
  }

LABEL_44:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t isMeasDataType(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 >= 0xF)
  {
    if (g_FPE_LogSeverity)
    {
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v4 = *(g_TCU + 8);
      }

      else
      {
        v4 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Unknown e_FpeMeasType %d", "isMeasDataType", 86, v3, v4, a1);
    }

    LOBYTE(v2) = 0;
    g_FPE_AssertFlag = 1;
  }

  else
  {
    v2 = 0x47FFu >> a1;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2 & 1;
}

uint64_t ExtMeasExtract_Init(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 87720);
  v3 = a1 + 77672;
  v4 = a1 + 52688;
  bzero((a1 + 8), 0x15720uLL);
  v5 = 0;
  v6 = a1 + 25888;
  *(a1 + 56) = a1 + 288;
  *(a1 + 64) = a1 + 25888;
  *a1 = a1 + 288;
  *(a1 + 72) = 0x32000000020;
  *(a1 + 80) = 25600;
  do
  {
    *(a1 + 8 * v5 + 8) = a1 + 288;
    *(a1 + v5++ + 84) = 0;
  }

  while (v5 != 6);
  v7 = 0;
  *(a1 + 96) = v6;
  v8 = a1 + 51488;
  *(a1 + 152) = v6;
  *(a1 + 160) = a1 + 51488;
  *(a1 + 168) = 0x32000000020;
  *(a1 + 176) = 25600;
  do
  {
    *(a1 + 8 * v7 + 104) = v6;
    *(a1 + v7++ + 180) = 0;
  }

  while (v7 != 6);
  v9 = 0;
  *(a1 + 192) = v8;
  *(a1 + 248) = v8;
  *(a1 + 256) = v4;
  *(a1 + 264) = 0x3200000018;
  *(a1 + 272) = 1200;
  do
  {
    *(a1 + 8 * v9 + 200) = v8;
    *(a1 + v9++ + 276) = 0;
  }

  while (v9 != 6);
  v10 = 0;
  *(v4 + 56) = a1 + 52784;
  *(v4 + 64) = v3;
  *v4 = a1 + 52784;
  *(v4 + 72) = 0x300002068;
  *(v4 + 80) = 24888;
  v11 = a1 + 52772;
  do
  {
    *(v11 + 8 * v10 - 76) = a1 + 52784;
    *(v11 + v10++) = 0;
  }

  while (v10 != 6);
  v12 = 0;
  v13 = a1 + 78824;
  *(v3 + 56) = a1 + 78440;
  *(v3 + 64) = a1 + 78824;
  *v3 = a1 + 78440;
  *(v3 + 72) = 0x200000000CLL;
  *(v3 + 80) = 384;
  v14 = a1 + 77756;
  do
  {
    *(v14 + 8 * v12 - 76) = a1 + 78440;
    *(v14 + v12++) = 0;
  }

  while (v12 != 6);
  *(v3 + 96) = v13;
  v15 = a1 + 79208;
  *(v3 + 152) = v13;
  *(v3 + 160) = a1 + 79208;
  *(v3 + 168) = 0x200000000CLL;
  *(v3 + 176) = 384;
  v16 = 77852;
  for (i = 77776; i != 77824; i += 8)
  {
    *(a1 + i) = v13;
    *(a1 + v16++) = 0;
  }

  v18 = 0;
  *(v3 + 192) = v15;
  v19 = a1 + 79592;
  *(v3 + 248) = v15;
  *(v3 + 256) = a1 + 79592;
  *(v3 + 264) = 0x200000000CLL;
  *(v3 + 272) = 384;
  v20 = a1 + 77948;
  do
  {
    *(v20 + 8 * v18 - 76) = v15;
    *(v20 + v18++) = 0;
  }

  while (v18 != 6);
  v21 = 0;
  v22 = a1 + 85480;
  *(v3 + 632) = a1 + 85480;
  v23 = a1 + 85608;
  *(v3 + 640) = a1 + 85608;
  *(v3 + 576) = a1 + 85480;
  *(v3 + 648) = 0x2000000004;
  *(v3 + 656) = 128;
  v24 = a1 + 78332;
  do
  {
    *(v24 + 8 * v21 - 76) = v22;
    *(v24 + v21++) = 0;
  }

  while (v21 != 6);
  v25 = 0;
  v26 = a1 + 80616;
  *(v3 + 344) = v19;
  *(v3 + 352) = a1 + 80616;
  *(v3 + 288) = v19;
  *(v3 + 360) = 0x2000000020;
  *(v3 + 368) = 1024;
  v27 = a1 + 78044;
  do
  {
    *(v27 + 8 * v25 - 76) = v19;
    *(v27 + v25++) = 0;
  }

  while (v25 != 6);
  v28 = 0;
  v29 = a1 + 82920;
  *(v3 + 440) = v26;
  *(v3 + 448) = a1 + 82920;
  *(v3 + 384) = v26;
  *(v3 + 456) = 0x2000000048;
  *(v3 + 464) = 2304;
  v30 = a1 + 78140;
  do
  {
    *(v30 + 8 * v28 - 76) = v26;
    *(v30 + v28++) = 0;
  }

  while (v28 != 6);
  v31 = 0;
  *(v3 + 536) = v29;
  *(v3 + 544) = v22;
  *(v3 + 480) = v29;
  *(v3 + 552) = 0x2000000050;
  *(v3 + 560) = 2560;
  v32 = a1 + 78236;
  do
  {
    *(v32 + 8 * v31 - 76) = v29;
    *(v32 + v31++) = 0;
  }

  while (v31 != 6);
  v33 = 0;
  *(v3 + 728) = v23;
  *(v3 + 736) = a1 + 87656;
  *(v3 + 672) = v23;
  *(v3 + 744) = 0x2000000040;
  *(v3 + 752) = 2048;
  v34 = a1 + 78428;
  do
  {
    *(v34 + 8 * v33 - 76) = v23;
    *(v34 + v33++) = 0;
  }

  while (v33 != 6);
  *v2 = a1;
  v2[1] = a1 + 96;
  v2[2] = a1 + 192;
  v2[3] = v3;
  v2[4] = v3 + 192;
  v2[5] = v3 + 576;
  v2[6] = v3 + 96;
  v2[7] = v3 + 288;
  v2[8] = v3 + 384;
  v2[9] = v3 + 480;
  v2[14] = v3 + 672;
  v2[10] = v4;
  v35 = *MEMORY[0x29EDCA608];
  return 1;
}

void *ExtMeasExtract_extractData(uint64_t a1, unsigned int a2, const void *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((isMeasDataType(a2) & 1) == 0)
  {
    if (g_FPE_LogSeverity)
    {
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      else
      {
        v7 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type not in range", "ExtMeasExtract_extractData", 208, v6, v7);
    }

    g_FPE_AssertFlag = 1;
  }

  v8 = *(a1 + 8 * a2 + 87720);
  v9 = *MEMORY[0x29EDCA608];

  return Cyc_Record_Write(v8, a3);
}

uint64_t ExtMeasExtract_FlushMemory(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  result = isMeasDataType(a3);
  if ((result & 1) == 0)
  {
    if (g_FPE_LogSeverity)
    {
      v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v8 = *(g_TCU + 8);
      }

      else
      {
        v8 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type not in range", "ExtMeasExtract_FlushMemory", 247, v7, v8);
    }

    g_FPE_AssertFlag = 1;
  }

  v9 = *(a1 + 8 * a3 + 87720);
  v9[a2 + 1] = *v9;
  *(v9 + a2 + 84) = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Set_TTFF(uint64_t a1, int *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = (a2 + 5748);
  v5 = 0.0;
  for (i = 3033; i != 3036; ++i)
  {
    v5 = v5 + *&a2[2 * i];
  }

  if (*(a2 + 25171) == 1 && v5 < 40000.0 && a2[6341] <= 0x13 && *(a1 + 11028) >= 2u)
  {
    *(a2 + 960) = 1;
    if (!*(a1 + 11048))
    {
      *(a1 + 11048) = *a2 - *(a1 + 26996);
    }
  }

  if (!*(a1 + 11048))
  {
    *(a2 + 25165) = 0;
    if (*(a1 + 232) == 1 && *(a2 + 3044) < 30000.0 && *(a2 + 3045) < 30000.0 && *(a2 + 3046) < 30000.0)
    {
      *(a2 + 25165) = 1;
    }

    v7 = 100000;
    if (!*(a2 + 960))
    {
      *(a1 + 128) = 1;
      *(a1 + 132) = 93;
      *(a1 + 152) = -1;
      goto LABEL_39;
    }

    if (a2[6206] || a2[3] > 8 || *(a2 + 24778) >= 2u && v5 <= 3600000000.0)
    {
      v8 = *v4;
      if (v8 == 1 && *(a2 + 2883) > 900000000.0 && (*(a2 + 24778) < 2u || a2[6341] > 0x64))
      {
        *(a1 + 128) = 1;
        *(a1 + 132) = 93;
        *(a1 + 152) = -1;
LABEL_33:
        v9 = *(a2 + 2883);
        if (v9 >= 4.8e10 || v9 <= 900000000.0)
        {
          v7 = 100000;
        }

        else
        {
          v7 = 600000;
        }

        goto LABEL_39;
      }

      if (a2[6341] <= 0x186A0 && a2[3] >= 2 && (a2[242] || (*(a1 + 233) != 1 || *(a1 + 152) <= 2) && (*(a2 + 3087) >= 90000.0 || *(a2 + 24776) || a2[6201] == 1)))
      {
        if (*v4)
        {
          goto LABEL_33;
        }

LABEL_39:
        v11 = a2[6341];
        if (v11 > v7)
        {
          *(a2 + 960) = 0;
          *(a1 + 233) = 1;
          memset_pattern16(a2 + 6056, &unk_299760470, 0x58uLL);
          memset_pattern16(a2 + 6078, &unk_299760480, 0x58uLL);
          v5 = 1.00979801e14;
        }

        if (v11 >= 0x3E9 && (*(a1 + 128) & 1) == 0)
        {
          *(a1 + 7) = 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      LOBYTE(v8) = *v4;
    }

    *(a1 + 128) = 1;
    *(a1 + 132) = 93;
    *(a1 + 152) = -1;
    if (v8)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_44:
  if (v5 <= 3600000000.0)
  {
    if (*(a1 + 11028) && v4[1786] >= 3u)
    {
      v12 = 0;
      v13 = *a2;
      do
      {
        if (v13 - *(a1 + 6120 + 4 * v12) >= 180001)
        {
          *(a1 + 6696 + v12) = 0;
        }

        ++v12;
      }

      while (v12 != 48);
    }
  }

  else
  {
    *(a1 + 6712) = 0u;
    *(a1 + 6728) = 0u;
    *(a1 + 6696) = 0u;
  }

  v14 = *MEMORY[0x29EDCA608];
}