uint64_t DEREncoderAddDataNoCopy(uint64_t *a1, unsigned int a2, unsigned int a3, const void *a4, unsigned int a5, int a6)
{
  v7 = sub_5AFA8(a2, a3, a4, a5, a6, 1);

  return sub_5AE34(a1, v7);
}

uint64_t DEREncoderAddUInt32(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v10 = bswap32(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 4)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 4;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_5AFA8(a2, a3, &v11 - v7 + 5, v7, 0, 3);
  return sub_5AE34(a1, v8);
}

uint64_t DEREncoderAddUInt64(uint64_t *a1, unsigned int a2, unsigned int a3, unint64_t a4)
{
  v5 = 0;
  v10 = bswap64(a4);
  v11 = 0;
  v12 = v10;
  while (!*(&v10 + v5))
  {
    if (++v5 == 8)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = (*(&v10 + v5) >> 7) - v5 + 8;
LABEL_6:
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = sub_5AFA8(a2, a3, &v11 - v7 + 9, v7, 0, 3);
  return sub_5AE34(a1, v8);
}

uint64_t DEREncoderAddInt32AsData(uint64_t *a1, unsigned int a2, unsigned int a3, int a4)
{
  v7 = a4;
  v5 = sub_5AFA8(a2, a3, &v7, 4u, 0, 3);
  return sub_5AE34(a1, v5);
}

uint64_t DEREncoderAddInt64AsData(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = a4;
  v5 = sub_5AFA8(a2, a3, &v7, 8u, 0, 3);
  return sub_5AE34(a1, v5);
}

uint64_t DEREncoderAddIA5String(uint64_t *a1, const void *a2, unsigned int a3)
{
  v4 = sub_5AFA8(0, 0x16u, a2, a3, 0, 3);

  return sub_5AE34(a1, v4);
}

uint64_t DEREncoderAddBoolean(uint64_t *a1, int a2)
{
  v7 = -1;
  v6 = 0;
  if (a2)
  {
    v3 = &v7;
  }

  else
  {
    v3 = &v6;
  }

  v4 = sub_5AFA8(0, 1u, v3, 1u, 0, 3);
  return sub_5AE34(a1, v4);
}

uint64_t DEREncoderCreateEncodedBuffer(uint64_t **a1, void *a2, unsigned int *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = *(a1 + 2);
  v7 = malloc(v6);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  v9 = *a1;
  if (*a1)
  {
    v10 = v7;
    do
    {
      memcpy(v10, v9 + 28, *(v9 + 5));
      v11 = &v10[*(v9 + 5)];
      memcpy(v11, v9[1], *(v9 + 6));
      v10 = &v11[*(v9 + 6)];
      v9 = *v9;
    }

    while (v9);
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a2)
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return result;
}

uint64_t DEREncoderAddDataFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, a3, a4, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_5B704(uint64_t **a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v13 = 0;
  v12 = 0;
  v9 = DEREncoderCreateEncodedBuffer(a1, &v12, &v13);
  if (!v9)
  {
    v9 = 2;
    v10 = sub_5AFA8(a3, a4, v12, v13, a5, 2);
    if (v10)
    {
      v12 = 0;
      v9 = sub_5AE34(a2, v10);
    }
  }

  if (v12)
  {
    free(v12);
  }

  return v9;
}

uint64_t DEREncoderAddDataFromEncoderNoCopy(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  result = 1;
  if (a1 && a2)
  {
    if (*(a2 + 12))
    {

      return sub_5B704(a1, a2, a3, a4, a5);
    }

    else
    {
      v8 = sub_5AFA8(a3, a4, 0, *(a1 + 8), 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *a1;
        v21 = 0;
        v11 = &v21;
        while (v10)
        {
          v12 = malloc(0x38uLL);
          if (!v12)
          {
            v17 = v21;
            if (v21)
            {
              do
              {
                v18 = *v17;
                sub_5BA90(v17);
                v17 = v18;
              }

              while (v18);
            }

            *v9 = 0;
            goto LABEL_22;
          }

          v13 = v10[6];
          v15 = *(v10 + 1);
          v14 = *(v10 + 2);
          *v12 = *v10;
          v12[1] = v15;
          *(v12 + 6) = v13;
          v12[2] = v14;
          *v12 = 0;
          *(v12 + 4) = 1;
          v16 = v10[1];
          if (v10 + 28 > v16 || v16 >= (v10 + 7))
          {
            if (v13)
            {
              ++*(v13 + 16);
            }
          }

          else
          {
            *(v12 + 1) = v12 + v16 - v10;
          }

          *v11 = v12;
          v10 = *v10;
          v11 = v12;
        }

        v19 = v21;
        *v9 = v21;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_22:
        if (*a1)
        {
          do
          {
            v20 = *v9;
            sub_5BA90(v9);
            v9 = v20;
          }

          while (v20);
          return 2;
        }

LABEL_26:

        return sub_5AE34(a2, v9);
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

uint64_t DEREncoderAddSequenceFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, 0, 0x10u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddSetFromEncoder(uint64_t **a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    return sub_5B704(a1, a2, 0, 0x11u, 1);
  }

  else
  {
    return 1;
  }
}

uint64_t DEREncoderAddPrivateFromEncoder(uint64_t **a1, uint64_t *a2, unsigned int a3)
{
  v6 = calloc(1uLL, 0x10uLL);
  v7 = v6;
  if (!v6)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *(v6 + 3) = 0;
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = sub_5B704(a1, v6, 0, 0x10u, 1);
  if (!v8)
  {
    if (a2)
    {
      v8 = sub_5B704(v7, a2, 3u, a3, 1);
      goto LABEL_8;
    }

LABEL_7:
    v8 = 1;
  }

LABEL_8:
  DEREncoderDestroy(v7);
  return v8;
}

void sub_5BA90(uint64_t a1)
{
  v2 = *(a1 + 16) - 1;
  *(a1 + 16) = v2;
  if (!v2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = v4 >= a1 + 56 || a1 + 28 > v4;
      if (v6 && v5 != 0)
      {
        if (v5 == a1)
        {
          free(v4);
        }

        else
        {
          sub_5BA90(*(a1 + 48));
        }
      }
    }

    free(a1);
  }
}

uint64_t Img4EncodeItemBegin(uint64_t *a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 32);
    if (*v5 || *(v5 + 8))
    {
      return 101;
    }
  }

  else
  {
    v7 = calloc(1uLL, 0x28uLL);
    *a1 = v7;
    if (!v7)
    {
      return 102;
    }

    *(*a1 + 8) = calloc(1uLL, 0x400uLL);
    v8 = *a1;
    v9 = *(*a1 + 8);
    if (!v9)
    {
      return 102;
    }

    *(v8 + 16) = 1024;
    *(v8 + 24) = v9;
    v4 = *a1;
  }

  *v4 = a2;
  *(*a1 + 32) = calloc(1uLL, 0x18uLL);
  if (*(*a1 + 32))
  {
    **(*a1 + 32) = calloc(1uLL, 0x400uLL);
    v10 = *(*a1 + 32);
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 2) = 1024;
      v10[2] = v11;
      return 100;
    }
  }

  return 102;
}

