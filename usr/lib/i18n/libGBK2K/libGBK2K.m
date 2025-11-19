uint64_t _citrus_GBK2K_stdenc_init(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v8 = 4;
  v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v9)
  {
    return *__error();
  }

  v10 = v9;
  *v9 = 4;
  if (a3)
  {
    do
    {
      v11 = *a2;
      if ((v11 - 91) >= 0xFFFFFFE6)
      {
        v11 += 32;
      }

      if (a3 >= 7 && v11 == 50 && !_citrus_bcs_strncasecmp())
      {
        *v10 = 2;
        a2 += 7;
        a3 -= 7;
      }

      ++a2;
      --a3;
    }

    while (a3);
    v8 = *v10;
  }

  result = 0;
  *(a1 + 8) = v10;
  *a4 = 8;
  a4[1] = v8;
  a4[2] = 1;
  return result;
}

void _citrus_GBK2K_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_GBK2K_stdenc_mbtocs(uint64_t a1, int *a2, unsigned int *a3, char **a4, uint64_t a5, int *a6, void *a7, uint64_t a8)
{
  v16 = 0;
  v12 = _citrus_GBK2K_mbrtowc_priv(*(a1 + 8), &v16, a4, a5, a6, a7);
  if (v12)
  {
    return v12;
  }

  if (*a7 != -2)
  {
    v14 = v16;
    if (v16 <= 0x7F)
    {
      *a2 = 0;
LABEL_13:
      *a3 = v14;
      goto LABEL_14;
    }

    if (v16 < 0x10000)
    {
      if (v16 >> 8 >= 0xA1 && v16 >= 0xA1u)
      {
        *a2 = 1;
        v14 &= 0x7F7Fu;
        goto LABEL_13;
      }

      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    *a2 = v15;
    goto LABEL_13;
  }

LABEL_14:
  if (a8 && *a8)
  {
    (*a8)(*a3, *(a8 + 16));
  }

  return v12;
}

uint64_t _citrus_GBK2K_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, size_t *a7)
{
  v7 = 92;
  if (a4 <= 0)
  {
    if (a4 == -1)
    {
      a5 = 0;
      return _citrus_GBK2K_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
    }

    if (a4)
    {
      return v7;
    }
  }

  else
  {
    if (a4 == 3)
    {
      if (**(a1 + 8) == 4)
      {
        return _citrus_GBK2K_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
      }

      return 22;
    }

    if (a4 != 2)
    {
      if (a4 == 1)
      {
        a5 |= 0x8080u;
        return _citrus_GBK2K_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
      }

      return v7;
    }
  }

  return _citrus_GBK2K_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
}

uint64_t _citrus_GBK2K_stdenc_mbtowc(uint64_t a1, int *a2, char **a3, uint64_t a4, int *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_GBK2K_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_GBK2K_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_GBK2K_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8EE70;
  *a1 = _citrus_GBK2K_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EE80;
  v3 = *&off_2A1A8EE90;
  v4 = xmmword_2A1A8EEA0;
  *(a1 + 80) = qword_2A1A8EEB0;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_GBK2K_mbrtowc_priv(_DWORD *a1, int *a2, char **a3, uint64_t a4, int *a5, void *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    v8 = 0;
    *a5 = 0;
    *a6 = 0;
    return v8;
  }

  v7 = *a5;
  v8 = 22;
  v9 = (*a5 - 1);
  if (*a5 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        return v8;
      }

      if (*(a5 + 6) - 129 > 0x7D)
      {
        return 22;
      }
    }

    if (*(a5 + v9 + 4) - 58 < 0xFFFFFFF6 || *(a5 + v9 + 4) < -1)
    {
      return 22;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      return v8;
    }

    v9 = 0;
LABEL_14:
    if (*(a5 + v9 + 4) - 129 <= 0x7D)
    {
      goto LABEL_15;
    }

    return 22;
  }

