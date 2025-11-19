void *sub_1AF17C688(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1B271C4F0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1AF17C7F0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1B271C500](v13);
  return a1;
}

uint64_t sub_1AF17C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AF10A1D0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1AF17C9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1AF17C9D8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1AF17C9E8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1AF17CA14()
{
  if (qword_1EB64FB80 != -1)
  {
    sub_1AFDD95A8();
  }
}

void *sub_1AF17CA40()
{
  sub_1AFDC36D8(sub_1AF17CA88);

  return sub_1AFDC36E4(sub_1AF17CACC);
}

void sub_1AF17CA88()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD95BC();
  }
}

void sub_1AF17CACC(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = sub_1AF0D5194();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_impl(&dword_1AF0CE000, v2, OS_LOG_TYPE_DEFAULT, "Warning (OpenSubdiv): %s", &v3, 0xCu);
  }
}

uint64_t sub_1AF17CB68(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 == 4)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v3 = 0;
  }

  if ((a1 & 0xFE) == 2)
  {
    v3 = 1;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_1AF17CBA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = sub_1AF17CE28;
    v36 = &unk_1E7A7B188;
    v37 = v2;
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    if (v4 != v5)
    {
      v6 = -1;
      do
      {
        if (*(v4 + 12) == 3)
        {
          if (v6 == -1)
          {
            v6 = *(v4 + 8);
          }

          else if (*(v4 + 8) != v6)
          {
            v33 = 1;
            goto LABEL_11;
          }
        }

        v4 += 16;
      }

      while (v4 != v5);
    }

    v33 = 0;
LABEL_11:
    v7 = sub_1AF1A4604(a2, 2, 0, 0);
    v8 = v33 & 0xFFFFFFF9 | (2 * (v35(v34, v7) & 3));
    v9 = sub_1AF1A4604(a2, 3, 0, 0);
    v10 = v8 & 0xFFFFFFE7 | (8 * (v35(v34, v9) & 3));
    v11 = sub_1AF1A4604(a2, 3, 1, 0);
    v12 = v10 & 0xFFFFFF9F | (32 * (v35(v34, v11) & 3));
    v13 = sub_1AF1A4604(a2, 3, 2, 0);
    v14 = v12 & 0xFFFFFE7F | ((v35(v34, v13) & 3) << 7);
    v15 = sub_1AF1A4604(a2, 3, 3, 0);
    v16 = v35(v34, v15);
    v17 = sub_1AF1A4604(a2, 3, 4, 0);
    v18 = v35(v34, v17);
    v19 = sub_1AF1A4604(a2, 3, 5, 0);
    v20 = (v35(v34, v19) & 3) << 13;
    v21 = sub_1AF1A4604(a2, 3, 6, 0);
    v22 = (v35(v34, v21) & 3) << 15;
    v23 = sub_1AF1A4604(a2, 3, 7, 0);
    return v14 & 0xFFFFE1FF | ((v16 & 3) << 9) & 0xE7FF | ((v18 & 3) << 11) | v20 | v22 | ((v35(v34, v23) & 3) << 17);
  }

  else
  {
    v25 = sub_1AF0D5194();
    result = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDD8964(v25, v26, v27, v28, v29, v30, v31, v32);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF17CE28(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  while (v3 != v4)
  {
    if (*v3 == a2)
    {
      return *(v3 + 12);
    }

    v3 += 16;
  }

  v5 = sub_1AF0D5194();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD962C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF17CEB0(unsigned int a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        return (a1 >> 15) & 3;
      }

      if (a2 == 7)
      {
        return (a1 >> 17) & 3;
      }

      goto LABEL_18;
    }

    if (a2 == 4)
    {
      return (a1 >> 11) & 3;
    }

    else
    {
      return (a1 >> 13) & 3;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return (a1 >> 3) & 3;
      }

      if (a2 == 1)
      {
        return (a1 >> 5) & 3;
      }

LABEL_18:
      v3 = sub_1AF0D5194();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1AFDD969C();
        return 0;
      }

      return result;
    }

    if (a2 == 2)
    {
      return (a1 >> 7) & 3;
    }

    else
    {
      return (a1 >> 9) & 3;
    }
  }
}

uint64_t sub_1AF17CF9C(unsigned int a1)
{
  v1 = (a1 & 0x18) == 16;
  if ((a1 & 0x18) == 0x10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = vdupq_n_s32(a1);
  if ((a1 & 0x60) == 0x40)
  {
    v1 = v2;
  }

  v4 = vandq_s8(vceqq_s32(vandq_s8(v3, xmmword_1AFE217F0), xmmword_1AFE21800), xmmword_1AFE20C60);
  v4.i32[0] = vaddvq_s32(v4) & 0xF;
  v5 = vcnt_s8(*v4.i8);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.i32[0];
  if ((a1 & 0x18000) == 0x10000)
  {
    v6 = v5.i32[0] + 1;
  }

  if ((a1 & 0x60000) == 0x40000)
  {
    ++v1;
  }

  return (v6 + v1);
}

uint64_t sub_1AF17D030(unsigned int a1)
{
  v1 = (~a1 & 0x18) == 0;
  if ((~a1 & 0x18) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if ((~a1 & 0x60) == 0)
  {
    v1 = v2;
  }

  v3 = vandq_s8(vceqq_s32(vandq_s8(vdupq_n_s32(a1), xmmword_1AFE217F0), xmmword_1AFE217F0), xmmword_1AFE20C60);
  v3.i32[0] = vaddvq_s32(v3) & 0xF;
  v4 = vcnt_s8(*v3.i8);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.i32[0];
  if ((~a1 & 0x18000) == 0)
  {
    v5 = v4.i32[0] + 1;
  }

  if ((~a1 & 0x60000) == 0)
  {
    ++v1;
  }

  return (v5 + v1);
}

void sub_1AF17D0B4()
{
  v0 = sub_1AF0D5194();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD9710();
  }
}

BOOL sub_1AF17D0F0(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168))
  {
    return 1;
  }

  v2 = sub_1AF1B2C1C(a1);
  if (sub_1AF1A4DBC(v2, 0) == 1)
  {
    v3 = malloc_type_calloc(1uLL, 0xD8uLL, 0x10F004000FC2A7CuLL);
    *(a1 + 168) = v3;
    v4 = sub_1AF1A4604(v2, 0, 0, 0);
    v55 = 0u;
    v56 = 0u;
    sub_1AF1AE1A8(v4, &v55);
    v5 = v56;
    if (sub_1AF1A4BA0(v2, 0))
    {
      v9 = *(a1 + 130);
      if (v9 && !sub_1AF1B40A0(a1))
      {
        if ((byte_1EB6585E8 & 1) == 0)
        {
          byte_1EB6585E8 = 1;
          v19 = sub_1AF0D5194();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDD9788();
          }
        }
      }

      else if (v9)
      {
        *v3 = 2;
        v53 = 0;
        v54 = 0;
        v52 = &v53;
        if (v5)
        {
          v10 = 0;
          do
          {
            *v11.i64 = sub_1AF279750(BYTE4(v56), (v55 + v10 * BYTE6(v56)), v6, v7, v8);
            v57 = v11;
            LODWORD(v58) = v54;
            v12 = sub_1AF1945F4(&v52, &v57);
            v51 = (v13 & 1) == 0;
            v57.i32[0] = *(v12 + 48);
            sub_1AF121C58(v3 + 1, &v57);
            sub_1AF17D688((v3 + 7), &v51);
            if (v51)
            {
              *v3 = 3;
            }

            else
            {
              v50 = v10;
              sub_1AF121C58(v3 + 4, &v50);
            }

            ++v10;
          }

          while (v5 != v10);
          v14 = v53;
        }

        else
        {
          v14 = 0;
        }

        v18 = (v3[5] - v3[4]) >> 2;
        sub_1AF112128(&v52, v14);
        goto LABEL_30;
      }

      *v3 = 1;
      sub_1AF17A60C(v3 + 1, v5);
      sub_1AF17A60C(v3 + 4, v5);
      if (v5)
      {
        v20 = 0;
        do
        {
          v57.i32[0] = v20;
          sub_1AF121C58(v3 + 1, &v57);
          v57.i32[0] = v20;
          sub_1AF121C58(v3 + 4, &v57);
          ++v20;
        }

        while (v5 != v20);
LABEL_28:
        LODWORD(v18) = v5;
LABEL_30:
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 0x40000000;
        v49[2] = sub_1AF17D730;
        v49[3] = &unk_1E7A7B1A8;
        v49[4] = v3;
        sub_1AF1A2BEC(v2, 0, v49);
        *(v3 + 26) = v18;
        v21 = sub_1AF1A3CCC(v2);
        if (v21 < 1)
        {
          v22 = 0;
        }

        else
        {
          v22 = 0;
          for (i = 0; i != v21; ++i)
          {
            v24 = sub_1AF1A3D1C(v2, i, 0);
            v25 = sub_1AF1A7034(v24);
            if (sub_1AF1A72E0(v25))
            {
              v22 += sub_1AF1A7530(v24);
            }
          }
        }

        *(v3 + 27) = v22;
        v26 = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
        *(v3 + 52) = 0;
        *(v3 + 212) = 1;
        LODWORD(v52) = 0;
        if (v21 < 1)
        {
          v30 = 0;
        }

        else
        {
          v38 = v5;
          for (j = 0; j != v21; ++j)
          {
            v28 = sub_1AF1A3D1C(v2, j, 0);
            v29 = sub_1AF1A7034(v28);
            if (sub_1AF1A72E0(v29))
            {
              v48[0] = MEMORY[0x1E69E9820];
              v48[1] = 0x40000000;
              v48[2] = sub_1AF17D87C;
              v48[3] = &unk_1E7A7B1C8;
              v48[4] = v28;
              v48[5] = v26;
              v48[6] = &v52;
              v48[7] = v3;
              sub_1AF1A756C(v28, v48);
            }
          }

          v30 = 4 * *(v3 + 52);
          LODWORD(v5) = v38;
        }

        v3[14] = v26;
        if ((v5 - 1) >= 0x7FFFFFFF)
        {
          v31 = 0x7FFFFFFFLL;
        }

        else
        {
          v31 = (v5 - 1);
        }

        v32 = malloc_type_malloc(v30, 0x100004052888210uLL);
        v33 = sub_1AF1A4C6C(v2, 0, 0);
        v50 = 0;
        if (v21 >= 1)
        {
          v34 = v33;
          for (k = 0; k != v21; ++k)
          {
            v36 = sub_1AF1A3D1C(v2, k, 0);
            v37 = sub_1AF1A7034(v36);
            if (sub_1AF1A72E0(v37))
            {
              v59 = 0;
              v57 = 0u;
              v58 = 0u;
              sub_1AF1A79D0(v36, &v57);
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 0x40000000;
              v40 = v57;
              v39[2] = sub_1AF17D8D8;
              v39[3] = &unk_1E7A7B1E8;
              v41 = v58;
              v42 = v59;
              v39[4] = v36;
              v43 = v34;
              v44 = v31;
              v45 = v3;
              v46 = v32;
              v47 = &v50;
              sub_1AF1A756C(v36, v39);
            }
          }
        }

        v3[15] = v32;
        return 1;
      }
    }

    else
    {
      *v3 = 0;
      sub_1AF17A60C(v3 + 1, v5);
      sub_1AF17A60C(v3 + 4, v5);
      if (v5)
      {
        v17 = 0;
        do
        {
          v57.i32[0] = v17;
          sub_1AF121C58(v3 + 1, &v57);
          v57.i32[0] = v17;
          sub_1AF121C58(v3 + 4, &v57);
          ++v17;
        }

        while (v5 != v17);
        goto LABEL_28;
      }
    }

    LODWORD(v18) = 0;
    goto LABEL_30;
  }

  v15 = sub_1AF0D5194();
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD974C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF17D688(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_1AF10A1D0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_1AF180624(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_1AF17D730(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if ((a3 & 0xFE) != 2)
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = *v6;
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v8 = 2;
        goto LABEL_11;
      }

      if (v7 != 3)
      {
        v8 = 0;
        goto LABEL_11;
      }
    }

    v8 = 3;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v6 = *(a1 + 32);
    v8 = 1;
  }

LABEL_11:
  v9 = v6[11];
  v10 = v6[12];
  if (v9 >= v10)
  {
    v12 = v6[10];
    v13 = (v9 - v12) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      sub_1AF10A1D0();
    }

    v15 = v10 - v12;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_1AF180910((v6 + 10), v16);
    }

    v17 = 16 * v13;
    *v17 = a2;
    *(v17 + 8) = a5;
    *(v17 + 9) = 0;
    *(v17 + 11) = 0;
    *(v17 + 12) = v8;
    v11 = 16 * v13 + 16;
    v18 = v6[10];
    v19 = v6[11] - v18;
    v20 = (16 * v13 - v19);
    memcpy(v20, v18, v19);
    v21 = v6[10];
    v6[10] = v20;
    v6[11] = v11;
    v6[12] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    *(v9 + 8) = a5;
    *(v9 + 9) = 0;
    *(v9 + 11) = 0;
    v11 = v9 + 16;
    *(v9 + 12) = v8;
  }

  v6[11] = v11;
}

uint64_t sub_1AF17D87C(uint64_t *a1, unsigned int a2)
{
  result = sub_1AF1A7798(a1[4], a2);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *v5;
  *v5 = v6 + 1;
  *(v4 + 4 * v6) = result;
  v7 = a1[7];
  *(v7 + 208) += result;
  if (result != 4)
  {
    *(v7 + 212) = 0;
  }

  return result;
}

uint64_t sub_1AF17D8D8(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = sub_1AF1A7798(*(a1 + 32), a2);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      v7 = *(a1 + 56);
      v14[0] = *(a1 + 40);
      v14[1] = v7;
      v8 = *(a1 + 80);
      v15 = *(a1 + 72);
      result = sub_1AF1A7BA8(v14, v3, i, v8);
      v9 = *(a1 + 88);
      v10 = *(a1 + 96);
      if (v9 > result)
      {
        LODWORD(v9) = result;
      }

      if (*v10 == 3)
      {
        LODWORD(v9) = *(*(v10 + 8) + 4 * v9);
      }

      v11 = *(a1 + 104);
      v12 = *(a1 + 112);
      v13 = *v12;
      *v12 = v13 + 1;
      *(v11 + 4 * v13) = v9;
    }
  }

  return result;
}

void sub_1AF17D98C(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (!v3)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(v3 + 128) <= 0 && *(v3 + 152) <= 0)
  {
    v12 = a1[2];
    if (v12)
    {
      v13 = a1[1];
      if (v13)
      {
        v14 = sub_1AF1A3CCC(a2);
        if (v14 < 1)
        {
          v69 = 0;
        }

        else
        {
          v15 = 0;
          v69 = 1;
          do
          {
            v16 = sub_1AF1A3D1C(a2, v15, 0);
            v17 = sub_1AF1A7034(v16);
            if (sub_1AF1A72E0(v17) && sub_1AF1A73D4(v16) != -1)
            {
              break;
            }

            v69 = ++v15 < v14;
          }

          while (v14 != v15);
        }

        v63 = sub_1AF1AF080(v12);
        v18 = sub_1AF1A7674(v13);
        v67 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
        v65 = malloc_type_malloc(8 * v18, 0x100004052888210uLL);
        if (sub_1AF1A7634(v13) != 1)
        {
          v19 = sub_1AF0D5194();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDD97C4(v19, v20, v21, v22, v23, v24, v25, v26);
          }
        }

        v89 = 0;
        v87 = 0u;
        v88 = 0u;
        sub_1AF1A79D0(v13, &v87);
        if (v18 < 1)
        {
          LODWORD(v27) = 0;
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v61 = v18;
          do
          {
            v79 = v87;
            v80 = v88;
            v81.n128_u64[0] = v89;
            v29 = sub_1AF1A7BA8(&v79, v28, 0, 0);
            v79 = v87;
            v80 = v88;
            v81.n128_u64[0] = v89;
            v32 = sub_1AF1A7BA8(&v79, v28, 1, 0);
            if (!v69)
            {
              goto LABEL_27;
            }

            v83 = 0;
            v84 = &v83;
            v85 = 0x2000000000;
            v86 = 0;
            v33 = sub_1AF1A4C6C(a2, 0, 0);
            if (v14 >= 1)
            {
              v34 = v33;
              for (i = 0; i != v14; ++i)
              {
                v36 = sub_1AF1A3D1C(a2, i, 0);
                v37 = sub_1AF1A7034(v36);
                if (sub_1AF1A72E0(v37))
                {
                  v81 = 0u;
                  v82 = 0u;
                  v79 = 0u;
                  v80 = 0u;
                  sub_1AF1A767C(v36, v34, &v79);
                  v75 = v79;
                  v76 = v80;
                  v77 = v81;
                  v78 = v82;
                  v72[0] = MEMORY[0x1E69E9820];
                  v72[1] = 0x40000000;
                  v72[2] = sub_1AF17DEA0;
                  v72[3] = &unk_1E7A7B210;
                  v73 = v29;
                  v74 = v32;
                  v72[4] = &v83;
                  sub_1AF1AA060(&v75, v72, v81);
                }
              }
            }

            v38 = *(v84 + 24);
            _Block_object_dispose(&v83, 8);
            v18 = v61;
            if (v38)
            {
LABEL_27:
              if (*v3 == 3)
              {
                v39 = *(v3 + 8);
                v29 = *(v39 + 4 * v29);
                v32 = *(v39 + 4 * v32);
              }

              v40 = &v65[8 * v27];
              *v40 = v29;
              *(v40 + 1) = v32;
              v67[v27++] = *sub_1AF1CAF40(v63, v28, v30, v31);
            }

            ++v28;
          }

          while (v28 != v18);
        }

        *(v3 + 128) = v27;
        *(v3 + 136) = v65;
        *(v3 + 144) = v67;
      }
    }

    v41 = sub_1AF1A4604(a2, 7, 0, 0);
    if (v41)
    {
      v42 = sub_1AF1AF080(v41);
      v43 = *(v3 + 40) - *(v3 + 32);
      v44 = malloc_type_malloc(v43, 0x100004052888210uLL);
      v62 = v43;
      v45 = malloc_type_malloc(v43, 0x100004052888210uLL);
      v46 = sub_1AF1A4C6C(a2, 7, 0);
      v47 = sub_1AF1A3CCC(a2);
      if (v47 >= 1)
      {
        v48 = v47;
        v49 = 0;
        v64 = v47;
        do
        {
          v50 = sub_1AF1A3D1C(a2, v49, 0);
          v51 = sub_1AF1A7034(v50);
          if (sub_1AF1A72E0(v51))
          {
            v66 = v49;
            v81.n128_u64[0] = 0;
            v79 = 0u;
            v80 = 0u;
            sub_1AF1A79D0(v50, &v79);
            v70 = sub_1AF1A7674(v50);
            if (v70 >= 1)
            {
              v52 = 0;
              v68 = v50;
              do
              {
                v53 = sub_1AF1A7798(v50, v52);
                if (v53 >= 1)
                {
                  v54 = v53;
                  for (j = 0; j != v54; ++j)
                  {
                    v75 = v79;
                    v76 = v80;
                    v77.n128_u64[0] = v81.n128_u64[0];
                    v56 = sub_1AF1A7BA8(&v75, v52, j, v46);
                    v59 = v56;
                    v60 = v56;
                    if (*v3 == 3)
                    {
                      v59 = *(*(v3 + 8) + 4 * v56);
                      v60 = v59;
                    }

                    v44[v60] = *sub_1AF1CAF40(v42, v56, v57, v58);
                    v45[v60] = v59;
                  }
                }

                ++v52;
                v50 = v68;
              }

              while (v52 != v70);
            }

            v48 = v64;
            v49 = v66;
          }

          ++v49;
        }

        while (v49 != v48);
      }

      *(v3 + 152) = v62 >> 2;
      *(v3 + 160) = v45;
      *(v3 + 168) = v44;
    }
  }
}

uint64_t sub_1AF17DEA0(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = 0;
    v5 = *(result + 40);
    do
    {
      v6 = *(a3 + 4 * v4);
      if (a4 - 1 == v4)
      {
        v7 = 0;
      }

      else
      {
        v7 = v4 + 1;
      }

      v8 = *(a3 + 4 * v7);
      if (v5 == v6 && *(result + 44) == v8 || v5 == v8 && *(result + 44) == v6)
      {
        *(*(*(result + 32) + 8) + 24) = 1;
      }

      ++v4;
    }

    while (a4 != v4);
  }

  return result;
}

void sub_1AF17DF0C(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v1 = sub_1AF0D5194();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  sub_1AF17DFE4();
}