uint64_t Img4EncodeItemEnd(uint64_t a1, unsigned int a2)
{
  LODWORD(__n) = 0;
  __src = 0;
  if (!a1 || *a1 != a2)
  {
    return 101;
  }

  if (*(a1 + 8) && *(a1 + 16) && (v3 = *(a1 + 32), *v3) && *(v3 + 8))
  {
    v4 = sub_5BD94(0, a2, *v3, *(v3 + 16) - *v3, &__src, &__n);
    if (v4 == 100)
    {
      v5 = __n;
      v6 = *(a1 + 16);
      v7 = *(a1 + 24);
      v8 = &v7[-*(a1 + 8)];
      if (v6 - v8 > __n)
      {
LABEL_14:
        memcpy(v7, __src, v5);
        *a1 = 0;
        v11 = *(a1 + 32);
        *(a1 + 24) += __n;
        if (*v11)
        {
          free(*v11);
          v11 = *(a1 + 32);
          *v11 = 0;
        }

        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        v4 = 100;
        goto LABEL_19;
      }

      if (__n <= 0x400)
      {
        v9 = 1024;
      }

      else
      {
        v9 = __n;
      }

      v10 = sub_5BFA0(*(a1 + 8), v6, v6 + v9);
      if (v10)
      {
        *(a1 + 8) = v10;
        v7 = &v8[v10];
        *(a1 + 24) = v7;
        *(a1 + 16) += v9;
        v5 = __n;
        goto LABEL_14;
      }

      v4 = 2;
    }
  }

  else
  {
    v4 = 101;
  }

LABEL_19:
  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t sub_5BD94(int a1, unsigned int a2, const void *a3, unsigned int a4, void *a5, unsigned int *a6)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v6 = 101;
  if (!a5 || !a6)
  {
    goto LABEL_22;
  }

  v12 = bswap32(a2);
  if (a1 == 2)
  {
    v24 = v12;
    v13 = DEREncoderCreate(0);
    v14 = v13;
    if (!v13)
    {
      v6 = 102;
      goto LABEL_22;
    }

    v15 = DEREncoderAddData(v13, 0, 0x16u, &v24, 4u, 0);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderAddData(v14, 0, 0x10u, a3, a4, 1);
    if (v15)
    {
      goto LABEL_17;
    }

    v15 = DEREncoderCreateEncodedBuffer(v14, &v21, &v23);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v24 = v12;
    v16 = DEREncoderCreate(1);
    if (!v16)
    {
      DEREncoderDestroy(0);
      v6 = 102;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = DEREncoderAddData(v16, 0, 0x16u, &v24, 4u, 0);
    if (v18 || (v18 = DEREncoderAddData(v17, 0, 0x11u, a3, a4, 1), v18) || (v18 = DEREncoderCreateEncodedBuffer(v17, &v21, &v23), v18))
    {
      v6 = v18;
      DEREncoderDestroy(v17);
      if (v6 != 100)
      {
        goto LABEL_22;
      }
    }

    else
    {
      DEREncoderDestroy(v17);
    }

    v14 = 0;
  }

  v15 = sub_5CF28(v21, v23, &v20, &v22);
  if (v15 == 100)
  {
    v15 = sub_5CFE0(a2, v20, v22, a5, a6);
  }

LABEL_17:
  v6 = v15;
  if (v14)
  {
    DEREncoderDestroy(v14);
  }

LABEL_22:
  if (v21)
  {
    free(v21);
    v21 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  return v6;
}

void *sub_5BFA0(void *a1, size_t a2, size_t __size)
{
  v6 = calloc(1uLL, __size);
  v7 = v6;
  if (a1 && v6)
  {
    if (a2 >= __size)
    {
      v8 = __size;
    }

    else
    {
      v8 = a2;
    }

    memcpy(v6, a1, v8);
    free(a1);
  }

  return v7;
}

uint64_t Img4EncodeItemPropertyData(_DWORD *a1, int a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = 0;
  v15 = bswap32(a3);
  v16 = 0;
  v14 = 0;
  v6 = 102;
  if (a1 && a4 && a5)
  {
    if (*a1 == a2)
    {
      v11 = DEREncoderCreate(0);
      v5 = v11;
      if (v11)
      {
        v12 = DEREncoderAddData(v11, 0, 0x16u, &v15, 4u, 0);
        if (!v12)
        {
          v12 = DEREncoderAddData(v5, 0, 4u, a4, a5, 0);
          if (!v12)
          {
            v12 = DEREncoderCreateEncodedBuffer(v5, &v14, &v16);
            if (!v12)
            {
              v12 = sub_5C14C(a1, a3, v14, v16);
            }
          }
        }

        v6 = v12;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v5 = 0;
      v6 = 101;
    }
  }

  DEREncoderDestroy(v5);
  if (v14)
  {
    free(v14);
  }

  return v6;
}

uint64_t sub_5C14C(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4)
{
  v19 = 0;
  __n = 0;
  __src = 0;
  v4 = 101;
  if (a1 && a3)
  {
    v7 = sub_5CF28(a3, a4, &v19, &__n + 1);
    if (v7 == 100 && (v7 = sub_5CFE0(a2, v19, HIDWORD(__n), &__src, &__n), v7 == 100))
    {
      v8 = __n;
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;
      v13 = v11 - v12;
      if (v10 - (v11 - v12) > __n)
      {
LABEL_11:
        memcpy(v11, __src, v8);
        *(*(a1 + 32) + 16) += __n;
        v4 = 100;
        goto LABEL_13;
      }

      if (__n <= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = __n;
      }

      v15 = sub_5BFA0(v12, v10, v10 + v14);
      if (v15)
      {
        v16 = *(a1 + 32);
        *v16 = v15;
        v11 = &v15[v13];
        *(v16 + 16) = v11;
        *(v16 + 8) += v14;
        v8 = __n;
        goto LABEL_11;
      }

      v4 = 2;
    }

    else
    {
      v4 = v7;
    }
  }

LABEL_13:
  if (v19)
  {
    free(v19);
    v19 = 0;
  }

  if (__src)
  {
    free(__src);
  }

  return v4;
}

uint64_t Img4EncodeItemPropertyBool(_DWORD *a1, int a2, unsigned int a3, int a4)
{
  v13[4] = 0;
  *v13 = (a4 << 31 >> 31);
  v12 = bswap32(a3);
  v11 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v6 = DEREncoderCreate(0);
      v7 = v6;
      if (v6)
      {
        v8 = DEREncoderAddData(v6, 0, 0x16u, &v12, 4u, 0);
        if (!v8)
        {
          v8 = DEREncoderAddData(v7, 0, 1u, v13, 1u, 0);
          if (!v8)
          {
            v8 = DEREncoderCreateEncodedBuffer(v7, &v11, &v13[1]);
            if (!v8)
            {
              v8 = sub_5C14C(a1, a3, v11, *&v13[1]);
            }
          }
        }

        v9 = v8;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v7 = 0;
      v9 = 101;
    }
  }

  else
  {
    v7 = 0;
    v9 = 102;
  }

  DEREncoderDestroy(v7);
  if (v11)
  {
    free(v11);
  }

  return v9;
}

uint64_t Img4EncodeItemPropertyInt32(_DWORD *a1, int a2, unsigned int a3, unsigned int a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 0x16u, &v13, 4u, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt32(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_5C14C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

uint64_t Img4EncodeItemPropertyInt64(_DWORD *a1, int a2, unsigned int a3, unint64_t a4)
{
  v13 = bswap32(a3);
  v14 = 0;
  v12 = 0;
  if (a1)
  {
    if (*a1 == a2)
    {
      v7 = DEREncoderCreate(0);
      v8 = v7;
      if (v7)
      {
        v9 = DEREncoderAddData(v7, 0, 0x16u, &v13, 4u, 0);
        if (!v9)
        {
          v9 = DEREncoderAddUInt64(v8, 0, 2u, a4);
          if (!v9)
          {
            v9 = DEREncoderCreateEncodedBuffer(v8, &v12, &v14);
            if (!v9)
            {
              v9 = sub_5C14C(a1, a3, v12, v14);
            }
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v8 = 0;
      v10 = 101;
    }
  }

  else
  {
    v8 = 0;
    v10 = 102;
  }

  DEREncoderDestroy(v8);
  if (v12)
  {
    free(v12);
  }

  return v10;
}

void Img4EncodeItemDestroy(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    a1[1] = 0;
    v3 = a1[4];
    if (v3)
    {
      if (*v3)
      {
        free(*v3);
        v3 = a1[4];
        *v3 = 0;
      }

      free(v3);
    }

    free(a1);
  }
}

uint64_t Img4EncodeItemCopyBuffer(uint64_t a1, void *a2, unsigned int *a3)
{
  result = 102;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 24) - *(a1 + 8);
    v8 = calloc(1uLL, v7);
    if (v8)
    {
      v9 = v8;
      memcpy(v8, *(a1 + 8), v7);
      *a2 = v9;
      *a3 = v7;
      return 100;
    }

    else
    {
      return 102;
    }
  }

  return result;
}

uint64_t Img4EncodeCreatePayload(const char *a1, const char *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v9 = 101;
  if (!a1 || !a2)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = 0;
  if (a3)
  {
    if (strlen(a1) != 4)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v8 = DEREncoderCreate(0);
    if (v8)
    {
      v12 = DEREncoderCreate(0);
      if (v12)
      {
        v18 = DEREncoderAddData(v8, 0, 0x16u, "IM4P", 4u, 0);
        if (v18 || (v18 = DEREncoderAddData(v8, 0, 0x16u, a1, 4u, 0), v18) || (v19 = strlen(a2), v18 = DEREncoderAddData(v8, 0, 0x16u, a2, v19, 0), v18) || (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a3, a4, 0), v18) || a5 && (v18 = DEREncoderAddDataNoCopy(v8, 0, 4u, a5, a6, 0), v18) || (v18 = DEREncoderAddDataFromEncoderNoCopy(v8, v12, 0, 0x10u, 1), v18))
        {
          v9 = v18;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v12, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = 2;
  }

LABEL_16:
  DEREncoderDestroy(v8);
  DEREncoderDestroy(v12);
  return v9;
}

uint64_t Img4EncodeCreateManifest(uint64_t a1, uint64_t (*a2)(void **, char *, uint64_t), uint64_t (*a3)(void **, size_t *, uint64_t), uint64_t (*a4)(uint64_t, void *, void, void **, uint64_t *, uint64_t), const void *a5, unsigned int a6, void *a7, unsigned int *a8, uint64_t a9, uint64_t a10)
{
  v10 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 1295273289;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v11 = 101;
  if (!a2 || !a3 || !a7)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
  if (!a8)
  {
    goto LABEL_13;
  }

  v20 = DEREncoderCreate(0);
  v10 = v20;
  if (!v20)
  {
    v15 = 0;
LABEL_12:
    v11 = 2;
    goto LABEL_13;
  }

  v21 = DEREncoderAddData(v20, 0, 0x16u, &v35, 4u, 0);
  if (v21)
  {
    goto LABEL_8;
  }

  v21 = DEREncoderAddUInt32(v10, 0, 2u, a1);
  if (v21)
  {
    goto LABEL_8;
  }

  __n = 0;
  v39 = 0;
  __src = 0;
  v23 = a2(&__src, &__n + 4, a9);
  if (v23 == 100 && (v23 = a3(&v39, &__n, a9), v23 == 100))
  {
    v24 = HIDWORD(__n) + __n;
    if (__CFADD__(HIDWORD(__n), __n))
    {
      v26 = 0;
      v11 = 106;
    }

    else
    {
      v25 = calloc(1uLL, (HIDWORD(__n) + __n));
      v26 = v25;
      if (v25)
      {
        memcpy(v25, __src, HIDWORD(__n));
        memcpy(&v26[HIDWORD(__n)], v39, __n);
        v11 = sub_5BD94(a1, 0x4D414E42u, v26, v24, &v34, &v38 + 1);
      }

      else
      {
        v11 = 102;
      }
    }
  }

  else
  {
    v11 = v23;
    v26 = 0;
  }

  if (__src)
  {
    free(__src);
    __src = 0;
  }

  if (v39)
  {
    free(v39);
    v39 = 0;
  }

  if (v26)
  {
    free(v26);
  }

  if (v11 != 100)
  {
    goto LABEL_9;
  }

  v21 = DEREncoderAddData(v10, 0, 0x11u, v34, HIDWORD(v38), 1);
  if (v21 || (v21 = sub_5CCA8(v34, HIDWORD(v38), &v32, &v37), v21 != 100) || (v21 = a4(a1, v32, v37, &v31, &v36, a10), v21 != 100) || (v21 = DEREncoderAddData(v10, 0, 4u, v31, v36, 0), v21) || (v21 = DEREncoderAddData(v10, 0, 0x10u, a5, a6, 1), v21) || (v21 = DEREncoderCreateEncodedBuffer(v10, &v33, &v38), v21))
  {
LABEL_8:
    v11 = v21;
LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v27 = DEREncoderCreate(0);
  v15 = v27;
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = DEREncoderAddData(v27, 0, 0x10u, v33, v38, 1);
  if (v28)
  {
    v11 = v28;
  }

  else
  {
    EncodedBuffer = DEREncoderCreateEncodedBuffer(v15, a7, a8);
    if (EncodedBuffer)
    {
      v11 = EncodedBuffer;
    }

    else
    {
      v11 = 100;
    }
  }

LABEL_13:
  DEREncoderDestroy(v10);
  DEREncoderDestroy(v15);
  if (v34)
  {
    free(v34);
    v34 = 0;
  }

  if (v33)
  {
    free(v33);
    v33 = 0;
  }

  if (v32)
  {
    free(v32);
    v32 = 0;
  }

  if (v31)
  {
    free(v31);
  }

  return v11;
}

uint64_t sub_5CCA8(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v8 = DEREncoderCreate(0);
  v9 = v8;
  if (v8)
  {
    v10 = DEREncoderAddData(v8, 0, 0x11u, a1, a2, 1);
    if (!v10)
    {
      EncodedBuffer = DEREncoderCreateEncodedBuffer(v9, a3, a4);
      if (EncodedBuffer)
      {
        v10 = EncodedBuffer;
      }

      else
      {
        v10 = 100;
      }
    }
  }

  else
  {
    v10 = 2;
  }

  DEREncoderDestroy(v9);
  return v10;
}

uint64_t Img4EncodeStitch(const void *a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  v8 = 0;
  v24 = 877088073;
  v9 = 101;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = 0;
  if (a7)
  {
    v18 = DEREncoderCreate(0);
    v11 = v18;
    if (v18)
    {
      v19 = DEREncoderAddData(v18, 0, 0x16u, &v24, 4u, 0);
      if (v19 || (v19 = DEREncoderAddDataNoCopy(v11, 0x103u, 0, a1, a2, 0), v19) || a3 && (v19 = DEREncoderAddData(v11, 2u, 0, a3, a4, 1), v19) || a5 && (v19 = DEREncoderAddData(v11, 2u, 1u, a5, a6, 1), v19))
      {
        v9 = v19;
        v8 = 0;
        goto LABEL_10;
      }

      v8 = DEREncoderCreate(0);
      if (v8)
      {
        v21 = DEREncoderAddDataFromEncoderNoCopy(v11, v8, 0, 0x10u, 1);
        if (v21)
        {
          v9 = v21;
        }

        else
        {
          EncodedBuffer = DEREncoderCreateEncodedBuffer(v8, a7, a8);
          if (EncodedBuffer)
          {
            v9 = EncodedBuffer;
          }

          else
          {
            v9 = 100;
          }
        }

        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = 102;
  }

LABEL_10:
  DEREncoderDestroy(v11);
  DEREncoderDestroy(v8);
  return v9;
}

uint64_t sub_5CF28(const void *a1, unsigned int a2, void *a3, unsigned int *a4)
{
  v4 = 0;
  v5 = 101;
  if (a1 && a3 && a4)
  {
    v10 = DEREncoderCreate(0);
    v4 = v10;
    if (v10)
    {
      v11 = DEREncoderAddData(v10, 0, 0x10u, a1, a2, 1);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v4, a3, a4);
        if (EncodedBuffer)
        {
          v5 = EncodedBuffer;
        }

        else
        {
          v5 = 100;
        }
      }
    }

    else
    {
      v5 = 102;
    }
  }

  DEREncoderDestroy(v4);
  return v5;
}

uint64_t sub_5CFE0(unsigned int a1, const void *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  v5 = 0;
  v6 = 101;
  if (a2 && a4 && a5)
  {
    v12 = DEREncoderCreate(0);
    v5 = v12;
    if (v12)
    {
      v13 = DEREncoderAddData(v12, 3u, a1, a2, a3, 1);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        EncodedBuffer = DEREncoderCreateEncodedBuffer(v5, a4, a5);
        if (EncodedBuffer)
        {
          v6 = EncodedBuffer;
        }

        else
        {
          v6 = 100;
        }
      }
    }

    else
    {
      v6 = 102;
    }
  }

  DEREncoderDestroy(v5);
  return v6;
}

uint64_t sub_5D0A4(_BYTE *a1, unint64_t a2, char *a3)
{
  if (a2 < 4)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(42);
  return 4;
}

uint64_t sub_5D110(_BYTE *a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (a4 <= 0xFF)
  {
    if (a2 >= 5)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(49);
      a1[4] = a4;
      return 5;
    }

    return -1;
  }

  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(50);
      *(a1 + 2) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      a1[1] = __toupper(a3[1]);
      a1[2] = __toupper(a3[2]);
      a1[3] = __toupper(52);
      *(a1 + 1) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  a1[1] = __toupper(a3[1]);
  a1[2] = __toupper(a3[2]);
  a1[3] = __toupper(56);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t sub_5D26C(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  if (!(a4 >> 16))
  {
    if (a2 >= 6)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(65);
      *(a1 + 4) = a4;
      return 6;
    }

    return -1;
  }

  if (!HIDWORD(a4))
  {
    if (a2 >= 8)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(66);
      *(a1 + 4) = a4;
      return 8;
    }

    return -1;
  }

  if (a2 < 0xC)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(67);
  *(a1 + 4) = a4;
  return 12;
}

uint64_t sub_5D37C(uint64_t a1, unint64_t a2, char *a3, _DWORD *a4)
{
  if (a2 < 8)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(70);
  *(a1 + 4) = *a4;
  return 8;
}

uint64_t sub_5D3FC(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  if (a2 < 0x18)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(71);
  v8 = *(a4 + 16);
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 24;
}

uint64_t sub_5D484(uint64_t a1, unint64_t a2, char *a3, _OWORD *a4)
{
  if (a2 < 0x24)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(72);
  v8 = a4[1];
  *(a1 + 4) = *a4;
  *(a1 + 20) = v8;
  return 36;
}

size_t sub_5D508(uint64_t a1, unint64_t a2, char *a3, char *__s)
{
  v8 = strlen(__s);
  result = -1;
  if (!(v8 >> 16) && v8 + 6 <= a2)
  {
    *a1 = __toupper(*a3);
    *(a1 + 1) = __toupper(a3[1]);
    *(a1 + 2) = __toupper(a3[2]);
    *(a1 + 3) = __toupper(80);
    *(a1 + 4) = v8;
    memcpy((a1 + 6), __s, v8);
    return v8 + 6;
  }

  return result;
}

uint64_t sub_5D5B0(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if ((v7 - 1000000000) < 0xFFFFFFFFC4653601)
  {
    if (a2 >= 0xC)
    {
      *a1 = __toupper(*a3);
      *(a1 + 1) = __toupper(a3[1]);
      *(a1 + 2) = __toupper(a3[2]);
      *(a1 + 3) = __toupper(83);
      *(a1 + 4) = v6;
      return 12;
    }

    return -1;
  }

  if (a2 < 0x10)
  {
    return -1;
  }

  *a1 = __toupper(*a3);
  *(a1 + 1) = __toupper(a3[1]);
  *(a1 + 2) = __toupper(a3[2]);
  *(a1 + 3) = __toupper(84);
  *(a1 + 4) = v6;
  *(a1 + 12) = v7;
  return 16;
}

size_t sub_5D688(_BYTE *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 4);
  if (v10 > 4)
  {
    if (v10 > 6)
    {
      if (v10 == 7)
      {

        return sub_5D508(a1, a2, a3, (a3 + 8));
      }

      else
      {
        if (v10 != 8)
        {
          goto LABEL_34;
        }

        return sub_5D0A4(a1, a2, a3);
      }
    }

    else if (v10 == 5)
    {

      return sub_5D3FC(a1, a2, a3, a3 + 8);
    }

    else
    {

      return sub_5D484(a1, a2, a3, (a3 + 8));
    }
  }

  else if (v10 > 2)
  {
    if (v10 == 3)
    {

      return sub_5D5B0(a1, a2, a3, (a3 + 8));
    }

    else
    {

      return sub_5D37C(a1, a2, a3, (a3 + 8));
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v11 = *(a3 + 8);

        return sub_5D26C(a1, a2, a3, v11);
      }

LABEL_34:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeaderField", 190, 10, 0, "invalid valueType in field", a7, a8, v8);
      return -1;
    }

    v13 = *(a3 + 8);

    return sub_5D110(a1, a2, a3, v13);
  }
}

uint64_t sub_5D7C0(uint64_t a1, unint64_t a2, int *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0xFFFF)
  {
    v8 = 0xFFFFLL;
  }

  else
  {
    v8 = a2;
  }

  if ((*a3 & 1) == 0)
  {
    v9 = "invalid header, TYP must be set";
    v10 = 204;
LABEL_6:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeHeader", v10, 10, 0, v9, a7, a8, v43);
    return -1;
  }

  v12 = a3[1] - 66;
  v13 = v12 > 0x11;
  v14 = (1 << v12) & 0x24C57;
  if (v13 || v14 == 0)
  {
    v9 = "invalid entryType";
    v10 = 217;
    goto LABEL_6;
  }

  if (a2 < 6)
  {
    return -1;
  }

  v18 = a4;
  *(a1 + 4) = 30840;
  *a1 = 825246017;
  v20 = v8 - 6;
  v21 = *a3;
  if (*a3)
  {
    if (v20 < 5)
    {
      return -1;
    }

    v23 = a3[1];
    *(a1 + 6) = __toupper(84);
    *(a1 + 7) = __toupper(89);
    *(a1 + 8) = __toupper(80);
    *(a1 + 9) = __toupper(49);
    *(a1 + 10) = v23;
    v22 = a1 + 11;
    v20 = v8 - 11;
    v21 = *a3;
    if ((*a3 & 0x8000) == 0)
    {
LABEL_15:
      if ((v21 & 0x10000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v22 = a1 + 6;
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_15;
    }
  }

  v24 = sub_5D508(v22, v20, "PAT", a3 + 144);
  if ((v24 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v22 += v24;
  v20 -= v24;
  v21 = *a3;
  if ((*a3 & 0x10000) == 0)
  {
LABEL_16:
    if ((v21 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_27:
  v25 = sub_5D508(v22, v20, "LNK", a3 + 1168);
  if ((v25 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v22 += v25;
  v20 -= v25;
  v21 = *a3;
  if ((*a3 & 2) == 0)
  {
LABEL_17:
    if ((v21 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_29:
  v26 = sub_5D110(v22, v20, "UID", a3[2]);
  if (v26 < 0)
  {
    return -1;
  }

  v22 += v26;
  v20 -= v26;
  v21 = *a3;
  if ((*a3 & 4) == 0)
  {
LABEL_18:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_31:
  v27 = sub_5D110(v22, v20, "GID", a3[3]);
  if (v27 < 0)
  {
    return -1;
  }

  v22 += v27;
  v20 -= v27;
  v21 = *a3;
  if ((*a3 & 0x10) == 0)
  {
LABEL_19:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_33:
  v28 = v20 >= 6;
  v20 -= 6;
  if (!v28)
  {
    return -1;
  }

  v29 = a3[5];
  *v22 = __toupper(77);
  *(v22 + 1) = __toupper(79);
  *(v22 + 2) = __toupper(68);
  *(v22 + 3) = __toupper(50);
  *(v22 + 4) = v29;
  v22 += 6;
  v21 = *a3;
  if ((*a3 & 0x20) == 0)
  {
LABEL_20:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_36:
  v30 = sub_5D110(v22, v20, "DEV", a3[6]);
  if (v30 < 0)
  {
    return -1;
  }

  v22 += v30;
  v20 -= v30;
  v21 = *a3;
  if ((*a3 & 0x40) == 0)
  {
LABEL_21:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_38:
  v31 = sub_5D110(v22, v20, "INO", *(a3 + 4));
  if (v31 < 0)
  {
    return -1;
  }

  v22 += v31;
  v20 -= v31;
  v21 = *a3;
  if ((*a3 & 0x80) != 0)
  {
LABEL_40:
    v32 = sub_5D110(v22, v20, "SIZ", *(a3 + 5));
    if (v32 < 0)
    {
      return -1;
    }

    v22 += v32;
    v20 -= v32;
    v21 = *a3;
  }

LABEL_42:
  if ((v21 & 8) != 0)
  {
    v33 = sub_5D110(v22, v20, "FLG", a3[4]);
    if (v33 < 0)
    {
      return -1;
    }

    v22 += v33;
    v20 -= v33;
    v21 = *a3;
  }

  if ((v21 & 0x100) != 0)
  {
    v34 = sub_5D5B0(v22, v20, "MTM", a3 + 6);
    if (v34 < 0)
    {
      return -1;
    }

    v22 += v34;
    v20 -= v34;
    v21 = *a3;
  }

  if ((v21 & 0x1000) != 0)
  {
    v35 = sub_5D37C(v22, v20, "CKS", a3 + 22);
    if (v35 < 0)
    {
      return -1;
    }

    v22 += v35;
    v20 -= v35;
    v21 = *a3;
  }

  if ((v21 & 0x2000) != 0)
  {
    v36 = sub_5D3FC(v22, v20, "SH1", (a3 + 23));
    if (v36 < 0)
    {
      return -1;
    }

    v22 += v36;
    v20 -= v36;
    v21 = *a3;
  }

  if ((v21 & 0x4000) != 0)
  {
    v37 = sub_5D484(v22, v20, "SH2", a3 + 7);
    if (v37 < 0)
    {
      return -1;
    }

    v22 += v37;
    v20 -= v37;
    v21 = *a3;
  }

  if ((v21 & 0x200) != 0)
  {
    v38 = sub_5D26C(v22, v20, "DAT", *(a3 + 8));
    if (v38 < 0)
    {
      return -1;
    }

    v22 += v38;
    v20 -= v38;
    v21 = *a3;
  }

  if ((v21 & 0x400) != 0)
  {
    v39 = sub_5D26C(v22, v20, "XAT", *(a3 + 9));
    if (v39 < 0)
    {
      return -1;
    }

    v22 += v39;
    v20 -= v39;
    v21 = *a3;
  }

  if ((v21 & 0x800) != 0)
  {
    v40 = sub_5D26C(v22, v20, "ACL", *(a3 + 10));
    if (v40 < 0)
    {
      return -1;
    }

    v22 += v40;
    v20 -= v40;
  }

  if (v18 && a5)
  {
    v41 = 0;
    do
    {
      v42 = sub_5D688(v22, v20, v18, a4, a5, a6, a7, a8);
      if ((v42 & 0x8000000000000000) != 0)
      {
        return -1;
      }

      v22 += v42;
      v20 -= v42;
      ++v41;
      v18 += 1032;
    }

    while (v41 < a5);
  }

  result = v22 - a1;
  *(a1 + 4) = v22 - a1;
  return result;
}

uint64_t sub_5DC4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3 - 1;
  if (v8 >= 4)
  {
    v16 = "invalid ACE type";
    v17 = 281;
LABEL_8:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_encodeACE", v17, 10, 0, v16, a7, a8, v18);
    return -1;
  }

  v10 = *(a3 + 24) - 1;
  if (v10 >= 4)
  {
    v16 = "invalid ACE qualifier type";
    v17 = 298;
    goto LABEL_8;
  }

  v13 = strlen((a3 + 28));
  v14 = v13 + 22;
  result = -1;
  if (v13 + 22 <= a2 && !HIDWORD(v14))
  {
    *a1 = v14;
    *(a1 + 4) = 0x4C554441u >> (8 * v8);
    *(a1 + 5) = *(a3 + 16);
    *(a1 + 13) = *(a3 + 8);
    *(a1 + 21) = 0x69736775u >> (8 * v10);
    memcpy((a1 + 22), (a3 + 28), v13);
    return v14;
  }

  return result;
}

uint64_t sub_5DD64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  bzero(a1, 0x408uLL);
  if (a3 < 4)
  {
    return -1;
  }

  for (i = 0; i != 3; ++i)
  {
    *(a1 + i) = __toupper(*(a2 + i));
  }

  v11 = *(a2 + 3);
  if (v11 <= 0x42)
  {
    if (*(a2 + 3) <= 0x33u)
    {
      if (v11 == 42)
      {
        *(a1 + 4) = 8;
        return 4;
      }

      if (v11 == 49)
      {
        if (a3 != 4)
        {
          *(a1 + 4) = 1;
          *(a1 + 8) = *(a2 + 4);
          return 5;
        }

        return -1;
      }

      if (v11 != 50)
      {
        goto LABEL_57;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v16 = 1;
    }

    else
    {
      if (*(a2 + 3) <= 0x40u)
      {
        if (v11 != 52)
        {
          if (v11 == 56)
          {
            if (a3 >= 0xC)
            {
              v12 = 1;
LABEL_50:
              *(a1 + 4) = v12;
              *(a1 + 8) = *(a2 + 4);
              return 12;
            }

            return -1;
          }

          goto LABEL_57;
        }

        if (a3 < 8)
        {
          return -1;
        }

        v18 = 1;
LABEL_56:
        *(a1 + 4) = v18;
        *(a1 + 8) = *(a2 + 4);
        return 8;
      }

      if (v11 != 65)
      {
        if (v11 == 66)
        {
          if (a3 < 8)
          {
            return -1;
          }

          v18 = 2;
          goto LABEL_56;
        }

LABEL_57:
        v14 = "invalid fields storage type";
        v15 = 404;
        goto LABEL_58;
      }

      if (a3 < 6)
      {
        return -1;
      }

      v16 = 2;
    }

    *(a1 + 4) = v16;
    *(a1 + 8) = *(a2 + 4);
    return 6;
  }

  if (*(a2 + 3) > 0x47u)
  {
    if (*(a2 + 3) > 0x52u)
    {
      if (v11 == 83)
      {
        if (a3 >= 0xC)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = 0;
          return 12;
        }

        return -1;
      }

      if (v11 == 84)
      {
        if (a3 >= 0x10)
        {
          *(a1 + 4) = 3;
          *(a1 + 8) = *(a2 + 4);
          *(a1 + 16) = *(a2 + 12);
          return 16;
        }

        return -1;
      }
    }

    else
    {
      if (v11 == 72)
      {
        if (a3 >= 0x24)
        {
          *(a1 + 4) = 6;
          v19 = *(a2 + 4);
          *(a1 + 24) = *(a2 + 20);
          *(a1 + 8) = v19;
          return 36;
        }

        return -1;
      }

      if (v11 == 80)
      {
        if (a3 < 6)
        {
          return -1;
        }

        v13 = *(a2 + 4);
        if (v13 < 0x3FF)
        {
          v6 = v13 + 6;
          if (v13 + 6 <= a3)
          {
            *(a1 + 4) = 7;
            memcpy((a1 + 8), (a2 + 6), v13);
            return v6;
          }

          return -1;
        }

        v14 = "path too long in header";
        v15 = 396;
LABEL_58:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderField", v15, 10, 0, v14, v9, v10, v20);
        return -1;
      }
    }

    goto LABEL_57;
  }

  if (v11 != 67)
  {
    if (v11 == 70)
    {
      if (a3 < 8)
      {
        return -1;
      }

      v18 = 4;
      goto LABEL_56;
    }

    if (v11 == 71)
    {
      if (a3 >= 0x18)
      {
        *(a1 + 4) = 5;
        v17 = *(a2 + 4);
        *(a1 + 24) = *(a2 + 20);
        *(a1 + 8) = v17;
        return 24;
      }

      return -1;
    }

    goto LABEL_57;
  }

  if (a3 >= 0xC)
  {
    v12 = 2;
    goto LABEL_50;
  }

  return -1;
}

uint64_t sub_5E04C(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  bzero(a1, 0x890uLL);
  if (a3 < 6 || *a2 != 826360153 && *a2 != 825246017)
  {
    return -1;
  }

  v12 = *(a2 + 4);
  if (v12 < 6 || v12 > a3)
  {
    return -1;
  }

  v15 = a2 + 6;
  v16 = v12 - 6;
  if (v12 != 6)
  {
    v28 = 0;
    memset(__src, 0, 512);
    while (1)
    {
      v17 = sub_5DD64(__src, v15, v16);
      if (v17 < 0)
      {
        return -1;
      }

      v20 = v17;
      v21 = __src[0] & 0xDFDFDF;
      if ((__src[0] & 0xDFDFDF) <= 0x4D544C)
      {
        if ((__src[0] & 0xDFDFDF) > 0x444F4C)
        {
          if ((__src[0] & 0xDFDFDF) > 0x4B4E4B)
          {
            if (v21 == 4935244)
            {
              if (DWORD1(__src[0]) != 7)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 459, 10, 0, "invalid type for default field %s", v18, v19, __src);
                return -1;
              }

              *a1 |= 0x10000u;
              strlcpy(a1 + 1168, __src + 8, 0x400uLL);
            }

            else
            {
              if (v21 != 4997953)
              {
                goto LABEL_73;
              }

              if (DWORD1(__src[0]) != 2)
              {
                sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 473, 10, 0, "invalid type for default field %s", v18, v19, __src);
                return -1;
              }

              *a1 |= 0x800u;
              *(a1 + 10) = *(&__src[0] + 1);
            }
          }

          else if (v21 == 4476749)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 463, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 0x10u;
            a1[5] = DWORD2(__src[0]);
          }

          else
          {
            if (v21 != 4672582)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 462, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 8u;
            a1[4] = DWORD2(__src[0]);
          }
        }

        else if ((__src[0] & 0xDFDFDF) > 0x444946)
        {
          if (v21 == 4475207)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 461, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 4u;
            a1[3] = DWORD2(__src[0]);
          }

          else
          {
            if (v21 != 4475221)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 460, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 2u;
            a1[2] = DWORD2(__src[0]);
          }
        }

        else if (v21 == 1132627)
        {
          if (DWORD1(__src[0]) != 5)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 469, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x2000u;
          *(a1 + 23) = *(__src + 8);
          a1[27] = DWORD2(__src[1]);
        }

        else
        {
          if (v21 != 1198163)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 6)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 470, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x4000u;
          v22 = *(&__src[1] + 8);
          *(a1 + 7) = *(__src + 8);
          *(a1 + 8) = v22;
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544143)
      {
        if ((__src[0] & 0xDFDFDF) > 0x505953)
        {
          if (v21 == 5265748)
          {
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 440, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            v23 = DWORD2(__src[0]);
            if ((*(&__src[0] + 1) - 66) > 0x11 || ((1 << (BYTE8(__src[0]) - 66)) & 0x24C57) == 0)
            {
              v25 = "invalid entryType";
              v26 = 455;
              goto LABEL_100;
            }

            *a1 |= 1u;
            a1[1] = v23;
          }

          else
          {
            if (v21 != 5458755)
            {
              goto LABEL_73;
            }

            if (DWORD1(__src[0]) != 4)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 468, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 0x1000u;
            a1[22] = DWORD2(__src[0]);
          }
        }

        else if (v21 == 5067853)
        {
          if (DWORD1(__src[0]) != 3)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 467, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x100u;
          *(a1 + 3) = *(__src + 8);
        }

        else
        {
          if (v21 != 5197385)
          {
            goto LABEL_73;
          }

          if (DWORD1(__src[0]) != 1)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 465, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x40u;
          *(a1 + 4) = *(&__src[0] + 1);
        }
      }

      else if ((__src[0] & 0xDFDFDF) <= 0x544157)
      {
        if (v21 == 5521732)
        {
          if (DWORD1(__src[0]) != 2)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 471, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x200u;
          *(a1 + 8) = *(&__src[0] + 1);
        }

        else
        {
          if (v21 != 5521744)
          {
LABEL_73:
            v24 = v28;
            if (a4 && v28 < a5)
            {
              memcpy((a4 + 1032 * v28), __src, 0x408uLL);
              v24 = v28;
            }

            v28 = v24 + 1;
            goto LABEL_77;
          }

          if (DWORD1(__src[0]) != 7)
          {
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 458, 10, 0, "invalid type for default field %s", v18, v19, __src);
            return -1;
          }

          *a1 |= 0x8000u;
          __strlcpy_chk();
        }
      }

      else
      {
        switch(v21)
        {
          case 5521752:
            if (DWORD1(__src[0]) != 2)
            {
              v27 = __src;
              v25 = "invalid type for default field %s";
              v26 = 472;
LABEL_100:
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", v26, 10, 0, v25, v18, v19, v27);
              return -1;
            }

            *a1 |= 0x400u;
            *(a1 + 9) = *(&__src[0] + 1);
            break;
          case 5653828:
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 464, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 0x20u;
            a1[6] = DWORD2(__src[0]);
            break;
          case 5917011:
            if (DWORD1(__src[0]) != 1)
            {
              sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeader", 466, 10, 0, "invalid type for default field %s", v18, v19, __src);
              return -1;
            }

            *a1 |= 0x80u;
            *(a1 + 5) = *(&__src[0] + 1);
            break;
          default:
            goto LABEL_73;
        }
      }

LABEL_77:
      v15 += v20;
      v16 -= v20;
      if (!v16)
      {
        goto LABEL_80;
      }
    }
  }

  v28 = 0;
LABEL_80:
  if (a6)
  {
    *a6 = v28;
  }

  return v15 - a2;
}

unint64_t sub_5E8FC(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 6 || *a1 != 826360153 && *a1 != 825246017)
  {
    return -1;
  }

  result = *(a1 + 4);
  if (result < 6 || result > a2)
  {
    return -1;
  }

  v11 = result - 6;
  if (result != 6)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a1 + 6);
    while (1)
    {
      if (v11 < 4)
      {
        return -1;
      }

      v15 = *(v14 + 3);
      v22 = *v14;
      if (v15 > 0x42)
      {
        if (*(v14 + 3) <= 0x47u)
        {
          if (v15 == 67)
          {
            if (v11 < 0xC)
            {
              return -1;
            }

            v20 = *(v14 + 1);
            v18 = __CFADD__(v12, v20);
            v12 += v20;
            if (v18)
            {
              return -1;
            }

LABEL_48:
            v16 = 12;
            goto LABEL_49;
          }

          if (v15 == 70)
          {
            goto LABEL_36;
          }

          if (v15 != 71)
          {
            goto LABEL_80;
          }

          v16 = 24;
        }

        else if (*(v14 + 3) > 0x52u)
        {
          if (v15 == 83)
          {
            goto LABEL_48;
          }

          if (v15 != 84)
          {
LABEL_80:
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeHeaderInfo", 558, 10, 0, "invalid storage type in YAA header: 0x%02x, key=%s", 4476749, a8, v15);
            return -1;
          }

          v16 = 16;
        }

        else if (v15 == 72)
        {
          v16 = 36;
        }

        else
        {
          if (v15 != 80)
          {
            goto LABEL_80;
          }

          if (v11 < 6)
          {
            return -1;
          }

          v16 = *(v14 + 2) + 6;
        }
      }

      else
      {
        if (*(v14 + 3) > 0x33u)
        {
          if (*(v14 + 3) > 0x40u)
          {
            if (v15 != 65)
            {
              if (v11 < 8)
              {
                return -1;
              }

              v17 = v14[1];
              v18 = __CFADD__(v12, v17);
              v12 += v17;
              if (v18)
              {
                return -1;
              }

LABEL_36:
              v16 = 8;
              goto LABEL_49;
            }

            if (v11 < 6)
            {
              return -1;
            }

            v19 = *(v14 + 2);
            v18 = __CFADD__(v12, v19);
            v12 += v19;
            if (v18)
            {
              return -1;
            }

            goto LABEL_43;
          }

          if (v15 == 52)
          {
            goto LABEL_36;
          }

          if (v15 != 56)
          {
            goto LABEL_80;
          }

          goto LABEL_48;
        }

        switch(v15)
        {
          case '*':
            v16 = 4;
            break;
          case '1':
            v16 = 5;
            break;
          case '2':
LABEL_43:
            v16 = 6;
            break;
          default:
            goto LABEL_80;
        }
      }

LABEL_49:
      if (v11 < v16)
      {
        return -1;
      }

      v21 = v22 & 0xDFDFDF;
      if ((v22 & 0xDFDFDFu) > 0x4F4E48)
      {
        if ((v22 & 0xDFDFDFu) <= 0x544143)
        {
          if (v21 == 5197385 || v21 == 5265748 || v21 == 5458755)
          {
            goto LABEL_76;
          }
        }

        else
        {
          a8 = (v21 - 5521732);
          if (a8 <= 0x14)
          {
            a8 = (1 << (v21 - 68));
            if ((a8 & 0x101001) != 0)
            {
              goto LABEL_76;
            }
          }

          if (v21 == 5653828 || v21 == 5917011)
          {
            goto LABEL_76;
          }
        }

LABEL_74:
        a8 = 4997953;
        if (v21 != 4997953)
        {
          ++v13;
        }

        goto LABEL_76;
      }

      if ((v22 & 0xDFDFDFu) <= 0x444F4C)
      {
        if ((v22 & 0xDFDFDFu) > 0x444946)
        {
          if (v21 == 4475207)
          {
            goto LABEL_76;
          }

          a8 = 4475221;
        }

        else
        {
          if (v21 == 1132627)
          {
            goto LABEL_76;
          }

          a8 = 1198163;
        }

        goto LABEL_70;
      }

      if ((v22 & 0xDFDFDFu) > 0x4B4E4B)
      {
        if (v21 == 4935244 || v21 == 5067853)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

      if (v21 != 4476749)
      {
        a8 = 4672582;
LABEL_70:
        if (v21 != a8)
        {
          goto LABEL_74;
        }
      }

LABEL_76:
      v14 = (v14 + v16);
      v11 -= v16;
      if (!v11)
      {
        goto LABEL_79;
      }
    }
  }

  v13 = 0;
  v12 = 0;
LABEL_79:
  *a3 = v13;
  *a4 = v12;
  return result;
}

uint64_t sub_5ECBC(unsigned int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 > 3)
  {
    v10 = *a1;
    if (v10 > a2)
    {
      v8 = "invalid ACL blob";
      v9 = 612;
      goto LABEL_7;
    }

    v12 = *(a1 + 4);
    *(a3 + 16) = *(a1 + 5);
    *(a3 + 8) = *(a1 + 13);
    if (v10 - 22 >= 0x101)
    {
      v8 = "unsupported qualifier length";
      v9 = 622;
      goto LABEL_7;
    }

    v14 = *(a1 + 21);
    memcpy((a3 + 28), a1 + 22, v10 - 22);
    v15 = __toupper(v12);
    if (v15 > 75)
    {
      if (v15 == 76)
      {
        v18 = 4;
      }

      else
      {
        if (v15 != 85)
        {
          goto LABEL_17;
        }

        v18 = 3;
      }
    }

    else
    {
      if (v15 != 65)
      {
        if (v15 == 68)
        {
          v18 = 2;
          goto LABEL_20;
        }

LABEL_17:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 632, 10, 0, "invalid ACE type in ACL blob: %c", v16, v17, v12);
        return -1;
      }

      v18 = 1;
    }

LABEL_20:
    *a3 = v18;
    HIDWORD(v22) = __toupper(v14) - 71;
    LODWORD(v22) = HIDWORD(v22);
    v21 = v22 >> 1;
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v23 = 3;
        goto LABEL_30;
      }

      if (v21 == 7)
      {
        v23 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v21)
      {
        v23 = 2;
        goto LABEL_30;
      }

      if (v21 == 1)
      {
        v23 = 4;
LABEL_30:
        *(a3 + 24) = v23;
        return v10;
      }
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", 642, 10, 0, "invalid ACE qualifier type in ACL blob: %c", v19, v20, v14);
    return -1;
  }

  v8 = "invalid ACL blob";
  v9 = 610;
LABEL_7:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACE", v9, 10, 0, v8, a7, a8, v24);
  return -1;
}

unint64_t sub_5EEBC(uint64_t a1, unint64_t *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v11 = *a3;
  if (a4)
  {
    v12 = a5;
    v13 = a4;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      if (v15 >= v10)
      {
        if (v10)
        {
          v10 += v10 >> 1;
        }

        else
        {
          v10 = 8;
        }

        v11 = reallocf(v11, 288 * v10);
        if (!v11)
        {
          break;
        }
      }

      v16 = sub_5ECBC(v12, v13, v11 + v14, a4, a5, a6, a7, a8);
      if (v16 < 0)
      {
        v17 = "decoding ACE";
        v18 = 670;
        v19 = 0;
        goto LABEL_14;
      }

      ++v15;
      v12 = (v12 + v16);
      v14 += 288;
      v13 -= v16;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    v19 = *__error();
    v17 = "malloc";
    v18 = 665;
LABEL_14:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_decodeACL", v18, 10, v19, v17, a7, a8, v21);
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:
  *a2 = v10;
  *a3 = v11;
  return v15;
}

uint64_t sub_5EFE4(char *a1, int *a2, uint64_t a3, int a4)
{
  v71[1] = 0;
  v71[2] = 0;
  v71[0] = 5;
  memset(v72, 0, sizeof(v72));
  if (a3 && (*a3 & 1) != 0)
  {
    v72[0] = *(a3 + 8);
    v8 = 512;
    HIDWORD(v71[0]) = 512;
    v9 = 16;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *a2;
  if ((*a2 & 0x100) != 0)
  {
    v11 = *(a2 + 3);
    v12 = (v72 + v9);
    *v12 = v11;
    v12[1] = v11;
    v9 |= 0x20u;
    v8 |= 0x1400u;
    HIDWORD(v71[0]) = v8;
  }

  if (a3 && (*a3 & 2) != 0)
  {
    *(v72 + v9) = *(a3 + 24);
    v9 += 16;
    HIDWORD(v71[0]) = v8 | 0x2000;
  }

  if ((v10 & 2) != 0)
  {
    v13 = a2[2];
    if ((v10 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = -1;
    if ((v10 & 4) != 0)
    {
LABEL_12:
      v14 = a2[3];
      goto LABEL_15;
    }
  }

  v14 = -1;
LABEL_15:
  memset(&v70, 0, sizeof(v70));
  if (lstat(a1, &v70) < 0)
  {
    v17 = __error();
    if (a4 && *v17 == 13)
    {
      return 0;
    }

    v27 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 751, 10, v27, "%s", v28, v29, a1);
    return 0xFFFFFFFFLL;
  }

  v15 = v70.st_mode & 0xF000;
  if (v15 == 0x8000 || v15 == 0x4000)
  {
    v16 = sub_64390();
  }

  else
  {
    v16 = 0;
  }

  v19 = a2[1] - 68;
  if (v19 > 8 || ((1 << v19) & 0x115) == 0)
  {
    if ((*a2 & 2) != 0 && v13 != v70.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v70.st_gid)
    {
      if (!lchown(a1, v13, v14) || (v30 = __error(), a4) && *v30 == 1)
      {
        v22 = 1;
      }

      else
      {
        v52 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 814, 10, *v52, "%s", v53, v54, a1);
        v22 = 0;
      }
    }

    if ((*a2 & 0x10) != 0)
    {
      v55 = a2[5] & 0xFFF;
      if (v55 != (v70.st_mode & 0xFFF))
      {
        if (lchmod(a1, v55))
        {
          v56 = __error();
          if (!a4 || *v56 != 1)
          {
            v57 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 819, 10, *v57, "%s", v58, v59, a1);
            v22 = 0;
          }
        }
      }
    }

    if (HIDWORD(v71[0]))
    {
      if (setattrlist(a1, v71, v72, v9, 1u))
      {
        v60 = __error();
        if (!a4 || *v60 != 1)
        {
          v61 = __error();
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 835, 10, "setattrlist error %d: %s", v62, v63, v64, *v61);
        }
      }
    }

    if ((*a2 & 8) != 0)
    {
      v65 = a2[4] & 0xFFFFFFDF | (32 * ((v70.st_flags >> 5) & 1));
      if (v70.st_flags != v65)
      {
        if (lchflags(a1, v65))
        {
          v66 = __error();
          if (!a4 || *v66 != 1)
          {
            v67 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 849, 10, *v67, "%s", v68, v69, a1);
            v22 = 0;
          }
        }
      }
    }

    goto LABEL_69;
  }

  v20 = open(a1, 0x200000);
  if ((v20 & 0x80000000) != 0)
  {
    v24 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 770, 10, v24, "%s", v25, v26, a1);
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  if ((*a2 & 2) != 0 && v13 != v70.st_uid || (v22 = 1, (*a2 & 4) != 0) && v14 != v70.st_gid)
  {
    if (!fchown(v20, v13, v14) || (v23 = __error(), a4) && *v23 == 1)
    {
      v22 = 1;
    }

    else
    {
      v31 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 774, 10, *v31, "%s", v32, v33, a1);
      v22 = 0;
    }
  }

  if ((*a2 & 0x10) != 0)
  {
    v34 = a2[5] & 0xFFF;
    if (v34 != (v70.st_mode & 0xFFF))
    {
      if (fchmod(v21, v34))
      {
        v35 = __error();
        if (!a4 || *v35 != 1)
        {
          v36 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 778, 10, *v36, "%s", v37, v38, a1);
          v22 = 0;
        }
      }
    }
  }

  if (HIDWORD(v71[0]))
  {
    if (fsetattrlist(v21, v71, v72, v9, 1u))
    {
      v39 = __error();
      if (!a4 || *v39 != 1)
      {
        v40 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 783, 10, *v40, "%s", v41, v42, a1);
        v22 = 0;
      }
    }
  }

  if (a3)
  {
    if ((*a3 & 0x100) != 0)
    {
      v43 = *(a3 + 80);
      if (v16 != v43 && (sub_643A8(v21, v43) & 0x80000000) != 0)
      {
        v44 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 794, 10, *v44, "%s", v45, v46, a1);
        v22 = 0;
      }
    }
  }

  if ((*a2 & 8) != 0)
  {
    v47 = a2[4] & 0xFFFFFFDF | (32 * ((v70.st_flags >> 5) & 1));
    if (v70.st_flags != v47)
    {
      if (fchflags(v21, v47))
      {
        v48 = __error();
        if (!a4 || *v48 != 1)
        {
          v49 = __error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryAttributes", 803, 10, *v49, "%s", v50, v51, a1);
          v22 = 0;
        }
      }
    }
  }

  close(v21);
