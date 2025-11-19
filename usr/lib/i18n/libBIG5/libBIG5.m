uint64_t _citrus_BIG5_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x410uLL, 0x10A0040E7A18792uLL);
  if (v8)
  {
    v9 = v8;
    bzero(v8, 0x410uLL);
    v9[1] = v9;
    if (a2 && a3 && *_citrus_bcs_skip_ws_len())
    {
      if (!_citrus_prop_parse_variable())
      {
LABEL_13:
        result = 0;
        *(a1 + 8) = v9;
        *a4 = xmmword_296013C90;
        *(a4 + 16) = 1;
        return result;
      }

      _citrus_BIG5_encoding_module_uninit(v9);
      bzero(v9, 0x410uLL);
      v9[1] = v9;
    }

    for (i = 0; i != 376; i += 4)
    {
      *(v9 + i + 660) |= 1u;
    }

    for (j = 0; j != 252; j += 4)
    {
      *(v9 + j + 272) |= 2u;
    }

    for (k = 0; k != 376; k += 4)
    {
      *(v9 + k + 660) |= 2u;
    }

    goto LABEL_13;
  }

  return *__error();
}

void _citrus_BIG5_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    _citrus_BIG5_encoding_module_uninit(v1);

    free(v1);
  }
}

uint64_t _citrus_BIG5_stdenc_mbtocs(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4, uint64_t a5, int *a6, uint64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_BIG5_mbrtowc_priv(*(a1 + 8), &v15, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v15;
      *a2 = v15 > 255;
      *a3 = v14;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_BIG5_stdenc_cstomb(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4 > 1)
  {
    return 92;
  }

  return _citrus_BIG5_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a7);
}

uint64_t _citrus_BIG5_stdenc_mbtowc(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t a4, int *a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_BIG5_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_BIG5_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_BIG5_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8ECB8;
  *a1 = _citrus_BIG5_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8ECC8;
  v3 = *&off_2A1A8ECD8;
  v4 = xmmword_2A1A8ECE8;
  *(a1 + 80) = qword_2A1A8ECF8;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

void *_citrus_BIG5_encoding_module_uninit(void **a1)
{
  result = *a1;
  if (result)
  {
    do
    {
      v3 = *result;
      v4 = result[1];
      if (*result)
      {
        v5 = *result;
      }

      else
      {
        v5 = a1;
      }

      v5[1] = v4;
      *v4 = v3;
      free(result);
      result = *a1;
    }

    while (*a1);
  }

  return result;
}

uint64_t _citrus_BIG5_fill_rowcol(uint64_t a1, const char *a2, unint64_t a3, unint64_t a4)
{
  if ((a4 | a3) > 0xFF)
  {
    return 22;
  }

  v5 = a3;
  v7 = strcmp("row", a2) != 0;
  if (v5 <= a4)
  {
    v8 = 1 << v7;
    do
    {
      *(a1 + 16 + 4 * v5++) |= v8;
    }

    while (a4 + 1 != v5);
  }

  return 0;
}

uint64_t _citrus_BIG5_fill_excludes(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a4 | a3) >> 16)
  {
    return 22;
  }

  v4 = a4;
  v5 = a3;
  v7 = *(a1 + 8);
  v8 = **(v7 + 8);
  if (v8 && *(v8 + 20) >= a3)
  {
    return 22;
  }

  v9 = malloc_type_malloc(0x18uLL, 0x10A00404E934A1DuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  result = 0;
  v10[4] = v5;
  v10[5] = v4;
  *v10 = 0;
  *(v10 + 1) = v7;
  *v7 = v10;
  *(a1 + 8) = v10;
  return result;
}

uint64_t _citrus_BIG5_mbrtowc_priv(void *a1, _DWORD *a2, uint64_t *a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    result = 0;
    *a5 = 0;
    goto LABEL_29;
  }

  v7 = *a5;
  if (*a5)
  {
    if (v7 != 1)
    {
LABEL_27:
      *a5 = 0;
      result = 92;
      v6 = -1;
      goto LABEL_29;
    }

    v8 = *(a5 + 4);
  }

  else
  {
    if (!a4)
    {
LABEL_28:
      result = 0;
      *a3 = v6;
      v6 = -2;
      goto LABEL_29;
    }

    v10 = *v6++;
    v8 = v10;
    *(a5 + 4) = v10;
    *a5 = 1;
    --a4;
  }

  v11 = (a5 + 1);
  v12 = *(a1 + v8 + 4);
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v12)
  {
    v16 = 1;
    while (a4)
    {
      v17 = *v6++;
      v11[v16] = v17;
      v16 = *a5 + 1;
      *a5 = v16;
      --a4;
      if (v16 >= v13)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_12;
        }

        v18 = *(a5 + 5);
        if ((*(a1 + v18 + 4) & 2) != 0)
        {
          v14 = v18 | (*v11 << 8);
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

LABEL_12:
  v14 = *v11;
LABEL_13:
  v15 = *a1;
  if (*a1)
  {
    while (*(v15 + 4) > v14 || *(v15 + 5) < v14)
    {
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_27;
  }

LABEL_17:
  *a3 = v6;
  *a5 = 0;
  if (a2)
  {
    *a2 = v14;
  }

  result = 0;
  LODWORD(v6) = v13 - v7;
  if (!v14)
  {
    LODWORD(v6) = 0;
  }

  v6 = v6;
LABEL_29:
  *a6 = v6;
  return result;
}

uint64_t _citrus_BIG5_wcrtomb_priv(void *a1, _BYTE *a2, unint64_t a3, unsigned int a4, uint64_t *a5)
{
  if (HIWORD(a4))
  {
    goto LABEL_14;
  }

  v5 = *a1;
  if (*a1)
  {
    while (*(v5 + 4) > a4 || *(v5 + 5) < a4)
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_14;
  }

LABEL_6:
  if (a4 < 0x8000)
  {
    if (a4 < 0x100)
    {
      if (a3)
      {
        result = 0;
        *a2 = a4;
        v7 = 1;
        goto LABEL_16;
      }

LABEL_17:
      result = 7;
      goto LABEL_15;
    }

LABEL_14:
    result = 92;
LABEL_15:
    v7 = -1;
    goto LABEL_16;
  }

  if ((*(a1 + (a4 >> 8) + 4) & 1) == 0 || (*(a1 + a4 + 4) & 2) == 0)
  {
    goto LABEL_14;
  }

  if (a3 < 2)
  {
    goto LABEL_17;
  }

  result = 0;
  *a2 = bswap32(a4) >> 16;
  v7 = 2;
LABEL_16:
  *a5 = v7;
  return result;
}