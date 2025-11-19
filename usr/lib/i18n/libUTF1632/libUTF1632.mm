uint64_t _citrus_UTF1632_stdenc_init(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  *v8 = 0;
  v8[1] = 0;
  v10 = 1;
  if (a3)
  {
    v11 = 0;
    while (1)
    {
      v12 = *a2;
      if (v12 <= 0x61)
      {
        break;
      }

      if (*a2 > 0x6Bu)
      {
        switch(v12)
        {
          case 'l':
            goto LABEL_30;
          case 's':
            goto LABEL_37;
          case 'u':
            goto LABEL_24;
        }
      }

      else
      {
        switch(v12)
        {
          case 'b':
            goto LABEL_27;
          case 'f':
            goto LABEL_33;
          case 'i':
            goto LABEL_14;
        }
      }

LABEL_41:
      ++a2;
      if (!--a3)
      {
        v14 = v9[3];
        v10 = *v9 == 0;
        goto LABEL_45;
      }
    }

    if (*a2 > 0x4Bu)
    {
      if (v12 == 76)
      {
LABEL_30:
        v13 = a3 - 6;
        if (a3 < 6 || _citrus_bcs_strncasecmp())
        {
          goto LABEL_41;
        }

        *v9 = 2;
        a2 += 6;
        goto LABEL_40;
      }

      if (v12 == 83)
      {
LABEL_37:
        v13 = a3 - 7;
        if (a3 < 7 || _citrus_bcs_strncasecmp())
        {
          goto LABEL_41;
        }

        *v9 = 1;
        a2 += 7;
        goto LABEL_40;
      }

      if (v12 != 85)
      {
        goto LABEL_41;
      }

LABEL_24:
      v13 = a3 - 5;
      if (a3 < 5 || _citrus_bcs_strncasecmp())
      {
        goto LABEL_41;
      }

      v11 |= 1u;
    }

    else
    {
      if (v12 == 66)
      {
LABEL_27:
        v13 = a3 - 3;
        if (a3 < 3 || _citrus_bcs_strncasecmp())
        {
          goto LABEL_41;
        }

        *v9 = 1;
        a2 += 3;
        goto LABEL_40;
      }

      if (v12 != 70)
      {
        if (v12 != 73)
        {
          goto LABEL_41;
        }

LABEL_14:
        v13 = a3 - 8;
        if (a3 < 8 || _citrus_bcs_strncasecmp())
        {
          goto LABEL_41;
        }

        *v9 = 2;
        a2 += 8;
LABEL_40:
        a3 = v13;
        goto LABEL_41;
      }

LABEL_33:
      v13 = a3 - 5;
      if (a3 < 5 || _citrus_bcs_strncasecmp())
      {
        goto LABEL_41;
      }

      v11 |= 2u;
    }

    v9[3] = v11;
    a2 += 5;
    goto LABEL_40;
  }

  LOBYTE(v14) = 0;
LABEL_45:
  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 8;
  }

  else
  {
    v17 = 6;
  }

  v9[1] = v17;
  v9[2] = v16;
  if ((v14 & 2) != 0)
  {
    if (v10)
    {
      free(v9);
      return 22;
    }
  }

  else if (v10)
  {
    *v9 = 1;
  }

  result = 0;
  *(a1 + 8) = v9;
  *a4 = 12;
  a4[1] = v17;
  a4[2] = v16;
  return result;
}