LABEL_69:
  if (v22)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_5F658(char *path, uint64_t a2, int a3, unint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 1) & 4) == 0)
  {
    return 0;
  }

  v9 = a4;
  if (*(a2 + 72) == a4)
  {
    if (a4)
    {
      v13 = 1;
      do
      {
        v14 = *a5;
        if (v9 < v14)
        {
          v24 = "invalid XAT entry size";
          v25 = 871;
          goto LABEL_31;
        }

        if (v14 < 5)
        {
          LOBYTE(v16) = 0;
LABEL_30:
          v26 = v16;
          v24 = "invalid XAT entry key %zu";
          v25 = 878;
          goto LABEL_31;
        }

        v15 = a5;
        v16 = 0;
        a5 = (a5 + v14);
        v17 = (v15 + 1);
        while (v17[v16])
        {
          v18 = &v17[++v16];
          if (&v17[v16] >= a5)
          {
            goto LABEL_13;
          }
        }

        v18 = &v17[v16];
LABEL_13:
        if (!v16 || v18 == a5)
        {
          goto LABEL_30;
        }

        if (a5 == (v18 + 1))
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 + 1;
        }

        if (setxattr(path, v17, v19, a5 - (v18 + 1), 0, 1) < 0)
        {
          v20 = __error();
          if (!a3 || *v20 != 1)
          {
            v21 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", 891, 10, *v21, "setxattr: %s", v22, v23, path);
            v13 = 0;
          }
        }

        v9 -= v14;
      }

      while (v9);
      if (v13)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "XAT blob size mismatch";
    v25 = 863;
LABEL_31:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryXAT", v25, 10, 0, v24, a7, a8, v26);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_5F828(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 1) & 8) == 0)
  {
    return 0;
  }

  memset(&v37, 0, sizeof(v37));
  if (lstat(a1, &v37))
  {
    if (!a4)
    {
      return 0;
    }
  }

  else if ((v37.st_mode & 0xF000) == 0xA000 || a4 == 0)
  {
    return 0;
  }

  v11 = 0;
  v12 = a5;
  v13 = a4;
  do
  {
    if ((*v12 - 1) < 2)
    {
      ++v11;
    }

    v12 += 72;
    --v13;
  }

  while (v13);
  if (!v11)
  {
    return 0;
  }

  acl_p = 0;
  v14 = sysconf(71);
  v15 = sysconf(70);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 4096)
  {
    v17 = 4096;
  }

  else
  {
    v17 = v16;
  }

  v18 = malloc(v17);
  if (!v18)
  {
    v28 = *__error();
    v29 = "malloc";
    v30 = 943;
LABEL_57:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/YAACommon.c", "yaa_setEntryACL", v30, 10, v28, v29, v19, v20, v31);
    v5 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  acl_p = acl_init(v11);
  if (!acl_p)
  {
    v28 = *__error();
    v29 = "acl_init";
    v30 = 946;
    goto LABEL_57;
  }

  v21 = (a5 + 28);
  do
  {
    flagset_p = 0;
    entry_p = 0;
    memset(uu, 0, sizeof(uu));
    v22 = *(v21 - 7);
    if (v22 - 1 > 1)
    {
      goto LABEL_52;
    }

    if ((*(v21 - 12) & 0xFFFFFFFFFFFDFE0FLL) != 0)
    {
      v31 = *(v21 - 12);
      v29 = "invalid ACE flags: 0x%016llx";
      v30 = 973;
      goto LABEL_72;
    }

    if ((*(v21 - 20) & 0xFFFFFFFFFFEFC001) != 0)
    {
      v31 = *(v21 - 20);
      v29 = "invalid ACE perms: 0x%016llx";
      v30 = 974;
      goto LABEL_72;
    }

    v23 = *(v21 - 1);
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        memset(&v33, 0, sizeof(v33));
        if (mbr_string_to_sid(v21, &v33))
        {
          v25 = 0;
          goto LABEL_45;
        }

        v26 = mbr_sid_to_uuid(&v33, uu);
        goto LABEL_44;
      }

      if (v23 == 4)
      {
        if (uuid_parse(v21, uu))
        {
          goto LABEL_63;
        }

        goto LABEL_46;
      }

LABEL_71:
      LODWORD(v31) = *(v21 - 1);
      v29 = "invalid qualifier type: %d";
      v30 = 1007;
LABEL_72:
      v28 = 0;
      goto LABEL_57;
    }

    if (v23 == 1)
    {
      memset(&v33, 0, sizeof(v33));
      v32 = 0;
      v27 = getpwnam_r(v21, &v33, v18, v17, &v32);
      v25 = 0;
      if (!v27 && v32)
      {
        v26 = mbr_uid_to_uuid(v33.pw_uid, uu);
        goto LABEL_44;
      }
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_71;
      }

      memset(&v33, 0, 32);
      v32 = 0;
      v24 = getgrnam_r(v21, &v33, v18, v17, &v32);
      v25 = 0;
      if (!v24 && v32)
      {
        v26 = mbr_gid_to_uuid(v33.pw_uid, uu);
LABEL_44:
        v25 = v26 == 0;
      }
    }

LABEL_45:
    if (!v25)
    {
LABEL_63:
      LODWORD(v31) = *(v21 - 1);
      v29 = "could not resolve qualifier (type %d): %s";
      v30 = 1010;
      goto LABEL_72;
    }