void sub_1AF17E078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v46[2] + 4) = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = sub_1AF17E354;
  v44[3] = &unk_1E7A7B230;
  v44[4] = a2;
  v44[5] = a1;
  sub_1AF1A2BEC(a3, 0, v44);
  v15 = *(a1 + 56) - *(a1 + 48);
  v32 = (v15 >> 5);
  if ((v15 >> 5))
  {
    if (!*(v6 + 196))
    {
      v16 = malloc_type_malloc((v15 >> 1) & 0xFF0, 0x105004037B82EA9uLL);
      v17 = (v16 + 8);
      v18 = v32;
      do
      {
        v19 = *(v6 + 208);
        *(v17 - 2) = v19;
        *v17 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
        v17 += 2;
        --v18;
      }

      while (v18);
      *(v6 + 196) = v32;
      *(v6 + 200) = v16;
    }

    v20 = 0;
    v31 = a1;
    do
    {
      v21 = *(a1 + 48) + 32 * v20;
      v23 = *(v21 + 8);
      v22 = *(v21 + 16);
      v43 = 0;
      v24 = sub_1AF1A3CCC(a3);
      if (v24 >= 1)
      {
        v25 = v24;
        v26 = 0;
        v27 = (v22 - v23) >> 3;
        do
        {
          v28 = sub_1AF1A3D1C(a3, v26, 0);
          v29 = sub_1AF1A7034(v28);
          if (sub_1AF1A72E0(v29))
          {
            v42 = 0;
            v41 = 0u;
            v40 = 0u;
            sub_1AF1A79D0(v28, &v40);
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 0x40000000;
            v33[2] = sub_1AF17E640;
            v33[3] = &unk_1E7A7B250;
            v33[4] = v28;
            v33[5] = v27;
            v34 = v40;
            v35 = v41;
            v36 = v42;
            v33[6] = v21;
            v39 = v20;
            v37 = v6;
            v38 = &v43;
            sub_1AF1A756C(v28, v33);
          }

          ++v26;
        }

        while (v25 != v26);
      }

      if (v43 != *(v6 + 208))
      {
        v30 = sub_1AF0D5194();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD983C(v45, v46, v30);
        }
      }

      ++v20;
      a1 = v31;
    }

    while (v20 != v32);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void sub_1AF17E354(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_5;
    }

    if (a3 != 4)
    {
      return;
    }
  }

  if (a4)
  {
    return;
  }

LABEL_5:
  v30 = 0u;
  v31 = 0u;
  sub_1AF1AE1A8(a2, &v30);
  if (!v31 || !sub_1AF28857C(BYTE4(v31)))
  {
    return;
  }

  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4)
    {
      goto LABEL_15;
    }
  }

  else if (!a4)
  {
    goto LABEL_24;
  }

  v10 = sub_1AF0D5194();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD9880();
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_15:
    v11 = *(a1 + 40);
    v13 = *(v11 + 48);
    v14 = *(v11 + 56);
    v12 = (v11 + 48);
    while (v13 != v14)
    {
      if (*v13 == a5)
      {
        v16 = (v13 + 8);
        goto LABEL_25;
      }

      v13 += 32;
    }

    *__p = 0u;
    v29 = 0u;
    sub_1AF180958(v12, __p);
    if (__p[1])
    {
      *&v29 = __p[1];
      operator delete(__p[1]);
    }

    v15 = *(*(a1 + 40) + 56);
    *(v15 - 32) = a5;
    v16 = v15 - 24;
    goto LABEL_25;
  }

  if (a3)
  {
    goto LABEL_15;
  }

LABEL_24:
  v16 = *(a1 + 40);
LABEL_25:
  v18 = *(v16 + 8);
  v17 = *(v16 + 16);
  if (v18 >= v17)
  {
    v20 = (v18 - *v16) >> 3;
    if ((v20 + 1) >> 61)
    {
      sub_1AF10A1D0();
    }

    v21 = v17 - *v16;
    v22 = v21 >> 2;
    if (v21 >> 2 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      sub_1AF180C2C(v16, v23);
    }

    v24 = (8 * v20);
    *v24 = a2;
    v19 = 8 * v20 + 8;
    v25 = *(v16 + 8) - *v16;
    v26 = v24 - v25;
    memcpy(v24 - v25, *v16, v25);
    v27 = *v16;
    *v16 = v26;
    *(v16 + 8) = v19;
    *(v16 + 16) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v18 = a2;
    v19 = (v18 + 1);
  }

  *(v16 + 8) = v19;
}

uint64_t sub_1AF17E530(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if (a3 & 0xFFFFFFFE) == 2 || a3 == 4 && !a4 && (a5)
    {
LABEL_9:
      if (a5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_9;
  }

  v9 = sub_1AF0D5194();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_9;
  }

  sub_1AFDD9904();
  if (a5)
  {
LABEL_10:
    if (a3)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

LABEL_14:
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  for (i = *(v11 + 80); i != *(v11 + 88); i += 16)
  {
    if (*i == a2)
    {
      return *(i + 12);
    }
  }

  v21 = sub_1AF0D5194();
  result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDD962C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF17E640(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = sub_1AF1A7798(*(a1 + 32), a2);
  if (result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 40);
    do
    {
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = sub_1AF1AE6EC(*(*(*(a1 + 48) + 8) + 8 * i));
          if (v9 >= 0x80000000)
          {
            v10 = 0x80000000;
          }

          else
          {
            v10 = v9;
          }

          v11 = v10 - 1;
          v12 = *(a1 + 72);
          v15[0] = *(a1 + 56);
          v15[1] = v12;
          v16 = *(a1 + 88);
          result = sub_1AF1A7BA8(v15, v3, v6, **(a1 + 48));
          v13 = result;
          if (v11 < result)
          {
            v13 = v11;
          }

          v14 = *(a1 + 104);
          *(*(*(*(a1 + 96) + 200) + 16 * *(a1 + 112) + 8) + 4 * *v14) = v13;
          v7 = *(a1 + 40);
        }
      }

      else
      {
        v14 = *(a1 + 104);
      }

      ++*v14;
      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_1AF17E750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  while (v6 != v7)
  {
    v8 = *v6++;
    sub_1AF17E864(a2, a3, v8, 0, a1 + 72, 0);
  }

  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  while (v9 != v10)
  {
    v11 = *v9++;
    sub_1AF17E864(a2, a3, v11, 0, a1 + 144, 1);
  }

  v12 = *(a1 + 56) - *(a1 + 48);
  v13 = (v12 >> 5);
  sub_1AF17EA00(a1 + 216, v13);
  if ((v12 & 0x1FE0) != 0)
  {
    v14 = 0;
    do
    {
      v15 = *(a1 + 48) + 32 * v14;
      v16 = *(v15 + 8);
      v17 = *(v15 + 16);
      if (v16 != v17)
      {
        v18 = *(a1 + 216) + 72 * v14;
        do
        {
          v19 = *v16++;
          sub_1AF17E864(a2, a3, v19, v14, v18, 2);
        }

        while (v16 != v17);
      }

      ++v14;
    }

    while (v14 != v13);
  }
}

void sub_1AF17E864(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v27 = 0u;
  v28 = 0u;
  sub_1AF1AE1A8(a3, &v27);
  if ((BYTE4(v28) & 0xFE) == 0x16)
  {
    v20 = 4;
  }

  else
  {
    v20 = BYTE8(v28);
  }

  switch(v20)
  {
    case 4:
      sub_1AF181224(v22, a3, v11, a2, a4, a6);
      sub_1AF180C74(a5 + 48, v22);
      goto LABEL_13;
    case 3:
      sub_1AF181224(v22, a3, v11, a2, a4, a6);
      sub_1AF180C74(a5 + 24, v22);
      goto LABEL_13;
    case 2:
      sub_1AF180CBC(v22, a3, v11, a2, a4, a6);
      sub_1AF180C74(a5, v22);
LABEL_13:
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      return;
  }

  v21 = sub_1AF0D5194();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDD9988();
  }
}

void sub_1AF17EA00(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_1AF1813DC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 72 * a2;
    while (v3 != v7)
    {
      v3 -= 9;
      sub_1AF1816C4(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void sub_1AF17EAA4(uint64_t a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, int **a7)
{
  sub_1AF17EB3C((a1 + 72), a6, a7, a2, a3, a4);
  sub_1AF17EB3C((a1 + 144), a6, a7, v10, v11, v12);
  v16 = *(a1 + 48);
  if (((*(a1 + 56) - v16) >> 5))
  {
    v17 = 0;
    v18 = 72 * ((*(a1 + 56) - v16) >> 5);
    do
    {
      sub_1AF17EB3C((*(a1 + 216) + v17), a6, a7, v13, v14, v15);
      v17 += 72;
    }

    while (v18 != v17);
  }
}

void sub_1AF17EB3C(void *a1, uint64_t a2, int **a3, double a4, float32x4_t a5, float32x4_t a6)
{
  if ((*(a2 + 8) & 0x3C) != 0)
  {
    v9 = 0;
    do
    {
      v10 = a1[1] - *a1;
      if (v10)
      {
        v11 = 0;
        v12 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        do
        {
          sub_1AF181794(*a1 + v11, v9 + 1, a3, a2, a4, *a5.i64);
          v11 += 112;
          --v13;
        }

        while (v13);
      }

      v14 = a1[4] - a1[3];
      if (v14)
      {
        v15 = 0;
        v16 = 0x6DB6DB6DB6DB6DB7 * (v14 >> 4);
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        do
        {
          sub_1AF18193C(a1[3] + v15, v9 + 1, a3, a2, *&a4, *a5.i64, a6);
          v15 += 112;
          --v17;
        }

        while (v17);
      }

      v18 = a1[7] - a1[6];
      if (v18)
      {
        v19 = 0;
        v20 = 0x6DB6DB6DB6DB6DB7 * (v18 >> 4);
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        do
        {
          sub_1AF181DC8(a1[6] + v19, v9 + 1, a3, a2, a4, a5);
          v19 += 112;
          --v21;
        }

        while (v21);
      }

      ++v9;
    }

    while (v9 < ((*(a2 + 8) >> 2) & 0xF));
  }
}

void sub_1AF17EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 40);
  if (!v6)
  {
    v7 = sub_1AF0D5194();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8964(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *a1 = 0;
  *(a1 + 56) = 0;
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 0x40000000;
  v86[2] = sub_1AF17F284;
  v86[3] = &unk_1E7A7B270;
  v86[4] = a2;
  v86[5] = a1;
  v78 = a3;
  sub_1AF1A2BEC(a3, 0, v86);
  v73 = *(a1 + 8);
  v74 = *(a1 + 16);
  v71 = *(a1 + 64);
  v72 = *(a1 + 72);
  sub_1AF17A60C((a1 + 32), (*(v6 + 208) * *a1));
  sub_1AF17A60C((a1 + 88), (*(v6 + 208) * *(a1 + 56)));
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  while (v15 != v16)
  {
    sub_1AF17A60C((v15 + 40), (*(v6 + 208) * *(v15 + 8)));
    v15 += 64;
  }

  v76 = v6;
  if (*(v6 + 104))
  {
    v17 = 0;
    v18 = (v74 - v73) >> 4;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v77 = v18;
    if (((v72 - v71) >> 4) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v72 - v71) >> 4;
    }

    do
    {
      v75 = v17;
      v20 = *(*(v6 + 32) + 4 * v17);
      if (v74 != v73)
      {
        for (i = 0; i != v77; ++i)
        {
          v22 = *(a1 + 8) + 16 * i;
          v23 = *(v22 + 4);
          v24 = *(v22 + 8);
          v87 = 0u;
          v88 = 0u;
          sub_1AF1AE1A8(v24, &v87);
          v28 = v87;
          v29 = BYTE4(v88);
          v30 = BYTE6(v88);
          v31 = BYTE8(v88);
          if (BYTE8(v88) >= 5u)
          {
            v32 = sub_1AF0D5194();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v90 = "srcContent.componentCount <= 4";
              v91 = 1024;
              v92 = v31;
              _os_log_fault_impl(&dword_1AF0CE000, v32, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v33.i64 = sub_1AF279750(v29, (v28 + (v20 * v30)), v25, v26, v27);
          v35 = *&v33.i32[3];
          if (v31 <= 3)
          {
            v35 = 1.0;
          }

          if (v31)
          {
            v34.i32[0] = v33.i32[0];
          }

          else
          {
            *v34.i32 = 0.0;
          }

          if (v23)
          {
            v36 = 0;
            *v33.i8 = vand_s8(vext_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v31), 0x200000001));
            v37 = vextq_s8(vextq_s8(v34, v34, 4uLL), v33, 0xCuLL);
            *&v37.i32[3] = v35;
            v79 = v37;
            do
            {
              v83 = v79;
              *buf = *(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (v36 & 3)));
              sub_1AF17A6AC((a1 + 32), buf);
              ++v36;
            }

            while (v23 > v36);
          }
        }
      }

      if (v72 != v71)
      {
        v38 = 0;
        do
        {
          v39 = *(a1 + 64) + 16 * v38;
          v40 = *(v39 + 4);
          v41 = *(v39 + 8);
          v87 = 0u;
          v88 = 0u;
          sub_1AF1AE1A8(v41, &v87);
          v45 = v87;
          v46 = BYTE4(v88);
          v47 = BYTE6(v88);
          v48 = BYTE8(v88);
          if (BYTE8(v88) >= 5u)
          {
            v49 = sub_1AF0D5194();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v90 = "srcContent.componentCount <= 4";
              v91 = 1024;
              v92 = v48;
              _os_log_fault_impl(&dword_1AF0CE000, v49, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v50.i64 = sub_1AF279750(v46, (v45 + (v20 * v47)), v42, v43, v44);
          v52 = *&v50.i32[3];
          if (v48 <= 3)
          {
            v52 = 1.0;
          }

          if (v48)
          {
            v51.i32[0] = v50.i32[0];
          }

          else
          {
            *v51.i32 = 0.0;
          }

          if (v40)
          {
            v53 = 0;
            *v50.i8 = vand_s8(vext_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v48), 0x200000001));
            v54 = vextq_s8(vextq_s8(v51, v51, 4uLL), v50, 0xCuLL);
            *&v54.i32[3] = v52;
            v80 = v54;
            do
            {
              v82 = v80;
              *buf = *(&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v53 & 3)));
              sub_1AF17A6AC((a1 + 88), buf);
              ++v53;
            }

            while (v40 > v53);
          }

          ++v38;
        }

        while (v38 != v19);
      }

      v6 = v76;
      v17 = v75 + 1;
    }

    while (v75 + 1 < *(v76 + 104));
  }

  v55 = *(a1 + 120) - *(a1 + 112);
  v81 = (v55 >> 6);
  if ((v55 >> 6))
  {
    if (!*(v6 + 196))
    {
      v56 = malloc_type_malloc((v55 >> 2) & 0xFF0, 0x105004037B82EA9uLL);
      v57 = (v56 + 8);
      v58 = v81;
      do
      {
        v59 = *(v6 + 208);
        *(v57 - 2) = v59;
        *v57 = malloc_type_malloc(4 * v59, 0x100004052888210uLL);
        v57 += 2;
        --v58;
      }

      while (v58);
      *(v6 + 196) = v81;
      *(v6 + 200) = v56;
    }

    v60 = 0;
    do
    {
      v61 = *(a1 + 112) + (v60 << 6);
      v63 = *(v61 + 16);
      v62 = *(v61 + 24);
      *buf = 0;
      v64 = sub_1AF1A3CCC(v78);
      if (v64 >= 1)
      {
        v65 = v64;
        v66 = 0;
        v67 = (v62 - v63) >> 4;
        do
        {
          v68 = sub_1AF1A3D1C(v78, v66, 0);
          v69 = sub_1AF1A7034(v68);
          if (sub_1AF1A72E0(v69))
          {
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 0x40000000;
            v84[2] = sub_1AF17F4BC;
            v84[3] = &unk_1E7A7B290;
            v84[4] = v68;
            v84[5] = v67;
            v84[6] = v61;
            v84[7] = v76;
            v85 = v60;
            v84[8] = buf;
            sub_1AF1A756C(v68, v84);
          }

          ++v66;
        }

        while (v65 != v66);
      }

      if (*buf != *(v76 + 208))
      {
        v70 = sub_1AF0D5194();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDD99F8(&v87, (&v87 + 4), v70);
        }
      }

      ++v60;
    }

    while (v60 != v81);
  }

  else
  {
    *(v6 + 196) = 0;
    *(v6 + 200) = 0;
  }
}

void sub_1AF17F284(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a3)
  {
    if ((a3 & 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  else if (a4)
  {
    return;
  }

  v34 = 0u;
  v35 = 0u;
  sub_1AF1AE1A8(a2, &v34);
  if (v35 && sub_1AF28857C(BYTE4(v35)))
  {
    if (a3)
    {
      if (a3 == 3)
      {
        v10 = 2;
      }

      else if (a3 == 2)
      {
        v10 = 4;
      }

      else
      {
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD9A3C(a3, v11);
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 3;
    }

    v12 = sub_1AF17E530(*(a1 + 32), a2, a3, a4, 0);
    if (v12 <= 1)
    {
      if (v12 != 1)
      {
        sub_1AFDD9AC8(v33);
      }

      v13 = *(a1 + 40);
    }

    else if (v12 == 2)
    {
      v13 = *(a1 + 40) + 56;
    }

    else
    {
      v14 = *(a1 + 40);
      v16 = *(v14 + 112);
      v17 = *(v14 + 120);
      v15 = v14 + 112;
      while (1)
      {
        if (v16 == v17)
        {
          memset(v33, 0, sizeof(v33));
          sub_1AF18E9E0(v15, v33);
          sub_1AF18ECDC(v33);
          v18 = *(*(a1 + 40) + 120);
          *(v18 - 56) = 0;
          v13 = v18 - 56;
          *(v13 - 8) = a5;
          goto LABEL_28;
        }

        if (*v16 == a5)
        {
          break;
        }

        v16 += 64;
      }

      v13 = (v16 + 8);
    }

LABEL_28:
    v19 = *v13;
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v20 >= v21)
    {
      v23 = *(v13 + 8);
      v24 = (v20 - v23) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        sub_1AF10A1D0();
      }

      v26 = v21 - v23;
      if (v26 >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_1AF18ED20(v13 + 8, v27);
      }

      v28 = 16 * v24;
      *v28 = v19;
      *(v28 + 4) = v10;
      *(v28 + 8) = a2;
      v22 = 16 * v24 + 16;
      v29 = *(v13 + 8);
      v30 = *(v13 + 16) - v29;
      v31 = (16 * v24 - v30);
      memcpy(v31, v29, v30);
      v32 = *(v13 + 8);
      *(v13 + 8) = v31;
      *(v13 + 16) = v22;
      *(v13 + 24) = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      *v20 = v19;
      *(v20 + 4) = v10;
      v22 = v20 + 16;
      *(v20 + 8) = a2;
    }

    *(v13 + 16) = v22;
    *v13 += v10;
  }
}

void sub_1AF17F4BC(uint64_t a1, unsigned int a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v28 = sub_1AF1A7798(*(a1 + 32), a2);
  if (v28 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 40);
    do
    {
      if (v4)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = sub_1AF1AE6EC(*(*(*(a1 + 48) + 16) + 16 * i + 8));
          v7 = 0x80000000;
          if (v6 < 0x80000000)
          {
            v7 = v6;
          }

          v8 = v7 - 1;
          v9 = sub_1AF1A7C24(*(a1 + 32), v29, v3, **(a1 + 48));
          if (v9 >= v8)
          {
            v10 = v8;
          }

          else
          {
            v10 = v9;
          }

          *(*(*(*(a1 + 56) + 200) + 16 * *(a1 + 72) + 8) + 4 * **(a1 + 64)) = **(a1 + 64);
          v11 = *(*(a1 + 48) + 16) + 16 * i;
          v12 = *(v11 + 4);
          v13 = *(v11 + 8);
          v32 = 0u;
          v33 = 0u;
          sub_1AF1AE1A8(v13, &v32);
          v17 = v32;
          v18 = BYTE4(v33);
          v19 = BYTE6(v33);
          v20 = BYTE8(v33);
          if (BYTE8(v33) >= 5u)
          {
            v21 = sub_1AF0D5194();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v35 = "srcContent.componentCount <= 4";
              v36 = 1024;
              v37 = v20;
              _os_log_fault_impl(&dword_1AF0CE000, v21, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Primvar data size is too big (cannot fit %d floats in a float4)", buf, 0x12u);
            }
          }

          *v22.i64 = sub_1AF279750(v18, (v17 + (v10 * v19)), v14, v15, v16);
          v24 = *&v22.i32[3];
          if (v20 <= 3)
          {
            v24 = 1.0;
          }

          if (v20)
          {
            v23.i32[0] = v22.i32[0];
          }

          else
          {
            *v23.i32 = 0.0;
          }

          if (v12)
          {
            v25 = 0;
            *v22.i8 = vand_s8(vext_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL), 4uLL), vcgt_u32(vdup_n_s32(v20), 0x200000001));
            v26 = vextq_s8(vextq_s8(v23, v23, 4uLL), v22, 0xCuLL);
            *&v26.i32[3] = v24;
            v30 = v26;
            do
            {
              v27 = *(a1 + 48);
              v31 = v30;
              *buf = *(&v31 & 0xFFFFFFFFFFFFFFF3 | (4 * (v25 & 3)));
              sub_1AF17A6AC((v27 + 40), buf);
              ++v25;
            }

            while (v12 > v25);
          }

          v4 = *(a1 + 40);
        }
      }

      ++**(a1 + 64);
      ++v3;
    }

    while (v3 != v28);
  }
}

void sub_1AF17F738(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(__p, 0, sizeof(__p));
  v3 = sub_1AF1A3CCC(a2);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = sub_1AF1A3D1C(a2, i, 0);
      v6 = sub_1AF1A7034(v5);
      if (sub_1AF1A72E0(v6))
      {
        v7 = sub_1AF1A7530(v5);
        v9 += v7;
        sub_1AF121C58(__p, &v9);
      }
    }
  }

  operator new();
}

