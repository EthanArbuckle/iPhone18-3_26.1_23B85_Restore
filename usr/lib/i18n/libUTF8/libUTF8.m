uint64_t _citrus_UTF8_stdenc_mbtocsn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unsigned __int8 **a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v12 = *a6;
  *a9 = 0;
  v30 = 0;
  if (*a5 >= a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = *a5;
  }

  if (v13)
  {
    v14 = a7;
    v16 = 0;
    v17 = 0;
    v25 = v12;
    v31 = 0;
    while (1)
    {
      a11(a12);
      result = _citrus_UTF8_mbrtowc_priv(&v31, a6, v14, a8, &v30);
      if (result)
      {
        break;
      }

      v19 = v30;
      if (v30 == -2)
      {
        result = 0;
        *a9 = -2;
        break;
      }

      v20 = v31;
      *(a2 + 4 * v17) = 0;
      *(a3 + 4 * v17) = v20;
      if (v19 > v14)
      {
        _citrus_UTF8_stdenc_mbtocsn_cold_2();
      }

      v16 += v19;
      *a9 = v16;
      v21 = *a6;
      if (*a6 < v12)
      {
        _citrus_UTF8_stdenc_mbtocsn_cold_1();
      }

      *(a4 + 2 * v17) = v21 - v25;
      if (a10 && *a10)
      {
        v22 = *(a10 + 16);
        (*a10)();
      }

      result = 0;
      if (++v17 < v13)
      {
        v23 = &v12[v14];
        v12 = v21;
        v14 = v23 - v21;
        if (v23 != v21)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    LODWORD(v17) = 0;
    result = 0;
  }

  *a5 = v17;
  return result;
}

uint64_t _citrus_UTF8_mbrtowc_priv(unsigned int *a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, int64_t *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    result = 0;
    *(a4 + 8) = 0;
    *a4 = 0;
    *a5 = 0;
    return result;
  }

  v6 = *a4;
  if (*a4)
  {
    v7 = *(a4 + 4);
  }

  else
  {
    if (!a3)
    {
LABEL_34:
      result = 0;
      *a2 = v5;
      *a5 = -2;
      return result;
    }

    --a3;
    v9 = *v5++;
    v7 = v9;
    v6 = 1;
    *a4 = 1;
    *(a4 + 4) = v9;
  }

  v10 = _UTF8_count_array[v7];
  if (_UTF8_count_array[v7])
  {
    v11 = v6 <= v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
LABEL_11:
    *a5 = -1;
    return 92;
  }

  if (v10 != 1)
  {
    if (v6 >= v10)
    {
LABEL_22:
      v7 &= 0x7Fu >> v10;
      if (v10 <= 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = v10;
      }

      v16 = (a4 + 5);
      v17 = v15 - 1;
      while (1)
      {
        v18 = v7;
        v20 = *v16++;
        v19 = v20;
        if ((v20 & 0xC0) != 0x80)
        {
          goto LABEL_11;
        }

        v7 = v19 & 0x3F | (v18 << 6);
        if (!--v17)
        {
          if ((v18 & 0x3FFFFE0) == 0x360)
          {
            goto LABEL_11;
          }

          v21 = v10 - 1;
          v22 = &dword_296025E08;
          v23 = 6;
          while (*(v22 - 1) > v7 || *v22 <= v7)
          {
            --v21;
            ++v22;
            if (!--v23)
            {
              goto LABEL_11;
            }
          }

          if (v21)
          {
            goto LABEL_11;
          }

          goto LABEL_13;
        }
      }
    }

    v13 = (a4 + 4);
    while (a3)
    {
      --a3;
      v14 = *v5++;
      *a4 = v6 + 1;
      v13[v6] = v14;
      v6 = *a4;
      if (*a4 >= v10)
      {
        v7 = *v13;
        goto LABEL_22;
      }
    }

    goto LABEL_34;
  }

LABEL_13:
  if (a1)
  {
    *a1 = v7;
  }

  if (v7)
  {
    v12 = v5 - *a2;
  }

  else
  {
    v12 = 0;
  }

  result = 0;
  *a5 = v12;
  *a2 = v5;
  *a4 = 0;
  return result;
}

uint64_t _citrus_UTF8_stdenc_cstombn(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v23 = 0;
  v12 = *a6;
  if (v12 < 1)
  {
    v18 = 0;
    LODWORD(v17) = 0;
    result = 0;
    goto LABEL_15;
  }

  v22 = a8;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    a10(a11);
    v19 = *(a4 + 4 * v17);
    if (v19 != -1)
    {
      break;
    }

    v20 = 0;
LABEL_7:
    result = _citrus_UTF8_wcrtomb_priv(a2, a3, v20, &v23);
    if (!result)
    {
      if (a3 < v23)
      {
        _citrus_UTF8_stdenc_cstombn_cold_1();
      }

      result = 0;
      ++v17;
      v18 += v23;
      a3 -= v23;
      if (a3)
      {
        a2 += v23;
        if (v17 < v12)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  if (!v19)
  {
    v20 = *(a5 + 4 * v17);
    goto LABEL_7;
  }

  result = 92;
LABEL_14:
  a8 = v22;
LABEL_15:
  *a6 = v17;
  *a8 = v18;
  return result;
}

uint64_t _citrus_UTF8_wcrtomb_priv(_BYTE *a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  if (a3 >> 11 == 27)
  {
    goto LABEL_8;
  }

  v4 = &dword_296025E08;
  v5 = 2;
  while (*(v4 - 1) > a3 || *v4 <= a3)
  {
    ++v4;
    if (++v5 == 8)
    {
      goto LABEL_8;
    }
  }

  if ((v5 - 8) < 0xFFFFFFFFFFFFFFFALL)
  {
LABEL_8:
    v6 = 92;
LABEL_9:
    v7 = -1;
    goto LABEL_10;
  }

  v7 = v5 - 1;
  if (v5 - 1 > a2)
  {
    v6 = 7;
    goto LABEL_9;
  }

  if (a1)
  {
    if (v7 >= 2)
    {
      v9 = v5;
      do
      {
        a1[(v9 - 2)] = a3 & 0x3F | 0x80;
        a3 = a3 >> 6;
        --v9;
      }

      while (v9 > 2);
    }

    v6 = 0;
    v10 = v5 == 2;
    v11 = a3 & (0x7Fu >> v7) | (0xFF00u >> v7);
    if (v10)
    {
      LOBYTE(v11) = a3 & 0x7F;
    }

    if (v10)
    {
      v7 = 1;
    }

    *a1 = v11;
  }

  else
  {
    v6 = 0;
  }

LABEL_10:
  *a4 = v7;
  return v6;
}

uint64_t _citrus_UTF8_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_UTF8_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_296025CF0;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_UTF8_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_UTF8_stdenc_mbtocs(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned __int8 **a4, uint64_t a5, uint64_t a6, int64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_UTF8_mbrtowc_priv(&v15, a4, a5, a6, a7);
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

uint64_t _citrus_UTF8_stdenc_cstomb(uint64_t a1, _BYTE *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, unint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_UTF8_wcrtomb_priv(a2, a3, a5, a7);
}

uint64_t _citrus_UTF8_stdenc_mbtowc(uint64_t a1, unsigned int *a2, unsigned __int8 **a3, uint64_t a4, uint64_t a5, int64_t *a6, uint64_t a7)
{
  v9 = _citrus_UTF8_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_UTF8_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8F130;
  *a1 = _citrus_UTF8_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F140;
  v3 = *&off_2A1A8F150;
  v4 = xmmword_2A1A8F160;
  *(a1 + 80) = off_2A1A8F170;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}