LABEL_46:
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v28 = *__error();
      v29 = "acl_create_entry";
      v30 = 1013;
      goto LABEL_57;
    }

    if (acl_set_tag_type(entry_p, v22))
    {
      v28 = *__error();
      v29 = "acl_set_tag_type";
      v30 = 1014;
      goto LABEL_57;
    }

    if (acl_set_permset_mask_np(entry_p, *(v21 - 20)))
    {
      v28 = *__error();
      v29 = "acl_set_permset_mask_np";
      v30 = 1015;
      goto LABEL_57;
    }

    if (acl_get_flagset_np(entry_p, &flagset_p))
    {
      v28 = *__error();
      v29 = "acl_get_flagset_np";
      v30 = 1016;
      goto LABEL_57;
    }

    if (acl_add_flag_np(flagset_p, *(v21 - 3)))
    {
      v28 = *__error();
      v29 = "acl_add_flag_np";
      v30 = 1017;
      goto LABEL_57;
    }

    if (acl_set_qualifier(entry_p, uu))
    {
      v28 = *__error();
      v29 = "acl_set_qualifier";
      v30 = 1018;
      goto LABEL_57;
    }

LABEL_52:
    v21 += 288;
    --a4;
  }

  while (a4);
  if (acl_set_file(a1, ACL_TYPE_EXTENDED, acl_p))
  {
    v28 = *__error();
    LOBYTE(v31) = a1;
    v29 = "acl_set_file: %s";
    v30 = 1022;
    goto LABEL_57;
  }

  v5 = 0;
LABEL_58:
  if (acl_p)
  {
    acl_free(acl_p);
  }

  free(v18);
  return v5;
}

uint64_t ParallelArchiveGetPayloadSize(int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    v5 = *(a1 + 10);
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    v5 += *(a1 + 8);
  }

LABEL_6:
  if ((v4 & 0x400) != 0)
  {
    v5 += *(a1 + 9);
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3)
  {
    goto LABEL_14;
  }

  v6 = (a2 + 8);
  do
  {
    if (*(v6 - 1) == 2)
    {
      v5 += *v6;
    }

    v6 += 129;
    --a3;
  }

  while (a3);
LABEL_14:
  *a4 = v5;
  return 0;
}

size_t sub_5FDE0(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_5FE08(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_5FE30(uint64_t a1, uint64_t a2, __int16 a3, int a4, int a5, const char *a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  v13 = ((a3 & 0x3FFF) << 10) | (a4 << 24);
  if (a5 >= 1)
  {
    v14 = strerror(a5);
    snprintf(__str, 0x400uLL, "%s: ", v14);
  }

  v15 = v13 & 0xFFFFFC00 | a5 & 0x3FF;
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a6, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_6034C(__str, v15 | 0x80000000);
  }

  return ParallelCompressionUpdateError((v15 | 0x80000000), __str);
}

uint64_t sub_5FF3C(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
  v13 = strlen(__s);
  vsnprintf(&__s[v13], 1024 - v13, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v16 = v12;
    v17 = 2082;
    v18 = __s;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x](warning) %{public}s", buf, 0x12u);
  }

  return ParallelCompressionUpdateWarning(v12, __s);
}

void sub_60050(uint64_t a1, uint64_t a2, __int16 a3, int a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__s, 0x400uLL);
  v12 = strlen(__s);
  vsnprintf(&__s[v12], 1024 - v12, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v14 = ((a3 & 0x3FFF) << 10) | (a4 << 24) | 0x80000000;
    v15 = 2082;
    v16 = __s;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[0x%08x] %{public}s", buf, 0x12u);
  }
}

uint64_t sub_60158(const char *a1, const char *a2, int a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(__str, 0x400uLL);
  if (*a1)
  {
    v13 = a1;
    v14 = a1;
    do
    {
      if (v13 > a1 && *(v13 - 1) == 47)
      {
        v14 = v13;
      }
    }

    while (*++v13);
  }

  else
  {
    v14 = a1;
  }

  snprintf(__str, 0x400uLL, "%s:%s:%d: ", v14, a2, a3);
  v16 = strlen(__str);
  vsnprintf(&__str[v16], 1024 - v16, a5, &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_603D8(__str);
  }

  return fputs(__str, __stderrp);
}

uint64_t sub_60284(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = 0;
  *__s = 0u;
  v14 = 0u;
  time(&v12);
  ctime_r(&v12, __s);
  v10 = strlen(__s);
  if (v10)
  {
    __s[v10 - 1] = 0;
  }

  fprintf(__stderrp, "[%s] ", __s);
  return vfprintf(__stderrp, a1, &a9);
}

void sub_6034C(uint64_t a1, int a2)
{
  v2[0] = 67109378;
  v2[1] = a2;
  v3 = 2082;
  v4 = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "[0x%08x] %{public}s", v2, 0x12u);
}

void sub_603D8(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}s", &v1, 0xCu);
}

_WORD *ParallelCompressionEnterThreadErrorContext_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = sub_61120();
  result = pthread_getspecific(v9);
  if (result)
  {
    ++result[2];
  }

  else
  {
    v11 = calloc(1uLL, 0x2000uLL);
    if (v11)
    {
      v11[2] = 1;
      *(v11 + 18) = 531890176;

      return sub_6050C(v11, v12, v13, v14, v15, v16, v17, v18, a9);
    }

    else
    {
      v19 = *__error();

      return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThreadErrorContext", 76, 5, v19, "malloc", v20, v21, a9);
    }
  }

  return result;
}

size_t sub_6050C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = sub_61120();
  result = pthread_setspecific(v10, a1);
  if (result)
  {
    v12 = *__error();

    return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "setThreadErrorContext", 65, 5, v12, "pthread_setspecific", v13, v14, a9);
  }

  return result;
}

uint64_t ParallelCompressionLeaveThreadErrorContext_0(__CFError **a1, const __CFString **a2, int a3)
{
  v6 = sub_61120();
  v7 = pthread_getspecific(v6);
  if (v7)
  {
    v15 = v7;
    v16 = v7[2] - 1;
    v7[2] = v16;
    if (!v16)
    {
      v18 = v7[36];
      v17 = *v7;
      if (!v7[36] && (v17 & 0x80000000) == 0)
      {
        if (!v7[3] || !a2 && !a3)
        {
          goto LABEL_46;
        }

        bzero(userInfoKeys, 0x400uLL);
        v33 = 0;
        do
        {
          v34 = strlen(userInfoKeys);
          if (v34 + 20 > 0x3FF)
          {
            break;
          }

          if (v34)
          {
            snprintf(userInfoKeys + v34, 1024 - v34, ",0x%08x");
          }

          else
          {
            snprintf(userInfoKeys, 0x400uLL, "Warnings:0x%08x");
          }

          ++v33;
        }

        while (v33 < v15[3]);
        v35 = CFStringCreateWithCString(kCFAllocatorDefault, userInfoKeys, 0x600u);
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = v35;
        if (a2)
        {
          *a2 = v35;
          goto LABEL_46;
        }

        Length = CFStringGetLength(v35);
        v44 = calloc(1uLL, Length + 1);
        if (v44)
        {
          v45 = v44;
          CFStringGetCString(v36, v44, Length + 1, 0x600u);
          fprintf(__stderrp, "%s\n", v45);
          free(v45);
        }

        v42 = v36;
LABEL_45:
        CFRelease(v42);
        goto LABEL_46;
      }

      if (!a1 && !a3)
      {
        goto LABEL_46;
      }

      v19 = calloc(v18 + 32, 1uLL);
      if (!v19)
      {
        goto LABEL_46;
      }

      v20 = v19;
      v21 = v19;
      if ((v17 & 0x80000000) != 0)
      {
        snprintf(v19, v18 + 32, "Error 0x%08x\n", v17);
        v21 = &v20[strlen(v20)];
      }

      v22 = v15[36];
      if (v15[36])
      {
        v23 = 0;
        do
        {
          v24 = (v15 + v23 + 76);
          v25 = *v24;
          v26 = v25 + v23;
          if (v25 < 4 || v26 > v22)
          {
            break;
          }

          v28 = v25 - 3;
          memcpy(v21, v24 + 1, v28);
          v29 = &v21[v28];
          *v29 = 10;
          v21 = v29 + 1;
          v23 = v26;
          v22 = v15[36];
        }

        while (v22 > v26);
      }

      if (v21 > v20)
      {
        *(v21 - 1) = 0;
      }

      v30 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x600u);
      if (!v30)
      {
        free(v20);
        goto LABEL_46;
      }

      v31 = v30;
      userInfoKeys[0] = kCFErrorLocalizedDescriptionKey;
      userInfoValues = v30;
      v32 = CFErrorCreateWithUserInfoKeysAndValues(kCFAllocatorDefault, @"com.apple.ParallelCompression", 1, userInfoKeys, &userInfoValues, 1);
      CFRelease(v31);
      free(v20);
      if (v32)
      {
        if (!a1)
        {
          v37 = CFErrorCopyDescription(v32);
          if (v37)
          {
            v38 = v37;
            v39 = CFStringGetLength(v37);
            v40 = calloc(1uLL, v39 + 1);
            if (v40)
            {
              v41 = v40;
              CFStringGetCString(v38, v40, v39 + 1, 0x600u);
              fprintf(__stderrp, "%s\n", v41);
              free(v41);
            }

            CFRelease(v38);
          }

          v42 = v32;
          goto LABEL_45;
        }

        *a1 = v32;
      }

LABEL_46:
      sub_6050C(0, v8, v9, v10, v11, v12, v13, v14, v47);
      free(v15);
      return v17;
    }
  }

  return 0;
}

size_t sub_60914(size_t result)
{
  if (result)
  {
    v1 = result;
    result = strlen(result);
    if (result - 8193 >= 0xFFFFFFFFFFFFE000)
    {
      v2 = result;
      v3 = sub_61120();
      result = pthread_getspecific(v3);
      if (result)
      {
        v4 = result;
        v5 = v2 + 3;
        v6 = *(result + 72);
        if (v6 + (v2 + 3) <= *(result + 74))
        {
          v7 = result + v6;
          *(v7 + 76) = v5;
          v8 = v7 + 78;
          result = memcpy((v7 + 78), v1, v2);
          *(v8 + v2) = 0;
          *(v4 + 72) += v5;
        }
      }
    }
  }

  return result;
}

_WORD *sub_609B8(_WORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_61120();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        *result = v1;
        result[3] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_60A00(_DWORD *result)
{
  if ((result & 0x80000000) != 0)
  {
    v1 = result;
    v2 = sub_61120();
    result = pthread_getspecific(v2);
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        v3 = *(result + 3);
        if (v3 <= 0xF)
        {
          result[v3 + 2] = v1;
          *(result + 3) = v3 + 1;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_60A5C(void *a1)
{
  v2 = sub_61120();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = result;
    bzero(a1, 0x2000uLL);
    v5 = v4[36];
    if (v5 <= 0x1FB4)
    {
      v6 = v5 + 76;
    }

    else
    {
      v6 = 0;
    }

    return memcpy(a1, v4, v6);
  }

  return result;
}

unsigned __int16 *sub_60AD0(__int128 *a1)
{
  v2 = sub_61120();
  result = pthread_getspecific(v2);
  if (result)
  {
    v4 = a1[1];
    v12 = *a1;
    v13 = v4;
    v5 = a1[3];
    v14 = a1[2];
    *v15 = v5;
    *&v15[12] = *(a1 + 60);
    if ((v12 & 0x80000000) == 0)
    {
      v6 = WORD3(v12);
      if ((*result & 0x80000000) != 0 && WORD3(v12) <= 0xFu)
      {
        v6 = WORD3(v12) + 1;
        *(&v12 + WORD3(v12) + 2) = *result;
      }

      v7 = result[3];
      if (result[3] && v6 <= 0xF)
      {
        v8 = 0;
        do
        {
          v9 = *&result[2 * v8 + 4];
          if (v8 >= v6 || *(&v12 + v8 + 2) != v9)
          {
            *(&v12 + v6++ + 2) = v9;
          }

          ++v8;
        }

        while (v8 < v7 && v6 < 0x10);
      }

      WORD3(v12) = v6;
    }

    v10 = *v15;
    *(result + 2) = v14;
    *(result + 3) = v10;
    *(result + 30) = *&v15[12];
    v11 = v13;
    *result = v12;
    *(result + 1) = v11;
    if (*&v15[24] <= 0x1FB4uLL)
    {
      return memcpy(result + 38, a1 + 76, *&v15[24]);
    }
  }

  return result;
}

uint64_t sub_60BD4(pthread_t *a1, uint64_t a2, uint64_t a3, size_t a4)
{
  *__relative_priority = 0;
  v8 = calloc(1uLL, 0x2000uLL);
  if (!v8)
  {
    v19 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 552, 5, *v19, "malloc", v20, v21, v36[0]);
    return -*__error();
  }

  v9 = v8;
  v10 = calloc(1uLL, 0x40uLL);
  if (!v10)
  {
    v22 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 555, 5, *v22, "malloc", v23, v24, v36[0]);
    v25 = __error();
    v13 = -*v25;
    if (!*v25)
    {
      return v13;
    }

    goto LABEL_10;
  }

  v11 = v10;
  v12 = pthread_attr_init(v10);
  if (v12)
  {
    v13 = v12;
    v14 = *__error();
    v17 = "pthread_attr_init";
    v18 = 558;
LABEL_5:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", v18, 5, v14, v17, v15, v16, v36[0]);
    goto LABEL_6;
  }

  if (a4)
  {
    v28 = pthread_attr_setstacksize(v11, a4);
    if (v28)
    {
      v13 = v28;
      v14 = *__error();
      v17 = "pthread_attr_setstacksize";
      v18 = 564;
      goto LABEL_5;
    }
  }

  v29 = pthread_self();
  qos_class_np = pthread_get_qos_class_np(v29, &__relative_priority[1], __relative_priority);
  if (qos_class_np)
  {
    v13 = qos_class_np;
    v14 = *__error();
    v17 = "pthread_get_qos_class_np";
    v18 = 570;
    goto LABEL_5;
  }

  v31 = pthread_attr_set_qos_class_np(v11, __relative_priority[1], __relative_priority[0]);
  if (v31)
  {
    v13 = v31;
    v14 = *__error();
    v17 = "pthread_attr_set_qos_class_np";
    v18 = 572;
    goto LABEL_5;
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 0x40000000;
  v36[2] = sub_60EE4;
  v36[3] = &unk_1A9EA0;
  v36[4] = v9;
  v32 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v36);
  v9[2] = v32;
  if (v32)
  {
    *v9 = a2;
    v9[1] = a3;
    *(v9 + 7) = 1;
    *(v9 + 24) = 530317312;
    v13 = pthread_create(a1, v11, sub_60EF0, v9);
    if (v13)
    {
      v14 = *__error();
      v17 = "pthread_create";
      v18 = 591;
      goto LABEL_5;
    }
  }

  else
  {
    v33 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createThread", 578, 5, *v33, "dispatch_block_create", v34, v35, v36[0]);
    v13 = -*__error();
  }

LABEL_6:
  pthread_attr_destroy(v11);
  free(v11);
  if (!v13)
  {
    return v13;
  }

LABEL_10:
  v26 = v9[2];
  if (v26)
  {
    _Block_release(v26);
  }

  free(v9);
  return v13;
}

uint64_t sub_60EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_6050C((a1 + 24), a2, a3, a4, a5, a6, a7, a8, v17);
  (*(*(a1 + 16) + 16))();
  sub_6050C(0, v9, v10, v11, v12, v13, v14, v15, v18);
  return a1;
}

uint64_t sub_60F34(_opaque_pthread_t *a1)
{
  v23 = 0;
  if (pthread_join(a1, &v23))
  {
    sub_611F0();
  }

  v3 = v23;
  if (*(v23 + 14) != 1)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 627, 5, 0, "expected ref_count=1 for terminating thread", v1, v2, v22);
    v13 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  v4 = sub_61120();
  v5 = pthread_getspecific(v4);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = *v5;
  if ((*v5 & 0x80000000) == 0)
  {
    v8 = v3[6];
    if (v8 < 0)
    {
      *v5 = v8;
      v7 = v8;
    }
  }

  v9 = *(v3 + 48);
  if (!*(v3 + 48))
  {
LABEL_14:
    if (v7)
    {
      v13 = 0;
      *(v6 + 3) = 0;
      goto LABEL_26;
    }

    if (*(v3 + 15))
    {
      v15 = 0;
      v16 = *(v6 + 3);
      LODWORD(v17) = 16 - v16;
      if (v16 <= 0x10)
      {
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      v18 = &v6[v16 + 2];
      v19 = v16 + 1;
      while (v17 != v15)
      {
        v13 = 0;
        *(v18 + 4 * v15) = v3[v15 + 8];
        *(v6 + 3) = v19 + v15++;
        if (v15 >= *(v3 + 15))
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = (v3 + v11 + 100);
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v10 += v13;
    if (v10 > v9)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 36);
    if (v14 + v13 <= *(v6 + 37))
    {
      memcpy(v6 + v14 + 76, v12, *v12);
      *(v6 + 36) += v13;
      v11 = v10;
      v9 = *(v3 + 48);
      if (v9 > v10)
      {
        continue;
      }
    }

    v7 = *v6;
    goto LABEL_14;
  }

LABEL_26:
  v20 = *(v3 + 2);
  if (v20)
  {
    _Block_release(v20);
  }

  free(v3);
  return v13;
}

size_t ParallelCompressionUpdateError(_WORD *a1, size_t a2)
{
  sub_609B8(a1);

  return sub_60914(a2);
}

uint64_t sub_61120()
{
  if (pthread_once(&stru_1C6408, sub_61188))
  {
    v0 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "getErrorContextKey", 53, 5, *v0, "pthread_once");
  }

  return qword_1C6C88;
}

uint64_t sub_61188()
{
  result = pthread_key_create(&qword_1C6C88, 0);
  if (result)
  {
    v1 = *__error();

    return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "createErrorContextKey", 42, 5, v1, "pthread_key_create");
  }

  return result;
}

void sub_611F0()
{
  v0 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Threads.c", "joinThread", 623, 5, *v0, "pthread_join", v1, v2, vars0);
  __break(1u);
}

size_t sub_6122C(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_61254(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t sub_6127C(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t sub_612C4(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelArchiveRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ParallelCompressionEnterThreadErrorContext_0(a1, a2, a3, a4, a5, a6, a7, a8, v51);
  bzero(v56, 0x928uLL);
  v57 = 0x20000;
  v9 = malloc(0x20000uLL);
  v10 = *(a1 + 80);
  v58 = v9;
  v64 = v10;
  v11 = *(a1 + 48);
  v61 = *(a1 + 32);
  v62 = v11;
  v63 = *(a1 + 64);
  v12 = sub_66964(*(a1 + 8), *(a1 + 16), *(a1 + 24), 12);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_59;
  }

  v14 = sub_66A4C(v12);
  v15 = sub_66A54(v13);
  if (v9)
  {
    if (v15 < 0xC)
    {
      if (v15 < 6)
      {
        if (v15 < 4)
        {
          if (!v15)
          {
LABEL_54:
            v39 = 1;
            goto LABEL_55;
          }

          goto LABEL_43;
        }

LABEL_32:
        if (*v14 == 826360153 || *v14 == 825246017)
        {
LABEL_34:
          if (*a1 >= 2)
          {
            fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, __stderrp);
          }

          v34 = sub_75AC4(0x100000uLL);
          if (!v34)
          {
            goto LABEL_59;
          }

          v37 = v34;
          v38 = sub_76264(v34, 0xFFFFFFFFFFFFFFFFLL, sub_66A5C, v13, sub_6185C, v56, v35, v36);
          sub_75BD4(v37);
          if ((v38 & 0x8000000000000000) == 0)
          {
            if (*a1 >= 1)
            {
              fprintf(__stderrp, "%12lld raw archive\n");
            }

            goto LABEL_54;
          }

          v27 = "MemBufferTransmit";
          v28 = 550;
          goto LABEL_41;
        }

LABEL_43:
        v40 = sub_72838(sub_66A5C, sub_66B40, v13, 0x100000uLL);
        if (!v40)
        {
          v30 = "Could not identify payload format";
          v31 = 580;
LABEL_57:
          v29 = 0;
          goto LABEL_58;
        }

        v41 = v40;
        if (*a1 >= 2)
        {
          fwrite("Compressed archive payload (gzip, bzip2, xz)\n", 0x2DuLL, 1uLL, __stderrp);
        }

        v42 = sub_75AC4(0x100000uLL);
        if (!v42)
        {
          goto LABEL_59;
        }

        v45 = v42;
        v46 = sub_76264(v42, 0xFFFFFFFFFFFFFFFFLL, sub_72EE8, v41, sub_6185C, v56, v43, v44);
        sub_75BD4(v45);
        if (v46 < 0)
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", 570, 7, 0, "MemBufferTransmit", v47, v48, v52);
          v39 = 0;
        }

        else
        {
          if (*a1 >= 1)
          {
            fprintf(__stderrp, "%12lld raw archive size\n", v46);
          }

          v39 = 1;
        }

        sub_72DBC(v41);
LABEL_55:
        if (!v65)
        {
          goto LABEL_60;
        }

        v52 = v65;
        v30 = "Errors in archive: %u";
        v31 = 585;
        goto LABEL_57;
      }
    }

    else if (*v14 == 25200 && *(v14 + 2) == 122)
    {
      if (*a1 >= 1)
      {
        v22 = 0;
        v23 = *(v14 + 4);
        while (sub_758D4(v22) != *(v14 + 3))
        {
          if (++v22 == 7)
          {
            v22 = -1;
            break;
          }
        }

        v24 = __stderrp;
        v25 = sub_7590C(v22);
        fprintf(v24, "Input archive compression: %s %llum\n", v25, bswap64(v23) >> 20);
      }

      v55[1] = 0;
      v55[4] = 0;
      memset(v54, 0, sizeof(v54));
      v53[0] = 0;
      v53[1] = 0;
      v55[0] = sub_66A5C;
      v55[2] = v13;
      v55[3] = sub_6185C;
      v55[5] = v56;
      DWORD1(v54[0]) = 1;
      v26 = *(a1 + 4);
      if (!v26)
      {
        v26 = sub_62BA4();
      }

      DWORD2(v54[0]) = v26;
      if (!PCompressFilter(v54, v55, v53, v16, v17, v18, v19, v20))
      {
        if (*a1 >= 1)
        {
          fprintf(__stderrp, "%12llu compressed archive size\n%12llu raw archive size\n%12.3f compression ratio\n");
        }

        goto LABEL_54;
      }

      v27 = "PCompressFilter";
      v28 = 530;
LABEL_41:
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v28, 7, 0, v27, v19, v20, v52);
      v39 = 0;
      goto LABEL_55;
    }

    if (*v14 == 925906736 && *(v14 + 4) == 12592)
    {
      goto LABEL_34;
    }

    if (*v14 == 925906736 && *(v14 + 4) == 14128)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v29 = *__error();
  v30 = "malloc";
  v31 = 500;
LABEL_58:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveRead", v31, 7, v29, v30, v19, v20, v52);
LABEL_59:
  v39 = 0;
LABEL_60:
  j__free(v13);
  free(v58);
  free(v59);
  free(v60);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (v39)
  {
    v50 = 0;
  }

  else
  {
    v50 = -1;
  }

  if (result >= 0)
  {
    return v50;
  }

  else
  {
    return result;
  }
}