uint64_t sub_1AF17F9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = sub_1AF1A3CCC(a3);
  if ((v4 & 0xFE) == 0)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = v4;
  do
  {
    v7 = sub_1AF1A3D1C(a3, v5, 0);
    v8 = sub_1AF1A7034(v7);
    if (!sub_1AF1A72E0(v8))
    {
      goto LABEL_12;
    }

    if (v8 >= 2)
    {
      if (v8 == 4)
      {
        v10 = sub_1AF1A4C6C(a3, 0, 0);
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        sub_1AF1A767C(v7, v10, &v13);
        v20[0] = v13;
        v20[1] = v14;
        v20[2] = v15;
        v20[3] = v16;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = sub_1AF17FD9C;
        v19[3] = &unk_1E7A7B2B8;
        v19[4] = &v24;
        sub_1AF1AA060(v20, v19, v15);
        goto LABEL_11;
      }

      if (v8 != 5)
      {
        v11 = sub_1AF0D5194();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDD9B5C(&buf, v18, v11);
        }

        goto LABEL_11;
      }
    }

    v9 = sub_1AF1A7530(v7);
    *(v25 + 6) += 3 * v9;
LABEL_11:
    sub_1AF121C58(&v21, v25 + 6);
LABEL_12:
    ++v5;
  }

  while (v6 != v5);
  if (((v22 - v21) >> 2) >= 2)
  {
    sub_1AFDB540C(&v13);
    sub_1AF1799D8(v20, ((*(&v13 + 1) - v13) >> 4));
    operator new();
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

LABEL_19:
  _Block_object_dispose(&v24, 8);
  return 0;
}

uint64_t sub_1AF17FD9C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  *(*(*(result + 32) + 8) + 24) += v4;
  return result;
}

void sub_1AF17FDBC(void *a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = (*(a3 + 88) + 24 * ((*(a3 + 8) >> 2) & 0xF));
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_1AF1803A0(a2, a4, v10, a1 + 9, 0, &v26);
  sub_1AF1803A0(a2, a4, v10, a1 + 18, 0, &v26);
  v13 = a1[27];
  v14 = a1[28];
  while (v13 != v14)
  {
    sub_1AF1803A0(a2, a4, v10, v13, 1, &v26);
    v13 += 9;
  }

  v23[2] = v23;
  v15 = (-85 * ((v27 - v26) >> 3));
  MEMORY[0x1EEE9AC00](v11, v12);
  v24 = v23 - v16;
  v25 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(v25, v15, MEMORY[0x1E695E9C0]);
  if (v15)
  {
    v18 = 0;
    v19 = 24 * v15;
    v20 = v24;
    do
    {
      v21 = v26 + v18;
      if (*(v26 + v18))
      {
        v22 = *(v26 + v18 + 1) + 1;
      }

      else
      {
        v22 = 0;
      }

      *v20++ = v22;
      CFArrayAppendValue(Mutable, *(v21 + 16));
      CFRelease(*(v21 + 16));
      v18 += 24;
    }

    while (v19 != v18);
  }

  sub_1AF17F738(a3, a5);
}

void sub_1AF1803A0(uint64_t a1, int **a2, uint64_t *a3, void *a4, int a5, uint64_t a6)
{
  v12 = a4[1] - *a4;
  if (v12)
  {
    v13 = 0;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 4);
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    do
    {
      sub_1AF18EE14(*a4 + v13, a3, a2, a5, a1 + 2, a6);
      v13 += 112;
      --v15;
    }

    while (v15);
  }

  v16 = a4[4] - a4[3];
  if (v16)
  {
    v17 = 0;
    v18 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 4);
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      sub_1AF18F350(a4[3] + v17, a3, a2, a5, a1 + 2, a6);
      v17 += 112;
      --v19;
    }

    while (v19);
  }

  v20 = a4[7] - a4[6];
  if (v20)
  {
    v21 = 0;
    v22 = 0x6DB6DB6DB6DB6DB7 * (v20 >> 4);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    do
    {
      sub_1AF18F90C(a4[6] + v21, a3, a2, a5, a1 + 2, a6);
      v21 += 112;
      --v23;
    }

    while (v23);
  }
}

void sub_1AF1804E8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    free(*(v1 + 136));
    free(*(v1 + 144));
    free(*(v1 + 160));
    free(*(v1 + 168));
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
    *(v1 + 168) = 0;
  }
}

void sub_1AF18053C(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    if (*(v1 + 196) >= 1)
    {
      v3 = 0;
      do
      {
        free(*(*(v1 + 200) + 16 * v3++ + 8));
      }

      while (*(v1 + 196) > v3);
    }

    free(*(v1 + 200));
    free(*(v1 + 112));
    free(*(v1 + 120));
    free(*(v1 + 136));
    free(*(v1 + 144));
    free(*(v1 + 160));
    free(*(v1 + 168));
    free(*(v1 + 184));
    v4 = *(v1 + 80);
    if (v4)
    {
      *(v1 + 88) = v4;
      operator delete(v4);
    }

    v5 = *(v1 + 56);
    if (v5)
    {
      operator delete(v5);
    }

    v6 = *(v1 + 32);
    if (v6)
    {
      *(v1 + 40) = v6;
      operator delete(v6);
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      *(v1 + 16) = v7;
      operator delete(v7);
    }

    free(*(a1 + 168));
    *(a1 + 168) = 0;
  }
}

uint64_t sub_1AF180624(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_1AF1806C8(&v2, a2);
    }

    sub_1AF10A1D0();
  }

  return result;
}

void sub_1AF1806C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_1AF1233A0(a1, v2);
  }

  sub_1AF10A1D0();
}

void sub_1AF18070C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_1AF1807B0(&v18, &v16, &v14, &v13);
}

void sub_1AF1807B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_1AF180840(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_1AF180840(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_1AF180910(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF180958(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_1AF1809C4(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v4 = v3 + 32;
  }

  a1[1] = v4;
  return v4 - 32;
}

uint64_t sub_1AF1809C4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AF10A1D0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15[4] = a1;
  if (v7)
  {
    sub_1AF180AC0(a1, v7);
  }

  v8 = 32 * v2;
  *v8 = *a2;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  sub_1AF180B08(a1, *a1, v10, v8 + *a1 - v10);
  v12 = *a1;
  *a1 = v11;
  a1[1] = v9;
  v13 = a1[2];
  a1[2] = 0;
  v15[2] = v12;
  v15[3] = v13;
  v15[0] = v12;
  v15[1] = v12;
  sub_1AF180B94(v15);
  return v9;
}

void sub_1AF180AC0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF180B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }
}

uint64_t sub_1AF180B94(uint64_t a1)
{
  sub_1AF180BCC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF180BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 32;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

void sub_1AF180C2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF180C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1AF180E74(a1, a2);
  }

  else
  {
    result = sub_1AF180F8C(v3, a2) + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AF180CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v9 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v9;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v10 = *(a4 + 88);
  v11 = &v10[3 * v9];
  if (a6 == 2)
  {
    v28 = 0uLL;
    v29 = 0uLL;
    sub_1AF1AE1A8(a2, &v28);
    v12 = v29;
    v13 = sub_1AFDBA620(*v11, *(a1 + 72));
    v14 = sub_1AFDCA9E4(a4, *(a1 + 72));
    v15 = (v14 - sub_1AFDBA620(*v10, *(a1 + 72))) - v13;
    sub_1AF122E00(a1, v12);
    if (v12)
    {
      v19 = 0;
      do
      {
        *v16.i64 = sub_1AF279750(BYTE4(v29), (v28 + BYTE6(v29) * v19), v16, v17, v18);
        *(*a1 + 8 * v19++) = v16.i64[0];
      }

      while (v12 != v19);
    }
  }

  else
  {
    v21 = *(*v10 + 8);
    v13 = *(*v11 + 8);
    v15 = *(a4 + 20) - v21 - v13;
    sub_1AF122E00(a1, v21);
    v28 = 0u;
    v29 = 0u;
    sub_1AF1AE1A8(a2, &v28);
    if (v21)
    {
      v25 = 0;
      do
      {
        *v22.i64 = sub_1AF279750(BYTE4(v29), (v28 + *(*(a3 + 32) + 4 * v25) * BYTE6(v29)), v22, v23, v24);
        *(*a1 + 8 * v25++) = v22.i64[0];
      }

      while (v21 != v25);
    }
  }

  sub_1AF122E00((a1 + 24), v15);
  sub_1AF122E00((a1 + 48), v13);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v26;
  return a1;
}

uint64_t sub_1AF180E74(void **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1AF10A1D0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    sub_1AF181060(a1, v6);
  }

  v7 = 112 * v2;
  sub_1AF180F8C(v7, a2);
  v8 = v7 + 112;
  v9 = a1[1];
  v10 = *a1 + v7 - v9;
  sub_1AF1810BC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_1AF1811A8(v14);
  return v8;
}

uint64_t sub_1AF180F8C(uint64_t result, uint64_t a2)
{
  *(result + 64) = 0;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *result = *a2;
  *a2 = 0;
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v5;
  v6 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v7;
  v8 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  v9 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v9;
  *(result + 72) = *(a2 + 72);
  *(result + 76) = *(a2 + 76);
  *(result + 80) = *(a2 + 80);
  *(result + 88) = *(a2 + 88);
  if (*(result + 32) == *(result + 24))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(result + 24);
  }

  *(result + 96) = *result;
  *(result + 104) = v10;
  return result;
}

void sub_1AF181060(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF1810BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1AF180F8C(a4, v8);
      v8 += 112;
      a4 += 112;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1AF181140(a1, v6);
      v6 += 112;
    }
  }
}

void sub_1AF181140(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;

    operator delete(v5);
  }
}

void **sub_1AF1811A8(void **a1)
{
  sub_1AF1811DC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF1811DC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 112;
    sub_1AF181140(v4, i - 112);
  }
}

uint64_t sub_1AF181224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = a5;
  v9 = (*(a4 + 8) >> 2) & 0xF;
  *(a1 + 76) = v9;
  *(a1 + 80) = a2;
  *(a1 + 88) = a6;
  v10 = *(a4 + 88);
  v11 = &v10[3 * v9];
  if (a6 == 2)
  {
    v28 = 0uLL;
    v29 = 0uLL;
    sub_1AF1AE1A8(a2, &v28);
    v12 = v29;
    v13 = sub_1AFDBA620(*v11, *(a1 + 72));
    v14 = sub_1AFDCA9E4(a4, *(a1 + 72));
    v15 = (v14 - sub_1AFDBA620(*v10, *(a1 + 72))) - v13;
    sub_1AF1086DC(a1, v12);
    if (v12)
    {
      v19 = 0;
      do
      {
        *v16.i64 = sub_1AF279750(BYTE4(v29), (v28 + BYTE6(v29) * v19), v16, v17, v18);
        *(*a1 + 16 * v19++) = v16;
      }

      while (v12 != v19);
    }
  }

  else
  {
    v21 = *(*v10 + 8);
    v13 = *(*v11 + 8);
    v15 = *(a4 + 20) - v21 - v13;
    sub_1AF1086DC(a1, v21);
    v28 = 0u;
    v29 = 0u;
    sub_1AF1AE1A8(a2, &v28);
    if (v21)
    {
      v25 = 0;
      do
      {
        *v22.i64 = sub_1AF279750(BYTE4(v29), (v28 + *(*(a3 + 32) + 4 * v25) * BYTE6(v29)), v22, v23, v24);
        *(*a1 + 16 * v25++) = v22;
      }

      while (v21 != v25);
    }
  }

  sub_1AF1086DC((a1 + 24), v15);
  sub_1AF1086DC((a1 + 48), v13);
  if (*(a1 + 32) == *(a1 + 24))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(a1 + 24);
  }

  *(a1 + 96) = *a1;
  *(a1 + 104) = v26;
  return a1;
}

void sub_1AF1813DC(void ***a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0x8E38E38E38E38E39 * (v4 - v5) >= a2)
  {
    if (a2)
    {
      v10 = 72 * ((72 * a2 - 72) / 0x48) + 72;
      bzero(a1[1], v10);
      v5 = (v5 + v10);
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0x8E38E38E38E38E39 * (v5 - *a1);
    if (v6 + a2 > 0x38E38E38E38E38ELL)
    {
      sub_1AF10A1D0();
    }

    v7 = 0x8E38E38E38E38E39 * (v4 - *a1);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x1C71C71C71C71C7)
    {
      v9 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_1AF18157C(a1, v9);
    }

    v11 = 72 * v6;
    v12 = 72 * ((72 * a2 - 72) / 0x48) + 72;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    sub_1AF1815D8(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1AF181718(v18);
  }
}

void sub_1AF18157C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF1815D8(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_1AF181660(a1, a4, v8);
      v8 += 72;
      a4 += 9;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1AF1816C4(a1, v6);
      v6 += 9;
    }
  }
}

__n128 sub_1AF181660(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  result = *(a3 + 48);
  *(a2 + 3) = result;
  a2[8] = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

void sub_1AF1816C4(uint64_t a1, void **a2)
{
  v3 = a2 + 6;
  sub_1AF171480(&v3);
  v3 = a2 + 3;
  sub_1AF171480(&v3);
  v3 = a2;
  sub_1AF171480(&v3);
}

void **sub_1AF181718(void **a1)
{
  sub_1AF18174C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF18174C(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_1AF1816C4(v4, (i - 72));
  }
}

void sub_1AF181794(uint64_t a1, int a2, int **a3, uint64_t a4, double a5, double a6)
{
  if (*(a1 + 76) < a2)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 88);
  if (*(a1 + 76) != a2)
  {
    if (v18 == 2)
    {
      sub_1AF1825C8(a3, a2, (a1 + 96), (a1 + 104), *(a1 + 72), *&a5);
    }

    else if (v18 == 1)
    {
      sub_1AF1822A4(a3, a2, (a1 + 96), (a1 + 104), a5, a6);
    }

    else
    {
      if (*(a1 + 88))
      {
LABEL_20:
        v19 = *(a1 + 104);
        v20 = v19 + 8 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(a1 + 96) = v19;
        *(a1 + 104) = v20;
        return;
      }

      sub_1AF181F70(a3, a2, (a1 + 96), (a1 + 104), *&a5);
    }

    if (*(a1 + 88) == 2)
    {
      *(a1 + 96) = *(a1 + 104);
      *(a1 + 104) += 8 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(a1 + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    sub_1AF182434(a3, a2, (a1 + 96), (a1 + 48), *(a1 + 72), *&a5);
  }

  else if (v18 == 1)
  {
    sub_1AF1822A4(a3, a2, (a1 + 96), (a1 + 48), a5, a6);
  }

  else if (!*(a1 + 88))
  {
    sub_1AF181F70(a3, a2, (a1 + 96), (a1 + 48), *&a5);
  }

  sub_1AF122E00(a1, 0);
  sub_1AF122E00((a1 + 24), 0);
}

void sub_1AF18193C(uint64_t a1, int a2, int **a3, uint64_t a4, int16x4_t a5, double a6, float32x4_t a7)
{
  if (*(a1 + 76) < a2)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = *(a1 + 88);
  if (*(a1 + 76) != a2)
  {
    if (v19 == 2)
    {
      sub_1AF1876F0(a3, a2, (a1 + 96), (a1 + 104), *(a1 + 72), a5);
    }

    else if (v19 == 1)
    {
      v38 = *(*(*a3 + 8) + 8 * a2 - 8);
      v39 = *(v38 + 8);
      if (*(v38 + 52) >= 1 && *v39 >= 1)
      {
        v40 = 0;
        do
        {
          v41 = *(*(v38 + 168) + 4 * v40);
          if (v41 != -1)
          {
            v42 = *(v39 + 6);
            v43 = *(*(v39 + 3) + 8 * v40);
            v44 = *(*(v39 + 3) + 8 * v40 + 4);
            *(*(a1 + 104) + 16 * v41) = 0uLL;
            if (v43 >= 1)
            {
              v45 = (v42 + 4 * v44);
              a7.f32[0] = 1.0 / v43;
              a7 = vdupq_lane_s32(*a7.f32, 0);
              do
              {
                v46 = *v45++;
                *(*(a1 + 104) + 16 * v41) = vmlaq_f32(*(*(a1 + 104) + 16 * v41), *(*(a1 + 96) + 16 * v46), a7);
                --v43;
              }

              while (v43);
            }
          }

          ++v40;
        }

        while (v40 < *v39);
      }

      v47 = v39[1];
      if (v47 >= 1)
      {
        v48 = 0;
        v49 = 0;
        v50.i64[0] = 0x3F0000003F000000;
        v50.i64[1] = 0x3F0000003F000000;
        do
        {
          v51 = *(*(v38 + 216) + 4 * v49);
          if (v51 != -1)
          {
            v52 = (*(v39 + 15) + v48);
            *(*(a1 + 104) + 16 * v51) = 0uLL;
            *(*(a1 + 104) + 16 * v51) = vmlaq_f32(*(*(a1 + 104) + 16 * v51), v50, *(*(a1 + 96) + 16 * *v52));
            *(*(a1 + 104) + 16 * v51) = vmlaq_f32(*(*(a1 + 104) + 16 * v51), v50, *(*(a1 + 96) + 16 * v52[1]));
            v47 = v39[1];
          }

          ++v49;
          v48 += 8;
        }

        while (v49 < v47);
      }

      v53 = v39[2];
      if (v53 >= 1)
      {
        for (i = 0; i < v53; ++i)
        {
          v55 = *(*(v38 + 240) + 4 * i);
          if (v55 != -1)
          {
            *(*(a1 + 104) + 16 * v55) = 0uLL;
            *(*(a1 + 104) + 16 * v55) = vaddq_f32(*(*(a1 + 96) + 16 * i), *(*(a1 + 104) + 16 * v55));
            v53 = v39[2];
          }
        }
      }
    }

    else
    {
      if (*(a1 + 88))
      {
LABEL_56:
        v56 = *(a1 + 104);
        v57 = v56 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(a1 + 96) = v56;
        *(a1 + 104) = v57;
        return;
      }

      sub_1AF187228(a3, a2, (a1 + 96), (a1 + 104), a5);
    }

    if (*(a1 + 88) == 2)
    {
      *(a1 + 96) = *(a1 + 104);
      *(a1 + 104) += 16 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(a1 + 72));
      return;
    }

    goto LABEL_56;
  }

  if (v19 == 2)
  {
    sub_1AF18755C(a3, a2, (a1 + 96), (a1 + 48), *(a1 + 72), a5);
  }

  else if (v19 == 1)
  {
    v20 = *(*(*a3 + 8) + 8 * a2 - 8);
    v21 = *(v20 + 8);
    if (*(v20 + 52) >= 1 && *v21 >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(*(v20 + 168) + 4 * v22);
        if (v23 != -1)
        {
          v24 = *(v21 + 6);
          v25 = *(*(v21 + 3) + 8 * v22);
          v26 = *(*(v21 + 3) + 8 * v22 + 4);
          *(*(a1 + 48) + 16 * v23) = 0uLL;
          if (v25 >= 1)
          {
            v27 = (v24 + 4 * v26);
            a7.f32[0] = 1.0 / v25;
            a7 = vdupq_lane_s32(*a7.f32, 0);
            do
            {
              v28 = *v27++;
              *(*(a1 + 48) + 16 * v23) = vmlaq_f32(*(*(a1 + 48) + 16 * v23), *(*(a1 + 96) + 16 * v28), a7);
              --v25;
            }

            while (v25);
          }
        }

        ++v22;
      }

      while (v22 < *v21);
    }

    v29 = v21[1];
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = 0;
      v32.i64[0] = 0x3F0000003F000000;
      v32.i64[1] = 0x3F0000003F000000;
      do
      {
        v33 = *(*(v20 + 216) + 4 * v31);
        if (v33 != -1)
        {
          v34 = (*(v21 + 15) + v30);
          *(*(a1 + 48) + 16 * v33) = 0uLL;
          *(*(a1 + 48) + 16 * v33) = vmlaq_f32(*(*(a1 + 48) + 16 * v33), v32, *(*(a1 + 96) + 16 * *v34));
          *(*(a1 + 48) + 16 * v33) = vmlaq_f32(*(*(a1 + 48) + 16 * v33), v32, *(*(a1 + 96) + 16 * v34[1]));
          v29 = v21[1];
        }

        ++v31;
        v30 += 8;
      }

      while (v31 < v29);
    }

    v35 = v21[2];
    if (v35 >= 1)
    {
      for (j = 0; j < v35; ++j)
      {
        v37 = *(*(v20 + 240) + 4 * j);
        if (v37 != -1)
        {
          *(*(a1 + 48) + 16 * v37) = 0uLL;
          *(*(a1 + 48) + 16 * v37) = vaddq_f32(*(*(a1 + 96) + 16 * j), *(*(a1 + 48) + 16 * v37));
          v35 = v21[2];
        }
      }
    }
  }

  else if (!*(a1 + 88))
  {
    sub_1AF187228(a3, a2, (a1 + 96), (a1 + 48), a5);
  }

  sub_1AF1086DC(a1, 0);
  sub_1AF1086DC((a1 + 24), 0);
}