void _citrus_UTF1632_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_UTF1632_stdenc_mbtocs(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, unsigned int *a6, void *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_UTF1632_mbrtowc_priv(*(a1 + 8), &v15, a4, a5, a6, a7);
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

uint64_t _citrus_UTF1632_stdenc_cstomb(uint64_t a1, char *a2, unint64_t a3, int a4, int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_UTF1632_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
}

uint64_t _citrus_UTF1632_stdenc_mbtowc(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_UTF1632_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_UTF1632_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_UTF1632_stdenc_mbtocsn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6, unint64_t a7, unsigned int *a8, void *a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v12 = *a6;
  *a9 = 0;
  v31 = 0;
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
    v32 = 0;
    while (1)
    {
      a11(a12);
      result = _citrus_UTF1632_mbrtowc_priv(*(a1 + 8), &v32, a6, v14, a8, &v31);
      if (result)
      {
        break;
      }

      v19 = v31;
      if (v31 == -2)
      {
        result = 0;
        *a9 = -2;
        break;
      }

      v20 = v32;
      *(a2 + 4 * v17) = 0;
      *(a3 + 4 * v17) = v20;
      if (v19 > v14)
      {
        _citrus_UTF1632_stdenc_mbtocsn_cold_2();
      }

      v16 += v19;
      *a9 = v16;
      v21 = *a6;
      if (*a6 < v12)
      {
        _citrus_UTF1632_stdenc_mbtocsn_cold_1();
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
        v23 = v14 + v12;
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

uint64_t _citrus_UTF1632_stdenc_cstombn(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v25 = 0;
  v11 = *a6;
  if (v11 < 1)
  {
    v18 = 0;
    LODWORD(v17) = 0;
    result = 0;
    goto LABEL_15;
  }

  v22 = a6;
  v23 = a8;
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
    result = _citrus_UTF1632_wcrtomb_priv(*(a1 + 8), a2, a3, v20, a7, &v25);
    if (!result)
    {
      if (a3 < v25)
      {
        _citrus_UTF1632_stdenc_cstombn_cold_1();
      }

      result = 0;
      ++v17;
      v18 += v25;
      a3 -= v25;
      if (a3)
      {
        a2 += v25;
        if (v17 < v11)
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
  a6 = v22;
  a8 = v23;
LABEL_15:
  *a6 = v17;
  *a8 = v18;
  return result;
}

uint64_t _citrus_UTF1632_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8F080;
  *a1 = _citrus_UTF1632_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F090;
  v3 = *&off_2A1A8F0A0;
  v4 = xmmword_2A1A8F0B0;
  *(a1 + 80) = off_2A1A8F0C0;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_UTF1632_mbrtowc_priv(unsigned int *a1, unsigned int *a2, uint64_t *a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    result = 0;
    a5[2] = 0;
    *a5 = 0;
    *a6 = 0;
    return result;
  }

  v7 = *a5;
  v8 = a1[3];
  if ((v8 & 2) != 0)
  {
    v9 = *a1;
    a5[1] = *a1;
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = a5 + 2;
  v14 = a5 + 9;
  v15 = a5 + 10;
  v16 = a5 + 11;
  while (2)
  {
    for (i = v7; ; i = 0)
    {
      v18 = (v8 & 1) == 0 && i < 2;
      if (v18)
      {
        v7 = 2;
      }

      else
      {
        v7 = 4;
      }

      if (i < v7)
      {
        v19 = 0;
        while (a4 != v19)
        {
          v13[i + v19] = *(v6 + v19);
          if (!(i - v7 + ++v19))
          {
            v8 = a1[3];
            v11 += v19;
            v6 += v19;
            a4 -= v19;
            goto LABEL_17;
          }
        }

        result = 0;
        *a6 = -2;
        *a5 = i + v19;
        v6 += v19;
        goto LABEL_48;
      }

      v7 = i;
LABEL_17:
      if ((v8 & 2) != 0)
      {
        goto LABEL_38;
      }

      v20 = *v13;
      if (v8)
      {
        break;
      }

      if (v20 == 255)
      {
        if (*v14 != 254)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (v20 != 254)
      {
        goto LABEL_36;
      }

      v21 = *v14;
LABEL_27:
      if (v21 != 255)
      {
        goto LABEL_36;
      }

      v22 = 1;
LABEL_35:
      a5[1] = v22;
    }

    if (v20 != 255)
    {
      if (*v13 || *v14 || *v15 != 254)
      {
        goto LABEL_36;
      }

      v21 = *v16;
      goto LABEL_27;
    }

    if (*v14 == 254 && !*v15 && !*v16)
    {
LABEL_34:
      v22 = 2;
      goto LABEL_35;
    }

LABEL_36:
    v9 = a5[1];
    if (!v9)
    {
      v9 = *a1;
LABEL_38:
      if (!v9)
      {
        _citrus_UTF1632_mbrtowc_priv_cold_1();
      }
    }

    if (v8)
    {
      if (v9 == 1)
      {
        v12 = *v16 | (*v15 << 8) | (*v14 << 16) | (*v13 << 24);
      }

      else
      {
        if (v9 != 2)
        {
          break;
        }

        v12 = *v13;
      }

      if (v12 >> 11 != 27)
      {
        goto LABEL_62;
      }
    }

    else if (v18)
    {
      v23 = a5 + 9;
      v24 = (a5 + 2);
      if (v9 == 2)
      {
        goto LABEL_44;
      }

      if (v9 == 1)
      {
        v23 = (a5 + 2);
        v24 = a5 + 9;
LABEL_44:
        v25 = *v23;
        v12 = *v24 | (v25 << 8);
        v26 = (v25 << 8) & 0xFC00;
        if (v26 == 55296)
        {
          continue;
        }

        if (v26 != 56320)
        {
LABEL_62:
          result = 0;
          *a2 = v12;
          *a5 = 0;
          *a6 = v11;
LABEL_48:
          *a3 = v6;
          return result;
        }
      }
    }

    else
    {
      if (v9 == 1)
      {
        v27 = *v15;
        v28 = v27 - 224;
        v15 = a5 + 11;
      }

      else
      {
        if (v9 != 2)
        {
          break;
        }

        v27 = *v16;
        v28 = v27 - 224;
      }

      if (v28 >= 0xFFFFFFFC)
      {
        v12 = (v12 << 10) - 56557568 + (*v15 | ((v27 & 3) << 8));
        goto LABEL_62;
      }
    }

    break;
  }

  *a6 = -1;
  *a5 = 0;
  return 92;
}

uint64_t _citrus_UTF1632_wcrtomb_priv(int *a1, char *__dst, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v9 = a3;
  v12 = *(a5 + 4);
  if (v12)
  {
    v13 = 0;
    v14 = __dst;
  }

  else
  {
    v15 = a1[3];
    if ((v15 & 2) != 0)
    {
      v13 = 0;
      v14 = __dst;
    }

    else
    {
      if (v15)
      {
        v13 = 4;
      }

      else
      {
        v13 = 2;
      }

      v9 = a3 - v13;
      if (a3 < v13)
      {
        goto LABEL_31;
      }

      if (v15)
      {
        v16 = &_citrus_UTF1632_wcrtomb_priv__bom;
      }

      else
      {
        v16 = &unk_29602227C;
      }

      memcpy(__dst, v16, v13);
      v14 = &__dst[v13];
    }

    v12 = *a1;
    *(a5 + 4) = *a1;
  }

  if ((a1[3] & 1) == 0)
  {
    if (a4 < 0x10000)
    {
      if (v9 >= 2)
      {
        LODWORD(result) = 0;
        v17 = v13 + 2;
LABEL_23:
        v19 = v14 + 1;
        do
        {
          v20 = result;
          v21 = *(a5 + 4);
          if (v21 == 2)
          {
            *(v19 - 1) = a4;
          }

          else if (v21 == 1)
          {
            *(v19 - 1) = bswap32(a4) >> 16;
          }

          result = 0;
          v19 += 2;
          a4 = v20;
        }

        while (v20);
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (HIWORD(a4) <= 0x10u)
    {
      if (v9 >= 4)
      {
        v17 = v13 + 4;
        LODWORD(result) = a4 & 0x3FF | 0xDC00;
        a4 = ((a4 - 0x10000) >> 10) | 0xD800;
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_20:
    result = 92;
LABEL_32:
    v17 = -1;
    goto LABEL_33;
  }

  if (a4 >> 11 == 27)
  {
    goto LABEL_20;
  }

  if (v9 < 4)
  {
LABEL_31:
    result = 7;
    goto LABEL_32;
  }

  v17 = v13 + 4;
  if (v12 == 2)
  {
    result = 0;
    __dst[v13] = a4;
    v14[1] = BYTE1(a4);
    v14[2] = BYTE2(a4);
    v14[3] = HIBYTE(a4);
  }

  else
  {
    result = 0;
    if (v12 == 1)
    {
      *(v14 + 1) = bswap32(a4) >> 16;
      v14[1] = BYTE2(a4);
      __dst[v13] = HIBYTE(a4);
    }
  }

LABEL_33:
  *a6 = v17;
  return result;
}