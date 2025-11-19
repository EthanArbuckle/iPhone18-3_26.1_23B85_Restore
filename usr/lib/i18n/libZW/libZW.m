uint64_t _citrus_ZW_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_29602CC40;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_ZW_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_ZW_stdenc_mbtocs(uint64_t a1, _DWORD *a2, int *a3, char **a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_ZW_mbrtowc_priv(&v15, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v15;
      *a2 = v15 > 127;
      *a3 = v14;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_ZW_stdenc_cstomb(uint64_t a1, void *a2, unint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, size_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4 > 1)
  {
    return 22;
  }

  return _citrus_ZW_wcrtomb_priv(a2, a3, a5, a6, a7);
}

uint64_t _citrus_ZW_stdenc_mbtowc(uint64_t a1, int *a2, char **a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_ZW_mbrtowc_priv(a2, a3, a4, a5, a6);
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

uint64_t _citrus_ZW_stdenc_put_state_reset(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a4 + 4))
  {
    return 22;
  }

  if (*a4)
  {
    if (*a4 != 3)
    {
      return 22;
    }

    if (a3)
    {
      result = 0;
      *(a4 + 8) = 10;
      *a5 = 1;
      *a2 = 10;
      *a4 = 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t _citrus_ZW_stdenc_get_state_desc(uint64_t a1, int *a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  v5 = *a2;
  if ((*a2 - 2) < 2)
  {
    v7 = a2[1];
    if (!v7)
    {
      v6 = 2;
      goto LABEL_17;
    }

    if (v7 == 1)
    {
      if (*(a2 + 8) == 35)
      {
        v6 = 4;
      }

      else
      {
        v6 = 3;
      }

      goto LABEL_17;
    }

    return 22;
  }

  if (v5 == 1)
  {
    if (!a2[1])
    {
      v6 = 4;
      goto LABEL_17;
    }

    return 22;
  }

  if (v5 || a2[1])
  {
    return 22;
  }

  v6 = 1;
LABEL_17:
  result = 0;
  *a4 = v6;
  return result;
}

uint64_t _citrus_ZW_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8F238;
  *a1 = _citrus_ZW_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F248;
  v3 = *&off_2A1A8F258;
  v4 = xmmword_2A1A8F268;
  *(a1 + 80) = qword_2A1A8F278;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_ZW_mbrtowc_priv(int *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    v8 = 0;
    *(a4 + 8) = 0;
    *a4 = 0;
    *a5 = 1;
    return v8;
  }

  LODWORD(v6) = 0;
  for (i = *a4; ; i = 0)
  {
    v8 = 22;
    if (i > 1)
    {
      if (i == 3)
      {
        v9 = *(a4 + 4);
        if (!v9)
        {
          if (!a3)
          {
            goto LABEL_53;
          }

          goto LABEL_23;
        }

        if (v9 == 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (i != 2)
        {
          return v8;
        }

        v21 = *(a4 + 4);
        if (v21 == 1)
        {
          v10 = *(a4 + 8);
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_67;
        }

        if (!v21)
        {
          if (a3)
          {
            if (v6 > 6)
            {
              goto LABEL_67;
            }

            v23 = *v5++;
            v22 = v23;
            v10 = v23;
            if (v23 < 0)
            {
              goto LABEL_67;
            }

            LODWORD(v6) = v6 + 1;
            *(a4 + 8) = v10;
            if (v22 == 10 || !v22)
            {
              *a4 = 0;
            }

LABEL_60:
            *(a4 + 4) = 0;
LABEL_61:
            if (a1)
            {
              *a1 = v10;
            }

            v8 = 0;
            if (!v10)
            {
              LODWORD(v6) = 0;
            }

            v6 = v6;
            goto LABEL_66;
          }

LABEL_53:
          v8 = 0;
          v6 = -2;
LABEL_66:
          *a5 = v6;
          *a2 = v5;
          return v8;
        }
      }

      return 22;
    }

    if (i)
    {
      if (i != 1)
      {
        return v8;
      }

      if (*(a4 + 4))
      {
        return 22;
      }

      if (!a3)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*(a4 + 4))
      {
        return 22;
      }

      if (!a3)
      {
        goto LABEL_53;
      }

      if (v6 > 6)
      {
        goto LABEL_67;
      }

      v11 = *v5++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        goto LABEL_67;
      }

      LODWORD(v6) = v6 + 1;
      *(a4 + 8) = v12;
      if (v10 != 122)
      {
        if (v10 && v10 != 10)
        {
          *a4 = 2;
        }

        goto LABEL_60;
      }

      --a3;
      *a4 = 1;
      if (!a3)
      {
        goto LABEL_53;
      }
    }

    if (v6 > 6)
    {
      goto LABEL_67;
    }

    v14 = *v5++;
    v13 = v14;
    if (v14 < 0)
    {
      goto LABEL_67;
    }

    LODWORD(v6) = v6 + 1;
    *(a4 + 4) = 1;
    *(a4 + 8) = v13;
    if (v13 != 87)
    {
      *a4 = 2;
      v10 = 122;
      goto LABEL_61;
    }

    --a3;
    *a4 = 3;
    if (!a3)
    {
      goto LABEL_53;
    }

LABEL_23:
    if (v6 > 6)
    {
      goto LABEL_67;
    }

    v16 = *v5++;
    v15 = v16;
    v17 = v16;
    if (v16 < 0)
    {
      goto LABEL_67;
    }

    --a3;
    LODWORD(v6) = v6 + 1;
    *(a4 + 4) = 1;
    *(a4 + 8) = v17;
    if (v15 != 10)
    {
      break;
    }

    *a4 = 0;
  }

  if (!v15)
  {
    v10 = 0;
LABEL_30:
    *a4 = 0;
    goto LABEL_61;
  }

LABEL_35:
  if (!a3)
  {
    goto LABEL_53;
  }

  if (v6 > 6)
  {
    goto LABEL_67;
  }

  v19 = *v5++;
  v18 = v19;
  if (v19 < 0)
  {
    goto LABEL_67;
  }

  v10 = v18;
  LODWORD(v6) = v6 + 1;
  *(a4 + 4) = 2;
  *(a4 + 9) = v18;
  v20 = *(a4 + 8);
  if (v20 != 35)
  {
    if (v20 == 32)
    {
      goto LABEL_60;
    }

    if ((v20 - 127) < 0xFFFFFFA2 || (v10 - 127) < 0xFFFFFFA2)
    {
      goto LABEL_67;
    }

LABEL_58:
    v10 |= v20 << 8;
    goto LABEL_60;
  }

  if (v10 == 32)
  {
    goto LABEL_60;
  }

  if (v10 == 10)
  {
    goto LABEL_30;
  }

  if ((v10 - 127) > 0xFFFFFFA1)
  {
    goto LABEL_58;
  }

LABEL_67:
  *a5 = -1;
  return 92;
}

uint64_t _citrus_ZW_wcrtomb_priv(void *a1, unint64_t a2, unsigned int a3, uint64_t a4, size_t *a5)
{
  if (*(a4 + 4))
  {
    return 22;
  }

  if (a3 > 0x7F)
  {
    if (a3 <= 0x7E7E)
    {
      if (*a4 == 3)
      {
        v10 = 0;
      }

      else
      {
        if (*a4)
        {
          return 22;
        }

        v9 = a2 >= 2;
        a2 -= 2;
        if (!v9)
        {
          return 7;
        }

        *(a4 + 8) = 22394;
        *a4 = 0x200000003;
        v10 = 2;
      }

      if (a2 < 2)
      {
        return 7;
      }

      if (a3 >> 8 >= 0x21)
      {
        v12 = v10 | 1;
        *(a4 + 4) = v12;
        *(a4 + 8 + v10) = BYTE1(a3);
        if (a3 - 127 >= 0xFFFFFFA2)
        {
          v8 = v10 + 2;
          *(a4 + 8 + v12) = a3;
          goto LABEL_33;
        }
      }
    }

    *a5 = -1;
    return 92;
  }

  if (*a4 == 3)
  {
    if (a2 < 2)
    {
      return 7;
    }

    *(a4 + 4) = 1;
    if (a3 == 10)
    {
      v11 = 2595;
    }

    else
    {
      if (a3)
      {
        *(a4 + 8) = 32;
        *(a4 + 9) = a3;
        goto LABEL_32;
      }

      v11 = 10;
    }

    *(a4 + 8) = v11;
    *a4 = 0;
LABEL_32:
    v8 = 2;
    goto LABEL_33;
  }

  if (*a4)
  {
    return 22;
  }

  if (a3 != 10 && a3)
  {
    if (a2 >= 4)
    {
      *(a4 + 8) = 22394;
      *(a4 + 10) = 32;
      *(a4 + 11) = a3;
      *a4 = 0x200000003;
      v8 = 4;
      goto LABEL_33;
    }

    return 7;
  }

  if (!a2)
  {
    return 7;
  }

  *(a4 + 8) = a3;
  v8 = 1;
LABEL_33:
  memcpy(a1, (a4 + 8), v8);
  result = 0;
  *a5 = v8;
  *(a4 + 4) = 0;
  return result;
}