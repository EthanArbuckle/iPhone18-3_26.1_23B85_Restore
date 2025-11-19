void sub_2246814B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246814C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246814DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t Scale<unsigned short>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 16);
  v9 = vcvtpd_u64_f64(v8 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(*(a1 + 20) * a5);
  v63 = &unk_283809BF8;
  if (v8 * v5)
  {
    operator new[]();
  }

  v64 = 0;
  v65 = v8;
  v66 = v5;
  v67 = 0;
  v68 = 8 * v8 * v5;
  if (*(a3 + 32) < 8 * v9 * v5)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v9;
  *(a3 + 20) = v5;
  v10 = a5 < 1.0;
  if ((v10 & a2) != 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = 1.0;
  }

  if ((v10 & a2) != 0)
  {
    v12 = 4.0 / a5;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = vcvtpd_u64_f64(v12);
  v14 = a4 < 1.0;
  if ((v14 & a2) != 0)
  {
    v15 = 4.0 / a4;
  }

  else
  {
    v15 = 4.0;
  }

  if ((v14 & a2) != 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = vcvtpd_u64_f64(v15);
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v57 = &unk_283809BF8;
  if (v18 != -4)
  {
    operator new[]();
  }

  v59 = 1;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = &unk_283809C28;
  v58 = 0;
  if (v5)
  {
    v19 = 0;
    do
    {
      v56 = 0;
      CalculateWeightsForScale<double>(&v57, v13, &v56 + 1, &v56, v12, (v19++ + 0.5) / a5 + -0.5, v11);
    }

    while (v19 != v5);
  }

  if (v9)
  {
    v20 = 0;
    v21 = *(a3 + 8);
    v22 = 8 * v5;
    do
    {
      v56 = 0;
      CalculateWeightsForScale<double>(&v57, v17, &v56 + 1, &v56, v15, (v20 + 0.5) / a4 + -0.5, v16);
      if (v56 >= v8)
      {
        v23 = v8 - 1;
      }

      else
      {
        v23 = v56;
      }

      if (v56 >= v8)
      {
        v24 = v56 - v8 + 1;
      }

      else
      {
        v24 = 0;
      }

      if (v5)
      {
        v25 = &v21[v5];
        v26 = (v64 + 8 * (HIDWORD(v56) & ~(SHIDWORD(v56) >> 31)) * v5);
        v27 = v64 + 8 * (v23 * v5);
        v28 = (SHIDWORD(v56) >> 31) & -HIDWORD(v56);
        if (v28)
        {
          do
          {
            v39 = 0;
            v40 = v58;
            v41 = *v26;
            v42 = 0.0;
            do
            {
              v43 = *v40++;
              v42 = v42 + v43 * v41;
              ++v39;
            }

            while (v39 < v28);
            v44 = v26;
            if (v26 < v27)
            {
              do
              {
                v45 = *v40++;
                v42 = v42 + v45 * *v44;
                v44 = (v44 + v22);
              }

              while (v44 < v27);
              v41 = *v44;
            }

            v46 = v42 + *v40 * v41;
            if (v24)
            {
              v47 = v40 + 1;
              v48 = v24;
              do
              {
                v49 = *v47++;
                v46 = v46 + v49 * v41;
                --v48;
              }

              while (v48);
            }

            *v21++ = v46;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }

        else if (v24)
        {
          do
          {
            v29 = v58;
            v30 = 0.0;
            for (i = v26; i < v27; i = (i + v22))
            {
              v32 = *v29++;
              v30 = v30 + v32 * *i;
            }

            v34 = *v29;
            v33 = v29 + 1;
            v35 = *i;
            v36 = v30 + v34 * *i;
            v37 = v24;
            do
            {
              v38 = *v33++;
              v36 = v36 + v38 * v35;
              --v37;
            }

            while (v37);
            *v21++ = v36;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }

        else
        {
          do
          {
            v50 = v58;
            v51 = 0.0;
            for (j = v26; j < v27; j = (j + v22))
            {
              v53 = *v50++;
              v51 = v51 + v53 * *j;
            }

            *v21++ = v51 + *v50 * *j;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }
      }

      ++v20;
    }

    while (v20 != v9);
  }

  v57 = &unk_283809BF8;
  if (v58 && v61 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v63 = &unk_283809BF8;
  result = v64;
  if (v64 && v67 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_224681B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224681BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224681BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t Scale<unsigned char>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  v10 = vcvtpd_u64_f64(v8 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(v9 * a5);
  v64 = &unk_283809BF8;
  if (v8 * v5)
  {
    operator new[]();
  }

  v65 = 0;
  v66 = v8;
  v67 = v5;
  v68 = 0;
  v69 = 8 * v8 * v5;
  if (*(a3 + 32) < 8 * v10 * v5)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v10;
  *(a3 + 20) = v5;
  v11 = a5 < 1.0;
  if ((v11 & a2) != 0)
  {
    v12 = a5;
  }

  else
  {
    v12 = 1.0;
  }

  if ((v11 & a2) != 0)
  {
    v13 = 4.0 / a5;
  }

  else
  {
    v13 = 4.0;
  }

  v14 = vcvtpd_u64_f64(v13);
  v15 = a4 < 1.0;
  if ((v15 & a2) != 0)
  {
    v16 = 4.0 / a4;
  }

  else
  {
    v16 = 4.0;
  }

  if ((v15 & a2) != 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = vcvtpd_u64_f64(v16);
  if (v18 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v58 = &unk_283809BF8;
  if (v19 != -4)
  {
    operator new[]();
  }

  v60 = 1;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = &unk_283809C28;
  v59 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v57 = 0;
      CalculateWeightsForScale<double>(&v58, v14, &v57 + 1, &v57, v13, (i + 0.5) / a5 + -0.5, v12);
      if (v57 < 0)
      {
        HIDWORD(v57) = 0;
        if (v57 < v9)
        {
          continue;
        }
      }

      else if (v57 < v9)
      {
        continue;
      }

      LODWORD(v57) = v9 - 1;
    }
  }

  if (v10)
  {
    v21 = 0;
    v22 = *(a3 + 8);
    v23 = 8 * v5;
    do
    {
      v57 = 0;
      CalculateWeightsForScale<double>(&v58, v18, &v57 + 1, &v57, v16, (v21 + 0.5) / a4 + -0.5, v17);
      if (v57 >= v8)
      {
        v24 = v8 - 1;
      }

      else
      {
        v24 = v57;
      }

      if (v57 >= v8)
      {
        v25 = v57 - v8 + 1;
      }

      else
      {
        v25 = 0;
      }

      if (v5)
      {
        v26 = &v22[v5];
        v27 = (v65 + 8 * (HIDWORD(v57) & ~(SHIDWORD(v57) >> 31)) * v5);
        v28 = v65 + 8 * (v24 * v5);
        v29 = (SHIDWORD(v57) >> 31) & -HIDWORD(v57);
        if (v29)
        {
          do
          {
            v40 = 0;
            v41 = v59;
            v42 = *v27;
            v43 = 0.0;
            do
            {
              v44 = *v41++;
              v43 = v43 + v44 * v42;
              ++v40;
            }

            while (v40 < v29);
            v45 = v27;
            if (v27 < v28)
            {
              do
              {
                v46 = *v41++;
                v43 = v43 + v46 * *v45;
                v45 = (v45 + v23);
              }

              while (v45 < v28);
              v42 = *v45;
            }

            v47 = v43 + *v41 * v42;
            if (v25)
            {
              v48 = v41 + 1;
              v49 = v25;
              do
              {
                v50 = *v48++;
                v47 = v47 + v50 * v42;
                --v49;
              }

              while (v49);
            }

            *v22++ = v47;
            ++v27;
            v28 += 8;
          }

          while (v22 < v26);
        }

        else if (v25)
        {
          do
          {
            v30 = v59;
            v31 = 0.0;
            for (j = v27; j < v28; j = (j + v23))
            {
              v33 = *v30++;
              v31 = v31 + v33 * *j;
            }

            v35 = *v30;
            v34 = v30 + 1;
            v36 = *j;
            v37 = v31 + v35 * *j;
            v38 = v25;
            do
            {
              v39 = *v34++;
              v37 = v37 + v39 * v36;
              --v38;
            }

            while (v38);
            *v22++ = v37;
            ++v27;
            v28 += 8;
          }

          while (v22 < v26);
        }

        else
        {
          do
          {
            v51 = v59;
            v52 = 0.0;
            for (k = v27; k < v28; k = (k + v23))
            {
              v54 = *v51++;
              v52 = v52 + v54 * *k;
            }

            *v22++ = v52 + *v51 * *k;
            ++v27;
            v28 += 8;
          }

          while (v22 < v26);
        }
      }

      ++v21;
    }

    while (v21 != v10);
  }

  v58 = &unk_283809BF8;
  if (v59 && v62 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v64 = &unk_283809BF8;
  result = v65;
  if (v65 && v68 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_2246822E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_2246822F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224682308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

uint64_t Scale<BOOL>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 16);
  v9 = vcvtpd_u64_f64(v8 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(*(a1 + 20) * a5);
  v65 = &unk_283809BF8;
  if (v8 * v5)
  {
    operator new[]();
  }

  v66 = 0;
  v67 = v8;
  v68 = v5;
  v69 = 0;
  v70 = 8 * v8 * v5;
  if (*(a3 + 32) < 8 * v9 * v5)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  v56 = v8;
  *(a3 + 16) = v9;
  *(a3 + 20) = v5;
  v10 = a5 < 1.0;
  if ((v10 & a2) != 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = 1.0;
  }

  if ((v10 & a2) != 0)
  {
    v12 = 4.0 / a5;
  }

  else
  {
    v12 = 4.0;
  }

  v13 = vcvtpd_u64_f64(v12);
  v14 = a4 < 1.0;
  if ((v14 & a2) != 0)
  {
    v15 = 4.0 / a4;
  }

  else
  {
    v15 = 4.0;
  }

  if ((v14 & a2) != 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = vcvtpd_u64_f64(v15);
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v59 = &unk_283809BF8;
  if (v18 != -4)
  {
    operator new[]();
  }

  v61 = 1;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = &unk_283809C28;
  v60 = 0;
  if (v5)
  {
    v19 = 0;
    do
    {
      v58 = 0;
      CalculateWeightsForScale<double>(&v59, v13, &v58 + 1, &v58, v12, (v19++ + 0.5) / a5 + -0.5, v11);
    }

    while (v19 != v5);
  }

  if (v9)
  {
    if (v5)
    {
      v20 = 0;
      v21 = *(a3 + 8);
      v22 = 8 * v5;
      do
      {
        v58 = 0;
        CalculateWeightsForScale<double>(&v59, v17, &v58 + 1, &v58, v15, (v20 + 0.5) / a4 + -0.5, v16);
        if (v58 >= v56)
        {
          v23 = v56 - 1;
        }

        else
        {
          v23 = v58;
        }

        if (v58 >= v56)
        {
          v24 = v58 - v56 + 1;
        }

        else
        {
          v24 = 0;
        }

        v25 = &v21[v5];
        v26 = (v66 + 8 * (HIDWORD(v58) & ~(SHIDWORD(v58) >> 31)) * v5);
        v27 = v66 + 8 * (v23 * v5);
        if (v58 < 0)
        {
          v42 = -HIDWORD(v58);
          do
          {
            v43 = 0;
            v44 = v60;
            v45 = *v26;
            v46 = 0.0;
            do
            {
              v47 = *v44++;
              v46 = v46 + v47 * v45;
              ++v43;
            }

            while (v43 < v42);
            v48 = v26;
            if (v26 < v27)
            {
              do
              {
                v49 = *v44++;
                v46 = v46 + v49 * *v48;
                v48 = (v48 + v22);
              }

              while (v48 < v27);
              v45 = *v48;
            }

            v50 = v46 + *v44 * v45;
            if (v24)
            {
              v51 = v44 + 1;
              v52 = v24;
              do
              {
                v53 = *v51++;
                v50 = v50 + v53 * v45;
                --v52;
              }

              while (v52);
            }

            *v21++ = v50;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }

        else if (v24)
        {
          do
          {
            v28 = v60;
            v29 = 0.0;
            for (i = v26; i < v27; i = (i + v22))
            {
              v31 = *v28++;
              v29 = v29 + v31 * *i;
            }

            v33 = *v28;
            v32 = v28 + 1;
            v34 = *i;
            v35 = v29 + v33 * *i;
            v36 = v24;
            do
            {
              v37 = *v32++;
              v35 = v35 + v37 * v34;
              --v36;
            }

            while (v36);
            *v21++ = v35;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }

        else
        {
          do
          {
            v38 = v60;
            v39 = 0.0;
            for (j = v26; j < v27; j = (j + v22))
            {
              v41 = *v38++;
              v39 = v39 + v41 * *j;
            }

            *v21++ = v39 + *v38 * *j;
            ++v26;
            v27 += 8;
          }

          while (v21 < v25);
        }

        ++v20;
      }

      while (v20 != v9);
    }

    else
    {
      for (k = 0; k != v9; ++k)
      {
        v58 = 0;
        CalculateWeightsForScale<double>(&v59, v17, &v58 + 1, &v58, v15, (k + 0.5) / a4 + -0.5, v16);
      }
    }
  }

  v59 = &unk_283809BF8;
  if (v60 && v63 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v65 = &unk_283809BF8;
  result = v66;
  if (v66 && v69 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_224683064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_224683078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22468308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  MatrixNxPts<1u,double>::~MatrixNxPts(va);
  Matrix<double>::~Matrix(va1);
  _Unwind_Resume(a1);
}

double ImageUtils::Gradient<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = 8 * v5 * v4;
  if (*(a2 + 32) < v6)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v5;
  *(a2 + 20) = v4;
  v7 = *(a3 + 8);
  if (*(a3 + 32) < v6)
  {
    if (v7 && *(a3 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v10 = v8 + 1;
  *v9 = v8[1] - *v8;
  v11 = (v9 + 1);
  *v7 = v8[v4] - *v8;
  v12 = (v7 + 1);
  v13 = (v4 - 1);
  if (v13 < 2)
  {
    v18 = v8 + 1;
    v17 = v7 + 1;
    v16 = v9 + 1;
    goto LABEL_19;
  }

  v14 = (v4 - 2);
  if (v14 <= 0xF)
  {
    v15 = 1;
LABEL_14:
    v16 = v11;
    v17 = v12;
    v18 = v10;
LABEL_15:
    v19 = 0;
    v20 = ~v15 + v4;
    do
    {
      v16[v19] = (v18[v19 + 1] - v18[v19 - 1]) * 0.5;
      v17[v19] = v18[v4 + v19] - v18[v19];
      ++v19;
      --v20;
    }

    while (v20);
    v16 = (v16 + v19 * 8);
    v17 = (v17 + v19 * 8);
    v18 = (v18 + v19 * 8);
    goto LABEL_19;
  }

  v71 = (v4 - 3);
  v72 = &v9[v71 + 2];
  v73 = &v7[v71 + 2];
  v74 = &v8[v71 + 3];
  v75 = &v8[v4];
  v76 = v75 + 1;
  v77 = &v75[v71 + 2];
  v79 = v11 < v74 && v8 < v72;
  v81 = v11 < v77 && v76 < v72;
  v83 = v12 < v74 && v8 < v73;
  v85 = v12 < v77 && v76 < v73;
  v86 = v12 >= v72 || v11 >= v73;
  v15 = 1;
  if (!v86 || v79 || v81 || v83 || v85)
  {
    goto LABEL_14;
  }

  v87 = v14 & 0xFFFFFFFE;
  v16 = &v11->f64[v87];
  v17 = &v12->f64[v87];
  v15 = v14 | 1;
  v18 = &v10[v87];
  __asm { FMOV            V0.2D, #0.5 }

  v89 = v14 & 0xFFFFFFFE;
  do
  {
    *v11++ = vmulq_f64(vsubq_f64(*(v10 + 1), *(v10 - 1)), _Q0);
    v90 = *&v10[v4];
    v91 = *v10;
    v10 += 2;
    *v12++ = vsubq_f64(v90, v91);
    v89 -= 2;
  }

  while (v89);
  if ((v14 & 0xFFFFFFFE) != v14)
  {
    goto LABEL_15;
  }

LABEL_19:
  *v16 = *v18 - *(v18 - 1);
  v21 = v16 + 1;
  *v17 = v18[v4] - *v18;
  v22 = (v17 + 1);
  v23 = v5 - 1;
  v24 = v18 + 1;
  if (v5 - 1 < 2)
  {
    f64 = v17 + 1;
    v38 = v16 + 1;
    v37 = v18 + 1;
    goto LABEL_124;
  }

  if (v13 > 1)
  {
    v25 = 8 * (v4 - 3);
    v26 = v25 + 24;
    v27 = v25 + 24 - 8 * v4;
    v28 = v25 + 24 + 8 * v4;
    v29 = v25 + 32;
    v30 = (v4 - 2);
    v31 = v30 & 0xFFFFFFFE;
    v32 = 1;
    __asm { FMOV            V1.2D, #0.5 }

    v37 = v18 + 1;
    v38 = v16 + 1;
    f64 = v17 + 1;
    while (1)
    {
      v42 = v18 + 2;
      *v38 = v18[2] - *v37;
      *f64 = (v37[v4] - v37[-v4]) * 0.5;
      v43 = (v16 + 2);
      v44 = (v17 + 2);
      if (v30 < 8)
      {
        break;
      }

      v48 = v13;
      v49 = (v16 + v26);
      v50 = (v17 + v26);
      v51 = v18 + 16 - 8 * v4;
      v52 = (v18 + v27);
      v53 = &v18[v4 + 2];
      v54 = (v18 + v28);
      v55 = v18 + 1;
      v56 = (v18 + v29);
      v58 = v43 < (v18 + v27) && v51 < v49;
      v60 = v43 < v54 && v53 < v49;
      v62 = v43 < v56 && v55 < v49;
      v64 = v44 < v52 && v51 < v50;
      v66 = v44 < v54 && v53 < v50;
      v68 = v44 < v56 && v55 < v50;
      v69 = v44 >= v49 || v43 >= v50;
      v45 = 1;
      v13 = v48;
      if (!v69 || v58 || v60 || v62 || v64 || v66 || v68)
      {
        goto LABEL_26;
      }

      v17 = &v44->f64[v31];
      v16 = &v43->f64[v31];
      v18 = &v42[v31];
      v70 = v30 & 0xFFFFFFFE;
      do
      {
        *v43++ = vmulq_f64(vsubq_f64(*(v42 + 1), *(v42 - 1)), _Q1);
        *v44++ = vmulq_f64(vsubq_f64(*&v42[v4], *&v42[-v4]), _Q1);
        v42 += 2;
        v70 -= 2;
      }

      while (v70);
      if ((v30 & 0xFFFFFFFE) != v30)
      {
        v45 = v30 | 1;
        v44 = v17;
        v43 = v16;
        v42 = v18;
LABEL_26:
        v46 = 0;
        v47 = v13 - v45;
        do
        {
          v43->f64[v46] = (v42[v46 + 1] - v42[v46 - 1]) * 0.5;
          v44->f64[v46] = (v42[v4 + v46] - v42[v46 - v4]) * 0.5;
          ++v46;
          --v47;
        }

        while (v47);
        v17 = &v44->f64[v46];
        v40 = v44 + v46 * 8 - 8;
        v16 = &v43->f64[v46];
        v41 = v43 + v46 * 8 - 8;
        v18 = &v42[v46];
        goto LABEL_23;
      }

      v40 = (v17 - 1);
      v41 = (v16 - 1);
LABEL_23:
      *v17 = (v18[v4] - v18[-v4]) * 0.5;
      ++v32;
      *v16 = *v18 - *(v18 - 1);
      f64 = (v40 + 16);
      v38 = (v41 + 16);
      v37 = v18 + 1;
      if (v32 == v23)
      {
        goto LABEL_124;
      }
    }

    v45 = 1;
    goto LABEL_26;
  }

  v92 = v5 - 2;
  if (v92 <= 0xB)
  {
    v93 = 1;
LABEL_120:
    v37 = v18 + 1;
    v38 = v16 + 1;
    f64 = v17 + 1;
LABEL_121:
    v94 = 0;
    v95 = ~v93 + v5;
    v96 = v17;
    v97 = v16;
    v98 = v18;
    do
    {
      *v38 = v18[v94 + 2] - *v37;
      v99 = v37[v4];
      v100 = v37[-v4];
      v37 = v98 + 3;
      v98 += 2;
      *f64 = (v99 - v100) * 0.5;
      v38 = v97 + 3;
      v97 += 2;
      v101 = &v16[v94];
      f64 = v96 + 3;
      v96 += 2;
      v17[v94 + 2] = (v18[v4 + 2 + v94] - v18[v94 + 2 - v4]) * 0.5;
      v103 = v18[v94 + 1];
      v102 = v18[v94 + 2];
      v94 += 2;
      v101[2] = v102 - v103;
      --v95;
    }

    while (v95);
    f64 = &v17[v94 + 1];
    v38 = &v16[v94 + 1];
    v18 = (v18 + v94 * 8);
    v37 = v18 + 1;
    goto LABEL_124;
  }

  v136 = 16 * (v5 - 3) + 24;
  v137 = (v16 + v136);
  v138 = (v17 + v136);
  v139 = (v18 + v136);
  v140 = 8 * v4;
  v141 = &v18[-v4 + 1];
  v142 = (v18 + v136 - 8 * v4);
  v143 = &v18[v4];
  v144 = v143 + 1;
  v145 = v143 + v136;
  v147 = v21 < v139 && v24 < v137;
  v149 = v21 < v142 && v141 < v137;
  v151 = v21 < v145 && v144 < v137;
  v153 = v22 < v139 && v24 < v138;
  v155 = v22 < v142 && v141 < v138;
  v157 = v22 < v145 && v144 < v138;
  v158 = v22 >= v137 || v21 >= v138;
  v93 = 1;
  if (!v158 || v147 || v149 || v151 || v153 || v155 || v157)
  {
    goto LABEL_120;
  }

  v159 = 16 * (v92 & 0xFFFFFFFE);
  v37 = &v24[v159 / 8];
  v38 = &v21[v159 / 8];
  f64 = v22[v159 / 0x10].f64;
  v93 = v92 | 1;
  v17 = (v17 + v159);
  v16 = (v16 + v159);
  v18 = (v18 + v159);
  __asm { FMOV            V0.2D, #0.5 }

  v161 = v92 & 0xFFFFFFFE;
  do
  {
    v162 = v24;
    v165 = vld2q_f64(v162);
    v163 = &v162[v140 / 0xFFFFFFFFFFFFFFF8];
    v165.val[0] = vsubq_f64(v165.val[1], v165.val[0]);
    v164 = vmulq_f64(vsubq_f64(*&v24[v140 / 8 + 2], v163[1]), _Q0);
    *v22 = vmulq_f64(vsubq_f64(*&v24[v4], *v163), _Q0);
    v22[1] = v164;
    v22 += 2;
    v166 = vld2q_f64(v24);
    v24 += 4;
    v165.val[1] = vsubq_f64(v166.val[1], v166.val[0]);
    vst2q_f64(v21, v165);
    v21 += 4;
    v161 -= 2;
  }

  while (v161);
  if ((v92 & 0xFFFFFFFE) != v92)
  {
    goto LABEL_121;
  }

LABEL_124:
  v104 = v18 + 2;
  *v38 = v18[2] - *v37;
  v105 = (v38 + 1);
  *f64 = *v37 - v37[-v4];
  v106 = (f64 + 1);
  if (v13 < 2)
  {
    v111 = v18 + 2;
    v110 = f64 + 1;
    v109 = v38 + 1;
    goto LABEL_132;
  }

  v107 = (v4 - 2);
  if (v107 <= 0xF)
  {
    v108 = 1;
LABEL_127:
    v109 = v38 + 1;
    v110 = v106;
    v111 = v104;
LABEL_128:
    v112 = 0;
    v113 = ~v108 + v4;
    do
    {
      v109[v112] = (v111[v112 + 1] - v111[v112 - 1]) * 0.5;
      v110[v112] = v111[v112] - v111[v112 - v4];
      ++v112;
      --v113;
    }

    while (v113);
    v109 = (v109 + v112 * 8);
    v110 = (v110 + v112 * 8);
    v111 = (v111 + v112 * 8);
    goto LABEL_132;
  }

  v115 = (v4 - 3);
  v116 = &v38[v115 + 2];
  v117 = &f64[v115 + 2];
  v118 = &v18[-v4 + 2];
  v119 = v18 + v115 * 8 - 8 * v4 + 24;
  v120 = v18 + 1;
  v121 = &v18[v115 + 4];
  v123 = v105 < v119 && v118 < v116;
  v125 = v105 < v121 && v120 < v116;
  v127 = v106 < v119 && v118 < v117;
  v129 = v106 < v121 && v120 < v117;
  v130 = v106 >= v116 || v105 >= v117;
  v108 = 1;
  if (!v130 || v123 || v125 || v127 || v129)
  {
    goto LABEL_127;
  }

  v131 = v107 & 0xFFFFFFFE;
  v109 = &v105->f64[v131];
  v110 = &v106->f64[v131];
  v108 = v107 | 1;
  v111 = &v104[v131];
  __asm { FMOV            V0.2D, #0.5 }

  v133 = v107 & 0xFFFFFFFE;
  do
  {
    *v105++ = vmulq_f64(vsubq_f64(*(v104 + 1), *(v104 - 1)), _Q0);
    v134 = *&v104[-v4];
    v135 = *v104;
    v104 += 2;
    *v106++ = vsubq_f64(v135, v134);
    v133 -= 2;
  }

  while (v133);
  if ((v107 & 0xFFFFFFFE) != v107)
  {
    goto LABEL_128;
  }

LABEL_132:
  *v109 = *v111 - *(v111 - 1);
  result = *v111 - v111[-v4];
  *v110 = result;
  return result;
}

int8x16_t *ImageUtils::Fliplr<double>(int8x16_t *result, uint64_t a2)
{
  v2 = result;
  v4 = result[1].u32[0];
  v3 = result[1].u32[1];
  if (*(a2 + 32) < 8 * v4 * v3)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v3;
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(a2 + 8);
    if (v3 > 3)
    {
      v9 = 8 * (v3 - 1);
      v10 = v9 + 8;
      v11 = 8 * v3;
      v12 = 8 * v3 - 8;
      v13 = v12 - v9;
      v14 = 8 * (v3 & 0xFFFFFFFC);
      if ((v3 & 0xFFFFFFFC) == v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = v11 - 16;
        do
        {
          result = (8 * v15);
          v18 = v2->i64[1];
          v19 = v18 + 8 * (v3 * v16);
          v20 = v19 + 8 * v3;
          v21 = v19 + v13;
          if (v6 >= v20 || v21 >= v6->u64 + v10)
          {
            v23 = (v6 + v14);
            v24 = v6 + 1;
            result = (result + v18 + v17);
            v25 = v3 & 0xFFFFFFFC;
            do
            {
              v26 = vextq_s8(result[-1], result[-1], 8uLL);
              v24[-1] = vextq_s8(*result, *result, 8uLL);
              *v24 = v26;
              v24 += 2;
              result -= 2;
              v25 -= 4;
            }

            while (v25);
            v6 = v23;
          }

          else
          {
            v27 = (result->i64 + v18 + v12);
            LODWORD(result) = v3;
            do
            {
              v28 = *v27--;
              v6->i64[0] = v28;
              v6 = (v6 + 8);
              result = (result - 1);
            }

            while (result);
          }

          ++v16;
          v15 += v3;
        }

        while (v16 != v4);
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = v11 - 16;
        do
        {
          v32 = v2->i64[1];
          v33 = v32 + 8 * (v3 * v30);
          v34 = v33 + 8 * v3;
          v35 = v33 + v13;
          if (v6 >= v34 || v35 >= v6->u64 + v10)
          {
            v37 = (v6 + v14);
            v34 -= v14;
            v38 = (v32 + v31 + 8 * v29);
            v39 = v6 + 1;
            v40 = v3 & 0xFFFFFFFC;
            do
            {
              v41 = vextq_s8(v38[-1], v38[-1], 8uLL);
              v39[-1] = vextq_s8(*v38, *v38, 8uLL);
              *v39 = v41;
              v38 -= 2;
              v39 += 2;
              v40 -= 4;
            }

            while (v40);
            v42 = v3 & 0xFFFFFFFC;
            v6 = v37;
          }

          else
          {
            v42 = 0;
          }

          LODWORD(result) = v3 - v42;
          v43 = (v34 - 8);
          do
          {
            v44 = *v43--;
            v6->i64[0] = v44;
            v6 = (v6 + 8);
            result = (result - 1);
          }

          while (result);
          ++v30;
          v29 += v3;
        }

        while (v30 != v4);
      }
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = result->i64[1] + 8 * v7 + 8 * v3;
        v6->i64[0] = *(v8 - 8);
        if (v3 == 1)
        {
          v6 = (v6 + 8);
        }

        else
        {
          v6->i64[1] = *(v8 - 16);
          if (v3 == 2)
          {
            ++v6;
          }

          else
          {
            v6[1].i64[0] = *(v8 - 24);
            v6 = (v6 + 24);
          }
        }

        v7 += v3;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t ImageUtils::Flipud<double>(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 20);
  if (*(a2 + 32) < 8 * v3 * v2)
  {
    if (*(a2 + 8))
    {
      if (*(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a2 + 16) = v3;
  *(a2 + 20) = v2;
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v2 > 3)
    {
      v8 = v2 & 0xFFFFFFFC;
      if ((v2 & 0xFFFFFFFC) == v2)
      {
        v9 = 0;
        v10 = v2 * (v3 - 1);
        do
        {
          v11 = *(result + 8);
          v12 = (v11 + 8 * ((v3 + ~v9) * v2));
          if ((v5 - v12) > 0x1F)
          {
            v15 = &v5[v8];
            v16 = (v11 + 8 * v10 + 16);
            v17 = v5 + 2;
            v18 = v2 & 0xFFFFFFFC;
            do
            {
              v19 = *v16;
              *(v17 - 1) = *(v16 - 1);
              *v17 = v19;
              v16 += 2;
              v17 += 2;
              v18 -= 4;
            }

            while (v18);
            v5 = v15;
          }

          else
          {
            v13 = v2;
            do
            {
              v14 = *v12;
              v12 += 8;
              *v5++ = v14;
              --v13;
            }

            while (v13);
          }

          ++v9;
          v10 -= v2;
        }

        while (v9 != v3);
      }

      else
      {
        v20 = 0;
        v21 = v2 * (v3 - 1);
        do
        {
          v22 = *(result + 8);
          v23 = (v22 + 8 * ((v3 + ~v20) * v2));
          if ((v5 - v23) >= 0x20)
          {
            v25 = &v5[v8];
            v23 += v8 * 8;
            v26 = (v22 + 8 * v21 + 16);
            v27 = v5 + 2;
            v28 = v2 & 0xFFFFFFFC;
            do
            {
              v29 = *v26;
              *(v27 - 1) = *(v26 - 1);
              *v27 = v29;
              v26 += 2;
              v27 += 2;
              v28 -= 4;
            }

            while (v28);
            v24 = v2 & 0xFFFFFFFC;
            v5 = v25;
          }

          else
          {
            v24 = 0;
          }

          v30 = v2 - v24;
          do
          {
            v31 = *v23;
            v23 += 8;
            *v5++ = v31;
            --v30;
          }

          while (v30);
          ++v20;
          v21 -= v2;
        }

        while (v20 != v3);
      }
    }

    else
    {
      v6 = v2 * (v3 - 1);
      do
      {
        v7 = (*(result + 8) + 8 * v6);
        *v5 = *v7;
        if (v2 == 1)
        {
          ++v5;
        }

        else
        {
          v5[1] = v7[1];
          if (v2 == 2)
          {
            v5 += 2;
          }

          else
          {
            v5[2] = v7[2];
            v5 += 3;
          }
        }

        v6 -= v2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

double ImageUtils::Rot90<double>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v18 = *(a3 + 8);
      if (*(a3 + 32) < 8 * v4 * v3)
      {
        if (v18 && *(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170](*(a3 + 8));
        }

        operator new[]();
      }

      v19 = v4 * v3;
      *(a3 + 16) = v4;
      *(a3 + 20) = v3;
      if (v4 * v3)
      {
        v20 = *(a1 + 8);
        v21 = v19 - 1;
        v22 = (v20 + 8 * v21);
        if (v19 >= 0xA && ((v23 = 8 * v21 + 8, v18 < v20 + v23) ? (v24 = v20 >= v18 + v23) : (v24 = 1), v24))
        {
          v25 = v19 & 0xFFFFFFFC;
          v22 -= v25;
          v26 = (v18 + 8 * v25);
          v27 = (v18 + 16);
          v28 = (v20 + 8 * v21 - 8);
          v29 = v25;
          do
          {
            v10 = vextq_s8(*v28, *v28, 8uLL);
            v30 = vextq_s8(v28[-1], v28[-1], 8uLL);
            v27[-1] = v10;
            *v27 = v30;
            v27 += 2;
            v28 -= 2;
            v29 -= 4;
          }

          while (v29);
          if (v25 == v19)
          {
            return *v10.i64;
          }
        }

        else
        {
          LODWORD(v25) = 0;
          v26 = v18;
        }

        v31 = v19 - v25;
        do
        {
          v32 = *v22--;
          v10.i64[0] = v32;
          *v26++ = v32;
          --v31;
        }

        while (v31);
      }
    }

    else if (a2 == 3)
    {
      if (*(a3 + 32) < 8 * v3 * v4)
      {
        if (*(a3 + 8) && *(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v11 = 0;
        v12 = *(a3 + 8);
        v13 = 8 * (v4 - 1) * v3;
        do
        {
          v14 = (*(a1 + 8) + v13);
          v15 = v4;
          do
          {
            v10.i64[0] = *v14;
            *v12++ = *v14;
            v14 -= v3;
            --v15;
          }

          while (v15);
          ++v11;
          v13 += 8;
        }

        while (v11 != v3);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if (*(a3 + 32) < 8 * v3 * v4)
      {
        if (*(a3 + 8))
        {
          if (*(a3 + 24) == 1)
          {
            MEMORY[0x22AA53170]();
          }
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v5 = 0;
        v6 = *(a3 + 8);
        v7 = 8 * (v3 - 1);
        do
        {
          v8 = (*(a1 + 8) + v7);
          v9 = v4;
          do
          {
            v10.i64[0] = *v8;
            *v6++ = *v8;
            v8 += v3;
            --v9;
          }

          while (v9);
          ++v5;
          v7 -= 8;
        }

        while (v5 != v3);
      }
    }
  }

  else
  {
    v16 = *(a1 + 8);
    v17 = *(a3 + 8);
    if (*(a3 + 32) < 8 * v4 * v3)
    {
      if (v17 && *(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }

      operator new[]();
    }

    *(a3 + 16) = v4;
    *(a3 + 20) = v3;

    memcpy(v17, v16, 8 * v4 * v3);
  }

  return *v10.i64;
}

double ImageUtils::Rot90<BOOL>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (*(a3 + 32) < v4 * v3)
        {
          if (*(a3 + 8))
          {
            if (*(a3 + 24) == 1)
            {
              MEMORY[0x22AA53170]();
            }
          }

          operator new[]();
        }

        *(a3 + 16) = v3;
        *(a3 + 20) = v4;
        if (v3 && v4)
        {
          v5 = 0;
          v6 = *(a3 + 8);
          do
          {
            v7 = (*(a1 + 8) + (v3 - 1) - v5);
            v8 = v4;
            do
            {
              *v6++ = *v7;
              v7 += v3;
              --v8;
            }

            while (v8);
            ++v5;
          }

          while (v5 != v3);
        }
      }
    }

    else
    {
      v13 = *(a1 + 8);
      v14 = *(a3 + 8);
      if (*(a3 + 32) < v4 * v3)
      {
        if (v14 && *(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }

        operator new[]();
      }

      *(a3 + 16) = v4;
      *(a3 + 20) = v3;

      memcpy(v14, v13, v4 * v3);
    }

    return *v16.i64;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      if (*(a3 + 32) < v4 * v3)
      {
        if (*(a3 + 8) && *(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }

        operator new[]();
      }

      *(a3 + 16) = v3;
      *(a3 + 20) = v4;
      if (v3 && v4)
      {
        v9 = 0;
        v10 = *(a3 + 8);
        do
        {
          v11 = (*(a1 + 8) + (v4 - 1) * v3 + v9);
          v12 = v4;
          do
          {
            *v10++ = *v11;
            v11 -= v3;
            --v12;
          }

          while (v12);
          ++v9;
        }

        while (v9 != v3);
      }
    }

    return *v16.i64;
  }

  v15 = *(a3 + 8);
  if (*(a3 + 32) < v4 * v3)
  {
    if (v15 && *(a3 + 24) == 1)
    {
      MEMORY[0x22AA53170](*(a3 + 8));
    }

    operator new[]();
  }

  v17 = v4 * v3;
  *(a3 + 16) = v4;
  *(a3 + 20) = v3;
  if (v4 * v3)
  {
    v18 = *(a1 + 8);
    v19 = v17 - 1;
    v20 = (v18 + v19);
    if (v17 < 8 || (v15 < v18 + v17 ? (v21 = v18 >= v15->u64 + v17) : (v21 = 1), !v21))
    {
      LODWORD(v23) = 0;
      v24 = v15;
      goto LABEL_53;
    }

    if (v17 >= 0x20)
    {
      v22 = v17 & 0xFFFFFFE0;
      v27 = v15 + 1;
      v28 = (v19 + v18 - 15);
      v29 = v22;
      do
      {
        v30 = vrev64q_s8(*v28);
        v16 = vextq_s8(v30, v30, 8uLL);
        v31 = vrev64q_s8(v28[-1]);
        v27[-1] = v16;
        *v27 = vextq_s8(v31, v31, 8uLL);
        v27 += 2;
        v28 -= 2;
        v29 -= 32;
      }

      while (v29);
      if (v22 == v17)
      {
        return *v16.i64;
      }

      if ((v17 & 0x18) == 0)
      {
        v24 = (v15 + v22);
        v20 -= v22;
        LODWORD(v23) = v17 & 0xFFFFFFE0;
        goto LABEL_53;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v17 & 0xFFFFFFF8;
    v20 -= v23;
    v24 = (v15 + v23);
    v32 = (v15->i64 + v22);
    v33 = v22 - v23;
    v34 = (v19 - v22 + v18 - 7);
    do
    {
      v35 = *v34--;
      *v16.i8 = vrev64_s8(v35);
      *v32++ = v16.i64[0];
      v33 += 8;
    }

    while (v33);
    if (v23 == v17)
    {
      return *v16.i64;
    }

LABEL_53:
    v25 = v17 - v23;
    do
    {
      v26 = *v20--;
      v24->i8[0] = v26;
      v24 = (v24 + 1);
      --v25;
    }

    while (v25);
  }

  return *v16.i64;
}

void ImageUtils::OtsuThreshold(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 20);
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v2 * v1;
  if (v2 * v1 < 2)
  {
    v8 = *v3;
  }

  else
  {
    v6 = v3 + 1;
    v7 = v5 - 1;
    v8 = v4;
    do
    {
      if (*v6 < v4)
      {
        v4 = *v6;
      }

      else if (*v6 > v8)
      {
        v8 = *v6;
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  if (v4 != v8)
  {
    v10 = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
    v11 = v10;
    if (v5)
    {
      v12 = *(a1 + 8);
      do
      {
        v13 = *v12++;
        v14 = vcvtad_u64_f64((v13 - v4) / (v8 - v4) * 255.0);
        v10[v14] = 1.0 / (v1 * v2) + v10[v14];
        --v5;
      }

      while (v5);
    }

    v15 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v16 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v17 = v16;
    v18 = *v11;
    *v15 = *v11;
    *v16 = v18;
    if (v15 >= v16 + 256 || v16 >= v15 + 256)
    {
      v19 = 0;
      v21 = *v15;
      v22 = 2;
      do
      {
        v21 = v21 + v11[v19 + 1];
        v15[v19 + 1] = v21;
        v18 = v18 + v11[v19 + 1] * v22;
        v16[++v19] = v18;
        ++v22;
      }

      while ((v19 * 8) != 2040);
    }

    else
    {
      v19 = 0;
      v20 = 2;
      do
      {
        v15[v19 + 1] = v15[v19] + v11[v19 + 1];
        v18 = v16[v19] + v11[v19 + 1] * v20;
        v16[++v19] = v18;
        ++v20;
      }

      while ((v19 * 8) != 2040);
    }

    v23 = &v16[v19 - 1];
    v24 = &v15[v19 - 1];
    v25 = &v11[v19 - 1];
    v26 = 0;
    v27 = *(v24 - 2032);
    v28 = -(*(v23 - 2032) - v18 * v27);
    v29 = v28 * v28 / (v27 * (1.0 - v27));
    v30 = 1;
    v31 = -253;
    v32 = 1;
    do
    {
      while (1)
      {
        v33 = *(v24 + 8 * v31);
        v34 = -(*(v23 + 8 * v31) - v18 * v33);
        v35 = v34 * v34 / (v33 * (1.0 - v33));
        if (v35 <= v29)
        {
          break;
        }

        v32 = 1;
        v26 = v30++;
        ++v31;
        v29 = v35;
        if (v31 == 1)
        {
          goto LABEL_26;
        }
      }

      if (v35 == v29)
      {
        v26 += v31 + 254;
        ++v32;
      }

      ++v30;
      ++v31;
    }

    while (v31 != 1);
LABEL_26:
    v36 = (v25 - 2032);
    free(v15);
    free(v17);
    free(v36);
  }
}

uint64_t ImageUtils::ExtractPatch<double>(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v6 = a2;
  v7 = *(result + 20);
  v8 = *(result + 8);
  v9 = a3 - a2 + 1;
  v10 = a5 - a4 + 1;
  if (*(a6 + 32) < 8 * v9 * v10)
  {
    if (*(a6 + 8))
    {
      if (*(a6 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a6 + 16) = v9;
  *(a6 + 20) = v10;
  if (a3 >= a2 && a5 >= a4)
  {
    v11 = *(a6 + 8);
    v12 = v7 * a2;
    v13 = v8 + 8 * v12;
    v14 = a5 + 1;
    if (a5 + 1 <= a4 + 1)
    {
      v14 = a4 + 1;
    }

    v15 = v14 + ~a4;
    if (v15 > 2)
    {
      if (v14 - 1 >= a4)
      {
        v18 = -(v8 + 8 * (v12 + a4));
        v19 = -8 * v7;
        v20 = v15 + 1;
        v21 = (v15 + 1) & 0x1FFFFFFFCLL;
        v22 = v21;
        if (v20 == v21)
        {
          v23 = 0;
          do
          {
            if (v11 + v18 + v19 * v23 > 0x1F)
            {
              v25 = &v11[v22];
              v26 = v11 + 2;
              v27 = a4;
              v28 = v21;
              do
              {
                result = v13 + 8 * v27;
                v29 = *(result + 16);
                *(v26 - 1) = *result;
                *v26 = v29;
                v26 += 2;
                v27 += 4;
                v28 -= 4;
              }

              while (v28);
              v11 = v25;
            }

            else
            {
              v24 = a4;
              do
              {
                *v11++ = *(v13 + 8 * v24++);
              }

              while (v24 <= a5);
            }

            ++v6;
            v13 += 8 * v7;
            ++v23;
          }

          while (v6 <= a3);
        }

        else
        {
          v30 = 0;
          do
          {
            if (v11 + v18 + v19 * v30 > 0x1F)
            {
              v32 = &v11[v22];
              v33 = v11 + 2;
              v34 = a4;
              result = v21;
              do
              {
                v35 = (v13 + 8 * v34);
                v36 = v35[1];
                *(v33 - 1) = *v35;
                *v33 = v36;
                v33 += 2;
                v34 += 4;
                result -= 4;
              }

              while (result);
              v31 = v21 + a4;
              v11 = v32;
            }

            else
            {
              v31 = a4;
            }

            do
            {
              *v11++ = *(v13 + 8 * v31++);
            }

            while (v31 <= a5);
            ++v6;
            v13 += 8 * v7;
            ++v30;
          }

          while (v6 <= a3);
        }
      }

      else
      {
        do
        {
          v17 = a4;
          do
          {
            *v11++ = *(v13 + 8 * v17++);
          }

          while (v17 <= a5);
          ++v6;
          v13 += 8 * v7;
        }

        while (v6 <= a3);
      }
    }

    else
    {
      do
      {
        v16 = a4;
        do
        {
          *v11++ = *(v13 + 8 * v16++);
        }

        while (v16 <= a5);
        ++v6;
        v13 += 8 * v7;
      }

      while (v6 <= a3);
    }
  }

  return result;
}

uint64_t ImageUtils::Conv2<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = &unk_283809BF8;
  v23 = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v5 = v4 * v3;
  if (8 * v4 * v3)
  {
    operator new[]();
  }

  LODWORD(v22) = *(a2 + 16);
  HIDWORD(v22) = v3;
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = (v5 - 1);
    v8 = (v6 + 8 * v7);
    if (v5 < 0xA || ((v9 = 8 * v7 + 8, v6 + v9) ? (v10 = v6 >= v9) : (v10 = 1), !v10))
    {
      LODWORD(v11) = 0;
      v12 = 0;
LABEL_15:
      v17 = v5 - v11;
      do
      {
        v18 = *v8--;
        *v12++ = v18;
        --v17;
      }

      while (v17);
      goto LABEL_17;
    }

    v11 = v5 & 0xFFFFFFFC;
    v12 = (8 * v11);
    v8 -= v11;
    v13 = 16;
    v14 = (v6 + 8 * v7 - 8);
    v15 = v11;
    do
    {
      v16 = vextq_s8(v14[-1], v14[-1], 8uLL);
      *(v13 - 16) = vextq_s8(*v14, *v14, 8uLL);
      *v13 = v16;
      v13 += 32;
      v14 -= 2;
      v15 -= 4;
    }

    while (v15);
    if (v11 != v5)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  ImageUtils::Filter2<double>(a1, &v20, a3);
  v20 = &unk_283809BF8;
  result = v21;
  if (v21)
  {
    if (v23 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_224684CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void ImageUtils::Filter2<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    ImageUtils::Filter2<double>();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a3 + 8);
  if (*(a3 + 32) < 8 * v5 * v6)
  {
    if (v7)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a3 + 8));
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v5;
  *(a3 + 20) = v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);

  vDSPImgfir<double>(v8, v9, v10, v11, v7, v12, v13);
}

uint64_t ImageUtils::Conv2<float>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = &unk_283809D60;
  v24 = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v5 = v4 * v3;
  if (4 * v4 * v3)
  {
    operator new[]();
  }

  LODWORD(v23) = *(a2 + 16);
  HIDWORD(v23) = v3;
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = (v5 - 1);
    v8 = (v6 + 4 * v7);
    if (v5 < 0xC || ((v9 = 4 * v7 + 4, v6 + v9) ? (v10 = v6 >= v9) : (v10 = 1), !v10))
    {
      LODWORD(v11) = 0;
      v12 = 0;
LABEL_15:
      v18 = v5 - v11;
      do
      {
        v19 = *v8--;
        *v12++ = v19;
        --v18;
      }

      while (v18);
      goto LABEL_17;
    }

    v11 = v5 & 0xFFFFFFF8;
    v12 = (4 * v11);
    v8 -= v11;
    v13 = 16;
    v14 = (v6 + 4 * v7 - 12);
    v15 = v11;
    do
    {
      v16 = vrev64q_s32(*v14);
      v17 = vrev64q_s32(v14[-1]);
      *(v13 - 16) = vextq_s8(v16, v16, 8uLL);
      *v13 = vextq_s8(v17, v17, 8uLL);
      v13 += 32;
      v14 -= 2;
      v15 -= 8;
    }

    while (v15);
    if (v11 != v5)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  ImageUtils::Filter2<float>(a1, &v21, a3);
  v21 = &unk_283809D60;
  result = v22;
  if (v22)
  {
    if (v24 == 1)
    {
      return MEMORY[0x22AA53170]();
    }
  }

  return result;
}

void sub_224684F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void ImageUtils::Filter2<float>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    ImageUtils::Filter2<double>();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a3 + 8);
  if (*(a3 + 32) < 4 * v5 * v6)
  {
    if (v7)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a3 + 8));
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v5;
  *(a3 + 20) = v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);

  vDSPImgfir<float>(v8, v9, v10, v11, v7, v12, v13);
}

uint64_t ImageUtils::ConnectedComp<BOOL>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v79 = *(a1 + 20);
  v9 = *(a3 + 8);
  if (*(a3 + 32) < 2 * v8 * v79)
  {
    if (v9)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a3 + 8));
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v8;
  *(a3 + 20) = v79;
  DisjointSet::DisjointSet(&v81);
  DisjointSet::SetCapacity(&v81, 0xFFFEu);
  *v82 = 0;
  v10 = v81;
  if (!v81)
  {
    __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
  }

  v11 = v83;
  *v83 = 0;
  v12 = 1;
  *v82 = 1;
  if (*v7 == 1)
  {
    if (v10 == 1)
    {
      __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
    }

    v11[1] = 1;
    v12 = 2;
    *v82 = 2;
    v13 = 1;
    *v9 = 1;
    v14 = v79 - 1;
    if (v79 != 1)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v13 = 0;
    *v9 = 0;
    v14 = v79 - 1;
    if (v79 != 1)
    {
LABEL_89:
      v41 = 0;
      v42 = v9 + 1;
      for (i = v14; i; --i)
      {
        if (v7[v41 + 1] == 1)
        {
          if (!v9[v41] || (v7[v41] & 1) == 0 || (v44 = *(v42 - 1)) == 0)
          {
            if (v13 <= 65531)
            {
              if (v12 >= v10)
              {
                __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
              }

              v11[v12] = v12;
              *v42 = v12++;
              *v82 = v12;
              ++v13;
              goto LABEL_91;
            }

            v44 = v12 - 1;
          }

          *v42 = v44;
        }

        else
        {
          *v42 = 0;
        }

LABEL_91:
        ++v42;
        ++v41;
      }
    }
  }

  v74 = a3;
  v75 = a4;
  v76 = v8;
  if (a2 == 4)
  {
    v78 = v14;
    v45 = v8 - 1;
    v15 = v79;
    if (v8 == 1)
    {
      goto LABEL_137;
    }

    v46 = 1 - v79;
    v47 = v79;
    while (1)
    {
      while (1)
      {
        if (v7[v47] != 1)
        {
          v9[v47] = 0;
          if (v15 == 1)
          {
            goto LABEL_103;
          }

          goto LABEL_116;
        }

        v48 = v47 - v15;
        if (!v9[v47 - v15])
        {
          break;
        }

        if ((v7[v48] & 1) == 0)
        {
          break;
        }

        v49 = v9[v48];
        if (!v49)
        {
          break;
        }

LABEL_115:
        v9[v47] = v49;
        if (v15 == 1)
        {
          goto LABEL_103;
        }

LABEL_116:
        v51 = v78;
        do
        {
          v52 = v47 + 1;
          if (v7[v47 + 1] != 1)
          {
            v9[v52] = 0;
            goto LABEL_118;
          }

          if (v9[v47] && v7[v47] == 1)
          {
            v53 = v9[v47];
            v54 = v46 + v47;
            v55 = v9[v46 + v47];
            if (v53 == v55)
            {
              goto LABEL_130;
            }
          }

          else
          {
            v53 = 0;
            v54 = v46 + v47;
            v55 = v9[v46 + v47];
            if (!v9[v46 + v47])
            {
              goto LABEL_130;
            }
          }

          if (v9[v54] && v7[v54] == 1)
          {
            if (v53)
            {
              DisjointSet::Unite(&v81, v55, v53);
LABEL_131:
              v9[v52] = v53;
              goto LABEL_118;
            }

            v53 = v55;
          }

LABEL_130:
          if (v53)
          {
            goto LABEL_131;
          }

          v56 = *v82;
          if (v13 > 65531)
          {
            v9[v52] = v82[0] - 1;
          }

          else
          {
            if (*v82 >= v81)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v83[*v82] = v82[0];
            *v82 = v56 + 1;
            v9[v52] = v56;
            ++v13;
          }

LABEL_118:
          ++v47;
          --v51;
        }

        while (v51);
        ++v47;
        v15 = v79;
        if (!--v45)
        {
          goto LABEL_137;
        }
      }

      v50 = *v82;
      if (v13 > 65531)
      {
        LOWORD(v49) = v82[0] - 1;
        goto LABEL_115;
      }

      if (*v82 >= v81)
      {
        __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
      }

      v83[*v82] = v82[0];
      *v82 = v50 + 1;
      v9[v47] = v50;
      ++v13;
      if (v15 != 1)
      {
        goto LABEL_116;
      }

LABEL_103:
      ++v47;
      if (!--v45)
      {
        goto LABEL_137;
      }
    }
  }

  v15 = v79;
  if (a2 == 8)
  {
    v16 = v8 - 1;
    if (v8 != 1)
    {
      v17 = v79;
      while (v7[v17] != 1)
      {
        v9[v17] = 0;
        if (v15 == 2)
        {
          goto LABEL_24;
        }

LABEL_34:
        v77 = v16;
        v23 = 0;
        v24 = v17 - v79;
        do
        {
          v25 = v17 + v23;
          v26 = v17 + v23 + 1;
          if (v7[v26] != 1)
          {
            v9[v26] = 0;
            goto LABEL_36;
          }

          if (v9[v25] && v7[v25] == 1)
          {
            v27 = v9[v25];
            v28 = v24 + v23;
            v29 = v9[v24 + v23];
            if (v27 == v29)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v27 = 0;
            v28 = v24 + v23;
            v29 = v9[v24 + v23];
            if (!v9[v24 + v23])
            {
              goto LABEL_47;
            }
          }

          if (!v9[v28] || v7[v28] != 1)
          {
            goto LABEL_47;
          }

          if (v27)
          {
            DisjointSet::Unite(&v81, v29, v27);
LABEL_47:
            v30 = v28 + 1;
            v31 = v9[v28 + 1];
            if (v27 == v31)
            {
              goto LABEL_53;
            }

            goto LABEL_48;
          }

          v27 = v29;
          v30 = v28 + 1;
          v31 = v9[v28 + 1];
          if (v27 == v31)
          {
            goto LABEL_53;
          }

LABEL_48:
          if (!v9[v30] || v7[v30] != 1)
          {
            goto LABEL_53;
          }

          if (v27)
          {
            DisjointSet::Unite(&v81, v31, v27);
LABEL_53:
            v32 = v28 + 2;
            v33 = v9[v28 + 2];
            if (v27 == v33)
            {
              goto LABEL_59;
            }

            goto LABEL_54;
          }

          v27 = v31;
          v32 = v28 + 2;
          v33 = v9[v28 + 2];
          if (v27 == v33)
          {
            goto LABEL_59;
          }

LABEL_54:
          if (!v9[v32] || v7[v32] != 1)
          {
LABEL_59:
            if (v27)
            {
              goto LABEL_60;
            }

            goto LABEL_62;
          }

          if (v27)
          {
            DisjointSet::Unite(&v81, v33, v27);
LABEL_60:
            v9[v26] = v27;
            goto LABEL_36;
          }

          LOWORD(v27) = v33;
          if (v33)
          {
            goto LABEL_60;
          }

LABEL_62:
          v34 = *v82;
          if (v13 > 65531)
          {
            v9[v26] = v82[0] - 1;
          }

          else
          {
            if (*v82 >= v81)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v83[*v82] = v82[0];
            *v82 = v34 + 1;
            v9[v26] = v34;
            ++v13;
          }

LABEL_36:
          ++v23;
        }

        while (v79 - 2 != v23);
        v17 += v23;
        v15 = v79;
        v16 = v77;
        v22 = v17 + 1;
        if ((v7[v22] & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_67:
        v35 = v22 - v15;
        v36 = v22 - v15 - 1;
        if (v9[v36] && v7[v36] == 1)
        {
          v37 = v9[v36];
          v38 = v9[v35];
          if (v37 == v38)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v37 = 0;
          v38 = v9[v35];
          if (!v9[v35])
          {
            goto LABEL_83;
          }
        }

        if (v9[v35] && v7[v35] == 1)
        {
          if (!v37)
          {
            v37 = v38;
            goto LABEL_83;
          }

          DisjointSet::Unite(&v81, v38, v37);
LABEL_84:
          v9[v22] = v37;
        }

        else
        {
LABEL_83:
          if (v37)
          {
            goto LABEL_84;
          }

          v40 = *v82;
          if (v13 > 65531)
          {
            v9[v22] = v82[0] - 1;
          }

          else
          {
            if (*v82 >= v81)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v83[*v82] = v82[0];
            *v82 = v40 + 1;
            v9[v22] = v40;
            ++v13;
          }
        }

LABEL_17:
        v17 += 2;
        if (!--v16)
        {
          goto LABEL_137;
        }
      }

      v18 = v17 - v15;
      if (v9[v17 - v15] && v7[v18] == 1)
      {
        v19 = v9[v18];
        v20 = v18 + 1;
        v21 = v9[v20];
        if (v19 == v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = 0;
        v20 = v18 + 1;
        v21 = v9[v20];
        if (!v9[v20])
        {
          goto LABEL_32;
        }
      }

      if (v9[v20] && v7[v20] == 1)
      {
        if (v19)
        {
          DisjointSet::Unite(&v81, v21, v19);
LABEL_33:
          v9[v17] = v19;
          if (v15 == 2)
          {
            goto LABEL_24;
          }

          goto LABEL_34;
        }

        v19 = v21;
      }

LABEL_32:
      if (!v19)
      {
        v39 = *v82;
        if (v13 > 65531)
        {
          v9[v17] = v82[0] - 1;
          if (v15 == 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (*v82 >= v81)
          {
            __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
          }

          v83[*v82] = v82[0];
          *v82 = v39 + 1;
          v9[v17] = v39;
          ++v13;
          if (v15 == 2)
          {
LABEL_24:
            v22 = v17 + 1;
            if (v7[v22])
            {
              goto LABEL_67;
            }

LABEL_16:
            v9[v22] = 0;
            goto LABEL_17;
          }
        }

        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

LABEL_137:
  v57 = DisjointSet::Compact(&v81, v82[0], 0);
  v58 = v57;
  v59 = *(v74 + 8);
  v60 = v76 * v15;
  if (v75)
  {
    v61 = (v57 - 1);
    v62 = v75[1];
    v63 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *v75) >> 3);
    if (v61 <= v63)
    {
      if (v61 < v63)
      {
        v66 = *v75 + 24 * v61;
        if (v62 != v66)
        {
          v67 = v75[1];
          do
          {
            v69 = *(v67 - 24);
            v67 -= 24;
            v68 = v69;
            if (v69)
            {
              *(v62 - 16) = v68;
              operator delete(v68);
            }

            v62 = v67;
          }

          while (v67 != v66);
        }

        v75[1] = v66;
      }
    }

    else
    {
      std::vector<ImageUtils::Blob>::__append(v75, v61 - v63);
    }

    v80 = 0;
    if (v60)
    {
      v70 = 0;
      do
      {
        v71 = v83[*v59];
        *v59 = v71;
        if (v71)
        {
          v72 = (v71 - 1);
          if (0xAAAAAAAAAAAAAAABLL * ((v75[1] - *v75) >> 3) <= v72)
          {
            std::vector<float>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<unsigned int>::push_back[abi:ne200100](*v75 + 24 * v72, &v80);
          v70 = v80;
        }

        v80 = ++v70;
        ++v59;
      }

      while (v70 < v60);
    }
  }

  else if (v60 >= 1)
  {
    v64 = v83;
    v65 = v60 + 1;
    do
    {
      *v59 = v64[*v59];
      ++v59;
      --v65;
    }

    while (v65 > 1);
  }

  DisjointSet::~DisjointSet(&v81);
  return v58;
}

void sub_224685A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224685B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

uint64_t DisjointSet::Unite(DisjointSet *this, uint64_t a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = a2;
  do
  {
    result = v4;
    v4 = *(v3 + 2 * v4);
  }

  while (result > v4);
  if (a2 != a3)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      v6 = *(v3 + 2 * v6);
    }

    while (v7 > v6);
    if (result >= v7)
    {
      result = v7;
    }

    else
    {
      result = result;
    }

    v8 = (v3 + 2 * a3);
    for (i = *v8; a3 > i; i = *v8)
    {
      if (a3 < result)
      {
        DisjointSet::Unite();
      }

      a3 = i;
      *v8 = result;
      v8 = (v3 + 2 * i);
    }

    if (a3 < result)
    {
      DisjointSet::Unite();
    }

    *v8 = result;
  }

  v10 = (v3 + 2 * a2);
  for (j = *v10; a2 > j; j = *v10)
  {
    if (a2 < result)
    {
      DisjointSet::Unite();
    }

    LODWORD(a2) = j;
    *v10 = result;
    v10 = (v3 + 2 * j);
  }

  if (a2 < result)
  {
    DisjointSet::Unite();
  }

  *v10 = result;
  return result;
}

uint64_t ImageUtils::ConnectedComp<MatrixMxN<1u,3u,double>>(uint64_t a1, int a2, uint64_t a3, void *a4, double a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = *(a3 + 8);
  if (*(a3 + 32) < 2 * v10 * v11)
  {
    if (v12)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a3 + 8));
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v10;
  *(a3 + 20) = v11;
  DisjointSet::DisjointSet(&v90);
  DisjointSet::SetCapacity(&v90, 0xFFFEu);
  *v91 = 0;
  v13 = v90;
  if (!v90)
  {
    __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
  }

  v14 = v92;
  *v92 = 0;
  v15 = 1;
  *v91 = 1;
  if (*v9 == 0.0 || v9[1] == 0.0 || v9[2] == 0.0)
  {
    v88 = 0;
    *v12 = 0;
    v85 = v11 - 1;
    if (v11 != 1)
    {
LABEL_96:
      v46 = v12 + 1;
      v47 = v9 + 5;
      for (i = 1; i != v11; ++i)
      {
        if (*(v47 - 2) == 0.0 || *(v47 - 1) == 0.0 || *v47 == 0.0)
        {
          *v46 = 0;
        }

        else
        {
          if (!v12[i - 1] || fabs(v9[3 * i] * v9[3 * i - 3] + 0.0 + v9[3 * i + 1] * v9[3 * i - 2] + v9[3 * i + 2] * v9[3 * i - 1]) <= a5 / 1000.0 || (v49 = *(v46 - 1)) == 0)
          {
            if (v88 <= 65531)
            {
              if (v15 >= v13)
              {
                __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
              }

              v14[v15] = v15;
              *v46 = v15++;
              *v91 = v15;
              ++v88;
              goto LABEL_98;
            }

            v49 = v15 - 1;
          }

          *v46 = v49;
        }

LABEL_98:
        ++v46;
        v47 += 3;
      }
    }
  }

  else
  {
    if (v13 == 1)
    {
      __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
    }

    v14[1] = 1;
    v15 = 2;
    *v91 = 2;
    v88 = 1;
    *v12 = 1;
    v85 = v11 - 1;
    if (v11 != 1)
    {
      goto LABEL_96;
    }
  }

  v82 = a3;
  v83 = a4;
  v87 = v11;
  if (a2 == 4)
  {
    v50 = v10 - 1;
    if (v10 == 1)
    {
      goto LABEL_150;
    }

    v51 = a5 / 1000.0;
    v52 = 1 - v11;
    v53 = v11;
    while (1)
    {
      while (1)
      {
        v54 = &v9[3 * v53];
        if (*v54 == 0.0 || v54[1] == 0.0 || v54[2] == 0.0)
        {
          v12[v53] = 0;
          if (v11 == 1)
          {
            goto LABEL_112;
          }

          goto LABEL_127;
        }

        v55 = v53 - v11;
        if (!v12[v53 - v11])
        {
          break;
        }

        if (fabs(v9[3 * v53] * v9[3 * v55] + 0.0 + v9[3 * v53 + 1] * v9[3 * v55 + 1] + v9[3 * v53 + 2] * v9[3 * v55 + 2]) <= v51)
        {
          break;
        }

        v56 = v12[v55];
        if (!v56)
        {
          break;
        }

LABEL_126:
        v12[v53] = v56;
        if (v11 == 1)
        {
          goto LABEL_112;
        }

LABEL_127:
        v58 = v85;
        do
        {
          v59 = v53 + 1;
          v60 = &v9[3 * v59];
          if (*v60 == 0.0 || v60[1] == 0.0 || v60[2] == 0.0)
          {
            v12[v59] = 0;
            goto LABEL_129;
          }

          if (v12[v53] && fabs(v9[3 * v59] * v9[3 * v53] + 0.0 + v9[3 * v59 + 1] * v9[3 * v53 + 1] + v9[3 * v59 + 2] * v9[3 * v53 + 2]) > v51)
          {
            v61 = v12[v53];
            v62 = v52 + v53;
            v63 = v12[v52 + v53];
            if (v61 == v63)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v61 = 0;
            v62 = v52 + v53;
            v63 = v12[v52 + v53];
            if (!v12[v52 + v53])
            {
              goto LABEL_143;
            }
          }

          if (v12[v62] && fabs(v9[3 * v59] * v9[3 * v62] + 0.0 + v9[3 * v59 + 1] * v9[3 * v62 + 1] + v9[3 * v59 + 2] * v9[3 * v62 + 2]) > v51)
          {
            if (v61)
            {
              DisjointSet::Unite(&v90, v63, v61);
LABEL_144:
              v12[v59] = v61;
              goto LABEL_129;
            }

            v61 = v63;
          }

LABEL_143:
          if (v61)
          {
            goto LABEL_144;
          }

          v64 = *v91;
          if (v88 > 65531)
          {
            v12[v59] = v91[0] - 1;
          }

          else
          {
            if (*v91 >= v90)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v92[*v91] = v91[0];
            *v91 = v64 + 1;
            v12[v59] = v64;
            ++v88;
          }

LABEL_129:
          ++v53;
          --v58;
        }

        while (v58);
        ++v53;
        v11 = v87;
        if (!--v50)
        {
          goto LABEL_150;
        }
      }

      v57 = *v91;
      if (v88 > 65531)
      {
        LOWORD(v56) = v91[0] - 1;
        goto LABEL_126;
      }

      if (*v91 >= v90)
      {
        __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
      }

      v92[*v91] = v91[0];
      *v91 = v57 + 1;
      v12[v53] = v57;
      ++v88;
      if (v11 != 1)
      {
        goto LABEL_127;
      }

LABEL_112:
      ++v53;
      if (!--v50)
      {
        goto LABEL_150;
      }
    }
  }

  if (a2 == 8)
  {
    v16 = v10 - 1;
    if (v10 != 1)
    {
      v17 = a5 / 1000.0;
      v18 = v11 - 2;
      v84 = -v11;
      v19 = v11;
      do
      {
        v20 = &v9[3 * v19];
        if (*v20 == 0.0 || v20[1] == 0.0 || v20[2] == 0.0)
        {
          v12[v19] = 0;
          goto LABEL_28;
        }

        v21 = v19 - v11;
        if (v12[v19 - v11] && fabs(v9[3 * v19] * v9[3 * v21] + 0.0 + v9[3 * v19 + 1] * v9[3 * v21 + 1] + v9[3 * v19 + 2] * v9[3 * v21 + 2]) > v17)
        {
          v22 = v12[v21];
          v23 = v21 + 1;
          v24 = v12[v23];
          if (v22 == v24)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v22 = 0;
          v23 = v21 + 1;
          v24 = v12[v23];
          if (!v12[v23])
          {
            goto LABEL_83;
          }
        }

        if (v12[v23] && fabs(v9[3 * v19] * v9[3 * v23] + 0.0 + v9[3 * v19 + 1] * v9[3 * v23 + 1] + v9[3 * v19 + 2] * v9[3 * v23 + 2]) > v17)
        {
          if (v22)
          {
            DisjointSet::Unite(&v90, v24, v22);
LABEL_84:
            v12[v19] = v22;
            goto LABEL_28;
          }

          v22 = v24;
        }

LABEL_83:
        if (v22)
        {
          goto LABEL_84;
        }

        v44 = *v91;
        if (v88 > 65531)
        {
          v12[v19] = v91[0] - 1;
        }

        else
        {
          if (*v91 >= v90)
          {
            __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
          }

          v92[*v91] = v91[0];
          *v91 = v44 + 1;
          v12[v19] = v44;
          ++v88;
        }

LABEL_28:
        if (v11 != 2)
        {
          v86 = v16;
          v27 = 0;
          v28 = v84 + v19;
          while (1)
          {
            v29 = v19 + v27;
            v30 = v19 + v27 + 1;
            v31 = &v9[3 * v30];
            if (*v31 != 0.0 && v31[1] != 0.0 && v31[2] != 0.0)
            {
              break;
            }

            v12[v30] = 0;
LABEL_33:
            if (v18 == ++v27)
            {
              v19 += v27;
              v11 = v87;
              v16 = v86;
              v25 = v19 + 1;
              v26 = &v9[3 * v25];
              if (*v26 != 0.0)
              {
                goto LABEL_66;
              }

              goto LABEL_18;
            }
          }

          if (v12[v29] && fabs(v9[3 * v30] * v9[3 * v29] + 0.0 + v9[3 * v30 + 1] * v9[3 * v29 + 1] + v9[3 * v30 + 2] * v9[3 * v29 + 2]) > v17)
          {
            v32 = v12[v29];
            v33 = v28 + v27;
            v34 = v12[v28 + v27];
            if (v32 == v34)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v32 = 0;
            v33 = v28 + v27;
            v34 = v12[v28 + v27];
            if (!v12[v28 + v27])
            {
              goto LABEL_46;
            }
          }

          if (v12[v33] && fabs(v9[3 * v30] * v9[3 * v33] + 0.0 + v9[3 * v30 + 1] * v9[3 * v33 + 1] + v9[3 * v30 + 2] * v9[3 * v33 + 2]) > v17)
          {
            if (v32)
            {
              DisjointSet::Unite(&v90, v34, v32);
              goto LABEL_46;
            }

            v32 = v34;
            v35 = v33 + 1;
            v36 = v12[v33 + 1];
            if (v32 == v36)
            {
LABEL_52:
              v37 = v33 + 2;
              v38 = v12[v33 + 2];
              if (v32 != v38)
              {
                goto LABEL_53;
              }

LABEL_58:
              if (!v32)
              {
                goto LABEL_61;
              }

              goto LABEL_59;
            }
          }

          else
          {
LABEL_46:
            v35 = v33 + 1;
            v36 = v12[v33 + 1];
            if (v32 == v36)
            {
              goto LABEL_52;
            }
          }

          if (!v12[v35] || fabs(v9[3 * v30] * v9[3 * v35] + 0.0 + v9[3 * v30 + 1] * v9[3 * v35 + 1] + v9[3 * v30 + 2] * v9[3 * v35 + 2]) <= v17)
          {
            goto LABEL_52;
          }

          if (v32)
          {
            DisjointSet::Unite(&v90, v36, v32);
            goto LABEL_52;
          }

          v32 = v36;
          v37 = v33 + 2;
          v38 = v12[v33 + 2];
          if (v32 == v38)
          {
            goto LABEL_58;
          }

LABEL_53:
          if (!v12[v37] || fabs(v9[3 * v30] * v9[3 * v37] + 0.0 + v9[3 * v30 + 1] * v9[3 * v37 + 1] + v9[3 * v30 + 2] * v9[3 * v37 + 2]) <= v17)
          {
            goto LABEL_58;
          }

          if (v32)
          {
            DisjointSet::Unite(&v90, v38, v32);
          }

          else
          {
            LOWORD(v32) = v38;
            if (!v38)
            {
LABEL_61:
              v39 = *v91;
              if (v88 > 65531)
              {
                v12[v30] = v91[0] - 1;
              }

              else
              {
                if (*v91 >= v90)
                {
                  __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
                }

                v92[*v91] = v91[0];
                *v91 = v39 + 1;
                v12[v30] = v39;
                ++v88;
              }

              goto LABEL_33;
            }
          }

LABEL_59:
          v12[v30] = v32;
          goto LABEL_33;
        }

        v25 = v19 + 1;
        v26 = &v9[3 * v25];
        if (*v26 == 0.0)
        {
          goto LABEL_18;
        }

LABEL_66:
        if (v26[1] != 0.0 && v26[2] != 0.0)
        {
          v40 = v25 - v11;
          v41 = v25 - v11 - 1;
          if (v12[v41] && fabs(v9[3 * v25] * v9[3 * v41] + 0.0 + v9[3 * v25 + 1] * v9[3 * v41 + 1] + v9[3 * v25 + 2] * v9[3 * v41 + 2]) > v17)
          {
            v42 = v12[v41];
            v43 = v12[v40];
            if (v42 == v43)
            {
              goto LABEL_90;
            }

LABEL_78:
            if (!v12[v40] || fabs(v9[3 * v25] * v9[3 * v40] + 0.0 + v9[3 * v25 + 1] * v9[3 * v40 + 1] + v9[3 * v25 + 2] * v9[3 * v40 + 2]) <= v17)
            {
              goto LABEL_90;
            }

            if (v42)
            {
              DisjointSet::Unite(&v90, v43, v42);
LABEL_91:
              v12[v25] = v42;
              goto LABEL_19;
            }

            v42 = v43;
          }

          else
          {
            v42 = 0;
            v43 = v12[v40];
            if (v12[v40])
            {
              goto LABEL_78;
            }
          }

LABEL_90:
          if (!v42)
          {
            v45 = *v91;
            if (v88 > 65531)
            {
              v12[v25] = v91[0] - 1;
            }

            else
            {
              if (*v91 >= v90)
              {
                __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
              }

              v92[*v91] = v91[0];
              *v91 = v45 + 1;
              v12[v25] = v45;
              ++v88;
            }

            goto LABEL_19;
          }

          goto LABEL_91;
        }

LABEL_18:
        v12[v25] = 0;
LABEL_19:
        v19 += 2;
        --v16;
      }

      while (v16);
    }
  }

LABEL_150:
  v65 = DisjointSet::Compact(&v90, v91[0], 0);
  v66 = v65;
  v67 = *(v82 + 8);
  v68 = v10 * v11;
  if (v83)
  {
    v69 = (v65 - 1);
    v70 = v83[1];
    v71 = 0xAAAAAAAAAAAAAAABLL * ((v70 - *v83) >> 3);
    if (v69 <= v71)
    {
      if (v69 < v71)
      {
        v74 = *v83 + 24 * v69;
        if (v70 != v74)
        {
          v75 = v83[1];
          do
          {
            v77 = *(v75 - 24);
            v75 -= 24;
            v76 = v77;
            if (v77)
            {
              *(v70 - 16) = v76;
              operator delete(v76);
            }

            v70 = v75;
          }

          while (v75 != v74);
        }

        v83[1] = v74;
      }
    }

    else
    {
      std::vector<ImageUtils::Blob>::__append(v83, v69 - v71);
    }

    v89 = 0;
    if (v68)
    {
      v78 = 0;
      do
      {
        v79 = v92[*v67];
        *v67 = v79;
        if (v79)
        {
          v80 = (v79 - 1);
          if (0xAAAAAAAAAAAAAAABLL * ((v83[1] - *v83) >> 3) <= v80)
          {
            std::vector<float>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<unsigned int>::push_back[abi:ne200100](*v83 + 24 * v80, &v89);
          v78 = v89;
        }

        v89 = ++v78;
        ++v67;
      }

      while (v78 < v68);
    }
  }

  else if (v68 >= 1)
  {
    v72 = v92;
    v73 = v68 + 1;
    do
    {
      *v67 = v72[*v67];
      ++v67;
      --v73;
    }

    while (v73 > 1);
  }

  DisjointSet::~DisjointSet(&v90);
  return v66;
}

void sub_2246868FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_22468694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_22468699C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_2246869B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_2246869C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_2246869D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_2246869EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void sub_224686A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

void std::vector<ImageUtils::Blob>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__split_buffer<ImageUtils::Blob>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<ImageUtils::Blob>::__append(void ***a1, unint64_t a2, void *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * (v5 - v6) >= a2)
  {
    if (a2)
    {
      v10 = &v6[3 * a2];
      v11 = 24 * a2;
      do
      {
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        v12 = a3[1];
        if (v12 != *a3)
        {
          if (((v12 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v6 += 3;
        v11 -= 24;
      }

      while (v11);
      v6 = v10;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a1) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v5 - *a1);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (8 * (v6 - *a1));
    v22 = v13;
    v14 = 24 * a2;
    v15 = &v13[3 * a2];
    do
    {
      std::allocator_traits<std::allocator<ImageUtils::Blob>>::construct[abi:ne200100]<ImageUtils::Blob,ImageUtils::Blob const&,0>(a1, v13, a3);
      v13 += 3;
      v14 -= 24;
    }

    while (v14);
    v16 = *a1;
    v17 = a1[1];
    v18 = (v22 + *a1 - v17);
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = (v22 + *a1 - v17);
      do
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        *v20 = *v19;
        v20[2] = v19[2];
        *v19 = 0;
        v19[1] = 0;
        v19[2] = 0;
        v19 += 3;
        v20 += 3;
      }

      while (v19 != v17);
      do
      {
        v21 = *v16;
        if (*v16)
        {
          v16[1] = v21;
          operator delete(v21);
        }

        v16 += 3;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v15;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

void sub_224686F04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_224686F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ImageUtils::Blob>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator_traits<std::allocator<ImageUtils::Blob>>::construct[abi:ne200100]<ImageUtils::Blob,ImageUtils::Blob const&,0>(uint64_t a1, void *a2, void *a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    if (((v3 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_224686FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *CalculateWeightsForScale<double>(char *result, int a2, signed int *a3, _DWORD *a4, double a5, double a6, double a7)
{
  v7 = vcvtmd_s64_f64(a6 + a5 * -0.5);
  v8 = v7;
  v9 = v7 + a2;
  v10 = (a6 - v7) * a7;
  v11 = fabs(v10);
  v12 = v10 * v10;
  v13 = v10 * v10 * v11;
  if (v11 <= 1.0)
  {
    v14 = v12 * -2.5 + v13 * 1.5 + 1.0;
    if (v14 != 0.0)
    {
      goto LABEL_12;
    }
  }

  else if (v11 <= 2.0)
  {
    v14 = v12 * 2.5 + v13 * -0.5 + v11 * -4.0 + 2.0;
    if (v14 != 0.0)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v15 = (a6 - ++v8) * a7;
    v16 = fabs(v15);
    v17 = v15 * v15;
    v18 = v15 * v15 * v16;
    if (v16 <= 1.0)
    {
      v14 = v17 * -2.5 + v18 * 1.5 + 1.0;
    }

    else
    {
      v14 = 0.0;
      if (v16 <= 2.0)
      {
        v14 = v17 * 2.5 + v18 * -0.5 + v16 * -4.0 + 2.0;
      }
    }
  }

  while (v14 == 0.0);
LABEL_12:
  v19 = *(result + 1);
  *v19 = v14;
  v20 = v19 + 1;
  if (v8 >= v9)
  {
    goto LABEL_18;
  }

  v21 = (v9 + ~v8);
  if (v21 > 2)
  {
    v23 = vadd_s32(vdup_n_s32(v8), 0x100000000);
    v24 = vdupq_lane_s64(*&a6, 0);
    v25 = v21 + 1;
    __asm { FMOV            V7.2D, #1.0 }

    v31 = (v21 + 1) & 0x1FFFFFFFCLL;
    __asm { FMOV            V16.2D, #-2.5 }

    v20 += v31;
    v22 = v8 + v31;
    v33 = (v19 + 3);
    __asm
    {
      FMOV            V17.2D, #1.5
      FMOV            V18.2D, #2.0
      FMOV            V19.2D, #2.5
      FMOV            V20.2D, #-0.5
      FMOV            V21.2D, #-4.0
    }

    v39 = v31;
    do
    {
      v40 = vadd_s32(v23, 0x100000001);
      v41 = vadd_s32(v23, 0x300000003);
      v42.i64[0] = v40.i32[0];
      v42.i64[1] = v40.i32[1];
      v43 = vcvtq_f64_s64(v42);
      v42.i64[0] = v41.i32[0];
      v42.i64[1] = v41.i32[1];
      v44 = vmulq_n_f64(vsubq_f64(v24, v43), a7);
      v45 = vmulq_n_f64(vsubq_f64(v24, vcvtq_f64_s64(v42)), a7);
      v46 = vabsq_f64(v44);
      v47 = vabsq_f64(v45);
      v48 = vmulq_f64(v44, v44);
      v49 = vmulq_f64(v45, v45);
      v50 = vmulq_f64(v48, v46);
      v51 = vmulq_f64(v49, v47);
      v52 = vcgeq_f64(_Q7, v46);
      v53 = vcgeq_f64(_Q7, v47);
      v54 = vcgeq_f64(_Q18, v46);
      v55 = vcgeq_f64(_Q18, v47);
      v56 = vbicq_s8(vbslq_s8(vbicq_s8(v54, v52), vaddq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v48, _Q19), _Q20, v50), _Q21, v46), _Q18), vaddq_f64(vmlaq_f64(vmulq_f64(v48, _Q16), _Q17, v50), _Q7)), vbicq_s8(vmvnq_s8(v52), v54));
      v57 = vbicq_s8(vbslq_s8(vbicq_s8(v55, v53), vaddq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v49, _Q19), _Q20, v51), _Q21, v47), _Q18), vaddq_f64(vmlaq_f64(vmulq_f64(v49, _Q16), _Q17, v51), _Q7)), vbicq_s8(vmvnq_s8(v53), v55));
      v33[-1] = v56;
      *v33 = v57;
      v14 = v14 + *v56.i64 + *&v56.i64[1] + *v57.i64 + *&v57.i64[1];
      v23 = vadd_s32(v23, 0x400000004);
      v33 += 2;
      v39 -= 4;
    }

    while (v39);
    if (v25 == v31)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = v8;
  }

  v76 = v7 + a2 - v22;
  v77 = v22 + 1;
  do
  {
    v79 = (a6 - v77) * a7;
    v80 = fabs(v79);
    v81 = v79 * v79;
    v82 = v79 * v79 * v80;
    if (v80 <= 1.0)
    {
      v78 = v81 * -2.5 + v82 * 1.5 + 1.0;
    }

    else
    {
      v78 = 0.0;
      if (v80 <= 2.0)
      {
        v78 = v81 * 2.5 + v82 * -0.5 + v80 * -4.0 + 2.0;
      }
    }

    *v20++ = v78;
    v14 = v14 + v78;
    ++v77;
    --v76;
  }

  while (v76);
LABEL_18:
  v58 = 0;
  v59 = v20 - 1;
  do
  {
    v60 = v59[v58--];
  }

  while (v60 == 0.0);
  v61 = v7 + a2 - v8 + 2;
  v62 = v58 + v7 + a2 + 1;
  v63 = v61 + v58;
  if (v63)
  {
    v64 = *(result + 1);
    v65 = ~v64;
    v66 = &v64->f64[v63];
    v67 = &v64->f64[1];
    if (v66 <= &v64->f64[1])
    {
      v66 = &v64->f64[1];
    }

    v68 = v66 + v65;
    v69 = *(result + 1);
    if (v68 < 0x18)
    {
      goto LABEL_29;
    }

    v70 = (v68 >> 3) + 1;
    v69 = &v64->f64[v70 & 0x3FFFFFFFFFFFFFFCLL];
    v71 = vdupq_lane_s64(*&v14, 0);
    v72 = v64 + 1;
    result = &v64->f64[v63];
    if (result > v67)
    {
      v67 = &v64->f64[v63];
    }

    v73 = (((v67 + v65) >> 3) + 1) & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v74 = vdivq_f64(*v72, v71);
      v72[-1] = vdivq_f64(v72[-1], v71);
      *v72 = v74;
      v72 += 2;
      v73 -= 4;
    }

    while (v73);
    if (v70 != (v70 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_29:
      v75 = &v64->f64[v63];
      do
      {
        *v69 = *v69 / v14;
        ++v69;
      }

      while (v69 < v75);
    }
  }

  *a3 = v8;
  *a4 = v62;
  return result;
}

void Matrix<float>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809D60;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

uint64_t Matrix<float>::~Matrix(uint64_t result)
{
  *result = &unk_283809D60;
  v1 = *(result + 8);
  if (v1 && *(result + 24) == 1)
  {
    v2 = result;
    MEMORY[0x22AA53170](v1, 0x1000C8052888210);
    result = v2;
    *(v2 + 8) = 0;
    *(v2 + 32) = 0;
    *(v2 + 24) = 0;
  }

  *(result + 16) = 0;
  return result;
}

void DisjointSet::Unite()
{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 109, "nRoot <= i");
}

{
  __assert_rtn("SetRoot", "DisjointSet.hpp", 105, "nRoot <= i");
}

void Algo::asin(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void trigoThreadSingleArg(double *a1, double *a2, double (*a3)(double), int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v8 = *a1++;
      *a2++ = a3(v8);
      --v4;
    }

    while (v4);
  }
}

void Algo::sin(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::atan(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::atan2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27D0FB548)
  {
    v3 = std::thread::hardware_concurrency();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 2;
    }

    _MergedGlobals = v4;
    operator new[]();
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a3 + 32) < 8 * v5 * v6)
  {
    if (*(a3 + 8) && *(a3 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a3 + 16) = v5;
  *(a3 + 20) = v6;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double const*,double *,double (*)(double,double),int),double const*&,double const*&,double *&,double (*)(double,double),int &,0>();
}

void trigoThreadMultipleArg(double *a1, double *a2, double *a3, double (*a4)(double, double), int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    do
    {
      v10 = *a1++;
      v11 = v10;
      v12 = *a2++;
      *a3++ = a4(v11, v12);
      --v5;
    }

    while (v5);
  }
}

void Algo::tan(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::acos(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::cos(uint64_t a1, uint64_t a2)
{
  if (!qword_27D0FB548)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = 2;
    }

    _MergedGlobals = v3;
    operator new[]();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (*(a2 + 32) < 8 * v4 * v5)
  {
    if (*(a2 + 8) && *(a2 + 24) == 1)
    {
      MEMORY[0x22AA53170]();
    }

    operator new[]();
  }

  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  if (_MergedGlobals == 1)
  {
    std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
  }

  std::thread::thread<void (&)(double const*,double *,double (*)(double),int),double const*&,double *&,double (*)(double),int &,0>();
}

void Algo::cart2sph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v45 = &unk_283809BF8;
  if (v10 * v9)
  {
    operator new[]();
  }

  v46 = 0;
  v47 = __PAIR64__(v10, v9);
  v48 = 0;
  v49 = 8 * v9 * v10;
  vDSPVsq<double>(*(a1 + 8), 1, 0, 1, 0);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  v40 = &unk_283809BF8;
  if (v12 * v11)
  {
    operator new[]();
  }

  v41 = 0;
  v42 = __PAIR64__(v12, v11);
  v43 = 0;
  v44 = 8 * v11 * v12;
  vDSPVsq<double>(*(a2 + 8), 1, 0, 1, 0);
  Matrix<double>::operator+(&v45, &v40, &v50);
  v55 = &unk_283809BF8;
  if (HIDWORD(v52) * v52)
  {
    operator new[]();
  }

  v56 = 0;
  v57 = v52;
  v58 = 0;
  v59 = 8 * v52 * HIDWORD(v52);
  v50 = &unk_283809BF8;
  if (v51 && v53 == 1)
  {
    MEMORY[0x22AA53170]();
    v51 = 0;
    v54 = 0;
    v53 = 0;
  }

  v52 = 0;
  v40 = &unk_283809BF8;
  if (v41 && v43 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v45 = &unk_283809BF8;
  if (v46 && v48 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v13 = v57;
  v14 = HIDWORD(v57);
  if (a6)
  {
    v40 = &unk_283809BF8;
    if (HIDWORD(v57) * v57)
    {
      operator new[]();
    }

    v41 = 0;
    v42 = v57;
    v43 = 0;
    v44 = 8 * v57 * HIDWORD(v57);
    vDSPVsq<double>(v56, 1, 0, 1, 0);
    v15 = *(a3 + 16);
    v16 = *(a3 + 20);
    v34 = &unk_283809BF8;
    if (v16 * v15)
    {
      operator new[]();
    }

    v35 = 0;
    v36 = v15;
    v37 = v16;
    v38 = 0;
    v39 = 8 * v15 * v16;
    vDSPVsq<double>(*(a3 + 8), 1, 0, 1, 0);
    Matrix<double>::operator+(&v40, &v34, &v45);
    v17 = HIDWORD(v47);
    v50 = &unk_283809BF8;
    if (HIDWORD(v47) * v47)
    {
      operator new[]();
    }

    v51 = 0;
    v52 = v47;
    v53 = 0;
    v18 = 8 * v47 * HIDWORD(v47);
    v54 = v18;
    v19 = *(a6 + 8);
    if (*(a6 + 32) < v18)
    {
      if (v19)
      {
        if (*(a6 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }
      }

      operator new[]();
    }

    *(a6 + 16) = v47;
    *(a6 + 20) = v17;
    memcpy(v19, 0, v18);
    v50 = &unk_283809BF8;
    if (v51 && v53 == 1)
    {
      MEMORY[0x22AA53170]();
      v51 = 0;
      v54 = 0;
      v53 = 0;
    }

    v52 = 0;
    v45 = &unk_283809BF8;
    if (v46 && v48 == 1)
    {
      MEMORY[0x22AA53170]();
      v46 = 0;
      v49 = 0;
      v48 = 0;
    }

    v47 = 0;
    v34 = &unk_283809BF8;
    if (v35 && v38 == 1)
    {
      MEMORY[0x22AA53170]();
    }

    v40 = &unk_283809BF8;
    if (v41 && v43 == 1)
    {
      MEMORY[0x22AA53170]();
    }

    v13 = v57;
    v14 = HIDWORD(v57);
  }

  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 20);
  v29[0] = &unk_283809BF8;
  v29[1] = v20;
  v33 = 8 * v21 * v22;
  v30 = v21;
  v31 = v22;
  v32 = 0;
  v24[0] = &unk_283809BF8;
  v24[1] = v56;
  v28 = 8 * v13 * v14;
  v25 = v13;
  v26 = v14;
  v27 = 0;
  Algo::atan2(v29, v24, a5);
}

void sub_2246891C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  Matrix<double>::~Matrix(v40 - 168);
  Matrix<double>::~Matrix(v40 - 208);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(&a40);
  Matrix<double>::~Matrix(v40 - 128);
  _Unwind_Resume(a1);
}

void sub_22468923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  Matrix<double>::~Matrix(&a40);
  Matrix<double>::~Matrix(v40 - 128);
  _Unwind_Resume(a1);
}

void sub_224689258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  Matrix<double>::~Matrix(v40 - 168);
  Matrix<double>::~Matrix(&a40);
  Matrix<double>::~Matrix(v40 - 208);
  _Unwind_Resume(a1);
}

void sub_224689290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(v7 - 128);
  _Unwind_Resume(a1);
}

void sub_2246892B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(v30 - 128);
  _Unwind_Resume(a1);
}

void sub_2246892D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  Matrix<double>::~Matrix(&a40);
  Matrix<double>::~Matrix(v40 - 208);
  _Unwind_Resume(a1);
}

void Matrix<double>::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 20);
  if (v3 != *(a1 + 20) || (v4 = *(a2 + 16), v4 != *(a1 + 16)))
  {
    Matrix<double>::DotDiv();
  }

  *a3 = &unk_283809BF8;
  if (v4 * v3)
  {
    operator new[]();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = v4;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = 8 * v3 * v4;
  vDSPVadd<double>(*(a1 + 8), 1, *(a2 + 8), 1, 0, 1, 0);
}

void Algo::LinearSpace(Algo *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v5 = a2;
  *a4 = &unk_283809BF8;
  if (this)
  {
    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *a4 = &unk_283809C28;
  *(a4 + 8) = 0;
  v4 = (a3 - a2) / (0 + -1.0);
  vDSPVramp<double>(&v5, &v4, 0, 1, 0);
}

void Algo::LinearSpaceByStep(Algo *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X8>)
{
  v8 = a2;
  v5 = (a3 - a2) / this;
  *a4 = &unk_283809BF8;
  v6 = v5 + 1;
  if (v5 != -1)
  {
    operator new[]();
  }

  *(a4 + 16) = 1;
  *(a4 + 20) = v6;
  *(a4 + 24) = v6 != 0;
  *(a4 + 32) = 0;
  *a4 = &unk_283809C28;
  *(a4 + 8) = 0;
  v7 = this;
  vDSPVramp<double>(&v8, &v7, 0, 1, v6);
}

const double *Algo::Fspecial@<X0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = &unk_283809BF8;
  if (a2 * a2)
  {
    operator new[]();
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  *(a3 + 20) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 8 * a2 * a2;
  v85 = &unk_283809BF8;
  v86 = 0;
  v87 = a2;
  v88 = a2;
  v89 = 0;
  v90 = 8 * a2 * a2;
  v79 = &unk_283809BF8;
  v80 = 0;
  v81 = a2;
  v82 = a2;
  v83 = 0;
  v84 = 8 * a2 * a2;
  if (a1)
  {
    v79 = &unk_283809BF8;
    goto LABEL_68;
  }

  v6 = vcvtd_n_f64_s32(a2 - 1, 1uLL);
  v59 = -v6;
  v74 = &unk_283809BF8;
  if (a2)
  {
    operator new[]();
  }

  v76 = 1;
  v77 = 0;
  v78 = 0;
  v74 = &unk_283809C28;
  v75 = 0;
  v53 = (v6 + v6) / (0 + -1.0);
  vDSPVramp<double>(&v59, &v53, 0, 1, 0);
  v69 = &unk_283809BF8;
  v70 = v75;
  v73 = 8 * v76 * HIDWORD(v76);
  v71 = v76;
  v72 = 0;
  v64 = &unk_283809BF8;
  v65 = v75;
  v68 = v73;
  v66 = v76;
  v67 = 0;
  Algo::MeshGrid<double>(&v69, &v64, &v85, &v79);
  v64 = &unk_283809BF8;
  if (v65 && v67 == 1)
  {
    MEMORY[0x22AA53170]();
    v65 = 0;
    v68 = 0;
    v67 = 0;
  }

  v66 = 0;
  v69 = &unk_283809BF8;
  if (v70 && v72 == 1)
  {
    MEMORY[0x22AA53170]();
    v70 = 0;
    v73 = 0;
    v72 = 0;
  }

  v71 = 0;
  v53 = COERCE_DOUBLE(&unk_283809BF8);
  if (v88 * v87)
  {
    operator new[]();
  }

  v54 = 0;
  v55 = v87;
  v56 = v88;
  v57 = 0;
  v58 = 8 * v87 * v88;
  vDSPVsq<double>(v86, 1, 0, 1, 0);
  v47 = &unk_283809BF8;
  if (v82 * v81)
  {
    operator new[]();
  }

  v48 = 0;
  v49 = v81;
  v50 = v82;
  v51 = 0;
  v52 = 8 * v81 * v82;
  vDSPVsq<double>(v80, 1, 0, 1, 0);
  Matrix<double>::operator+(&v53, &v47, &v59);
  v47 = &unk_283809BF8;
  if (v48 && v51 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v53 = COERCE_DOUBLE(&unk_283809BF8);
  if (v54 && v57 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v7 = v61;
  v8 = v62;
  v9 = v62 * v61;
  if (v9)
  {
    v10 = -1.0 / ((a4 + a4) * a4);
    v11 = __src;
    v12 = __src + 8 * v9;
    if (v12 <= __src + 8)
    {
      v12 = __src + 8;
    }

    v13 = &v12[~__src];
    v14 = __src;
    if (v13 < 0x18)
    {
      goto LABEL_31;
    }

    v15 = (v13 >> 3) + 1;
    v14 = (__src + 8 * (v15 & 0x3FFFFFFFFFFFFFFCLL));
    v16 = (__src + 16);
    v17 = v15 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = vmulq_n_f64(*v16, v10);
      v16[-1] = vmulq_n_f64(v16[-1], v10);
      *v16 = v18;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_31:
      v19 = &v11[8 * v9];
      do
      {
        *v14 = v10 * *v14;
        ++v14;
      }

      while (v14 < v19);
    }
  }

  v20 = *(a3 + 8);
  if (*(a3 + 32) < 8 * v7 * v8)
  {
    if (v20)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v7;
  *(a3 + 20) = v8;
  memcpy(v20, __src, 8 * v7 * v8);
  v21 = *(a3 + 8);
  v22 = (*(a3 + 20) * *(a3 + 16));
  if (v22)
  {
    v23 = &v21[v22];
    if (v23 <= (v21 + 1))
    {
      v23 = (v21 + 1);
    }

    v24 = v23 + ~v21;
    if (v24 >= 8)
    {
      v26 = (v24 >> 3) + 1;
      v25 = &v21[v26 & 0x3FFFFFFFFFFFFFFELL];
      v27 = v26 & 0x3FFFFFFFFFFFFFFELL;
      v44 = *(a3 + 8);
      v28 = v44;
      do
      {
        __x = *v28;
        v46 = exp(v28[1]);
        *&v29 = exp(*&__x);
        *(&v29 + 1) = v46;
        *v28 = v29;
        v28 += 2;
        v27 -= 2;
      }

      while (v27);
      v21 = v44;
      if (v26 == (v26 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_49;
      }
    }

    else
    {
      v25 = *(a3 + 8);
    }

    v30 = &v21[v22];
    do
    {
      *v25 = exp(*v25);
      ++v25;
    }

    while (v25 < v30);
LABEL_49:
    v21 = *(a3 + 8);
  }

  v53 = 0.0;
  vDSPMax<double>(v21, 1, &v53, v22);
  v31 = *(a3 + 8);
  v32.n128_u64[0] = 0;
  v33 = (*(a3 + 20) * *(a3 + 16));
  if (v33)
  {
    v34 = &v31->f64[v33];
    if (v34 <= &v31->f64[1])
    {
      v34 = &v31->f64[1];
    }

    v35 = v34 + ~v31;
    v36 = *(a3 + 8);
    if (v35 < 0x18)
    {
      goto LABEL_57;
    }

    v37 = (v35 >> 3) + 1;
    v36 = &v31->f64[v37 & 0x3FFFFFFFFFFFFFFCLL];
    v38 = vdupq_lane_s64(0, 0);
    v39 = v31 + 1;
    v40 = v37 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v41 = vdivq_f64(*v39, v38);
      v39[-1] = vdivq_f64(v39[-1], v38);
      *v39 = v41;
      v39 += 2;
      v40 -= 4;
    }

    while (v40);
    if (v37 != (v37 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_57:
      v42 = &v31->f64[v33];
      do
      {
        *v36 = *v36 / 0.0;
        ++v36;
      }

      while (v36 < v42);
    }
  }

  v59 = COERCE_DOUBLE(&unk_283809BF8);
  if (__src && v63 == 1)
  {
    MEMORY[0x22AA53170](v32);
  }

  v74 = &unk_283809BF8;
  if (v75 && v77 == 1)
  {
    MEMORY[0x22AA53170](v32);
  }

  v79 = &unk_283809BF8;
  if (v80 && v83 == 1)
  {
    MEMORY[0x22AA53170]();
  }

LABEL_68:
  v85 = &unk_283809BF8;
  result = v86;
  if (v86 && v89 == 1)
  {
    return MEMORY[0x22AA53170]();
  }

  return result;
}

void sub_224689E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  Matrix<double>::~Matrix(&a26);
  MatrixNxPts<1u,double>::~MatrixNxPts(v27 - 224);
  Matrix<double>::~Matrix(v27 - 184);
  Matrix<double>::~Matrix(v27 - 144);
  Matrix<double>::~Matrix(v26);
  _Unwind_Resume(a1);
}

void sub_224689EBC(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(v2 - 144);
  Matrix<double>::~Matrix(v1);
  _Unwind_Resume(a1);
}

void Algo::calcWeightedCenterOfMass(uint64_t a1, void *a2, uint64_t a3, long double a4)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v22 = v6;
  if (*(a3 + 32) < 24 * v6)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }
    }

    operator new[]();
  }

  *(a3 + 16) = 3;
  *(a3 + 20) = v6;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (v6)
  {
    v7 = 0;
    v24 = 0;
    v8 = 0;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *a2 + 24 * v8;
      if (&v25 != v11)
      {
        std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v25, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 2);
        v7 = v25;
        v24 = v26;
      }

      v12 = (v24 - v7) >> 2;
      if (v12 >= 1)
      {
        break;
      }

      v17 = 0.0;
      v16 = 0.0;
      v14 = 0.0;
      if (v12)
      {
        goto LABEL_17;
      }

LABEL_9:
      if (++v8 == v22)
      {
        if (v7)
        {
          v26 = v7;
          operator delete(v7);
        }

        return;
      }
    }

    v13 = ((v24 - v7) >> 2) & 0x7FFFFFFF;
    v14 = 0.0;
    v15 = v7;
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v18 = *v15;
      v15 += 4;
      v19 = pow(*(v9 + 8 * v18), a4);
      v17 = v17 + v19 * (v18 % v10);
      v16 = v16 + v19 * (v18 / v10);
      v14 = v14 + v19;
      --v13;
    }

    while (v13);
LABEL_17:
    v20 = *(a3 + 16);
    if (!v20 || (v21 = *(a3 + 20), v8 >= v21) || (*(*(a3 + 8) + 8 * v8) = v12, v20 == 1) || (*(*(a3 + 8) + 8 * v8 + 8 * v21) = v17 / v14, v20 <= 2))
    {
      __assert_rtn("operator()", "Matrix.hpp", 120, "row < m_rows && col < m_cols");
    }

    *(*(a3 + 8) + 8 * v8 + 8 * (2 * v21)) = v16 / v14;
    goto LABEL_9;
  }
}

void sub_22468A138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

void Algo::StdFilter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 0)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 20);
    if (*(a3 + 32) < 8 * v4 * v3)
    {
      if (*(a3 + 8))
      {
        if (*(a3 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }
      }

      operator new[]();
    }

    *(a3 + 16) = v4;
    *(a3 + 20) = v3;
    if (*(a1 + 20) * *(a1 + 16))
    {
      operator new[]();
    }

    vDSPVsq<double>(*(a1 + 8), 1, 0, 1, 0);
    ImageUtils::IntegralImage<double>();
  }

  Algo::StdFilter();
}

void sub_22468A6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void sub_22468A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(va1);
  Matrix<double>::~Matrix(va2);
  _Unwind_Resume(a1);
}

void Algo::NormXcorr2d(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *(a3 + 8);
  if (*(a3 + 32) < 8 * v4 * v5)
  {
    if (v6)
    {
      if (*(a3 + 24) == 1)
      {
        MEMORY[0x22AA53170](*(a3 + 8), 0x1000C8000313F17);
      }
    }

    operator new[]();
  }

  *(a3 + 16) = v4;
  *(a3 + 20) = v5;
  v9[0] = 0.0;
  vDSPVfill<double>(v9, v6, 1, v5 * v4);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  *&v9[0] = &unk_283809BF8;
  if (v8 * v7)
  {
    operator new[]();
  }

  v9[1] = 0.0;
  v10 = v7;
  v11 = v8;
  v12 = 0;
  v13 = 8 * v7 * v8;
  vDSPVsq<double>(*(a2 + 8), 1, 0, 1, 0);
  ImageUtils::IntegralImage<double>();
}

void sub_22468B370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a31 && a33 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  *(v33 - 192) = a18;
  if (*(v33 - 184) && *(v33 - 168) == 1)
  {
    MEMORY[0x22AA53170]();
  }

  *(v33 - 152) = a19;
  if (*(v33 - 144))
  {
    if (*(v33 - 128) == 1)
    {
      MEMORY[0x22AA53170]();
    }
  }

  _Unwind_Resume(exception_object);
}

void Algo::FundMatrix3x3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    operator new[]();
  }

  if (*(a2 + 20))
  {
    operator new[]();
  }

  Algo::Normalize2DPts();
}

void sub_22468C7A8(_Unwind_Exception *a1)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x3D0]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x658]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x978]);
  MatrixNxPts<3u,double>::~MatrixNxPts(&STACK[0x9A0]);
  MatrixNxPts<1u,double>::~MatrixNxPts(&STACK[0x9C8]);
  _Unwind_Resume(a1);
}

void sub_22468CE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a9);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a14);
  _Unwind_Resume(a1);
}

void sub_22468CE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_22468CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_22468CE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_22468CEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

void sub_22468CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

double *MatrixNxPts<9u,double>::MultAxBTag<9u>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(a3, 0x288uLL);
  v6 = *(a1 + 16);
  v7 = *(a2 + 20);
  if (!v7 || (v8 = *(a2 + 16)) == 0)
  {
    if (v6 && *(a1 + 20))
    {
LABEL_86:
      Matrix<double>::operator()();
    }

LABEL_87:
    Matrix<double>::operator()();
  }

  v9 = *(a2 + 8);
  if (v8 == 1)
  {
    if (v6)
    {
      v149 = *(a1 + 20);
      if (v149)
      {
        MatrixNxPts<9u,double>::MultAxBTag<9u>((a1 + 8), v149, a3, v9);
        goto LABEL_86;
      }
    }

    goto LABEL_87;
  }

  v10 = 0;
  v11 = &v9->f64[v7];
  v12 = (2 * v7);
  v13 = &v9->f64[v12];
  v14 = (3 * v7);
  v15 = &v9->f64[v14];
  v16 = (4 * v7);
  v17 = &v9->f64[v16];
  v18 = (5 * v7);
  v19 = &v9->f64[v18];
  v20 = (6 * v7);
  v21 = &v9->f64[v20];
  v22 = (8 * v7);
  v23 = (7 * v7);
  v24 = &v9->f64[v23];
  result = &v9->f64[v22];
  v152 = &v9[1].f64[v12];
  v153 = &v9[1].f64[v7];
  v150 = &v9[1].f64[v16];
  v151 = &v9[1].f64[v14];
  v26 = &v9[1].f64[v18];
  v27 = &v9[1].f64[v20];
  v28 = &v9[1].f64[v23];
  v29 = &v9[1].f64[v22];
  do
  {
    if (v10 == v6)
    {
      goto LABEL_87;
    }

    v30 = *(a1 + 20);
    if (!v30)
    {
      goto LABEL_87;
    }

    v31 = *(a1 + 8);
    v32 = (v31 + 8 * (v30 * v10));
    if (v30 <= 3)
    {
      LODWORD(v33) = 0;
      v34 = 0.0;
      v35 = v9;
      v36 = (v31 + 8 * (v30 * v10));
LABEL_13:
      v42 = v30 - v33;
      do
      {
        v43 = *v36++;
        v44 = v43;
        v45 = *v35++;
        v34 = v34 + v44 * v45;
        --v42;
      }

      while (v42);
      goto LABEL_15;
    }

    v33 = v30 & 0xFFFFFFFC;
    v35 = &v9->f64[v33];
    v36 = &v32[v33];
    v37 = (v31 + 8 * (v30 * v10) + 16);
    v34 = 0.0;
    v38 = v33;
    v39 = v9 + 1;
    do
    {
      v40 = vmulq_f64(v37[-1], v39[-1]);
      v41 = vmulq_f64(*v37, *v39);
      v34 = v34 + v40.f64[0] + v40.f64[1] + v41.f64[0] + v41.f64[1];
      v37 += 2;
      v39 += 2;
      v38 -= 4;
    }

    while (v38);
    if (v33 != v30)
    {
      goto LABEL_13;
    }

LABEL_15:
    *(a3 + 9 * v10) = v34;
    if (v30 < 4)
    {
      LODWORD(v46) = 0;
      v47 = 0.0;
      v48 = v11;
      v49 = (v31 + 8 * (v30 * v10));
LABEL_20:
      v55 = v30 - v46;
      do
      {
        v56 = *v49++;
        v57 = v56;
        v58 = *v48++;
        v47 = v47 + v57 * v58;
        --v55;
      }

      while (v55);
      goto LABEL_22;
    }

    v46 = v30 & 0xFFFFFFFC;
    v48 = &v11[v46];
    v49 = &v32[v46];
    v50 = (v31 + 8 * (v30 * v10) + 16);
    v47 = 0.0;
    v51 = v46;
    v52 = v153;
    do
    {
      v53 = vmulq_f64(v50[-1], v52[-1]);
      v54 = vmulq_f64(*v50, *v52);
      v47 = v47 + v53.f64[0] + v53.f64[1] + v54.f64[0] + v54.f64[1];
      v50 += 2;
      v52 += 2;
      v51 -= 4;
    }

    while (v51);
    if (v46 != v30)
    {
      goto LABEL_20;
    }

LABEL_22:
    *(a3 + 9 * v10 + 1) = v47;
    if (v8 == 2)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v59) = 0;
      v60 = 0.0;
      v61 = v13;
      v62 = (v31 + 8 * (v30 * v10));
LABEL_28:
      v68 = v30 - v59;
      do
      {
        v69 = *v62++;
        v70 = v69;
        v71 = *v61++;
        v60 = v60 + v70 * v71;
        --v68;
      }

      while (v68);
      goto LABEL_30;
    }

    v59 = v30 & 0xFFFFFFFC;
    v61 = &v13[v59];
    v62 = &v32[v59];
    v63 = (v31 + 8 * (v30 * v10) + 16);
    v60 = 0.0;
    v64 = v59;
    v65 = v152;
    do
    {
      v66 = vmulq_f64(v63[-1], v65[-1]);
      v67 = vmulq_f64(*v63, *v65);
      v60 = v60 + v66.f64[0] + v66.f64[1] + v67.f64[0] + v67.f64[1];
      v63 += 2;
      v65 += 2;
      v64 -= 4;
    }

    while (v64);
    if (v59 != v30)
    {
      goto LABEL_28;
    }

LABEL_30:
    *(a3 + 9 * v10 + 2) = v60;
    if (v8 == 3)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v72) = 0;
      v73 = 0.0;
      v74 = v15;
      v75 = (v31 + 8 * (v30 * v10));