void sub_1AF181DC8(uint64_t a1, int a2, int **a3, uint64_t a4, double a5, float32x4_t a6)
{
  if (*(a1 + 76) < a2)
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD9BE0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(a1 + 88);
  if (*(a1 + 76) != a2)
  {
    if (v18 == 2)
    {
      sub_1AF18B38C(a3, a2, (a1 + 96), (a1 + 104), *(a1 + 72), *&a5);
    }

    else if (v18 == 1)
    {
      sub_1AF18B068(a3, a2, (a1 + 96), (a1 + 104), a5, a6);
    }

    else
    {
      if (*(a1 + 88))
      {
LABEL_20:
        v19 = *(a1 + 104);
        v20 = v19 + 16 * *(*(*(a4 + 88) + 24 * a2) + 8);
        *(a1 + 96) = v19;
        *(a1 + 104) = v20;
        return;
      }

      sub_1AF18AD34(a3, a2, (a1 + 96), (a1 + 104), *&a5);
    }

    if (*(a1 + 88) == 2)
    {
      *(a1 + 96) = *(a1 + 104);
      *(a1 + 104) += 16 * sub_1AFDBA620(*(*(a4 + 88) + 24 * a2), *(a1 + 72));
      return;
    }

    goto LABEL_20;
  }

  if (v18 == 2)
  {
    sub_1AF18B1F8(a3, a2, (a1 + 96), (a1 + 48), *(a1 + 72), *&a5);
  }

  else if (v18 == 1)
  {
    sub_1AF18B068(a3, a2, (a1 + 96), (a1 + 48), a5, a6);
  }

  else if (!*(a1 + 88))
  {
    sub_1AF18AD34(a3, a2, (a1 + 96), (a1 + 48), *&a5);
  }

  sub_1AF1086DC(a1, 0);
  sub_1AF1086DC((a1 + 24), 0);
}

void sub_1AF181F70(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      sub_1AF18275C(a1, a2, a3, a4, a5);
      sub_1AF182E94(a1, a2, a3, a4);

      sub_1AF183120(a1, a2, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      sub_1AF18275C(a1, a2, a3, a4, a5);
      sub_1AF182978(a1, a2, a3, a4);

      sub_1AF182C04(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_1AF18275C(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 64) + 8 * a2 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      for (i = 0; i < v15; ++i)
      {
        v18 = *(*(v12 + 216) + 4 * i);
        if (v18 != -1)
        {
          v19 = (*(v13 + 120) + v16);
          *(*a4 + 8 * v18) = 0;
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * *v19));
          *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * v19[1]));
          v15 = *(v13 + 4);
        }

        v16 += 8;
      }

      v11 = __p;
    }

    operator delete(v11);
    v20 = 0;
    v21 = *(*(*a1 + 64) + 8 * a2 - 8);
    v22 = *(v21 + 8);
    v27 = 0;
    if ((2 * *(v22 + 20)) >= 0x21)
    {
      v20 = operator new(4 * (2 * *(v22 + 20)));
      v27 = v20;
    }

    v23 = *(v22 + 8);
    if (v23 >= 1)
    {
      for (j = 0; j < v23; ++j)
      {
        v25 = *(*(v21 + 240) + 4 * j);
        if (v25 != -1)
        {
          *(*a4 + 8 * v25) = 0;
          *(*a4 + 8 * v25) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v25));
          v23 = *(v22 + 8);
        }
      }

      v20 = v27;
    }

    operator delete(v20);
  }
}

uint64_t sub_1AF1822A4(uint64_t result, int a2, void *a3, void *a4, double a5, double a6)
{
  v6 = *(*(*result + 64) + 8 * a2 - 8);
  v7 = *(v6 + 8);
  if (*(v6 + 52) >= 1 && *v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v6 + 168) + 4 * v8);
      if (v9 != -1)
      {
        v10 = *(v7 + 6);
        v11 = *(*(v7 + 3) + 8 * v8);
        v12 = *(*(v7 + 3) + 8 * v8 + 4);
        *(*a4 + 8 * v9) = 0;
        if (v11 >= 1)
        {
          v13 = (v10 + 4 * v12);
          *&a6 = 1.0 / v11;
          a6 = COERCE_DOUBLE(vdup_lane_s32(*&a6, 0));
          do
          {
            v14 = *v13++;
            *(*a4 + 8 * v9) = vmla_f32(*(*a4 + 8 * v9), *(*a3 + 8 * v14), *&a6);
            --v11;
          }

          while (v11);
        }
      }

      ++v8;
    }

    while (v8 < *v7);
  }

  v15 = v7[1];
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v15; ++i)
    {
      v18 = *(*(v6 + 216) + 4 * i);
      if (v18 != -1)
      {
        v19 = (*(v7 + 15) + v16);
        *(*a4 + 8 * v18) = 0;
        *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * *v19));
        *(*a4 + 8 * v18) = vmla_f32(*(*a4 + 8 * v18), 0x3F0000003F000000, *(*a3 + 8 * v19[1]));
        v15 = v7[1];
      }

      v16 += 8;
    }
  }

  v20 = v7[2];
  if (v20 >= 1)
  {
    for (j = 0; j < v20; ++j)
    {
      v22 = *(*(v6 + 240) + 4 * j);
      if (v22 != -1)
      {
        *(*a4 + 8 * v22) = 0;
        *(*a4 + 8 * v22) = vadd_f32(*(*a3 + 8 * j), *(*a4 + 8 * v22));
        v20 = v7[2];
      }
    }
  }

  return result;
}

