uint64_t _citrus_UTF7_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x1000040104B78CFuLL);
  if (!v6)
  {
    return *__error();
  }

  v6[14] = 0u;
  v6[15] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v7 = "BCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  v8 = 65;
  v9 = 64;
  v10 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  *v6 = 0u;
  v6[1] = 0u;
  do
  {
    *(v6 + (v8 & 0x7F)) |= v10 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" + 1;
    v11 = *v7++;
    v8 = v11;
    ++v10;
    --v9;
  }

  while (v9);
  v12 = 65;
  v13 = 1u;
  do
  {
    *(v6 + (v12 & 0x7F)) |= 0x100u;
    v12 = direct[v13++];
  }

  while (v13 != 72);
  v14 = 33;
  v15 = 1u;
  do
  {
    *(v6 + (v14 & 0x7F)) |= 0x200u;
    v14 = option[v15++];
  }

  while (v15 != 21);
  v16 = 0;
  v17 = 32;
  do
  {
    *(v6 + (v17 & 0x7F)) |= 0x400u;
    v17 = spaces[++v16];
  }

  while (v16 != 4);
  v18 = 0;
  *(a1 + 8) = v6;
  *a4 = xmmword_296023F80;
  *(a4 + 16) = 1;
  return v18;
}

void _citrus_UTF7_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_UTF7_stdenc_mbtocs(uint64_t a1, _DWORD *a2, int *a3, unsigned __int8 **a4, uint64_t a5, unsigned int *a6, unint64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_UTF7_mbrtowc_priv(*(a1 + 8), &v15, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v15;
      *a2 = 0;
      *a3 = v14;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_UTF7_stdenc_cstomb(uint64_t a1, char *a2, unint64_t a3, int a4, unsigned int a5, unsigned int *a6, uint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_UTF7_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
}

uint64_t _citrus_UTF7_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, unsigned int *a5, unint64_t *a6, uint64_t a7)
{
  v9 = _citrus_UTF7_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_UTF7_stdenc_put_state_reset(int a1, void *__dst, uint64_t a3, unsigned int *a4, void *a5)
{
  if (a4[1])
  {
    return 22;
  }

  v7 = *a4;
  v8 = (*a4 >> 1) & 0xF;
  if (v8 > 6)
  {
    return 22;
  }

  if (v7)
  {
    if (v8)
    {
      if (!a3)
      {
        return 7;
      }

      --a3;
      *(a4 + 8) = base64[(v7 >> 5 << (6 - v8)) & 0x3FLL];
      v8 = 2;
      a4[1] = 2;
      *(a4 + 9) = 45;
      v7 &= 0xF8000001;
    }

    v7 &= ~1u;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x1E) != 0)
  {
    return 22;
  }

  if (!a3)
  {
    return 7;
  }

  *a5 = v8;
  if (!v8)
  {
    return 0;
  }

  memcpy(__dst, a4 + 2, v8);
  result = 0;
  a4[1] = 0;
  return result;
}

uint64_t _citrus_UTF7_stdenc_get_state_desc(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  result = 0;
  if (*(a2 + 4))
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

uint64_t _citrus_UTF7_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8F0D8;
  *a1 = _citrus_UTF7_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F0E8;
  v3 = *&off_2A1A8F0F8;
  v4 = xmmword_2A1A8F108;
  *(a1 + 80) = qword_2A1A8F118;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_UTF7_mbrtowc_priv(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, unsigned int *a5, unint64_t *a6)
{
  if (!*a3)
  {
    result = 0;
    a5[2] = 0;
    *a5 = 0;
    v14 = 1;
    goto LABEL_5;
  }

  v18 = 0;
  v16 = 0;
  result = _citrus_UTF7_mbtoutf16(a1, &v18, a3, a4, a5, &v16);
  v13 = v16;
  if (v16 >= 0xFFFFFFFFFFFFFFFELL)
  {
    *a6 = v16;
    return result;
  }

  if (!result)
  {
    v15 = v18;
    if (((v18 + 9216) >> 10) < 0x3Fu)
    {
      if (v18)
      {
        goto LABEL_10;
      }

      a5[2] = 0;
      *a5 = 0;
      goto LABEL_18;
    }

    v17 = 0;
    result = _citrus_UTF7_mbtoutf16(a1, &v17, a3, a4 - v16, a5, &v16);
    v14 = v16;
    if (v16 < 0xFFFFFFFFFFFFFFFELL)
    {
      if (result)
      {
        return result;
      }

      if (((v17 + 0x2000) >> 10) > 0x3Eu)
      {
        v15 = ((v15 + 10240) << 10) + (v17 + 9216) + 0x10000;
        v13 += v16;
LABEL_10:
        *a6 = v13;
        result = 0;
        if (a2)
        {
          *a2 = v15;
        }

        return result;
      }

LABEL_18:
      *a6 = -1;
      return 92;
    }

    a5[1] = 1;
LABEL_5:
    *a6 = v14;
  }

  return result;
}

uint64_t _citrus_UTF7_mbtoutf16(uint64_t a1, _WORD *a2, unsigned __int8 **a3, uint64_t a4, unsigned int *a5, uint64_t *a6)
{
  v6 = 0;
  *a6 = 0;
  v7 = *a3;
  v8 = a5 + 2;
  v9 = *a3;
  while (1)
  {
    if (v6 == a5[1])
    {
      if (!a4)
      {
        v19 = 0;
        v20 = -2;
        goto LABEL_35;
      }

      --a4;
      v11 = *v9++;
      v10 = v11;
      a5[1] = v6 + 1;
      v12 = v6;
      *(v8 + v6) = v11;
      if ((v11 & 0x80) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v12 = v6;
      v10 = *(v8 + v6);
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_32;
      }
    }

    v13 = *a5;
    if ((*a5 & 1) == 0)
    {
      if ((v13 & 0x7FFFFFE) != 0)
      {
        return 22;
      }

      if (v10 != 43)
      {
        goto LABEL_29;
      }

      *a5 = v13 | 1;
      goto LABEL_22;
    }

    if (v10 == 45 && (v13 & 0x7FFFFE0) == 0)
    {
      *a5 = v13 & 0xF800001E;
      LOWORD(v10) = 43;
      goto LABEL_30;
    }

    v15 = *(a1 + 2 * v10);
    if (!v15)
    {
      break;
    }

    v16 = (v15 - 1) | (2 * v13) & 0x3FFFC0;
    v17 = (v13 & 0xF800001F) + 32 * v16;
    *a5 = v17;
    v18 = (v13 >> 1) & 0xF;
    v19 = 22;
    if (v18 == 15)
    {
      return v19;
    }

    if (((1 << v18) & 0x155) == 0)
    {
      if (((1 << v18) & 0x5400) == 0)
      {
        return v19;
      }

      *a5 = v17 & 0xFFFFFFE1 | (2 * (((v17 + 12) >> 1) & 0xF));
      v10 = v16 >> (((v17 + 12) >> 1) & 0xF);
      goto LABEL_30;
    }

    *a5 = v17 & 0xFFFFFFE1 | (2 * (((v13 + 12) >> 1) & 0xF));
LABEL_22:
    ++v6;
  }

  if ((*a5 & 0x1C) > 0xA)
  {
    return 22;
  }

  *a5 = v13 & 0xF8000000;
  v10 = *(v8 + v12);
  if (v10 == 45)
  {
    --a5[1];
    --v6;
    goto LABEL_22;
  }

  if ((v10 & 0x80) != 0)
  {
    goto LABEL_32;
  }

  if (v10 == 43)
  {
    goto LABEL_30;
  }

LABEL_29:
  if ((*(a1 + 2 * v10) & 0x700) == 0)
  {
LABEL_32:
    *a6 = -1;
    return 92;
  }

LABEL_30:
  *a2 = v10;
  if (a5[1] > v6 + 1)
  {
    return 22;
  }

  v19 = 0;
  a5[1] = 0;
  v20 = v9 - v7;
  if (!*a2)
  {
    v20 = 0;
  }

LABEL_35:
  *a6 = v20;
  *a3 = v9;
  return v19;
}

uint64_t _citrus_UTF7_wcrtomb_priv(uint64_t a1, char *__dst, unint64_t a3, unsigned int a4, unsigned int *a5, uint64_t *a6)
{
  if (!HIWORD(a4))
  {
    v30 = a6;
    v32[0] = a4;
    v9 = 1;
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = (a5 + 2);
    v13 = a5[1] == 0;
    while (1)
    {
      if (!v13)
      {
        return 22;
      }

      v14 = *a5;
      if ((*a5 & 0x1E) > 0xC)
      {
        return 22;
      }

      v15 = v32[v10];
      if (v15 <= 0x7F && (v15 == 43 || (*(a1 + 2 * v15) & 0x500) != 0))
      {
        if (v14)
        {
          v23 = (v14 >> 1) & 0xF;
          if (v23)
          {
            v24 = 3;
            if (v15 == 43)
            {
              v24 = 4;
            }

            if (v24 > a3)
            {
              return 7;
            }

            v25 = base64[(v14 >> 5 << (6 - v23)) & 0x3FLL];
            a5[1] = 1;
            *(a5 + 8) = v25;
            v14 &= 0xF8000001;
            v17 = 1;
          }

          else
          {
            v26 = 2;
            if (v15 == 43)
            {
              v26 = 3;
            }

            if (v26 > a3)
            {
              return 7;
            }

            v17 = 0;
          }

          if (v15 == 45 || *(a1 + 2 * v15))
          {
            *(v12 + v17++) = 45;
            a5[1] = v17;
          }

          v14 &= ~1u;
          *a5 = v14;
        }

        else
        {
          v16 = 1;
          if (v15 == 43)
          {
            v16 = 2;
          }

          if (v16 > a3)
          {
            return 7;
          }

          v17 = 0;
        }

        if ((v14 & 0x1E) != 0)
        {
          return 22;
        }

        a5[1] = v17 + 1;
        *(v12 + v17) = v15;
        if (v15 == 43)
        {
          v27 = a5[1];
          a5[1] = v27 + 1;
          *(v12 + v27) = 45;
        }
      }

      else
      {
        v18 = (v14 >> 1) & 0xF | 0x10;
        if (a3 < !(v14 & 1) + ((171 * v18) >> 10))
        {
          return 7;
        }

        v19 = (v14 >> 1) & 0xF;
        if ((v14 & 1) == 0)
        {
          if (v19)
          {
            return 22;
          }

          a5[1] = 1;
          *(a5 + 8) = 43;
          v14 |= 1u;
        }

        *a5 = v14 & 0xF8000001 | (32 * (v15 & 0xFFC0FFFF | (((v14 >> 5) & 0x3F) << 16))) | (2 * ((v18 - 6 * ((171 * v18) >> 10)) & 0x7F));
        v20 = v19 + 22;
        do
        {
          v21 = a5[1];
          v22 = base64[(((*a5 >> 5) & 0x3FFFFF) >> (v20 - 12)) & 0x3FLL];
          a5[1] = v21 + 1;
          *(v12 + v21) = v22;
          v20 -= 6;
        }

        while (v20 > 0xB);
      }

      v28 = a5[1];
      memcpy(__dst, a5 + 2, v28);
      a5[1] = 0;
      __dst += v28;
      a3 -= v28;
      v11 += v28;
      ++v10;
      v13 = 1;
      if (v10 == v9)
      {
        result = 0;
        a6 = v30;
        goto LABEL_43;
      }
    }
  }

  if (HIWORD(a4) <= 0x10u)
  {
    v30 = a6;
    v32[0] = ((a4 + 67043328) >> 10) - 10240;
    v32[1] = a4 & 0x3FF | 0xDC00;
    v9 = 2;
    goto LABEL_5;
  }

  result = 92;
  v11 = -1;
LABEL_43:
  *a6 = v11;
  return result;
}