LABEL_36:
      v81 = v30 - v72;
      do
      {
        v82 = *v75++;
        v83 = v82;
        v84 = *v74++;
        v73 = v73 + v83 * v84;
        --v81;
      }

      while (v81);
      goto LABEL_38;
    }

    v72 = v30 & 0xFFFFFFFC;
    v74 = &v15[v72];
    v75 = &v32[v72];
    v76 = (v31 + 8 * (v30 * v10) + 16);
    v73 = 0.0;
    v77 = v72;
    v78 = v151;
    do
    {
      v79 = vmulq_f64(v76[-1], v78[-1]);
      v80 = vmulq_f64(*v76, *v78);
      v73 = v73 + v79.f64[0] + v79.f64[1] + v80.f64[0] + v80.f64[1];
      v76 += 2;
      v78 += 2;
      v77 -= 4;
    }

    while (v77);
    if (v72 != v30)
    {
      goto LABEL_36;
    }

LABEL_38:
    *(a3 + 9 * v10 + 3) = v73;
    if (v8 == 4)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v85) = 0;
      v86 = 0.0;
      v87 = v17;
      v88 = (v31 + 8 * (v30 * v10));
LABEL_44:
      v94 = v30 - v85;
      do
      {
        v95 = *v88++;
        v96 = v95;
        v97 = *v87++;
        v86 = v86 + v96 * v97;
        --v94;
      }

      while (v94);
      goto LABEL_46;
    }

    v85 = v30 & 0xFFFFFFFC;
    v87 = &v17[v85];
    v88 = &v32[v85];
    v89 = (v31 + 8 * (v30 * v10) + 16);
    v86 = 0.0;
    v90 = v85;
    v91 = v150;
    do
    {
      v92 = vmulq_f64(v89[-1], v91[-1]);
      v93 = vmulq_f64(*v89, *v91);
      v86 = v86 + v92.f64[0] + v92.f64[1] + v93.f64[0] + v93.f64[1];
      v89 += 2;
      v91 += 2;
      v90 -= 4;
    }

    while (v90);
    if (v85 != v30)
    {
      goto LABEL_44;
    }

