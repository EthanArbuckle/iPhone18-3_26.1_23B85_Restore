uint64_t _citrus_HZ_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0xA00401628ADDBuLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  *v6 = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 1) = 0u;
  v6[1] = v6;
  v6[3] = (v6 + 2);
  v8 = _citrus_prop_parse_variable();
  if (v8)
  {
    _citrus_HZ_encoding_module_uninit(v7);
    free(v7);
  }

  else
  {
    *(a1 + 8) = v7;
    *a4 = xmmword_29601A390;
    *(a4 + 16) = 1;
  }

  return v8;
}

void _citrus_HZ_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    _citrus_HZ_encoding_module_uninit(v1);

    free(v1);
  }
}

uint64_t _citrus_HZ_stdenc_mbtocs(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned __int8 **a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8)
{
  v17 = 0;
  v12 = _citrus_HZ_mbrtowc_priv(*(a1 + 8), &v17, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v17;
      v15 = v17 & 0x80;
      v16 = v17 & 0xFFFFFF7F;
      if ((v17 & 0xFFFFFF7F) > 0x7F)
      {
        if (v16 >> 7 > 0xFE)
        {
          *a2 = v17 & 0xFF000000;
          v16 = v14 & 0xFFFF7F;
        }

        else
        {
          *a2 = v15 | 0x8000;
        }
      }

      else
      {
        *a2 = v15;
      }

      *a3 = v16;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_HZ_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, int a4, unsigned int a5, uint64_t a6, size_t *a7)
{
  if (a4 <= 127)
  {
    if (a4 == -1)
    {
      a5 = 0;
      return _citrus_HZ_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
    }

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 128;
    if (a4 == 128)
    {
      goto LABEL_9;
    }

    if (a4 != 0x8000)
    {
      if (a4 != 32896)
      {
LABEL_8:
        v7 = a4;
      }

LABEL_9:
      a5 |= v7;
    }
  }

  return _citrus_HZ_wcrtomb_priv(*(a1 + 8), a2, a3, a5, a6, a7);
}

uint64_t _citrus_HZ_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_HZ_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_HZ_stdenc_put_state_reset(uint64_t a1, _WORD *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(a4 + 8) || !*a4)
  {
    return 22;
  }

  v6 = **(a1 + 8);
  if (*a4 == v6)
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  else if (a3 >= 2)
  {
    *(a4 + 12) = 126;
    v7 = *(v6 + 40);
    *(a4 + 8) = 2;
    *(a4 + 13) = v7;
    if (a3 != 2)
    {
      *a2 = *(a4 + 12);
      v8 = 2;
LABEL_10:
      result = 0;
      *a5 = v8;
      *a4 = v6;
      return result;
    }
  }

  return 7;
}

uint64_t _citrus_HZ_stdenc_get_state_desc(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  v5 = *(a2 + 8);
  if (v5 < 0 || !*a2)
  {
    return 22;
  }

  if (v5)
  {
    if (*(a2 + 12) == 126)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else if (*a2 == **(a1 + 8))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  result = 0;
  *a4 = v6;
  return result;
}

uint64_t _citrus_HZ_stdenc_getops(uint64_t a1)
{
  v1 = *&off_2A1A8EEC8;
  *a1 = _citrus_HZ_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8EED8;
  v3 = *&off_2A1A8EEE8;
  v4 = xmmword_2A1A8EEF8;
  *(a1 + 80) = qword_2A1A8EF08;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

void _citrus_HZ_encoding_module_uninit(uint64_t **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      v5 = *i;
    }

    else
    {
      v5 = a1;
    }

    v5[1] = v4;
    *v4 = v3;
    free(i[3]);
    free(i[4]);
    free(i);
  }

  for (j = a1[2]; j; j = a1[2])
  {
    v7 = *j;
    v8 = j[1];
    v9 = (*j + 8);
    if (!*j)
    {
      v9 = a1 + 3;
    }

    *v9 = v8;
    *v8 = v7;
    free(j[3]);
    free(j[4]);
    free(j);
  }
}

