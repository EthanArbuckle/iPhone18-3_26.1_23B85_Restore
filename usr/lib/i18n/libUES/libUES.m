uint64_t _citrus_UES_stdenc_init(uint64_t a1, char *a2, unint64_t a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  *v8 = 0;
  v8[1] = 0;
  if (a3)
  {
    do
    {
      v10 = *a2;
      if ((*a2 - 123) >= 0xE6u)
      {
        v10 = *a2 - 32;
      }

      if (a3 >= 3 && v10 == 67 && !_citrus_bcs_strncasecmp())
      {
        *(v9 + 2) |= 1u;
        a2 += 3;
        a3 -= 3;
      }

      ++a2;
      --a3;
    }

    while (a3);
    v11 = 10;
    if ((v9[1] & 1) == 0)
    {
      v11 = 12;
    }
  }

  else
  {
    v11 = 12;
  }

  result = 0;
  *v9 = v11;
  *(a1 + 8) = v9;
  *a4 = 16;
  a4[1] = v11;
  a4[2] = 1;
  return result;
}

void _citrus_UES_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_UES_stdenc_mbtocs(uint64_t a1, _DWORD *a2, unsigned int *a3, char **a4, uint64_t a5, int *a6, void *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_UES_mbrtowc_priv(*(a1 + 8), &v15, a4, a5, a6, a7);
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

uint64_t _citrus_UES_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, void *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_UES_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
}

uint64_t _citrus_UES_stdenc_mbtowc(uint64_t a1, unsigned int *a2, char **a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_UES_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_UES_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_UES_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8F028;
  *a1 = _citrus_UES_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F038;
  v3 = *&off_2A1A8F048;
  v4 = xmmword_2A1A8F058;
  *(a1 + 80) = qword_2A1A8F068;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_UES_mbrtowc_priv(uint64_t a1, unsigned int *a2, char **a3, uint64_t a4, int *a5, void *a6)
{
  v8 = *a3;
  if (!*a3)
  {
    result = 0;
    *a5 = 0;
    *(a5 + 1) = 0;
    *a6 = 0;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v14 = a5 + 1;
  v15 = *a3;
  while (1)
  {
    v16 = *a5;
    if (v16 == v12)
    {
      if (!a4)
      {
        goto LABEL_40;
      }

      --a4;
      v18 = *v15++;
      v17 = v18;
      v16 = v12 | 1;
      *a5 = v12 | 1;
      v14[v12] = v18;
    }

    else
    {
      v17 = v14[v12];
    }

    if (v17 == 92)
    {
      if (v16 == (v12 | 1))
      {
        if (!a4)
        {
LABEL_40:
          result = 0;
          *a3 = v15;
          *a6 = -2;
          return result;
        }

        --a4;
        v20 = *v15++;
        v19 = v20;
        *a5 = v16 + 1;
        v14[v16] = v20;
      }

      else
      {
        v19 = v14[v12 | 1];
      }

      if (v19 == 85)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          goto LABEL_45;
        }

        v22 = 10;
      }

      else
      {
        if (v19 != 117)
        {
          goto LABEL_45;
        }

        v22 = v12 + 6;
      }

      v21 = 0;
      v23 = v12 + 6;
      do
      {
        v24 = *a5;
        if (v23 - 4 == v24)
        {
          if (!a4)
          {
            goto LABEL_40;
          }

          --a4;
          v25 = *v15++;
          *a5 = v24 + 1;
          v14[v24] = v25;
        }

        v26 = *(a5 + v23);
        v27 = v26 - 48;
        if (v26 - 48 >= 0xA)
        {
          if (v26 - 65 > 5)
          {
            v27 = v26 - 87;
            if (v26 < 0x57 || v26 - 103 < 0xFFFFFFFA)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v27 = v26 - 55;
          }
        }

        v21 = v27 | (16 * v21);
        ++v23;
      }

      while (2 - v22 + v23 != 6);
      v12 = v22;
    }

    else
    {
      v21 = 0;
    }

    if (v12 != 6)
    {
      break;
    }

    if (v13)
    {
      goto LABEL_45;
    }

    if (*(a1 + 8))
    {
      goto LABEL_47;
    }

    v12 = 6;
    v13 = v21;
    if ((v21 & 0xFFFFFC00) != 0xD800)
    {
      if (v21 < 0x80 || (v21 & 0xFFFFFC00) == 0xDC00)
      {
LABEL_45:
        v21 = *(a5 + 4);
        v30 = *a5 - 1;
        if (*a5 >= 2)
        {
          memmove(v14, a5 + 5, (*a5 - 1));
        }

        goto LABEL_55;
      }

LABEL_54:
      v30 = 0;
      goto LABEL_55;
    }
  }

  if (v12 == 10)
  {
LABEL_47:
    if (v21 > 0x9F)
    {
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }
    }

    else if (v21 - 36 > 0x3C || ((1 << (v21 - 36)) & 0x1000000010000001) == 0)
    {
      goto LABEL_53;
    }

    if ((v21 & 0x7FFFF800 | 0x400) != 0xDC00)
    {
      goto LABEL_54;
    }

LABEL_53:
    *a6 = -1;
    return 92;
  }

  if (v12 != 12 || v21 >> 10 != 55)
  {
    goto LABEL_45;
  }

  v30 = 0;
  v21 = v21 + (v13 << 10) - 56613888;
