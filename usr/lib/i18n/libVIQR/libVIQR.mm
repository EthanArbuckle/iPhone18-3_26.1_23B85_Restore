uint64_t _citrus_VIQR_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1020040A122CEF7uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  v6[2] = 1;
  *(v6 + 2) = -1;
  v8 = malloc_type_malloc(0x30uLL, 0x10A004016FBAF26uLL);
  if (!v8)
  {
    v25 = 12;
    goto LABEL_30;
  }

  v9 = v8;
  v28 = a1;
  v29 = a4;
  v10 = 0;
  v8[5] = 0xFFFFFFFFLL;
  v8[3] = 0;
  v8[2] = 0;
  v30 = v8 + 3;
  v8[4] = v8 + 3;
  *v7 = v8;
  v11 = 1;
  v12 = &mnemonic_rfc1456;
  while (1)
  {
    v13 = v12[v10];
    if (v13)
    {
      break;
    }

LABEL_24:
    if (++v10 == 256)
    {
      v25 = 0;
      *(v28 + 8) = v7;
      v26 = v7[2];
      *v29 = 12;
      v29[1] = v26;
      v29[2] = 1;
      return v25;
    }
  }

  v14 = strlen(v12[v10]);
  if (v11 < v14)
  {
    v7[2] = v14;
    v11 = v14;
  }

  v15 = *v13;
  if (*v13)
  {
    v16 = v30;
    while (1)
    {
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16[11] == v15)
      {
        goto LABEL_14;
      }
    }

    v16 = malloc_type_malloc(0x30uLL, 0x10A004016FBAF26uLL);
    if (!v16)
    {
LABEL_27:
      v25 = 12;
      goto LABEL_28;
    }

    *(v16 + 2) = v9;
    v16[10] = v15;
    v16[11] = v15;
    *(v16 + 3) = 0;
    *(v16 + 4) = v16 + 6;
    v17 = v9[4];
    *v16 = 0;
    *(v16 + 1) = v17;
    *v17 = v16;
    v9[4] = v16;
LABEL_14:
    v20 = v13[1];
    v19 = v13 + 1;
    v18 = v20;
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v12;
    do
    {
      v22 = v16;
      v16 += 6;
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          break;
        }

        if (v16[11] == v18)
        {
          goto LABEL_22;
        }
      }

      v16 = malloc_type_malloc(0x30uLL, 0x10A004016FBAF26uLL);
      if (!v16)
      {
        goto LABEL_27;
      }

      *(v16 + 2) = v22;
      v16[10] = -1;
      v16[11] = v18;
      *(v16 + 3) = 0;
      *(v16 + 4) = v16 + 6;
      v23 = *(v22 + 4);
      *v16 = 0;
      *(v16 + 1) = v23;
      *v23 = v16;
      *(v22 + 4) = v16;
LABEL_22:
      v24 = *++v19;
      v18 = v24;
    }

    while (v24);
    v16[10] = v10;
    v12 = v21;
    goto LABEL_24;
  }

LABEL_32:
  v25 = 22;
LABEL_28:
  mnemonic_destroy(v9);
LABEL_30:
  free(v7);
  return v25;
}

void _citrus_VIQR_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    mnemonic_destroy(*v1);

    free(v1);
  }
}

uint64_t _citrus_VIQR_stdenc_mbtocs(uint64_t a1, _DWORD *a2, int *a3, unsigned __int8 **a4, uint64_t a5, int *a6, uint64_t *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_VIQR_mbrtowc_priv(*(a1 + 8), &v15, a4, a5, a6, a7);
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

uint64_t _citrus_VIQR_stdenc_cstomb(uint64_t a1, void *a2, uint64_t a3, int a4, unsigned int a5, char *__src, size_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_VIQR_wcrtomb_priv(*(a1 + 8), a2, a3, a5, __src, a7);
}

uint64_t _citrus_VIQR_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, uint64_t a4, int *a5, uint64_t *a6, uint64_t a7)
{
  v9 = _citrus_VIQR_mbrtowc_priv(*(a1 + 8), a2, a3, a4, a5, a6);
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

uint64_t _citrus_VIQR_stdenc_put_state_reset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  if (*a4 > 1u)
  {
    return 22;
  }

  result = 0;
  *a5 = 0;
  *a4 = 0;
  return result;
}

uint64_t _citrus_VIQR_stdenc_get_state_desc(uint64_t a1, _DWORD *a2, int a3, int *a4)
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