uint64_t _citrus_HZ_parse_escape(uint64_t a1, unsigned __int8 *a2, const char *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CC47A3DuLL);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *a2;
  if (v7 == 48)
  {
    if (!a2[1])
    {
      v8 = 8;
      v9 = a1;
LABEL_11:
      v6[2] = v9;
      *v6 = 0;
      v11 = *(a1 + v8);
      v6[1] = v11;
      *v11 = v6;
      *(a1 + v8) = v6;
      strlen(a3);
      result = _citrus_prop_parse_variable();
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v7 != 49)
  {
    if (49 != v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = a1 + 16;
    v8 = 24;
    goto LABEL_11;
  }

  if (!a2[1])
  {
    goto LABEL_10;
  }

LABEL_7:
  free(v6);
LABEL_8:
  result = 22;
LABEL_12:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _citrus_HZ_parse_char(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(*a1 + 40))
  {
    return 22;
  }

  v4 = *a3;
  *(*a1 + 40) = v4;
  result = 22;
  if (v4 != 126)
  {
    if (a3[1])
    {
      return 22;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _citrus_HZ_parse_graphic(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200409F4E64B8uLL);
  if (!v7)
  {
    return 12;
  }

  v8 = v7;
  v9 = *a2;
  if (v9 != 71)
  {
    v12 = 71;
    goto LABEL_14;
  }

  v10 = a2[1];
  if (v10 == 76)
  {
    if (a2[2])
    {
      goto LABEL_5;
    }

LABEL_11:
    v13 = (v6 + 24);
    if (!*(v6 + 24))
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (76 == v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = a2[1];
  if (v9 != 82)
  {
    v12 = 82;
LABEL_14:
    if (v12 == v9)
    {
      goto LABEL_15;
    }

LABEL_16:
    free(v7);
    return 22;
  }

  if (a2[2])
  {
    goto LABEL_16;
  }

LABEL_15:
  v13 = (v6 + 32);
  if (*(v6 + 32))
  {
    goto LABEL_16;
  }

LABEL_19:
  *v13 = v7;
  v7[1] = v6;
  if (!_citrus_bcs_strncasecmp())
  {
    if (!a3[5])
    {
      result = 0;
      *v8 = 1;
      v8[2] = 1;
      *(v5 + 32) = v8;
      return result;
    }

    return 22;
  }

  if (!_citrus_bcs_strncasecmp())
  {
    if (!a3[6])
    {
      result = 0;
      *v8 = 2;
      v8[2] = 2;
      *(v5 + 40) = v8;
      return result;
    }

    return 22;
  }

  v14 = *a3;
  if (v14 == 57)
  {
    v15 = a3[1];
    if (v15 == 52)
    {
      v15 = a3[2];
      v16 = 42;
    }

    else
    {
      v16 = 52;
    }

    if (v16 == v15)
    {
      v18 = 3;
      goto LABEL_37;
    }

    v14 = a3[1];
    if (v14 == 54)
    {
      v14 = a3[2];
      v17 = 42;
    }

    else
    {
      v17 = 54;
    }
  }

  else
  {
    v17 = 57;
  }

  if (v17 != v14)
  {
    return 22;
  }

  v18 = 4;
LABEL_37:
  *v8 = v18;
  v19 = a3[3];
  result = 22;
  if ((v19 - 49) <= 2)
  {
    v8[2] = v19 - 48;
    if (a3[4])
    {
      return 22;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _citrus_HZ_mbrtowc_priv(void *a1, int *a2, unsigned __int8 **a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    v23 = 0;
    *a5 = *a1;
    a5[1] = 0;
    v24 = 1;
    goto LABEL_67;
  }

  if ((a5[1] & 0x80000000) != 0 || !*a5)
  {
    return 22;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a5 + 12;
  while (2)
  {
    while (2)
    {
      if (v11 > 6)
      {
LABEL_66:
        v23 = 92;
        v24 = -1;
        goto LABEL_67;
      }

      v14 = *(a5 + 2);
      while (v14 != v12)
      {
        v15 = v13[v12];
        if (!v12)
        {
          goto LABEL_37;
        }

LABEL_12:
        if (++v12 != 2 || *v13 != 126)
        {
          v21 = *a5;
          if ((v15 & 0x80) != 0)
          {
            if (v7 != *(v21 + 32))
            {
              goto LABEL_66;
            }

            v15 &= 0x7Fu;
          }

          else if (v7 != *(v21 + 24))
          {
            goto LABEL_66;
          }

          goto LABEL_45;
        }

        if (*(a5 + 2) > 2)
        {
          return 22;
        }

        if (v15 == 10)
        {
          if (*a5 != *a1)
          {
            goto LABEL_66;
          }

          goto LABEL_32;
        }

        if (v15 == 126)
        {
          v21 = *a5;
          if (*a5 != *a1)
          {
            goto LABEL_66;
          }

          ++v10;
          v15 = 126;
          v12 = 2;
          goto LABEL_45;
        }

        v17 = *a1;
        v18 = *a5;
        if (*a5 == *a1)
        {
          v20 = a1[2];
          v19 = *(v18 + 16);
          goto LABEL_23;
        }

        v19 = *(v18 + 16);
        if (*v19 != v17)
        {
          v20 = *a1;
LABEL_23:
          v17 = v19;
          while (1)
          {
            v17 = *v17;
            if (!v17)
            {
              break;
            }

            if (*(v17 + 10) == v15)
            {
              goto LABEL_31;
            }
          }

          if (!v20)
          {
            goto LABEL_66;
          }

          v17 = v20;
          if (*(v20 + 40) != v15)
          {
            goto LABEL_66;
          }

          goto LABEL_31;
        }

        if (*(v17 + 10) != v15)
        {
          goto LABEL_66;
        }

LABEL_31:
        *a5 = v17;
LABEL_32:
        v14 = 0;
        v12 = 0;
        *(a5 + 2) = 0;
        if (v11 >= 7)
        {
          goto LABEL_66;
        }
      }

      if (!a4)
      {
        v23 = 0;
        *a3 = v6;
        v24 = -2;
        goto LABEL_67;
      }

      v16 = *v6++;
      v15 = v16;
      --a4;
      *(a5 + 2) = v14 + 1;
      v13[v14] = v16;
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }

LABEL_37:
      if ((v15 & 0x7Fu) <= 0x1F)
      {
        if (*a5 != *a1)
        {
          goto LABEL_66;
        }

        v12 = 1;
        goto LABEL_57;
      }

      v21 = *a5;
      if ((v15 & 0x80) != 0)
      {
        v7 = *(v21 + 32);
        v9 = 128;
        v15 &= 0x7Fu;
      }

      else
      {
        v7 = *(v21 + 24);
        v12 = 1;
        if (v15 == 126)
        {
          continue;
        }

        v9 = 0;
      }

      break;
    }

    if (!v7)
    {
      goto LABEL_66;
    }

    v12 = 1;
LABEL_45:
    v22 = &ranges[3 * *v7];
    if (*v22 > v15 || v22[1] < v15)
    {
      goto LABEL_66;
    }

    v8 = v15 | (v8 << 8);
    if (*(v7 + 2) != v12 - v10)
    {
      continue;
    }

    break;
  }

  if (*v7 >= 3)
  {
    v9 |= *(v21 + 40) << 24;
  }

  v15 = v9 | v8;
LABEL_57:
  if (v12 < *(a5 + 2))
  {
    return 22;
  }

  *a3 = v6;
  if (a2)
  {
    *a2 = v15;
  }

  v23 = 0;
  *(a5 + 2) = 0;
  if (v15)
  {
    LODWORD(v24) = v11;
  }

  else
  {
    LODWORD(v24) = 0;
  }

  v24 = v24;
LABEL_67:
  *a6 = v24;
  return v23;
}

uint64_t _citrus_HZ_wcrtomb_priv(void *a1, void *__dst, unint64_t a3, unsigned int a4, uint64_t a5, size_t *a6)
{
  if (*(a5 + 8))
  {
    return 22;
  }

  v8 = *a5;
  if (!*a5)
  {
    return 22;
  }

  v10 = a4 & 0xFFFFFF7F;
  if ((a4 & 0xFFFFFF7F) <= 0x1F)
  {
    v11 = *a1;
    v12 = 4;
    if ((a4 & 0x80) == 0)
    {
      v12 = 3;
    }

    if (!v11[v12])
    {
      goto LABEL_51;
    }

    v13 = ranges;
    v14 = 1;
LABEL_17:
    if (v8 == v11)
    {
LABEL_32:
      if (a3 < v14)
      {
        return 7;
      }

      if (!v14)
      {
LABEL_39:
        v26 = *(a5 + 8);
        memcpy(__dst, (a5 + 12), v26);
        result = 0;
        *a6 = v26;
        *(a5 + 8) = 0;
        return result;
      }

      v23 = *v13;
      v24 = 8 * v14 - 8;
      while (v23 <= (v10 >> v24) && v13[1] >= (v10 >> v24))
      {
        v25 = *(a5 + 8);
        *(a5 + 8) = v25 + 1;
        *(a5 + 12 + v25) = (v10 >> v24) | a4 & 0x80;
        v24 -= 8;
        if (!--v14)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_51;
    }

    v16 = v8[2];
    v17 = v11[2];
    if (v16 == v17)
    {
      v19 = 0;
      v18 = *a1;
      if (v11 == *a1 || v8 == v18 || *v16 != v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *v17;
      if (v11 == *v17)
      {
LABEL_28:
        v19 = 0;
LABEL_29:
        v20 = a3 >= 2;
        a3 -= 2;
        if (!v20)
        {
          return 7;
        }

        *(a5 + 12 + v19) = 126;
        v22 = *(v11 + 10);
        *(a5 + 8) = v19 + 2;
        *(a5 + 12 + (v19 | 1)) = v22;
        *a5 = v11;
        goto LABEL_32;
      }
    }

    if (v18)
    {
      v20 = a3 >= 2;
      a3 -= 2;
      if (!v20)
      {
        return 7;
      }

      *(a5 + 12) = 126;
      v21 = *(v18 + 10);
      v19 = 2;
      *(a5 + 8) = 2;
      *(a5 + 13) = v21;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v10 <= 0x7F)
  {
    v15 = a1[4];
    if (!v15)
    {
      goto LABEL_51;
    }

    goto LABEL_15;
  }

  if (v10 >> 7 > 0xFE)
  {
    v27 = HIBYTE(a4);
    v11 = a1;
    do
    {
      v11 = *v11;
      if (!v11)
      {
        v11 = a1 + 2;
        while (1)
        {
          v11 = *v11;
          if (!v11)
          {
            goto LABEL_51;
          }

          if (*(v11 + 10) == v27)
          {
            goto LABEL_47;
          }
        }
      }
    }

    while (*(v11 + 10) != v27);
LABEL_47:
    v28 = 4;
    if ((a4 & 0x80) == 0)
    {
      v28 = 3;
    }

    v15 = v11[v28];
    if (v15)
    {
      v10 = a4 & 0xFFFF7F;
      goto LABEL_16;
    }

    goto LABEL_51;
  }

  v15 = a1[5];
  if (v15)
  {
LABEL_15:
    v11 = *(v15 + 1);
LABEL_16:
    v13 = &ranges[3 * *v15];
    v14 = *(v15 + 2);
    goto LABEL_17;
  }

LABEL_51:
  *a6 = -1;
  return 92;
}