LABEL_46:
    *(a3 + 9 * v10 + 4) = v86;
    if (v8 == 5)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v98) = 0;
      v99 = 0.0;
      v100 = v19;
      v101 = (v31 + 8 * (v30 * v10));
LABEL_52:
      v107 = v30 - v98;
      do
      {
        v108 = *v101++;
        v109 = v108;
        v110 = *v100++;
        v99 = v99 + v109 * v110;
        --v107;
      }

      while (v107);
      goto LABEL_54;
    }

    v98 = v30 & 0xFFFFFFFC;
    v100 = &v19[v98];
    v101 = &v32[v98];
    v102 = (v31 + 8 * (v30 * v10) + 16);
    v99 = 0.0;
    v103 = v98;
    v104 = v26;
    do
    {
      v105 = vmulq_f64(v102[-1], v104[-1]);
      v106 = vmulq_f64(*v102, *v104);
      v99 = v99 + v105.f64[0] + v105.f64[1] + v106.f64[0] + v106.f64[1];
      v102 += 2;
      v104 += 2;
      v103 -= 4;
    }

    while (v103);
    if (v98 != v30)
    {
      goto LABEL_52;
    }

LABEL_54:
    *(a3 + 9 * v10 + 5) = v99;
    if (v8 == 6)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v111) = 0;
      v112 = 0.0;
      v113 = v21;
      v114 = (v31 + 8 * (v30 * v10));