uint64_t _citrus_VIQR_stdenc_getops(uint64_t a1)
{
  v1 = unk_2A1A8F1E0;
  *a1 = _citrus_VIQR_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F1F0;
  v3 = *&off_2A1A8F200;
  v4 = xmmword_2A1A8F210;
  *(a1 + 80) = qword_2A1A8F220;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

void mnemonic_destroy(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = *v2;
      mnemonic_destroy();
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t _citrus_VIQR_mbrtowc_priv(uint64_t *a1, int *a2, unsigned __int8 **a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v7 = *a3;
  if (*a3)
  {
    v10 = 0;
    v11 = *a1;
    v12 = *a1;
    v13 = *a3;
LABEL_3:
    v14 = 1;
    while (1)
    {
      v15 = v10;
      v16 = *a5;
      if (v15 == v16)
      {
        if (!a4)
        {
          result = 0;
          *a3 = v13;
          v21 = -2;
          goto LABEL_36;
        }

        if (v16 == 6)
        {
          *a6 = -1;
          return 92;
        }

        --a4;
        v18 = *v13++;
        v17 = v18;
        *a5 = v16 + 1;
        *(a5 + v15 + 4) = v18;
      }

      else
      {
        v17 = *(a5 + v15 + 4);
      }

      if (v17 != 92)
      {
        break;
      }

      v14 = 0;
      v10 = v15 + 1;
      if (v12 != v11)
      {
        v22 = 92;
        goto LABEL_19;
      }
    }

    if (v14)
    {
      v10 = v15 + 1;
      v19 = v12 + 3;
      while (1)
      {
        v19 = *v19;
        if (!v19)
        {
          break;
        }

        if (*(v19 + 11) == v17)
        {
          v12 = v19;
          goto LABEL_3;
        }
      }
    }

    v22 = v17;
LABEL_19:
    if (v12 == v11)
    {
      v26 = 0;
      v24 = v15 + 1;
    }

    else
    {
      v23 = *(a1 + 2);
      do
      {
        v24 = v15;
        v25 = *(v12 + 10);
        v26 = v25 != v23;
        if (v25 != v23)
        {
          break;
        }

        v12 = v12[2];
        v15 = v24 - 1;
      }

      while (v12 != v11);
    }

    v27 = v17 == 92 && v26;
    v28 = v24 + v27;
    v29 = *a5 - v28;
    *a5 = v29;
    memmove(a5 + 1, a5 + v28 + 4, v29);
    if (v26)
    {
      v22 = *(v12 + 10);
    }

    if (a2)
    {
      *a2 = v22;
    }

    result = 0;
    v30 = (v13 - v7);
    if (!v22)
    {
      v30 = 0;
    }

    *a6 = v30;
    *a3 = v13;
  }

  else
  {
    result = 0;
    a5[2] = 0;
    *a5 = 0;
    v21 = 1;
LABEL_36:
    *a6 = v21;
  }

  return result;
}

uint64_t _citrus_VIQR_wcrtomb_priv(uint64_t **a1, void *__dst, uint64_t a3, unsigned int a4, char *__src, size_t *a6)
{
  v8 = a4;
  v10 = *__src;
  if (*__src)
  {
    if (v10 != 1)
    {
      return 22;
    }

    if (!a3)
    {
LABEL_24:
      *a6 = -1;
      return 7;
    }

    --a3;
  }

  if (a4 > 0xFF)
  {
    *a6 = -1;
    return 92;
  }

  v11 = mnemonic_rfc1456[a4];
  if (!v11)
  {
    if (a3)
    {
      v16 = *a1;
      if (!v10)
      {
LABEL_19:
        v18 = v16 + 3;
        while (1)
        {
          v18 = *v18;
          if (!v18)
          {
            break;
          }

          if (*(v18 + 11) == a4)
          {
            goto LABEL_26;
          }
        }

        v10 = 0;
        v16 = 0;
LABEL_26:
        *__src = v10 + 1;
        __src[v10 + 4] = a4;
        goto LABEL_27;
      }

      v16 += 3;
      while (1)
      {
        v16 = *v16;
        if (!v16)
        {
          return 22;
        }

        if (*(v16 + 11) == __src[4])
        {
          __src[4] = 92;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_24;
  }

  *__src = 0;
  v12 = *v11;
  if (*v11)
  {
    v13 = v11 + 1;
    while (a3)
    {
      --a3;
      v14 = *__src;
      *__src = v14 + 1;
      __src[v14 + 4] = v12;
      v15 = *v13++;
      v12 = v15;
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_24;
  }

LABEL_11:
  v16 = 0;
  v8 = 0;
LABEL_27:
  v19 = *__src;
  memcpy(__dst, __src + 4, v19);
  *a6 = v19;
  if (v16 == *a1)
  {
    __src[4] = v8;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  result = 0;
  *__src = v20;
  return result;
}