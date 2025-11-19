uint64_t _citrus_EUCTW_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *v7 = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_296017AA0;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_EUCTW_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_EUCTW_stdenc_mbtocs(uint64_t a1, unsigned int *a2, int *a3, char **a4, uint64_t a5, int *a6, uint64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_EUCTW_mbrtowc_priv(&v15, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v15;
      *a2 = HIBYTE(v15);
      *a3 = v14 & 0x7F7F;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_EUCTW_stdenc_cstomb(uint64_t a1, _BYTE *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
    return _citrus_EUCTW_wcrtomb_priv(a2, a3, a5, a7);
  }

  if (a4)
  {
    if ((a4 - 71) > 6 || (a5 & 0xFFFF8080) != 0)
    {
      return 22;
    }

    a5 |= a4 << 24;
    return _citrus_EUCTW_wcrtomb_priv(a2, a3, a5, a7);
  }

  if (a5 < 0x80)
  {
    return _citrus_EUCTW_wcrtomb_priv(a2, a3, a5, a7);
  }

  return 22;
}

uint64_t _citrus_EUCTW_stdenc_mbtowc(uint64_t a1, int *a2, char **a3, uint64_t a4, int *a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_EUCTW_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_EUCTW_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_EUCTW_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8EE18;
  *a1 = _citrus_EUCTW_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EE28;
  v3 = *&off_2A1A8EE38;
  v4 = xmmword_2A1A8EE48;
  *(a1 + 80) = qword_2A1A8EE58;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_EUCTW_mbrtowc_priv(int *a1, char **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    v8 = 0;
    result = 0;
    *a4 = 0;
    goto LABEL_33;
  }

  v6 = *a4;
  if ((*a4 - 1) >= 2)
  {
    if (v6)
    {
      goto LABEL_31;
    }

    if (!a3)
    {
      result = 0;
      goto LABEL_32;
    }

    v10 = *v5++;
    *(a4 + 4) = v10;
    v7 = 1;
    *a4 = 1;
    --a3;
  }

  else
  {
    v7 = *a4;
  }

  v11 = (a4 + 1);
  if (*(a4 + 4) == 142)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (*(a4 + 4) >= 0)
  {
    v12 = 0;
  }

  v13 = 1 << v12;
  if (v7 < (1 << v12))
  {
    while (a3)
    {
      v14 = *v5++;
      v11[v7] = v14;
      v7 = *a4 + 1;
      *a4 = v7;
      --a3;
      if (v7 >= v13)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_31;
  }

LABEL_16:
  if (v12 == 2)
  {
    v17 = *(a4 + 5);
    if ((v17 - 168) >= 0xFFFFFFF9 && (*(a4 + 6) & 0x80) != 0 && *(a4 + 7) < 0)
    {
      v16 = (*(a4 + 7) | (*(a4 + 6) << 8) | (v17 << 24)) - 1509949440;
      goto LABEL_26;
    }

LABEL_31:
    *a4 = 0;
    result = 92;
LABEL_32:
    v8 = -1;
    goto LABEL_33;
  }

  if (v12 != 1)
  {
    v16 = *v11;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v15 = *v11;
  if ((v15 & 0x80) == 0 || (*(a4 + 5) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  v16 = *(a4 + 5) | (v15 << 8) | 0x47000000;
LABEL_26:
  *a2 = v5;
  *a4 = 0;
  if (a1)
  {
    *a1 = v16;
  }

  result = 0;
  LODWORD(v8) = v13 - v6;
  if (!v16)
  {
    LODWORD(v8) = 0;
  }

  v8 = v8;
LABEL_33:
  *a5 = v8;
  return result;
}

uint64_t _citrus_EUCTW_wcrtomb_priv(_BYTE *a1, unint64_t a2, unsigned int a3, uint64_t *a4)
{
  if ((a3 & 0x7F00) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if ((a3 & 0x7F0000) != 0)
  {
    v5 = (a3 >> 23) & 1;
  }

  else
  {
    v5 = 1;
  }

  if ((a3 & 0x7F007F80) == 0 && v5)
  {
    if (a2)
    {
      v6 = a3 & 0x7F;
      v7 = 1;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v8 = a3 & 0x7F000080;
  if ((a3 & 0x7F00) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v8 == 1191182336 && v9)
  {
    if (a2 < 2)
    {
      goto LABEL_17;
    }

    v6 = a3 | 0x8080;
    v7 = 2;
  }

  else
  {
    if (!v9 || (v8 - 1207959552) >> 25 > 2)
    {
      result = 92;
      goto LABEL_23;
    }

    if (a2 < 4)
    {
LABEL_17:
      result = 7;
LABEL_23:
      v7 = -1;
      goto LABEL_34;
    }

    *a1 = -114;
    a1[1] = HIBYTE(v8) + 90;
    a1 += 2;
    v6 = a3 | 0x8080;
    v7 = 4;
  }

LABEL_25:
  v11 = 0;
  v12 = (v4 + 3) & 4;
  v13 = vaddq_s32(vdupq_n_s32(v4), xmmword_296017AB0);
  v14 = vdupq_n_s64(v4 - 1);
  v15 = a1 + 3;
  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v17.i64[0] = 0x300000003;
  v17.i64[1] = 0x300000003;
  do
  {
    v18 = vdupq_n_s64(v11);
    v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_296017AD0)));
    v20 = vaddq_s32(v13, v16);
    if (vuzp1_s16(v19, *v13.i8).u8[0])
    {
      *(v15 - 3) = v6 >> (8 * v20.i8[0]);
    }

    if (vuzp1_s16(v19, *&v13).i8[2])
    {
      *(v15 - 2) = v6 >> (8 * v20.i8[4]);
    }

    if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_296017AC0)))).i32[1])
    {
      *(v15 - 1) = v6 >> (8 * v20.i8[8]);
      *v15 = v6 >> (8 * v20.i8[12]);
    }

    v11 += 4;
    v13 = vaddq_s32(v13, v17);
    v15 += 4;
  }

  while (v12 != v11);
  result = 0;
LABEL_34:
  *a4 = v7;
  return result;
}