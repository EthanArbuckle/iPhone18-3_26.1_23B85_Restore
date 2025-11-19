uint64_t _citrus_MSKanji_stdenc_init(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  for (*v8 = 0; a3; --a3)
  {
    v10 = *a2;
    if ((*a2 - 123) >= 0xE6u)
    {
      v10 = *a2 - 32;
    }

    if (a3 >= 7 && v10 == 74 && !_citrus_bcs_strncasecmp())
    {
      *v9 |= 1u;
      a2 += 7;
      a3 -= 7;
    }

    ++a2;
  }

  result = 0;
  *(a1 + 8) = v9;
  *a4 = xmmword_29601FC00;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_MSKanji_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_MSKanji_stdenc_mbtocs(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned __int8 **a4, uint64_t a5, int *a6, void *a7, uint64_t a8)
{
  v26 = 0;
  v12 = *(a1 + 8);
  result = _citrus_MSKanji_mbrtowc_priv(&v26, a4, a5, a6, a7);
  if (!result)
  {
    if (*a7 != -2)
    {
      v14 = v26;
      if (v26 > 0x7F)
      {
        if (v26 > 0xFF)
        {
          v15 = BYTE1(v26);
          if (BYTE1(v26) - 129 >= 0x1F && BYTE1(v26) - 224 > 0x1C)
          {
            return 92;
          }

          v17 = v26;
          if (v26 - 64 >= 0x3F && v26 - 128 > 0x7C)
          {
            return 92;
          }

          if (BYTE1(v26) >= 0xF0u && (*v12 & 1) != 0)
          {
            *a2 = 3;
            if (v14 - 61599 < 0x5E || v14 > 0xF29E)
            {
              v19 = -237;
            }

            else
            {
              v19 = -240;
            }

            if (v14 <= 0xF49E)
            {
              v20 = v19;
            }

            else
            {
              v20 = -206;
            }
          }

          else
          {
            *a2 = 2;
            v20 = -129;
          }

          v21 = v20 + v15;
          if (v21 <= 0x5E)
          {
            v22 = 2 * v21;
          }

          else
          {
            v22 = 2 * v21 + 16777088;
          }

          v23 = v17 - 31;
          v24 = v17 - 32;
          if (v23 > 0x60)
          {
            v23 = v24;
          }

          if (v23 <= 0x7E)
          {
            v25 = 33;
          }

          else
          {
            v23 -= 94;
            v25 = 34;
          }

          v14 = v23 | ((v22 + v25) << 8);
        }

        else
        {
          *a2 = 1;
          v14 &= 0x7Fu;
        }
      }

      else
      {
        *a2 = 0;
      }

      *a3 = v14;
    }

    if (a8)
    {
      if (*a8)
      {
        (*a8)(*a3, *(a8 + 16));
      }
    }

    return 0;
  }

  return result;
}

uint64_t _citrus_MSKanji_stdenc_cstomb(uint64_t a1, _BYTE *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 <= 0)
  {
    if (a4 == -1)
    {
      a5 = 0;
    }

    else if (a4 || a5 > 0x7F)
    {
      return 92;
    }

    return _citrus_MSKanji_wcrtomb_priv(a2, a3, a5, a7);
  }

  if (a4 == 1)
  {
    if (a5 <= 0x7F)
    {
      a5 |= 0x80u;
      return _citrus_MSKanji_wcrtomb_priv(a2, a3, a5, a7);
    }

    return 92;
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      return 92;
    }

    if ((**(a1 + 8) & 1) == 0)
    {
      return 92;
    }

    v7 = a5 >> 8;
    if (a5 >> 8 < 0x21)
    {
      return 92;
    }

    if (a5 >> 12 > 2)
    {
      if ((a5 - 19712) >> 9 >= 0x19)
      {
        return 92;
      }

      v9 = 206;
    }

    else if (v7 == 34 || a5 >> 9 > 0x12)
    {
      v9 = 237;
    }

    else
    {
      v9 = 240;
    }

    goto LABEL_24;
  }

  if (a5 - 38912 < 0xFFFF8900)
  {
    return 92;
  }

  v7 = a5 >> 8;
  if (a5 >> 8 >= 0x5F)
  {
    v9 = 193;
  }

  else
  {
    v9 = 129;
  }