LABEL_55:
  *a5 = v30;
  if (a2)
  {
    *a2 = v21;
  }

  result = 0;
  v31 = (v15 - v8);
  if (!v21)
  {
    v31 = 0;
  }

  *a6 = v31;
  *a3 = v15;
  return result;
}

uint64_t _citrus_UES_wcrtomb_priv(uint64_t a1, void *__dst, unint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  if (*a5)
  {
    return 22;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    if (a4 <= 0x7F)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (HIWORD(a4))
    {
      v12 = *(a1 + 8) & 1;
      if (HIWORD(a4) > 0x10u || v12)
      {
        if ((a4 & 0x80000000) != 0 || !v12)
        {
          *a6 = -1;
          return 92;
        }

        if (a3 >= 0xA)
        {
          *(a5 + 4) = 21852;
          v17 = (a5 + 6);
          for (i = 36; i > 4; i -= 4)
          {
            *v17++ = a0123456789abcd[(a4 >> (i - 8)) & 0xFLL];
          }

          v9 = 10;
          goto LABEL_32;
        }
      }

      else if (a3 >= 0xC)
      {
        *(a5 + 4) = 30044;
        v13 = 20;
        v14 = 6;
        do
        {
          *(a5 + v14) = a0123456789abcd[((((a4 - 0x10000) >> 10) + 55296) >> (v13 - 8)) & 0xFLL];
          v13 -= 4;
          ++v14;
        }

        while (v13 > 4);
        *a5 = *a5 + v14 - 4;
        *(a5 + 10) = 30044;
        v15 = 20;
        v16 = 12;
        do
        {
          *(a5 + v16) = a0123456789abcd[((a4 & 0x3FF | 0xDC00) >> (v15 - 8)) & 0xFLL];
          v15 -= 4;
          ++v16;
        }

        while (v15 > 4);
        v9 = *a5 + v16 - 10;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

LABEL_12:
    if (a3 >= 6)
    {
      *(a5 + 4) = 30044;
      v10 = (a5 + 6);
      for (j = 20; j > 4; j -= 4)
      {
        *v10++ = a0123456789abcd[(a4 >> (j - 8)) & 0xFLL];
      }

      v9 = 6;
      goto LABEL_32;
    }

LABEL_27:
    *a6 = -1;
    return 7;
  }

  if (a4 > 0x9F)
  {
    goto LABEL_11;
  }

  if (a4 - 36 <= 0x3C && ((1 << (a4 - 36)) & 0x1000000010000001) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (!a3)
  {
    goto LABEL_27;
  }

  *(a5 + 4) = a4;
  v9 = 1;
LABEL_32:
  v19 = v9;
  memcpy(__dst, (a5 + 4), v9);
  result = 0;
  *a6 = v19;
  *a5 = 0;
  return result;
}