void sub_1AF182434(int **a1, int a2, uint64_t *a3, uint64_t *a4, int a5, int16x4_t a6)
{
  v11 = **a1;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF184978(a1, a2, a3, a4, a5, a6);
      sub_1AF1854D0(a1, a2, a3, a4, a5);

      sub_1AF1858A0(a1, a2, a3, a4, a5, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF184978(a1, a2, a3, a4, a5, a6);
      sub_1AF184BB8(a1, a2, a3, a4, a5);

      sub_1AF184F88(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1AF184978(a1, a2, a3, a4, a5, a6);
    sub_1AF185DE8(a1, a2, a3, a4, a5);

    sub_1AF186028(a1, a2, a3, a4, a5);
  }
}

void sub_1AF1825C8(int **a1, int a2, uint64_t *a3, uint64_t *a4, int a5, int16x4_t a6)
{
  v11 = **a1;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF184978(a1, a2, a3, a4, a5, a6);
      sub_1AF1854D0(a1, a2, a3, a4, a5);

      sub_1AF186928(a1, a2, a3, a4, a5, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF184978(a1, a2, a3, a4, a5, a6);
      sub_1AF184BB8(a1, a2, a3, a4, a5);

      sub_1AF1863E0(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1AF184978(a1, a2, a3, a4, a5, a6);
    sub_1AF185DE8(a1, a2, a3, a4, a5);

    sub_1AF186E70(a1, a2, a3, a4, a5);
  }
}

void sub_1AF18275C(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 8 * v13) = 0;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_1AFE21110;
            v22 = xmmword_1AFE21100;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 8 * v13) = 0;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 8 * v13) = vmla_n_f32(*(*a4 + 8 * v13), *(*a3 + 8 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void sub_1AF182978(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v33 = v9[2];
  v37 = *(v8 + 4);
  v11 = *(v10 + 16);
  v38 = &v41;
  v39 = v11;
  v40 = 8;
  v35 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v38 = v7;
    v40 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v34[0] = v43;
        v34[1] = 0;
        v34[2] = v38;
        memset(&v34[3], 0, 13);
        v36 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF1833B0(&v37, &v35, v34, v20, (*(*(v33 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v43[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v43[1]);
        if (SLODWORD(v34[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v22 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v34[4]) == 1)
            {
              v23 = (v9[21] + 4 * v22);
              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v10 + 24);
              v27 = *(v26 + 8 * v22 + 4);
              v28 = (*(v10 + 72) + 4 * v27);
              v29 = *(v26 + 8 * v22);
              v30 = 1;
              do
              {
                v31 = *v28++;
                ++v30;
              }

              while (i != v31);
              v32 = *(v10 + 48) + 4 * v27;
              if (v30 < v29)
              {
                v29 = 0;
              }

              v23 = (v32 + 4 * (v30 - v29));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * *v23), v38[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF182C04(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v49 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v43 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v44 = &v47;
  v45 = v12;
  v46 = 32;
  v38[0] = v11;
  v38[1] = v10;
  v31 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v44 = v7;
    v46 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = v15;
        v35 = *(v11 + 360);
        v17 = *(v11 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v19 = *(v17 + 8 * i);
        v20 = *(v11 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v15;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v11 + 288);
        sub_1AF183850(&v43, v38, v36, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 8 * v16) = 0;
        if (SLODWORD(v36[4]) >= 1 && v21 >= 1)
        {
          v24 = (v32 + 4 * v33);
          do
          {
            v25 = *v24++;
            v26 = *(v9[21] + 4 * v25);
            LODWORD(v25) = *v23++;
            *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a4 + 8 * v26), *&v25);
            --v21;
          }

          while (v21);
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v11 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *(*a4 + 8 * v16) = vmla_n_f32(*(*a4 + 8 * v16), *(*a3 + 8 * i), v37);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF182E94(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v33 = v9[2];
  v37 = *(v8 + 4);
  v11 = *(v10 + 16);
  v38 = &v41;
  v39 = v11;
  v40 = 8;
  v35 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v38 = v7;
    v40 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v34[0] = v43;
        v34[1] = 0;
        v34[2] = v38;
        memset(&v34[3], 0, 13);
        v36 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF183F2C(&v37, &v35, v34, v20, (*(*(v33 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 8 * v14) = 0;
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * *v15), v43[0]);
        *(*a4 + 8 * v14) = vmla_n_f32(*(*a4 + 8 * v14), *(*a3 + 8 * v15[1]), v43[1]);
        if (SLODWORD(v34[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v22 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v34[4]) == 1)
            {
              v23 = (v9[21] + 4 * v22);
              v24 = *a4;
              v25 = *a4;
            }

            else
            {
              v26 = *(v10 + 24);
              v27 = *(v26 + 8 * v22 + 4);
              v28 = (*(v10 + 72) + 4 * v27);
              v29 = *(v26 + 8 * v22);
              v30 = 1;
              do
              {
                v31 = *v28++;
                ++v30;
              }

              while (i != v31);
              v32 = *(v10 + 48) + 4 * v27;
              if (v30 < v29)
              {
                v29 = 0;
              }

              v23 = (v32 + 4 * (v30 - v29));
              v25 = *a4;
              v24 = *a3;
            }

            *(v25 + 8 * v14) = vmla_n_f32(*(v25 + 8 * v14), *(v24 + 8 * *v23), v38[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF183120(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v50 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v44 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v45 = &v48;
  v46 = v13;
  v47 = 32;
  v39[0] = v12;
  v39[1] = v11;
  v32 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v45 = v8;
    v47 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = v16;
        v36 = *(v12 + 360);
        v18 = *(v12 + 336);
        v19 = (8 * i) | 4;
        v35 = *(v18 + v19);
        v20 = *(v18 + 8 * i);
        v21 = *(v12 + 264);
        v34 = *(v21 + v19);
        v22 = *(v21 + 8 * i);
        v38 = 0.0;
        v23 = v45;
        v24 = v45 + v20;
        v37[0] = &v38;
        v37[1] = v45;
        v37[2] = v24;
        memset(&v37[3], 0, 13);
        v40 = i;
        v41 = v16;
        v42 = *(*(v39[0] + 336) + 8 * i);
        v43 = *(*(v39[0] + 264) + 8 * i);
        v33 = *(v12 + 288);
        sub_1AF184204(&v44, v39, v37, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v32 + 432) + 2 * v16) >> 7) & 0xF, a5);
        *(*a4 + 8 * v17) = 0;
        if (SLODWORD(v37[4]) >= 1 && v22 >= 1)
        {
          v25 = (v33 + 4 * v34);
          do
          {
            v26 = *v25++;
            v27 = *(v10[21] + 4 * v26);
            LODWORD(v26) = *v24++;
            *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a4 + 8 * v27), *&v26);
            --v22;
          }

          while (v22);
        }

        if (SHIDWORD(v37[3]) >= 1 && v20 >= 1)
        {
          v29 = (v36 + 4 * v35);
          do
          {
            v30 = *v29++;
            v31 = (*(v12 + 120) + 8 * v30);
            LODWORD(v30) = *v23;
            v23 = (v23 + 4);
            *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * v31[i == *v31]), *&v30);
            --v20;
          }

          while (v20);
        }

        *&a5 = v38;
        *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * i), v38);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

int *sub_1AF1833B0(int *result, int *a2, uint64_t a3, int a4, int a5)
{
  v5 = a3;
  v49 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(*(*a2 + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *a2;
        LODWORD(v10) = a2[2];
        goto LABEL_8;
      }
    }

    else if (a4 != 4)
    {
      v9 = *a2;
      v10 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v10);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
LABEL_8:
        v11 = *(*(v9 + 144) + 8 * v10);
        *(a3 + 24) = 2;
        *(a3 + 32) = v11;
        *(a3 + 36) = 1;
        if ((*result & 0x180) == 0x80)
        {
          if (v11 == 2)
          {
            result = sub_1AF183804(a2, &v47);
            if (v47 == 3 || (v12 = 0.25, v13 = 0.25, v48 == 3))
            {
              v14 = 0.47;
              if (v48 == 3)
              {
                v15 = 0.47;
              }

              else
              {
                v15 = 0.25;
              }

              if (v47 != 3)
              {
                v14 = 0.25;
              }

              v13 = (v14 + v15) * 0.5;
              v12 = ((v13 * -2.0) + 1.0) * 0.5;
            }

            v16 = *v5;
            v16->f32[0] = v12;
            v16->f32[1] = v12;
            v9 = *a2;
            LODWORD(v11) = *(v5 + 32);
            goto LABEL_51;
          }

          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
        }

        else
        {
          v16 = *a3;
          __asm { FMOV            V0.2S, #0.25 }

          **a3 = _D0;
          if (v11 == 2)
          {
            v13 = 0.25;
            LODWORD(v11) = 2;
LABEL_51:
            v37 = *(v5 + 16);
            *v37 = v13;
            v37[1] = v13;
LABEL_62:
            v45 = *(*(v9 + 216) + 4 * a2[2]);
            *v16 = vmla_n_f32(vmul_n_f32(*v16, 1.0 - v45), 0x3F0000003F000000, v45);
            if (v11 >= 1)
            {
              v46 = *(v5 + 16);
              v11 = v11;
              do
              {
                *v46 = (1.0 - v45) * *v46;
                ++v46;
                --v11;
              }

              while (v11);
            }

            return result;
          }
        }

        if (v11 >= 1)
        {
          *_D0.i32 = 0.5 / v11;
          v38 = (v11 + 3) & 0xFFFFFFFC;
          v39 = vdupq_n_s64(v11 - 1);
          v40 = xmmword_1AFE21100;
          v41 = xmmword_1AFE21110;
          v42 = (*(a3 + 16) + 8);
          v43 = vdupq_n_s64(4uLL);
          do
          {
            v44 = vmovn_s64(vcgeq_u64(v39, v41));
            if (vuzp1_s16(v44, _D0).u8[0])
            {
              *(v42 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v44, _D0).i8[2])
            {
              *(v42 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v39, *&v40))).i32[1])
            {
              *v42 = _D0.i32[0];
              v42[1] = _D0.i32[0];
            }

            v40 = vaddq_s64(v40, v43);
            v41 = vaddq_s64(v41, v43);
            v42 += 4;
            v38 -= 4;
          }

          while (v38);
        }

        goto LABEL_62;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    _D0.i32[0] = 0.5;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *a2;
  LODWORD(v8) = a2[2];
LABEL_19:
  v17 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 1;
  if ((*result & 0x180) == 0x80)
  {
    if (v17 == 2)
    {
      result = sub_1AF183804(a2, &v47);
      if (v47 == 3 || (v18 = 0.25, _D0.i32[0] = 0.25, v48 == 3))
      {
        v20 = 0.47;
        if (v48 == 3)
        {
          v21 = 0.47;
        }

        else
        {
          v21 = 0.25;
        }

        if (v47 != 3)
        {
          v20 = 0.25;
        }

        *_D0.i32 = (v20 + v21) * 0.5;
        v18 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v22 = *v5;
      *v22 = v18;
      v22[1] = v18;
      goto LABEL_31;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
    _D0.i32[0] = 0.25;
    if (v17 == 2)
    {
LABEL_31:
      v5 += 16;
LABEL_37:
      v28 = *v5;
      v28->i32[0] = _D0.i32[0];
      v28->i32[1] = _D0.i32[0];
      return result;
    }
  }

  if (v17 >= 1)
  {
    *_D0.i32 = 0.5 / v17;
    v29 = (v17 + 3) & 0xFFFFFFFC;
    v30 = vdupq_n_s64(v17 - 1);
    v31 = xmmword_1AFE21100;
    v32 = xmmword_1AFE21110;
    v33 = (*(a3 + 16) + 8);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, _D0).u8[0])
      {
        *(v33 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v35, _D0).i8[2])
      {
        *(v33 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = _D0.i32[0];
        v33[1] = _D0.i32[0];
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 4;
      v29 -= 4;
    }

    while (v29);
  }

  return result;
}

int *sub_1AF183804(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[2];
  v4 = *(*result + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AF183850(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v80 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v23 = 0.0;
LABEL_25:
    if (v12 == 4)
    {
      v80 = v15;
      v33 = 0xFFFFFFFF00000000;
      v34 = v18;
      do
      {
        v35 = *v34++;
        v33 += 0x100000000;
      }

      while (v35 <= 0.0);
      v36 = v16 << 32;
      v37 = &v18[4 * v16 - 4];
      do
      {
        v38 = *v37--;
        v36 -= 0x100000000;
      }

      while (v38 <= 0.0);
      v39 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v39;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v40 = *(a3 + 8);
      if (v39 >= 1)
      {
        bzero(*(a3 + 8), 4 * v39);
      }

      *(v40 + (v33 >> 30)) = 1040187392;
      *(v40 + (v36 >> 30)) = 1040187392;
      v15 = v80;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v81 = *a1;
      MEMORY[0x1EEE9AC00](v19, v20);
      bzero(&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      v41 = sub_1AF183E28(a2, &v81, (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v42 = v41;
      v43 = *(a2 + 20);
      v44 = *(*(a2 + 8) + 408);
      v45 = *(v44 + 4 * v43);
      if (v15 || (v41 = sub_1AFDB78B4(*(v44 + 4 * v43), &v81, v16, v41), v15 = v41, v41 != v12))
      {
        MEMORY[0x1EEE9AC00](v41, 4 * ((2 * v16) | 1));
        v47 = (&v80 - v46);
        bzero(&v80 - v46, v48);
        v49 = v47 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v56 = 0xFFFFFFFF00000000;
            v57 = v42;
            do
            {
              v58 = *v57++;
              v56 += 0x100000000;
            }

            while (v58 <= 0.0);
            v59 = v16 << 32;
            v60 = &v42[v16 - 1];
            do
            {
              v61 = *v60--;
              v59 -= 0x100000000;
            }

            while (v61 <= 0.0);
            v55 = *(a2 + 24);
            *v47 = 0.75;
            if (v55 >= 1)
            {
              bzero(v47 + 1, 4 * v55);
            }

            LODWORD(v50) = 0;
            *(v49 + (v56 >> 30)) = 1040187392;
            v62 = v59 >> 30;
            v54 = 0;
            *(v49 + v62) = 1040187392;
          }

          else
          {
            v54 = 0;
            LODWORD(v50) = 0;
            LODWORD(v55) = 0;
            *v47 = 1.0;
          }
        }

        else
        {
          v50 = *(a2 + 28);
          *v47 = (v50 - 2) / v50;
          if (v50 >= 1)
          {
            v51 = 1.0 / (v50 * v50);
            v52 = v47 + 1;
            v53 = v50;
            do
            {
              *v52 = v51;
              v52[v16] = v51;
              ++v52;
              --v53;
            }

            while (v53);
          }

          v54 = 1;
          LODWORD(v55) = v50;
        }

        v63 = sub_1AFDB7908(&v81, v16, v18, v42, v23, v45);
        v64 = 1.0 - *&v63;
        **a3 = ((1.0 - *&v63) * *v47) + (*&v63 * **a3);
        if (v55)
        {
          if (*(a3 + 28))
          {
            if (v55 >= 1)
            {
              v65 = *(a3 + 8);
              v66 = v55;
              v67 = v47 + 1;
              do
              {
                v68 = *v67++;
                *v65 = (v64 * v68) + (*&v63 * *v65);
                ++v65;
                --v66;
              }

              while (v66);
            }
          }

          else
          {
            *(a3 + 28) = v55;
            if (v55 >= 1)
            {
              v69 = *(a3 + 8);
              v70 = v55;
              v71 = v47 + 1;
              do
              {
                v72 = *v71++;
                *v69++ = v64 * v72;
                --v70;
              }

              while (v70);
            }
          }
        }

        if (v50)
        {
          v73 = &v49[v16];
          if (*(a3 + 32))
          {
            if (v50 >= 1)
            {
              v74 = *(a3 + 16);
              v75 = v50;
              do
              {
                v76 = *v73++;
                *v74 = (v64 * v76) + (*&v63 * *v74);
                ++v74;
                --v75;
              }

              while (v75);
            }
          }

          else
          {
            *(a3 + 32) = v50;
            *(a3 + 36) = v54;
            if (v50 >= 1)
            {
              v77 = *(a3 + 16);
              v78 = v50;
              do
              {
                v79 = *v73++;
                *v77++ = v64 * v79;
                --v78;
              }

              while (v78);
            }
          }
        }
      }
    }

    return;
  }

  v21 = *a2;
  v22 = *(a2 + 16);
  v23 = *(*(*a2 + 408) + 4 * v22);
  if (v16 >= 1)
  {
    v24 = (v21[45] + 4 * *(v21[42] + 8 * v22 + 4));
    v25 = v21[27];
    v26 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = v16;
    do
    {
      v28 = *v24++;
      *v26++ = *(v25 + 4 * v28);
      --v27;
    }

    while (v27);
  }

  if (!v12)
  {
    v81 = *a1;
    v19 = sub_1AFDB78B4(v23, &v81, v16, (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v12 = v19;
    v7 = v19 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_25;
  }

  v29 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v29;
  *(a3 + 32) = v29;
  *(a3 + 36) = 1;
  **a3 = (v29 - 2) / v29;
  if (v29 >= 1)
  {
    v30 = 1.0 / (v29 * v29);
    v31 = *(a3 + 8);
    v32 = *(a3 + 16);
    do
    {
      *v31++ = v30;
      *v32++ = v30;
      --v29;
    }

    while (v29);
  }
}

float *sub_1AF183E28(int *a1, _WORD *a2, float *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  v7 = &v14;
  __p = 0;
  if (v6 >= 0x11)
  {
    v7 = operator new(4 * v6);
    __p = v7;
    LODWORD(v6) = a1[6];
  }

  if (v6 >= 1)
  {
    v8 = (*(*a1 + 360) + 4 * *(*(*a1 + 336) + 8 * a1[4] + 4));
    v9 = *(*a1 + 216);
    v10 = v6;
    v11 = v7;
    do
    {
      v12 = *v8++;
      *v11 = *(v9 + 4 * v12);
      v11 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  sub_1AFDB7AAC(a2, v6, v7, a3);
  operator delete(__p);
  return a3;
}

_DWORD *sub_1AF183F2C(_DWORD *result, int *a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    v5 = *a2;
    v6 = a2[2];
    if (*(*(*a2 + 216) + 4 * v6) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v7 = *a2;
        LODWORD(v8) = a2[2];
LABEL_8:
        v9 = v8;
        v10 = *(*(v7 + 144) + 8 * v8);
        *(a3 + 24) = 2;
        *(a3 + 32) = v10;
        *(a3 + 36) = 0;
        v11 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v10 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v10 >= 1)
        {
          *_D0.i32 = (2.0 / v10) * 0.125;
          v29 = (v10 + 3) & 0xFFFFFFFC;
          v30 = vdupq_n_s64(v10 - 1);
          v31 = xmmword_1AFE21100;
          v32 = xmmword_1AFE21110;
          v33 = (*(a3 + 16) + 8);
          v34 = vdupq_n_s64(4uLL);
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v30, v32));
            if (vuzp1_s16(v35, _D0).u8[0])
            {
              *(v33 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v35, _D0).i8[2])
            {
              *(v33 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
            {
              *v33 = _D0.i32[0];
              v33[1] = _D0.i32[0];
            }

            v31 = vaddq_s64(v31, v34);
            v32 = vaddq_s64(v32, v34);
            v33 += 4;
            v29 -= 4;
          }

          while (v29);
        }

        v36 = *(*(v7 + 216) + 4 * v9);
        *v11 = vmla_n_f32(vmul_n_f32(*v11, 1.0 - v36), 0x3F0000003F000000, v36);
        if (v10 >= 1)
        {
          v37 = *(a3 + 16);
          do
          {
            *v37 = (1.0 - v36) * *v37;
            ++v37;
            --v10;
          }

          while (v10);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v7 = *a2;
      v8 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v8);
      if (v27 < 1.0 && ((*result & 0x60) == 0 || (v27 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v19 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v5 = *a2;
  LODWORD(v6) = a2[2];
LABEL_10:
  v17 = *(*(v5 + 144) + 8 * v6);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v17 == 2)
  {
    a3 += 16;
    v19 = 0.125;
LABEL_27:
    v28 = *a3;
    v28->f32[0] = v19;
    v28->f32[1] = v19;
    return result;
  }

  if (v17 >= 1)
  {
    *_D0.i32 = (2.0 / v17) * 0.125;
    v20 = (v17 + 3) & 0xFFFFFFFC;
    v21 = vdupq_n_s64(v17 - 1);
    v22 = xmmword_1AFE21100;
    v23 = xmmword_1AFE21110;
    v24 = (*(a3 + 16) + 8);
    v25 = vdupq_n_s64(4uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s16(v26, _D0).u8[0])
      {
        *(v24 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v26, _D0).i8[2])
      {
        *(v24 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
      {
        *v24 = _D0.i32[0];
        v24[1] = _D0.i32[0];
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 += 4;
      v20 -= 4;
    }

    while (v20);
  }

  return result;
}

void sub_1AF184204(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v29 = 1.0 / v9;
      *&a6 = cosf(v29 * 6.2832);
      *&a6 = v29 * (0.625 - (((*&a6 * 0.25) + 0.375) * ((*&a6 * 0.25) + 0.375)));
      **a3 = 1.0 - (*&a6 * v9);
      if (v9 < 1)
      {
        return;
      }
    }

    v30 = (v9 + 3) & 0xFFFFFFFC;
    v31 = vdupq_n_s64(v9 - 1);
    v32 = xmmword_1AFE21100;
    v33 = xmmword_1AFE21110;
    v34 = (*(a3 + 8) + 8);
    v35 = vdupq_n_s64(4uLL);
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v31, v33));
      if (vuzp1_s16(v36, *&a6).u8[0])
      {
        *(v34 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v36, *&a6).i8[2])
      {
        *(v34 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
      {
        *v34 = LODWORD(a6);
        v34[1] = LODWORD(a6);
      }

      v32 = vaddq_s64(v32, v35);
      v33 = vaddq_s64(v33, v35);
      v34 += 4;
      v30 -= 4;
    }

    while (v30);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v86 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * v14);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v16 = 0;
    v22 = 0.0;
    goto LABEL_31;
  }

  v20 = *a2;
  v21 = *(a2 + 16);
  v22 = *(*(*a2 + 408) + 4 * v21);
  if (v14 >= 1)
  {
    v23 = (v20[45] + 4 * *(v20[42] + 8 * v21 + 4));
    v24 = v20[27];
    v25 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = v14;
    do
    {
      v27 = *v23++;
      *v25++ = *(v24 + 4 * v27);
      --v26;
    }

    while (v26);
  }

  if (!v10)
  {
    v87 = *a1;
    v17 = sub_1AFDB78B4(v22, &v87, v14, (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v10 = v17;
    v8 = v17 - 1;
  }

  if (v8 > 1)
  {
LABEL_31:
    if (v10 == 4)
    {
      v86 = v13;
      v37 = 0xFFFFFFFF00000000;
      v38 = v16;
      do
      {
        v39 = *v38++;
        v37 += 0x100000000;
      }

      while (v39 <= 0.0);
      v40 = v14 << 32;
      v41 = &v16[4 * v14 - 4];
      do
      {
        v42 = *v41--;
        v40 -= 0x100000000;
      }

      while (v42 <= 0.0);
      v43 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v43;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v44 = *(a3 + 8);
      if (v43 >= 1)
      {
        bzero(*(a3 + 8), 4 * v43);
      }

      *(v44 + (v37 >> 30)) = 1040187392;
      *(v44 + (v40 >> 30)) = 1040187392;
      v13 = v86;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v87 = *a1;
    MEMORY[0x1EEE9AC00](v17, v18);
    bzero(&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    v45 = sub_1AF183E28(a2, &v87, (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v46 = v45;
    v47 = *(a2 + 20);
    v48 = *(*(a2 + 8) + 408);
    v49 = *(v48 + 4 * v47);
    if (!v13)
    {
      v45 = sub_1AFDB78B4(*(v48 + 4 * v47), &v87, v14, v45);
      v13 = v45;
      if (v45 == v10)
      {
        return;
      }
    }

    MEMORY[0x1EEE9AC00](v45, 4 * ((2 * v14) | 1));
    v51 = (&v86 - v50);
    bzero(&v86 - v50, v52);
    v54 = (v51 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v64 = 0xFFFFFFFF00000000;
        v65 = v46;
        do
        {
          v66 = *v65++;
          v64 += 0x100000000;
        }

        while (v66 <= 0.0);
        v67 = v14 << 32;
        v68 = &v46[v14 - 1];
        do
        {
          v69 = *v68--;
          v67 -= 0x100000000;
        }

        while (v69 <= 0.0);
        v55 = *(a2 + 24);
        *v51 = 1061158912;
        if (v55 >= 1)
        {
          bzero(v51 + 1, 4 * v55);
        }

        *(v54 + (v64 >> 30)) = 0.125;
        *(v54 + (v67 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v55) = 0;
        *v51 = 1065353216;
      }

      goto LABEL_75;
    }

    v55 = *(a2 + 28);
    if (v55 == 6)
    {
      *v51 = 1059061760;
      v53.i32[0] = 1031798784;
    }

    else
    {
      v70 = 1.0 / v55;
      *v53.i32 = cosf(v70 * 6.2832);
      *v53.i32 = v70 * (0.625 - (((*v53.i32 * 0.25) + 0.375) * ((*v53.i32 * 0.25) + 0.375)));
      *v51 = 1.0 - (*v53.i32 * v55);
      if (v55 < 1)
      {
LABEL_75:
        v78 = sub_1AFDB7908(&v87, v14, v16, v46, v22, v49);
        v79 = 1.0 - *&v78;
        **a3 = ((1.0 - *&v78) * *v51) + (*&v78 * **a3);
        if (v55)
        {
          if (*(a3 + 28))
          {
            if (v55 >= 1)
            {
              v80 = *(a3 + 8);
              v81 = v55;
              do
              {
                v82 = *v54++;
                *v80 = (v79 * v82) + (*&v78 * *v80);
                ++v80;
                --v81;
              }

              while (v81);
            }
          }

          else
          {
            *(a3 + 28) = v55;
            if (v55 >= 1)
            {
              v83 = *(a3 + 8);
              v84 = v55;
              do
              {
                v85 = *v54++;
                *v83++ = v79 * v85;
                --v84;
              }

              while (v84);
            }
          }
        }

        return;
      }
    }

    v71 = (v55 + 3) & 0xFFFFFFFC;
    v72 = vdupq_n_s64(v55 - 1);
    v73 = xmmword_1AFE21100;
    v74 = xmmword_1AFE21110;
    v75 = v51 + 4;
    v76 = vdupq_n_s64(4uLL);
    do
    {
      v77 = vmovn_s64(vcgeq_u64(v72, v74));
      if (vuzp1_s16(v77, v53).u8[0])
      {
        *(v75 - 3) = v53.i32[0];
      }

      if (vuzp1_s16(v77, v53).i8[2])
      {
        *(v75 - 2) = v53.i32[0];
      }

      if (vuzp1_s16(v53, vmovn_s64(vcgeq_u64(v72, *&v73))).i32[1])
      {
        *(v75 - 1) = v53.i32[0];
        *v75 = v53.i32[0];
      }

      v73 = vaddq_s64(v73, v76);
      v74 = vaddq_s64(v74, v76);
      v75 += 4;
      v71 -= 4;
    }

    while (v71);
    goto LABEL_75;
  }

  v28 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v28;
  *(a3 + 36) = 0;
  if (v28 == 6)
  {
    **a3 = 1059061760;
    v19.i32[0] = 1031798784;
  }

  else
  {
    v56 = 1.0 / v28;
    *v19.i32 = cosf(v56 * 6.2832);
    *v19.i32 = v56 * (0.625 - (((*v19.i32 * 0.25) + 0.375) * ((*v19.i32 * 0.25) + 0.375)));
    **a3 = 1.0 - (*v19.i32 * v28);
    if (v28 < 1)
    {
      return;
    }
  }

  v57 = (v28 + 3) & 0xFFFFFFFC;
  v58 = vdupq_n_s64(v28 - 1);
  v59 = xmmword_1AFE21100;
  v60 = xmmword_1AFE21110;
  v61 = (*(a3 + 8) + 8);
  v62 = vdupq_n_s64(4uLL);
  do
  {
    v63 = vmovn_s64(vcgeq_u64(v58, v60));
    if (vuzp1_s16(v63, v19).u8[0])
    {
      *(v61 - 2) = v19.i32[0];
    }

    if (vuzp1_s16(v63, v19).i8[2])
    {
      *(v61 - 1) = v19.i32[0];
    }

    if (vuzp1_s16(v19, vmovn_s64(vcgeq_u64(v58, *&v59))).i32[1])
    {
      *v61 = v19.i32[0];
      v61[1] = v19.i32[0];
    }

    v59 = vaddq_s64(v59, v62);
    v60 = vaddq_s64(v60, v62);
    v61 += 4;
    v57 -= 4;
  }

  while (v57);
}

void sub_1AF184978(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 8 * v17) = 0;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_1AFE21110;
            v26 = xmmword_1AFE21100;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 8 * v17) = 0;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 8 * v17) = vmla_n_f32(*(*a4 + 8 * v17), *(*a3 + 8 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void sub_1AF184BB8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v46 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v39 = v8[2];
  v12 = *(*(v39 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v52;
  v49 = v52;
  v50 = v13;
  v51 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v49 = v15;
    v51 = v13;
    v14 = v15;
  }

  v45[0] = v54;
  v45[1] = 0;
  v45[2] = v14;
  memset(&v45[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v45[3]) = 2;
    LODWORD(v45[4]) = 0;
    v54[0] = 0x3F0000003F000000;
    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v43 = v9;
  if (*(v9 + 4) >= 1)
  {
    v41 = v12;
    v42 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v41[18] + 4 * *(v41[12] + 4 * v17));
        if (*(v41[21] + *v18))
        {
          v35 = v41[9];
          v36 = *(v35 + 2 * v17);
          if (*(v35 + 2 * v17))
          {
            v37 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v37 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v47);
              v38 = v18[v37];
              *(*a4 + 8 * v38) = 0;
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v47));
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v48));
              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          if ((v40 & 1) == 0)
          {
            v44 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF1833B0(&v46, &v43, v45, v19, (*(*(v39 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v47);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v47), *v54);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v48), *(v54 + 1));
          if (SLODWORD(v45[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v45[4]) == 1)
                {
                  v26 = (v41[12] + 4 * *(v42[21] + 4 * v25));
                  v27 = *a4;
                  v28 = *a4;
                }

                else
                {
                  v29 = (2 * v25) | 1;
                  v30 = *(v9 + 24);
                  v31 = (*(v9 + 72) + 4 * *(v30 + 4 * v29));
                  v32 = *(v30 + 8 * v25);
                  v33 = 1;
                  do
                  {
                    v34 = *v31++;
                    ++v33;
                  }

                  while (v16 != v34);
                  if (v33 < v32)
                  {
                    v32 = 0;
                  }

                  v26 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v29) + 4 * (v33 - v32));
                  v28 = *a4;
                  v27 = *a3;
                }

                *(v28 + 8 * v20) = vmla_n_f32(*(v28 + 8 * v20), *(v27 + 8 * *v26), *&v49[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v42;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF184F88(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v9;
  v74 = 32;
  v76 = 0;
  if (2 * v9 >= 0x21)
  {
    v76 = operator new(8 * v9);
    v72 = v76;
    v74 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v67 = &v70;
  v68 = v9;
  v69 = 16;
  v71 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v71 = v10;
    v67 = v10;
    v69 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 96) + 4 * v11);
        v18 = (*(v58 + 144) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v35 = v50[9];
          v36 = *(v35 + 2 * v16);
          if (*(v35 + 2 * v16))
          {
            v37 = 0;
            v38 = v22 + v19;
            v51 = v38;
            v52 = *(v58 + 168) + v17;
            do
            {
              v39 = *(v15[5] + 2 * (v37 + *(*(v15[4] + 96) + 4 * v16)));
              v40 = v18[v39];
              v41 = v20[v37];
              *(*a4 + 8 * v41) = 0;
              if (!v14 && (*(v38 + v37) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v11, v39, v66);
                if ((*(v52 + v39) & 0x10) != 0)
                {
                  if ((*(v52 + v39) & 0x20) != 0)
                  {
                    v46 = v39 == 0;
                    v44 = v56;
                    v45 = v11;
                  }

                  else
                  {
                    v44 = v56;
                    v45 = v11;
                    v46 = v39;
                  }

                  v47 = sub_1AFDC4744(v44, v45, v46, v16);
                  v48 = 1.0 - v47;
                  v43 = v47 + ((1.0 - v47) * 0.75);
                  v42 = v48 * 0.125;
                }

                else
                {
                  v42 = 0.125;
                  v43 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SLODWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SHIDWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * v40), v43);
                v38 = v51;
              }

              else
              {
                *(*a4 + 8 * v41) = vadd_f32(*(*v12 + 8 * v40), *(*a4 + 8 * v41));
              }

              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v72;
          v26 = v72 + v24;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v26;
          memset(&v66[3], 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          sub_1AF183850(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v29 = (*(v57 + 264) + 8 * v11);
            v30 = *v29;
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * v29[1]);
              do
              {
                v32 = *v31++;
                v33 = *(v50[12] + 4 * *(v54[21] + 4 * v32));
                LODWORD(v32) = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * v33), *&v32);
                --v30;
              }

              while (v30);
            }
          }

          v12 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v11, v67);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              v34 = 0;
              do
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * *(v67 + v34)), *(v25 + v34));
                v34 += 4;
              }

              while (4 * v24 != v34);
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v71;
  }

  operator delete(v10);
  operator delete(v76);
}

void sub_1AF1854D0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v46 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v39 = v8[2];
  v12 = *(*(v39 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v52;
  v49 = v52;
  v50 = v13;
  v51 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v49 = v15;
    v51 = v13;
    v14 = v15;
  }

  v45[0] = v54;
  v45[1] = 0;
  v45[2] = v14;
  memset(&v45[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v45[3]) = 2;
    LODWORD(v45[4]) = 0;
    v54[0] = 0x3F0000003F000000;
    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v43 = v9;
  if (*(v9 + 4) >= 1)
  {
    v41 = v12;
    v42 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v41[18] + 4 * *(v41[12] + 4 * v17));
        if (*(v41[21] + *v18))
        {
          v35 = v41[9];
          v36 = *(v35 + 2 * v17);
          if (*(v35 + 2 * v17))
          {
            v37 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v37 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v47);
              v38 = v18[v37];
              *(*a4 + 8 * v38) = 0;
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v47));
              *(*a4 + 8 * v38) = vmla_f32(*(*a4 + 8 * v38), 0x3F0000003F000000, *(*a3 + 8 * v48));
              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          if ((v40 & 1) == 0)
          {
            v44 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF183F2C(&v46, &v43, v45, v19, (*(*(v39 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v47);
          v20 = *v18;
          *(*a4 + 8 * v20) = 0;
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v47), *v54);
          *(*a4 + 8 * v20) = vmla_n_f32(*(*a4 + 8 * v20), *(*a3 + 8 * v48), *(v54 + 1));
          if (SLODWORD(v45[4]) >= 1)
          {
            v21 = (*(v9 + 144) + 8 * v16);
            v22 = *v21;
            if (v22 >= 1)
            {
              v23 = 0;
              v24 = *(v9 + 168) + 4 * v21[1];
              do
              {
                v25 = *(v24 + 4 * v23);
                if (BYTE4(v45[4]) == 1)
                {
                  v26 = (v41[12] + 4 * *(v42[21] + 4 * v25));
                  v27 = *a4;
                  v28 = *a4;
                }

                else
                {
                  v29 = (2 * v25) | 1;
                  v30 = *(v9 + 24);
                  v31 = (*(v9 + 72) + 4 * *(v30 + 4 * v29));
                  v32 = *(v30 + 8 * v25);
                  v33 = 1;
                  do
                  {
                    v34 = *v31++;
                    ++v33;
                  }

                  while (v16 != v34);
                  if (v33 < v32)
                  {
                    v32 = 0;
                  }

                  v26 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v29) + 4 * (v33 - v32));
                  v28 = *a4;
                  v27 = *a3;
                }

                *(v28 + 8 * v20) = vmla_n_f32(*(v28 + 8 * v20), *(v27 + 8 * *v26), *&v49[4 * v23++]);
              }

              while (v23 != v22);
            }
          }
        }
      }

      ++v16;
      v8 = v42;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF1858A0(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v10;
  v74 = 32;
  v76 = 0;
  if (2 * v10 >= 0x21)
  {
    v76 = operator new(8 * v10);
    v72 = v76;
    v74 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v67 = &v70;
  v68 = v10;
  v69 = 16;
  v71 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v71 = v11;
    v67 = v11;
    v69 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 96) + 4 * v12);
        v19 = (*(v58 + 144) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v37 = v50[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v51 = v40;
            v52 = *(v58 + 168) + v18;
            do
            {
              v41 = *(v16[5] + 2 * (v39 + *(*(v16[4] + 96) + 4 * v17)));
              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 8 * v43) = 0;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v12, v41, v66);
                if ((*(v52 + v41) & 0x10) != 0)
                {
                  if ((*(v52 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v45 = v56;
                    v46 = v12;
                  }

                  else
                  {
                    v45 = v56;
                    v46 = v12;
                    v47 = v41;
                  }

                  *&a6 = sub_1AFDC4744(v45, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v44 = v48 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SLODWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SHIDWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * v42), *&a6);
                v40 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v42), *(*a4 + 8 * v43)));
                *(*a4 + 8 * v43) = a6;
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v72;
          v28 = v72 + v26;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v28;
          memset(&v66[3], 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          sub_1AF184204(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v31 = (*(v57 + 264) + 8 * v12);
            v32 = *v31;
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * v31[1]);
              do
              {
                v34 = *v33++;
                v35 = *(v50[12] + 4 * *(v54[21] + 4 * v34));
                LODWORD(v34) = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * v35), *&v34);
                --v32;
              }

              while (v32);
            }
          }

          v13 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v12, v67);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              v36 = 0;
              do
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * *(v67 + v36)), *(v27 + v36));
                v36 += 4;
              }

              while (4 * v26 != v36);
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v71;
  }

  operator delete(v11);
  operator delete(v76);
}