LABEL_60:
      v120 = v30 - v111;
      do
      {
        v121 = *v114++;
        v122 = v121;
        v123 = *v113++;
        v112 = v112 + v122 * v123;
        --v120;
      }

      while (v120);
      goto LABEL_62;
    }

    v111 = v30 & 0xFFFFFFFC;
    v113 = &v21[v111];
    v114 = &v32[v111];
    v115 = (v31 + 8 * (v30 * v10) + 16);
    v112 = 0.0;
    v116 = v111;
    v117 = v27;
    do
    {
      v118 = vmulq_f64(v115[-1], v117[-1]);
      v119 = vmulq_f64(*v115, *v117);
      v112 = v112 + v118.f64[0] + v118.f64[1] + v119.f64[0] + v119.f64[1];
      v115 += 2;
      v117 += 2;
      v116 -= 4;
    }

    while (v116);
    if (v111 != v30)
    {
      goto LABEL_60;
    }

LABEL_62:
    *(a3 + 9 * v10 + 6) = v112;
    if (v8 == 7)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v124) = 0;
      v125 = 0.0;
      v126 = v24;
      v127 = (v31 + 8 * (v30 * v10));
LABEL_68:
      v133 = v30 - v124;
      do
      {
        v134 = *v127++;
        v135 = v134;
        v136 = *v126++;
        v125 = v125 + v135 * v136;
        --v133;
      }

      while (v133);
      goto LABEL_70;
    }

    v124 = v30 & 0xFFFFFFFC;
    v126 = &v24[v124];
    v127 = &v32[v124];
    v128 = (v31 + 8 * (v30 * v10) + 16);
    v125 = 0.0;
    v129 = v124;
    v130 = v28;
    do
    {
      v131 = vmulq_f64(v128[-1], v130[-1]);
      v132 = vmulq_f64(*v128, *v130);
      v125 = v125 + v131.f64[0] + v131.f64[1] + v132.f64[0] + v132.f64[1];
      v128 += 2;
      v130 += 2;
      v129 -= 4;
    }

    while (v129);
    if (v124 != v30)
    {
      goto LABEL_68;
    }