LABEL_15:
  if (!a4)
  {
LABEL_33:
    v8 = 0;
    *a3 = v6;
    *a6 = -2;
    return v8;
  }

  v11 = (a5 + 1);
  v12 = *a5;
  while (1)
  {
    v13 = *v6++;
    *a5 = v12 + 1;
    v11[v12] = v13;
    v12 = *a5;
    if (*a5 > 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if ((*v11 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      if (*v11 - 129 > 0x7D)
      {
        goto LABEL_44;
      }
    }

    else if (v12 == 2)
    {
      if (*(a5 + 5) < -1)
      {
        goto LABEL_37;
      }

      v14 = *(a5 + 5);
      if ((v14 - 64) < 0x3F)
      {
        goto LABEL_37;
      }

      if (*a1 != 4 || (v14 - 48) >= 0xA)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    if (!--a4)
    {
      goto LABEL_33;
    }
  }

  if (v12 == 3)
  {
    if (*(a5 + 6) - 129 >= 0x7E)
    {
      goto LABEL_44;
    }

    goto LABEL_32;
  }

  if (v12 != 4)
  {
    goto LABEL_32;
  }

  if (*(a5 + 7) - 48 > 9)
  {
LABEL_44:
    *a6 = -1;
    return 92;
  }

LABEL_37:
  v16 = 0;
  v17 = v12 + 1;
  v18 = 4;
  do
  {
    v16 = *(a5 + v18) | (v16 << 8);
    --v17;
    ++v18;
  }

  while (v17 > 1);
  if (a2)
  {
    *a2 = v16;
  }

  v8 = 0;
  *a3 = v6;
  v19 = v12 - v7;
  if (!v16)
  {
    v19 = 0;
  }

  *a6 = v19;
  *a5 = 0;
  return v8;
}

uint64_t _citrus_GBK2K_wcrtomb_priv(_DWORD *a1, void *__dst, unint64_t a3, unsigned int a4, uint64_t a5, size_t *a6)
{
  if (*a5)
  {
    result = 22;
LABEL_29:
    *a6 = -1;
    return result;
  }

  if (a4 >= 0x10000)
  {
    LODWORD(v8) = 4;
  }

  else
  {
    LODWORD(v8) = 2;
  }

  if (a4 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v8;
  }

  if (v8 > a3)
  {
    result = 7;
    goto LABEL_29;
  }

  if (v8 == 4)
  {
    if (*a1 != 4)
    {
      goto LABEL_28;
    }

    *a5 = 1;
    *(a5 + 4) = HIBYTE(a4);
    if ((a4 + 2130706432) >> 25 > 0x3E)
    {
      goto LABEL_28;
    }

    *a5 = 2;
    *(a5 + 5) = BYTE2(a4);
    if ((HIWORD(a4) & 0xFE) - 48 > 9u)
    {
      goto LABEL_28;
    }

    *a5 = 3;
    *(a5 + 6) = BYTE1(a4);
    result = 92;
    if (BYTE1(a4) < 0x81u)
    {
      goto LABEL_29;
    }

    if (BYTE1(a4) == 255)
    {
      goto LABEL_29;
    }

    v10 = 4;
    *a5 = 4;
    *(a5 + 7) = a4;
    if ((a4 & 0xFE) - 48 > 9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v8 != 2)
    {
      v10 = 1;
      *a5 = 1;
      *(a5 + 4) = a4;
      if ((a4 & 0x80) == 0)
      {
        goto LABEL_30;
      }

LABEL_28:
      result = 92;
      goto LABEL_29;
    }

    *a5 = 1;
    *(a5 + 4) = BYTE1(a4);
    result = 92;
    if (BYTE1(a4) < 0x81u || BYTE1(a4) == 255)
    {
      goto LABEL_29;
    }

    v10 = 2;
    *a5 = 2;
    *(a5 + 5) = a4;
    if (a4 - 64 >= 0x3F)
    {
      if (a4 < 0x80u || a4 == 255)
      {
        goto LABEL_29;
      }

      v10 = 2;
    }
  }

LABEL_30:
  memcpy(__dst, (a5 + 4), v10);
  result = 0;
  *a6 = v10;
  *a5 = 0;
  return result;
}