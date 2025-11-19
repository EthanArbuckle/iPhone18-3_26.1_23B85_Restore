uint64_t _citrus_EUC_stdenc_init(uint64_t a1, unsigned __int8 *a2)
{
  v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
  if (!v3)
  {
    return *__error();
  }

  v4 = v3;
  if (a2)
  {
    while (1)
    {
      v5 = *a2;
      if (v5 != 32 && v5 != 9)
      {
        break;
      }

      ++a2;
    }

    *(v3 + 9) = 1;
    *(v3 + 5) = _citrus_bcs_strtol();
  }

  free(v4);
  return 79;
}

void _citrus_EUC_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_EUC_stdenc_mbtocs(uint64_t a1, int *a2, int *a3, unsigned __int8 **a4, uint64_t a5, int *a6, void *a7, uint64_t a8)
{
  v17 = 0;
  v12 = *(a1 + 8);
  v13 = _citrus_EUC_mbrtowc_priv(v12, &v17, a4, a5, a6, a7);
  if (!v13)
  {
    if (*a7 != -2)
    {
      v15 = *(v12 + 16) & v17;
      v16 = v15 ^ v17;
      *a2 = v15;
      *a3 = v16;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v13;
}

uint64_t _citrus_EUC_stdenc_cstomb(uint64_t a1, char *a2, unint64_t a3, int a4, int a5, uint64_t a6, uint64_t *a7)
{
  v7 = *(a1 + 8);
  if (a4 == -1)
  {
    v9 = 0;
  }

  else
  {
    if (a4 & ~*(v7 + 16) | *(v7 + 16) & a5)
    {
      return 22;
    }

    v9 = a5 | a4;
  }

  return _citrus_EUC_wcrtomb_priv(v7, a2, a3, v9, a7);
}

uint64_t _citrus_EUC_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_EUC_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
  v10 = v9;
  if (a7)
  {
    if (!v9)
    {
      v11 = *(a7 + 8);
      if (v11)
      {
        v11(*a2, *(a7 + 16));
      }
    }
  }

  return v10;
}

uint64_t _citrus_EUC_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  result = 0;
  if (*a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *a4 = v5;
  return result;
}

uint64_t _citrus_EUC_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8EDC0;
  *a1 = _citrus_EUC_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EDD0;
  v3 = *&off_2A1A8EDE0;
  v4 = xmmword_2A1A8EDF0;
  *(a1 + 80) = qword_2A1A8EE00;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_EUC_mbrtowc_priv(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, int *a5, void *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    result = 0;
    *a5 = 0;
    *a6 = 0;
    return result;
  }

  v7 = *a5;
  if ((*a5 - 1) >= 2)
  {
    if (v7)
    {
LABEL_21:
      *a5 = 0;
      *a6 = -1;
      return 92;
    }

    if (!a4)
    {
LABEL_31:
      result = 0;
      *a6 = -2;
      *a3 = v6;
      return result;
    }

    v10 = *v6++;
    *(a5 + 4) = v10;
    v8 = 1;
    *a5 = 1;
    --a4;
  }

  else
  {
    v8 = *a5;
  }

  v11 = (a5 + 1);
  v12 = *(a5 + 4);
  if (v12 == 142)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v12 == 143)
  {
    LODWORD(v14) = 3;
  }

  else
  {
    LODWORD(v14) = v13;
  }

  if (*(a5 + 4) < 0)
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 20 + 4 * v14);
  if (!v15)
  {
    goto LABEL_21;
  }

  while (v8 < v15)
  {
    if (!a4)
    {
      goto LABEL_31;
    }

    v16 = *v6++;
    v11[v8] = v16;
    v8 = *a5 + 1;
    *a5 = v8;
    --a4;
  }

  *a3 = v6;
  if (v14 <= 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (v15 - (v14 > 1) < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    if (v14 > 1)
    {
      v11 = a5 + 5;
    }

    v19 = v15 + v17 + 1;
    do
    {
      v20 = *v11++;
      v18 = v20 | (v18 << 8);
      --v19;
    }

    while (v19 > 1);
  }

  v21 = v18 & ~*(a1 + 16) | *(a1 + 4 * v14);
  *a5 = 0;
  if (a2)
  {
    *a2 = v21;
  }

  result = 0;
  v22 = v15 - v7;
  if (!v21)
  {
    v22 = 0;
  }

  *a6 = v22;
  return result;
}