LABEL_70:
    *(a3 + 9 * v10 + 7) = v125;
    if (v8 == 8)
    {
      goto LABEL_86;
    }

    if (v30 < 4)
    {
      LODWORD(v137) = 0;
      v138 = 0.0;
      v139 = result;
LABEL_76:
      v145 = v30 - v137;
      do
      {
        v146 = *v32++;
        v147 = v146;
        v148 = *v139++;
        v138 = v138 + v147 * v148;
        --v145;
      }

      while (v145);
      goto LABEL_5;
    }

    v137 = v30 & 0xFFFFFFFC;
    v139 = &result[v137];
    v32 += v137;
    v140 = (v31 + 8 * (v30 * v10) + 16);
    v138 = 0.0;
    v141 = v137;
    v142 = v29;
    do
    {
      v143 = vmulq_f64(v140[-1], v142[-1]);
      v144 = vmulq_f64(*v140, *v142);
      v138 = v138 + v143.f64[0] + v143.f64[1] + v144.f64[0] + v144.f64[1];
      v140 += 2;
      v142 += 2;
      v141 -= 4;
    }

    while (v141);
    if (v137 != v30)
    {
      goto LABEL_76;
    }

LABEL_5:
    *(a3 + 9 * v10++ + 8) = v138;
  }

  while (v10 != 9);
  return result;
}