void sub_1AF185DE8(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v30 = *MEMORY[0x1E69E9840];
  v21 = *(*(*a1 + 64) + 8 * a2 - 8);
  v22 = v21[1];
  v9 = *(v21[60] + 8 * a5);
  v10 = *(*(v22 + 456) + 8 * a5);
  v11 = *(*(v21[2] + 456) + 8 * a5);
  v12 = *(v22 + 16);
  v25 = &v28;
  v26 = v12;
  v27 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v25 = v8;
    v27 = v12;
  }

  if (*(v22 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v21[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v17 = v11[9];
          v18 = *(v17 + 2 * v14);
          if (*(v17 + 2 * v14))
          {
            v19 = 0;
            do
            {
              sub_1AFDAFFBC(v10, v13, *(*(v9 + 40) + 2 * (v19 + *(*(*(v9 + 32) + 96) + 4 * v14))), &v23);
              v20 = v15[v19];
              *(*a4 + 8 * v20) = 0;
              *(*a4 + 8 * v20) = vmla_f32(*(*a4 + 8 * v20), 0x3F0000003F000000, *(*a3 + 8 * v23));
              *(*a4 + 8 * v20) = vmla_f32(*(*a4 + 8 * v20), 0x3F0000003F000000, *(*a3 + 8 * v24));
              ++v19;
            }

            while (v18 != v19);
          }
        }

        else
        {
          sub_1AFDAFFBC(v10, v13, 0, &v23);
          v16 = *v15;
          *(*a4 + 8 * v16) = 0;
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v23));
          *(*a4 + 8 * v16) = vmla_f32(*(*a4 + 8 * v16), 0x3F0000003F000000, *(*a3 + 8 * v24));
        }
      }

      ++v13;
    }

    while (v13 < *(v22 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF186028(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 96) + 4 * v14);
        v19 = (*(v49 + 144) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 168) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(v11[5] + 2 * (v29 + *(*(v11[4] + 96) + 4 * v17)));
                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  sub_1AFDAFE18(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    v39 = sub_1AFDC4744(v36, v37, v38, v17);
                    v40 = 1.0 - v39;
                    v35 = v39 + ((1.0 - v39) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void sub_1AF1863E0(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v7 = (*(v58 + 12) & 1) != 0 || *v6 == 0;
  v53 = v7;
  v56 = *(v54[60] + 8 * a5);
  v8 = *(*(v49 + 456) + 8 * a5);
  v9 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v9;
  v74 = 32;
  v76 = 0;
  if (2 * v9 >= 0x21)
  {
    v76 = operator new(8 * v9);
    v72 = v76;
    v74 = 2 * v9;
    v9 = *(v57 + 20);
  }

  v10 = 0;
  v67 = &v70;
  v68 = v9;
  v69 = 16;
  v71 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v71 = v10;
    v67 = v10;
    v69 = v9;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v8;
    v11 = 0;
    v13 = v54;
    v12 = a3;
    v14 = v53;
    v15 = v56;
    do
    {
      v16 = *(v13[30] + 4 * v11);
      if (v16 != -1)
      {
        v17 = *(*(v58 + 96) + 4 * v11);
        v18 = (*(v58 + 144) + 4 * v17);
        v19 = *(v50[12] + 4 * v16);
        v20 = (v50[18] + 4 * v19);
        v21 = *v20;
        v22 = v50[21];
        if ((*(v22 + v21) & 1) == 0 && v14)
        {
          *(*a4 + 8 * v21) = 0;
          *(*a4 + 8 * *v20) = vadd_f32(*(*v12 + 8 * *v18), *(*a4 + 8 * *v20));
        }

        else if (*(v22 + v21))
        {
          v35 = v50[9];
          v36 = *(v35 + 2 * v16);
          if (*(v35 + 2 * v16))
          {
            v37 = 0;
            v38 = v22 + v19;
            v51 = v38;
            v52 = *(v58 + 168) + v17;
            do
            {
              v39 = *(v15[5] + 2 * (v37 + *(*(v15[4] + 96) + 4 * v16)));
              v40 = v18[v39];
              v41 = v20[v37];
              *(*a4 + 8 * v41) = 0;
              if (!v14 && (*(v38 + v37) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v11, v39, v66);
                if ((*(v52 + v39) & 0x10) != 0)
                {
                  if ((*(v52 + v39) & 0x20) != 0)
                  {
                    v46 = v39 == 0;
                    v44 = v56;
                    v45 = v11;
                  }

                  else
                  {
                    v44 = v56;
                    v45 = v11;
                    v46 = v39;
                  }

                  v47 = sub_1AFDC4744(v44, v45, v46, v16);
                  v48 = 1.0 - v47;
                  v43 = v47 + ((1.0 - v47) * 0.75);
                  v42 = v48 * 0.125;
                }

                else
                {
                  v42 = 0.125;
                  v43 = 0.75;
                }

                v13 = v54;
                v12 = a3;
                v14 = v53;
                v15 = v56;
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SLODWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * SHIDWORD(v66[0])), v42);
                *(*a4 + 8 * v41) = vmla_n_f32(*(*a4 + 8 * v41), *(*a3 + 8 * v40), v43);
                v38 = v51;
              }

              else
              {
                *(*a4 + 8 * v41) = vadd_f32(*(*v12 + 8 * v40), *(*a4 + 8 * v41));
              }

              ++v37;
            }

            while (v36 != v37);
          }
        }

        else
        {
          v24 = *(*(v57 + 336) + 8 * v11);
          v59 = 0.0;
          v25 = v72;
          v26 = v72 + v24;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v26;
          memset(&v66[3], 0, 13);
          v61 = v11;
          v62 = v16;
          v63 = *(*(v60[0] + 336) + 8 * v11);
          v64 = *(*(v60[0] + 264) + 8 * v11);
          sub_1AF183850(&v65, v60, v66, (*(*(v57 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          v13 = v54;
          v27 = *v18;
          v28 = *v20;
          *(*a4 + 8 * v28) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v29 = (*(v57 + 264) + 8 * v11);
            v30 = *v29;
            if (v30 >= 1)
            {
              v31 = (*(v57 + 288) + 4 * v29[1]);
              do
              {
                v32 = *v31++;
                v33 = *(v50[12] + 4 * *(v54[21] + 4 * v32));
                LODWORD(v32) = *v26++;
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a4 + 8 * v33), *&v32);
                --v30;
              }

              while (v30);
            }
          }

          v12 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v11, v67);
            v13 = v54;
            v12 = a3;
            if (v24 >= 1)
            {
              v34 = 0;
              do
              {
                *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*a3 + 8 * *(v67 + v34)), *(v25 + v34));
                v34 += 4;
              }

              while (4 * v24 != v34);
            }
          }

          *(*a4 + 8 * v28) = vmla_n_f32(*(*a4 + 8 * v28), *(*v12 + 8 * v27), v59);
          v14 = v53;
          v15 = v56;
        }
      }

      ++v11;
    }

    while (v11 < *(v57 + 8));
    v10 = v71;
  }

  operator delete(v10);
  operator delete(v76);
}

void sub_1AF186928(uint64_t a1, int a2, void *a3, void *a4, int a5, double a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v54 = *(*(*a1 + 64) + 8 * a2 - 8);
  v65 = *(*a1 + 4);
  v57 = v54[1];
  v49 = v54[2];
  v58 = *(*(v57 + 456) + 8 * a5);
  v8 = (*(v58 + 12) & 1) != 0 || *v7 == 0;
  v53 = v8;
  v56 = *(v54[60] + 8 * a5);
  v9 = *(*(v49 + 456) + 8 * a5);
  v10 = *(v57 + 20);
  v72 = &v75;
  v73 = 2 * v10;
  v74 = 32;
  v76 = 0;
  if (2 * v10 >= 0x21)
  {
    v76 = operator new(8 * v10);
    v72 = v76;
    v74 = 2 * v10;
    v10 = *(v57 + 20);
  }

  v11 = 0;
  v67 = &v70;
  v68 = v10;
  v69 = 16;
  v71 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v71 = v11;
    v67 = v11;
    v69 = v10;
  }

  v60[0] = v57;
  v60[1] = v49;
  if (*(v57 + 8) >= 1)
  {
    v50 = v9;
    v12 = 0;
    v14 = v54;
    v13 = a3;
    v15 = v53;
    v16 = v56;
    do
    {
      v17 = *(v14[30] + 4 * v12);
      if (v17 != -1)
      {
        v18 = *(*(v58 + 96) + 4 * v12);
        v19 = (*(v58 + 144) + 4 * v18);
        v20 = *(v50[12] + 4 * v17);
        v21 = (v50[18] + 4 * v20);
        v22 = *v21;
        v23 = v50[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = *v21;
          a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * *v19), *(*a4 + 8 * v25)));
          *(*a4 + 8 * v25) = a6;
        }

        else if (*(v23 + v22))
        {
          v37 = v50[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            v40 = v23 + v20;
            v51 = v40;
            v52 = *(v58 + 168) + v18;
            do
            {
              v41 = *(v16[5] + 2 * (v39 + *(*(v16[4] + 96) + 4 * v17)));
              v42 = v19[v41];
              v43 = v21[v39];
              *(*a4 + 8 * v43) = 0;
              if (!v15 && (*(v40 + v39) & 8) != 0)
              {
                sub_1AFDAFE18(v58, v12, v41, v66);
                if ((*(v52 + v41) & 0x10) != 0)
                {
                  if ((*(v52 + v41) & 0x20) != 0)
                  {
                    v47 = v41 == 0;
                    v45 = v56;
                    v46 = v12;
                  }

                  else
                  {
                    v45 = v56;
                    v46 = v12;
                    v47 = v41;
                  }

                  *&a6 = sub_1AFDC4744(v45, v46, v47, v17);
                  v48 = 1.0 - *&a6;
                  *&a6 = *&a6 + ((1.0 - *&a6) * 0.75);
                  v44 = v48 * 0.125;
                }

                else
                {
                  v44 = 0.125;
                  LODWORD(a6) = 0.75;
                }

                v14 = v54;
                v13 = a3;
                v15 = v53;
                v16 = v56;
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SLODWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * SHIDWORD(v66[0])), v44);
                *(*a4 + 8 * v43) = vmla_n_f32(*(*a4 + 8 * v43), *(*a3 + 8 * v42), *&a6);
                v40 = v51;
              }

              else
              {
                a6 = COERCE_DOUBLE(vadd_f32(*(*v13 + 8 * v42), *(*a4 + 8 * v43)));
                *(*a4 + 8 * v43) = a6;
              }

              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          v26 = *(*(v57 + 336) + 8 * v12);
          v59 = 0.0;
          v27 = v72;
          v28 = v72 + v26;
          v66[0] = &v59;
          v66[1] = v72;
          v66[2] = v28;
          memset(&v66[3], 0, 13);
          v61 = v12;
          v62 = v17;
          v63 = *(*(v60[0] + 336) + 8 * v12);
          v64 = *(*(v60[0] + 264) + 8 * v12);
          sub_1AF184204(&v65, v60, v66, (*(*(v57 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v49 + 432) + 2 * v17) >> 7) & 0xF, a6);
          v14 = v54;
          v29 = *v19;
          v30 = *v21;
          *(*a4 + 8 * v30) = 0;
          if (SLODWORD(v66[4]) >= 1)
          {
            v31 = (*(v57 + 264) + 8 * v12);
            v32 = *v31;
            if (v32 >= 1)
            {
              v33 = (*(v57 + 288) + 4 * v31[1]);
              do
              {
                v34 = *v33++;
                v35 = *(v50[12] + 4 * *(v54[21] + 4 * v34));
                LODWORD(v34) = *v28++;
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a4 + 8 * v35), *&v34);
                --v32;
              }

              while (v32);
            }
          }

          v13 = a3;
          if (SHIDWORD(v66[3]) >= 1)
          {
            sub_1AFDB00B8(v58, v12, v67);
            v14 = v54;
            v13 = a3;
            if (v26 >= 1)
            {
              v36 = 0;
              do
              {
                *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *(*a3 + 8 * *(v67 + v36)), *(v27 + v36));
                v36 += 4;
              }

              while (4 * v26 != v36);
            }
          }

          a6 = *(*v13 + 8 * v29);
          *(*a4 + 8 * v30) = vmla_n_f32(*(*a4 + 8 * v30), *&a6, v59);
          v15 = v53;
          v16 = v56;
        }
      }

      ++v12;
    }

    while (v12 < *(v57 + 8));
    v11 = v71;
  }

  operator delete(v11);
  operator delete(v76);
}

void sub_1AF186E70(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v47 = v6;
  v48 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v49 = *(*(v48 + 456) + 8 * a5);
  v10 = (*(v49 + 12) & 1) != 0 || **a1 == 0;
  v42 = v10;
  v11 = *(v8 + 8 * a5);
  v41 = *(v9 + 8 * a5);
  v12 = *(v48 + 20);
  v56 = &v59;
  v57 = 2 * v12;
  v58 = 32;
  v60 = 0;
  if (2 * v12 >= 0x21)
  {
    v60 = operator new(8 * v12);
    v56 = v60;
    v58 = 2 * v12;
    v12 = *(v48 + 20);
  }

  v13 = 0;
  v51 = &v54;
  v52 = v12;
  v53 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v51 = v13;
    v53 = v12;
  }

  if (*(v48 + 8) >= 1)
  {
    v14 = 0;
    v15 = a3;
    v16 = v42;
    while (1)
    {
      v17 = *(v47[30] + 4 * v14);
      if (v17 != -1)
      {
        v18 = *(*(v49 + 96) + 4 * v14);
        v19 = (*(v49 + 144) + 4 * v18);
        v20 = *(v41[12] + 4 * v17);
        v21 = (v41[18] + 4 * v20);
        v22 = *v21;
        v23 = v41[21];
        if ((*(v23 + v22) & 1) == 0 && v16)
        {
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * *v21);
          v26 = *v19;
        }

        else
        {
          if (*(v23 + v22))
          {
            v27 = v41[9];
            v28 = *(v27 + 2 * v17);
            if (*(v27 + 2 * v17))
            {
              v29 = 0;
              v45 = *(v49 + 168) + v18;
              v46 = *(v27 + 2 * v17);
              v30 = v23 + v20;
              v44 = v23 + v20;
              do
              {
                v31 = *(v11[5] + 2 * (v29 + *(*(v11[4] + 96) + 4 * v17)));
                v32 = v19[v31];
                v33 = v21[v29];
                *(*a4 + 8 * v33) = 0;
                if (!v16 && (*(v30 + v29) & 8) != 0)
                {
                  sub_1AFDAFE18(v49, v14, v31, v50);
                  if ((*(v45 + v31) & 0x10) != 0)
                  {
                    if ((*(v45 + v31) & 0x20) != 0)
                    {
                      v38 = v31 == 0;
                      v36 = v11;
                      v37 = v14;
                    }

                    else
                    {
                      v36 = v11;
                      v37 = v14;
                      v38 = v31;
                    }

                    v39 = sub_1AFDC4744(v36, v37, v38, v17);
                    v40 = 1.0 - v39;
                    v35 = v39 + ((1.0 - v39) * 0.75);
                    v34 = v40 * 0.125;
                  }

                  else
                  {
                    v34 = 0.125;
                    v35 = 0.75;
                  }

                  v15 = a3;
                  v16 = v42;
                  v28 = v46;
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[0]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v50[1]), v34);
                  *(*a4 + 8 * v33) = vmla_n_f32(*(*a4 + 8 * v33), *(*a3 + 8 * v32), v35);
                  v30 = v44;
                }

                else
                {
                  *(*a4 + 8 * v33) = vadd_f32(*(*v15 + 8 * v32), *(*a4 + 8 * v33));
                }

                ++v29;
              }

              while (v28 != v29);
            }

            goto LABEL_19;
          }

          v26 = *v19;
          *(*a4 + 8 * v22) = 0;
          v25 = (*a4 + 8 * v22);
        }

        *v25 = vadd_f32(*(*v15 + 8 * v26), *v25);
      }

LABEL_19:
      if (++v14 >= *(v48 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v60);
}

void sub_1AF187228(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, int16x4_t a5)
{
  v9 = **a1;
  if (v9)
  {
    if (v9 == 2)
    {
      sub_1AF187884(a1, a2, a3, a4, a5);
      sub_1AF187FAC(a1, a2, a3, a4);

      sub_1AF188234(a1, a2, a3, a4, v10);
    }

    else if (v9 == 1)
    {
      sub_1AF187884(a1, a2, a3, a4, a5);
      sub_1AF187A9C(a1, a2, a3, a4);

      sub_1AF187D24(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_1AF187884(a1, a2, a3, a4, a5);
    v11 = 0;
    v12 = *(*(*a1 + 64) + 8 * a2 - 8);
    v13 = *(v12 + 8);
    v14 = *(v13 + 16);
    __p = 0;
    if (v14 >= 9)
    {
      v11 = operator new(4 * v14);
      __p = v11;
    }

    v15 = *(v13 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      do
      {
        v19 = *(*(v12 + 216) + 4 * v17);
        if (v19 != -1)
        {
          v20 = (*(v13 + 120) + v16);
          *(*a4 + 16 * v19) = 0uLL;
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * *v20));
          *(*a4 + 16 * v19) = vmlaq_f32(*(*a4 + 16 * v19), v18, *(*a3 + 16 * v20[1]));
          v15 = *(v13 + 4);
        }

        ++v17;
        v16 += 8;
      }

      while (v17 < v15);
      v11 = __p;
    }

    operator delete(v11);
    v21 = 0;
    v22 = *(*(*a1 + 64) + 8 * a2 - 8);
    v23 = *(v22 + 8);
    v28 = 0;
    if ((2 * *(v23 + 20)) >= 0x21)
    {
      v21 = operator new(4 * (2 * *(v23 + 20)));
      v28 = v21;
    }

    v24 = *(v23 + 8);
    if (v24 >= 1)
    {
      for (i = 0; i < v24; ++i)
      {
        v26 = *(*(v22 + 240) + 4 * i);
        if (v26 != -1)
        {
          *(*a4 + 16 * v26) = 0uLL;
          *(*a4 + 16 * v26) = vaddq_f32(*(*a3 + 16 * i), *(*a4 + 16 * v26));
          v24 = *(v23 + 8);
        }
      }

      v21 = v28;
    }

    operator delete(v21);
  }
}