LABEL_24:
  if (a5 - 127 < 0xFFFFFFA2)
  {
    return 92;
  }

  v11 = v7 - 33;
  if (a5 <= 0x5Fu)
  {
    v12 = 31;
  }

  else
  {
    v12 = 32;
  }

  if (v11)
  {
    v12 = 126;
  }

  a5 = (v12 + a5) | ((v9 + (v11 >> 1)) << 8);
  return _citrus_MSKanji_wcrtomb_priv(a2, a3, a5, a7);
}

uint64_t _citrus_MSKanji_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_MSKanji_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_MSKanji_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_MSKanji_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8EFD0;
  *a1 = _citrus_MSKanji_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EFE0;
  v3 = *&off_2A1A8EFF0;
  v4 = xmmword_2A1A8F000;
  *(a1 + 80) = qword_2A1A8F010;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_MSKanji_mbrtowc_priv(int *a1, unsigned __int8 **a2, uint64_t a3, int *a4, void *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    result = 0;
    *a4 = 0;
    *a5 = 0;
    return result;
  }

  v6 = *a4;
  if (*a4)
  {
    if (v6 != 1)
    {
LABEL_24:
      *a4 = 0;
      *a5 = -1;
      return 92;
    }

    v7 = *(a4 + 4);
  }

  else
  {
    if (!a3)
    {
LABEL_32:
      result = 0;
      *a5 = -2;
      *a2 = v5;
      return result;
    }

    v9 = *v5++;
    v7 = v9;
    *(a4 + 4) = v9;
    *a4 = 1;
    --a3;
  }

  v10 = (a4 + 1);
  v11 = v7 - 129;
  v12 = v7 - 224;
  v14 = v11 < 0x1F || v12 < 0x1D;
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = 1;
    while (a3)
    {
      v17 = *v5++;
      v10[v16] = v17;
      v16 = *a4 + 1;
      *a4 = v16;
      --a3;
      if (v16 >= v15)
      {
        *a2 = v5;
        v18 = *(a4 + 5);
        if ((v18 - 64) < 0x3F || (v18 - 128) <= 0x7C)
        {
          v19 = v18 | (*v10 << 8);
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_32;
  }

  *a2 = v5;
  v19 = *v10;
LABEL_27:
  *a4 = 0;
  if (a1)
  {
    *a1 = v19;
  }

  result = 0;
  v20 = v15 - v6;
  if (!v19)
  {
    v20 = 0;
  }

  *a5 = v20;
  return result;
}

uint64_t _citrus_MSKanji_wcrtomb_priv(_BYTE *a1, unint64_t a2, unsigned int a3, uint64_t *a4)
{
  if (HIWORD(a3))
  {
    goto LABEL_13;
  }

  if (a3 < 0x100)
  {
    if (a2)
    {
      *a1 = a3;
      result = 92;
      if (a3 - 129 >= 0x1F && a3 - 224 > 0x1C)
      {
        result = 0;
        v5 = 1;
        goto LABEL_15;
      }

LABEL_14:
      v5 = -1;
      goto LABEL_15;
    }

LABEL_8:
    result = 7;
    goto LABEL_14;
  }

  if (a2 < 2)
  {
    goto LABEL_8;
  }

  if ((*a1 = bswap32(a3) >> 16, (a3 >> 8) - 129 >= 0x1F) && (a3 >> 8) - 224 > 0x1C || (result = 0, v5 = 2, a3 - 64 >= 0x3F) && a3 - 128 >= 0x7D)
  {
LABEL_13:
    result = 92;
    goto LABEL_14;
  }

LABEL_15:
  *a4 = v5;
  return result;
}