uint64_t MatrixMxN<9u,9u,double>::SVDMxN<9u,void>(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = __dst[1];
  v4 = __dst[2];
  v5 = __dst[19];
  __dst[1] = __dst[9];
  __dst[2] = __dst[18];
  __dst[18] = v4;
  __dst[19] = __dst[11];
  __dst[9] = v3;
  v6 = __dst[27];
  v7 = __dst[28];
  v8 = __dst[4];
  __dst[27] = __dst[3];
  __dst[28] = __dst[12];
  v9 = __dst[37];
  __dst[3] = v6;
  __dst[4] = __dst[36];
  __dst[36] = v8;
  __dst[37] = __dst[13];
  __dst[11] = v5;
  __dst[12] = v7;
  __dst[13] = v9;
  v10 = __dst[21];
  v11 = __dst[22];
  v12 = __dst[39];
  __dst[21] = __dst[29];
  __dst[22] = __dst[38];
  __dst[38] = v11;
  __dst[39] = __dst[31];
  __dst[29] = v10;
  __dst[31] = v12;
  v13 = __dst[45];
  v14 = __dst[46];
  v15 = __dst[6];
  __dst[45] = __dst[5];
  __dst[46] = __dst[14];
  v16 = __dst[47];
  v17 = __dst[48];
  v18 = __dst[24];
  __dst[47] = __dst[23];
  __dst[48] = __dst[32];
  v19 = __dst[55];
  __dst[5] = v13;
  __dst[6] = __dst[54];
  __dst[54] = v15;
  __dst[55] = __dst[15];
  __dst[14] = v14;
  __dst[15] = v19;
  v20 = __dst[57];
  __dst[23] = v16;
  __dst[24] = __dst[56];
  __dst[56] = v18;
  __dst[57] = __dst[33];
  __dst[32] = v17;
  __dst[33] = v20;
  v21 = __dst[41];
  v22 = __dst[42];
  v23 = __dst[59];
  __dst[41] = __dst[49];
  __dst[42] = __dst[58];
  __dst[58] = v22;
  __dst[59] = __dst[51];
  __dst[49] = v21;
  __dst[51] = v23;
  v24 = __dst[63];
  v25 = __dst[64];
  __dst[63] = __dst[7];
  __dst[64] = __dst[16];
  v26 = __dst[65];
  __dst[65] = __dst[25];
  v27 = __dst[66];
  __dst[66] = __dst[34];
  v28 = __dst[67];
  __dst[67] = __dst[43];
  v29 = __dst[68];
  __dst[68] = __dst[52];
  v30 = __dst[69];
  __dst[69] = __dst[61];
  v31 = __dst[72];
  __dst[72] = __dst[8];
  __dst[7] = v24;
  __dst[8] = v31;
  v32 = __dst[73];
  __dst[73] = __dst[17];
  __dst[16] = v25;
  __dst[17] = v32;
  v33 = __dst[74];
  __dst[74] = __dst[26];
  __dst[25] = v26;
  __dst[26] = v33;
  v34 = __dst[75];
  __dst[75] = __dst[35];
  __dst[34] = v27;
  __dst[35] = v34;
  v35 = __dst[76];
  __dst[76] = __dst[44];
  __dst[43] = v28;
  __dst[44] = v35;
  v36 = __dst[77];
  __dst[77] = __dst[53];
  __dst[52] = v29;
  __dst[53] = v36;
  v37 = __dst[78];
  __dst[78] = __dst[62];
  __dst[61] = v30;
  __dst[62] = v37;
  v38 = __dst[79];
  __dst[79] = __dst[71];
  __dst[71] = v38;
  v50 = 9;
  v51 = 9;
  v48 = 0;
  v49 = 9;
  v45 = 9;
  v46 = 9;
  v44 = 0.0;
  v43 = 83;
  v42 = 83;
  v47 = -1;
  dgesvd_NEWLAPACK();
  v47 = v44;
  v40 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
  dgesvd_NEWLAPACK();
  free(v40);
  MatrixMxN<9u,9u,double>::TransposeInplace<9u,void>(a2);
  return 0;
}

void MatrixMxN<3u,3u,double>::operator*<3u>(const double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 3)
  {
    v4 = *(a2 + 20);
    if (v4)
    {
      operator new[]();
    }

    LODWORD(v6) = 3;
    vDSPMmul<double>(a1, 1, *(a2 + 8), 1, 0, 1, 3, 0, v6);
    v5 = 24 * v4;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 24) = 0;
  *(a3 + 32) = v5;
  *a3 = &unk_283809CF0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 3;
  *(a3 + 20) = 0;
}

void sub_22468DA10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Algo::RandomSample(unsigned int a1, CRandomGenerator *this, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (v3)
  {
    v6 = 0;
    v7 = a1;
    do
    {
      v8 = (CRandomGenerator::UniformRand(this) * v7);
      if (v6)
      {
        v9 = 0;
        while (*(*(a3 + 8) + 4 * v9) != v8)
        {
          if (v6 == ++v9)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      if (v9 == v6)
      {
LABEL_3:
        *(*(a3 + 8) + 4 * v6++) = v8;
      }
    }

    while (v6 < v3);
  }

  return 0;
}

uint64_t Algo::FundDist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  v11 = *(a2 + 20);
  v130 = &unk_283809BF8;
  if (v11)
  {
    operator new[]();
  }

  v132 = 1;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v130 = &unk_283809C28;
  v131 = 0;
  MatrixMxN<3u,3u,double>::operator*<3u>(a1, a2, &v125);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v111 = *a1;
  v112 = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v117 = v13;
  v118 = v16;
  v17 = *(a1 + 56);
  v113 = *(a1 + 48);
  v114 = v12;
  v115 = v15;
  v116 = v17;
  v119 = *(a1 + 64);
  MatrixMxN<3u,3u,double>::operator*<3u>(&v111, a3, &v120);
  v18 = v127 * v128;
  if (v18)
  {
    v19 = v126;
    v20 = v126 + 8 * v18;
    if (v20 <= v126 + 8)
    {
      v20 = v126 + 8;
    }

    v21 = v20 + ~v126;
    v22 = v126;
    if (v21 < 0x18)
    {
      goto LABEL_10;
    }

    v23 = (v21 >> 3) + 1;
    v22 = (v126 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = (v126 + 16);
    v25 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = vmulq_f64(*v24, *v24);
      v24[-1] = vmulq_f64(v24[-1], v24[-1]);
      *v24 = v26;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_10:
      v27 = &v19->f64[v18];
      do
      {
        *v22 = *v22 * *v22;
        ++v22;
      }

      while (v22 < v27);
    }
  }

  v28 = v122 * v123;
  if (v28)
  {
    v29 = v121;
    v30 = &v121->f64[v28];
    if (v30 <= &v121->f64[1])
    {
      v30 = &v121->f64[1];
    }

    v31 = v30 + ~v121;
    v32 = v121;
    if (v31 < 0x18)
    {
      goto LABEL_19;
    }

    v33 = (v31 >> 3) + 1;
    v32 = &v121->f64[v33 & 0x3FFFFFFFFFFFFFFCLL];
    v34 = v121 + 1;
    v35 = v33 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = vmulq_f64(*v34, *v34);
      v34[-1] = vmulq_f64(v34[-1], v34[-1]);
      *v34 = v36;
      v34 += 2;
      v35 -= 4;
    }

    while (v35);
    if (v33 != (v33 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v37 = &v29->f64[v28];
      do
      {
        *v32 = *v32 * *v32;
        ++v32;
      }

      while (v32 < v37);
    }
  }

  Matrix<double>::DotMult<double>(&v130, &v130, &v111);
  v38 = HIDWORD(v113);
  v39 = v114;
  v109 = v112;
  v110 = HIDWORD(v113);
  v40 = v126;
  v41 = v128;
  v42 = 8 * v128;
  LODWORD(v113) = 1;
  HIDWORD(v113) = v128;
  LOBYTE(v114) = 0;
  v115 = v42;
  v111 = &unk_283809C28;
  v112 = v126;
  if (v128)
  {
    v43 = v126 + v42;
    v44 = (v42 + v126);
    if (v42 + v126 <= v126 + 8)
    {
      v44 = (v126 + 8);
    }

    v45 = v44 + ~v126;
    if (v45 >= 0x18)
    {
      v49 = (v45 >> 3) + 1;
      v50 = 8 * (v49 & 0x3FFFFFFFFFFFFFFCLL);
      v46 = (v43 + v50);
      v47 = (v126 + v50);
      v51 = v49 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v52 = vaddq_f64(v40[1], *(v40 + v42 + 16));
        *v40 = vaddq_f64(*v40, *(v40 + 8 * v41));
        v40[1] = v52;
        v40 += 2;
        v51 -= 4;
      }

      while (v51);
      if (v49 == (v49 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v46 = (v126 + v42);
      v47 = v126;
    }

    do
    {
      v53 = *v46++;
      *v47 = *v47 + v53;
      ++v47;
    }

    while (v47 < v43);
LABEL_31:
    v48 = v113 == 1;
    goto LABEL_32;
  }

  v48 = 1;
LABEL_32:
  v54 = v121;
  v55 = v123;
  if (v123 != v41 || !v48)
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  if (v41)
  {
    v56 = v112;
    v57 = 8 * v123 + v112;
    if (v57 <= v112 + 8)
    {
      v57 = v112 + 8;
    }

    v58 = v57 + ~v112;
    if (v58 >= 0x88)
    {
      v62 = (v58 & 0xFFFFFFFFFFFFFFF8) + 8;
      v63 = v112 >= v121 + v62 || v121 >= v112 + v62;
      v59 = v112;
      if (v63)
      {
        v64 = (v58 >> 3) + 1;
        v65 = v64 & 0x3FFFFFFFFFFFFFFCLL;
        v66 = &v121->f64[v65];
        v59 = (v112 + v65 * 8);
        v67 = (v112 + 16);
        v68 = v121 + 1;
        v69 = v64 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v70 = vaddq_f64(*v67, *v68);
          v67[-1] = vaddq_f64(v67[-1], v68[-1]);
          *v67 = v70;
          v67 += 2;
          v68 += 2;
          v69 -= 4;
        }

        while (v69);
        v54 = v66;
        if (v64 == (v64 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v59 = v112;
    }

    v71 = v56 + 8 * v55;
    do
    {
      v72 = *v54++;
      *v59 = *v59 + v72;
      ++v59;
    }

    while (v59 < v71);
LABEL_50:
    v54 = v121;
    v60 = v123;
    v61 = v113 == 1;
    goto LABEL_51;
  }

  v60 = 0;
  v61 = 1;
LABEL_51:
  v73 = v60;
  v74 = &v54[v60];
  if (v60 != v41 || !v61)
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  if (v41)
  {
    v75 = v112;
    v76 = v73 * 8 + v112;
    if (v73 * 8 + v112 <= v112 + 8)
    {
      v76 = v112 + 8;
    }

    v77 = v76 + ~v112;
    if (v77 < 0x98)
    {
      v78 = v112;
LABEL_66:
      v87 = v75 + 8 * v60;
      do
      {
        v88 = *v74++;
        *v78 = *v78 + v88;
        ++v78;
      }

      while (v78 < v87);
      goto LABEL_68;
    }

    v79 = &v54[v73];
    v80 = v112 >= &v54[v73 + 1] + (v77 & 0xFFFFFFFFFFFFFFF8) || v74 >= v112 + (v77 & 0xFFFFFFFFFFFFFFF8) + 8;
    v78 = v112;
    if (!v80)
    {
      goto LABEL_66;
    }

    v81 = (v77 >> 3) + 1;
    v82 = 8 * (v81 & 0x3FFFFFFFFFFFFFFCLL);
    v74 = (v74 + v82);
    v78 = (v112 + v82);
    v83 = (v112 + 16);
    v84 = v79 + 1;
    v85 = v81 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v86 = vaddq_f64(*v83, *v84);
      v83[-1] = vaddq_f64(v83[-1], v84[-1]);
      *v83 = v86;
      v83 += 2;
      v84 += 2;
      v85 -= 4;
    }

    while (v85);
    if (v81 != (v81 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_66;
    }
  }

LABEL_68:
  if (v41 != v38)
  {
    __assert_rtn("doDimensionsMatchTo", "Matrix.hpp", 1043, "0");
  }

  if (v38)
  {
    v89 = v109;
    v90 = v109 + 8 * v38;
    v91 = v112;
    v92 = v109 + 8;
    if (v90 > v109 + 8)
    {
      v92 = v109 + 8 * v38;
    }

    v93 = v92 + ~v109;
    if (v93 < 0x78)
    {
      goto LABEL_109;
    }

    v94 = (v93 & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v109 < v112 + v94 && v112 < v109 + v94)
    {
      goto LABEL_109;
    }

    v96 = (v93 >> 3) + 1;
    v97 = 8 * (v96 & 0x3FFFFFFFFFFFFFFCLL);
    v98 = (v112 + v97);
    v99 = (v109 + v97);
    v100 = (v109 + 16);
    v101 = (v112 + 16);
    v102 = v96 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v103 = vdivq_f64(*v100, *v101);
      v100[-1] = vdivq_f64(v100[-1], v101[-1]);
      *v100 = v103;
      v100 += 2;
      v101 += 2;
      v102 -= 4;
    }

    while (v102);
    v91 = v98;
    v89 = v99;
    if (v96 != (v96 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_109:
      do
      {
        v104 = *v91++;
        *v89 = *v89 / v104;
        ++v89;
      }

      while (v89 < v90);
    }

    v105 = 0;
    v106 = 0;
    *a5 = 0;
    do
    {
      if (fabs(*(v109 + 8 * v106)) < a6)
      {
        *(*(a4 + 8) + 4 * v105) = v106;
        v105 = *a5 + 1;
        *a5 = v105;
        v38 = v110;
      }

      ++v106;
    }

    while (v106 < v38);
  }

  else
  {
    *a5 = 0;
  }

  if (v109)
  {
    v107 = v39 == 0;
  }

  else
  {
    v107 = 1;
  }

  if (v107)
  {
    v120 = &unk_283809BF8;
    if (!v121)
    {
      goto LABEL_97;
    }
  }

  else
  {
    MEMORY[0x22AA53170]();
    v120 = &unk_283809BF8;
    if (!v121)
    {
      goto LABEL_97;
    }
  }

  if (v124 == 1)
  {
    MEMORY[0x22AA53170]();
  }

LABEL_97:
  v125 = &unk_283809BF8;
  if (v126 && v129 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  v130 = &unk_283809BF8;
  if (v131 && v134 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  return 0;
}

void sub_22468E404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  MatrixNxPts<1u,double>::~MatrixNxPts(&a20);
  MatrixNxPts<1u,double>::~MatrixNxPts(&a15);
  MatrixNxPts<3u,double>::~MatrixNxPts(&a29);
  MatrixNxPts<3u,double>::~MatrixNxPts(v29 - 184);
  MatrixNxPts<1u,double>::~MatrixNxPts(v29 - 144);
  _Unwind_Resume(a1);
}

void sub_22468E6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va1);
  _Unwind_Resume(a1);
}

void sub_22468E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va1);
  MatrixNxPts<1u,BOOL>::~MatrixNxPts(va);
  _Unwind_Resume(a1);
}

uint64_t Algo::Ransac(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, double a9, uint64_t a10, unsigned int *a11)
{
  v15 = *(a1 + 20);
  CRandomGenerator::CRandomGenerator(v51, a6);
  v16 = 0;
  v27 = 0;
  *a11 = 0;
  v50 = 0;
  v49 = 0;
  v17 = v15;
  v18 = 1.0;
  do
  {
    if (v18 <= v16)
    {
      break;
    }

    v29 = v16;
    v48 = 0;
    v19 = 1;
    memset(v47, 0, sizeof(v47));
    do
    {
      v42 = &unk_283809D90;
      if (a3)
      {
        operator new[]();
      }

      v44 = 1;
      v45 = 0;
      v46 = 0;
      v42 = &unk_283809E30;
      __src = 0;
      if (!a7)
      {
        v38 = 3;
        v39 = 0;
        v40 = a3 != 0;
        v41 = 24 * a3;
        v37[0] = &unk_283809CF0;
        v37[1] = 0;
        v33 = 3;
        v34 = 0;
        v35 = a3 != 0;
        v36 = v41;
        v32[0] = &unk_283809CF0;
        v32[1] = 0;
        Algo::FundMatrix3x3(v37, v32);
      }

      ++v19;
    }

    while (v19 <= a4);
    v20 = *(a1 + 20);
    v42 = &unk_283809D90;
    if (v20)
    {
      operator new[]();
    }

    v44 = 1;
    v45 = 0;
    v46 = 0;
    v42 = &unk_283809E30;
    __src = 0;
    LODWORD(v37[0]) = 0;
    Algo::FundDist(v47, a1, a2, &v42, v37, a9);
    v21 = v37[0];
    if (LODWORD(v37[0]) > *a11)
    {
      v22 = HIDWORD(v44);
      v23 = 4 * v44 * HIDWORD(v44);
      v24 = *(a10 + 8);
      if (*(a10 + 32) < v23)
      {
        if (v24)
        {
          if (*(a10 + 24) == 1)
          {
            MEMORY[0x22AA53170]();
          }
        }

        operator new[]();
      }

      *(a10 + 16) = v44;
      *(a10 + 20) = v22;
      memcpy(v24, __src, v23);
      *a11 = v21;
      v25 = pow(v21 / v17, 0);
      v27 = 1;
      v18 = -6.90775528 / log(fmin(fmax(1.0 - v25, 2.22044605e-16), 1.0));
    }

    v42 = &unk_283809D90;
    if (__src && v45 == 1)
    {
      MEMORY[0x22AA53170]();
    }

    v16 = v29 + 1;
  }

  while (v29 + 1 <= a5);
  CRandomGenerator::~CRandomGenerator(v51);
  return (v27 & 1u) - 1;
}

void sub_22468F084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(&a30);
  CRandomGenerator::~CRandomGenerator(&a47);
  _Unwind_Resume(a1);
}

void sub_22468F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MatrixNxPts<3u,double>::~MatrixNxPts(va);
  JUMPOUT(0x22468F0B0);
}

uint64_t Algo::RansacHomography(int a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, _DWORD *a8, _DWORD *a9)
{
  *a8 = 0;
  CRandomGenerator::CRandomGenerator(v10, a6);
  if (0 < 1.0)
  {
    operator new[]();
  }

  if (a9)
  {
    *a9 = -1;
  }

  CRandomGenerator::~CRandomGenerator(v10);
  return 0xFFFFFFFFLL;
}

void sub_22468FD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(v59 - 192);
  Matrix<double>::~Matrix(&a54);
  CRandomGenerator::~CRandomGenerator(&a59);
  _Unwind_Resume(a1);
}

uint64_t Algo::RansacPlane(int a1, int a2, int a3, int a4, unsigned int a5, uint64_t a6, _DWORD *a7, _DWORD *a8)
{
  v11 = *MEMORY[0x277D85DE8];
  *a7 = 0;
  CRandomGenerator::CRandomGenerator(v10, a5);
  if (0 < 1.0)
  {
    operator new[]();
  }

  if (a8)
  {
    *a8 = -1;
  }

  CRandomGenerator::~CRandomGenerator(v10);
  return 0xFFFFFFFFLL;
}

void sub_224690EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(&a51);
  STACK[0xBE8] = a18;
  if (STACK[0xBF0] && LOBYTE(STACK[0xC00]) == 1)
  {
    MEMORY[0x22AA53170]();
    STACK[0xBF0] = 0;
    STACK[0xC08] = 0;
    LOBYTE(STACK[0xC00]) = 0;
  }

  STACK[0xBF8] = 0;
  STACK[0xBC0] = a19;
  if (STACK[0xBC8] && LOBYTE(STACK[0xBD8]) == 1)
  {
    MEMORY[0x22AA53170]();
    STACK[0xBC8] = 0;
    STACK[0xBE0] = 0;
    LOBYTE(STACK[0xBD8]) = 0;
  }

  STACK[0xBD0] = 0;
  STACK[0xB98] = a20;
  if (STACK[0xBA0] && LOBYTE(STACK[0xBB0]) == 1)
  {
    MEMORY[0x22AA53170]();
  }

  a56 = a21;
  if (a57 && a59 == 1)
  {
    MEMORY[0x22AA53170]();
  }

  a61 = a22;
  if (a62)
  {
    if (a64 == 1)
    {
      MEMORY[0x22AA53170]();
    }
  }

  CRandomGenerator::~CRandomGenerator(&a66);
  _Unwind_Resume(a1);
}

double Algo::Mean(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    if (*(a2 + 32) <= 7uLL)
    {
      if (*(a2 + 8) && *(a2 + 24) == 1)
      {
        MEMORY[0x22AA53170]();
      }

      operator new[]();
    }

    *(a2 + 16) = 0x100000001;
    v13 = 0.0;
    vDSPMeanv<double>(*(a1 + 8), 1, &v13, *(a1 + 20) * *(a1 + 16));
    result = v13;
    **(a2 + 8) = v13;
  }

  else
  {
    if (!v4)
    {
      Algo::Mean();
    }

    v5 = *(a1 + 20);
    v6 = *(a2 + 8);
    if (*(a2 + 32) < (8 * v5))
    {
      if (v6)
      {
        if (*(a2 + 24) == 1)
        {
          MEMORY[0x22AA53170]();
        }
      }

      operator new[]();
    }

    *(a2 + 16) = 1;
    *(a2 + 20) = v5;
    bzero(v6, 8 * v5);
    v7 = 0;
    v8 = *(a1 + 16);
    do
    {
      if (v5)
      {
        if (v7 < v8)
        {
          v9 = 0;
          v10 = *(a1 + 20);
          v11 = 8 * v10 * v7;
          while (v10)
          {
            if (!*(a2 + 16) || v9 >= *(a2 + 20))
            {
              GeomUtils::CalcRotationMatrix<double>();
            }

            *(*(a2 + 8) + 8 * v9) = *(*(a1 + 8) + v11) + *(*(a2 + 8) + 8 * v9);
            ++v9;
            --v10;
            v11 += 8;
            if (v5 == v9)
            {
              goto LABEL_10;
            }
          }
        }

        Matrix<double>::operator()();
      }

LABEL_10:
      ++v7;
    }

    while (v7 != v4);
    v13 = v4;
    vDSPVsdiv<double>(*(a2 + 8), 1, &v13, *(a2 + 8), 1, *(a2 + 20) * *(a2 + 16));
  }

  return result;
}

uint64_t Algo::Gcd(uint64_t this, uint64_t a2)
{
  if (a2)
  {
    do
    {
      v2 = a2;
      a2 = this % a2;
      LODWORD(this) = v2;
    }

    while (a2);
    return v2;
  }

  return this;
}

uint64_t Algo::GcdExt(uint64_t this, int a2, _DWORD *a3, int *a4, int *a5)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2 | this)
  {
    memset(__p, 0, 24);
    __p[3] = __p;
    LOBYTE(v6) = 0;
    operator new();
  }

  *a3 = 0;
  *a4 = 0;
  return this;
}

void sub_224691684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  std::vector<std::vector<float>>::~vector[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t Algo::Lcm(Algo *this, unsigned int a2)
{
  v2 = this;
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v2 = v3;
      v3 = v4 % v3;
      v4 = v2;
    }

    while (v3);
  }

  return this / v2 * a2;
}

void Algo::fMod(Algo *this, float a2, float a3)
{
  if (a3 != 0.0)
  {
    fmodf(a2, a3);
  }
}

