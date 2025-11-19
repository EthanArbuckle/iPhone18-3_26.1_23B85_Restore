uint64_t _citrus_iconv_none_iconv_convert(_DWORD *a1, const void **a2, unint64_t *a3, void **a4, unint64_t *a5, uint64_t a6, void *a7)
{
  v7 = 0;
  if (a3 && a2 && a4)
  {
    v8 = *a2;
    if (!*a2)
    {
      return 0;
    }

    v9 = *a4;
    if (!*a4)
    {
      return 0;
    }

    v7 = *a3;
    if (!*a3)
    {
      return v7;
    }

    v12 = *a5;
    if (!*a5)
    {
      return 0;
    }

    v14 = a1[6];
    if (v14 == 3)
    {
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    }

    else
    {
      v15 = *a3;
    }

    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    if (v14 != 3)
    {
      v16 = *a5;
    }

    if (v12 >= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    if (v14 == 3 && (v18 = *(*a1 + 80)) != 0 && *(v18 + 8))
    {
      if (v17 >= 4)
      {
        v19 = v17 >> 2;
        do
        {
          v20 = *v8++;
          *v9++ = v20;
          v21 = *(v18 + 16);
          (*(v18 + 8))();
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      memcpy(*a4, *a2, v17);
    }

    *a3 -= v17;
    *a5 = v12 - v17;
    *a7 = 0;
    if (v12 >= v15)
    {
      return 0;
    }

    else
    {
      return 7;
    }
  }

  return v7;
}

uint64_t _citrus_iconv_none_iconv_getops(uint64_t a1)
{
  v1 = _citrus_iconv_none_iconv_ops;
  v2 = *&off_2A1A8F290;
  *(a1 + 32) = off_2A1A8F2A0;
  *a1 = v1;
  *(a1 + 16) = v2;
  return 0;
}