size_t sub_6185C(uint64_t a1, char *__src, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (a1 + 2256);
  v11 = (a1 + 2232);
  v12 = a3;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v148 = v12;
      while (1)
      {
        v13 = *a1;
        if (*a1 <= 0)
        {
          break;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            if (v13 != 3)
            {
LABEL_205:
              v141 = "readProcessData";
              v142 = "invalid state";
              v143 = 436;
              goto LABEL_224;
            }

            v139 = *(a1 + 2320);
            if (v139)
            {
              v139(*(a1 + 2328), __src, v148);
            }

            return a3;
          }

          v127 = *(a1 + 2272) + 16 * *(a1 + 2264);
          v128 = *(v127 + 8);
          if (v148 >= v128)
          {
            v129 = *(v127 + 8);
          }

          else
          {
            v129 = v148;
          }

          if (*v127)
          {
            v130 = *(a1 + 2296);
            if (v130)
            {
              goto LABEL_172;
            }
          }

          else
          {
            v130 = *(a1 + 2304);
            if (v130)
            {
LABEL_172:
              v130(*(a1 + 2328), __src, v129);
              v128 = *(v127 + 8);
            }
          }

          v148 -= v129;
          __src += v129;
          v131 = v128 - v129;
          *(v127 + 8) = v131;
          if (!v131)
          {
            ++*(a1 + 2264);
            *a1 = 1;
            v12 = v148;
            goto LABEL_2;
          }

          v27 = 0;
          goto LABEL_186;
        }

        v14 = *(a1 + 2264);
        if (v14 == *(a1 + 2256))
        {
          v132 = *(a1 + 2312);
          if (v132)
          {
            v132(*(a1 + 2328));
          }

          v27 = 0;
          *a1 = 0;
          goto LABEL_186;
        }

        v15 = *(a1 + 2272) + 16 * v14;
        if (*v15)
        {
          v16 = *(a1 + 2288);
          if (v16)
          {
            v16(*(a1 + 2328), v15, *(v15 + 8));
          }
        }

        v17 = 2;
LABEL_165:
        *a1 = v17;
      }

      if (v13)
      {
        goto LABEL_205;
      }

      *(a1 + 2232) = 0;
      *v10 = 0;
      v10[1] = 0;
      v18 = *(a1 + 16);
      if (v18 <= 7)
      {
        v133 = 8;
        goto LABEL_185;
      }

      v19 = 0;
      v20 = 0;
      v21 = *(a1 + 24);
      do
      {
        v22 = v20;
        v20 = *(v21 + v19++) & 7 | (8 * v20);
      }

      while (v19 != 8);
      if (*v21 == 16)
      {
        if (v18 > 0x1D)
        {
          v23 = bswap32(*(v21 + 22)) >> 16;
          if (v23 >= 0x400)
          {
            v141 = "readProcessData";
            v142 = "invalid nameSize";
            v143 = 165;
            goto LABEL_224;
          }

          v24 = (v23 + 30);
          if (*(v21 + 1) - 3 <= 1)
          {
            v25 = bswap64(*(v21 + 2));
            if (v25 >= 0x400)
            {
              v141 = "readProcessData";
              v142 = "invalid linkSize";
              v143 = 169;
              goto LABEL_224;
            }

            v24 += v25;
          }

          v26 = v24 > v18;
          v27 = v24 - v18;
          if (v26)
          {
            goto LABEL_186;
          }

          sub_743F4((a1 + 32), v21);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v28 = *(a1 + 96);
          v29 = *(a1 + 2256);
          v30 = *(a1 + 2248);
          if (v29 >= v30)
          {
            *(a1 + 2248) = v30 + 16;
            v31 = reallocf(*(a1 + 2272), 16 * (v30 + 16));
            *(a1 + 2272) = v31;
            if (!v31)
            {
              goto LABEL_206;
            }

            v29 = *v10;
          }

          else
          {
            v31 = *(a1 + 2272);
          }

          v91 = &v31[16 * v29];
          *v91 = 0;
          *(v91 + 1) = 0;
          __strlcpy_chk();
          *(v91 + 1) = v28;
          goto LABEL_134;
        }

        v133 = 30;
LABEL_185:
        v27 = v133 - v18;
        goto LABEL_186;
      }

      v32 = ((8 * v22) >> 6) & 0x3FFFF;
      if (v32 != 29121)
      {
        if (v32 == 29127)
        {
          if (v18 <= 0x4B)
          {
            v133 = 76;
            goto LABEL_185;
          }

          v33 = 0;
          v34 = 0;
          do
          {
            v35 = *(v21 + 57 + v33++) & 7 | (8 * v34);
            v34 = v35;
          }

          while (v33 != 8);
          v36 = 0;
          v37 = 0;
          do
          {
            v38 = *(v21 + 64 + v36++) & 7 | (8 * v37);
            v37 = v38;
          }

          while (v36 != 4);
          v39 = __src;
          v40 = 0;
          v41 = 0;
          do
          {
            v42 = *(v21 + 68 + v40++) & 7 | (8 * v41);
            v41 = v42;
          }

          while (v40 != 8);
          v43 = 0;
          v44 = 0;
          v45 = v38 << 24;
          do
          {
            v46 = *(v21 + 16 + v43++) & 7 | (8 * v44);
            v44 = v46;
          }

          while (v43 != 8);
          v47 = v35 & 0x3FFFF;
          v48 = sub_73E1C(v46);
          if (v47 >= 0x400)
          {
            v141 = "readProcessData";
            v142 = "invalid nameSize";
            v143 = 191;
            goto LABEL_224;
          }

          v49 = v42 + (v45 & 0x1FF000000);
          v50 = v47 + 76;
          __src = v39;
          if ((v48 - 3) <= 1)
          {
            if (v49 >= 0x400)
            {
              v141 = "readProcessData";
              v142 = "invalid linkSize";
              v143 = 195;
              goto LABEL_224;
            }

            v50 += v49;
          }

          v51 = *(a1 + 16);
          v27 = v50 - v51;
          if (v50 > v51)
          {
            goto LABEL_186;
          }

          v52 = *(a1 + 24);
          if (v48)
          {
            v53 = 0;
          }

          else
          {
            v53 = v49 == 0;
          }

          if (v53 && v47 == 11 && *(v52 + 76) == 0x2152454C49415254 && *(v52 + 79) == 0x21212152454C49)
          {
            v137 = *(a1 + 2320);
            if (v137)
            {
              v138 = *(a1 + 2328);
LABEL_199:
              v137(v138);
            }

            goto LABEL_200;
          }

          sub_745B0((a1 + 32), v52);
          if ((*(a1 + 33) & 2) == 0)
          {
            goto LABEL_158;
          }

          v56 = *(a1 + 96);
          v57 = *(a1 + 2256);
          v58 = *(a1 + 2248);
          if (v57 >= v58)
          {
            *(a1 + 2248) = v58 + 16;
            v59 = reallocf(*(a1 + 2272), 16 * (v58 + 16));
            *(a1 + 2272) = v59;
            if (!v59)
            {
              goto LABEL_206;
            }

            v57 = *v10;
          }

          else
          {
            v59 = *(a1 + 2272);
          }

          v95 = &v59[16 * v57];
          *v95 = 0;
          *(v95 + 1) = 0;
LABEL_133:
          __strlcpy_chk();
          *(v95 + 1) = v56;
LABEL_134:
          ++*v10;
LABEL_158:
          v124 = *(a1 + 32);
          if ((v124 & 1) == 0)
          {
            v141 = "readProcessData";
            v142 = "Invalid entry, no TYP field";
            v143 = 309;
            goto LABEL_224;
          }

          if ((v124 & 0x8000) != 0 && *(a1 + 36) != 77)
          {
            v125 = strlen((a1 + 176));
            if (!sub_63334((a1 + 176), v125))
            {
              v141 = "readProcessData";
              v142 = "Invalid entry path";
              v143 = 315;
              goto LABEL_224;
            }
          }

          v126 = *(a1 + 2280);
          if (v126)
          {
            v126(*(a1 + 2328), a1 + 32, *(a1 + 2240), *(a1 + 2232), *(a1 + 24), *(a1 + 16));
          }

          *(a1 + 16) = 0;
          v17 = 1;
          goto LABEL_165;
        }

        if (*v21 != 826360153 && *v21 != 825246017)
        {
          v145 = 0;
          ++*(a1 + 2336);
          do
          {
            if (*(*(a1 + 24) + v145) > 31)
            {
              fputc(*(*(a1 + 24) + v145), __stderrp);
            }

            else
            {
              fprintf(__stderrp, "<%02x>", *(*(a1 + 24) + v145));
            }

            ++v145;
          }

          while (v145 < *(a1 + 16));
          fputc(10, __stderrp);
          v141 = "readProcessData";
          v142 = "Invalid header";
          v143 = 305;
          goto LABEL_224;
        }

        v83 = *(v21 + 4);
        v27 = v83 - v18;
        if (v83 > v18)
        {
          goto LABEL_186;
        }

        v149 = 0;
        v150 = 0;
        if ((sub_5E8FC(v21, v18, &v150, &v149, a5, a6, a7, a8) & 0x8000000000000000) != 0)
        {
          v141 = "readProcessData";
          v142 = "invalid YAA header";
          v143 = 268;
          goto LABEL_224;
        }

        v84 = *(a1 + 2224);
        v85 = v150;
        v86 = *(a1 + 2240);
        if (v84 < v150)
        {
          *(a1 + 2224) = v150;
          v87 = reallocf(v86, 1032 * v85);
          *(a1 + 2240) = v87;
          if (!v87)
          {
            v144 = *__error();
            v141 = "readProcessData";
            v142 = "malloc";
            v143 = 275;
            goto LABEL_225;
          }

          v86 = v87;
          v84 = *(a1 + 2224);
        }

        if (sub_5E04C((a1 + 32), *(a1 + 24), *(a1 + 16), v86, v84, v11) != v83)
        {
          v141 = "readProcessData";
          v142 = "invalid YAA header";
          v143 = 280;
          goto LABEL_224;
        }

        *v10 = 0;
        v10[1] = 0;
        v88 = *(a1 + 32);
        if ((v88 & 0x200) != 0)
        {
          v92 = *(a1 + 96);
          if (*(a1 + 2248))
          {
            v93 = 0;
            v94 = *(a1 + 2272);
          }

          else
          {
            *(a1 + 2248) = 16;
            v94 = reallocf(*(a1 + 2272), 0x100uLL);
            *(a1 + 2272) = v94;
            if (!v94)
            {
              goto LABEL_206;
            }

            v93 = *v10;
          }

          v107 = &v94[16 * v93];
          *v107 = 0;
          *(v107 + 1) = 0;
          __strlcpy_chk();
          *(v107 + 1) = v92;
          v89 = *v10 + 1;
          *v10 = v89;
          v88 = *(a1 + 32);
          if ((v88 & 0x400) == 0)
          {
LABEL_108:
            if ((v88 & 0x800) == 0)
            {
LABEL_109:
              v90 = __src;
LABEL_148:
              v116 = *v11;
              if (*v11)
              {
                v117 = 0;
                v118 = 0;
                do
                {
                  v119 = *(a1 + 2240) + v117;
                  if (*(v119 + 4) == 2)
                  {
                    v120 = *(v119 + 8);
                    v121 = *(a1 + 2248);
                    if (v89 >= v121)
                    {
                      *(a1 + 2248) = v121 + 16;
                      v122 = reallocf(*(a1 + 2272), 16 * (v121 + 16));
                      *(a1 + 2272) = v122;
                      if (!v122)
                      {
                        goto LABEL_206;
                      }

                      v89 = *v10;
                    }

                    else
                    {
                      v122 = *(a1 + 2272);
                    }

                    v123 = &v122[16 * v89];
                    *v123 = 0;
                    *(v123 + 1) = 0;
                    __strlcpy_chk();
                    *(v123 + 1) = v120;
                    v89 = *v10 + 1;
                    *v10 = v89;
                    v116 = *v11;
                  }

                  ++v118;
                  v117 += 1032;
                }

                while (v118 < v116);
              }

              __src = v90;
              goto LABEL_158;
            }

LABEL_143:
            v112 = *(a1 + 112);
            v113 = *(a1 + 2248);
            if (v89 >= v113)
            {
              *(a1 + 2248) = v113 + 16;
              v114 = reallocf(*(a1 + 2272), 16 * (v113 + 16));
              *(a1 + 2272) = v114;
              if (!v114)
              {
LABEL_206:
                v144 = *__error();
                v141 = "addBlob";
                v142 = "malloc";
                v143 = 111;
                goto LABEL_225;
              }

              v89 = *v10;
            }

            else
            {
              v114 = *(a1 + 2272);
            }

            v90 = __src;
            v115 = &v114[16 * v89];
            *v115 = 0;
            *(v115 + 1) = 0;
            __strlcpy_chk();
            *(v115 + 1) = v112;
            v89 = *v10 + 1;
            *v10 = v89;
            goto LABEL_148;
          }
        }

        else
        {
          v89 = 0;
          if ((v88 & 0x400) == 0)
          {
            goto LABEL_108;
          }
        }

        v108 = *(a1 + 104);
        v109 = *(a1 + 2248);
        if (v89 >= v109)
        {
          *(a1 + 2248) = v109 + 16;
          v110 = reallocf(*(a1 + 2272), 16 * (v109 + 16));
          *(a1 + 2272) = v110;
          if (!v110)
          {
            goto LABEL_206;
          }

          v89 = *v10;
        }

        else
        {
          v110 = *(a1 + 2272);
        }

        v111 = &v110[16 * v89];
        *v111 = 0;
        *(v111 + 1) = 0;
        __strlcpy_chk();
        *(v111 + 1) = v108;
        v89 = *v10 + 1;
        *v10 = v89;
        if ((*(a1 + 32) & 0x800) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_143;
      }

      if (v18 <= 0x6D)
      {
        v133 = 110;
        goto LABEL_185;
      }

      v60 = 0;
      v61 = 0;
      do
      {
        v62 = *(v21 + 94 + v60);
        v61 *= 16;
        v63 = v62 - 48;
        if ((v62 - 48) <= 0x36)
        {
          if (((1 << v63) & 0x3FF) != 0)
          {
            v61 = v61 + v62 - 48;
          }

          else if (((1 << v63) & 0x7E0000) != 0)
          {
            v61 = v61 + v62 - 55;
          }

          else if (((1 << v63) & 0x7E000000000000) != 0)
          {
            v61 = v61 + v62 - 87;
          }
        }

        ++v60;
      }

      while (v60 != 8);
      v64 = __src;
      v65 = 0;
      v66 = 0;
      do
      {
        v67 = *(v21 + 54 + v65);
        v66 *= 16;
        v68 = v67 - 48;
        if ((v67 - 48) <= 0x36)
        {
          if (((1 << v68) & 0x3FF) != 0)
          {
            v66 = v66 + v67 - 48;
          }

          else if (((1 << v68) & 0x7E0000) != 0)
          {
            v66 = v66 + v67 - 55;
          }

          else if (((1 << v68) & 0x7E000000000000) != 0)
          {
            v66 = v66 + v67 - 87;
          }
        }

        ++v65;
      }

      while (v65 != 8);
      v69 = 0;
      v70 = 0;
      do
      {
        v71 = *(v21 + 14 + v69);
        v70 *= 16;
        v72 = v71 - 48;
        if ((v71 - 48) <= 0x36)
        {
          if (((1 << v72) & 0x3FF) != 0)
          {
            v70 = v70 + v71 - 48;
          }

          else if (((1 << v72) & 0x7E0000) != 0)
          {
            v70 = v70 + v71 - 55;
          }

          else if (((1 << v72) & 0x7E000000000000) != 0)
          {
            v70 = v70 + v71 - 87;
          }
        }

        ++v69;
      }

      while (v69 != 8);
      v73 = sub_73E1C(v70);
      if (v61 >= 0x400)
      {
        v141 = "readProcessData";
        v142 = "invalid nameSize";
        v143 = 225;
        goto LABEL_224;
      }

      v74 = v61 + 110;
      v12 = v148;
      if ((v73 - 3) <= 1)
      {
        if (v66 >= 0x400)
        {
          v141 = "readProcessData";
          v142 = "invalid linkSize";
          v143 = 229;
          goto LABEL_224;
        }

        v74 += v66;
      }

      v75 = *(a1 + 16);
      v27 = v74 - v75;
      if (v74 > v75)
      {
        __src = v64;
        if (v148)
        {
          goto LABEL_187;
        }

        return a3;
      }

      v76 = *(a1 + 24);
      if (v73 || v66 || v61 != 11 || (*(v76 + 110) == 0x2152454C49415254 ? (v77 = *(v76 + 113) == 0x21212152454C49) : (v77 = 0), !v77))
      {
        sub_74880((a1 + 32), v76);
        v78 = (v74 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v79 = v78 - v74;
        __src = v64;
        if (v78 != v74)
        {
          v80 = *(a1 + 2256);
          v81 = *(a1 + 2248);
          if (v80 >= v81)
          {
            *(a1 + 2248) = v81 + 16;
            v82 = reallocf(*(a1 + 2272), 16 * (v81 + 16));
            *(a1 + 2272) = v82;
            if (!v82)
            {
              goto LABEL_206;
            }

            v80 = *v10;
          }

          else
          {
            v82 = *(a1 + 2272);
          }

          v96 = &v82[16 * v80];
          *v96 = 0;
          *(v96 + 1) = 0;
          __strlcpy_chk();
          *(v96 + 1) = v79;
          ++*v10;
        }

        if ((*(a1 + 33) & 2) != 0)
        {
          v97 = *(a1 + 96);
          v98 = *(a1 + 2256);
          v99 = *(a1 + 2248);
          if (v98 >= v99)
          {
            *(a1 + 2248) = v99 + 16;
            v100 = reallocf(*(a1 + 2272), 16 * (v99 + 16));
            *(a1 + 2272) = v100;
            if (!v100)
            {
              goto LABEL_206;
            }

            v98 = *v10;
          }

          else
          {
            v100 = *(a1 + 2272);
          }

          v101 = &v100[16 * v98];
          *v101 = 0;
          *(v101 + 1) = 0;
          __strlcpy_chk();
          *(v101 + 1) = v97;
          ++*v10;
        }

        v102 = *(a1 + 96);
        v103 = (v102 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v56 = v103 - v102;
        if (v103 == v102)
        {
          goto LABEL_158;
        }

        v104 = *(a1 + 2256);
        v105 = *(a1 + 2248);
        if (v104 >= v105)
        {
          *(a1 + 2248) = v105 + 16;
          v106 = reallocf(*(a1 + 2272), 16 * (v105 + 16));
          *(a1 + 2272) = v106;
          if (!v106)
          {
            goto LABEL_206;
          }

          v104 = *v10;
        }

        else
        {
          v106 = *(a1 + 2272);
        }

        v95 = &v106[16 * v104];
        *v95 = 0;
        *(v95 + 1) = 0;
        goto LABEL_133;
      }

      v137 = *(a1 + 2320);
      __src = v64;
      if (v137)
      {
        v138 = *(a1 + 2328);
        goto LABEL_199;
      }

LABEL_200:
      v27 = 0;
      *(a1 + 16) = 0;
      *a1 = 3;
LABEL_186:
      v12 = v148;
      if (!v148)
      {
        return a3;
      }

LABEL_187:
      if (!v27)
      {
        continue;
      }

      break;
    }

    if (v27 >= v12)
    {
      v134 = v12;
    }

    else
    {
      v134 = v27;
    }

    v135 = v12;
    v136 = *(a1 + 16);
    if (v136 + v134 <= *(a1 + 8))
    {
      memcpy((*(a1 + 24) + v136), __src, v134);
      *(a1 + 16) += v134;
      __src += v134;
      v12 = v135 - v134;
      continue;
    }

    break;
  }

  v141 = "readProcessData";
  v142 = "internal header buffer is too small";
  v143 = 452;
LABEL_224:
  v144 = 0;
LABEL_225:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", v141, v143, 7, v144, v142, a7, a8, v146);
  return -1;
}