char *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t MatrixMxN<1u,9u,double>::Sort<1u,void>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = *(result + 64);
  v2 = *(result + 48);
  *(a2 + 32) = *(result + 32);
  *(a2 + 48) = v2;
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  v4 = *(a2 + 8) < *a2;
  if (*(a2 + 16) < *(a2 + 8 * (*(a2 + 8) < *a2)))
  {
    v4 = 2;
  }

  if (*(a2 + 24) < *(a2 + 8 * v4))
  {
    v4 = 3;
  }

  if (*(a2 + 32) < *(a2 + 8 * v4))
  {
    v4 = 4;
  }

  v5 = 5;
  if (*(a2 + 40) >= *(a2 + 8 * v4))
  {
    v6 = v4;
  }

  else
  {
    v6 = 5;
  }

  v7 = 6;
  if (*(a2 + 48) >= *(a2 + 8 * v6))
  {
    v8 = v6;
  }

  else
  {
    v8 = 6;
  }

  if (*(a2 + 56) >= *(a2 + 8 * v8))
  {
    v9 = v8;
  }

  else
  {
    v9 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v9))
  {
    v9 = 8;
  }

  v10 = *(a2 + 8 * v9);
  *(a2 + 8 * v9) = *a2;
  *a2 = v10;
  v11 = *(a2 + 8);
  if (*(a2 + 16) >= v11)
  {
    LODWORD(v12) = 1;
  }

  else
  {
    LODWORD(v12) = 2;
  }

  if (*(a2 + 24) < *(a2 + 8 * v12))
  {
    LODWORD(v12) = 3;
  }

  if (*(a2 + 32) < *(a2 + 8 * v12))
  {
    LODWORD(v12) = 4;
  }

  if (*(a2 + 40) >= *(a2 + 8 * v12))
  {
    v12 = v12;
  }

  else
  {
    v12 = 5;
  }

  if (*(a2 + 48) < *(a2 + 8 * v12))
  {
    v12 = 6;
  }

  if (*(a2 + 56) < *(a2 + 8 * v12))
  {
    v12 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v12))
  {
    v12 = 8;
  }

  v13 = *(a2 + 8 * v12);
  *(a2 + 8 * v12) = v11;
  *(a2 + 8) = v13;
  v14 = *(a2 + 16);
  if (*(a2 + 24) >= v14)
  {
    LODWORD(v15) = 2;
  }

  else
  {
    LODWORD(v15) = 3;
  }

  if (*(a2 + 32) < *(a2 + 8 * v15))
  {
    LODWORD(v15) = 4;
  }

  if (*(a2 + 40) >= *(a2 + 8 * v15))
  {
    v15 = v15;
  }

  else
  {
    v15 = 5;
  }

  if (*(a2 + 48) < *(a2 + 8 * v15))
  {
    v15 = 6;
  }

  if (*(a2 + 56) < *(a2 + 8 * v15))
  {
    v15 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v15))
  {
    v15 = 8;
  }

  v16 = *(a2 + 8 * v15);
  *(a2 + 8 * v15) = v14;
  *(a2 + 16) = v16;
  v17 = *(a2 + 24);
  if (*(a2 + 32) >= v17)
  {
    LODWORD(v18) = 3;
  }

  else
  {
    LODWORD(v18) = 4;
  }

  if (*(a2 + 40) >= *(a2 + 8 * v18))
  {
    v18 = v18;
  }

  else
  {
    v18 = 5;
  }

  if (*(a2 + 48) < *(a2 + 8 * v18))
  {
    v18 = 6;
  }

  if (*(a2 + 56) < *(a2 + 8 * v18))
  {
    v18 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v18))
  {
    v18 = 8;
  }

  v19 = *(a2 + 8 * v18);
  *(a2 + 8 * v18) = v17;
  *(a2 + 24) = v19;
  v20 = *(a2 + 32);
  if (*(a2 + 40) >= v20)
  {
    v21 = 4;
  }

  else
  {
    v21 = 5;
  }

  if (*(a2 + 48) < *(a2 + 8 * v21))
  {
    v21 = 6;
  }

  if (*(a2 + 56) < *(a2 + 8 * v21))
  {
    v21 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v21))
  {
    v21 = 8;
  }

  v22 = *(a2 + 8 * v21);
  *(a2 + 8 * v21) = v20;
  v23 = *(a2 + 40);
  if (*(a2 + 48) < v23)
  {
    v5 = 6;
  }

  if (*(a2 + 56) < *(a2 + 8 * v5))
  {
    v5 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v5))
  {
    v5 = 8;
  }

  v24 = *(a2 + 8 * v5);
  *(a2 + 8 * v5) = v23;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  v25 = *(a2 + 48);
  if (*(a2 + 56) < v25)
  {
    v7 = 7;
  }

  if (*(a2 + 64) < *(a2 + 8 * v7))
  {
    v7 = 8;
  }

  v26 = *(a2 + 8 * v7);
  *(a2 + 8 * v7) = v25;
  v27 = *(a2 + 56);
  v28 = 56;
  if (*(a2 + 64) < v27)
  {
    v28 = 64;
  }

  v29 = *(a2 + v28);
  *(a2 + v28) = v27;
  *(a2 + 48) = v26;
  *(a2 + 56) = v29;
  return result;
}

void Matrix<unsigned int>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283809D90;
  v2 = *(a1 + 8);
  if (v2 && *(a1 + 24) == 1)
  {
    v3 = a1;
    MEMORY[0x22AA53170](v2, 0x1000C8052888210);
    a1 = v3;
    *(v3 + 8) = 0;
    *(v3 + 32) = 0;
    *(v3 + 24) = 0;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x22AA531A0);
}

void sub_224691CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_224691CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x22AA53040]();
    MEMORY[0x22AA531A0](v5, 0x20C4093837F09);
  }

  MEMORY[0x22AA531A0](a1, 0x10E0C40C6F9689ELL);
  return 0;
}

void sub_224691D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double *,double (*)(double),int),double const*,double *,double (*)(double),int>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x22AA53040]();
      MEMORY[0x22AA531A0](v4, 0x20C4093837F09);
    }

    MEMORY[0x22AA531A0](v1, 0x10E0C40C6F9689ELL);
    return v2;
  }

  return result;
}

void *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x22AA53040]();
    MEMORY[0x22AA531A0](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

void sub_224691F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_224691F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x22AA53040]();
    MEMORY[0x22AA531A0](v5, 0x20C4093837F09);
  }

  MEMORY[0x22AA531A0](a1, 0x10E0C40E17172BELL);
  return 0;
}

void sub_224692048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(double const*,double const*,double *,double (*)(double,double),int),double const*,double const*,double *,double (*)(double,double),int>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x22AA53040]();
      MEMORY[0x22AA531A0](v4, 0x20C4093837F09);
    }

    MEMORY[0x22AA531A0](v1, 0x10E0C40E17172BELL);
    return v2;
  }

  return result;
}

double MatrixMxN<9u,9u,double>::TransposeInplace<9u,void>(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 16);
  *(a1 + 72) = *(a1 + 8);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  *(a1 + 8) = v1;
  *(a1 + 16) = v4;
  v5 = *(a1 + 152);
  v6 = *(a1 + 96);
  *(a1 + 152) = *(a1 + 88);
  v7 = *(a1 + 216);
  v8 = *(a1 + 224);
  v9 = *(a1 + 32);
  *(a1 + 216) = *(a1 + 24);
  *(a1 + 224) = v6;
  *(a1 + 88) = v5;
  *(a1 + 96) = v8;
  v10 = *(a1 + 232);
  v11 = *(a1 + 176);
  *(a1 + 232) = *(a1 + 168);
  v12 = *(a1 + 280);
  v13 = *(a1 + 288);
  *(a1 + 24) = v7;
  *(a1 + 32) = v13;
  v14 = *(a1 + 296);
  v15 = *(a1 + 304);
  v16 = *(a1 + 112);
  *(a1 + 296) = *(a1 + 104);
  *(a1 + 304) = v11;
  *(a1 + 168) = v10;
  *(a1 + 176) = v15;
  v17 = *(a1 + 312);
  v18 = *(a1 + 256);
  *(a1 + 312) = *(a1 + 248);
  v19 = *(a1 + 360);
  v20 = *(a1 + 368);
  v21 = *(a1 + 48);
  *(a1 + 360) = *(a1 + 40);
  *(a1 + 368) = v16;
  *(a1 + 104) = v14;
  *(a1 + 112) = v20;
  v23 = *(a1 + 376);
  v22 = *(a1 + 384);
  v24 = *(a1 + 192);
  *(a1 + 376) = *(a1 + 184);
  *(a1 + 384) = v18;
  *(a1 + 248) = v17;
  *(a1 + 256) = v22;
  v25 = *(a1 + 392);
  v26 = *(a1 + 336);
  *(a1 + 392) = *(a1 + 328);
  v27 = *(a1 + 424);
  v28 = *(a1 + 432);
  *(a1 + 40) = v19;
  *(a1 + 48) = v28;
  v29 = *(a1 + 440);
  v30 = *(a1 + 448);
  v31 = *(a1 + 128);
  *(a1 + 440) = *(a1 + 120);
  *(a1 + 448) = v24;
  *(a1 + 184) = v23;
  *(a1 + 192) = v30;
  v32 = *(a1 + 456);
  v33 = *(a1 + 464);
  v34 = *(a1 + 272);
  *(a1 + 456) = *(a1 + 264);
  *(a1 + 464) = v26;
  *(a1 + 328) = v25;
  *(a1 + 336) = v33;
  v35 = *(a1 + 472);
  v36 = *(a1 + 416);
  *(a1 + 472) = *(a1 + 408);
  v37 = *(a1 + 504);
  v38 = *(a1 + 512);
  v39 = *(a1 + 64);
  *(a1 + 504) = *(a1 + 56);
  *(a1 + 512) = v31;
  *(a1 + 120) = v29;
  *(a1 + 128) = v38;
  v40 = *(a1 + 520);
  v41 = *(a1 + 208);
  *(a1 + 520) = *(a1 + 200);
  v42 = *(a1 + 528);
  *(a1 + 528) = v34;
  *(a1 + 264) = v32;
  *(a1 + 272) = v42;
  v43 = *(a1 + 536);
  v44 = *(a1 + 352);
  *(a1 + 536) = *(a1 + 344);
  v45 = *(a1 + 544);
  *(a1 + 544) = v36;
  *(a1 + 408) = v35;
  *(a1 + 416) = v45;
  v46 = *(a1 + 552);
  v47 = *(a1 + 496);
  *(a1 + 552) = *(a1 + 488);
  v48 = *(a1 + 576);
  *(a1 + 576) = v39;
  *(a1 + 56) = v37;
  *(a1 + 64) = v48;
  v49 = *(a1 + 584);
  *(a1 + 584) = v3;
  *(a1 + 136) = v49;
  *(a1 + 144) = v2;
  v50 = *(a1 + 592);
  *(a1 + 592) = v41;
  *(a1 + 200) = v40;
  *(a1 + 208) = v50;
  v51 = *(a1 + 600);
  *(a1 + 600) = v12;
  *(a1 + 280) = v51;
  *(a1 + 288) = v9;
  v52 = *(a1 + 608);
  *(a1 + 608) = v44;
  *(a1 + 344) = v43;
  *(a1 + 352) = v52;
  v53 = *(a1 + 616);
  *(a1 + 616) = v27;
  *(a1 + 424) = v53;
  *(a1 + 432) = v21;
  v54 = *(a1 + 624);
  *(a1 + 624) = v47;
  *(a1 + 488) = v46;
  *(a1 + 496) = v54;
  result = *(a1 + 632);
  *(a1 + 632) = *(a1 + 568);
  *(a1 + 568) = result;
  return result;
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

float64x2_t **MatrixNxPts<9u,double>::MultAxBTag<9u>(float64x2_t **result, unsigned int a2, double *a3, float64x2_t *a4)
{
  v4 = *result;
  if (a2 <= 3)
  {
    LODWORD(v5) = 0;
    v6 = 0.0;
    v7 = a4;
    v8 = *result;
LABEL_6:
    v14 = a2 - v5;
    do
    {
      v15 = *v8++;
      v16 = v15;
      v17 = *v7++;
      v6 = v6 + v16 * v17;
      --v14;
    }

    while (v14);
    goto LABEL_8;
  }

  v5 = a2 & 0xFFFFFFFC;
  v7 = &a4->f64[v5];
  v8 = &v4->f64[v5];
  v9 = v4 + 1;
  v10 = a4 + 1;
  v6 = 0.0;
  v11 = v5;
  do
  {
    v12 = vmulq_f64(v9[-1], v10[-1]);
    v13 = vmulq_f64(*v9, *v10);
    v6 = v6 + v12.f64[0] + v12.f64[1] + v13.f64[0] + v13.f64[1];
    v9 += 2;
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  if (v5 != a2)
  {
    goto LABEL_6;
  }

LABEL_8:
  *a3 = v6;
  return result;
}

peridot::PeridotNearRangeIndicator *peridot::PeridotNearRangeIndicator::PeridotNearRangeIndicator(peridot::PeridotNearRangeIndicator *this)
{
  memcpy(this, &unk_2247A5520, 0x380uLL);
  memcpy(this + 896, &unk_2247A58A0, 0x380uLL);
  bzero(this + 1792, 0x1198uLL);
  peridot::PeridotNearRangeIndicator::setAndInitModel(this);
  return this;
}

{
  memcpy(this, &unk_2247A5520, 0x380uLL);
  memcpy(this + 896, &unk_2247A58A0, 0x380uLL);
  bzero(this + 1792, 0x1198uLL);
  peridot::PeridotNearRangeIndicator::setAndInitModel(this);
  return this;
}

void peridot::PeridotNearRangeIndicator::setAndInitModel(peridot::PeridotNearRangeIndicator *this)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"main_nyc2d88ffc_44000-V53-V54" withExtension:@"mlmodelc"];
  v4 = *(this + 224);
  *(this + 224) = v3;

  v5 = *(this + 224);
  v13 = 0;
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 error:&v13];
  v7 = v13;
  v8 = *(this + 225);
  *(this + 225) = v6;

  v12 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2838110E0 dataType:65568 error:&v12];
  v10 = v12;

  v11 = *(this + 786);
  *(this + 786) = v9;

  if (v10)
  {
    NSLog(&cfstr_ErrorCreatingM.isa, v10);
  }
}

void peridot::PeridotNearRangeIndicator::~PeridotNearRangeIndicator(id *this)
{
}

{
}

uint64_t peridot::PeridotNearRangeIndicator::prepareModelInputData(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 length];
  v34 = a1 + 1808;
  bzero((a1 + 1808), 0x1180uLL);
  if ((v5 + 2) >= 5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v5 / 3;
    v40 = a1 + 896;
    v32 = a1 + 3600;
    v33 = a1 + 2704;
    v29 = a1 + 3152;
    v30 = a1 + 2256;
    v28 = a1 + 4048;
    v38 = a1 + 4496;
    v37 = a1 + 4944;
    v36 = a1 + 5392;
    v35 = a1 + 5840;
    if ((v5 / 3) <= 1)
    {
      v11 = 1;
    }

    v12 = v11;
    v39 = a1;
    do
    {
      v17 = *([v4 bankIds] + v7);
      v18 = *([v4 spotIds] + v7);
      v19 = *(v40 + 112 * v17 + 8 * v18);
      v20 = *(a1 + 112 * v17 + 8 * v18);
      v21 = *([v4 points] + 4 * v9 + 8);
      v22 = *([v4 points] + 4 * v9 + 24);
      v42 = 13 - v19;
      v23 = 32 * (13 - v19);
      if (*([v4 confidences] + v9) > 0.6)
      {
        v24 = v21 * 0.001;
        if (*([v4 confidences] + v9 + 4) <= 0.6)
        {
          *(v34 + v23 + 4 * v20) = *([v4 confidences] + v9);
          *(v33 + v23 + 4 * v20) = v24;
          v13 = ([v4 intensities] + v9);
          v14 = v32;
        }

        else
        {
          v31 = *([v4 points] + v8);
          v25 = v22 * 0.001;
          if (*(&v31 + 2) >= *([v4 points] + 4 * v9 + 24))
          {
            *(v34 + 32 * v42 + 4 * v20) = *([v4 confidences] + v9 + 4);
            *(v30 + v23 + 4 * v20) = *([v4 confidences] + v9);
            *(v33 + v23 + 4 * v20) = v25;
            *(v29 + v23 + 4 * v20) = v24;
            *(v32 + 32 * v42 + 4 * v20) = *([v4 intensities] + v9 + 4);
            v26 = [v4 intensities];
            v27 = 3 * v10;
          }

          else
          {
            *(v34 + 32 * v42 + 4 * v20) = *([v4 confidences] + v9);
            *(v30 + v23 + 4 * v20) = *([v4 confidences] + v9 + 4);
            *(v33 + v23 + 4 * v20) = v24;
            *(v29 + v23 + 4 * v20) = v25;
            *(v32 + 32 * v42 + 4 * v20) = *([v4 intensities] + v9);
            v26 = [v4 intensities];
            v27 = 3 * v10 + 1;
          }

          v13 = (v26 + 4 * v27);
          v14 = v28;
        }

        *(v14 + 32 * v42 + 4 * v20) = *v13;
      }

      v15 = a3 + 224 * v17 + 16 * v18;
      *(v38 + v23 + 4 * v20) = *v15;
      *(v37 + v23 + 4 * v20) = *(v15 + 4);
      *(v36 + v23 + 4 * v20) = *(v15 + 8) * 10000.0;
      v16 = *(v15 + 12) * 0.1;
      *(v35 + v23 + 4 * v20) = v16;
      ++v10;
      v9 += 12;
      v8 += 48;
      v7 += 3;
      --v12;
      a1 = v39;
    }

    while (v12);
  }

  return 0;
}

uint64_t peridot::PeridotNearRangeIndicator::run(uint64_t a1, void *a2, uint64_t a3)
{
  v55[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  peridot::PeridotNearRangeIndicator::prepareModelInputData(a1, v5, a3);
  v6 = *(a1 + 6288);
  if ([v6 dataType] == 65568)
  {
    v7 = [v6 dataPointer];
    v8 = 0;
    v9 = (v7 + 16);
    v10 = (a1 + 1836);
    do
    {
      v11 = v9;
      v12 = v10;
      v13 = 14;
      do
      {
        *(v11 - 4) = *(v12 - 7);
        *(v11 - 3) = *(v12 - 6);
        *(v11 - 2) = *(v12 - 5);
        *(v11 - 1) = *(v12 - 4);
        *v11 = *(v12 - 3);
        v11[1] = *(v12 - 2);
        v11[2] = *(v12 - 1);
        v14 = *v12;
        v12 += 8;
        v11[3] = v14;
        v11 += 8;
        --v13;
      }

      while (v13);
      ++v8;
      v10 += 112;
      v9 += 112;
    }

    while (v8 != 10);
  }

  else
  {
    NSLog(&cfstr_ErrorMlmultiar.isa);
  }

  v15 = [[main_nyc2d88ffc_44000_V53_V54Input alloc] initWithJasper:*(a1 + 6288)];
  v43 = [[main_nyc2d88ffc_44000_V53_V54 alloc] initWithMLModel:*(a1 + 1800)];
  v42 = v15;
  v52 = 335676760;
  v53 = 0u;
  v54 = 0u;
  kdebug_trace();
  v16 = [(main_nyc2d88ffc_44000_V53_V54Input *)v15 featureValueForName:@"jasper"];
  v17 = [v16 multiArrayValue];
  v51 = 0;
  v45 = [(main_nyc2d88ffc_44000_V53_V54 *)v43 predictionFromJasper:v17 error:&v51];
  v44 = v51;

  kdebug_trace();
  if (v44 || !v45)
  {
    NSLog(&cfstr_ErrorMakingPre.isa, v44);
  }

  v18 = [v45 featureValueForName:@"out_argmax_x8"];
  v48 = [v18 multiArrayValue];
  v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  [v41 addObject:&unk_283811008];
  [v41 addObject:&unk_283811008];
  v46 = 0;
  v19 = 0;
  v47 = v18;
  while (2)
  {
    v21 = a1;
    v49 = 14;
    do
    {
      v22 = (v21 + 112 * *([v5 bankIds] + v19));
      v23 = *v22;
      v24 = 13 - v22[112];
      v55[0] = &unk_283811008;
      v55[1] = &unk_283811008;
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v24];
      v55[2] = v25;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v23];
      v55[3] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
      v28 = [v48 objectForKeyedSubscript:v27];

      v29 = a1;
      v30 = *([v5 mutableFlags] + 4 * v19);
      v31 = v30 & 0x1FFFFFFF;
      v52 = v30 & 0x1FFFFFFF;
      v32 = v19 + 1;
      v33 = *([v5 mutableFlags] + 4 * v32);
      v50 = v33 & 0x1FFFFFFF;
      v34 = [v28 intValue];
      switch(v34)
      {
        case 1:
          v31 |= 0x20000000u;
          v52 = v31;
LABEL_22:
          v35 = 30;
          goto LABEL_23;
        case 2:
          if (((v30 | v33) & 0x40) != 0)
          {
            break;
          }

          if (*([v5 confidences] + 4 * v32) >= 0.6)
          {
            v38 = *([v5 euclideanDistances] + 4 * v19);
            v39 = [v5 euclideanDistances];
            v36 = &v52;
            if (v38 >= *(v39 + 4 * v32))
            {
              v36 = &v50;
            }

            v31 = *v36;
            v35 = 31;
            goto LABEL_24;
          }

          v35 = 31;
LABEL_23:
          v36 = &v52;
LABEL_24:
          *v36 = v31 | (1 << v35);
          v31 = v52;
          break;
        case 3:
          goto LABEL_22;
      }

      *([v5 mutableFlags] + 4 * v19) = v31;
      v37 = v50;
      *([v5 mutableFlags] + 4 * v32) = v37;

      a1 = v29;
      v19 += 3;
      v21 += 8;
      --v49;
    }

    while (v49);
    if (v46++ < 7)
    {
      continue;
    }

    break;
  }

  return 0;
}

void InstrumentsTraceGuard::~InstrumentsTraceGuard(InstrumentsTraceGuard *this)
{
  kdebug_trace();
}

{
  kdebug_trace();
}

void peridot::PeridotNearRangeIndicator::dbgDumpInputs(uint64_t a1, void *a2)
{
  v15 = a2;
  v2 = [v15 length];
  printf("spot, curr_x_ind, curr_y_ind, spot_echo0_ind, conf0>th, conf1>th, z0<z1, ");
  printf("%zu, ", 0);
  printf("%zu, ", 1uLL);
  printf("%zu, ", 2uLL);
  printf("%zu, ", 3uLL);
  printf("%zu, ", 4uLL);
  printf("%zu, ", 5uLL);
  printf("%zu, ", 6uLL);
  printf("%zu, ", 7uLL);
  printf("%zu, ", 8uLL);
  printf("%zu, ", 9uLL);
  putchar(10);
  if ((v2 + 2) >= 5)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = v2 / 3;
    if ((v2 / 3) <= 1)
    {
      v6 = 1;
    }

    v13 = v6;
    do
    {
      v7 = *([v15 bankIds] + v3);
      v8 = *([v15 spotIds] + v3);
      v9 = *(a1 + 896 + 112 * v7 + 8 * v8);
      v10 = *(a1 + 112 * v7 + 8 * v8);
      v9 = 13 - v9;
      printf("%zu, %zu, %zu, %zu, %d, %d, %d, ", v5, v10, v9, v8, *([v15 confidences] + 4 * v3) > 0.6, *(objc_msgSend(v15, "confidences") + 4 * v3 + 4) > 0.6, COERCE_FLOAT(*(objc_msgSend(v15, "points") + v4 + 8)) < *(objc_msgSend(v15, "points") + v4 + 24));
      v11 = a1 + 1808 + 32 * v9;
      if (floorf(*(v11 + 4 * v10)) == *(v11 + 4 * v10))
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      v12 = (v11 + 4 * v10);
      if (floorf(v12[112]) == v12[112])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[224]) == v12[224])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[336]) == v12[336])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[448]) == v12[448])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[560]) == v12[560])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[672]) == v12[672])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[784]) == v12[784])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[896]) == v12[896])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      if (floorf(v12[1008]) == v12[1008])
      {
        printf("%d, ");
      }

      else
      {
        printf("%.6f, ");
      }

      putchar(10);
      ++v5;
      v4 += 48;
      v3 += 3;
    }

    while (v13 != v5);
  }
}

