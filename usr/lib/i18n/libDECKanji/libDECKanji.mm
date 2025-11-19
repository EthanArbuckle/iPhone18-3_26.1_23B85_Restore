uint64_t _citrus_DECKanji_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_296015970;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_DECKanji_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_DECKanji_stdenc_mbtocs(uint64_t a1, int *a2, unsigned int *a3, char **a4, uint64_t a5, unint64_t *a6, void *a7, uint64_t a8)
{
  v19 = 0;
  v12 = _citrus_DECKanji_mbrtowc_priv(&v19, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v19;
      if ((v19 & 0x80) != 0)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }

      if (v19 >= 0x100)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1;
      }

      if (v19 >= 0x100)
      {
        v17 = 32639;
      }

      else
      {
        v17 = 127;
      }

      if (v19 >= 0x80)
      {
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 127;
      }

      *a2 = v16;
      *a3 = v18 & v14;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_DECKanji_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, unint64_t *a7)
{
  if (a4 <= 0)
  {
    if (a4 == -1)
    {
      v8 = 0;
      return _citrus_DECKanji_wcrtomb_priv(a2, a3, v8, a6, a7);
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    return 92;
  }

  switch(a4)
  {
    case 3:
      a4 = 0x8000;
      break;
    case 2:
      a4 = 32896;
      break;
    case 1:
      a4 = 128;
LABEL_8:
      if (a5 > 0x7F)
      {
        return 92;
      }

      break;
    default:
      return 92;
  }

  v8 = a4 | a5;
  return _citrus_DECKanji_wcrtomb_priv(a2, a3, v8, a6, a7);
}

uint64_t _citrus_DECKanji_stdenc_mbtowc(uint64_t a1, unsigned int *a2, char **a3, uint64_t a4, unint64_t *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_DECKanji_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_DECKanji_stdenc_get_state_desc(uint64_t a1, void *a2, int a3, int *a4)
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

uint64_t _citrus_DECKanji_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8ED68;
  *a1 = _citrus_DECKanji_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8ED78;
  v3 = *&off_2A1A8ED88;
  v4 = xmmword_2A1A8ED98;
  *(a1 + 80) = qword_2A1A8EDA8;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_DECKanji_mbrtowc_priv(unsigned int *a1, char **a2, uint64_t a3, unint64_t *a4, void *a5)
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
  if (*a4 == 1)
  {
    v7 = *(a4 + 8);
  }

  else
  {
    if (v6)
    {
      return 22;
    }

    if (!a3)
    {
      goto LABEL_23;
    }

    --a3;
    v8 = *v5++;
    v7 = v8;
    *a4 = 1;
    *(a4 + 8) = v8;
  }

  if (v7 >= 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v12 = 1;
    while (a3)
    {
      --a3;
      v13 = *v5++;
      *a4 = v12 + 1;
      *(a4 + v12 + 8) = v13;
      v12 = *a4;
      if (*a4 >= v10)
      {
        *a2 = v5;
        v11 = __rev16(*(a4 + 4));
        goto LABEL_18;
      }
    }

LABEL_23:
    result = 0;
    *a5 = -2;
    *a2 = v5;
    return result;
  }

  *a2 = v5;
  v11 = *(a4 + 8);
LABEL_18:
  *a4 = 0;
  if (a1)
  {
    *a1 = v11;
  }

  result = 0;
  v14 = v10 - v6;
  if (!v11)
  {
    v14 = 0;
  }

  *a5 = v14;
  return result;
}

uint64_t _citrus_DECKanji_wcrtomb_priv(void *a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t *a5)
{
  if (*a4)
  {
    return 22;
  }

  if (a3 >= 0x100)
  {
    if ((a3 & 0x8000) == 0)
    {
      *a5 = -1;
      return 92;
    }

    *(a4 + 8) = BYTE1(a3);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + 1;
  *a4 = v8 + 1;
  *(a4 + 8 + v8) = a3;
  if (v8 >= a2)
  {
    *a5 = -1;
    return 7;
  }

  else
  {
    memcpy(a1, (a4 + 8), v8 + 1);
    result = 0;
    *a5 = v9;
    *a4 = 0;
  }

  return result;
}