void sub_1AF18755C(int **a1, int a2, uint64_t *a3, uint64_t *a4, int a5, int16x4_t a6)
{
  v11 = **a1;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
      sub_1AF189000(a1, a2, a3, a4, a5);

      sub_1AF1893BC(a1, a2, a3, a4, a5, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
      sub_1AF1886F8(a1, a2, a3, a4, a5);

      sub_1AF188AB4(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
    sub_1AF189908(a1, a2, a3, a4, a5);

    sub_1AF189B3C(a1, a2, a3, a4, a5);
  }
}

void sub_1AF1876F0(int **a1, int a2, uint64_t *a3, uint64_t *a4, int a5, int16x4_t a6)
{
  v11 = **a1;
  if (v11)
  {
    if (v11 == 2)
    {
      sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
      sub_1AF189000(a1, a2, a3, a4, a5);

      sub_1AF18A438(a1, a2, a3, a4, a5, v12);
    }

    else if (v11 == 1)
    {
      sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
      sub_1AF1886F8(a1, a2, a3, a4, a5);

      sub_1AF189EEC(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1AF1884BC(a1, a2, a3, a4, a5, a6);
    sub_1AF189908(a1, a2, a3, a4, a5);

    sub_1AF18A984(a1, a2, a3, a4, a5);
  }
}

void sub_1AF187884(uint64_t a1, int a2, void *a3, void *a4, int16x4_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = v9[5];
    v26 = &v27;
    __p = 0;
    if (v10 >= 0x11)
    {
      v8 = operator new(4 * v10);
      __p = v8;
      v26 = v8;
    }

    if (*v9 >= 1)
    {
      v11 = 0;
      a5.i32[0] = 1.0;
      v12 = vdupq_n_s64(4uLL);
      do
      {
        v13 = *(*(v5 + 168) + 4 * v11);
        if (v13 != -1)
        {
          v14 = (*(v9 + 3) + 8 * v11);
          v15 = *v14;
          if (v15 < 1)
          {
            *(*a4 + 16 * v13) = 0uLL;
          }

          else
          {
            v16 = *(v9 + 6) + 4 * v14[1];
            v17 = 1.0 / v15;
            v18 = (v15 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v15 - 1);
            v20 = (v26 + 1);
            v21 = xmmword_1AFE21110;
            v22 = xmmword_1AFE21100;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, a5).u8[0])
              {
                *(v20 - 2) = v17;
              }

              if (vuzp1_s16(v23, a5).i8[2])
              {
                *(v20 - 1) = v17;
              }

              if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v17;
                v20[1] = v17;
              }

              v22 = vaddq_s64(v22, v12);
              v21 = vaddq_s64(v21, v12);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            *(*a4 + 16 * v13) = 0uLL;
            v24 = 0;
            v25 = 4 * v15;
            do
            {
              *(*a4 + 16 * v13) = vmlaq_n_f32(*(*a4 + 16 * v13), *(*a3 + 16 * *(v16 + v24)), *(v26 + v24));
              v24 += 4;
            }

            while (v25 != v24);
          }
        }

        ++v11;
      }

      while (v11 < *v9);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void sub_1AF187A9C(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v34 = v9[2];
  v38 = *(v8 + 4);
  v11 = *(v10 + 16);
  v39 = &v42;
  v40 = v11;
  v41 = 8;
  v36 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v39 = v7;
    v41 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v35[0] = v44;
        v35[1] = 0;
        v35[2] = v39;
        memset(&v35[3], 0, 13);
        v37 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF1833B0(&v38, &v36, v35, v20, (*(*(v34 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v44[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v44);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v35[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v23 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v35[4]) == 1)
            {
              v24 = (v9[21] + 4 * v23);
              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v10 + 24);
              v28 = *(v27 + 8 * v23 + 4);
              v29 = (*(v10 + 72) + 4 * v28);
              v30 = *(v27 + 8 * v23);
              v31 = 1;
              do
              {
                v32 = *v29++;
                ++v31;
              }

              while (i != v32);
              v33 = *(v10 + 48) + 4 * v28;
              if (v31 < v30)
              {
                v30 = 0;
              }

              v24 = (v33 + 4 * (v31 - v30));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * *v24), v39[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF187D24(uint64_t *a1, int a2, void *a3, void *a4)
{
  v7 = 0;
  v48 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v11 = v9[1];
  v10 = v9[2];
  v42 = *(v8 + 4);
  v12 = 2 * *(v11 + 20);
  v43 = &v46;
  v44 = v12;
  v45 = 32;
  v37[0] = v11;
  v37[1] = v10;
  v30 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v7 = operator new(4 * v12);
    __p = v7;
    v43 = v7;
    v45 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v9[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = *(v11 + 336);
        v17 = (8 * i) | 4;
        v33 = *(v16 + v17);
        v34 = *(v11 + 360);
        v18 = *(v16 + 8 * i);
        v19 = *(v11 + 264);
        v32 = *(v19 + v17);
        v20 = *(v19 + 8 * i);
        v36 = 0.0;
        v21 = v43;
        v22 = v43 + v18;
        v35[0] = &v36;
        v35[1] = v43;
        v35[2] = v22;
        memset(&v35[3], 0, 13);
        v38 = i;
        v39 = v15;
        v40 = *(*(v37[0] + 336) + 8 * i);
        v41 = *(*(v37[0] + 264) + 8 * i);
        v31 = *(v11 + 288);
        sub_1AF183850(&v42, v37, v35, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v30 + 432) + 2 * v15) >> 7) & 0xF);
        *(*a4 + 16 * v15) = 0u;
        if (SLODWORD(v35[4]) >= 1 && v20 >= 1)
        {
          v23 = (v31 + 4 * v32);
          do
          {
            v24 = *v23++;
            v25 = *(v9[21] + 4 * v24);
            LODWORD(v24) = *v22++;
            *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a4 + 16 * v25), *&v24);
            --v20;
          }

          while (v20);
        }

        if (SHIDWORD(v35[3]) >= 1 && v18 >= 1)
        {
          v27 = (v34 + 4 * v33);
          do
          {
            v28 = *v27++;
            v29 = (*(v11 + 120) + 8 * v28);
            LODWORD(v28) = *v21;
            v21 = (v21 + 4);
            *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * v29[i == *v29]), *&v28);
            --v18;
          }

          while (v18);
        }

        *(*a4 + 16 * v15) = vmlaq_n_f32(*(*a4 + 16 * v15), *(*a3 + 16 * i), v36);
        v13 = *(v11 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF187FAC(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*(v8 + 64) + 8 * a2 - 8);
  v10 = v9[1];
  v34 = v9[2];
  v38 = *(v8 + 4);
  v11 = *(v10 + 16);
  v39 = &v42;
  v40 = v11;
  v41 = 8;
  v36 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v39 = v7;
    v41 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = (*(v10 + 120) + 8 * i);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v35[0] = v44;
        v35[1] = 0;
        v35[2] = v39;
        memset(&v35[3], 0, 13);
        v37 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_1AF183F2C(&v38, &v36, v35, v20, (*(*(v34 + 432) + 2 * v14) >> 7) & 0xF);
        *(*a4 + 16 * v14) = 0u;
        v21 = v44[0];
        *(*a4 + 16 * v14) = vmlaq_n_f32(*(*a4 + 16 * v14), *(*a3 + 16 * *v15), *v44);
        *(*a4 + 16 * v14) = vmlaq_lane_f32(*(*a4 + 16 * v14), *(*a3 + 16 * v15[1]), v21, 1);
        if (SLODWORD(v35[4]) >= 1 && v18 >= 1)
        {
          for (j = 0; j != v18; ++j)
          {
            v23 = *(v16 + 4 * v19 + 4 * j);
            if (BYTE4(v35[4]) == 1)
            {
              v24 = (v9[21] + 4 * v23);
              v25 = *a4;
              v26 = *a4;
            }

            else
            {
              v27 = *(v10 + 24);
              v28 = *(v27 + 8 * v23 + 4);
              v29 = (*(v10 + 72) + 4 * v28);
              v30 = *(v27 + 8 * v23);
              v31 = 1;
              do
              {
                v32 = *v29++;
                ++v31;
              }

              while (i != v32);
              v33 = *(v10 + 48) + 4 * v28;
              if (v31 < v30)
              {
                v30 = 0;
              }

              v24 = (v33 + 4 * (v31 - v30));
              v26 = *a4;
              v25 = *a3;
            }

            *(v26 + 16 * v14) = vmlaq_n_f32(*(v26 + 16 * v14), *(v25 + 16 * *v24), v39[j]);
          }
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_1AF188234(uint64_t *a1, int a2, void *a3, void *a4, double a5)
{
  v8 = 0;
  v49 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(*(v9 + 64) + 8 * a2 - 8);
  v12 = v10[1];
  v11 = v10[2];
  v43 = *(v9 + 4);
  v13 = 2 * *(v12 + 20);
  v44 = &v47;
  v45 = v13;
  v46 = 32;
  v38[0] = v12;
  v38[1] = v11;
  v31 = v11;
  __p = 0;
  if (v13 >= 0x21)
  {
    v8 = operator new(4 * v13);
    __p = v8;
    v44 = v8;
    v46 = v13;
  }

  v14 = *(v12 + 8);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(v10[30] + 4 * i);
      if (v16 != -1)
      {
        v17 = *(v12 + 336);
        v18 = (8 * i) | 4;
        v34 = *(v17 + v18);
        v35 = *(v12 + 360);
        v19 = *(v17 + 8 * i);
        v20 = *(v12 + 264);
        v33 = *(v20 + v18);
        v21 = *(v20 + 8 * i);
        v37 = 0.0;
        v22 = v44;
        v23 = v44 + v19;
        v36[0] = &v37;
        v36[1] = v44;
        v36[2] = v23;
        memset(&v36[3], 0, 13);
        v39 = i;
        v40 = v16;
        v41 = *(*(v38[0] + 336) + 8 * i);
        v42 = *(*(v38[0] + 264) + 8 * i);
        v32 = *(v12 + 288);
        sub_1AF184204(&v43, v38, v36, (*(*(v12 + 432) + 2 * i) >> 7) & 0xF, (*(*(v31 + 432) + 2 * v16) >> 7) & 0xF, a5);
        HIDWORD(a5) = 0;
        *(*a4 + 16 * v16) = 0u;
        if (SLODWORD(v36[4]) >= 1 && v21 >= 1)
        {
          v24 = (v32 + 4 * v33);
          do
          {
            v25 = *v24++;
            v26 = *(v10[21] + 4 * v25);
            LODWORD(v25) = *v23++;
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a4 + 16 * v26), *&v25);
            --v21;
          }

          while (v21);
        }

        if (SHIDWORD(v36[3]) >= 1 && v19 >= 1)
        {
          v28 = (v35 + 4 * v34);
          do
          {
            v29 = *v28++;
            v30 = (*(v12 + 120) + 8 * v29);
            LODWORD(v29) = *v22;
            v22 = (v22 + 4);
            *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * v30[i == *v30]), *&v29);
            --v19;
          }

          while (v19);
        }

        *&a5 = v37;
        *(*a4 + 16 * v16) = vmlaq_n_f32(*(*a4 + 16 * v16), *(*a3 + 16 * i), v37);
        v14 = *(v12 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF1884BC(uint64_t a1, int a2, void *a3, void *a4, int a5, int16x4_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  if (*(v6 + 52))
  {
    v9 = 0;
    v10 = *(v6 + 8);
    v11 = *(*(v10 + 57) + 8 * a5);
    v12 = *(*(*(v6 + 16) + 456) + 8 * a5);
    v13 = v10[5];
    v30 = &v31;
    __p = 0;
    if (v13 >= 0x11)
    {
      v9 = operator new(4 * v13);
      __p = v9;
      v30 = v9;
    }

    if (*v10 >= 1)
    {
      v14 = 0;
      a6.i32[0] = 1.0;
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = *(*(v6 + 168) + 4 * v14);
        if (v16 != -1)
        {
          v17 = *(*(v12 + 96) + 4 * v16);
          v18 = (*(*v11 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 < 1)
          {
            *(*a4 + 16 * v17) = 0uLL;
          }

          else
          {
            v20 = v11[3] + 4 * v18[1];
            v21 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = (v30 + 1);
            v25 = xmmword_1AFE21110;
            v26 = xmmword_1AFE21100;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, a6).u8[0])
              {
                *(v24 - 2) = v21;
              }

              if (vuzp1_s16(v27, a6).i8[2])
              {
                *(v24 - 1) = v21;
              }

              if (vuzp1_s16(a6, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v21;
                v24[1] = v21;
              }

              v26 = vaddq_s64(v26, v15);
              v25 = vaddq_s64(v25, v15);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            *(*a4 + 16 * v17) = 0uLL;
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              *(*a4 + 16 * v17) = vmlaq_n_f32(*(*a4 + 16 * v17), *(*a3 + 16 * *(v20 + v28)), *(v30 + v28));
              v28 += 4;
            }

            while (v29 != v28);
          }
        }

        ++v14;
      }

      while (v14 < *v10);
      v9 = __p;
    }

    operator delete(v9);
  }
}

void sub_1AF1886F8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v50 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v43 = v8[2];
  v12 = *(*(v43 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v56;
  v53 = v56;
  v54 = v13;
  v55 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v53 = v15;
    v55 = v13;
    v14 = v15;
  }

  v49[0] = v58;
  v49[1] = 0;
  v49[2] = v14;
  memset(&v49[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v49[3]) = 2;
    LODWORD(v49[4]) = 0;
    v58[0] = 0x3F0000003F000000;
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  v47 = v9;
  if (*(v9 + 4) >= 1)
  {
    v45 = v12;
    v46 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v45[18] + 4 * *(v45[12] + 4 * v17));
        if (*(v45[21] + *v18))
        {
          v37 = v45[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v39 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v51);
              v40.i64[0] = 0x3F0000003F000000;
              v40.i64[1] = 0x3F0000003F000000;
              v41 = v18[v39];
              *(*a4 + 16 * v41) = 0u;
              v42 = v52;
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v51));
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v42));
              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          if ((v44 & 1) == 0)
          {
            v48 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF1833B0(&v50, &v47, v49, v19, (*(*(v43 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v51);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v52;
          v22 = v58[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v51), *v58);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v49[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v49[4]) == 1)
                {
                  v28 = (v45[12] + 4 * *(v46[21] + 4 * v27));
                  v29 = *a4;
                  v30 = *a4;
                }

                else
                {
                  v31 = (2 * v27) | 1;
                  v32 = *(v9 + 24);
                  v33 = (*(v9 + 72) + 4 * *(v32 + 4 * v31));
                  v34 = *(v32 + 8 * v27);
                  v35 = 1;
                  do
                  {
                    v36 = *v33++;
                    ++v35;
                  }

                  while (v16 != v36);
                  if (v35 < v34)
                  {
                    v34 = 0;
                  }

                  v28 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v31) + 4 * (v35 - v34));
                  v30 = *a4;
                  v29 = *a3;
                }

                *(v30 + 16 * v20) = vmlaq_n_f32(*(v30 + 16 * v20), *(v29 + 16 * *v28), *&v53[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v46;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF188AB4(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v9;
  v75 = 32;
  v77 = 0;
  if (2 * v9 >= 0x21)
  {
    v77 = operator new(8 * v9);
    v73 = v77;
    v75 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v68 = &v71;
  v69 = v9;
  v70 = 16;
  v72 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v72 = v10;
    v68 = v10;
    v70 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 96) + 4 * v11);
        v19 = (*(v59 + 144) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v36 = v51[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            v39 = v23 + v20;
            v52 = v39;
            v53 = *(v59 + 168) + v18;
            do
            {
              v40 = *(v16[5] + 2 * (v38 + *(*(v16[4] + 96) + 4 * v17)));
              v41 = v19[v40];
              v42 = v21[v38];
              *(*a4 + 16 * v42) = v12;
              if (!v15 && (*(v39 + v38) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v11, v40, v67);
                if ((*(v53 + v40) & 0x10) != 0)
                {
                  if ((*(v53 + v40) & 0x20) != 0)
                  {
                    v47 = v40 == 0;
                    v45 = v57;
                    v46 = v11;
                  }

                  else
                  {
                    v45 = v57;
                    v46 = v11;
                    v47 = v40;
                  }

                  v48 = sub_1AFDC4744(v45, v46, v47, v17);
                  v49 = 1.0 - v48;
                  v44 = v48 + ((1.0 - v48) * 0.75);
                  v43 = v49 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SLODWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SHIDWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * v41), v44);
                v12 = 0uLL;
                v39 = v52;
              }

              else
              {
                *(*a4 + 16 * v42) = vaddq_f32(*(*v13 + 16 * v41), *(*a4 + 16 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v73;
          v27 = v73 + v25;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v27;
          memset(&v67[3], 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          sub_1AF183850(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v30 = (*(v58 + 264) + 8 * v11);
            v31 = *v30;
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * v30[1]);
              do
              {
                v33 = *v32++;
                v34 = *(v51[12] + 4 * *(v55[21] + 4 * v33));
                LODWORD(v33) = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * v34), *&v33);
                --v31;
              }

              while (v31);
            }
          }

          v13 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v11, v68);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              v35 = 0;
              do
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * *(v68 + v35)), *(v26 + v35));
                v35 += 4;
              }

              while (4 * v25 != v35);
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v72;
  }

  operator delete(v10);
  operator delete(v77);
}

void sub_1AF189000(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = *(*(*a1 + 64) + 8 * a2 - 8);
  v50 = *(*a1 + 4);
  v9 = v8[1];
  v10 = *(v8[60] + 8 * a5);
  v11 = *(*(v9 + 456) + 8 * a5);
  v43 = v8[2];
  v12 = *(*(v43 + 456) + 8 * a5);
  v13 = *(v9 + 16);
  v14 = v56;
  v53 = v56;
  v54 = v13;
  v55 = 8;
  __p = 0;
  if (v13 < 9)
  {
    v15 = 0;
  }

  else
  {
    v15 = operator new(4 * v13);
    __p = v15;
    v53 = v15;
    v55 = v13;
    v14 = v15;
  }

  v49[0] = v58;
  v49[1] = 0;
  v49[2] = v14;
  memset(&v49[3], 0, 13);
  if ((*(v11 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v49[3]) = 2;
    LODWORD(v49[4]) = 0;
    v58[0] = 0x3F0000003F000000;
    v44 = 1;
  }

  else
  {
    v44 = 0;
  }

  v47 = v9;
  if (*(v9 + 4) >= 1)
  {
    v45 = v12;
    v46 = v8;
    v16 = 0;
    do
    {
      v17 = *(v8[27] + 4 * v16);
      if (v17 != -1)
      {
        v18 = (v45[18] + 4 * *(v45[12] + 4 * v17));
        if (*(v45[21] + *v18))
        {
          v37 = v45[9];
          v38 = *(v37 + 2 * v17);
          if (*(v37 + 2 * v17))
          {
            v39 = 0;
            do
            {
              sub_1AFDAFFBC(v11, v16, *(*(v10 + 40) + 2 * (v39 + *(*(*(v10 + 32) + 96) + 4 * v17))), &v51);
              v40.i64[0] = 0x3F0000003F000000;
              v40.i64[1] = 0x3F0000003F000000;
              v41 = v18[v39];
              *(*a4 + 16 * v41) = 0u;
              v42 = v52;
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v51));
              *(*a4 + 16 * v41) = vmlaq_f32(*(*a4 + 16 * v41), v40, *(*a3 + 16 * v42));
              ++v39;
            }

            while (v38 != v39);
          }
        }

        else
        {
          if ((v44 & 1) == 0)
          {
            v48 = v16;
            if (*(*(v9 + 216) + 4 * v16) <= 0.0)
            {
              v19 = 1;
            }

            else
            {
              v19 = 4;
            }

            sub_1AF183F2C(&v50, &v47, v49, v19, (*(*(v43 + 432) + 2 * v17) >> 7) & 0xF);
          }

          sub_1AFDAFFBC(v11, v16, 0, &v51);
          v20 = *v18;
          *(*a4 + 16 * v20) = 0u;
          v21 = v52;
          v22 = v58[0];
          *(*a4 + 16 * v20) = vmlaq_n_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v51), *v58);
          *(*a4 + 16 * v20) = vmlaq_lane_f32(*(*a4 + 16 * v20), *(*a3 + 16 * v21), v22, 1);
          if (SLODWORD(v49[4]) >= 1)
          {
            v23 = (*(v9 + 144) + 8 * v16);
            v24 = *v23;
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = *(v9 + 168) + 4 * v23[1];
              do
              {
                v27 = *(v26 + 4 * v25);
                if (BYTE4(v49[4]) == 1)
                {
                  v28 = (v45[12] + 4 * *(v46[21] + 4 * v27));
                  v29 = *a4;
                  v30 = *a4;
                }

                else
                {
                  v31 = (2 * v27) | 1;
                  v32 = *(v9 + 24);
                  v33 = (*(v9 + 72) + 4 * *(v32 + 4 * v31));
                  v34 = *(v32 + 8 * v27);
                  v35 = 1;
                  do
                  {
                    v36 = *v33++;
                    ++v35;
                  }

                  while (v16 != v36);
                  if (v35 < v34)
                  {
                    v34 = 0;
                  }

                  v28 = (*(v11 + 24) + 4 * *(*(*v11 + 24) + 4 * v31) + 4 * (v35 - v34));
                  v30 = *a4;
                  v29 = *a3;
                }

                *(v30 + 16 * v20) = vmlaq_n_f32(*(v30 + 16 * v20), *(v29 + 16 * *v28), *&v53[4 * v25++]);
              }

              while (v25 != v24);
            }
          }
        }
      }

      ++v16;
      v8 = v46;
    }

    while (v16 < *(v9 + 4));
    v15 = __p;
  }

  operator delete(v15);
}

void sub_1AF1893BC(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v8 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v54 = v8;
  v57 = *(v55[60] + 8 * a5);
  v9 = *(*(v50 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v10;
  v75 = 32;
  v77 = 0;
  if (2 * v10 >= 0x21)
  {
    v77 = operator new(8 * v10);
    v73 = v77;
    v75 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v68 = &v71;
  v69 = v10;
  v70 = 16;
  v72 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v72 = v11;
    v68 = v11;
    v70 = v10;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v9;
    v12 = 0;
    v13 = 0uLL;
    v15 = v55;
    v14 = a3;
    v16 = v54;
    v17 = v57;
    do
    {
      v18 = *(v15[30] + 4 * v12);
      if (v18 != -1)
      {
        v19 = *(*(v59 + 96) + 4 * v12);
        v20 = (*(v59 + 144) + 4 * v19);
        v21 = *(v51[12] + 4 * v18);
        v22 = (v51[18] + 4 * v21);
        v23 = *v22;
        v24 = v51[21];
        if ((*(v24 + v23) & 1) == 0 && v16)
        {
          *(*a4 + 16 * v23) = v13;
          v26 = *v22;
          a6 = vaddq_f32(*(*v14 + 16 * *v20), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v24 + v23))
        {
          v38 = v51[9];
          v39 = *(v38 + 2 * v18);
          if (*(v38 + 2 * v18))
          {
            v40 = 0;
            v41 = v24 + v21;
            v52 = v41;
            v53 = *(v59 + 168) + v19;
            do
            {
              v42 = *(v17[5] + 2 * (v40 + *(*(v17[4] + 96) + 4 * v18)));
              v43 = v20[v42];
              v44 = v22[v40];
              *(*a4 + 16 * v44) = v13;
              if (!v16 && (*(v41 + v40) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v12, v42, v67);
                if ((*(v53 + v42) & 0x10) != 0)
                {
                  if ((*(v53 + v42) & 0x20) != 0)
                  {
                    v48 = v42 == 0;
                    v46 = v57;
                    v47 = v12;
                  }

                  else
                  {
                    v46 = v57;
                    v47 = v12;
                    v48 = v42;
                  }

                  a6.f32[0] = sub_1AFDC4744(v46, v47, v48, v18);
                  v49 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v45 = v49 * 0.125;
                }

                else
                {
                  v45 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v15 = v55;
                v14 = a3;
                v16 = v54;
                v17 = v57;
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SLODWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SHIDWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v43), a6.f32[0]);
                v13 = 0uLL;
                v41 = v52;
              }

              else
              {
                a6 = vaddq_f32(*(*v14 + 16 * v43), *(*a4 + 16 * v44));
                *(*a4 + 16 * v44) = a6;
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v27 = *(*(v58 + 336) + 8 * v12);
          v60 = 0.0;
          v28 = v73;
          v29 = v73 + v27;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v29;
          memset(&v67[3], 0, 13);
          v62 = v12;
          v63 = v18;
          v64 = *(*(v61[0] + 336) + 8 * v12);
          v65 = *(*(v61[0] + 264) + 8 * v12);
          sub_1AF184204(&v66, v61, v67, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v18) >> 7) & 0xF, *a6.i64);
          v13 = 0uLL;
          v15 = v55;
          v30 = *v20;
          v31 = *v22;
          *(*a4 + 16 * v31) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v32 = (*(v58 + 264) + 8 * v12);
            v33 = *v32;
            if (v33 >= 1)
            {
              v34 = (*(v58 + 288) + 4 * v32[1]);
              do
              {
                v35 = *v34++;
                v36 = *(v51[12] + 4 * *(v55[21] + 4 * v35));
                LODWORD(v35) = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * v36), *&v35);
                --v33;
              }

              while (v33);
            }
          }

          v14 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v12, v68);
            v13 = 0uLL;
            v15 = v55;
            v14 = a3;
            if (v27 >= 1)
            {
              v37 = 0;
              do
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * *(v68 + v37)), *(v28 + v37));
                v37 += 4;
              }

              while (4 * v27 != v37);
            }
          }

          a6 = *(*v14 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v60);
          v16 = v54;
          v17 = v57;
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = v72;
  }

  operator delete(v11);
  operator delete(v77);
}

