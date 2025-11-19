uint64_t _citrus_DECHanyu_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_296014AF0;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_DECHanyu_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_DECHanyu_stdenc_mbtocs(uint64_t a1, int *a2, unsigned int *a3, unsigned __int8 **a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v18 = 0;
  result = _citrus_DECHanyu_mbrtowc_priv(&v18, a4, a5, a6, a7);
  if (result)
  {
    return result;
  }

  if (*a7 != -2)
  {
    v13 = v18;
    if (v18 < 0x80)
    {
      v15 = 0;
      v16 = 127;
LABEL_8:
      *a2 = v15;
      *a3 = v16 & v13;
      goto LABEL_9;
    }

    if (v18 < 0x10000)
    {
      v14 = 0;
    }

    else
    {
      if (HIWORD(v18) != 49867)
      {
        return 92;
      }

      v14 = 2;
    }

    if (BYTE1(v18) - 161 <= 0x5D && (v18 & 0x7F) - 33 <= 0x5D)
    {
      if ((v18 & 0x80) != 0)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v15 = v14 + v17;
      v16 = 32639;
      goto LABEL_8;
    }

    return 92;
  }

LABEL_9:
  if (a8)
  {
    if (*a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return 0;
}

uint64_t _citrus_DECHanyu_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, unsigned int a4, unsigned int a5, uint64_t *a6, void *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
    return _citrus_DECHanyu_wcrtomb_priv(a2, a3, a5, a6, a7);
  }

  if (a4)
  {
    if (a4 > 4 || (a5 >> 8) - 33 > 0x5D || a5 - 33 > 0x5D)
    {
      return 92;
    }

    if (a4 <= 2)
    {
      v8 = 0x8000;
    }

    else
    {
      v8 = -1026850816;
    }

    a5 |= v8 & 0xFFFFFF7F | ((a4 & 1) << 7);
    return _citrus_DECHanyu_wcrtomb_priv(a2, a3, a5, a6, a7);
  }

  if (a5 <= 0x7F)
  {
    return _citrus_DECHanyu_wcrtomb_priv(a2, a3, a5, a6, a7);
  }

  return 92;
}

uint64_t _citrus_DECHanyu_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_DECHanyu_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_DECHanyu_stdenc_get_state_desc(uint64_t a1, void *a2, int a3, int *a4)
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

uint64_t _citrus_DECHanyu_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8ED10;
  *a1 = _citrus_DECHanyu_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8ED20;
  v3 = *&off_2A1A8ED30;
  v4 = xmmword_2A1A8ED40;
  *(a1 + 80) = qword_2A1A8ED50;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_DECHanyu_mbrtowc_priv(int *a1, unsigned __int8 **a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    result = 0;
    *a4 = 0;
    a4[1] = 0;
    *a5 = 0;
    return result;
  }

  v6 = *a4;
  if ((*a4 - 2) < 2)
  {
    if (*(a4 + 8) == 194 && *(a4 + 9) == 203)
    {
      if (v6 != 3)
      {
        if (!a3)
        {
          goto LABEL_38;
        }

        v9 = *v5;
        if ((v9 - 161) <= 0x5D)
        {
          v15 = a3 - 1;
          v7 = v5 + 1;
          goto LABEL_36;
        }

LABEL_39:
        *a5 = -1;
        return 92;
      }

      v9 = *(a4 + 10);
      if ((v9 - 161) < 0x5E)
      {
        v11 = -1026883584;
        v7 = *a2;
        if (!a3)
        {
          goto LABEL_37;
        }

        goto LABEL_25;
      }
    }

    return 22;
  }

  if (v6 == 1)
  {
    v9 = *(a4 + 8);
    v7 = *a2;
    if ((v9 - 161) < 0x5E)
    {
      goto LABEL_18;
    }

    return 22;
  }

  if (v6)
  {
    return 22;
  }

  if (!a3)
  {
LABEL_38:
    result = 0;
    *a5 = -2;
    *a2 = v5;
    return result;
  }

  v7 = v5 + 1;
  v8 = *v5;
  v9 = *v5;
  if ((v8 & 0x80000000) == 0)
  {
    if (a1)
    {
      *a1 = v9;
    }

    result = 0;
    *a5 = v8 != 0;
    *a2 = v7;
    return result;
  }

  if ((v9 - 161) > 0x5D)
  {
    goto LABEL_39;
  }

  --a3;
  *a4 = 1;
  *(a4 + 8) = v8;
LABEL_18:
  if (v9 != 194)
  {
    v11 = 0;
    if (a3)
    {
      goto LABEL_25;
    }

LABEL_37:
    v5 = v7;
    goto LABEL_38;
  }

  if (!a3)
  {
    goto LABEL_37;
  }

  if (*v7 != 203)
  {
    goto LABEL_39;
  }

  *a4 = 2;
  *(a4 + 9) = -53;
  if (a3 == 1)
  {
    v5 = v7 + 1;
    goto LABEL_38;
  }

  v9 = v7[1];
  if ((v9 - 161) > 0x5D)
  {
    goto LABEL_39;
  }

  v15 = a3 - 2;
  v7 += 2;
LABEL_36:
  v11 = -1026883584;
  *a4 = 3;
  *(a4 + 10) = v9;
  if (!v15)
  {
    goto LABEL_37;
  }

LABEL_25:
  v14 = *v7;
  v12 = v7 + 1;
  v13 = v14;
  if ((v14 & 0x7Fu) - 33 > 0x5D)
  {
    goto LABEL_39;
  }

  if (a1)
  {
    *a1 = v11 | (v9 << 8) | v13;
  }

  result = 0;
  *a5 = v12 - v5;
  *a2 = v12;
  *a4 = 0;
  return result;
}

uint64_t _citrus_DECHanyu_wcrtomb_priv(void *a1, unint64_t a2, unsigned int a3, uint64_t *a4, void *a5)
{
  if (*a4)
  {
    return 22;
  }

  if (a3 >= 0x80)
  {
    if (a3 < 0x10000)
    {
      v10 = 0;
    }

    else
    {
      if (HIWORD(a3) != 49867)
      {
        goto LABEL_14;
      }

      *(a4 + 4) = -13374;
      v10 = 2;
      *a4 = 2;
      a3 = a3;
    }

    if ((a3 >> 8) - 161 <= 0x5D)
    {
      v8 = v10 | 1;
      *a4 = v10 | 1;
      *(a4 + v10 + 8) = BYTE1(a3);
      if ((a3 & 0x7F) - 33 <= 0x5D)
      {
        goto LABEL_5;
      }
    }

LABEL_14:
    *a5 = -1;
    return 92;
  }

  v8 = 0;
LABEL_5:
  *a4 = v8 + 1;
  *(a4 + v8 + 8) = a3;
  v9 = *a4;
  if (*a4 <= a2)
  {
    memcpy(a1, a4 + 1, *a4);
    result = 0;
    *a5 = v9;
    *a4 = 0;
  }

  else
  {
    *a5 = -1;
    return 7;
  }

  return result;
}