uint64_t _citrus_EUC_wcrtomb_priv(uint64_t a1, char *a2, unint64_t a3, int a4, uint64_t *a5)
{
  v5 = 0;
  v6 = *(a1 + 16) & a4;
  v7 = v6 ^ a4;
  while (v6 != *(a1 + 4 * v5))
  {
    if (++v5 == 4)
    {
      v8 = 1;
      goto LABEL_6;
    }
  }

  v8 = v5;
LABEL_6:
  v9 = a1 + 20;
  v10 = *(a1 + 20 + 4 * v8);
  if (v10 > a3)
  {
    result = 7;
    v12 = -1;
    goto LABEL_41;
  }

  if (v5 == 2)
  {
    v13 = -114;
    goto LABEL_12;
  }

  if (v5 == 3)
  {
    v13 = -113;
LABEL_12:
    *a2++ = v13;
    LOWORD(v10) = v10 - 1;
  }

  if (v10 >= 1)
  {
    v14 = (v8 != 0) << 7;
    v15 = vdupq_n_s32(v10);
    v16 = vaddq_s32(v15, xmmword_296016E10);
    v17 = vaddq_s32(v15, xmmword_296016E20);
    v18 = vaddq_s32(v15, xmmword_296016E30);
    v19 = vaddq_s32(v15, xmmword_296016E40);
    v20 = vdupq_n_s64(v10 - 1);
    v21 = -((v10 + 15) & 0xFFF0);
    v22 = a2 + 7;
    v23 = 15;
    v24.i64[0] = -1;
    v24.i64[1] = -1;
    v25.i64[0] = 0xF0000000FLL;
    v25.i64[1] = 0xF0000000FLL;
    do
    {
      v26 = vdupq_n_s64(v23 - 15);
      v27 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016EC0)));
      v28 = vaddq_s32(v19, v24);
      if (vuzp1_s8(vuzp1_s16(v27, *v16.i8), *v16.i8).u8[0])
      {
        *(v22 - 7) = (v7 >> (8 * v28.i8[0])) | v14;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v16), *&v16).i8[1])
      {
        *(v22 - 6) = (v7 >> (8 * v28.i8[4])) | v14;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016EB0)))), *&v16).i8[2])
      {
        *(v22 - 5) = (v7 >> (8 * v28.i8[8])) | v14;
        *(v22 - 4) = (v7 >> (8 * v28.i8[12])) | v14;
      }

      v29 = vaddq_s32(v18, v24);
      v30 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016EA0)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v30, *&v16)).i32[1])
      {
        *(v22 - 3) = (v7 >> (8 * v29.i8[0])) | v14;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v30, *&v16)).i8[5])
      {
        *(v22 - 2) = (v7 >> (8 * v29.i8[4])) | v14;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016E90))))).i8[6])
      {
        *(v22 - 1) = (v7 >> (8 * v29.i8[8])) | v14;
        *v22 = (v7 >> (8 * v29.i8[12])) | v14;
      }

      v31 = vaddq_s32(v17, v24);
      v32 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016E80)));
      if (vuzp1_s8(vuzp1_s16(v32, *v16.i8), *v16.i8).u8[0])
      {
        v22[1] = (v7 >> (8 * v31.i8[0])) | v14;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v16), *&v16).i8[1])
      {
        v22[2] = (v7 >> (8 * v31.i8[4])) | v14;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016E70)))), *&v16).i8[2])
      {
        v22[3] = (v7 >> (8 * v31.i8[8])) | v14;
        v22[4] = (v7 >> (8 * v31.i8[12])) | v14;
      }

      v33 = vaddq_s32(v16, v24);
      v34 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016E60)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v34, *&v16)).i32[1])
      {
        v22[5] = (v7 >> (8 * v33.i8[0])) | v14;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v34, *&v16)).i8[5])
      {
        v22[6] = (v7 >> (8 * v33.i8[4])) | v14;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v26, xmmword_296016E50))))).i8[6])
      {
        v22[7] = (v7 >> (8 * v33.i8[8])) | v14;
        v22[8] = (v7 >> (8 * v33.i8[12])) | v14;
      }

      v19 = vaddq_s32(v19, v25);
      v18 = vaddq_s32(v18, v25);
      v17 = vaddq_s32(v17, v25);
      v16 = vaddq_s32(v16, v25);
      v23 += 16;
      v22 += 16;
    }

    while (v21 + v23 != 15);
  }

  result = 0;
  v12 = *(v9 + 4 * v8);
LABEL_41:
  *a5 = v12;
  return result;
}