void sub_1AF189908(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v8 = 0;
  v34 = *MEMORY[0x1E69E9840];
  v25 = *(*(*a1 + 64) + 8 * a2 - 8);
  v26 = v25[1];
  v9 = *(v25[60] + 8 * a5);
  v10 = *(*(v26 + 456) + 8 * a5);
  v11 = *(*(v25[2] + 456) + 8 * a5);
  v12 = *(v26 + 16);
  v29 = &v32;
  v30 = v12;
  v31 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v29 = v8;
    v31 = v12;
  }

  if (*(v26 + 4) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v25[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v11[18] + 4 * *(v11[12] + 4 * v14));
        if (*(v11[21] + *v15))
        {
          v19 = v11[9];
          v20 = *(v19 + 2 * v14);
          if (*(v19 + 2 * v14))
          {
            v21 = 0;
            do
            {
              sub_1AFDAFFBC(v10, v13, *(*(v9 + 40) + 2 * (v21 + *(*(*(v9 + 32) + 96) + 4 * v14))), &v27);
              v22.i64[0] = 0x3F0000003F000000;
              v22.i64[1] = 0x3F0000003F000000;
              v23 = v15[v21];
              *(*a4 + 16 * v23) = 0u;
              v24 = v28;
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v22, *(*a3 + 16 * v27));
              *(*a4 + 16 * v23) = vmlaq_f32(*(*a4 + 16 * v23), v22, *(*a3 + 16 * v24));
              ++v21;
            }

            while (v20 != v21);
          }
        }

        else
        {
          sub_1AFDAFFBC(v10, v13, 0, &v27);
          v16.i64[0] = 0x3F0000003F000000;
          v16.i64[1] = 0x3F0000003F000000;
          v17 = *v15;
          *(*a4 + 16 * v17) = 0u;
          v18 = v28;
          *(*a4 + 16 * v17) = vmlaq_f32(*(*a4 + 16 * v17), v16, *(*a3 + 16 * v27));
          *(*a4 + 16 * v17) = vmlaq_f32(*(*a4 + 16 * v17), v16, *(*a3 + 16 * v18));
        }
      }

      ++v13;
    }

    while (v13 < *(v26 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void sub_1AF189B3C(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v49 = v6;
  v50 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v10 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v44 = v10;
  v11 = *(v8 + 8 * a5);
  v43 = *(v9 + 8 * a5);
  v12 = *(v50 + 20);
  v58 = &v61;
  v59 = 2 * v12;
  v60 = 32;
  v62 = 0;
  if (2 * v12 >= 0x21)
  {
    v62 = operator new(8 * v12);
    v58 = v62;
    v60 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v53 = &v56;
  v54 = v12;
  v55 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v53 = v13;
    v55 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = a3;
    v17 = v44;
    while (1)
    {
      v18 = *(v49[30] + 4 * v14);
      if (v18 != -1)
      {
        v19 = *(*(v51 + 96) + 4 * v14);
        v20 = (*(v51 + 144) + 4 * v19);
        v21 = *(v43[12] + 4 * v18);
        v22 = (v43[18] + 4 * v21);
        v23 = *v22;
        v24 = v43[21];
        if ((*(v24 + v23) & 1) == 0 && v17)
        {
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * *v22);
          v27 = *v20;
        }

        else
        {
          if (*(v24 + v23))
          {
            v28 = v43[9];
            v29 = *(v28 + 2 * v18);
            if (*(v28 + 2 * v18))
            {
              v30 = 0;
              v47 = *(v51 + 168) + v19;
              v48 = *(v28 + 2 * v18);
              v31 = v24 + v21;
              v46 = v31;
              do
              {
                v32 = *(v11[5] + 2 * (v30 + *(*(v11[4] + 96) + 4 * v18)));
                v33 = v20[v32];
                v34 = v22[v30];
                *(*a4 + 16 * v34) = v15;
                if (!v17 && (*(v31 + v30) & 8) != 0)
                {
                  sub_1AFDAFE18(v51, v14, v32, v52);
                  if ((*(v47 + v32) & 0x10) != 0)
                  {
                    if ((*(v47 + v32) & 0x20) != 0)
                    {
                      v39 = v32 == 0;
                      v37 = v11;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v11;
                      v38 = v14;
                      v39 = v32;
                    }

                    v40 = sub_1AFDC4744(v37, v38, v39, v18);
                    v41 = 1.0 - v40;
                    v36 = v40 + ((1.0 - v40) * 0.75);
                    v35 = v41 * 0.125;
                  }

                  else
                  {
                    v35 = 0.125;
                    v36 = 0.75;
                  }

                  v16 = a3;
                  v17 = v44;
                  v29 = v48;
                  v42 = v52[1];
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v52[0]), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v42), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v33), v36);
                  v15 = 0uLL;
                  v31 = v46;
                }

                else
                {
                  *(*a4 + 16 * v34) = vaddq_f32(*(*v16 + 16 * v33), *(*a4 + 16 * v34));
                }

                ++v30;
              }

              while (v29 != v30);
            }

            goto LABEL_19;
          }

          v27 = *v20;
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * v23);
        }

        *v26 = vaddq_f32(*(*v16 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v62);
}

void sub_1AF189EEC(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v7 = (*(v59 + 12) & 1) != 0 || *v6 == 0;
  v54 = v7;
  v57 = *(v55[60] + 8 * a5);
  v8 = *(*(v50 + 456) + 8 * a5);
  v9 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v9;
  v75 = 32;
  v77 = 0;
  if (2 * v9 >= 0x21)
  {
    v77 = operator new(8 * v9);
    v73 = v77;
    v75 = 2 * v9;
    v9 = *(v58 + 20);
  }

  v10 = 0;
  v68 = &v71;
  v69 = v9;
  v70 = 16;
  v72 = 0;
  if (v9 >= 0x11)
  {
    v10 = operator new(4 * v9);
    v72 = v10;
    v68 = v10;
    v70 = v9;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v8;
    v11 = 0;
    v12 = 0uLL;
    v14 = v55;
    v13 = a3;
    v15 = v54;
    v16 = v57;
    do
    {
      v17 = *(v14[30] + 4 * v11);
      if (v17 != -1)
      {
        v18 = *(*(v59 + 96) + 4 * v11);
        v19 = (*(v59 + 144) + 4 * v18);
        v20 = *(v51[12] + 4 * v17);
        v21 = (v51[18] + 4 * v20);
        v22 = *v21;
        v23 = v51[21];
        if ((*(v23 + v22) & 1) == 0 && v15)
        {
          *(*a4 + 16 * v22) = v12;
          *(*a4 + 16 * *v21) = vaddq_f32(*(*v13 + 16 * *v19), *(*a4 + 16 * *v21));
        }

        else if (*(v23 + v22))
        {
          v36 = v51[9];
          v37 = *(v36 + 2 * v17);
          if (*(v36 + 2 * v17))
          {
            v38 = 0;
            v39 = v23 + v20;
            v52 = v39;
            v53 = *(v59 + 168) + v18;
            do
            {
              v40 = *(v16[5] + 2 * (v38 + *(*(v16[4] + 96) + 4 * v17)));
              v41 = v19[v40];
              v42 = v21[v38];
              *(*a4 + 16 * v42) = v12;
              if (!v15 && (*(v39 + v38) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v11, v40, v67);
                if ((*(v53 + v40) & 0x10) != 0)
                {
                  if ((*(v53 + v40) & 0x20) != 0)
                  {
                    v47 = v40 == 0;
                    v45 = v57;
                    v46 = v11;
                  }

                  else
                  {
                    v45 = v57;
                    v46 = v11;
                    v47 = v40;
                  }

                  v48 = sub_1AFDC4744(v45, v46, v47, v17);
                  v49 = 1.0 - v48;
                  v44 = v48 + ((1.0 - v48) * 0.75);
                  v43 = v49 * 0.125;
                }

                else
                {
                  v43 = 0.125;
                  v44 = 0.75;
                }

                v14 = v55;
                v13 = a3;
                v15 = v54;
                v16 = v57;
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SLODWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * SHIDWORD(v67[0])), v43);
                *(*a4 + 16 * v42) = vmlaq_n_f32(*(*a4 + 16 * v42), *(*a3 + 16 * v41), v44);
                v12 = 0uLL;
                v39 = v52;
              }

              else
              {
                *(*a4 + 16 * v42) = vaddq_f32(*(*v13 + 16 * v41), *(*a4 + 16 * v42));
              }

              ++v38;
            }

            while (v37 != v38);
          }
        }

        else
        {
          v25 = *(*(v58 + 336) + 8 * v11);
          v60 = 0.0;
          v26 = v73;
          v27 = v73 + v25;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v27;
          memset(&v67[3], 0, 13);
          v62 = v11;
          v63 = v17;
          v64 = *(*(v61[0] + 336) + 8 * v11);
          v65 = *(*(v61[0] + 264) + 8 * v11);
          sub_1AF183850(&v66, v61, v67, (*(*(v58 + 432) + 2 * v11) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v17) >> 7) & 0xF);
          v12 = 0uLL;
          v14 = v55;
          v28 = *v19;
          v29 = *v21;
          *(*a4 + 16 * v29) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v30 = (*(v58 + 264) + 8 * v11);
            v31 = *v30;
            if (v31 >= 1)
            {
              v32 = (*(v58 + 288) + 4 * v30[1]);
              do
              {
                v33 = *v32++;
                v34 = *(v51[12] + 4 * *(v55[21] + 4 * v33));
                LODWORD(v33) = *v27++;
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a4 + 16 * v34), *&v33);
                --v31;
              }

              while (v31);
            }
          }

          v13 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v11, v68);
            v12 = 0uLL;
            v14 = v55;
            v13 = a3;
            if (v25 >= 1)
            {
              v35 = 0;
              do
              {
                *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*a3 + 16 * *(v68 + v35)), *(v26 + v35));
                v35 += 4;
              }

              while (4 * v25 != v35);
            }
          }

          *(*a4 + 16 * v29) = vmlaq_n_f32(*(*a4 + 16 * v29), *(*v13 + 16 * v28), v60);
          v15 = v54;
          v16 = v57;
        }
      }

      ++v11;
    }

    while (v11 < *(v58 + 8));
    v10 = v72;
  }

  operator delete(v10);
  operator delete(v77);
}

void sub_1AF18A438(uint64_t a1, int a2, void *a3, void *a4, int a5, float32x4_t a6)
{
  v78 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v55 = *(*(*a1 + 64) + 8 * a2 - 8);
  v66 = *(*a1 + 4);
  v58 = v55[1];
  v50 = v55[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v8 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v54 = v8;
  v57 = *(v55[60] + 8 * a5);
  v9 = *(*(v50 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v73 = &v76;
  v74 = 2 * v10;
  v75 = 32;
  v77 = 0;
  if (2 * v10 >= 0x21)
  {
    v77 = operator new(8 * v10);
    v73 = v77;
    v75 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v68 = &v71;
  v69 = v10;
  v70 = 16;
  v72 = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    v72 = v11;
    v68 = v11;
    v70 = v10;
  }

  v61[0] = v58;
  v61[1] = v50;
  if (*(v58 + 8) >= 1)
  {
    v51 = v9;
    v12 = 0;
    v13 = 0uLL;
    v15 = v55;
    v14 = a3;
    v16 = v54;
    v17 = v57;
    do
    {
      v18 = *(v15[30] + 4 * v12);
      if (v18 != -1)
      {
        v19 = *(*(v59 + 96) + 4 * v12);
        v20 = (*(v59 + 144) + 4 * v19);
        v21 = *(v51[12] + 4 * v18);
        v22 = (v51[18] + 4 * v21);
        v23 = *v22;
        v24 = v51[21];
        if ((*(v24 + v23) & 1) == 0 && v16)
        {
          *(*a4 + 16 * v23) = v13;
          v26 = *v22;
          a6 = vaddq_f32(*(*v14 + 16 * *v20), *(*a4 + 16 * v26));
          *(*a4 + 16 * v26) = a6;
        }

        else if (*(v24 + v23))
        {
          v38 = v51[9];
          v39 = *(v38 + 2 * v18);
          if (*(v38 + 2 * v18))
          {
            v40 = 0;
            v41 = v24 + v21;
            v52 = v41;
            v53 = *(v59 + 168) + v19;
            do
            {
              v42 = *(v17[5] + 2 * (v40 + *(*(v17[4] + 96) + 4 * v18)));
              v43 = v20[v42];
              v44 = v22[v40];
              *(*a4 + 16 * v44) = v13;
              if (!v16 && (*(v41 + v40) & 8) != 0)
              {
                sub_1AFDAFE18(v59, v12, v42, v67);
                if ((*(v53 + v42) & 0x10) != 0)
                {
                  if ((*(v53 + v42) & 0x20) != 0)
                  {
                    v48 = v42 == 0;
                    v46 = v57;
                    v47 = v12;
                  }

                  else
                  {
                    v46 = v57;
                    v47 = v12;
                    v48 = v42;
                  }

                  a6.f32[0] = sub_1AFDC4744(v46, v47, v48, v18);
                  v49 = 1.0 - a6.f32[0];
                  a6.f32[0] = a6.f32[0] + ((1.0 - a6.f32[0]) * 0.75);
                  v45 = v49 * 0.125;
                }

                else
                {
                  v45 = 0.125;
                  a6.i32[0] = 0.75;
                }

                v15 = v55;
                v14 = a3;
                v16 = v54;
                v17 = v57;
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SLODWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * SHIDWORD(v67[0])), v45);
                *(*a4 + 16 * v44) = vmlaq_n_f32(*(*a4 + 16 * v44), *(*a3 + 16 * v43), a6.f32[0]);
                v13 = 0uLL;
                v41 = v52;
              }

              else
              {
                a6 = vaddq_f32(*(*v14 + 16 * v43), *(*a4 + 16 * v44));
                *(*a4 + 16 * v44) = a6;
              }

              ++v40;
            }

            while (v39 != v40);
          }
        }

        else
        {
          v27 = *(*(v58 + 336) + 8 * v12);
          v60 = 0.0;
          v28 = v73;
          v29 = v73 + v27;
          v67[0] = &v60;
          v67[1] = v73;
          v67[2] = v29;
          memset(&v67[3], 0, 13);
          v62 = v12;
          v63 = v18;
          v64 = *(*(v61[0] + 336) + 8 * v12);
          v65 = *(*(v61[0] + 264) + 8 * v12);
          sub_1AF184204(&v66, v61, v67, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v50 + 432) + 2 * v18) >> 7) & 0xF, *a6.i64);
          v13 = 0uLL;
          v15 = v55;
          v30 = *v20;
          v31 = *v22;
          *(*a4 + 16 * v31) = 0u;
          if (SLODWORD(v67[4]) >= 1)
          {
            v32 = (*(v58 + 264) + 8 * v12);
            v33 = *v32;
            if (v33 >= 1)
            {
              v34 = (*(v58 + 288) + 4 * v32[1]);
              do
              {
                v35 = *v34++;
                v36 = *(v51[12] + 4 * *(v55[21] + 4 * v35));
                LODWORD(v35) = *v29++;
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a4 + 16 * v36), *&v35);
                --v33;
              }

              while (v33);
            }
          }

          v14 = a3;
          if (SHIDWORD(v67[3]) >= 1)
          {
            sub_1AFDB00B8(v59, v12, v68);
            v13 = 0uLL;
            v15 = v55;
            v14 = a3;
            if (v27 >= 1)
            {
              v37 = 0;
              do
              {
                *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), *(*a3 + 16 * *(v68 + v37)), *(v28 + v37));
                v37 += 4;
              }

              while (4 * v27 != v37);
            }
          }

          a6 = *(*v14 + 16 * v30);
          *(*a4 + 16 * v31) = vmlaq_n_f32(*(*a4 + 16 * v31), a6, v60);
          v16 = v54;
          v17 = v57;
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = v72;
  }

  operator delete(v11);
  operator delete(v77);
}

void sub_1AF18A984(uint64_t a1, int a2, void *a3, void *a4, int a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(*(*a1 + 64) + 8 * a2 - 8);
  v7 = v6[2];
  v49 = v6;
  v50 = v6[1];
  v8 = v6[60];
  v9 = *(v7 + 456);
  v51 = *(*(v50 + 456) + 8 * a5);
  v10 = (*(v51 + 12) & 1) != 0 || **a1 == 0;
  v44 = v10;
  v11 = *(v8 + 8 * a5);
  v43 = *(v9 + 8 * a5);
  v12 = *(v50 + 20);
  v58 = &v61;
  v59 = 2 * v12;
  v60 = 32;
  v62 = 0;
  if (2 * v12 >= 0x21)
  {
    v62 = operator new(8 * v12);
    v58 = v62;
    v60 = 2 * v12;
    v12 = *(v50 + 20);
  }

  v13 = 0;
  v53 = &v56;
  v54 = v12;
  v55 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v53 = v13;
    v55 = v12;
  }

  if (*(v50 + 8) >= 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = a3;
    v17 = v44;
    while (1)
    {
      v18 = *(v49[30] + 4 * v14);
      if (v18 != -1)
      {
        v19 = *(*(v51 + 96) + 4 * v14);
        v20 = (*(v51 + 144) + 4 * v19);
        v21 = *(v43[12] + 4 * v18);
        v22 = (v43[18] + 4 * v21);
        v23 = *v22;
        v24 = v43[21];
        if ((*(v24 + v23) & 1) == 0 && v17)
        {
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * *v22);
          v27 = *v20;
        }

        else
        {
          if (*(v24 + v23))
          {
            v28 = v43[9];
            v29 = *(v28 + 2 * v18);
            if (*(v28 + 2 * v18))
            {
              v30 = 0;
              v47 = *(v51 + 168) + v19;
              v48 = *(v28 + 2 * v18);
              v31 = v24 + v21;
              v46 = v31;
              do
              {
                v32 = *(v11[5] + 2 * (v30 + *(*(v11[4] + 96) + 4 * v18)));
                v33 = v20[v32];
                v34 = v22[v30];
                *(*a4 + 16 * v34) = v15;
                if (!v17 && (*(v31 + v30) & 8) != 0)
                {
                  sub_1AFDAFE18(v51, v14, v32, v52);
                  if ((*(v47 + v32) & 0x10) != 0)
                  {
                    if ((*(v47 + v32) & 0x20) != 0)
                    {
                      v39 = v32 == 0;
                      v37 = v11;
                      v38 = v14;
                    }

                    else
                    {
                      v37 = v11;
                      v38 = v14;
                      v39 = v32;
                    }

                    v40 = sub_1AFDC4744(v37, v38, v39, v18);
                    v41 = 1.0 - v40;
                    v36 = v40 + ((1.0 - v40) * 0.75);
                    v35 = v41 * 0.125;
                  }

                  else
                  {
                    v35 = 0.125;
                    v36 = 0.75;
                  }

                  v16 = a3;
                  v17 = v44;
                  v29 = v48;
                  v42 = v52[1];
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v52[0]), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v42), v35);
                  *(*a4 + 16 * v34) = vmlaq_n_f32(*(*a4 + 16 * v34), *(*a3 + 16 * v33), v36);
                  v15 = 0uLL;
                  v31 = v46;
                }

                else
                {
                  *(*a4 + 16 * v34) = vaddq_f32(*(*v16 + 16 * v33), *(*a4 + 16 * v34));
                }

                ++v30;
              }

              while (v29 != v30);
            }

            goto LABEL_19;
          }

          v27 = *v20;
          *(*a4 + 16 * v23) = v15;
          v26 = (*a4 + 16 * v23);
        }

        *v26 = vaddq_f32(*(*v16 + 16 * v27), *v26);
      }

LABEL_19:
      if (++v14 >= *(v50 + 8))
      {
        v13 = __p;
        break;
      }
    }
  }

  operator delete(v13);
  operator delete(v62);
}