uint64_t ParallelArchiveReadMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  ParallelCompressionEnterThreadErrorContext_0(a1, a2, a3, a4, a5, a6, a7, a8, v53);
  v9 = sub_75AC4(0x10000uLL);
  if (v9)
  {
    v10 = sub_66964(*(a1 + 8), *(a1 + 16), *(a1 + 24), 8);
    v11 = v10;
    if (!v10)
    {
LABEL_47:
      v17 = 0;
      goto LABEL_51;
    }

    v12 = sub_66A4C(v10);
    v13 = sub_66A54(v11);
    if (!v13)
    {
      v17 = 0;
      goto LABEL_19;
    }

    if (v13 < 6)
    {
      if (v13 < 4)
      {
LABEL_23:
        v19 = sub_72838(sub_66A5C, sub_66B40, v11, 0x10000uLL);
        if (v19)
        {
          v22 = v19;
          v23 = sub_72EE8;
          v17 = v19;
          goto LABEL_29;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", 642, 7, 0, "Could not identify payload format", v20, v21, v53);
        goto LABEL_47;
      }
    }

    else
    {
      if (*v12 == 925906736 && *(v12 + 4) == 12592)
      {
        goto LABEL_25;
      }

      if (*v12 == 925906736 && *(v12 + 4) == 14128)
      {
        goto LABEL_25;
      }
    }

    if (*v12 != 826360153 && *v12 != 825246017)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (*a1 < 2)
    {
      v23 = sub_66A5C;
      v17 = 0;
    }

    else
    {
      fwrite("Raw cpio/yaa archive payload\n", 0x1DuLL, 1uLL, __stderrp);
      v17 = 0;
      v23 = sub_66A5C;
    }

    v22 = v11;
LABEL_29:
    if (sub_75FD4(v9, 0x10000uLL, v23, v22) < 0)
    {
      v51 = "Reading entry";
      v52 = 649;
    }

    else
    {
      v26 = sub_75C80(v9);
      v27 = sub_75C6C(v9);
      v53 = 0;
      v54 = 0;
      v32 = sub_5E8FC(v26, v27, &v54, &v53, v28, v29, v30, v31);
      if ((v32 & 0x8000000000000000) != 0)
      {
        v51 = "Parsing YAA header";
        v52 = 660;
      }

      else
      {
        v33 = v32;
        v34 = v53;
        *(a1 + 2240) = v54;
        *(a1 + 2264) = v34;
        if ((sub_5E04C((a1 + 32), v26, v32, *(a1 + 2224), *(a1 + 2232), (a1 + 2240)) & 0x8000000000000000) == 0)
        {
          sub_75CDC(v9, v33, v35, v36, v37, v38, v24, v25);
          if (v53 >= *(a1 + 2256))
          {
            v39 = *(a1 + 2256);
          }

          else
          {
            v39 = v53;
          }

          if (v39)
          {
            v40 = *(a1 + 2248);
            while (1)
            {
              v41 = sub_75C6C(v9);
              if (v39 > v41 && sub_75FD4(v9, v39 - v41, v23, v22) < 0)
              {
                break;
              }

              v42 = sub_75C6C(v9);
              if (v42 >= v39)
              {
                v43 = v39;
              }

              else
              {
                v43 = v42;
              }

              v44 = sub_75C80(v9);
              memcpy(v40, v44, v43);
              sub_75CDC(v9, v43, v45, v46, v47, v48, v49, v50);
              v40 += v43;
              v39 -= v43;
              if (!v39)
              {
                goto LABEL_19;
              }
            }

            v51 = "Reading entry";
            v52 = 678;
            goto LABEL_50;
          }

LABEL_19:
          v18 = 0;
          goto LABEL_52;
        }

        v51 = "Decoding YAA header";
        v52 = 665;
      }
    }

LABEL_50:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelArchive/Read.c", "ParallelArchiveReadMetadata", v52, 7, 0, v51, v24, v25, v53);
    goto LABEL_51;
  }

  v17 = 0;
  v11 = 0;
LABEL_51:
  v18 = -1;
LABEL_52:
  sub_72DBC(v17);
  j__free(v11);
  sub_75BD4(v9);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v18;
  }

  else
  {
    return result;
  }
}

void *sub_629F8(void *a1, size_t __size)
{
  if (__size >= 0x1000)
  {
    v4 = malloc(__size);
    if (v4)
    {
      v5 = v4;
      memcpy(v4, a1, __size);
      free(a1);
      return v5;
    }
  }

  return a1;
}

uint64_t sub_62A58()
{
  v0 = sysconf(200);
  v1 = sysconf(29);
  if (v1 <= 0 || v0 <= 0)
  {
    return 0;
  }

  else
  {
    return v1 * v0;
  }
}

uint64_t sub_62A98(const char *a1)
{
  __endptr = 0;
  if ((*a1 - 48) > 9)
  {
    return -1;
  }

  v1 = a1;
  result = strtoll(a1, &__endptr, 10);
  v5 = *__endptr;
  if (v5 > 0x66)
  {
    switch(v5)
    {
      case 'g':
        result <<= 30;
        return result;
      case 'm':
        result <<= 20;
        return result;
      case 'k':
        result <<= 10;
        return result;
    }

    goto LABEL_9;
  }

  if (*__endptr && v5 != 98)
  {
LABEL_9:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "parseSize", 89, 3, 0, "invalid size: %s", v3, v4, v1);
    return -1;
  }

  return result;
}

double sub_62B5C()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t sub_62BA4()
{
  v5 = 0;
  v4 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v0 = __error();
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname", v1, v2, v4);
  return 1;
}

uint64_t sub_62C24(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = a0123456789abcd_1[v4 >> 4];
    *v3 = a0123456789abcd_1[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t sub_62C64(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = a0123456789abcd_1[v4 >> 4];
      *(result + (v3 + 1)) = a0123456789abcd_1[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sub_62CB0(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t sub_62D10(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
}

const char *sub_62D40(const char *result, unint64_t a2)
{
  v3 = result;
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v3[v4] == 47)
      {
        v3[v4] = 0;
        result = stat(v3, &v6);
        if (!result)
        {
          break;
        }
      }

      --v4;
    }

    while (v4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a2)
  {
    v5 = 1;
    do
    {
      if (!v3[v4])
      {
        if (!v5)
        {
          result = mkdir(v3, 0x1EDu);
        }

        v5 = 0;
        v3[v4] = 47;
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return result;
}

const char *sub_62E00(const char *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    memset(&v4, 0, sizeof(v4));
    do
    {
      if (v3[v2] == 47)
      {
        v3[v2] = 0;
        result = stat(v3, &v4);
        v3[v2] = 47;
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_62E80(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = a1 - 1;
  do
  {
LABEL_2:
    for (i = v2; ; i += 2)
    {
      while (1)
      {
        v2 = i + 1;
        v5 = *(a1 + i);
        if (v5 != 47)
        {
          break;
        }

        ++i;
        if (v1)
        {
          i = v2;
          if (*(v3 + v1) != 47)
          {
            LOBYTE(v5) = 47;
LABEL_28:
            *(a1 + v1++) = v5;
            goto LABEL_2;
          }
        }
      }

      if (!*(a1 + i))
      {
        goto LABEL_29;
      }

      if (v1)
      {
        v6 = *(v3 + v1) == 47;
      }

      else
      {
        v6 = 1;
      }

      if (v5 != 46 || !v6)
      {
        goto LABEL_28;
      }

      v8 = *(a1 + v2);
      if (v8 != 47)
      {
        break;
      }
    }

    if (!*(a1 + v2))
    {
      break;
    }

    if (v8 != 46 || *(a1 + 2 + i) != 47 && *(a1 + 2 + i))
    {
      LOBYTE(v5) = 46;
      goto LABEL_28;
    }

    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = (a1 - 2 + v1);
    v10 = v1 - 1;
    do
    {
      v1 = v10;
      if (!v10)
      {
        break;
      }

      v11 = *v9--;
      --v10;
    }

    while (v11 != 47);
    v2 = i + 3;
  }

  while (*(a1 + 2 + i));
LABEL_29:
  while (v1)
  {
    if (*(v3 + v1) != 47)
    {
      break;
    }

    --v1;
  }

  v12 = 0;
  *(a1 + v1) = 0;
  return v12;
}

uint64_t sub_62F94(char *a1, unint64_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (v8 + v9 + 2 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  if (a1 != __s)
  {
    memcpy(a1, __s, v8);
  }

  if (v11)
  {
    if (!v8 || a1[v8 - 1] != 47)
    {
      a1[v8++] = 47;
    }

    memcpy(&a1[v8], a4, v11);
    v8 += v11;
  }

  result = 0;
  a1[v8] = 0;
  return result;
}

uint64_t sub_63058(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s", v10, v11, __s);
    return 0xFFFFFFFFLL;
  }

  v12 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s", v10, v11, __s);
    return 0xFFFFFFFFLL;
  }

  strlcpy(a1, __s, a2);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  memset(&v30, 0, sizeof(v30));
  while (1)
  {
    v14 = &a4[v13];
    v15 = strchr(&a4[v13], 47);
    v18 = v15 - a4;
    if (v15)
    {
      v19 = v15 - a4;
    }

    else
    {
      v19 = v12;
    }

    v20 = v19 - v13;
    if (v19 == v13)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s", v16, v17, a4);
      return 0xFFFFFFFFLL;
    }

    v21 = v15;
    if (v20 != 2)
    {
      if (v20 == 1 && *v14 == 46)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (*v14 == 46 && v14[1] == 46)
    {
      break;
    }

LABEL_15:
    v22 = lstat(a1, &v30);
    if (v13)
    {
      if (v22)
      {
        if (mkdir(a1, 0x1EDu) && (lstat(a1, &v30) || (v30.st_mode & 0xF000) != 0x4000))
        {
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s", v25, v26, a4);
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v30.st_mode & 0xF000) != 0x4000)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s", v23, v24, a4);
        return 0xFFFFFFFFLL;
      }
    }

    else if (v22 || (v27 = v30.st_mode & 0xF000, v27 != 0x4000) && v27 != 40960)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s", v23, v24, __s);
      return 0xFFFFFFFFLL;
    }

    v28 = &a1[v8];
    if (a1[v8 - 1] != 47)
    {
      ++v8;
      *v28 = 47;
    }

    memcpy(&a1[v8], &a4[v13], v20);
    v8 += v20;
    a1[v8] = 0;
LABEL_29:
    if (v21)
    {
      v13 = v18 + 1;
      if (v18 + 1 < v12)
      {
        continue;
      }
    }

    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s", v16, v17, a4);
  return 0xFFFFFFFFLL;
}

BOOL sub_63334(_BYTE *a1, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  if (__n > 0x3FF || memchr(a1, 0, __n) || *a1 == 47)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = &a1[v5];
    v7 = memchr(&a1[v5], 47, __n - v5);
    if (!v7)
    {
      break;
    }

    v8 = v7 - a1;
    v9 = v7 - a1 - v5;
    if (v7 - a1 == v5)
    {
      return 0;
    }

    if (v5 && v9 == 1)
    {
      v10 = *v6;
      goto LABEL_13;
    }

    if (v9 == 2 && *v6 == 46)
    {
      v10 = v6[1];
LABEL_13:
      if (v10 == 46)
      {
        return 0;
      }
    }

    v5 = v8 + 1;
  }

  while (v8 + 1 < __n);
  return v5 != __n;
}

uint64_t sub_63410(const char *a1, uint64_t a2, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    if (*__s != 47)
    {
      return 0;
    }

    for (i = result; a2; --a2)
    {
      if (a1[a2] == 47)
      {
        break;
      }
    }

    if (a1[a2] != 47)
    {
      return 0;
    }

    a1[a2] = 0;
    result = realpath_DARWIN_EXTSN(a1, __sa);
    a1[a2] = 47;
    if (!result)
    {
      return result;
    }

    v8 = strlen(__sa);
    if (v8 >= i && (v9 = v8, !memcmp(__s, __sa, i)))
    {
      return v9 == i || __sa[i] == 47;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_63528(char *a1, size_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = confstr(65537, a1, a2);
  if (!v4)
  {
    if (issetugid())
    {
      v4 = 0;
    }

    else
    {
      v4 = getenv("TMPDIR");
      if (v4)
      {
        v4 = strlcpy(a1, v4, a2);
      }
    }
  }

  if (v4 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (v6)
  {
    do
    {
      v7 = a1[v6 - 1];
      if (v7 != 47)
      {
        break;
      }

      --v6;
    }

    while (v6);
    if (v7 == 47)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  a1[v6] = 0;
  return v5;
}

uint64_t sub_635EC(const char *a1)
{
  v1 = a1;
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    memset(&v16, 0, 512);
    v15 = 0;
    while (1)
    {
      if (readdir_r(v3, &v16, &v15))
      {
        v10 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v10, "readdir_r", v11, v12, v14);
        v4 = 0xFFFFFFFFLL;
        goto LABEL_24;
      }

      if (!v15)
      {
        break;
      }

      if (v16.d_namlen == 1 && v16.d_name[0] == 46)
      {
        v4 = 1;
      }

      else
      {
        v6 = v16.d_namlen == 2 && v16.d_name[0] == 46 && v16.d_name[1] == 46;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
LABEL_24:
    closedir(v3);
  }

  else
  {
    v7 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", v8, v9, v1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_63784(const char *a1, char **a2, off_t *a3, uint64_t a4)
{
  memset(&v31, 0, sizeof(v31));
  if (lstat(a1, &v31))
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", v9, v10, a1);
    v11 = 0;
    goto LABEL_3;
  }

  st_size = v31.st_size;
  if (v31.st_size)
  {
    v11 = malloc(v31.st_size + a4);
    if (v11)
    {
      v14 = open(a1, 0);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v14;
        v16 = st_size;
        v17 = v11;
        while (1)
        {
          if (v16 >= 0x40000000)
          {
            v18 = 0x40000000;
          }

          else
          {
            v18 = v16;
          }

          v19 = read(v15, v17, v18);
          if (v19 < 0)
          {
            v27 = *__error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v27, "%s", v28, v29, a1);
            goto LABEL_23;
          }

          if (v19 != v18)
          {
            break;
          }

          v17 += v18;
          v16 -= v18;
          if (!v16)
          {
            close(v15);
            goto LABEL_17;
          }
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s", v20, v21, a1);
LABEL_23:
        close(v15);
        goto LABEL_3;
      }

      v22 = *__error();
      v30 = a1;
      v25 = "%s";
      v26 = 486;
    }

    else
    {
      v22 = *__error();
      v25 = "malloc";
      v26 = 482;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", v26, 3, v22, v25, v23, v24, v30);
LABEL_3:
    free(v11);
    v11 = 0;
    st_size = 0;
    result = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  v11 = 0;
LABEL_17:
  result = 0;
LABEL_4:
  *a2 = v11;
  *a3 = st_size;
  return result;
}

uint64_t sub_63990(const char *a1, void *a2, size_t a3, off_t a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v15 = *__error();
    v17 = v7;
    v13 = "%s";
    v14 = 521;
    goto LABEL_7;
  }

  v9 = v8;
  v10 = pread(v8, a2, a3, a4);
  close(v9);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v15 = *__error();
    v17 = v7;
    v13 = "%s";
    v14 = 524;
    goto LABEL_7;
  }

  if (v10 < a3)
  {
    v13 = "truncated read";
    v14 = 525;
    v15 = 0;
LABEL_7:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", v14, 3, v15, v13, v11, v12, v17);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_63A9C(const char *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v14, "%s", v15, v16, v5);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a3)
    {
      v8 = 0;
      while (1)
      {
        if (a3 - v8 >= 0x10000000)
        {
          v9 = 0x10000000;
        }

        else
        {
          v9 = a3 - v8;
        }

        v10 = write(v7, (a2 + v8), v9);
        if (v10 < 0)
        {
          v17 = *__error();
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v17, "%s", v18, v19, v5);
          goto LABEL_14;
        }

        if (!v10)
        {
          break;
        }

        v8 += v10;
        if (v8 >= a3)
        {
          goto LABEL_10;
        }
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s", v11, v12, v5);
LABEL_14:
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }

    close(v7);
  }

  return v13;
}

uint64_t sub_63BD8(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v10 = sub_75AC4(0x100000uLL);
  if (v10)
  {
    v13 = sub_66B80(a1, a2, a3);
    if (v13)
    {
      v16 = sub_673F4(a4, a3);
      if (v16)
      {
        if ((sub_76264(v10, a3, sub_6707C, v13, sub_675A0, v16, v14, v15) & 0x8000000000000000) == 0)
        {
          v19 = 0;
          goto LABEL_11;
        }

        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s", v17, v18, a1);
      }

      else
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s", v14, v15, a4);
      }
    }

    else
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", v11, v12, a1);
      v16 = 0;
    }
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation", v8, v9, v21);
    v16 = 0;
    v13 = 0;
  }

  v19 = 1;
LABEL_11:
  sub_66F00(v13);
  sub_67550(v16);
  sub_75BD4(v10);
  if (v19)
  {
    unlink(a4);
  }

  return (v19 << 31 >> 31);
}

uint64_t sub_63D7C(const char *a1, uint64_t a2)
{
  v24.tv_sec = *(a2 + 32);
  v24.tv_usec = 0;
  v25 = *(a2 + 48);
  v26 = 0;
  memset(&v23, 0, sizeof(v23));
  if (stat(a1, &v23))
  {
    if (*__error() == 1)
    {
      return 0;
    }

    v7 = 604;
LABEL_24:
    v19 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v19, "%s", v20, v21, a1);
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 16);
  if (v23.st_uid == v5)
  {
    v6 = *(a2 + 20);
    if (v23.st_gid == v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 20);
  }

  if (chown(a1, v5, v6) && *__error() != 1)
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", v9, v10, a1);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
LABEL_13:
  v11 = *(a2 + 4);
  if (v23.st_mode != v11 && chmod(a1, v11 & 0xFFF) && *__error() != 1)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v12, "%s", v13, v14, a1);
    v4 = 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v23.st_flags >> 5) & 1));
  if (v23.st_flags != v15 && chflags(a1, v15) && *__error() != 1)
  {
    v16 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v16, "%s", v17, v18, a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v24) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_63FE0(const char *a1, const char *a2, int a3, uint64_t a4, int a5)
{
  memset(&v54, 0, sizeof(v54));
  v9 = open(a1, 0);
  if (v9 < 0)
  {
    v16 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v16, "%s", v17, v18, a1);
LABEL_19:
    v24 = 0;
LABEL_20:
    v28 = 0;
LABEL_21:
    v32 = 0;
LABEL_22:
    sub_66F00(v24);
    sub_67D08(v28, v44, v45, v46, v47, v48, v49, v50);
    sub_75BD4(v32);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v54))
  {
    v13 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v13, "%s", v14, v15, a1);
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v54.st_mode & 0xF000) != 0x8000)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s", v11, v12, a1);
    goto LABEL_18;
  }

  v19 = sub_64300(v10);
  close(v10);
  st_size = v54.st_size;
  st_flags = v54.st_flags;
  v24 = sub_66B80(a1, 0, v54.st_size);
  if (!v24)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", v22, v23, a1);
    goto LABEL_20;
  }

  if ((st_flags & 0x40000020) == 0x20)
  {
    v25 = a5 | 4;
  }

  else
  {
    v25 = a5;
  }

  v28 = sub_67770(a2, st_size, v25 | 8u, v19, a3);
  if (!v28)
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", v26, v27, a1);
    goto LABEL_21;
  }

  v29 = sub_75AC4(0x100000uLL);
  v32 = v29;
  if (!v29)
  {
    v51 = "alloc";
    v52 = 670;
LABEL_27:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", v52, 3, 0, v51, v30, v31, v53);
    goto LABEL_22;
  }

  v33 = sub_76264(v29, st_size, sub_6707C, v24, sub_67EFC, v28, v30, v31);
  if (v33 < 0 || v33 != st_size)
  {
    v53 = v33;
    v51 = "copy failed %lld";
    v52 = 674;
    goto LABEL_27;
  }

  sub_66F00(v24);
  sub_67D08(v28, v34, v35, v36, v37, v38, v39, v40);
  sub_75BD4(v32);
  if (!sub_63D7C(a2, &v54))
  {
    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes", v41, v42, v53);
  return 0xFFFFFFFFLL;
}