void peridot::PeridotNearRangeIndicator::dbgDumpInputsToCsv(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v4 = [v20 length];
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = fopen(v5, "w");
  if (v6)
  {
    fwrite("spot,curr_x_ind,curr_y_ind,spot_echo0_ind,conf0>th,conf1>th,z0<z1,", 0x42uLL, 1uLL, v6);
    fprintf(v6, "channel_%zu", 0);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 1uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 2uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 3uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 4uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 5uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 6uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 7uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 8uLL);
    fputc(44, v6);
    fprintf(v6, "channel_%zu", 9uLL);
    fputc(10, v6);
    if ((v4 + 2) > 4)
    {
      v8 = 0;
      v19 = 0;
      v9 = 0;
      v10 = v4 / 3;
      if ((v4 / 3) <= 1)
      {
        v10 = 1;
      }

      v17 = v10;
      do
      {
        v11 = *([v20 bankIds] + v8);
        v12 = *([v20 spotIds] + v8);
        v13 = *(a1 + 112 * v11 + 8 * v12);
        v14 = 13 - *(a1 + 896 + 112 * v11 + 8 * v12);
        fprintf(v6, "%zu,%zu,%zu,%zu,%d,%d,%d,", v9, v13, v14, v12, *([v20 confidences] + 4 * v8) > 0.6, *(objc_msgSend(v20, "confidences") + 4 * v8 + 4) > 0.6, COERCE_FLOAT(*(objc_msgSend(v20, "points") + v19 + 8)) < *(objc_msgSend(v20, "points") + v19 + 24));
        v15 = a1 + 1808 + 32 * v14;
        if (floorf(*(v15 + 4 * v13)) == *(v15 + 4 * v13))
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        v16 = (v15 + 4 * v13);
        if (floorf(v16[112]) == v16[112])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[224]) == v16[224])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[336]) == v16[336])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[448]) == v16[448])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[560]) == v16[560])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[672]) == v16[672])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[784]) == v16[784])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[896]) == v16[896])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(44, v6);
        if (floorf(v16[1008]) == v16[1008])
        {
          fprintf(v6, "%d");
        }

        else
        {
          fprintf(v6, "%.6f");
        }

        fputc(10, v6);
        ++v9;
        v19 += 48;
        v8 += 3;
      }

      while (v17 != v9);
    }

    fclose(v6);
  }

  else
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    printf("Error: Could not open file %s for writing.", v7);
  }
}

peridot::Reflectivity *peridot::Reflectivity::Reflectivity(peridot::Reflectivity *this)
{
  return peridot::Reflectivity::Reflectivity(this, 0.1, 0.1, 0.03, 0.2, 0.0, 3.3366e-10, 0.0000000026693, 1.15, 0.28284);
}

{
  return peridot::Reflectivity::Reflectivity(this, 0.1, 0.1, 0.03, 0.2, 0.0, 3.3366e-10, 0.0000000026693, 1.15, 0.28284);
}

peridot::Reflectivity *peridot::Reflectivity::Reflectivity(peridot::Reflectivity *this, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  *this = 0x409000003E19999ALL;
  v18 = (this + 3852);
  memcpy(this + 8, &peridot::gPFactorLUTFixedDxAndMaxRange, 0xF04uLL);
  v18[4] = xmmword_2247A81F0;
  v18[5] = unk_2247A8200;
  v18[6] = xmmword_2247A8210;
  *(v18 + 108) = *(&xmmword_2247A8210 + 12);
  *v18 = peridot::gPFactorLUTRangeFixedDxAndMaxRange;
  v18[1] = unk_2247A81C0;
  v18[2] = xmmword_2247A81D0;
  v18[3] = unk_2247A81E0;
  *(this + 1106) = a2;
  *(this + 1107) = a3;
  *(this + 1108) = a4;
  *(this + 1109) = a5;
  *(this + 1110) = a6;
  *(this + 1111) = a7;
  *(this + 1112) = a8;
  *(this + 1113) = a9;
  *(this + 1114) = a10;
  *(this + 507) = 0u;
  *(this + 506) = 0u;
  *(this + 2032) = 1065353216;
  *(this + 2034) = 814322444;
  v21 = 0;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 0) + 6) = 0;
  v21 = 1;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 1uLL) + 6) = 1;
  v21 = 2;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 2uLL) + 6) = 2;
  v21 = 3;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 3uLL) + 6) = 3;
  v21 = 4;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 4uLL) + 6) = 3;
  v21 = 5;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 5uLL) + 6) = 4;
  v21 = 6;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 6uLL) + 6) = 6;
  v21 = 7;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 7uLL) + 6) = 6;
  v21 = 8;
  v22 = &v21;
  *(std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(this + 1012, 8uLL) + 6) = 5;
  return this;
}

{
  return peridot::Reflectivity::Reflectivity(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,peridot::ChannelsNames>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,peridot::ChannelsNames>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::unordered_map<unsigned long,peridot::ChannelsNames>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void peridot::Reflectivity::~Reflectivity(peridot::Reflectivity *this)
{
  v2 = *(this + 1014);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1012);
  *(this + 1012) = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

{
  v2 = *(this + 1014);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1012);
  *(this + 1012) = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void peridot::Reflectivity::initReflectivityCalc(peridot::Reflectivity *this, const _PeridotCalib *a2, const unint64_t (*a3)[4][2], peridot::Reflectivity *a4, unint64_t a5)
{
  p_strayWP2NP = &a2->spots.banks[7].strayWP2NP;
  v8 = &a2->spots.banks[6].strayWP2NP;
  v9 = &a2->spots.banks[5].strayWP2NP;
  v10 = &a2->spots.banks[4].strayWP2NP;
  v11 = &a2->spots.banks[3].strayWP2NP;
  v12 = &a2->spots.banks[2].strayWP2NP;
  v13 = &a2->spots.banks[1].strayWP2NP;
  v14 = &a2->spots.banks[0].strayWP2NP;
  *(this + 7448) = *a3;
  *(this + 7464) = *&(*a3)[1][0];
  *(this + 7480) = *&(*a3)[2][0];
  *(this + 7496) = *&(*a3)[3][0];
  *(this + 7512) = *&(*a3)[4][0];
  *(this + 7528) = *&(*a3)[5][0];
  *(this + 7544) = *&(*a3)[6][0];
  *(this + 7560) = *&(*a3)[7][0];
  *(this + 7576) = *&(*a3)[8][0];
  *(this + 7592) = *&(*a3)[9][0];
  *(this + 7608) = *&(*a3)[10][0];
  *(this + 7624) = *&(*a3)[11][0];
  *(this + 7640) = *&(*a3)[12][0];
  *(this + 7656) = *&(*a3)[13][0];
  *(this + 7672) = *&(*a3)[14][0];
  *(this + 7688) = *&(*a3)[15][0];
  *(this + 7704) = *&(*a3)[16][0];
  *(this + 7720) = *&(*a3)[17][0];
  *(this + 7736) = *&(*a3)[18][0];
  *(this + 7752) = *&(*a3)[19][0];
  *(this + 7768) = *&(*a3)[20][0];
  *(this + 7784) = *&(*a3)[21][0];
  *(this + 7800) = *&(*a3)[22][0];
  *(this + 7816) = *&(*a3)[23][0];
  *(this + 7832) = *&(*a3)[24][0];
  *(this + 7848) = *&(*a3)[25][0];
  *(this + 7864) = *&(*a3)[26][0];
  *(this + 7880) = *&(*a3)[27][0];
  *(this + 7896) = *&(*a3)[28][0];
  *(this + 7912) = *&(*a3)[29][0];
  *(this + 7928) = *&(*a3)[30][0];
  *(this + 7944) = *&(*a3)[31][0];
  *(this + 7960) = *&(*a3)[32][0];
  *(this + 7976) = *&(*a3)[33][0];
  *(this + 7992) = *&(*a3)[34][0];
  *(this + 8008) = *&(*a3)[35][0];
  if (!a5)
  {
    goto LABEL_7;
  }

  if (a5 > 5 && (this - a4 + 8024) >= 0x20)
  {
    v15 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v96 = (this + 8040);
    v97 = (a4 + 16);
    v98 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v99 = *v97;
      *(v96 - 1) = *(v97 - 1);
      *v96 = v99;
      v96 += 2;
      v97 += 4;
      v98 -= 4;
    }

    while (v98);
    if (v15 == a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = a5 - v15;
  v17 = 8 * v15;
  v18 = (this + 8 * v15 + 8024);
  v19 = (a4 + v17);
  do
  {
    v20 = *v19++;
    *v18++ = v20;
    --v16;
  }

  while (v16);
LABEL_7:
  v105 = v14;
  v106 = v13;
  v107 = v12;
  v108 = v11;
  v109 = v10;
  v110 = v9;
  v111 = v8;
  v112 = p_strayWP2NP;
  *(this + 4908) = 0x416E666641C80000;
  memcpy(this + 4460, &peridot::gRefDataFile, 0x1C0uLL);
  memcpy(this + 5812, &peridot::gPdeCurveTypicalInterpolated, 0x11CuLL);
  v21 = 0;
  p_spotSizeNormal = &a2->spots.banks[0].spots[0].spotSizeNormal;
  *(this + 1524) = LODWORD(a2->nominalPDE.meanPDE);
  p_spotPowerNarrow = &a2->spots.banks[7].spots[0].spotPowerNarrow;
  *(this + 1525) = 1116471296;
  p_spotPowerWide = &a2->spots.banks[1].spots[0].spotPowerWide;
  v25 = &a2->spots.banks[6].spots[0].spotSizeNormal;
  v26 = &a2->spots.banks[6].spots[0].spotPowerNarrow;
  v27 = &a2->spots.banks[6].spots[0].spotPowerWide;
  v28 = &a2->spots.banks[5].spots[0].spotSizeNormal;
  v29 = &a2->spots.banks[5].spots[0].spotPowerNarrow;
  v30 = &a2->spots.banks[5].spots[0].spotPowerWide;
  v31 = &a2->spots.banks[4].spots[0].spotSizeNormal;
  v32 = &a2->spots.banks[1].spots[0].spotPowerNarrow;
  v33 = &a2->spots.banks[1].spots[0].spotSizeNormal;
  v34 = &a2->spots.banks[3].spots[0].spotSizeNormal;
  v35 = &a2->spots.banks[2].spots[0].spotPowerWide;
  v36 = &a2->spots.banks[2].spots[0].spotPowerNarrow;
  v113 = a2;
  v37 = &a2->spots.banks[2].spots[0].spotSizeNormal;
  v38 = 1;
  v39 = 1;
  v40 = 1;
  do
  {
    v41 = &p_spotSizeNormal[v21];
    v42 = &v34[v21];
    v43 = &v31[v21];
    _ZF = v27[v21] == 0.0 && p_spotPowerNarrow[v21 - 1] == 0.0;
    v45 = _ZF;
    v46 = v45 & (v30[v21] == 0.0);
    if (v43[2] != 0.0)
    {
      v46 = 0;
    }

    if (v42[2] != 0.0)
    {
      v46 = 0;
    }

    if (v35[v21] != 0.0)
    {
      v46 = 0;
    }

    if (p_spotPowerWide[v21] != 0.0)
    {
      v46 = 0;
    }

    if (v41[2] != 0.0)
    {
      v46 = 0;
    }

    v48 = v26[v21] == 0.0 && p_spotPowerNarrow[v21] == 0.0;
    v49 = v48 && v29[v21] == 0.0;
    if (v43[3] != 0.0)
    {
      v49 = 0;
    }

    if (v42[3] != 0.0)
    {
      v49 = 0;
    }

    if (v36[v21] != 0.0)
    {
      v49 = 0;
    }

    if (v32[v21] != 0.0)
    {
      v49 = 0;
    }

    v50 = *v43;
    v51 = v41[3] == 0.0 && v49;
    v52 = v25[v21] == 0.0 && p_spotPowerNarrow[v21 - 3] == 0.0;
    v53 = *v42;
    v54 = v52;
    v55 = v54 & (v28[v21] == 0.0);
    if (v50 != 0.0)
    {
      v55 = 0;
    }

    _ZF = v53 == 0.0;
    v56 = *v41;
    if (_ZF)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0;
    }

    if (v37[v21] != 0.0)
    {
      v57 = 0;
    }

    if (v33[v21] != 0.0)
    {
      v57 = 0;
    }

    v40 &= v46;
    v39 &= v51;
    if (v56 == 0.0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    v38 &= v58;
    v21 += 7;
  }

  while (v21 != 98);
  v59 = v113->additionalParams.jlnmVersion < 0x66u;
  v60 = v59 | v39;
  v61 = v59 | v40;
  v62 = (this + 3976);
  if (v60)
  {
    if (v61)
    {
      if (v38)
      {
        memset_pattern16(v62, &unk_2247A5490, 0x20uLL);
        __asm { FMOV            V0.4S, #1.0 }

        v114 = _Q0;
        *(this + 5364) = _Q0;
        *(this + 4916) = _Q0;
        *(this + 5380) = _Q0;
        *(this + 4932) = _Q0;
        memset_pattern16(this + 4008, &unk_2247A5490, 0x20uLL);
        *(this + 5396) = v114;
        *(this + 4948) = v114;
        *(this + 5412) = v114;
        *(this + 4964) = v114;
        memset_pattern16(this + 4040, &unk_2247A5490, 0x20uLL);
        *(this + 5428) = v114;
        *(this + 4980) = v114;
        *(this + 5444) = v114;
        *(this + 4996) = v114;
        memset_pattern16(this + 4072, &unk_2247A5490, 0x20uLL);
        *(this + 5460) = v114;
        *(this + 5012) = v114;
        *(this + 5476) = v114;
        *(this + 5028) = v114;
        memset_pattern16(this + 4104, &unk_2247A5490, 0x20uLL);
        *(this + 5492) = v114;
        *(this + 5044) = v114;
        *(this + 5508) = v114;
        *(this + 5060) = v114;
        memset_pattern16(this + 4136, &unk_2247A5490, 0x20uLL);
        *(this + 5524) = v114;
        *(this + 5076) = v114;
        *(this + 5540) = v114;
        *(this + 5092) = v114;
        memset_pattern16(this + 4168, &unk_2247A5490, 0x20uLL);
        *(this + 5556) = v114;
        *(this + 5108) = v114;
        *(this + 5572) = v114;
        *(this + 5124) = v114;
        memset_pattern16(this + 4200, &unk_2247A5490, 0x20uLL);
        *(this + 5588) = v114;
        *(this + 5140) = v114;
        *(this + 5604) = v114;
        *(this + 5156) = v114;
        memset_pattern16(this + 4232, &unk_2247A5490, 0x20uLL);
        *(this + 5620) = v114;
        *(this + 5172) = v114;
        *(this + 5636) = v114;
        *(this + 5188) = v114;
        memset_pattern16(this + 4264, &unk_2247A5490, 0x20uLL);
        *(this + 5652) = v114;
        *(this + 5204) = v114;
        *(this + 5668) = v114;
        *(this + 5220) = v114;
        memset_pattern16(this + 4296, &unk_2247A5490, 0x20uLL);
        *(this + 5684) = v114;
        *(this + 5236) = v114;
        *(this + 5700) = v114;
        *(this + 5252) = v114;
        memset_pattern16(this + 4328, &unk_2247A5490, 0x20uLL);
        *(this + 5716) = v114;
        *(this + 5268) = v114;
        *(this + 5732) = v114;
        *(this + 5284) = v114;
        memset_pattern16(this + 4360, &unk_2247A5490, 0x20uLL);
        *(this + 5748) = v114;
        *(this + 5300) = v114;
        *(this + 5764) = v114;
        *(this + 5316) = v114;
        memset_pattern16(this + 4392, &unk_2247A5490, 0x20uLL);
        *(this + 5780) = v114;
        *(this + 5332) = v114;
        *(this + 5796) = v114;
        *(this + 5348) = v114;
      }

      else
      {
        for (i = 0; i != 14; ++i)
        {
          v62[347] = 1.0;
          v62[235] = 1.0;
          *v62 = v113->spots.banks[0].spots[i].spotSizeNormal * 0.125;
          v62[348] = 1.0;
          v62[236] = 1.0;
          v62[1] = v113->spots.banks[1].spots[i].spotSizeNormal * 0.125;
          v62[349] = 1.0;
          v62[237] = 1.0;
          v62[2] = v113->spots.banks[2].spots[i].spotSizeNormal * 0.125;
          v62[350] = 1.0;
          v62[238] = 1.0;
          v62[3] = v113->spots.banks[3].spots[i].spotSizeNormal * 0.125;
          v62[351] = 1.0;
          v62[239] = 1.0;
          v62[4] = v113->spots.banks[4].spots[i].spotSizeNormal * 0.125;
          v62[352] = 1.0;
          v62[240] = 1.0;
          v62[5] = v113->spots.banks[5].spots[i].spotSizeNormal * 0.125;
          v62[353] = 1.0;
          v62[241] = 1.0;
          v62[6] = v113->spots.banks[6].spots[i].spotSizeNormal * 0.125;
          v62[354] = 1.0;
          v62[242] = 1.0;
          v62[7] = v113->spots.banks[7].spots[i].spotSizeNormal * 0.125;
          v62 += 8;
        }
      }
    }

    else
    {
      v93 = *(this + 1228);
      if (v38)
      {
        for (j = 0; j != 14; ++j)
        {
          v62[347] = 1.0;
          v95 = 1.0 / v93;
          v62[235] = v113->spots.banks[0].spots[j].spotPowerWide * v95;
          *v62 = 0.325;
          v62[348] = 1.0;
          v62[236] = v113->spots.banks[1].spots[j].spotPowerWide * v95;
          v62[1] = 0.325;
          v62[349] = 1.0;
          v62[237] = v113->spots.banks[2].spots[j].spotPowerWide * v95;
          v62[2] = 0.325;
          v62[350] = 1.0;
          v93 = *(this + 1228);
          v62[238] = v113->spots.banks[3].spots[j].spotPowerWide * (1.0 / v93);
          v62[3] = 0.325;
          v62[351] = 1.0;
          v62[239] = v113->spots.banks[4].spots[j].spotPowerWide * (1.0 / v93);
          v62[4] = 0.325;
          v62[352] = 1.0;
          v62[240] = v113->spots.banks[5].spots[j].spotPowerWide * (1.0 / v93);
          v62[5] = 0.325;
          v62[353] = 1.0;
          v62[241] = v113->spots.banks[6].spots[j].spotPowerWide * (1.0 / v93);
          v62[6] = 0.325;
          v62[354] = 1.0;
          v62[242] = v113->spots.banks[7].spots[j].spotPowerWide * (1.0 / v93);
          v62[7] = 0.325;
          v62 += 8;
        }
      }

      else
      {
        v101 = 0;
        v102 = &v113->spots.banks[7].spots[0].spotPowerWide;
        v103 = &v113->spots.banks[3].spots[0].spotSizeNormal;
        do
        {
          v62[347] = 1.0;
          v104 = 1.0 / v93;
          v62[235] = v113->spots.banks[0].spots[v101 / 0x1C].spotPowerWide * v104;
          *v62 = v113->spots.banks[0].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[348] = 1.0;
          v62[236] = v113->spots.banks[1].spots[v101 / 0x1C].spotPowerWide * v104;
          v62[1] = v113->spots.banks[1].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[349] = 1.0;
          v62[237] = v113->spots.banks[2].spots[v101 / 0x1C].spotPowerWide * v104;
          v62[2] = v113->spots.banks[2].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[350] = 1.0;
          v93 = *(this + 1228);
          v62[238] = v103[v101 / 4 + 2] * (1.0 / v93);
          v62[3] = v103[v101 / 4] * 0.125;
          v62[351] = 1.0;
          v62[239] = v113->spots.banks[4].spots[v101 / 0x1C].spotPowerWide * (1.0 / v93);
          v62[4] = v113->spots.banks[4].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[352] = 1.0;
          v62[240] = v113->spots.banks[5].spots[v101 / 0x1C].spotPowerWide * (1.0 / v93);
          v62[5] = v113->spots.banks[5].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[353] = 1.0;
          v62[241] = v113->spots.banks[6].spots[v101 / 0x1C].spotPowerWide * (1.0 / v93);
          v62[6] = v113->spots.banks[6].spots[v101 / 0x1C].spotSizeNormal * 0.125;
          v62[354] = 1.0;
          v62[242] = v102[v101 / 4] * (1.0 / v93);
          v62[7] = v102[v101 / 4 - 2] * 0.125;
          v101 += 28;
          v62 += 8;
        }

        while (v101 != 392);
      }
    }
  }

  else
  {
    v67 = 0;
    v68 = *(this + 1228);
    v69 = &v113->spots.banks[0].spots[0].spotPowerWide;
    v70 = &v113->spots.banks[7].spots[0].spotPowerWide;
    v71 = &v113->spots.banks[3].spots[0].spotSizeNormal;
    v72 = &v113->spots.banks[6].spots[0].spotPowerWide;
    v73 = &v113->spots.banks[5].spots[0].spotPowerWide;
    v74 = &v113->spots.banks[1].spots[0].spotPowerWide;
    v75 = &v113->spots.banks[2].spots[0].spotPowerWide;
    v76 = &v113->spots.banks[4].spots[0].spotPowerWide;
    do
    {
      v62[347] = v69[v67 / 4] / (v68 * *v105);
      v78 = 1.0;
      if ((v61 & 1) == 0)
      {
        v78 = v69[v67 / 4] / v68;
      }

      v62[235] = v78;
      if (v38)
      {
        v79 = 0.325;
      }

      else
      {
        v79 = v113->spots.banks[0].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      *v62 = v79;
      v62[348] = v74[v67 / 4] / (v68 * *v106);
      v80 = 1.0;
      if ((v61 & 1) == 0)
      {
        v80 = v74[v67 / 4] / v68;
      }

      v62[236] = v80;
      if (v38)
      {
        v81 = 0.325;
      }

      else
      {
        v81 = v113->spots.banks[1].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      v62[1] = v81;
      v62[349] = v75[v67 / 4] / (v68 * *v107);
      v82 = 1.0;
      if ((v61 & 1) == 0)
      {
        v82 = v75[v67 / 4] / v68;
      }

      v62[237] = v82;
      if (v38)
      {
        v83 = 0.325;
      }

      else
      {
        v83 = v113->spots.banks[2].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      v62[2] = v83;
      v68 = *(this + 1228);
      v62[350] = v71[v67 / 4 + 2] / (v68 * *v108);
      v84 = 1.0;
      if ((v61 & 1) == 0)
      {
        v84 = v71[v67 / 4 + 2] / v68;
      }

      v62[238] = v84;
      if (v38)
      {
        v85 = 0.325;
      }

      else
      {
        v85 = v71[v67 / 4] * 0.125;
      }

      v62[3] = v85;
      v62[351] = v76[v67 / 4] / (v68 * *v109);
      v86 = 1.0;
      if ((v61 & 1) == 0)
      {
        v86 = v76[v67 / 4] / v68;
      }

      v62[239] = v86;
      if (v38)
      {
        v87 = 0.325;
      }

      else
      {
        v87 = v113->spots.banks[4].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      v62[4] = v87;
      v62[352] = v73[v67 / 4] / (v68 * *v110);
      v88 = 1.0;
      if ((v61 & 1) == 0)
      {
        v88 = v73[v67 / 4] / v68;
      }

      v62[240] = v88;
      if (v38)
      {
        v89 = 0.325;
      }

      else
      {
        v89 = v113->spots.banks[5].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      v62[5] = v89;
      v62[353] = v72[v67 / 4] / (v68 * *v111);
      v90 = 1.0;
      if ((v61 & 1) == 0)
      {
        v90 = v72[v67 / 4] / v68;
      }

      v62[241] = v90;
      if (v38)
      {
        v91 = 0.325;
      }

      else
      {
        v91 = v113->spots.banks[6].spots[v67 / 0x1C].spotSizeNormal * 0.125;
      }

      v62[6] = v91;
      v62[354] = v70[v67 / 4] / (v68 * *v112);
      v92 = 1.0;
      if ((v61 & 1) == 0)
      {
        v92 = v70[v67 / 4] / v68;
      }

      v62[242] = v92;
      if (v38)
      {
        v77 = 0.325;
      }

      else
      {
        v77 = v70[v67 / 4 - 2] * 0.125;
      }

      v62[7] = v77;
      v67 += 28;
      v62 += 8;
    }

    while (v67 != 392);
  }
}