uint64_t sub_64300(int a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = fgetattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_64398(unsigned int a1)
{
  if ((a1 & 0x40000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 5) & 1;
  }
}

uint64_t sub_643A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_643B4(const char *a1, const char *a2)
{
  memset(&v39, 0, sizeof(v39));
  memset(&v38, 0, sizeof(v38));
  if (stat(a1, &v39))
  {
    v4 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s", v5, v6, a1);
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v38))
  {
    v7 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v7, "%s", v8, v9, a2);
    goto LABEL_5;
  }

  if ((v39.st_mode & 0xF000) != 0x8000 || (v38.st_mode & 0xF000) != 0x8000 || v39.st_size != v38.st_size)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v14 = open(a1, 0);
  if (v14 < 0)
  {
    v22 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v22, "%s", v23, v24, a1);
    goto LABEL_5;
  }

  v15 = v14;
  v16 = open(a2, 0);
  if (v16 < 0)
  {
    v25 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v25, "%s", v26, v27, a2);
    close(v15);
    goto LABEL_5;
  }

  v17 = v16;
  v11 = malloc(0x40000uLL);
  v18 = malloc(0x40000uLL);
  v10 = v18;
  if (v11 && v18)
  {
    while (1)
    {
      v19 = read(v15, v11, 0x40000uLL);
      if (v19 < 0)
      {
        v31 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v31, "%s read", v32, v33, a1);
        goto LABEL_24;
      }

      v20 = v19;
      v21 = read(v17, v10, 0x40000uLL);
      if (v21 < 0)
      {
        v34 = *__error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v34, "%s read", v35, v36, a2);
        goto LABEL_24;
      }

      if (v20 != v21)
      {
        goto LABEL_19;
      }

      if (!v20)
      {
        break;
      }

      if (memcmp(v11, v10, v20))
      {
LABEL_19:
        v12 = 0;
        goto LABEL_25;
      }
    }

    v12 = 1;
  }

  else
  {
    v28 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v28, "malloc", v29, v30, v37);
LABEL_24:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_25:
  close(v15);
  close(v17);
LABEL_6:
  free(v11);
  free(v10);
  return v12;
}

uint64_t sub_646A0()
{
  v0 = off_1AD4E0();
  v2 = v1;
  v3 = v0;
  if (sub_62F94(v7, 0x800uLL, v0, v4) || sub_62F94(v6, 0x800uLL, v3, v2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_643B4(v7, v6);
  }
}

uint64_t sub_64760(const char *a1)
{
  v1 = a1;
  memset(&v6, 0, 512);
  if ((statfs(a1, &v6) & 0x80000000) == 0)
  {
    return v6.f_bsize;
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", v2, v3, v4, v1);
  return 4096;
}

uint64_t sub_64838(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a1, &v12))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", v2, v3, v4, a1);
    return -1;
  }

  else
  {
    if (v12.st_blocks << 9 >= v12.st_size)
    {
      st_size = v12.st_size;
    }

    else
    {
      st_size = v12.st_blocks << 9;
    }

    if (v12.st_blocks << 9)
    {
      v5 = st_size;
    }

    else
    {
      v5 = v12.st_size;
    }

    if ((v12.st_mode & 0xF000) == 0x8000)
    {
      v10 = 0;
      v11 = 0;
      v7 = ParallelCompressionAFSCGetMetadata(a1, &v11, &v10 + 1, &v10);
      if (HIDWORD(v10) != -1 && v7 == 0)
      {
        return v10;
      }
    }
  }

  return v5;
}

uint64_t sub_64908(const char *a1)
{
  v4[1] = 0;
  v4[2] = 0;
  memset(v5, 0, sizeof(v5));
  v4[0] = 0x4000000000000005;
  v1 = getattrlist(a1, v4, v5, 0x40uLL, 1u);
  if (LODWORD(v5[0]) == 8 && v1 == 0)
  {
    return DWORD1(v5[0]);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_64998(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", v12, v13, a1);
    v4 = 0;
    goto LABEL_19;
  }

  v3 = v2;
  if (!v2)
  {
    v4 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_20;
  }

  v4 = malloc(v2);
  if (!v4)
  {
    v15 = *__error();
    v18 = "malloc";
    v19 = 918;
    goto LABEL_18;
  }

  v5 = listxattr(a1, v4, v3, 1);
  if (v5 < 0)
  {
    v20 = *__error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v20, "listxattr failed: %s", v21, v22, a1);
    goto LABEL_19;
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = v4 + 1;
  v8 = v4;
  while (*(v7 - 1))
  {
    v9 = v8;
LABEL_10:
    ++v7;
    v8 = v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  v10 = removexattr(a1, v8, 1);
  v9 = v7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *__error();
  v24 = v8;
  v18 = "removexattr failed for name=%s: %s";
  v19 = 941;
LABEL_18:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", v19, 3, v15, v18, v16, v17, v24);
LABEL_19:
  v14 = 0xFFFFFFFFLL;
LABEL_20:
  free(v4);
  return v14;
}

uint64_t sub_64B38(char *a1, unint64_t a2, unsigned __int8 *a3)
{
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v6 += 0x100000;
      if (v6 <= a2)
      {
        v8 = 0x100000;
      }

      else
      {
        v8 = v7;
      }

      CC_SHA1_Update(&v10, a1, v8);
      v7 -= 0x100000;
      a1 += 0x100000;
    }

    while (v6 < a2);
  }

  CC_SHA1_Final(a3, &v10);
  return 0;
}

uint64_t sub_64BD8(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  if (a2 || a3 || a4)
  {
    memset(&c, 0, sizeof(c));
    memset(&v26, 0, sizeof(v26));
    v25[0] = 0;
    v25[1] = 0;
    v8 = open(a1, 0);
    if (v8 < 0)
    {
      v17 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v17, "%s", v18, v19, v7);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
      v10 = valloc(0x100000uLL);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          CC_SHA1_Init(&c);
        }

        if (a3)
        {
          CC_SHA256_Init(&v26);
        }

        if (v4)
        {
          sub_6B014(v25);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read", v15, v16, v24);
            goto LABEL_29;
          }

          if (!v12)
          {
            break;
          }

          if (a2)
          {
            CC_SHA1_Update(&c, v11, v12);
          }

          if (a3)
          {
            CC_SHA256_Update(&v26, v11, v13);
          }

          if (v4)
          {
            sub_6B024(v25, v11, v13);
          }
        }

        if (a2)
        {
          CC_SHA1_Final(a2, &c);
        }

        if (a3)
        {
          CC_SHA256_Final(a3, &v26);
        }

        if (v4)
        {
          sub_6B074(v4, v25);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v20 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v20, "malloc", v21, v22, v24);
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
}

uint64_t sub_64DEC(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", v13, v14, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v10 = sub_64E98(v8, a2, a3, a4);
    close(v9);
    return v10;
  }
}

uint64_t sub_64E98(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v24 = 1;
  if (fcntl(a1, 48))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n", v8, v9, v10, 1);
  }

  memset(&c, 0, sizeof(c));
  v11 = valloc(0x100000uLL);
  if (!v11)
  {
    v18 = *__error();
    v21 = "malloc";
    v22 = 1049;
LABEL_15:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", v22, 3, v18, v21, v19, v20, v24);
LABEL_16:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  CC_SHA1_Init(&c);
  if (a3)
  {
    while (1)
    {
      if (a3 >= 0x100000)
      {
        v12 = 0x100000;
      }

      else
      {
        v12 = a3;
      }

      v13 = pread(a1, v11, v12, a2);
      if ((v13 & 0x8000000000000000) != 0)
      {
        v18 = *__error();
        v21 = "read";
        v22 = 1059;
        goto LABEL_15;
      }

      v16 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }

      if (v13 > v12)
      {
        break;
      }

      CC_SHA1_Update(&c, v11, v13);
      a2 += v16;
      a3 -= v16;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)", v14, v15, v13);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v17 = 0;
LABEL_17:
  free(v11);
  return v17;
}

uint64_t sub_65044(const char *a1)
{
  bzero(__s, 0x410uLL);
  memset(&v10, 0, sizeof(v10));
  if (realpath_DARWIN_EXTSN(a1, __s))
  {
    if (lstat(__s, &v10) || (v10.st_mode & 0xF000) != 0x4000)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1106, 3, 0, "Not a directory: %s", v4, v5, a1);
    }

    else
    {
      v13 = sub_64760(__s);
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = sub_651AC;
      v9[0] = __s;
      if ((sub_65298(v9, __s) & 0x80000000) == 0)
      {
        return v12;
      }

      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1115, 3, 0, "enumerating directory: %s", v6, v7, a1);
    }
  }

  else
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1105, 3, 0, "Invalid path: %s", v2, v3, a1);
  }

  return -1;
}

uint64_t sub_651AC(uint64_t a1, char *a2)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a2, &v12) < 0)
  {
    v9 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "DirectoryDiskUsageProc", 1088, 3, *v9, "lstat: %s", v10, v11, a2);
    return 0xFFFFFFFFLL;
  }

  v4 = v12.st_mode & 0xF000;
  if (v4 == 0x8000 || v4 == 0x4000)
  {
    v5 = *(a1 + 1032);
    v6 = sub_64838(a2);
    v7 = (v6 + (v5 - 1)) & -v5;
    if (v6 < 0)
    {
      v7 = v6;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      result = 0;
      *(a1 + 1024) += v7;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_65298(void *a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 - 1024 < 0xFFFFFFFFFFFFFBFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  bzero(v7, 0x400uLL);
  __memcpy_chk();
  do
  {
    v6 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v7[v6 - 1] == 47);
  v7[v6] = 0;
  return sub_65400(a1, v7, v6);
}

uint64_t sub_65374(const char *a1)
{
  memset(&v3, 0, sizeof(v3));
  if (lstat(a1, &v3))
  {
    return 0;
  }

  if ((v3.st_mode & 0xF000) == 0x4000)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3.st_flags & 0x20002) != 0)
  {
    lchflags(a1, v3.st_flags & 0xFFFDFFFD);
  }

  return unlink(a1);
}

uint64_t sub_65400(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = "/";
  }

  v7 = opendir(v6);
  if (v7)
  {
    memset(&v32, 0, 512);
    v31 = 0;
    v8 = a1[1];
    if (!v8 || (v8(*a1, a2) & 0x80000000) == 0)
    {
      if (!readdir_r(v7, &v32, &v31))
      {
        v18 = a3 + 1;
        v19 = &a2[a3];
        do
        {
          if (!v31)
          {
            v12 = 1;
            goto LABEL_10;
          }

          d_namlen = v32.d_namlen;
          if ((v32.d_namlen != 1 || v32.d_name[0] != 46) && (v32.d_namlen != 2 || v32.d_name[0] != 46 || v32.d_name[1] != 46))
          {
            v21 = v18 + v32.d_namlen;
            if (v21 > 0x3FF)
            {
              goto LABEL_9;
            }

            *v19 = 47;
            memcpy(v19 + 1, v32.d_name, d_namlen);
            a2[v21] = 0;
            memset(&v30, 0, sizeof(v30));
            v22 = lstat(a2, &v30);
            if (v22)
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s", v23, v24, v25, v22);
            }

            else if ((v30.st_flags & 0x40000000) != 0)
            {
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s", v23, v24, v25, a2);
            }

            else
            {
              d_type = v32.d_type;
              if (!v32.d_type)
              {
                if ((v30.st_mode & 0xF000) == 0x4000)
                {
                  d_type = 4;
                  v32.d_type = 4;
                }

                else
                {
                  d_type = 0;
                }
              }

              v27 = a1[3];
              if (v27)
              {
                v28 = v27(*a1, a2) >> 31;
                d_type = v32.d_type;
              }

              else
              {
                LOBYTE(v28) = 0;
              }

              if (d_type == 4 && (sub_65400(a1, a2, v21) & 0x80000000) != 0)
              {
                v12 = 0;
                *v19 = 0;
                goto LABEL_10;
              }

              *v19 = 0;
              if (v28)
              {
                goto LABEL_9;
              }
            }
          }
        }

        while (!readdir_r(v7, &v32, &v31));
      }

      v9 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r", v10, v11, v29);
    }

LABEL_9:
    v12 = 0;
LABEL_10:
    closedir(v7);
    v13 = a1[2];
    if (v13 && v13(*a1, a2) < 0)
    {
      v12 = 0;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v15, "%s", v16, v17, a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_65730(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = sub_6577C;
  v2[2] = sub_65834;
  return sub_65298(v2, __s);
}

uint64_t sub_6577C(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (lstat(a2, &v8))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", v5, v6, a2);
    return 0xFFFFFFFFLL;
  }

  if ((v8.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  result = unlink(a2);
  if (result)
  {
    v3 = 1250;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_65834(int a1, char *a2)
{
  v2 = a2;
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", v5, v6, v2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_658A4(const char *a1)
{
  bzero(&v11, 0x878uLL);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (statfs(a1, &v11) < 0)
  {
    return -1;
  }

  LOWORD(v8) = 5;
  LODWORD(v9) = -2147352576;
  v2 = getattrlist(v11.f_mntonname, &v8, v6, 0x24uLL, 1u);
  result = -1;
  if (!v2 && LODWORD(v6[0]) == 36)
  {
    v4.i64[0] = *(v6 + 4);
    v4.i64[1] = *(v6 + 4);
    v5 = vandq_s8(vshlq_u32(v4, xmmword_10B220), xmmword_10B230);
    *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
    return (v5.i32[0] | v5.i32[1]);
  }

  return result;
}

char *sub_659B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v9 = getpagesize();
    if (v9 <= 0x197)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size", v10, v11, v39);
      return 0;
    }

    v14 = v9;
    if (a1 >> 2 < v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a1 >> 2) / v9;
    }

    v16 = v15 * v9;
    v17 = valloc(v9 + 4 * v16);
    v12 = v17;
    if (!v17)
    {
      v24 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v24, "malloc", v25, v26, v39);
      return v12;
    }

    *(v17 + 50) = 0;
    *(v17 + 23) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 21) = 0u;
    *(v17 + 22) = 0u;
    *(v17 + 19) = 0u;
    *(v17 + 20) = 0u;
    *(v17 + 17) = 0u;
    *(v17 + 18) = 0u;
    *(v17 + 15) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 13) = 0u;
    *(v17 + 14) = 0u;
    *(v17 + 11) = 0u;
    *(v17 + 12) = 0u;
    *(v17 + 9) = 0u;
    *(v17 + 10) = 0u;
    *(v17 + 7) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 5) = 0u;
    *(v17 + 6) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    *(v17 + 48) = -1;
    atomic_store(2u, v17 + 101);
    *v17 = 0x600000000;
    v18 = calloc(6uLL, 4uLL);
    *(v12 + 1) = v18;
    if (v18)
    {
      if (pthread_mutex_init((v12 + 4), 0))
      {
        v22 = "SharedArrayInit: pthread_mutex_init failed\n";
        v23 = 56;
      }

      else
      {
        if (!pthread_cond_init((v12 + 20), 0))
        {
          *(v12 + 16) = 0x600000000;
          v31 = calloc(6uLL, 4uLL);
          *(v12 + 17) = v31;
          if (v31)
          {
            if (pthread_mutex_init((v12 + 36), 0))
            {
              v35 = "SharedArrayInit: pthread_mutex_init failed\n";
              v36 = 56;
            }

            else
            {
              if (!pthread_cond_init((v12 + 52), 0))
              {
                v37 = 0;
                for (i = v12 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v12 + v14;
                  *(i - 1) = v16;
                  if ((sub_65D4C(v12 + 32, v37) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v37;
                  v14 += v16;
                  if (v37 == 4)
                  {
                    return v12;
                  }
                }

                v29 = "SharedArrayPush";
                v30 = 283;
                goto LABEL_19;
              }

              v35 = "SharedArrayInit: pthread_cond_init failed\n";
              v36 = 57;
            }
          }

          else
          {
            v35 = "SharedArrayInit: malloc failed\n";
            v36 = 55;
          }

          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v36, 0, v35, v32, v33, v34, v39);
          v29 = "SharedArrayInit";
          v30 = 270;
LABEL_19:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", v30, 73, 0, v29, v27, v28, v39);
          if (!pthread_mutex_destroy((v12 + 4)) && !pthread_cond_destroy((v12 + 20)))
          {
            free(*(v12 + 1));
          }

          if (!pthread_mutex_destroy((v12 + 36)) && !pthread_cond_destroy((v12 + 52)))
          {
            free(*(v12 + 17));
          }

          free(v12);
          return 0;
        }

        v22 = "SharedArrayInit: pthread_cond_init failed\n";
        v23 = 57;
      }
    }

    else
    {
      v22 = "SharedArrayInit: malloc failed\n";
      v23 = 55;
    }

    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v23, 0, v22, v19, v20, v21, v39);
    v29 = "SharedArrayInit";
    v30 = 269;
    goto LABEL_19;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu", a7, a8, a1);
  return 0;
}

uint64_t sub_65D4C(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 117;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = *a1;
    if (*a1 < v10)
    {
      *(*(a1 + 1) + 4 * v9) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 124;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 125;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 122;
    }
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

void sub_65E5C(uint64_t a1)
{
  if (a1)
  {
    if (!pthread_mutex_destroy((a1 + 16)) && !pthread_cond_destroy((a1 + 80)))
    {
      free(*(a1 + 8));
    }

    if (!pthread_mutex_destroy((a1 + 144)) && !pthread_cond_destroy((a1 + 208)))
    {
      free(*(a1 + 136));
    }

    free(a1);
  }
}

uint64_t sub_65EF0(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!atomic_load((a1 + 400)))
    {
      if (atomic_load((a1 + 392)))
      {
        v11 = "write after EOF";
        v12 = 365;
LABEL_25:
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", v12, 73, 0, v11, a7, a8, v38);
      }

      else
      {
        v15 = a2;
        v16 = 0;
        v17 = a1 + 256;
        while (1)
        {
          v18 = *(a1 + 384);
          if (v18 <= 3)
          {
            v23 = *(v17 + 32 * v18 + 24);
          }

          else
          {
            if (pthread_mutex_lock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_lock failed\n";
              v36 = 91;
LABEL_24:
              sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v36, 0, v35, v19, v20, v21, v38);
              v11 = "SharedArrayPop";
              v12 = 378;
              goto LABEL_25;
            }

            while (1)
            {
              v22 = *(a1 + 128);
              if (v22)
              {
                break;
              }

              if (pthread_cond_wait((a1 + 208), (a1 + 144)))
              {
                v35 = "SharedArrayPop: pthread_cond_wait failed\n";
                v36 = 94;
                goto LABEL_24;
              }
            }

            v24 = v22 - 1;
            *(a1 + 128) = v24;
            v18 = *(*(a1 + 136) + 4 * v24);
            if (pthread_mutex_unlock((a1 + 144)))
            {
              v35 = "SharedArrayPop: pthread_mutex_unlock failed\n";
              v36 = 98;
              goto LABEL_24;
            }

            if (v18 > 3)
            {
              goto LABEL_26;
            }

            v23 = 0;
            *(a1 + 384) = v18;
            v29 = (a1 + 272 + 32 * v18);
            *v29 = 0;
            v29[1] = 0;
          }

          v30 = (v17 + 32 * v18);
          if (v30[1] - v23 >= v15)
          {
            v31 = v15;
          }

          else
          {
            v31 = v30[1] - v23;
          }

          v32 = a3(a4, *v30 + v23, v31);
          if (v32 < 0)
          {
            v11 = "stream read";
            v12 = 393;
            goto LABEL_25;
          }

          v33 = v32;
          if (!v32)
          {
            break;
          }

          v34 = v30[3] + v32;
          v30[3] = v34;
          if (v34 == v30[1] && (sub_661B4(a1) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }

          v16 += v33;
          v15 -= v33;
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        if ((sub_66130(a1) & 0x80000000) == 0)
        {
LABEL_31:
          if ((sub_661B4(a1) & 0x80000000) == 0)
          {
            return v16;
          }
        }
      }

LABEL_26:
      sub_66224(a1, v25, v26, v27, v28, v19, v20, v21, v38);
    }
  }

  return -1;
}

uint64_t sub_66130(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((sub_661B4(a1) & 0x80000000) == 0)
  {
    if ((sub_66530(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue", v3, v4, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_661B4(unsigned int *a1)
{
  v2 = a1[96];
  a1[96] = -1;
  if (v2 > 3)
  {
    return 0;
  }

  if ((sub_66530(a1, v2) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v4, v5, v1);
  return 0xFFFFFFFFLL;
}

size_t sub_66224(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    v10 = 0;
    atomic_compare_exchange_strong((result + 400), &v10, 1u);
    if (!v10)
    {
      if ((sub_65D4C((result + 128), -1) & 0x80000000) != 0)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush", v11, v12, v15);
      }

      result = sub_66530(v9, -1);
      if ((result & 0x80000000) != 0)
      {

        return sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush", v13, v14, a9);
      }
    }
  }

  return result;
}

uint64_t sub_662E8(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return -1;
  }

  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!atomic_load((a1 + 396)))
  {
    v11 = a2;
    v6 = 0;
    while (1)
    {
      v12 = *(a1 + 388);
      if (v12 >= 4)
      {
        if (pthread_mutex_lock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_lock failed\n";
          v32 = 91;
          goto LABEL_26;
        }

        while (!*a1)
        {
          if (pthread_cond_wait((a1 + 80), (a1 + 16)))
          {
            v31 = "SharedArrayPop: pthread_cond_wait failed\n";
            v32 = 94;
            goto LABEL_26;
          }
        }

        v16 = *a1 - 1;
        *a1 = v16;
        v12 = *(*(a1 + 8) + 4 * v16);
        if (pthread_mutex_unlock((a1 + 16)))
        {
          v31 = "SharedArrayPop: pthread_mutex_unlock failed\n";
          v32 = 98;
LABEL_26:
          sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v32, 0, v31, v13, v14, v15, v37);
          v33 = "SharedBufferFlushToStream";
          v34 = "SharedArrayDequeue";
          v35 = 448;
LABEL_27:
          sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", v33, v35, 73, 0, v34, v25, v26, v37);
LABEL_28:
          sub_66224(a1, v17, v18, v19, v20, v13, v14, v15, v37);
          return -1;
        }

        if (v12 == 4294967294)
        {
          v36 = 0;
          atomic_compare_exchange_strong((a1 + 396), &v36, 1u);
          return v6;
        }

        if (v12 > 3)
        {
          goto LABEL_28;
        }

        *(a1 + 388) = v12;
      }

      v21 = (a1 + 256 + 32 * v12);
      v22 = v21[2];
      if (v21[3] - v22 >= v11)
      {
        v23 = v11;
      }

      else
      {
        v23 = v21[3] - v22;
      }

      v24 = a3(a4, *v21 + v22, v23);
      if (v24 <= 0)
      {
        v33 = "SharedBufferFlushToStream";
        v34 = "stream write";
        v35 = 469;
        goto LABEL_27;
      }

      v27 = v24;
      v28 = v21[3];
      v29 = v21[2] + v24;
      v21[2] = v29;
      if (v29 == v28)
      {
        v30 = *(a1 + 388);
        *(a1 + 388) = -1;
        if (v30 <= 3 && (sub_65D4C((a1 + 128), v30) & 0x80000000) != 0)
        {
          v33 = "currentReadBufferEmpty";
          v34 = "SharedArrayPush";
          v35 = 337;
          goto LABEL_27;
        }
      }

      v6 += v27;
      v11 -= v27;
      if (!v11)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t sub_66530(unsigned int *a1, int a2)
{
  if (pthread_mutex_lock((a1 + 4)))
  {
    v7 = "SharedArrayPush: pthread_mutex_lock failed\n";
    v8 = 157;
  }

  else
  {
    v9 = *a1;
    v10 = a1[1];
    if (v9 >= v10)
    {
      v11 = *a1;
    }

    else
    {
      if (v9)
      {
        memmove((*(a1 + 1) + 4), *(a1 + 1), 4 * v9);
      }

      **(a1 + 1) = a2;
      v11 = *a1;
    }

    *a1 = v11 + 1;
    if (v11 || !pthread_cond_broadcast((a1 + 20)))
    {
      if (pthread_mutex_unlock((a1 + 4)))
      {
        v7 = "SharedArrayPush: pthread_mutex_unlock failed\n";
        v8 = 168;
      }

      else
      {
        if (v9 < v10)
        {
          return 0;
        }

        v7 = "SharedArrayPush: stack is full\n";
        v8 = 169;
      }
    }

    else
    {
      v7 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v8 = 166;
    }
  }

  sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_66658(size_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sub_66130(a1);
  }

  v10 = a2;
  return sub_65EF0(a1, a3, sub_666B8, &v10, a5, a6, a7, a8);
}

size_t sub_666B8(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_666FC(size_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return sub_662E8(a1, a3, sub_66750, v7);
}

size_t sub_66750(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

void *sub_667C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc(0x80uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 6) = 0u;
    *(v6 + 7) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 2) = 0u;
    *(v6 + 3) = 0u;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    j__CC_SHA1_Init(v6);
    v7[13] = a1;
    v7[14] = a2;
    v7[15] = a3;
  }

  else
  {
    v8 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OSHA1StreamCreate", 76, 29, *v8, "malloc", v9, v10, v12);
  }

  return v7;
}

void sub_6685C(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  if (c)
  {
    j__CC_SHA1_Final(md, c);

    free(c);
  }
}

uint64_t sub_668A4(CC_SHA1_CTX *c, const void *a2, uint64_t a3)
{
  if (!c || c[1].h0)
  {
    return -1;
  }

  v4 = a3;
  j__CC_SHA1_Update(c, a2, a3);
  v7 = *&c[1].h2;
  if (!v7)
  {
    return v4;
  }

  v8 = *&c[1].Nh;

  return v7(v8, a2, v4);
}

uint64_t sub_66924(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    if (v2)
    {
      result = v2(*(result + 120));
    }

    *(v1 + 96) = 1;
  }

  return result;
}

uint64_t *sub_66964(uint64_t (*a1)(uint64_t, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc(a4 + 48);
  v9 = v8;
  if (v8)
  {
    bzero(v8, a4 + 48);
    v10 = a1(a3, v9 + 6, a4);
    if (v10 < 0)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 138, 29, 0, "reading magic", v11, v12, v17);
      free(v9);
      return 0;
    }

    else
    {
      *v9 = v10;
      v9[1] = v10;
      v9[3] = a1;
      v9[4] = a2;
      v9[5] = a3;
    }
  }

  else
  {
    v13 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IMagicStreamCreate", 133, 29, *v13, "malloc", v14, v15, v17);
  }

  return v9;
}

size_t sub_66A5C(uint64_t a1, char *__dst, size_t a3)
{
  if (!a1 || *(a1 + 16))
  {
    return -1;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    if (v8 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = *(a1 + 8);
    }

    memcpy(__dst, (a1 + *a1 - v8 + 48), v4);
    *(a1 + 8) -= v4;
    if (v8 < a3)
    {
      v9 = (*(a1 + 24))(*(a1 + 40), &__dst[v4], a3 - v4);
      if (v9 < 0)
      {
        return -1;
      }

      else
      {
        v4 += v9;
      }
    }

    return v4;
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 40);

  return v10(v11);
}

uint64_t sub_66B40(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      result = v2(*(result + 40));
    }

    *(v1 + 16) = 1;
  }

  return result;
}

uint64_t sub_66B80(const char *a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = 0x1FFFFFFFFLL;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v12 = "pthread_mutex_init";
      v13 = 293;
    }

    else
    {
      v16 = open(a1, 0);
      *v7 = v16;
      if (v16 < 0)
      {
        v14 = *__error();
        v17 = a1;
        v12 = "%s";
        v13 = 297;
        goto LABEL_9;
      }

      sub_66CEC(v7);
      if ((sub_66D70(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 303;
    }

    v14 = 0;
  }

  else
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 282;
  }

LABEL_9:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFilename", v13, 29, v14, v12, v10, v11, v17);
  sub_66F00(v7);
  return 0;
}

uint64_t sub_66CEC(uint64_t a1)
{
  memset(&v4, 0, sizeof(v4));
  result = fstat(*a1, &v4);
  if (!result && (v4.st_mode & 0xF000) == 0x8000)
  {
    st_size = v4.st_size;
    if (*(a1 + 16) > v4.st_size)
    {
      *(a1 + 16) = v4.st_size;
    }

    if (*(a1 + 24) > st_size)
    {
      *(a1 + 24) = st_size;
    }
  }

  return result;
}

uint64_t sub_66D70(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  v6 = lseek(*a1, a2, 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v6;
    *(a1 + 32) = v6;
LABEL_5:
    if (v9 == a2)
    {
      return 0;
    }

    v10 = "pos not reached";
    v11 = 261;
    goto LABEL_11;
  }

  if (*__error() != 32)
  {
    v12 = *__error();
    v10 = "lseek failed";
    v11 = 258;
    goto LABEL_13;
  }

  v9 = *(a1 + 32);
  if (v9 <= a2)
  {
    v13 = valloc(0x4000uLL);
    if (!v13)
    {
      v12 = *__error();
      v10 = "malloc";
      v11 = 244;
      goto LABEL_13;
    }

    for (i = v13; v9 < a2; *(a1 + 32) = v9)
    {
      if (v9 + 0x4000 <= a2)
      {
        v15 = 0x4000;
      }

      else
      {
        v15 = a2 - v9;
      }

      v16 = read(*a1, i, v15);
      v9 = *(a1 + 32);
      if (v16 < 1)
      {
        break;
      }

      v9 += v16;
    }

    free(i);
    goto LABEL_5;
  }

  v10 = "lseek failed and pos < s->pos";
  v11 = 240;
LABEL_11:
  v12 = 0;
LABEL_13:
  sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "seekTo", v11, 29, v12, v10, v7, v8, v2);
  return 0xFFFFFFFFLL;
}

void sub_66F00(char *a1)
{
  if (a1)
  {
    if (*(a1 + 1))
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    pthread_mutex_destroy((a1 + 40));

    free(a1);
  }
}

uint64_t sub_66F58(int a1, unint64_t a2, uint64_t a3)
{
  v6 = malloc(0x70uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 13) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v8 = (v6 + 40);
    *v7 = a1;
    *(v7 + 4) = 0;
    v9 = a2 + a3;
    if (__CFADD__(a2, a3))
    {
      v9 = -1;
    }

    *(v7 + 16) = a2;
    *(v7 + 24) = v9;
    if (pthread_mutex_init(v8, 0))
    {
      v12 = "pthread_mutex_init";
      v13 = 325;
    }

    else
    {
      sub_66CEC(v7);
      if ((sub_66D70(v7, a2) & 0x80000000) == 0)
      {
        return v7;
      }

      v12 = "seek error";
      v13 = 331;
    }

    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", v13, 29, 0, v12, v10, v11, v18);
    sub_66F00(v7);
    return 0;
  }

  else
  {
    v14 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamCreateWithFD", 314, 29, *v14, "malloc", v15, v16, v18);
  }

  return v7;
}

unint64_t sub_6707C(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  if (v11 < *(a1 + 16))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 358, 29, 0, "pos out of range", a7, a8, v21);
    return -1;
  }

  if (~v11 < a3)
  {
    v12 = ~v11;
  }

  else
  {
    v12 = a3;
  }

  v13 = a3 + v11;
  if (__CFADD__(a3, v11))
  {
    v13 = -1;
  }

  v14 = *(a1 + 24);
  if (v13 <= v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14 - v11;
  }

  if (v15)
  {
    v8 = 0;
    while (1)
    {
      v17 = read(*a1, a2, v15);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        a2 += v17;
        v8 += v17;
        v15 -= v17;
        if (v15)
        {
          continue;
        }
      }

      v11 = *(a1 + 32);
      goto LABEL_24;
    }

    v18 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamRead", 374, 29, *v18, "read", v19, v20, v21);
    *(a1 + 32) += v8;
    atomic_fetch_add((a1 + 104), v8);
    return -1;
  }

  v8 = 0;
LABEL_24:
  *(a1 + 32) = v11 + v8;
  atomic_fetch_add((a1 + 104), v8);
  return v8;
}

uint64_t sub_671B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v9 = *(a1 + 16);
  v10 = v9 + a4;
  if (__CFADD__(v9, a4) || (v11 = *(a1 + 24), v10 > v11))
  {
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamPRead", 397, 29, 0, "invalid offset", a7, a8, v25);
    return -1;
  }

  v15 = v10 + a3;
  if (v10 + a3 >= v11)
  {
    v15 = *(a1 + 24);
  }

  if (!__CFADD__(v10, a3))
  {
    v11 = v15;
  }

  v12 = v11 - v10;
  if (pread(*a1, a2, v11 - v10, v10) == v11 - v10)
  {
    atomic_fetch_add((a1 + 104), v12);
    return v12;
  }

  if (pthread_mutex_lock((a1 + 40)))
  {
    return -1;
  }

  v16 = *(a1 + 32);
  v17 = sub_66D70(a1, v10);
  v23 = sub_6707C(a1, a2, v12, v18, v19, v20, v21, v22);
  v24 = sub_66D70(a1, v16);
  v12 = -1;
  if (!pthread_mutex_unlock((a1 + 40)) && (v24 & 0x80000000) == 0 && (v23 & 0x8000000000000000) == 0 && (v17 & 0x80000000) == 0)
  {
    atomic_fetch_add((a1 + 104), v23);
    return v23;
  }

  return v12;
}

uint64_t sub_672E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v11 = *(a1 + 16);
  v12 = __CFADD__(v11, a2);
  v13 = v11 + a2;
  if (v12 || v13 > *(a1 + 24))
  {
    v14 = "invalid pos";
    v15 = 435;
LABEL_6:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "IFileStreamSetPos", v15, 29, 0, v14, a7, a8, v8);
    return -1;
  }

  if ((sub_66D70(a1, v13) & 0x80000000) != 0)
  {
    v14 = "changing pos";
    v15 = 436;
    goto LABEL_6;
  }

  return *(a1 + 32) - *(a1 + 16);
}

uint64_t sub_6739C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 32) - *(a1 + 16);
  }
}

uint64_t sub_673C8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  else
  {
    return *(a1 + 24) - *(a1 + 16);
  }
}

uint64_t sub_673E4(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_673F4(const char *a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    v4[1] = 1;
    *(v4 + 1) = 0;
    v6 = open(a1, 1537, 420);
    *v5 = v6;
    if (v6 < 0)
    {
      v7 = __error();
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 490, 29, *v7, "%s", v8, v9, a1);
      free(v5);
      return 0;
    }
  }

  else
  {
    v10 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFilename", 484, 29, *v10, "malloc", v11, v12, v14);
  }

  return v5;
}

void *sub_674D4(int a1, uint64_t a2)
{
  v4 = malloc(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a2;
    v4[3] = 0;
    *v4 = a1;
    *(v4 + 1) = 0;
    v4[1] = 0;
  }

  else
  {
    v6 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamCreateWithFD", 497, 29, *v6, "malloc", v7, v8, v10);
  }

  return v5;
}

void sub_67550(int *a1)
{
  if (a1)
  {
    if (a1[1])
    {
      v2 = *a1;
      if ((v2 & 0x80000000) == 0)
      {
        close(v2);
      }
    }

    free(a1);
  }
}

uint64_t sub_675A0(uint64_t a1, char *__buf, unint64_t a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  if (*(a1 + 16) >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v3 = 0;
    while (1)
    {
      v7 = v5 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v5;
      v8 = write(*a1, __buf, v7);
      if (v8 < 0)
      {
        break;
      }

      if (v8)
      {
        v9 = *(a1 + 16);
        if (v9 != -1)
        {
          *(a1 + 16) = v9 - v8;
        }

        __buf += v8;
        v3 += v8;
        v5 -= v8;
        if (v5)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v11 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamWrite", 538, 29, *v11, "write", v12, v13, v14);
    return -1;
  }

  v3 = 0;
LABEL_18:
  *(a1 + 24) += v3;
  return v3;
}

off_t sub_67684(int *a1, off_t a2)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, a2, 0);
  if (result < 0)
  {
    v4 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamSetPos", 558, 29, *v4, "lseek", v5, v6, v2);
    return -1;
  }

  return result;
}

off_t sub_676EC(int *a1)
{
  if (a1[2])
  {
    return -1;
  }

  result = lseek(*a1, 0, 1);
  if (result < 0)
  {
    v3 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OFileStreamGetPos", 568, 29, *v3, "lseek", v4, v5, v1);
    return -1;
  }

  return result;
}

uint64_t sub_67760(uint64_t result)
{
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

int *sub_67770(const char *a1, unint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = malloc(0x60uLL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    if ((a3 & 0x100) == 0)
    {
      unlink(a1);
    }

    v11[1] = (a3 >> 4) & 1;
    *(v11 + 2) = a2;
    if (a3)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 < 1)
    {
      v13 = open(a1, 1537, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 648;
        goto LABEL_31;
      }
    }

    else
    {
      v13 = open_dprotected_np(a1, 1537, v12, 0, 420);
      *v11 = v13;
      if (v13 < 0)
      {
        v14 = 640;
LABEL_31:
        v38 = __error();
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", v14, 29, *v38, "%s", v39, v40, a1);
        ParallelCompressionAFSCStreamClose(0, v41, v42, v43, v44, v45, v46, v47);
        goto LABEL_32;
      }
    }

    v18 = v13;
    if ((a3 & 8) != 0 && fcntl(v13, 48, 1))
    {
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 656, 29, "Warning: F_NOCACHE failed: %s\n", v19, v20, v21, a1);
    }

    if ((a3 & 2) != 0 && fcntl(v18, 68, 1) == -1)
    {
      v22 = __error();
      sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 665, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v23, v24, v25, *v22);
    }

    if (a2 && (a3 & 4) != 0 && a5 != -1)
    {
      if ((a3 & 0x80) != 0)
      {
        v26 = 6;
      }

      else
      {
        v26 = 4;
      }

      v27 = ParallelCompressionAFSCStreamOpen(v18, a2, a5, v26);
      *(v11 + 3) = v27;
      if (!v27)
      {
        sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 677, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", v28, v29, a1);
        ParallelCompressionAFSCStreamClose(0, v30, v31, v32, v33, v34, v35, v36);
        close(v18);
LABEL_32:
        free(v11);
        return 0;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v37 = fpathconf(v18, 27);
      if (v37 >= 1)
      {
        v11[10] = 1;
        if (v37 == 4096)
        {
          v11[18] = 4096;
        }

        else
        {
          v49 = 0x10000;
          if (v37 < 0x10000)
          {
            v49 = v37;
          }

          v50 = 1024;
          do
          {
            v51 = v50;
            v50 *= 2;
          }

          while (v51 < v49);
          v11[18] = v51;
        }
      }
    }
  }

  else
  {
    v15 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreate", 617, 29, *v15, "malloc", v16, v17, v52);
  }

  return v11;
}

int *sub_67A2C(int a1, const char *a2, unint64_t a3, unsigned int a4, int a5, int a6)
{
  v12 = malloc(0x60uLL);
  v15 = v12;
  if (!v12)
  {
    v36 = __error();
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 740, 29, *v36, "malloc", v37, v38, v54);
    return v15;
  }

  *(v12 + 8) = 0u;
  *(v12 + 11) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = -1;
  *(v12 + 1) = (a4 >> 4) & 1;
  *(v12 + 2) = a3;
  if ((a4 & 0x100) == 0)
  {
    unlinkat(a1, a2, 0);
  }

  if ((a4 & 1) != 0 || a5 >= 1)
  {
    v39 = "non default protection class is not supported";
    v40 = 759;
    v41 = 0;
LABEL_24:
    sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", v40, 29, v41, v39, v13, v14, v54);
    ParallelCompressionAFSCStreamClose(0, v42, v43, v44, v45, v46, v47, v48);
    goto LABEL_25;
  }

  v16 = openat(a1, a2, 1537, 420);
  *v15 = v16;
  if (v16 < 0)
  {
    v41 = *__error();
    v54 = a2;
    v39 = "%s";
    v40 = 766;
    goto LABEL_24;
  }

  v17 = v16;
  if ((a4 & 8) != 0 && fcntl(v16, 48, 1))
  {
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 774, 29, "Warning: F_NOCACHE failed: %s\n", v18, v19, v20, a2);
  }

  if ((a4 & 2) != 0 && fcntl(v17, 68, 1) == -1)
  {
    v21 = __error();
    sub_5FF3C("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 783, 29, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v22, v23, v24, *v21);
  }

  if (a3 && (a4 & 4) != 0 && a6 != -1)
  {
    if ((a4 & 0x80) != 0)
    {
      v25 = 6;
    }

    else
    {
      v25 = 4;
    }

    v26 = ParallelCompressionAFSCStreamOpen(v17, a3, a6, v25);
    *(v15 + 3) = v26;
    if (!v26)
    {
      sub_5FE30("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBasicStreams.c", "OArchiveFileStreamCreateAt", 795, 29, 0, "ParallelCompressionAFSCStreamOpen failed: %s", v27, v28, a2);
      ParallelCompressionAFSCStreamClose(0, v29, v30, v31, v32, v33, v34, v35);
      close(v17);
LABEL_25:
      free(v15);
      return 0;
    }
  }

  else if ((a4 & 0x40) != 0)
  {
    v50 = fpathconf(v17, 27);
    if (v50 >= 1)
    {
      v15[10] = 1;
      if (v50 == 4096)
      {
        v15[18] = 4096;
      }

      else
      {
        v51 = 0x10000;
        if (v50 < 0x10000)
        {
          v51 = v50;
        }

        v52 = 1024;
        do
        {
          v53 = v52;
          v52 *= 2;
        }

        while (v53 < v51);
        v15[18] = v53;
      }
    }
  }

  return v15;
}