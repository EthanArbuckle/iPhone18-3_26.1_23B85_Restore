uint64_t sub_100116CE4(_DWORD *a1, size_t a2)
{
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  memset(__s, 0, sizeof(__s));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = malloc(0xAB8uLL);
  v5 = v4;
  if (!v4)
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 161;
LABEL_16:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "aeaContextCreateWithPrologue", v13, 57, v14, v12, v10, v11, v23);
    AEAContextDestroy(v5);
    return 0;
  }

  memset_s(v4, 0xAB8uLL, 0, 0xAB8uLL);
  *(v5 + 684) = 1;
  if (a2 <= 0xB)
  {
    v12 = "Invalid prologue";
    v13 = 167;
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if ((sub_1000FADA8(v5, a1, v6, v7, v8, v9, v10, v11) & 0x80000000) != 0)
  {
    v12 = "Invalid magic";
    v13 = 168;
    goto LABEL_15;
  }

  if ((sub_1000DB560(__s, v5) & 0x80000000) != 0)
  {
    v12 = "Invalid container";
    v13 = 169;
    goto LABEL_15;
  }

  if ((sub_1000FB160(&v23, v5, __s) & 0x80000000) != 0)
  {
    v12 = "deriving container offsets";
    v13 = 170;
    goto LABEL_15;
  }

  if (v27 != a2)
  {
    v12 = "Prologue size mismatch";
    v13 = 171;
    goto LABEL_15;
  }

  *(v5 + 341) = a2;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    *(v5 + 340) = 0;
LABEL_28:
    v14 = *__error();
    v12 = "malloc";
    v13 = 176;
    goto LABEL_16;
  }

  v16 = malloc(a2);
  *(v5 + 340) = v16;
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  memcpy(v16, a1, a2);
  v18 = *(v5 + 1);
  if (v18)
  {
    v19 = malloc(*(v5 + 1));
    *(v5 + 339) = v19;
    if (!v19)
    {
      v14 = *__error();
      v12 = "malloc";
      v13 = 184;
      goto LABEL_16;
    }

    memcpy(v19, &v17[*(&v23 + 1)], v18);
  }

  if (!*(&v41 + 1) || (result = (*(&v41 + 1))(v5 + 1892, v17, a2), *(v5 + 473) != DWORD1(v32)) || (result & 0x80000000) != 0)
  {
    v12 = "digesting prologue";
    v13 = 189;
    goto LABEL_15;
  }

  v20 = HIDWORD(v31);
  if (HIDWORD(v31) < 0x101)
  {
    v21 = *(v5 + 340);
    v22 = v24;
    __memcpy_chk();
    *(v5 + 612) = v20;
    memset_s(v5 + v20 + 2452, 256 - v20, 0, 256 - v20);
    if (v21)
    {
      memset_s((v21 + v22), v20, 0, v20);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void AEAContextDestroy(AEAContext context)
{
  if (context)
  {
    v2 = *(context + 339);
    if (v2)
    {
      memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
    }

    free(v2);
    v3 = *(context + 340);
    if (v3)
    {
      memset_s(*(context + 340), *(context + 341), 0, *(context + 341));
    }

    free(v3);
    memset_s(context, 0xAB8uLL, 0, 0xAB8uLL);

    free(context);
  }
}

AEAContext AEAContextCreateWithProfile(AEAProfile profile)
{
  v2 = malloc(0xAB8uLL);
  v3 = v2;
  if (!v2)
  {
    v12 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 237, 57, v12, "malloc", v13, v14, v16);
    goto LABEL_5;
  }

  memset_s(v2, 0xAB8uLL, 0, 0xAB8uLL);
  *(v3 + 684) = 0;
  if ((sub_1000FACD4(v3, profile, v4, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithProfile", 243, 57, 0, "Invalid profile: %u", v10, v11, profile);
LABEL_5:
    AEAContextDestroy(v3);
    return 0;
  }

  return v3;
}

AEAContext AEAContextCreateWithEncryptedStream(AAByteStream encrypted_stream)
{
  memset(__s, 0, sizeof(__s));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  *__size = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  v29 = 0;
  if (*(encrypted_stream + 2))
  {
    v4 = 0;
    v5 = &v29;
    v6 = 12;
    do
    {
      v7 = (*(encrypted_stream + 2))(*encrypted_stream, v5, v6);
      if (v7 < 0)
      {
        goto LABEL_12;
      }

      if (!v7)
      {
        break;
      }

      v5 = (v5 + v7);
      v4 += v7;
      v6 -= v7;
    }

    while (v6);
    if (v4 != 12)
    {
      goto LABEL_12;
    }

    if ((sub_1000FADA8(v35, &v29, v8, v9, v10, v11, v1, v2) & 0x80000000) != 0)
    {
      v13 = "Invalid magic";
      v14 = 264;
      goto LABEL_13;
    }

    if ((sub_1000DB560(__s, v35) & 0x80000000) != 0)
    {
      v13 = "Invalid container";
      v14 = 265;
      goto LABEL_13;
    }

    if ((sub_1000FB160(v31, v35, __s) & 0x80000000) != 0)
    {
      v13 = "deriving container offsets";
      v14 = 266;
      goto LABEL_13;
    }

    v12 = __size[0];
    if (__size[0] >= 0x2000000001)
    {
      *__error() = 12;
LABEL_28:
      v15 = *__error();
      v13 = "malloc";
      v14 = 271;
      goto LABEL_14;
    }

    v19 = malloc(__size[0]);
    if (!v19)
    {
      goto LABEL_28;
    }

    v16 = v19;
    *v19 = v29;
    v19[2] = v30;
    if (*(encrypted_stream + 2))
    {
      v22 = 0;
      if (v12 != 12)
      {
        v23 = (v19 + 3);
        v24 = v12 - 12;
        while (1)
        {
          v25 = (*(encrypted_stream + 2))(*encrypted_stream, v23, v24);
          if (v25 < 0)
          {
            break;
          }

          if (v25)
          {
            v23 += v25;
            v22 += v25;
            v24 -= v25;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_31;
        }

        v22 = v25;
      }
    }

    else
    {
      v22 = -1;
    }

LABEL_31:
    if (v22 == v12 - 12)
    {
      v26 = sub_100116CE4(v16, v12);
      if (v26)
      {
        v17 = v26;
        free(v16);
        return v17;
      }

      v27 = "Context creation";
      v28 = 280;
    }

    else
    {
      v27 = "reading prologue";
      v28 = 276;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", v28, 57, 0, v27, v20, v21, v29);
  }

  else
  {
LABEL_12:
    v13 = "reading magic";
    v14 = 263;
LABEL_13:
    v15 = 0;
LABEL_14:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextCreateWithEncryptedStream", v14, 57, v15, v13, v1, v2, v29);
    v16 = 0;
  }

  free(v16);
  AEAContextDestroy(0);
  return 0;
}

uint64_t AEAContextGetFieldUInt(AEAContext context, AEAContextField field)
{
  if (field > 3)
  {
    if (field > 13)
    {
      if (field == 14)
      {
        return *(context + 5);
      }

      if (field == 17)
      {
        return *(context + 5);
      }
    }

    else
    {
      if (field == 4)
      {
        return *(context + 4);
      }

      if (field == 13)
      {
        return *(context + 4);
      }
    }

    goto LABEL_19;
  }

  if (field <= 1)
  {
    if (!field)
    {
      return *context;
    }

    if (field == 1)
    {
      return *(context + 7);
    }

LABEL_19:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldUInt", 314, 57, 0, "Invalid field", v2, v3, v4);
    return -1;
  }

  if (field == 2)
  {
    return *(context + 3);
  }

  else
  {
    return *(context + 6);
  }
}

int AEAContextGetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, size_t buf_capacity, uint8_t *buf, size_t *buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << field) & 0xC1260) != 0)
  {
    if (representation)
    {
      v8 = "Invalid representation";
      v9 = 337;
LABEL_38:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetFieldBlob", v9, 57, 0, v8, v6, v7, vars0);
      return -1;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_18:
    v8 = "Invalid field";
    v9 = 346;
    goto LABEL_38;
  }

  if (representation != 1)
  {
    v8 = "Invalid representation";
    v9 = 343;
    goto LABEL_38;
  }

LABEL_7:
  if (field > 9)
  {
    if (field <= 11)
    {
      if (field == 10)
      {
        v10 = (context + 852);
      }

      else
      {
        v10 = (context + 1112);
      }

LABEL_34:

      return sub_10011772C(v10, buf_capacity, buf, buf_size, buf, buf_size, v6, v7);
    }

    switch(field)
    {
      case 0xCu:
        v10 = (context + 1632);
        goto LABEL_34;
      case 0x12u:
        v10 = (context + 1892);
        goto LABEL_34;
      case 0x13u:
        v10 = (context + 2152);
        goto LABEL_34;
    }

LABEL_37:
    v8 = "Invalid field";
    v9 = 375;
    goto LABEL_38;
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v10 = (context + 332);
    }

    else if (field == 8)
    {
      v10 = (context + 592);
    }

    else
    {
      v10 = (context + 72);
    }

    goto LABEL_34;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v10 = (context + 1372);
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  if (buf_size)
  {
    *buf_size = *(context + 1);
  }

  if (buf_capacity)
  {
    v11 = *(context + 1);
    if (v11 > buf_capacity)
    {
      v8 = "buf_capacity is too small";
      v9 = 358;
      goto LABEL_38;
    }

    memcpy(buf, *(context + 339), v11);
  }

  return 0;
}

uint64_t sub_10011772C(unsigned int *a1, size_t a2, void *__dst, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *a1;
  if (v8 <= a2)
  {
    memcpy(__dst, a1 + 1, v8);
    return 0;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "getFieldBlob", 212, 57, 0, "buf_capacity is too small", a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }
}

int AEAContextSetFieldUInt(AEAContext context, AEAContextField field, uint64_t value)
{
  if (field != 1 && *(context + 684))
  {
    v6 = "Context can't be modified";
    v7 = 384;
LABEL_4:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldUInt", v7, 57, 0, v6, v3, v4, v12);
    return -1;
  }

  if (field <= 2)
  {
    if (field == 1)
    {
      if (value - 16 >= 0xFFFFFFFFFFFFFFF2)
      {
        v6 = "Invalid padding size";
        v7 = 415;
        goto LABEL_4;
      }

      result = 0;
      *(context + 7) = value;
      return result;
    }

    if (field == 2)
    {
      if (value > 2)
      {
        v6 = "Invalid checksum mode";
        v7 = 429;
        goto LABEL_4;
      }

      *(context + 3) = value;
      v9 = sub_1000FAD8C(value);
      result = 0;
      *(context + 12) = v9;
      return result;
    }

LABEL_30:
    v6 = "Invalid field";
    v7 = 439;
    goto LABEL_4;
  }

  if (field == 17)
  {
    result = 0;
    v10 = 32;
    if (value > 0x20)
    {
      v10 = value;
    }

    if (v10 >= 0x40000)
    {
      LODWORD(v10) = 0x40000;
    }

    *(context + 5) = v10;
    return result;
  }

  if (field == 4)
  {
    result = 0;
    v11 = 0x4000;
    if (value > 0x4000)
    {
      v11 = value;
    }

    if (v11 >= 0x10000000)
    {
      LODWORD(v11) = 0x10000000;
    }

    *(context + 4) = v11;
    return result;
  }

  if (field != 3)
  {
    goto LABEL_30;
  }

  if (value <= 1284)
  {
    if (value && value != 256 && value != 774)
    {
      goto LABEL_40;
    }
  }

  else if (value > 2048)
  {
    if (value != 2304 && value != 2049)
    {
      goto LABEL_40;
    }
  }

  else if (value != 1285 && value != 1794)
  {
LABEL_40:
    v6 = "Invalid compression algorithm";
    v7 = 398;
    goto LABEL_4;
  }

  result = 0;
  *(context + 6) = value;
  return result;
}

int AEAContextSetFieldBlob(AEAContext context, AEAContextField field, AEAContextFieldRepresentation representation, const uint8_t *buf, size_t buf_size)
{
  if (field > 0x13)
  {
    goto LABEL_21;
  }

  if (((1 << field) & 0x81260) != 0)
  {
    if (representation)
    {
      v11 = "Invalid representation";
      v12 = 458;
LABEL_36:
      v15 = 0;
LABEL_37:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldBlob", v12, 57, v15, v11, v6, v7, v18);
      return -1;
    }

    if (field == 19 && buf_size <= 0x13)
    {
      v11 = "Password is too short";
      v12 = 471;
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  if (((1 << field) & 0xD80) == 0)
  {
LABEL_21:
    v11 = "Invalid field";
    v12 = 467;
    goto LABEL_36;
  }

  if (representation != 1)
  {
    v11 = "Invalid representation";
    v12 = 464;
    goto LABEL_36;
  }

LABEL_7:
  if (field > 8)
  {
    if (field > 10)
    {
      switch(field)
      {
        case 0xBu:
          v13 = context + 1112;
          goto LABEL_32;
        case 0xCu:
          v13 = context + 1632;
          goto LABEL_32;
        case 0x13u:
          v13 = context + 2152;
          goto LABEL_32;
      }

LABEL_35:
      v11 = "Invalid field";
      v12 = 502;
      goto LABEL_36;
    }

    if (field == 9)
    {
      v13 = context + 72;
    }

    else
    {
      v13 = context + 852;
    }

LABEL_32:

    return sub_100117C68(v13, buf, buf_size, buf, buf_size, v5, v6, v7);
  }

  if (field > 6)
  {
    if (field == 7)
    {
      v13 = context + 332;
    }

    else
    {
      v13 = context + 592;
    }

    goto LABEL_32;
  }

  if (field != 5)
  {
    if (field == 6)
    {
      v13 = context + 1372;
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (*(context + 684))
  {
    v11 = "Context can't be modified";
    v12 = 477;
    goto LABEL_36;
  }

  v16 = *(context + 339);
  if (v16)
  {
    memset_s(*(context + 339), *(context + 1), 0, *(context + 1));
  }

  free(v16);
  *(context + 339) = 0;
  *(context + 1) = 0;
  if (buf_size)
  {
    if (buf_size >= 0x4000001)
    {
      v18 = buf_size;
      v11 = "Invalid auth data size: %zu";
      v12 = 483;
      goto LABEL_36;
    }

    v17 = malloc(buf_size);
    *(context + 339) = v17;
    if (!v17)
    {
      v15 = *__error();
      v11 = "malloc";
      v12 = 486;
      goto LABEL_37;
    }

    *(context + 1) = buf_size;
    memcpy(v17, buf, buf_size);
  }

  return 0;
}

uint64_t sub_100117C68(_DWORD *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0x101)
  {
    v11 = a1 + 1;
    memcpy(a1 + 1, a2, a3);
    *a1 = a3;
    memset_s(v11 + a3, 256 - a3, 0, 256 - a3);
    return 0;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "setFieldBlob", 223, 57, 0, "Invalid field size", a7, a8, v12);
    return 0xFFFFFFFFLL;
  }
}

int AEAContextGenerateFieldBlob(AEAContext context, AEAContextField field)
{
  v11 = 0;
  if (field == 19)
  {
    v5 = context + 2156;
    result = AEAKeychainGenerateItem(0, 0x63uLL, 0x100uLL, context + 2156, &v11, 0, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      v7 = v11;
      if (v11 < 0x101)
      {
        *(context + 538) = v11;
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    v8 = "generate random field";
    v9 = 527;
  }

  else if (field == 9)
  {
    v5 = context + 76;
    result = AEAKeychainGenerateItem(1, 0x100uLL, 0x100uLL, context + 76, &v11, 0, v2, v3);
    if ((result & 0x80000000) == 0)
    {
      v7 = v11;
      if (v11 < 0x101)
      {
        *(context + 18) = v11;
LABEL_9:
        memset_s(&v5[v7], 256 - v7, 0, 256 - v7);
        return 0;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    v8 = "generate random field";
    v9 = 520;
  }

  else
  {
    v8 = "Invalid field";
    v9 = 532;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGenerateFieldBlob", v9, 57, 0, v8, v2, v3, v10);
  return -1;
}

uint64_t AEAContextSetFieldCallback(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 16)
  {
    result = 0;
    a1[305] = a3;
    a1[304] = a4;
  }

  else if (a2 == 15)
  {
    result = 0;
    a1[303] = a3;
    a1[302] = a4;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextSetFieldCallback", 555, 57, 0, "Invalid field", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t AEAContextGetContainerSizeUpperBound(uint64_t a1, uint64_t a2)
{
  memset(__s, 0, sizeof(__s));
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if ((sub_1000DB560(__s, a1) & 0x80000000) != 0)
  {
    v13 = "Invalid context";
    v14 = 569;
    goto LABEL_13;
  }

  if ((sub_1000FB160(v16, a1, __s) & 0x80000000) != 0)
  {
    v13 = "deriving container offsets";
    v14 = 572;
    goto LABEL_13;
  }

  v10 = v19 * (((a2 + *(a1 + 16) - 1) / *(a1 + 16) + *(a1 + 20) - 1) / *(a1 + 20));
  v11 = __CFADD__(v17, v10);
  v12 = v17 + v10;
  if (v11)
  {
    v13 = "invalid sizes";
    v14 = 580;
LABEL_13:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContext.c", "AEAContextGetContainerSizeUpperBound", v14, 57, 0, v13, v4, v5, v16[0]);
    return -1;
  }

  if (__CFADD__(v12, a2))
  {
    v13 = "invalid sizes";
    v14 = 581;
    goto LABEL_13;
  }

  result = sub_1000F2900(v12 + a2, *(a1 + 56), v6, v7, v8, v9, v4, v5);
  if (result == -1)
  {
    v13 = "Container size is too large to allow padding";
    v14 = 585;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100118024(void *a1)
{
  v1 = a1[11];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10011803C(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamWrite(AAByteStream s, const void *buf, size_t nbyte)
{
  v3 = *(s + 3);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10011806C(unsigned int **a1)
{
  v1 = a1[1];
  if (v1 == sub_1001180AC || v1 == sub_1001180F4)
  {
    return **a1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1001180AC(int *a1)
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

  return 0;
}

uint64_t sub_1001180F4(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
      unlink(a1 + 12);
    }

    free(a1);
  }

  return 0;
}

ssize_t AAByteStreamPWrite(AAByteStream s, const void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 5);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamRead(AAByteStream s, void *buf, size_t nbyte)
{
  v3 = *(s + 2);
  if (v3)
  {
    return v3(*s, buf, nbyte);
  }

  else
  {
    return -1;
  }
}

ssize_t AAByteStreamPRead(AAByteStream s, void *buf, size_t nbyte, off_t offset)
{
  v4 = *(s + 4);
  if (v4)
  {
    return v4(*s, buf, nbyte, offset);
  }

  else
  {
    return -1;
  }
}

off_t AAByteStreamSeek(AAByteStream s, off_t offset, int whence)
{
  v3 = *(s + 6);
  if (v3)
  {
    return v3(*s, offset, *&whence);
  }

  else
  {
    return -1;
  }
}

void AAByteStreamCancel(AAByteStream s)
{
  v1 = *(s + 7);
  if (v1)
  {
    v1(*s);
  }
}

int AAByteStreamClose(AAByteStream s)
{
  if (!s)
  {
    return 0;
  }

  if (*s)
  {
    v2 = (*(s + 1))();
  }

  else
  {
    v2 = 0;
  }

  free(s);
  return v2;
}

uint64_t AAByteStreamCloseWithState(uint64_t (**a1)(void))
{
  if (a1)
  {
    v2 = a1[12];
    v3 = *a1;
    if (v2)
    {
      if (v3)
      {
        v4 = v2();
LABEL_8:
        v5 = v4;
LABEL_10:
        free(a1);
        return v5;
      }
    }

    else if (v3)
    {
      v4 = a1[1]();
      goto LABEL_8;
    }

    v5 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t AAByteStreamFlush(void *a1)
{
  v1 = a1[9];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamTruncate(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AAByteStreamPReadAsync(void *a1)
{
  v1 = a1[10];
  if (v1)
  {
    return v1(*a1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

AAByteStream AAFileStreamOpenWithFD(int fd, int automatic_close)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0xCuLL);
  v6 = v5;
  if (v4 && v5)
  {
    *v5 = fd;
    v5[1] = automatic_close;
    v5[2] = 0;
    *v4 = v5;
    v4[1] = sub_1001180AC;
    v4[2] = sub_1001183E4;
    v4[3] = sub_100118468;
    v4[4] = sub_1001184EC;
    v4[5] = sub_100118574;
    v4[7] = sub_1001185FC;
    v4[6] = sub_100118608;
    v4[8] = sub_100118620;
    v4[9] = sub_100118638;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithFD", 402, 17, *v7, "malloc", v8, v9, v11);
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t sub_1001183E4(int *a1, void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = read(*a1, a2, a3);
  if (v3 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamRead", 92, 17, "aaFileStreamRead err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t sub_100118468(int *a1, const void *a2, size_t a3)
{
  if (a1[2])
  {
    return -1;
  }

  v3 = write(*a1, a2, a3);
  if (v3 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamWrite", 104, 17, "aaFileStreamWrite err=%zd buf=%p n=%zu", v4, v5, v6, v3);
  }

  return v3;
}

uint64_t sub_1001184EC(int *a1, void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pread(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPRead", 116, 17, "aaFileStreamPRead err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

uint64_t sub_100118574(int *a1, const void *a2, size_t a3, off_t a4)
{
  if (a1[2])
  {
    return -1;
  }

  v4 = pwrite(*a1, a2, a3, a4);
  if (v4 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamPWrite", 128, 17, "aaFileStreamPWrite err=%zd buf=%p n=%zu off=%llu", v5, v6, v7, v4);
  }

  return v4;
}

off_t sub_100118608(int *a1, off_t a2, int a3)
{
  if (a1[2])
  {
    return -1;
  }

  else
  {
    return lseek(*a1, a2, a3);
  }
}

uint64_t sub_100118620(int *a1, off_t a2)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ftruncate(*a1, a2);
  }
}

uint64_t sub_100118638(int *a1)
{
  if (a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  result = fsync(*a1);
  if (result)
  {
    v3 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "aaFileStreamFlush", 151, 17, *v3, "fsync", v4, v5, v1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

AAByteStream AAFileStreamOpenWithPath(const char *path, int open_flags, mode_t open_mode)
{
  v3 = path;
  v4 = open(path, open_flags, open_mode);
  if (v4 < 0)
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAFileStreamOpenWithPath", 428, 17, *v7, "open: %s", v8, v9, v3);
  }

  else
  {
    v5 = v4;
    result = AAFileStreamOpenWithFD(v4, 1);
    if (result)
    {
      return result;
    }

    close(v5);
  }

  return 0;
}

void *AATempFileStreamOpenWithDirectory(const char *a1)
{
  v2 = calloc(1uLL, 0x68uLL);
  v3 = malloc(0x40CuLL);
  v4 = v3;
  if (!v2 || !v3)
  {
    v9 = *__error();
    v7 = "malloc";
    v8 = 447;
LABEL_16:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATempFileStreamOpenWithDirectory", v8, 17, v9, v7, v5, v6, v12);
    free(v2);
    free(v4);
    return 0;
  }

  memset_s(v3, 0x40CuLL, 0, 0x40CuLL);
  if (a1)
  {
    memset(&v13, 0, sizeof(v13));
    if (!realpath_DARWIN_EXTSN(a1, v4 + 12) || stat(v4 + 12, &v13) || (v13.st_mode & 0xF000) != 0x4000)
    {
      v12 = a1;
      v7 = "invalid temp_dir: %s";
      v8 = 457;
LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }
  }

  else if ((sub_1000F4C14(v4 + 12, 0x400uLL) & 0x80000000) != 0)
  {
    v7 = "get temp dir";
    v8 = 462;
    goto LABEL_15;
  }

  if (__strlcat_chk() >= 0x400)
  {
    v12 = v4 + 12;
    v7 = "Invalid temp dir path: %s";
    v8 = 464;
    goto LABEL_15;
  }

  v10 = mkostemp(v4 + 12, 0x1000000);
  *v4 = v10;
  if (v10 < 0)
  {
    v9 = *__error();
    v7 = "mkostemp";
    v8 = 466;
    goto LABEL_16;
  }

  *v2 = v4;
  v2[1] = sub_1001180F4;
  v2[2] = sub_1001183E4;
  v2[3] = sub_100118468;
  v2[4] = sub_1001184EC;
  v2[5] = sub_100118574;
  v2[7] = sub_1001185FC;
  v2[6] = sub_100118608;
  v2[8] = sub_100118620;
  v2[9] = sub_100118638;
  return v2;
}

int AASharedBufferPipeOpen(AAByteStream *ostream, AAByteStream *istream, size_t buffer_capacity)
{
  v6 = calloc(1uLL, 0x68uLL);
  v7 = calloc(1uLL, 0x68uLL);
  v15 = v7;
  if (v6 && v7)
  {
    v16 = sub_1000F9EEC(buffer_capacity, v8, v9, v10, v11, v12, v13, v14);
    if (v16)
    {
      v19 = v16;
      result = 0;
      *v15 = v19;
      *(v15 + 1) = sub_100118ADC;
      *(v15 + 3) = sub_100118B20;
      *(v15 + 7) = sub_1000FA760;
      *v6 = v19;
      *(v6 + 1) = sub_100118B24;
      *(v6 + 2) = sub_100118B58;
      *(v6 + 7) = sub_1000FA760;
      *ostream = v15;
      *istream = v6;
      return result;
    }

    v22 = "SharedBufferCreate";
    v23 = 503;
    v21 = 0;
  }

  else
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 499;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AASharedBufferPipeOpen", v23, 17, v21, v22, v17, v18, v24);
  free(v6);
  free(v15);
  sub_1000FA398(0);
  return -1;
}

uint64_t sub_100118ADC(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000FAB94(a1, 0, 0, a4, a5, a6, a7, a8);
  if (sub_1000FA414(a1))
  {
    sub_1000FA398(a1);
  }

  return 0;
}

uint64_t sub_100118B24(uint64_t a1)
{
  if (sub_1000FA414(a1))
  {
    sub_1000FA398(a1);
  }

  return 0;
}

void *AAMagicInputStreamOpen(void *a1, size_t a2, void *a3, size_t *a4)
{
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x18uLL);
  v10 = v9;
  if (!v8 || !v9)
  {
    v11 = *__error();
    v14 = "malloc";
    v15 = 552;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AAMagicInputStreamOpen", v15, 17, v11, v14, v12, v13, v21);
    free(v8);
    free(v10);
    return 0;
  }

  memset_s(v9, 0x18uLL, 0, 0x18uLL);
  *v10 = a1;
  if (a2 >= 0x2000000001)
  {
    *__error() = 12;
    v10[2] = 0;
LABEL_10:
    v11 = *__error();
    v14 = "malloc";
    v15 = 558;
    goto LABEL_11;
  }

  v16 = malloc(a2);
  v10[2] = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = a1[2];
  if (!v17 || (v18 = v17(*a1, v16, a2), (v18 & 0x8000000000000000) != 0))
  {
    v14 = "reading magic bytes\n";
    v15 = 562;
    v11 = 0;
    goto LABEL_11;
  }

  v19 = v18;
  v10[1] = v18;
  memcpy(a3, v10[2], v18);
  *a4 = v19;
  *v8 = v10;
  v8[1] = sub_100118D10;
  v8[2] = sub_100118D44;
  v8[7] = sub_100118E58;
  return v8;
}

uint64_t sub_100118D10(void **a1)
{
  free(a1[2]);
  free(a1);
  return 0;
}

uint64_t sub_100118D44(uint64_t **a1, char *__dst, size_t a3)
{
  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    do
    {
      if (v6 >= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = v6;
      }

      memcpy(__dst, a1[2], v8);
      v9 = a1[1];
      if (v9 > v8)
      {
        memmove(a1[2], a1[2] + v8, v9 - v8);
        v9 = a1[1];
      }

      __dst += v8;
      v3 -= v8;
      v7 += v8;
      v6 = (v9 - v8);
      a1[1] = v6;
      if (v6)
      {
        v10 = v3 == 0;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
    if (!v3)
    {
      return v7;
    }

    v11 = (*a1)[2];
    if (v11)
    {
      v12 = v11(**a1, __dst, v3);
      if (v12 < 0)
      {
        return v12;
      }

      v7 += v12;
      return v7;
    }

    return -1;
  }

  v13 = (*a1)[2];
  if (!v13)
  {
    return -1;
  }

  v14 = **a1;

  return v13(v14);
}

void **sub_100118E58(void **result)
{
  v1 = (*result)[7];
  if (v1)
  {
    return v1(**result);
  }

  return result;
}

void *AATeeOutputStreamOpen(uint64_t a1, uint64_t a2)
{
  v4 = calloc(1uLL, 0x68uLL);
  v5 = malloc(0x10uLL);
  v6 = v5;
  if (v5 && (memset_s(v5, 0x10uLL, 0, 0x10uLL), v4))
  {
    *v6 = a1;
    v6[1] = a2;
    *v4 = v6;
    v4[1] = sub_100118F60;
    v4[3] = sub_100118F7C;
    v4[5] = sub_100119088;
    v4[7] = sub_1001191B4;
  }

  else
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AATeeOutputStreamOpen", 591, 17, *v7, "malloc", v8, v9, v11);
    free(v4);
    free(v6);
    return 0;
  }

  return v4;
}

uint64_t sub_100118F7C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (*(*a1 + 24))
  {
    v7 = 0;
    if (!a3)
    {
      if (*(a1[1] + 24))
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      goto LABEL_20;
    }

    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = (*(v6 + 24))(*v6, v8, v9);
      if (v10 < 1)
      {
        break;
      }

      v8 += v10;
      v7 += v10;
      v9 -= v10;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    v7 = v10;
  }

  else
  {
    v7 = -1;
  }

LABEL_12:
  v12 = a1[1];
  if (*(v12 + 24))
  {
    v11 = 0;
    if (a3)
    {
      v13 = a3;
      while (1)
      {
        v14 = (*(v12 + 24))(*v12, v4, v13);
        if (v14 < 1)
        {
          break;
        }

        v4 += v14;
        v11 += v14;
        v13 -= v14;
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v11 = v14;
    }
  }

  else
  {
    v11 = -1;
  }

LABEL_20:
  if (v11 == a3 && v7 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_100119088(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = *a1;
  if (*(*a1 + 40))
  {
    v9 = 0;
    if (!a3)
    {
      if (*(a1[1] + 40))
      {
        v14 = 0;
      }

      else
      {
        v14 = -1;
      }

      goto LABEL_20;
    }

    v10 = a2;
    v11 = a4;
    v12 = a3;
    while (1)
    {
      v13 = (*(v8 + 40))(*v8, v10, v12, v11);
      if (v13 < 1)
      {
        break;
      }

      v10 += v13;
      v9 += v13;
      v11 += v13;
      v12 -= v13;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v9 = v13;
  }

  else
  {
    v9 = -1;
  }

LABEL_12:
  v15 = a1[1];
  if (*(v15 + 40))
  {
    v14 = 0;
    if (a3)
    {
      v16 = a3;
      while (1)
      {
        v17 = (*(v15 + 40))(*v15, v6, v16, v4);
        if (v17 < 1)
        {
          break;
        }

        v6 += v17;
        v14 += v17;
        v4 += v17;
        v16 -= v17;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      v14 = v17;
    }
  }

  else
  {
    v14 = -1;
  }

LABEL_20:
  if (v14 == a3 && v9 == a3)
  {
    return a3;
  }

  else
  {
    return -1;
  }
}

void **sub_1001191B4(void **result)
{
  v1 = result;
  v2 = (*result)[7];
  if (v2)
  {
    result = v2(**result);
  }

  v3 = v1[1];
  v4 = v3[7];
  if (v4)
  {
    v5 = *v3;

    return v4(v5);
  }

  return result;
}

AAByteStream AACustomByteStreamOpen(void)
{
  v0 = calloc(1uLL, 0x68uLL);
  if (!v0)
  {
    v1 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteStream.c", "AACustomByteStreamOpen", 619, 17, *v1, "malloc", v2, v3, v5);
  }

  return v0;
}

uint64_t *AEADecryptToFileAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  strcpy(v30, ".tmp_decrypt");
  memset(&v29, 0, sizeof(v29));
  v12 = malloc(0x898uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x898uLL, 0, 0x898uLL);
    v14 = malloc(0x38uLL);
    v15 = v14;
    if (v14)
    {
      memset_s(v14, 0x38uLL, 0, 0x38uLL);
      *(v13 + 8) = a2;
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      *(v13 + 2084) = -1;
      *(v13 + 2080) = a5 >> 62;
      if (pthread_mutex_init((v13 + 2136), 0))
      {
        v18 = "MutexInit";
        v19 = 290;
      }

      else if (strlen(a1) - 1012 > 0xFFFFFFFFFFFFFBFELL)
      {
        __strlcpy_chk();
        __strlcpy_chk();
        __strlcat_chk();
        v25 = stat((v13 + 32), &v29);
        if (v25 || (v29.st_mode & 0xF000) == 0x8000)
        {
          v26 = stat((v13 + 1056), &v29);
          if (v26 || (v29.st_mode & 0xF000) == 0x8000)
          {
            if (v26 | v25)
            {
              v27 = AEADecryptAsyncStreamOpen(v13, sub_100119660, sub_1001198EC, sub_100119B6C, a5, a6);
              *v13 = v27;
              if (v27)
              {
                *v15 = v13;
                v15[1] = sub_100119D68;
                v15[4] = sub_100119EEC;
                v15[2] = sub_100119EF4;
                v15[3] = sub_100119EFC;
                return v15;
              }

              v18 = "creating DecryptAsyncStream";
              v19 = 313;
            }

            else
            {
              v28 = v13 + 32;
              v18 = "Both file and temp file exist: %s";
              v19 = 309;
            }
          }

          else
          {
            v28 = v13 + 32;
            v18 = "Temp file exists but is not a regular file: %s";
            v19 = 306;
          }
        }

        else
        {
          v28 = v13 + 32;
          v18 = "File exists but is not a regular file: %s";
          v19 = 301;
        }
      }

      else
      {
        v28 = a1;
        v18 = "Filename is too long: %s";
        v19 = 293;
      }

      v23 = 0;
    }

    else
    {
      v23 = *__error();
      v18 = "malloc";
      v19 = 281;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", v19, 98, v23, v18, v16, v17, v28);
  }

  else
  {
    v20 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileAsyncStreamOpen", 279, 98, *v20, "malloc", v21, v22, v28);
    v15 = 0;
  }

  sub_100119D68(v13);
  free(v15);
  return 0;
}

uint64_t sub_100119660(uint64_t a1, AEAContext context, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v20, 0, sizeof(v20));
  v10 = *(a1 + 16);
  if (v10 && (v10(*(a1 + 8), context) & 0x80000000) != 0)
  {
    v11 = "Client context callback returned an error";
    v12 = 58;
    goto LABEL_9;
  }

  if (!*(a1 + 2096))
  {
    result = 0;
    *(a1 + 2096) = 1;
    return result;
  }

  if ((*(a1 + 2084) & 0x80000000) == 0 || (*(a1 + 2088) & 0x80000000) == 0)
  {
    v11 = "Invalid state, file already open";
    v12 = 64;
LABEL_9:
    v14 = 0;
LABEL_10:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "setupContext", v12, 98, v14, v11, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2104) = AEAContextGetFieldUInt(context, 0xDu);
  *(a1 + 2112) = AEAContextGetFieldUInt(context, 4u);
  if (!stat((a1 + 32), &v20) && (v20.st_mode & 0xF000) == 0x8000)
  {
    if (v20.st_size && v20.st_size != *(a1 + 2104))
    {
      v19 = a1 + 32;
      v11 = "Destination file exists and size doesn't match: %s";
      v12 = 77;
      goto LABEL_9;
    }

    rename((a1 + 32), (a1 + 1056), v15);
    if (v16)
    {
      v14 = *__error();
      v19 = a1 + 32;
      v11 = "rename: %s";
      v12 = 82;
      goto LABEL_10;
    }

    if (*(a1 + 2080))
    {
      fprintf(__stderrp, "Verifying file: %s\n", (a1 + 32));
    }
  }

  if (stat((a1 + 1056), &v20) || (v20.st_mode & 0xF000) != 0x8000)
  {
    *(a1 + 2088) = open((a1 + 1056), 1537, 420);
    *(a1 + 2092) = 1;
    v17 = *(a1 + 2084);
  }

  else
  {
    v17 = open((a1 + 1056), 0);
    *(a1 + 2084) = v17;
  }

  v18 = *(a1 + 2088);
  if (v17 < 0)
  {
    if (v18 < 0)
    {
      v14 = *__error();
      v19 = a1 + 32;
      v11 = "open: %s";
      v12 = 98;
      goto LABEL_10;
    }
  }

  else if (v18 < 0)
  {
    return 0;
  }

  result = ftruncate(v18, *(a1 + 2104));
  if (result)
  {
    v14 = *__error();
    v19 = a1 + 32;
    v11 = "truncate to final size: %s";
    v12 = 101;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1001198EC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 2092))
  {
    v11 = *(a1 + 2112);
    if (v11 < a2)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 117, 98, 0, "Invalid segment size", a7, a8, v31);
      return 0xFFFFFFFFLL;
    }

    v33 = 0;
    memset(v32, 0, sizeof(v32));
    if (v11 < 0x2000000001)
    {
      v12 = malloc(v11);
      if (v12)
      {
        v21 = 0;
        while (a2 > v21)
        {
          v22 = pread(*(a1 + 2084), v12 + v21, a2 - v21, v21 + a3);
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = 5;
          }

          v21 += v22 & ~(v22 >> 63);
          if (v22 < 0)
          {
            v23 = 4;
          }

          if (v23)
          {
            if (v23 == 4)
            {
              goto LABEL_21;
            }

            break;
          }
        }

        if (v21 == a2)
        {
          v24 = sub_1000FB1CC(v32, a4, v12, a2, v17, v18, v19, v20);
          v8 = 0;
          if (v24 < 0 || LODWORD(v32[0]) != a6)
          {
            goto LABEL_22;
          }

          if (!memcmp(v32 + 4, a5, a6))
          {
            atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
            v27 = *(a1 + 24);
            if (v27 && ((v28 = *(a1 + 2104)) == 0 ? (v25.n128_u64[0] = 0) : (v25.n128_f32[0] = (*(a1 + 2128) * 100.0) / v28), (v27(*(a1 + 8), v25) & 0x80000000) != 0))
            {
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "verifySegment", 144, 98, 0, "Client progress callback reported an error", v29, v30, v31);
              v8 = 0xFFFFFFFFLL;
            }

            else
            {
              if (*(a1 + 2080) >= 3u)
              {
                fprintf(__stderrp, "Segment verified: offset=%llu size=%zu\n", a3, a2);
              }

              v8 = 1;
            }

            goto LABEL_22;
          }
        }
      }

LABEL_21:
      v8 = 0;
    }

    else
    {
      v12 = 0;
      v8 = 0;
      *__error() = 12;
    }

LABEL_22:
    free(v12);
    return v8;
  }

  return 0;
}

uint64_t sub_100119B6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*(a1 + 2088) & 0x80000000) == 0)
  {
LABEL_2:
    v13 = 0;
    do
    {
      v14 = v13;
      if (a2 <= v13)
      {
        break;
      }

      v15 = pwrite(*(a1 + 2088), (a4 + v13), a2 - v13, v13 + a3);
      v13 = v15 + v14;
    }

    while (v15 > 0);
    if (a2 == v14)
    {
      atomic_fetch_add_explicit((a1 + 2128), a2, memory_order_relaxed);
      if (*(a1 + 2080) >= 3u)
      {
        fprintf(__stderrp, "Segment processed: offset=%llu size=%zu\n", a3, a2);
      }
    }

    else
    {
      atomic_fetch_add_explicit((a1 + 2120), a2, memory_order_relaxed);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 181, 98, 0, "Segment write failed: offset=%llu size=%zu\n", a8, a9, a3);
    }

    v18 = *(a1 + 24);
    if (!v18)
    {
      return 0;
    }

    v19 = *(a1 + 2104);
    if (v19)
    {
      a5.n128_f32[0] = (*(a1 + 2128) * 100.0) / v19;
    }

    else
    {
      a5.n128_u64[0] = 0;
    }

    if ((v18(*(a1 + 8), a5) & 0x80000000) == 0)
    {
      return 0;
    }

    v16 = "Client progress callback reported an error";
    v17 = 190;
    goto LABEL_22;
  }

  if (pthread_mutex_lock((a1 + 2136)))
  {
    v16 = "MutexInit";
    v17 = 165;
  }

  else
  {
    if ((*(a1 + 2088) & 0x80000000) != 0)
    {
      *(a1 + 2088) = open((a1 + 1056), 2);
    }

    if (!pthread_mutex_unlock((a1 + 2136)))
    {
      if ((*(a1 + 2088) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", 168, 98, 0, "Can't reopen %s for writing", a8, a9, a1 + 32);
        return 0xFFFFFFFFLL;
      }

      goto LABEL_2;
    }

    v16 = "MutexUnlock";
    v17 = 167;
  }

LABEL_22:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "processSegment", v17, 98, 0, v16, a8, a9, v21);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100119D68(uint64_t a1)
{
  if (a1)
  {
    v4 = AAAsyncByteStreamClose(*a1);
    if ((v4 & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 207, 98, 0, "Async stream reported errors", v2, v3, v18);
    }

    pthread_mutex_destroy((a1 + 2136));
    v7 = atomic_load((a1 + 2128));
    v8 = atomic_load((a1 + 2120));
    if (!v4)
    {
      if (v7 == *(a1 + 2104) && v8 == 0)
      {
        v4 = 0;
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 216, 98, 0, "Some segments failed to process", v5, v6, v18);
        v4 = 0xFFFFFFFFLL;
      }
    }

    v10 = *(a1 + 2084);
    if (v10 < 0)
    {
      v12 = *(a1 + 2088);
      if (v12 < 0)
      {
        if (v4)
        {
          goto LABEL_24;
        }

        goto LABEL_21;
      }
    }

    else
    {
      close(v10);
      v12 = *(a1 + 2088);
      if (v12 < 0)
      {
        if (!v4)
        {
LABEL_18:
          rename((a1 + 1056), (a1 + 32), v11);
          if (v13)
          {
            v14 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "decryptToFileAsyncClose", 227, 98, *v14, "rename: %s", v15, v16, a1 + 32);
            v4 = 0xFFFFFFFFLL;
            goto LABEL_24;
          }

LABEL_21:
          if (*(a1 + 2080) >= 2u)
          {
            fprintf(__stderrp, "Decrypted file: %s\n", (a1 + 32));
          }

          v4 = 0;
        }

LABEL_24:
        free(a1);
        return v4;
      }
    }

    close(v12);
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t AEADecryptToFileChunkAsyncStreamOpen(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8)
{
  v12 = AEADecryptToFileAsyncStreamOpen(a1, a2, a3, a4, a7 | 0x200000000000000, a8);
  if (v12)
  {

    return sub_1000DEB6C(v12, a5, a6, a7, a8);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADecryptToFileAsyncStream.c", "AEADecryptToFileChunkAsyncStreamOpen", 349, 98, 0, "AEADecryptToFileAsyncStreamOpen", v13, v14, v16);
    return 0;
  }
}

char *sub_100119FA4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483688[a1];
  }
}

char *sub_100119FC4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1004836C0[a1];
  }
}

unint64_t sub_100119FE4(unsigned int a1)
{
  v1 = 0x2D62653466787AuLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

uint64_t sub_10011A010(uint64_t result)
{
  if (result >= 7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

char *sub_10011A01C(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1004836F8[a1];
  }
}

void *sub_10011A03C()
{
  v0 = calloc(1uLL, 0x28uLL);
  if (!v0)
  {
    v1 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableCreate", 30, 35, *v1, "malloc", v2, v3, v5);
  }

  return v0;
}

void **sub_10011A09C(unsigned int *a1)
{
  v2 = calloc(1uLL, 0x28uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableClone", 38, 35, *v7, "malloc", v8, v9, v11);
    goto LABEL_7;
  }

  if (a1)
  {
    if ((sub_10011A15C(v2, a1[1]) & 0x80000000) == 0 && (sub_1000E05D0((v3 + 2), *(a1 + 2)) & 0x80000000) == 0)
    {
      v4 = *a1;
      *v3 = v4;
      memcpy(v3[1], *(a1 + 1), 16 * v4);
      v6 = *(a1 + 3);
      v5 = *(a1 + 4);
      v3[3] = v6;
      memcpy(v3[4], v5, v6);
      return v3;
    }

LABEL_7:
    sub_10011A1FC(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_10011A15C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  if (v3)
  {
    v5 = v3 + (v3 >> 1);
  }

  else
  {
    v5 = 32;
  }

  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(a1 + 4) = v5;
  v6 = reallocf(*(a1 + 8), 16 * v5);
  *(a1 + 8) = v6;
  if (v6)
  {
    return 0;
  }

  v8 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "stringTableReserve", 23, 35, *v8, "malloc", v9, v10, v2);
  return 0xFFFFFFFFLL;
}

void sub_10011A1FC(void **a1)
{
  if (a1)
  {
    sub_1000E0670((a1 + 2));
    free(a1[1]);

    free(a1);
  }
}

uint64_t sub_10011A248(uint64_t result)
{
  *(result + 24) = 0;
  *result = 0;
  return result;
}

uint64_t sub_10011A254(unsigned int *a1, const void *a2, size_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    *a4 = *a1;
  }

  if (HIDWORD(a3))
  {
    v11 = "string too long for StringTable";
    v12 = 74;
  }

  else if (sub_10011A15C(a1, *a1 + 1))
  {
    v11 = "increasing string table capacity";
    v12 = 77;
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    if (!sub_1000E0518((a1 + 4), 0, a3 + 1, v17))
    {
      v14 = *(a1 + 1) + 16 * *a1;
      v15 = v17[0];
      *v14 = v17[0];
      *(v14 + 8) = a3;
      v16 = (*(a1 + 4) + v15);
      memcpy(v16, a2, a3);
      result = 0;
      *(v16 + a3) = 0;
      ++*a1;
      return result;
    }

    v11 = "insertion failed in string table";
    v12 = 81;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppend", v12, 35, 0, v11, a7, a8, v17[0]);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10011A384(unsigned int *a1, const char *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  bzero(__s, 0x800uLL);
  v5 = fopen(a2, "r");
  if (!v5)
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendFile", 104, 35, *v16, "%s", v17, v18, a2);
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (!fgets(__s, 2048, v5))
  {
LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v7 = strlen(__s);
    if (v7)
    {
      break;
    }

    __s[0] = 0;
LABEL_14:
    if (!fgets(__s, 2048, v6))
    {
      goto LABEL_15;
    }
  }

  v12 = v7;
  v13 = v7 - 1;
  v14 = __s[v7 - 1];
  if ((v14 & 0x80000000) == 0)
  {
    if ((_DefaultRuneLocale.__runetype[v14] & 0x4000) != 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    __s[v12] = 0;
    v13 = v12;
    goto LABEL_13;
  }

  if (!__maskrune(v14, 0x4000uLL))
  {
    goto LABEL_12;
  }

LABEL_8:
  __s[v13] = 0;
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_10011A254(a1, __s, v13, 0, v8, v9, v10, v11) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  v15 = 0xFFFFFFFFLL;
LABEL_18:
  fclose(v6);
  return v15;
}

uint64_t sub_10011A514(unsigned int *a1, CFArrayRef theArray, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  Count = CFArrayGetCount(theArray);
  v6 = Count;
  if (!Count)
  {
    return 0;
  }

  if (sub_10011A15C(a1, *a1 + Count))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendArray", 133, 35, 0, "increasing string table capacity", v7, v8, v23);
    return 0xFFFFFFFFLL;
  }

  else
  {
    bzero(buffer, 0x800uLL);
    v10 = 0;
    v11 = v6;
    v12 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      if (!ValueAtIndex || !CFStringGetCString(ValueAtIndex, buffer, 2048, 0x8000100u))
      {
        v21 = "invalid string";
        v22 = 139;
        goto LABEL_15;
      }

      v16 = strlen(buffer);
      if ((sub_10011A254(a1, buffer, v16, 0, v17, v18, v19, v20) & 0x80000000) != 0)
      {
        break;
      }

      v12 = ++v10 < v11;
      if (v11 == v10)
      {
        v12 = 0;
        return (v12 << 31 >> 31);
      }
    }

    v21 = "inserting string";
    v22 = 140;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendArray", v22, 35, 0, v21, v14, v15, v23);
    return (v12 << 31 >> 31);
  }
}

uint64_t sub_10011A6AC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = *a1;
  }

  if (!*a2)
  {
    return 0;
  }

  if (sub_10011A15C(a1, *a1 + *a2))
  {
    v7 = "increasing string table capacity";
    v8 = 152;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableAppendTable", v8, 35, 0, v7, v5, v6, v15[0]);
    return 0xFFFFFFFFLL;
  }

  v15[0] = 0;
  v15[1] = 0;
  if (sub_1000E0518(a1 + 16, *(a2 + 4), *(a2 + 3), v15))
  {
    v7 = "increasing blob capacity failed";
    v8 = 156;
    goto LABEL_9;
  }

  if (*a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 8);
    do
    {
      v13 = v11 + *a1;
      *(v12 + 16 * v13) = *(*(a2 + 1) + v10);
      v12 = *(a1 + 8);
      *(v12 + 16 * v13) += v15[0];
      ++v11;
      v14 = *a2;
      v10 += 16;
    }

    while (v11 < v14);
  }

  else
  {
    LODWORD(v14) = 0;
  }

  result = 0;
  *a1 += v14;
  return result;
}

size_t sub_10011A7DC(unsigned int *a1, void *a2)
{
  result = *a1;
  if (result)
  {
    if (a2)
    {
      v5 = calloc(result, 4uLL);
      if (!v5)
      {
        v19 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableSort", 195, 35, *v19, "malloc", v20, v21, v22);
        return 0xFFFFFFFFLL;
      }

      v6 = v5;
      *a2 = v5;
      v7 = *a1;
      if (v7)
      {
        v8 = 0;
        v9 = vdupq_n_s64(v7 - 1);
        v10 = xmmword_10037C710;
        v11 = xmmword_1003772E0;
        v12 = (*(a1 + 1) + 44);
        v13 = vdupq_n_s64(4uLL);
        do
        {
          v14 = vmovn_s64(vcgeq_u64(v9, v11));
          if (vuzp1_s16(v14, *v9.i8).u8[0])
          {
            *(v12 - 8) = v8;
          }

          if (vuzp1_s16(v14, *&v9).i8[2])
          {
            *(v12 - 4) = v8 + 1;
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
          {
            *v12 = v8 + 2;
            v12[4] = v8 + 3;
          }

          v8 += 4;
          v10 = vaddq_s64(v10, v13);
          v11 = vaddq_s64(v11, v13);
          v12 += 16;
        }

        while (((v7 + 3) & 0x1FFFFFFFCLL) != v8);
      }
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = result;
    }

    qsort_r(*(a1 + 1), v7, 0x10uLL, a1, sub_10011A9EC);
    if (*a1 < 2)
    {
      v17 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      v17 = 1;
      do
      {
        v18 = *(a1 + 1);
        if (!strcmp((*(a1 + 4) + *(v18 + 16 * (v17 - 1))), (*(a1 + 4) + *(v18 + v15 + 16))))
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17 - 1;
          }
        }

        else
        {
          if (v6)
          {
            v6[*(v18 + v15 + 28)] = v17;
          }

          if (v16 != v17)
          {
            *(v18 + 16 * v17) = *(v18 + v15 + 16);
          }

          ++v17;
        }

        ++v16;
        v15 += 16;
      }

      while (v16 < *a1);
    }

    result = 0;
    *a1 = v17;
  }

  return result;
}

uint64_t sub_10011AA04(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);

  return sub_10011AA5C(a1, __s, v6, a3);
}

uint64_t sub_10011AA5C(uint64_t a1, char *__s1, size_t a3, unsigned int *a4)
{
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 8);
  v10 = *(v9 + 8);
  v11 = strncmp(__s1, (*(a1 + 32) + *v9), a3);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    result = 0;
    if (!a4)
    {
      return result;
    }

    v13 = -1;
    goto LABEL_8;
  }

  if (v10 > a3)
  {
    goto LABEL_6;
  }

  if (v10 >= a3)
  {
    result = 1;
    if (!a4)
    {
      return result;
    }

    v13 = 0;
    goto LABEL_8;
  }

LABEL_11:
  v13 = v5 - 1;
  v14 = sub_10011AD60(a1, v13, __s1, a3);
  if (v14 >= 1)
  {
    result = 0;
    if (!a4)
    {
      return result;
    }

LABEL_8:
    *a4 = v13;
    return result;
  }

  if (v14)
  {
    if (v13 < 2)
    {
      v15 = 0;
LABEL_28:
      result = 0;
      v13 = v15;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = 0;
      while (1)
      {
        v16 = sub_10011AD60(a1, v15 + ((v13 - v15) >> 1), __s1, a3);
        if (!v16)
        {
          break;
        }

        if (v16 < 0)
        {
          v13 = v15 + ((v13 - v15) >> 1);
        }

        else
        {
          v15 += (v13 - v15) >> 1;
        }

        if (v15 + 1 >= v13)
        {
          goto LABEL_28;
        }
      }

      result = 1;
      v13 = v15 + ((v13 - v15) >> 1);
      if (a4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    result = 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011ABA4(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (sub_10011AA5C(a1, __s, v4, 0))
  {
    return 1;
  }

  if (v4)
  {
    v6 = v4 - 1;
    while (__s[v6] != 47 || !sub_10011AA5C(a1, __s, v6, 0))
    {
      if (--v6 == -1)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

__CFArray *sub_10011AC40(unsigned int *a1, CFAllocatorRef allocator, CFStringEncoding a3)
{
  Mutable = CFArrayCreateMutable(allocator, *a1, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    if (*a1)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = CFStringCreateWithCString(allocator, (*(a1 + 4) + *(*(a1 + 1) + v9)), a3);
        if (!v11)
        {
          break;
        }

        v14 = v11;
        CFArrayAppendValue(Mutable, v11);
        CFRelease(v14);
        ++v10;
        v9 += 16;
        if (v10 >= *a1)
        {
          return Mutable;
        }
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableGetCFArray", 330, 35, 0, "CFStringCreateWithCString", v12, v13, v16);
      CFRelease(Mutable);
      return 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/StringTable.c", "StringTableGetCFArray", 323, 35, 0, "CFArrayCreateMutable failed", v6, v7, v16);
  }

  return Mutable;
}

uint64_t sub_10011AD60(uint64_t a1, unsigned int a2, char *__s1, size_t __n)
{
  v5 = *(a1 + 8) + 16 * a2;
  v6 = *(v5 + 8);
  LODWORD(result) = strncmp(__s1, (*(a1 + 32) + *v5), __n);
  if (v6 <= __n)
  {
    v8 = v6 < __n;
  }

  else
  {
    v8 = -1;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t ParallelCompressionEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v8 = *(a1 + 4);
  LODWORD(v15) = *a1;
  v14 = *(a1 + 16);
  v12[1] = 0;
  v13 = v8;
  v12[0] = *(a1 + 8);
  v9 = *(a1 + 40);
  v11[0] = *(a1 + 24);
  v11[1] = v9;
  v11[2] = *(a1 + 56);
  return PCompressFilter(v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t ParallelCompressionDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0u;
  v13 = 0u;
  v8 = *(a1 + 4);
  DWORD2(v13) = *a1;
  DWORD1(v12) = 1;
  DWORD2(v12) = v8;
  v9 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v9;
  v11[2] = *(a1 + 40);
  return PCompressFilter(&v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t (*sub_10011AE74(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483730[a1];
  }
}

uint64_t (*sub_10011AE94(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_100483768[a1];
  }
}

uint64_t sub_10011AEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc(*(a1 + 28));
    if (!v9)
    {
      v10 = "creating workBuffer";
      v11 = 66;
LABEL_25:
      v21 = 0;
LABEL_26:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCGenerateThreadProc", v11, 64, v21, v10, a7, a8, v23);
      goto LABEL_27;
    }
  }

  for (i = *(a1 + 8); i < *(a1 + 16); ++i)
  {
    v13 = *(a1 + 28);
    v14 = i * v13;
    v15 = *(a1 + 64);
    if (v15 < i * v13)
    {
      v10 = "Invalid block index";
      v11 = 74;
      goto LABEL_25;
    }

    if (v14 + v13 <= v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = (v15 - v14);
    }

    v17 = *(a1 + 40);
    if (v17 < 0)
    {
      v19 = *(a1 + 48) + v14;
    }

    else
    {
      v18 = pread(v17, v9, v16, *(a1 + 56) + v14);
      if (v18 < 0)
      {
        v21 = *__error();
        v10 = "reading data segment";
        v11 = 82;
        goto LABEL_26;
      }

      v19 = v9;
      if (v16 != v18)
      {
        LOBYTE(v23) = v18;
        v10 = "Truncated read n=%zd pos=%llu read=%llu %s";
        v11 = 83;
        goto LABEL_25;
      }
    }

    v20 = *(a1 + 32);
    if (i * v20 + v20 > *(a1 + 80))
    {
      v10 = "Parity buffer out of range";
      v11 = 94;
      goto LABEL_25;
    }

    if (*(a1 + 24) != 1)
    {
      v23 = *(a1 + 24);
      v10 = "invalid variant %u";
      v11 = 101;
      goto LABEL_25;
    }

    if (sub_1000E6078(v16, v19, *(a1 + 72) + i * v20))
    {
      LOBYTE(v23) = i;
      v10 = "generating parity block %llu\n";
      v11 = 99;
      goto LABEL_25;
    }
  }

LABEL_27:
  free(v9);
  return 0;
}

uint64_t sub_10011B0C8(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2].i32[2] < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = malloc(a1[1].u32[3]);
    if (!v9)
    {
      v10 = "creating workBuffer";
      v11 = 157;
LABEL_32:
      v26 = 0;
LABEL_33:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ECCFixThreadProc", v11, 64, v26, v10, a7, a8, v28);
      goto LABEL_34;
    }
  }

  v12 = a1->u64[1];
  if (v12 < a1[1].i64[0])
  {
    v29 = vdupq_n_s64(1uLL).u64[0];
    do
    {
      v13 = a1[1].u32[3];
      v14 = v12 * v13;
      v15 = a1[4].u64[0];
      if (v15 < v12 * v13)
      {
        v10 = "Invalid block index";
        v11 = 166;
        goto LABEL_32;
      }

      if (v14 + v13 <= v15)
      {
        v16 = v13;
      }

      else
      {
        v16 = (v15 - v14);
      }

      v17 = a1[2].i32[2];
      if (v17 < 0)
      {
        v19 = a1[3].i64[0] + v14;
      }

      else
      {
        v18 = pread(v17, v9, v16, a1[3].i64[1] + v14);
        if (v18 < 0)
        {
          v26 = *__error();
          v10 = "reading data segment";
          v11 = 174;
          goto LABEL_33;
        }

        v19 = v9;
        if (v16 != v18)
        {
          LOBYTE(v28) = v18;
          v10 = "Truncated read n=%zd pos=%llu read=%u fd=%d";
          v11 = 175;
          goto LABEL_32;
        }
      }

      v20 = a1[2].u32[0];
      if (v12 * v20 + v20 > a1[5].i64[0])
      {
        v10 = "Parity buffer out of range";
        v11 = 187;
        goto LABEL_32;
      }

      if (a1[1].i32[2] != 1)
      {
        v28 = a1[1].i32[2];
        v10 = "invalid variant %u";
        v11 = 205;
        goto LABEL_32;
      }

      v30 = 0;
      v21 = sub_1000E6324(v16, v19, (a1[4].i64[1] + v12 * v20), &v30);
      if (v21 < 0)
      {
        ++a1[5].i64[1];
      }

      else if (v21)
      {
        v22.i64[0] = v29;
        v23 = v30;
        v22.i64[1] = HIDWORD(v30);
        a1[6] = vaddq_s64(a1[6], v22);
        a1[7].i64[0] += v23;
        v24 = a1[2].i32[2];
        if ((v24 & 0x80000000) == 0)
        {
          v25 = pwrite(v24, v9, v16, a1[3].i64[1] + v14);
          if (v25 < 0)
          {
            v26 = *__error();
            v10 = "writing data segment";
            v11 = 211;
            goto LABEL_33;
          }

          if (v16 != v25)
          {
            LOBYTE(v28) = v25;
            v10 = "Truncated write n=%zd pos=%llu read=%u fd=%d";
            v11 = 212;
            goto LABEL_32;
          }
        }
      }

      ++v12;
    }

    while (v12 < a1[1].i64[0]);
  }

LABEL_34:
  free(v9);
  return 0;
}

unint64_t sub_10011B388(int a1, char *a2, off_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v14 = a7[1];
  if (!v14)
  {
    v14 = sub_1000F4290();
  }

  v15 = a7[4];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x4000;
  }

  v17 = *a7;
  v79 = 0uLL;
  v80 = 0;
  v77 = 0uLL;
  v78 = 0;
  v18 = sub_1000F4248();
  ParallelCompressionEnterThreadErrorContext_0(v19, v20, v21, v22, v23, v24, v25, v26, v66);
  if (a7[3] != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 262, 64, 0, "Invalid ECC variant: %u", v27, v28, a7[3]);
    goto LABEL_10;
  }

  if (v16 >= 0x1FFE1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 258, 64, 0, "Invalid blockSize: %u", v27, v28, v16);
LABEL_10:
    v29 = 0;
LABEL_11:
    v30 = 0;
LABEL_12:
    v31 = 1;
    goto LABEL_13;
  }

  v74 = a2;
  v75 = a3;
  v37 = (a4 + v16 - 1) / v16;
  v29 = 34 * v37 + 48;
  if (!a5 && !a6)
  {
    v31 = 0;
    v30 = 0;
    goto LABEL_13;
  }

  if (v29 > a6)
  {
    v67 = 34 * v37 + 48;
    v38 = "Output buffer too small, %zu B required, %zu B provided";
    v39 = 273;
LABEL_31:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", v39, 64, 0, v38, v27, v28, v67);
    goto LABEL_11;
  }

  if (v37 >= v14)
  {
    v40 = v14;
  }

  else
  {
    v40 = (a4 + v16 - 1) / v16;
  }

  if (v40 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = v40;
  }

  if (a1 < 0)
  {
    if ((sub_1000F6224(v74, a4, &v79) & 0x80000000) != 0)
    {
      v38 = "computing buffer digest";
      v39 = 287;
      goto LABEL_31;
    }
  }

  else if ((sub_1000F6584(a1, v75, a4, &v79) & 0x80000000) != 0)
  {
    v38 = "computing file digest";
    v39 = 283;
    goto LABEL_31;
  }

  v42 = (v37 + v41 - 1) / v41;
  v70 = v17;
  v69 = v41;
  if (v17 >= 1)
  {
    memset(v76, 0, sizeof(v76));
    sub_1000F4310(v76, &v79);
    fwrite("ParallelArchiveECCGenerateCommon:\n", 0x22uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "  Input data SHA1: %s\n", v76);
    fwrite("  ECC variant: ", 0xFuLL, 1uLL, __stderrp);
    if (a7[3] == 1)
    {
      fwrite("RS65537\n", 8uLL, 1uLL, __stderrp);
    }

    fprintf(__stderrp, "%12llu data size\n", a4);
    fprintf(__stderrp, "%12u block size\n", v16);
    fprintf(__stderrp, "%12u ECC parity size per block\n", 34);
    fprintf(__stderrp, "%11.2f%% parity/data ratio\n", 3400.0 / v16);
    fprintf(__stderrp, "%12zu block count\n", (a4 + v16 - 1) / v16);
    fprintf(__stderrp, "%12zu ECC buffer size\n", 34 * v37 + 48);
    fprintf(__stderrp, "%12u worker threads\n", v41);
    fprintf(__stderrp, "%12zu blocks per thread\n", v42);
  }

  v43 = calloc(v41, 0x58uLL);
  v44 = v41;
  v30 = v43;
  if (!v43)
  {
    v59 = v44;
    v60 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 313, 64, *v60, "malloc %u threads", v61, v62, v59);
    goto LABEL_12;
  }

  v45 = 0;
  v46 = a5;
  v47 = 0;
  v68 = v46;
  v72 = v46 + 48;
  v73 = a4;
  v48 = 88 * v44;
  v71 = 1;
  do
  {
    v49 = v42 * v47;
    if (v42 * v47 < v37)
    {
      v50 = v49 + v42;
      if (v49 + v42 >= v37)
      {
        v50 = v37;
      }

      v51 = &v30[v45];
      *(v51 + 1) = v49;
      *(v51 + 2) = v50;
      *(v51 + 10) = a1;
      *(v51 + 6) = v74;
      *(v51 + 7) = v75;
      *(v51 + 8) = v73;
      *(v51 + 9) = v72;
      *(v51 + 10) = 34 * v37;
      *(v51 + 6) = a7[3];
      *(v51 + 7) = v16;
      *(v51 + 4) = 34;
      if (sub_1000E766C(&v30[v45], sub_10011AEB4, &v30[v45], 0))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 336, 64, 0, "createThread", v52, v53, v67);
        v71 = 0;
      }
    }

    ++v47;
    v45 += 88;
  }

  while (v48 != v45);
  v54 = 0;
  LOBYTE(v31) = v71 == 0;
  while (2)
  {
    v55 = 88 * v54++;
    while (1)
    {
      v56 = *&v30[v55];
      if (v56)
      {
        if (sub_1000E79CC(v56))
        {
          break;
        }
      }

      ++v54;
      v55 += 88;
      if (v54 - v69 == 1)
      {
        v17 = v70;
        if (v31)
        {
          v31 = 1;
          a4 = v73;
          a5 = v68;
        }

        else
        {
          v31 = 0;
          v63 = v79;
          v77 = v79;
          v64 = v80;
          v78 = v80;
          v65 = a7[3];
          a5 = v68;
          a4 = v73;
          *v68 = 0x3031304343455842;
          *(v68 + 8) = v73;
          *(v68 + 16) = v63;
          *(v68 + 32) = v64;
          *(v68 + 36) = v65;
          *(v68 + 40) = v16;
          *(v68 + 44) = 0;
        }

        goto LABEL_13;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateCommon", 343, 64, 0, "joinThread", v57, v58, v67);
    v31 = 1;
    if (v54 != v69)
    {
      continue;
    }

    break;
  }

  a4 = v73;
  a5 = v68;
  v17 = v70;
LABEL_13:
  free(v30);
  v32 = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (v32 < 0)
  {
    return v32;
  }

  v33 = v17;
  if (v31)
  {
    v34 = -1;
  }

  else
  {
    v34 = v32;
  }

  if (a5 && v31 != 1 && v33 >= 1)
  {
    v35 = sub_1000F4248();
    fprintf(__stderrp, "Total time %.2fs, %.2f MB/s\n", v35 - v18, vcvtd_n_f64_u64(a4, 0x14uLL) / (v35 - v18));
    if ((v31 & 1) == 0)
    {
      return v29;
    }

    return v34;
  }

  if (v31)
  {
    return v34;
  }

  return v29;
}

uint64_t sub_10011B9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  ParallelCompressionEnterThreadErrorContext_0(a1, a2, a3, a4, a5, a6, a7, a8, v30);
  v9 = open(*a1, 0);
  if (v9 < 0)
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", 669, 64, *v16, *a1, v17, v18, v31);
    v19 = 0;
    v20 = -1;
    goto LABEL_17;
  }

  v10 = v9;
  if (fstat(v9, &v33))
  {
    v13 = *__error();
    v14 = *a1;
    v15 = 673;
LABEL_14:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", v15, 64, v13, v14, v11, v12, v31);
    v19 = 0;
LABEL_15:
    v20 = -1;
    goto LABEL_16;
  }

  if ((v33.st_mode & 0xF000) != 0x8000)
  {
    v31 = *a1;
    v14 = "Error: not a regular file: %s";
    v15 = 675;
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  st_size = v33.st_size;
  *&v32[4] = vextq_s8(vrev64q_s32(*(a1 + 16)), *(a1 + 16), 8uLL);
  *v32 = *(a1 + 32);
  v22 = sub_10011B388(v10, 0, 0, v33.st_size, 0, 0, v32);
  if ((v22 & 0x8000000000000000) != 0)
  {
    v14 = "get ECC buffer size";
    v15 = 687;
    goto LABEL_13;
  }

  v23 = v22;
  v19 = valloc(v22);
  if (!v19)
  {
    v27 = *__error();
    v28 = "malloc";
    v29 = 690;
LABEL_25:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCGenerateFile", v29, 64, v27, v28, v24, v25, v31);
    goto LABEL_15;
  }

  if (sub_10011B388(v10, 0, 0, st_size, v19, v23, v32) != v23)
  {
    v28 = "generate ECC buffer";
    v29 = 693;
LABEL_24:
    v27 = 0;
    goto LABEL_25;
  }

  if ((sub_1000F5188(*(a1 + 8), v19, v23) & 0x80000000) != 0)
  {
    v28 = "store ECC file";
    v29 = 696;
    goto LABEL_24;
  }

  v20 = 0;
LABEL_16:
  close(v10);
LABEL_17:
  free(v19);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if (result >= 0)
  {
    return v20;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10011BC6C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(&v36, 0, sizeof(v36));
  v33 = 0;
  v34 = 0;
  v35 = 0;
  ParallelCompressionEnterThreadErrorContext_0(a1, a2, a3, a4, a5, a6, a7, a8, v31);
  v10 = open(*a1, 2);
  if (v10 < 0)
  {
    v17 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 726, 64, *v17, *a1, v18, v19, v32);
    v20 = 0;
    v21 = -1;
    v22 = 1;
    goto LABEL_12;
  }

  v11 = v10;
  if (fstat(v10, &v36))
  {
    v14 = *__error();
    v15 = *a1;
    v16 = 730;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", v16, 64, v14, v15, v12, v13, v32);
    v20 = 0;
LABEL_10:
    v22 = 1;
    v21 = -1;
    goto LABEL_11;
  }

  if ((v36.st_mode & 0xF000) != 0x8000)
  {
    v32 = *a1;
    v15 = "Error: not a regular file: %s";
    v16 = 732;
    v14 = 0;
    goto LABEL_9;
  }

  st_size = v36.st_size;
  v24 = sub_100121150(*(a1 + 8), 0, 0xFFFFFFFFFFFFFFFFLL);
  v20 = v24;
  if (!v24)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCCheckAndFixFile", 737, 64, 0, "mapping ECC file", v25, v26, v32);
    goto LABEL_10;
  }

  v27 = sub_1000FE8F8(v24);
  v28 = sub_100121634(v20);
  LODWORD(v34) = *(a1 + 16);
  v33 = vrev64_s32(*(a1 + 20));
  v21 = sub_10011BEE0(v11, 0, 0, st_size, v27, v28, &v33);
  v22 = 0;
LABEL_11:
  close(v11);
LABEL_12:
  sub_1001213A4(v20);
  LODWORD(result) = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  v30 = result;
  if (result >= 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = result;
  }

  if ((v22 & 1) == 0 && (v30 & 0x80000000) == 0)
  {
    if (a2)
    {
      *a2 = HIDWORD(v35);
    }

    if (v21 >= 0x7FFFFFFF)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return v21;
    }
  }

  return result;
}

uint64_t sub_10011BEE0(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7)
{
  v14 = *(a7 + 4);
  if (!v14)
  {
    v14 = sub_1000F4290();
  }

  v85 = *a7;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v15 = sub_1000F4248();
  *(a7 + 16) = 0;
  *(a7 + 12) = 0;
  ParallelCompressionEnterThreadErrorContext_0(v16, v17, v18, v19, v20, v21, v22, v23, v76);
  v84 = a4;
  if (a6 <= 0x2F)
  {
    v26 = "Truncated ECC buffer";
    v27 = 452;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v27, 64, 0, v26, v24, v25, v77);
LABEL_10:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_11;
  }

  v28 = a5[1];
  v102 = *a5;
  v103 = v28;
  v104 = a5[2];
  if (v102 != 0x3031304343455842)
  {
    v26 = "Invalid ECC magic";
    v27 = 454;
    goto LABEL_9;
  }

  if (HIDWORD(v104))
  {
    v26 = "Invalid ECC header";
    v27 = 455;
    goto LABEL_9;
  }

  v83 = DWORD2(v104);
  if (!DWORD2(v104))
  {
    v26 = "Invalid ECC header";
    v27 = 456;
    goto LABEL_9;
  }

  if (*(&v102 + 1) != a4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 457, 64, 0, "Input buffer size mismatch: expected %llu B, got %llu B", v24, v25, SBYTE8(v102));
    goto LABEL_10;
  }

  v35 = DWORD1(v104);
  if (DWORD1(v104) != 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 476, 64, 0, "Invalid ECC variant: %u", v24, v25, SBYTE4(v104));
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
LABEL_55:
    v34 = v83;
    goto LABEL_11;
  }

  if (DWORD2(v104) >= 0x1FFE1)
  {
    v34 = DWORD2(v104);
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 472, 64, 0, "Invalid blockSize: %u", v24, v25, SBYTE8(v104));
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v35 = 1;
    goto LABEL_11;
  }

  v47 = (a4 + DWORD2(v104) - 1) / DWORD2(v104);
  v81 = 34 * v47;
  if (34 * v47 + 48 != a6)
  {
    v49 = "Invalid ECC buffer size";
    v50 = 481;
    goto LABEL_52;
  }

  if (v47 >= v14)
  {
    LODWORD(v48) = v14;
  }

  else
  {
    LODWORD(v48) = (a4 + DWORD2(v104) - 1) / DWORD2(v104);
  }

  if (v48 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v48;
  }

  __count = v48;
  v80 = (a4 + DWORD2(v104) - 1) / DWORD2(v104);
  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, a4, &v105) & 0x80000000) != 0)
    {
      v49 = "computing buffer digest";
      v50 = 495;
      goto LABEL_52;
    }
  }

  else if ((sub_1000F6584(a1, a3, a4, &v105) & 0x80000000) != 0)
  {
    v49 = "computing file digest";
    v50 = 491;
LABEL_52:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v50, 64, 0, v49, v24, v25, v77);
LABEL_53:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
LABEL_54:
    v35 = 1;
    goto LABEL_55;
  }

  v51 = (v80 + __count - 1) / __count;
  if (v85 >= 1)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    fwrite("ParallelArchiveECCFixCommon:\n", 0x1DuLL, 1uLL, __stderrp);
    sub_1000F4310(&v86, &v105);
    fprintf(__stderrp, "  Input data SHA1: %s\n", &v86);
    sub_1000F4310(&v86, &v103);
    fprintf(__stderrp, "  Expected SHA1: %s\n", &v86);
    fwrite("  ECC variant: ", 0xFuLL, 1uLL, __stderrp);
    fwrite("RS65537\n", 8uLL, 1uLL, __stderrp);
    fprintf(__stderrp, "%12llu data size\n", a4);
    fprintf(__stderrp, "%12u block size\n", v83);
    fprintf(__stderrp, "%12u ECC parity size per block\n", 34);
    fprintf(__stderrp, "%11.2f%% parity/data ratio\n", 3400.0 / v83);
    fprintf(__stderrp, "%12zu block count\n", v80);
    fprintf(__stderrp, "%12zu ECC buffer size\n", a6);
    fprintf(__stderrp, "%12u worker threads\n", __count);
    fprintf(__stderrp, "%12zu blocks per thread\n", v51);
  }

  if (v105 == v103 && v106 == *(&v103 + 1) && v107 == v104)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v29 = 1;
    goto LABEL_54;
  }

  v30 = __count;
  v54 = calloc(__count, 0x78uLL);
  if (!v54)
  {
    v67 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 526, 64, v67, "malloc %u threads", v68, v69, __count);
    goto LABEL_53;
  }

  v55 = 0;
  v56 = a5 + 3;
  v78 = v54;
  v57 = v54;
  v29 = 1;
  do
  {
    v58 = v51 * v55;
    if (v51 * v55 < v80)
    {
      v59 = v58 + v51;
      if (v58 + v51 >= v80)
      {
        v59 = v80;
      }

      *(v57 + 8) = v58;
      *(v57 + 16) = v59;
      *(v57 + 40) = a1;
      *(v57 + 48) = a2;
      *(v57 + 56) = a3;
      *(v57 + 64) = v84;
      *(v57 + 72) = v56;
      *(v57 + 80) = v81;
      *(v57 + 24) = 1;
      *(v57 + 28) = v83;
      *(v57 + 32) = 34;
      if (sub_1000E766C(v57, sub_10011B0C8, v57, 0))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 549, 64, 0, "createThread", v60, v61, v77);
        v29 = 0;
      }
    }

    ++v55;
    v57 += 120;
    --v30;
  }

  while (v30);
  v33 = 0;
  v32 = 0;
  v82 = 0;
  v62 = __count;
  v63 = v78 + 112;
  do
  {
    v64 = *(v63 - 14);
    if (v64)
    {
      if (sub_1000E79CC(v64))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", 556, 64, 0, "joinThread", v65, v66, v77);
        v29 = 0;
      }

      v33 += *(v63 - 3);
      v32 += *(v63 - 2);
      v82 += *(v63 - 1);
      v30 += *v63;
    }

    v63 += 15;
    --v62;
  }

  while (v62);
  if (v33)
  {
    goto LABEL_81;
  }

  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, v84, &v105) & 0x80000000) != 0)
    {
      v72 = "computing buffer digest";
      v73 = 574;
      goto LABEL_101;
    }
  }

  else if ((sub_1000F6584(a1, a3, v84, &v105) & 0x80000000) != 0)
  {
    v72 = "computing file digest";
    v73 = 570;
LABEL_101:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCFixCommon", v73, 64, 0, v72, v70, v71, v77);
    v29 = 0;
    v33 = 0;
LABEL_81:
    v35 = 1;
    v31 = v82;
    v34 = v83;
    goto LABEL_11;
  }

  v34 = v83;
  if (v85 >= 1)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    sub_1000F4310(&v86, &v105);
    fprintf(__stderrp, "  Output data SHA1: %s\n", &v86);
    sub_1000F4310(&v86, &v103);
  }

  if (v105 == v103 && v106 == *(&v103 + 1) && v107 == v104)
  {
    v33 = 0;
    v35 = 1;
    v31 = v82;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v35 = 1;
    v33 = v80;
  }

LABEL_11:
  result = ParallelCompressionLeaveThreadErrorContext_0(0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!v29)
  {
    return 0xFFFFFFFFLL;
  }

  v37 = 0x7FFF;
  if (v30 < 0x7FFF)
  {
    v37 = v30;
  }

  v38 = v37 << 8;
  v39 = 255;
  if (v32 < 0xFF)
  {
    v39 = v32;
  }

  v40 = v38 | v39;
  v41 = 255;
  if (v33 < 0xFF)
  {
    v41 = v33;
  }

  v42 = v38 | v41 | 0x800000;
  if (v33)
  {
    v43 = v42;
  }

  else
  {
    v43 = v40;
  }

  if (v85 <= 0)
  {
    *(a7 + 12) = v35;
    *(a7 + 16) = v34;
    *(a7 + 20) = v43;
    if (v33)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    fprintf(__stderrp, "%12llu fixed blocks\n", v32);
    v44 = v31;
    fprintf(__stderrp, "%12llu fixed bytes\n", v31);
    fprintf(__stderrp, "%12llu fixed bits\n", v30);
    if (v33)
    {
      fprintf(__stderrp, "%12llu INVALID BLOCKS\n", v33);
      v45 = "FAIL";
    }

    else
    {
      v45 = "OK";
    }

    fprintf(__stderrp, "    0x%06x diagnostic code\n", v43);
    *(a7 + 12) = v35;
    *(a7 + 16) = v34;
    *(a7 + 20) = v43;
    v46 = sub_1000F4248();
    fprintf(__stderrp, "Total time %.2fs, %.2f MB/s (%s)\n", v46 - v15, vcvtd_n_f64_u64(v84, 0x14uLL) / (v46 - v15), v45);
    v31 = v44;
    if (v33)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v31 >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v31;
  }
}

uint64_t sub_10011C870(int a1, char *a2, off_t a3, unint64_t a4, __int128 *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (a6 <= 0x2F)
  {
    v8 = "Truncated ECC buffer";
    v9 = 390;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "ParallelArchiveECCVerifyCommon", v9, 64, 0, v8, a7, a8, v13);
    return 0xFFFFFFFFLL;
  }

  v13 = *a5;
  v14 = a5[1];
  v15 = a5[2];
  if (*a5 != 0x3031304343455842)
  {
    v8 = "Invalid ECC magic";
    v9 = 392;
    goto LABEL_7;
  }

  if (HIDWORD(v15))
  {
    v8 = "Invalid ECC header";
    v9 = 393;
    goto LABEL_7;
  }

  if (!DWORD2(v15))
  {
    v8 = "Invalid ECC header";
    v9 = 394;
    goto LABEL_7;
  }

  if (*(&v13 + 1) != a4)
  {
    return 0;
  }

  if (a1 < 0)
  {
    if ((sub_1000F6224(a2, a4, &v16) & 0x80000000) != 0)
    {
      v8 = "computing buffer digest";
      v9 = 404;
      goto LABEL_7;
    }
  }

  else if ((sub_1000F6584(a1, a3, a4, &v16) & 0x80000000) != 0)
  {
    v8 = "computing file digest";
    v9 = 400;
    goto LABEL_7;
  }

  return v16 == v14 && v17 == *(&v14 + 1) && v18 == v15;
}

void *sub_10011CA50(int a1, unsigned int a2, uint64_t a3)
{
  v6 = calloc(1uLL, 0xB0uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[4] = a3;
    *(v6 + 10) = a2;
    v8 = malloc(a2);
    v7[8] = v8;
    if (v8)
    {
      if (a1 != 1)
      {
        v11 = "Invalid ECC algorithm";
        v12 = 857;
        goto LABEL_9;
      }

      if (a2 >= 0x1FFE1)
      {
        v11 = "Invalid ECC block size";
        v12 = 853;
LABEL_9:
        v13 = 0;
        goto LABEL_10;
      }

      *(v7 + 6) = 34;
      v15 = 34 * ((a3 + a2 - 1) / a2) + 48;
      v7[2] = v15;
      v16 = malloc(v15);
      v7[1] = v16;
      if (v16)
      {
        j__CC_SHA1_Init((v7 + 76));
        v7[7] = 48;
        sub_10011CBF0(v7);
        return v7;
      }

      v13 = *__error();
      v11 = "malloc";
      v12 = 862;
    }

    else
    {
      v13 = *__error();
      v11 = "malloc";
      v12 = 846;
    }
  }

  else
  {
    v13 = *__error();
    v11 = "malloc";
    v12 = 841;
  }

LABEL_10:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamCreate", v12, 64, v13, v11, v9, v10, v17);
  sub_10011CC54(v7);
  return 0;
}

int *sub_10011CBF0(int *result)
{
  if (*(result + 6) == *(result + 4) && !result[43])
  {
    result[43] = 1;
    v1 = *(result + 1);
    *v1 = 0x3031304343455842;
    v2 = *result;
    *(v1 + 8) = *(result + 4);
    *(v1 + 44) = 0;
    v3 = result[10];
    *(v1 + 36) = v2;
    *(v1 + 40) = v3;
    return j__CC_SHA1_Final((v1 + 16), (result + 19));
  }

  return result;
}

void sub_10011CC54(void **a1)
{
  if (a1)
  {
    free(a1[8]);
    free(a1[1]);

    free(a1);
  }
}

uint64_t sub_10011CCA0(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011CCB8(uint64_t a1)
{
  if (*(a1 + 172))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10011CCD0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 48);
  v9 = __CFADD__(v8, a3);
  v10 = v8 + a3;
  v11 = v9;
  if (v10 <= *(a1 + 32) && v11 == 0)
  {
    v16 = a3;
    v17 = a2;
    j__CC_SHA1_Update((a1 + 76), a2, a3);
    v15 = 0;
    if (v16)
    {
      v19 = *(a1 + 72);
      do
      {
        v20 = *(a1 + 40);
        v21 = v16 + v19 <= v20 ? v16 : v20 - v19;
        memcpy((*(a1 + 64) + v19), v17, v21);
        v22 = *(a1 + 72) + v21;
        *(a1 + 72) = v22;
        v23 = *(a1 + 48) + v21;
        *(a1 + 48) = v23;
        v15 += v21;
        if (v22 < *(a1 + 40) && v23 < *(a1 + 32))
        {
          break;
        }

        v24 = *(a1 + 56);
        if (v24 + *(a1 + 24) > *(a1 + 16))
        {
          v13 = "ECC buffer overflow";
          v14 = 914;
          goto LABEL_9;
        }

        if (*a1 != 1)
        {
          v13 = "Invalid ECC algorithm";
          v14 = 921;
          goto LABEL_9;
        }

        if ((sub_1000E6078(v22, *(a1 + 64), *(a1 + 8) + v24) & 0x80000000) != 0)
        {
          v13 = "ECC generation failed";
          v14 = 918;
          goto LABEL_9;
        }

        v19 = 0;
        v17 += v21;
        *(a1 + 56) += *(a1 + 24);
        *(a1 + 72) = 0;
        v16 -= v21;
      }

      while (v16);
    }

    sub_10011CBF0(a1);
  }

  else
  {
    v13 = "Too many bytes received";
    v14 = 892;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection.c", "OECCStreamWrite", v14, 64, 0, v13, a7, a8, v26);
    return -1;
  }

  return v15;
}

uint64_t (**AAChunkAsyncStreamOpen(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  v8 = a5;
  if (a5)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_12:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", 651, 143, 0, "invalid chunk size", a7, a8, v28);
    v16 = 0;
LABEL_16:
    sub_10011D0F4(v16);
    v18 = 0;
    goto LABEL_17;
  }

  v8 = sub_1000F4290();
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v13 = malloc(0xF0uLL);
  v16 = v13;
  if (!v13)
  {
    v24 = 655;
    v25 = 0;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", v24, 143, v25, "malloc", v14, v15, v28);
    goto LABEL_16;
  }

  memset_s(v13, 0xF0uLL, 0, 0xF0uLL);
  v17 = sub_10010D7B4(v16, sub_10011D0F4, ~(a4 >> 55) & 4, 20.0, 1.0);
  if (!v17)
  {
    v25 = *__error();
    v24 = 657;
    goto LABEL_15;
  }

  v18 = v17;
  *(v16 + 8) = a2;
  *(v16 + 16) = a4;
  *v16 = a1;
  *(v16 + 24) = a4 >> 62;
  if (a3 == -1)
  {
    v19 = v8;
  }

  else
  {
    v19 = a3 / a2;
  }

  if (pthread_mutex_init((v16 + 32), 0))
  {
    v22 = "mutex init";
    v23 = 668;
  }

  else
  {
    if (v19 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v19;
    }

    if ((sub_10011D2D4(v16, v27) & 0x80000000) != 0)
    {
      v22 = "init active chunks";
      v23 = 669;
    }

    else
    {
      v18[2] = sub_10011D470;
      v18[3] = sub_10011D63C;
      v18[4] = sub_10011D808;
      v18[5] = sub_10011D82C;
      if ((sub_1000E766C((v16 + 192), sub_10011D838, v16, 0) & 0x80000000) == 0)
      {
        return v18;
      }

      v22 = "createThread";
      v23 = 678;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "AAChunkAsyncStreamOpen", v23, 143, 0, v22, v20, v21, v28);
LABEL_17:
  AAAsyncByteStreamClose(v18);
  return 0;
}

uint64_t sub_10011D0F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    atomic_compare_exchange_strong((result + 204), &v2, 1u);
    v3 = *(result + 192);
    if (v3)
    {
      sub_1000E79CC(v3);
    }

    v4 = atomic_load((v1 + 200));
    if (*(v1 + 24))
    {
      fwrite("AAChunkAsyncStream\n", 0x13uLL, 1uLL, __stderrp);
      fprintf(__stderrp, "%12zu chunk size\n", *(v1 + 8));
      fprintf(__stderrp, "%12zu allocated chunks\n", *(v1 + 96));
      v5 = __stderrp;
      v6 = atomic_load((v1 + 208));
      fprintf(v5, "%12llu ranges requested\n", v6);
      v7 = __stderrp;
      v8 = atomic_load((v1 + 224));
      fprintf(v7, "%12llu chunks processed\n", v8);
      fprintf(__stderrp, "%12zu bytes in chunks (%.2f MB)\n", *(v1 + 8) * *(v1 + 96), vcvtd_n_f64_u64(*(v1 + 8) * *(v1 + 96), 0x14uLL));
      v9 = __stderrp;
      v10 = atomic_load((v1 + 216));
      v11 = atomic_load((v1 + 216));
      fprintf(v9, "%12llu bytes requested in ranges (%.2f MB)\n", v10, vcvtd_n_f64_u64(v11, 0x14uLL));
      v12 = __stderrp;
      v13 = atomic_load((v1 + 232));
      v14 = atomic_load((v1 + 232));
      fprintf(v12, "%12llu bytes processed in chunks (%.2f MB)\n", v13, vcvtd_n_f64_u64(v14, 0x14uLL));
    }

    pthread_mutex_destroy((v1 + 32));
    free(*(v1 + 168));
    if (*(v1 + 96))
    {
      v15 = 0;
      v16 = 40;
      do
      {
        free(*(*(v1 + 104) + v16));
        ++v15;
        v16 += 48;
      }

      while (v15 < *(v1 + 96));
    }

    free(*(v1 + 104));
    free(*(v1 + 120));
    free(*(v1 + 184));
    memset_s(v1, 0xF0uLL, 0, 0xF0uLL);
    free(v1);
    if (v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10011D2D4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 96) >= a2)
  {
    return 0;
  }

  if (*(a1 + 24) >= 3u)
  {
    fprintf(__stderrp, "    %zu active chunks\n", a2);
  }

  if (48 * a2 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    *(a1 + 104) = 0;
    v14 = *__error();
    v17 = 147;
    goto LABEL_16;
  }

  v5 = *(a1 + 104);
  v6 = realloc(v5, 48 * a2);
  if (!v6)
  {
    free(v5);
    goto LABEL_15;
  }

  *(a1 + 104) = v6;
  v7 = *(a1 + 96);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
LABEL_13:
    result = 0;
    *(a1 + 96) = a2;
    return result;
  }

  v9 = 48 * v7;
  while (1)
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 8);
    if (v11 >= 0x2000000001)
    {
      break;
    }

    v12 = malloc(v11);
    v13 = v10 + v9;
    *(v10 + v9 + 40) = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    *v13 = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v9 += 48;
    *(v13 + 8) = -1;
    if (!--v8)
    {
      goto LABEL_13;
    }
  }

  *__error() = 12;
  *(v10 + v9 + 40) = 0;
LABEL_18:
  v14 = *__error();
  v17 = 152;
LABEL_16:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveActiveChunks", v17, 143, v14, "malloc", v15, v16, v18);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10011D470(uint64_t a1, void *a2, uint64_t *a3)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 519, 143, 0, "lock", v7, v8, v21);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    v12 = 0;
    v13 = *(a1 + 104);
    while (1)
    {
      v14 = *v13;
      v13 += 12;
      if (v14 == 1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 != v11)
  {
    v15 = *(a1 + 104) + 48 * v12;
    *v15 = 2;
    v16 = *(v15 + 16);
    *a3 = v16;
    v17 = *(v15 + 24);
    *a2 = v17 - v16;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(__stderrp, "<-- chunk %10llx %10llx -- %8zu\n", v16, v17, *(v15 + 8));
    }

    goto LABEL_19;
  }

LABEL_13:
  if (!*(a1 + 160) && *(a1 + 128))
  {
    *a2 = 0;
    *a3 = 0;
LABEL_19:
    if (*(a1 + 24) < 3u || *a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1;
      fwrite("<-- EOF\n", 8uLL, 1uLL, __stderrp);
    }

    goto LABEL_22;
  }

  v9 = 0;
LABEL_22:
  if (!pthread_mutex_unlock((a1 + 32)))
  {
    return v9;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncGetRange", 546, 143, 0, "unlock", v18, v19, v21);
  v20 = 0;
  atomic_compare_exchange_strong((a1 + 200), &v20, 1u);
  if (!v20)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10011D63C(uint64_t a1, const void *a2, unint64_t a3, unint64_t a4)
{
  if (atomic_load((a1 + 200)))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_mutex_lock((a1 + 32)))
  {
    v11 = "lock";
    v12 = 556;
LABEL_4:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", v12, 143, 0, v11, v9, v10, v19);
    return 0xFFFFFFFFLL;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    v11 = "invalid range";
    v12 = 559;
    goto LABEL_4;
  }

  v20[0] = a4;
  v20[1] = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    v11 = "invalid range";
    v12 = 561;
    goto LABEL_4;
  }

  atomic_fetch_add_explicit((a1 + 232), a3, memory_order_relaxed);
  atomic_fetch_add_explicit((a1 + 224), 1uLL, memory_order_relaxed);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *(a1 + 104);
    while (*v15 != 2 || sub_10011E63C((v15 + 16), v20))
    {
      v15 += 48;
      if (!--v14)
      {
        goto LABEL_20;
      }
    }

    memcpy(*(v15 + 40), a2, a3);
    *v15 = 3;
    if (*(a1 + 24) >= 3u)
    {
      fprintf(__stderrp, "--> chunk %10llx %10llx -- %8zu\n", *(v15 + 16), *(v15 + 24), *(v15 + 8));
    }
  }

LABEL_20:
  result = pthread_mutex_unlock((a1 + 32));
  if (result)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "chunkAsyncProcess", 582, 143, 0, "unlock", v16, v17, v19);
    v18 = 0;
    atomic_compare_exchange_strong((a1 + 200), &v18, 1u);
    if (!v18)
    {
      AAAsyncByteStreamCancel(*a1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

atomic_uint *sub_10011D808(atomic_uint *result)
{
  v1 = 0;
  atomic_compare_exchange_strong(result + 50, &v1, 1u);
  if (!v1)
  {
    return AAAsyncByteStreamCancel(*result);
  }

  return result;
}

void **sub_10011D838(void **a1)
{
  if (atomic_load(a1 + 51))
  {
    return a1;
  }

  v162 = vdupq_n_s64(2uLL);
  while (1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_4;
    }

    v44 = a1[1] * a1[12];
    v45 = a1[20];
    v46 = v44 + (v44 >> 2);
    v47 = 0;
    if (v45)
    {
      v48 = a1[21] + 1;
      do
      {
        v47 = *v48 + v47 - *(v48 - 1);
        v48 += 2;
        v45 = (v45 - 1);
      }

      while (v45);
      if (v47 > v46)
      {
LABEL_4:
        v3 = 0;
        goto LABEL_5;
      }
    }

    v3 = 0;
    while (1)
    {
      v163 = 0;
      v164 = 0;
      Range = AAAsyncByteStreamGetRange(*a1, &v163, &v164);
      if (Range < 0)
      {
        v148 = "GetRange";
        v149 = 220;
LABEL_267:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", v149, 143, 0, v148, v50, v51, v161);
        goto LABEL_268;
      }

      if (!Range)
      {
        goto LABEL_113;
      }

      if (!v163)
      {
        break;
      }

      v52 = v164;
      if ((v164 & 0x8000000000000000) != 0)
      {
        v148 = "invalid range";
        v149 = 228;
        goto LABEL_267;
      }

      v53 = (v164 + v163);
      *&v165 = v164;
      *(&v165 + 1) = v164 + v163;
      if (__CFADD__(v164, v163))
      {
        v148 = "invalid range overflow";
        v149 = 230;
        goto LABEL_267;
      }

      v54 = a1[20];
      if (v54)
      {
        v55 = a1[21];
        v56 = a1[20];
        while (sub_10011E63C(v55, &v165))
        {
          v55 += 2;
          v56 = (v56 - 1);
          if (!v56)
          {
            goto LABEL_90;
          }
        }

        goto LABEL_107;
      }

LABEL_90:
      v57 = a1[19];
      if (v54 >= v57)
      {
        v58 = 2 * v57;
        v26 = v57 == 0;
        v59 = 32;
        if (!v26)
        {
          v59 = v58;
        }

        a1[19] = v59;
        if ((16 * v59) >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
          v60 = a1[21];
          v61 = realloc(v60, 16 * v59);
          if (v61)
          {
            a1[21] = v61;
            goto LABEL_96;
          }

          free(v60);
        }

        a1[21] = 0;
        v158 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateFetchRanges", 248, 143, *v158, "malloc", v159, v160, v161);
        a1[19] = 0;
        a1[20] = 0;
LABEL_268:
        v150 = "fetching ranges";
        v151 = 493;
        goto LABEL_277;
      }

LABEL_96:
      if (*(a1 + 6) >= 3u)
      {
        fprintf(__stderrp, "<<< range %10llx %10llx\n", v52, v53);
      }

      v63 = a1[20];
      v62 = a1[21];
      a1[20] = (v63 + 1);
      *&v62[2 * v63] = v165;
      v47 += v53 - v52;
      atomic_fetch_add_explicit(a1 + 27, v53 - v52, memory_order_relaxed);
      atomic_fetch_add_explicit(a1 + 26, 1uLL, memory_order_relaxed);
      v65 = a1[17];
      v64 = a1[18];
      if (v65 == v64)
      {
        *(a1 + 17) = v165;
      }

      else if (v53 != v52)
      {
        if (v65 >= v52)
        {
          v65 = v52;
        }

        if (v53 > v64)
        {
          v64 = v53;
        }

        a1[17] = v65;
        a1[18] = v64;
      }

      v3 = 1;
LABEL_107:
      if (v47 > v46)
      {
        goto LABEL_113;
      }
    }

    if (*(a1 + 6) >= 3u)
    {
      fwrite("<<< range EOF\n", 0xEuLL, 1uLL, __stderrp);
    }

    *(a1 + 32) = 1;
LABEL_113:
    if (v3)
    {
      sub_10011E690(a1);
    }

LABEL_5:
    if (pthread_mutex_lock((a1 + 4)))
    {
      v152 = "lock";
      v153 = 276;
      goto LABEL_271;
    }

    v6 = a1[20];
    if (!v6)
    {
      goto LABEL_116;
    }

    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = a1[1];
LABEL_9:
      v11 = &a1[21][2 * v8];
      v13 = *v11;
      v12 = v11[1];
      v14 = *v11 / v10;
      v15 = (v12 + v10 - 1) / v10;
      if (v14 < v15)
      {
        break;
      }

LABEL_51:
      v28 = v12 - v13;
      if (v12 - v13 > a1[22])
      {
        a1[22] = v28;
        if (v28 >= 0x2000000001)
        {
          *__error() = 12;
LABEL_263:
          a1[23] = 0;
          v145 = __error();
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", 314, 143, *v145, "malloc", v146, v147, v161);
          a1[22] = 0;
          goto LABEL_75;
        }

        v29 = a1[23];
        v30 = realloc(v29, v12 - v13);
        if (!v30)
        {
          free(v29);
          goto LABEL_263;
        }

        a1[23] = v30;
      }

      if (v14 < v15)
      {
        v31 = 0;
        while (1)
        {
          v32 = &a1[13][6 * a1[15][v14]];
          v33 = v32[2];
          v34 = v32[3];
          if (v33 == v34)
          {
            goto LABEL_64;
          }

          v35 = *v11;
          v36 = v11[1];
          if (*v11 == v36)
          {
            goto LABEL_64;
          }

          if (v35 <= v33)
          {
            v35 = v32[2];
          }

          if (v34 >= v36)
          {
            v34 = v11[1];
          }

          if (v35 >= v34)
          {
LABEL_64:
            v35 = 0;
            v34 = 0;
          }

          v37 = v34 - v35 + v31;
          if (v37 > v28)
          {
            break;
          }

          memcpy(a1[23] + v31, (v32[5] + v35 - v33), v34 - v35);
          ++v14;
          v31 = v37;
          if (v14 >= v15)
          {
            goto LABEL_67;
          }
        }

        v40 = 328;
LABEL_73:
        v41 = 0;
        v42 = "invalid state";
LABEL_74:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v40, 143, v41, v42, v4, v5, v161);
LABEL_75:
        v43 = 1;
        goto LABEL_117;
      }

LABEL_67:
      v38 = *v11;
      v39 = v11[1];
      if (*(a1 + 6) >= 3u)
      {
        fprintf(__stderrp, ">>> range %10llx %10llx\n", *v11, v39);
        v38 = *v11;
        v39 = v11[1];
      }

      if ((AAAsyncByteStreamProcess(*a1, a1[23], v39 - v38, v38) & 0x80000000) != 0)
      {
        v41 = *__error();
        v40 = 336;
        v42 = "process range";
        goto LABEL_74;
      }

      v9 = 0;
      *v11 = 0;
      v11[1] = 0;
      v6 = a1[20];
      ++v8;
      v7 = 1;
      if (v8 >= v6)
      {
        goto LABEL_257;
      }
    }

    v16 = *v11;
    v17 = *v11 / v10;
    while (v17 < a1[14])
    {
      v18 = a1[15][v17];
      if (v18 == -1)
      {
        break;
      }

      v19 = &a1[13][6 * v18];
      if (!*v19 || v17 != *(v19 + 8))
      {
        v40 = 291;
        goto LABEL_73;
      }

      if (*v19 != 3)
      {
        break;
      }

      if (v16 == v12)
      {
        goto LABEL_22;
      }

      v20 = v17 * v10;
      v21 = (v17 * v10 + v10);
      if (v16 > v17 * v10)
      {
        v20 = v16;
      }

      if (v21 >= v12)
      {
        v21 = v11[1];
      }

      if (v20 >= v21)
      {
LABEL_22:
        v20 = 0;
        v21 = 0;
      }

      v22 = 0;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 != v23)
      {
        v16 = v11[1];
      }

      v25 = 0;
      if (v12 != v13 && v24 != v23)
      {
        if (v13 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = *v11;
        }

        if (v23 >= v12)
        {
          v22 = v11[1];
        }

        else
        {
          v22 = v23;
        }

        if (v25 >= v22)
        {
          v22 = 0;
          v25 = 0;
        }

        else if (v21 == v20)
        {
          break;
        }

        v16 = *v11;
      }

      v26 = v21 != v20 && v22 == v25;
      v27 = v26;
      if (v22 != v21 || v25 != v20 || v27)
      {
        break;
      }

      if (++v17 >= v15)
      {
        goto LABEL_51;
      }
    }

    if (++v8 < v6)
    {
      goto LABEL_9;
    }

    if ((v9 & 1) == 0)
    {
LABEL_257:
      sub_10011E690(a1);
      v43 = 0;
    }

    else
    {
LABEL_116:
      v43 = 0;
      v7 = 0;
    }

LABEL_117:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      v152 = "unlock";
      v153 = 347;
LABEL_271:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateRetireRanges", v153, 143, 0, v152, v4, v5, v161);
LABEL_272:
      v150 = "retiring ranges";
      v151 = 497;
      goto LABEL_277;
    }

    if (v43)
    {
      goto LABEL_272;
    }

    if (!a1[20])
    {
      v74 = 0;
      goto LABEL_253;
    }

    if (pthread_mutex_lock((a1 + 4)))
    {
      break;
    }

    v66 = a1[14];
    v67 = a1[12];
    v68 = a1[20];
    if (v68)
    {
      v69 = a1[1];
      v70 = a1[21] + 1;
      do
      {
        v71 = (v69 - 1 + *v70) / v69;
        if (v71 > v66)
        {
          v66 = (v69 - 1 + *v70) / v69;
        }

        if (v71 - *(v70 - 1) / v69 > v67)
        {
          v67 = v71 - *(v70 - 1) / v69;
        }

        v70 += 2;
        v68 = (v68 - 1);
      }

      while (v68);
    }

    if ((sub_10011D2D4(a1, v67) & 0x80000000) != 0)
    {
      goto LABEL_248;
    }

    if (a1[14] >= v66)
    {
      goto LABEL_139;
    }

    if (*(a1 + 6) >= 3u)
    {
      fprintf(__stderrp, "    %zu chunks\n", v66);
    }

    if (8 * v66 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_247;
    }

    v75 = a1[15];
    v76 = realloc(v75, 8 * v66);
    if (!v76)
    {
      free(v75);
LABEL_247:
      a1[15] = 0;
      v141 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "lockedStateReserveChunks", 172, 143, *v141, "malloc", v142, v143, v161);
      a1[14] = 0;
LABEL_248:
      v112 = 375;
      v113 = "reserving chunks";
      goto LABEL_249;
    }

    a1[15] = v76;
    v77 = a1[14];
    if (v77 < v66)
    {
      memset(&v76[v77], 255, 8 * v66 - 8 * v77);
    }

    a1[14] = v66;
LABEL_139:
    v78 = a1[12];
    if (v78)
    {
      v79 = (v78 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v80 = vdupq_n_s64(v78 - 1);
      v81 = a1[13] + 10;
      v82 = xmmword_1003772E0;
      do
      {
        v83 = vmovn_s64(vcgeq_u64(v80, v82));
        if (v83.i8[0])
        {
          *(v81 - 6) = 0;
        }

        if (v83.i8[4])
        {
          *v81 = 0;
        }

        v82 = vaddq_s64(v82, vdupq_n_s64(2uLL));
        v81 += 12;
        v79 -= 2;
      }

      while (v79);
    }

    v84 = a1[20];
    if (v84)
    {
      v85 = 0;
      v86 = a1[21];
      v87 = a1[1];
      while (1)
      {
        v88 = &v86[2 * v85];
        v89 = *v88;
        v90 = v88[1];
        v91 = v89 / v87;
        v92 = (v87 - 1 + v90) / v87;
        if (v89 / v87 < v92)
        {
          break;
        }

LABEL_186:
        if (++v85 == v84)
        {
          goto LABEL_187;
        }
      }

      v93 = a1[15];
      v94 = v90;
      while (2)
      {
        v95 = v93[v91];
        if (v95 != -1)
        {
          v96 = &a1[13][6 * v95];
          if (!*v96 || v91 != *(v96 + 8))
          {
            v112 = 389;
            v113 = "invalid state";
LABEL_249:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v112, 143, 0, v113, v72, v73, v161);
            v74 = 0;
            goto LABEL_250;
          }

          if (v89 == v94)
          {
            goto LABEL_159;
          }

          v97 = v91 * v87;
          v98 = (v91 * v87 + v87);
          if (v89 > v91 * v87)
          {
            v97 = v89;
          }

          if (v98 >= v94)
          {
            v98 = v94;
          }

          if (v97 >= v98)
          {
LABEL_159:
            v97 = 0;
            v98 = 0;
          }

          v99 = 0;
          v100 = *(v96 + 16);
          v73 = *(v96 + 24);
          if (v100 != v73)
          {
            v94 = v89;
          }

          v72 = 0;
          if (v89 != v90 && v100 != v73)
          {
            if (v89 <= v100)
            {
              v72 = *(v96 + 16);
            }

            else
            {
              v72 = v89;
            }

            if (v73 >= v90)
            {
              v99 = v90;
            }

            else
            {
              v99 = *(v96 + 24);
            }

            if (v72 >= v99)
            {
              v99 = 0;
              v72 = 0;
            }

            else
            {
              v94 = v90;
              if (v98 == v97)
              {
                goto LABEL_185;
              }
            }

            v94 = v90;
          }

          v73 = v98 != v97 && v99 == v72;
          if (v98 == v99 && v72 == v97 && (v73 & 1) == 0)
          {
            ++*(v96 + 32);
          }
        }

LABEL_185:
        if (++v91 >= v92)
        {
          goto LABEL_186;
        }

        continue;
      }
    }

LABEL_187:
    if (!v78)
    {
      v74 = 0;
LABEL_204:
      v114 = a1[20];
      if (v114)
      {
        for (i = 0; i < v114; ++i)
        {
          v116 = &a1[21][2 * i];
          v117 = a1[1];
          v118 = *v116 / v117;
          v119 = (v117 + v116[1] - 1) / v117;
          if (!i && v118 < v119)
          {
            v120 = a1[15];
            v121 = v118;
            do
            {
              v122 = v120[v121];
              if (v122 != -1)
              {
                a1[13][6 * v122 + 4] = 1;
              }

              ++v121;
            }

            while (v121 < v119);
          }

          if (v118 < v119)
          {
            while (1)
            {
              v123 = a1[15];
              if (v123[v118] == -1)
              {
                v124 = a1[12];
                if (v124)
                {
                  v125 = 0;
                  v126 = a1[13];
                  while (1)
                  {
                    v127 = *v126;
                    v126 += 12;
                    if (!v127)
                    {
                      break;
                    }

                    v125 = (v125 + 1);
                    if (v124 == v125)
                    {
                      goto LABEL_221;
                    }
                  }
                }

                else
                {
                  v125 = 0;
                }

                if (v125 == v124)
                {
LABEL_221:
                  if (i)
                  {
                    goto LABEL_245;
                  }

                  v125 = 0;
                  if (v124)
                  {
                    v128 = a1[13] + 4;
                    while (1)
                    {
                      v129 = *v128;
                      v128 += 6;
                      if (!v129)
                      {
                        break;
                      }

                      v125 = (v125 + 1);
                      if (v124 == v125)
                      {
                        goto LABEL_244;
                      }
                    }
                  }

                  if (v125 == v124)
                  {
LABEL_244:
                    v139 = 451;
                    v140 = "no available chunk";
                    goto LABEL_259;
                  }

                  v130 = &a1[13][6 * v125];
                  v131 = *(v130 + 8);
                  v123[v131] = -1;
                  *v130 = 0;
                  *(v130 + 16) = 0;
                  *(v130 + 24) = 0;
                  *(v130 + 8) = -1;
                  fprintf(__stderrp, "BYE chunk %8zu evicted\n", v131);
                  v123 = a1[15];
                }

                v132 = &a1[13][6 * v125];
                *(v132 + 8) = v118;
                v123[v118] = v125;
                *v132 = 1;
                v133 = a1[1];
                v134 = (v133 * *(v132 + 8));
                *(v132 + 16) = v134;
                v135 = (v133 + v134);
                *(v132 + 24) = v133 + v134;
                *(v132 + 32) = i == 0;
                if (!v133)
                {
                  goto LABEL_236;
                }

                v137 = a1[17];
                v136 = a1[18];
                if (v137 == v136)
                {
                  goto LABEL_236;
                }

                if (v137 > v134)
                {
                  v134 = a1[17];
                }

                if (v135 >= v136)
                {
                  v135 = a1[18];
                }

                *(v132 + 16) = v134;
                *(v132 + 24) = v135;
                if (v134 >= v135)
                {
LABEL_236:
                  *(v132 + 16) = 0;
                  *(v132 + 24) = 0;
                }

                if (*(a1 + 6) >= 3u)
                {
                  fprintf(__stderrp, "SET range %10llx %10llx -- %8zu\n", *v116, v116[1], v118);
                }

                v74 = 1;
              }

              if (++v118 >= v119)
              {
                v114 = a1[20];
                break;
              }
            }
          }

          v138 = 0;
        }
      }

      else
      {
LABEL_245:
        v138 = 0;
      }

      goto LABEL_251;
    }

    v102 = 0;
    v74 = 0;
    v103 = 0;
    while (2)
    {
      v104 = a1[13];
      if (v104[v102 + 4] || !LODWORD(v104[v102]))
      {
LABEL_193:
        ++v103;
        v102 += 6;
        if (v103 >= v78)
        {
          if (v78)
          {
            v107 = (v78 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v108 = vdupq_n_s64(v78 - 1);
            v109 = a1[13] + 10;
            v110 = xmmword_1003772E0;
            do
            {
              v111 = vmovn_s64(vcgeq_u64(v108, v110));
              if (v111.i8[0])
              {
                *(v109 - 6) = 0;
              }

              if (v111.i8[4])
              {
                *v109 = 0;
              }

              v110 = vaddq_s64(v110, v162);
              v109 += 12;
              v107 -= 2;
            }

            while (v107);
          }

          goto LABEL_204;
        }

        continue;
      }

      break;
    }

    v105 = &v104[v102];
    v106 = v104[v102 + 1];
    if (v106 < a1[14])
    {
      a1[15][v106] = -1;
      *v105 = 0;
      v105[2] = 0;
      v105[3] = 0;
      v105[1] = -1;
      v78 = a1[12];
      v74 = 1;
      goto LABEL_193;
    }

    v139 = 410;
    v140 = "invalid chunk index";
LABEL_259:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v139, 143, 0, v140, v72, v73, v161);
LABEL_250:
    v138 = 1;
LABEL_251:
    if (pthread_mutex_unlock((a1 + 4)))
    {
      v154 = "unlock";
      v155 = 478;
      goto LABEL_275;
    }

    if (v138)
    {
      goto LABEL_276;
    }

LABEL_253:
    if (!(v7 | v3 | v74))
    {
      usleep(0x9C40u);
    }

    if (atomic_load(a1 + 51))
    {
      return a1;
    }
  }

  v154 = "lock";
  v155 = 359;
LABEL_275:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "stateUpdateChunks", v155, 143, 0, v154, v4, v5, v161);
LABEL_276:
  v150 = "updating chunks";
  v151 = 501;
LABEL_277:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAChunkAsyncStream.c", "streamProc", v151, 143, 0, v150, v4, v5, v161);
  v156 = 0;
  atomic_compare_exchange_strong(a1 + 50, &v156, 1u);
  if (!v156)
  {
    AAAsyncByteStreamCancel(*a1);
  }

  return a1;
}

uint64_t sub_10011E63C(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == *a1 && v5 != v4)
  {
    return 1;
  }

  if (v3 >= v5)
  {
    v7 = v5 < v3;
  }

  else
  {
    v7 = -1;
  }

  if (v4 >= v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if ((v5 != v4 || v3 == v2) && v2 >= v4)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10011E690(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    qsort(*(a1 + 168), v1, 0x10uLL, sub_10011E63C);
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = (*(a1 + 168) + 16 * v3 - 8);
      do
      {
        if (*(v5 - 1) != *v5)
        {
          break;
        }

        v5 -= 2;
        *(a1 + 160) = v4--;
      }

      while (v4 != -1);
    }
  }
}

size_t sub_10011E710(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E738(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZBITMAP);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E760(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t sub_10011E788(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t AAPathListCreate()
{
  result = sub_10011E7D4();
  *(*(result + 8) + 16) = 1;
  return result;
}

uint64_t sub_10011E7D4()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (!v0)
  {
    v10 = *__error();
    v11 = "malloc";
    v12 = 444;
LABEL_11:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "create", v12, 60, v10, v11, v3, v4, v14);
    AAPathListDestroy(v1);
    return 0;
  }

  memset_s(v0, 0x20uLL, 0, 0x20uLL);
  v2 = sub_10011A03C();
  *(v1 + 16) = v2;
  if (!v2)
  {
    v11 = "StringTableCreate";
    v12 = 447;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if ((sub_10011F360(v1, 0x100u) & 0x80000000) != 0)
  {
    v11 = "alloc";
    v12 = 450;
    goto LABEL_10;
  }

  v15 = -1;
  if ((sub_10011A254(*(v1 + 16), "", 0, &v15, v5, v6, v3, v4) & 0x80000000) != 0)
  {
    v11 = "String table insert";
    v12 = 452;
    goto LABEL_10;
  }

  v7 = *(v1 + 8);
  v8 = (*v1)++;
  v9 = v7 + 24 * v8;
  *(v9 + 20) = -1;
  *(v9 + 8) = -1;
  *v9 = -1;
  *(v9 + 12) = v15;
  return v1;
}

void AAPathListDestroy(AAPathList path_list)
{
  if (path_list)
  {
    sub_10011A1FC(*(path_list + 2));
    free(*(path_list + 1));

    free(path_list);
  }
}

AAPathList AAPathListCreateWithDirectoryContents(const char *dir, const char *path, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v6 = __chkstk_darwin(dir);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v6;
  v117 = 0;
  bzero(v121, 0x400uLL);
  bzero(v120, 0x400uLL);
  if (!v8)
  {
    v8 = sub_1000F4290();
  }

  if (!realpath_DARWIN_EXTSN(v17, v121))
  {
    v26 = *__error();
    v108 = v17;
    v24 = "Invalid dir: %s";
    v25 = 508;
    goto LABEL_47;
  }

  v18 = strlen(v121);
  v20 = v18 != 1 || v121[0] != 47;
  if (v16)
  {
    v21 = v18;
    __strlcpy_chk();
    if ((sub_1000F456C(v120) & 0x80000000) != 0)
    {
      v108 = v17;
      v24 = "Invalid path (subpath normalization failed): %s/%s";
      v25 = 517;
LABEL_46:
      v26 = 0;
      goto LABEL_47;
    }

    if ((sub_1000F4680(v119, 0x800uLL, v121, v120) & 0x80000000) != 0)
    {
      v26 = *__error();
      v108 = v17;
      v24 = "Path too long: %s/%s";
      v25 = 523;
    }

    else
    {
      if (realpath_DARWIN_EXTSN(v119, __s))
      {
        if (v20 && (strlen(__s) < v21 || memcmp(__s, v121, v21) || __s[v21] && __s[v21] != 47))
        {
          v108 = v17;
          v24 = "Path resolving outside target dir: %s/%s";
          v25 = 531;
        }

        else
        {
          memset(&v116, 0, sizeof(v116));
          if (!lstat(__s, &v116) && (v116.st_mode & 0xF000) == 0x4000)
          {
            goto LABEL_26;
          }

          v108 = v17;
          v24 = "Not a directory: %s/%s";
          v25 = 534;
        }

        goto LABEL_46;
      }

      v26 = *__error();
      v108 = v17;
      v24 = "Invalid path, doesn't exist: %s/%s";
      v25 = 524;
    }

LABEL_47:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v25, 60, v26, v24, v22, v23, v108);
    v27 = 0;
LABEL_48:
    v47 = 0;
    v48 = 0;
    v46 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_49;
  }

LABEL_26:
  v27 = sub_10011E7D4();
  if (!v27)
  {
    return v27;
  }

  v115 = v8;
  v28 = strlen(v120);
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = 0;
    v32 = *(v27 + 1) + 24 * v27[7];
    *(v32 + 16) |= 1u;
    do
    {
      v33 = v120[v31];
      if (v33 == 47 || v33 == 0)
      {
        *v119 = -1;
        if ((sub_10011F360(v27, *v27 + 1) & 0x80000000) != 0)
        {
          v102 = "increase PathList capacity";
          v103 = 553;
LABEL_115:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v103, 60, 0, v102, v37, v38, v107);
          v47 = 0;
          v48 = 0;
          v46 = 0;
          v49 = 0;
          v50 = 0;
          goto LABEL_49;
        }

        if ((sub_10011A254(*(v27 + 2), &v120[v30], v31 - v30, v119, v35, v36, v37, v38) & 0x80000000) != 0)
        {
          v102 = "inserting path component in table";
          v103 = 554;
          goto LABEL_115;
        }

        v39 = *v27;
        v40 = (*(v27 + 1) + 24 * *v27);
        *v40 = *v27 - 1;
        v40[3] = *v119;
        v40[4] = v33 != 0;
        *v27 = v39 + 1;
        if (!v33)
        {
          break;
        }

        v30 = ++v31;
      }

      ++v31;
    }

    while (v31 <= v29);
  }

  if (!v12)
  {
    goto LABEL_43;
  }

  v41 = v12(v14, 11, v120, 0);
  if (v41 < 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 570, 60, "abort from callback", v42, v43, v44, v107);
    goto LABEL_48;
  }

  if (v41)
  {
    v45 = *(v27 + 1) + 24 * (*v27 - 1);
    *(v45 + 16) |= 1u;
  }

LABEL_43:
  if (v8 < 0)
  {
    *__error() = 12;
    v114 = 0;
    v46 = 0;
    *__error() = 12;
  }

  else
  {
    v114 = calloc(v8, 0x28uLL);
    v46 = calloc(v8, 0x38uLL);
  }

  if ((8 * v8) >= 0x2000000001)
  {
    v48 = 0;
    *__error() = 12;
LABEL_64:
    v58 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 578, 60, *v58, "malloc", v59, v60, v107);
    v47 = 0;
LABEL_65:
    v50 = 0;
    v49 = v114;
    goto LABEL_49;
  }

  v61 = malloc(8 * v8);
  v48 = v61;
  if (!v114 || !v46 || !v61)
  {
    goto LABEL_64;
  }

  if (v8 >= 1)
  {
    v62 = v46;
    v63 = v61;
    v64 = v8;
    do
    {
      v62[2] = v14;
      v62[3] = v12;
      v62[4] = &v117;
      *v62 = v27;
      v62[1] = v121;
      *(v62 + 10) = (v10 >> 6) & 1;
      *v63++ = v62;
      v62 += 7;
      --v64;
    }

    while (v64);
  }

  v47 = sub_1001021B4(v8, v61, sub_10011F41C);
  if (!v47)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 591, 60, 0, "ThreadPoolCreate", v70, v71, v107);
    goto LABEL_65;
  }

  v111 = v46;
  v72 = *v27;
  if (!*v27)
  {
    goto LABEL_110;
  }

  v73 = 0;
  v74 = v72 - 1;
  if (v8 <= 1)
  {
    v75 = 1;
  }

  else
  {
    v75 = v8;
  }

  v109 = v72 - 1;
  v110 = v75;
  do
  {
    v76 = v8;
    v77 = 0;
    v78 = v75;
    if ((v76 + v72 + ~v74) / v76 <= 0x64)
    {
      v79 = 100;
    }

    else
    {
      v79 = (v76 + v72 + ~v74) / v76;
    }

    v80 = !v73;
    v112 = v73;
    v113 = 1;
    v81 = v114;
    do
    {
      v82 = v74 + v79 * v77;
      *v81 = v80;
      v81[1] = v82;
      v83 = v82 + v79;
      v81[2] = v82 + v79;
      if (v82 > v72)
      {
        v81[1] = v72;
        v82 = v72;
      }

      if (v83 > v72)
      {
        v81[2] = v72;
        v83 = v72;
      }

      if (v82 < v83)
      {
        v84 = sub_100102924(v47, v65, v66, v67, v68, v69, v70, v71);
        if (v84)
        {
          *(v84 + 48) = v81;
          if ((sub_100102A58(v47, v84, v85, v86, v87, v88, v70, v71) & 0x80000000) == 0)
          {
            goto LABEL_92;
          }

          v89 = 618;
          v90 = "ThreadPoolRunWorker";
        }

        else
        {
          v89 = 616;
          v90 = "ThreadPoolGetWorker";
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v89, 60, 0, v90, v70, v71, v107);
        v113 = 0;
      }

LABEL_92:
      ++v77;
      v81 += 10;
      --v78;
    }

    while (v78);
    if ((sub_100102B28(v47) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 620, 60, 0, "ThreadPoolSync", v70, v71, v107);
      v106 = atomic_load(&v117);
      v49 = v114;
      v8 = v115;
      if (v106 >= 1)
      {
LABEL_122:
        v104 = "Abort";
        v105 = 621;
LABEL_123:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", v105, 60, 0, v104, v70, v71, v107);
      }

LABEL_124:
      v50 = 0;
      goto LABEL_125;
    }

    v91 = atomic_load(&v117);
    v49 = v114;
    v8 = v115;
    if (v91 > 0)
    {
      goto LABEL_122;
    }

    if (!v113)
    {
      goto LABEL_124;
    }

    v92 = 0;
    v75 = v110;
    do
    {
      v93 = &v114[5 * v92];
      if (*(v93 + 1) < *(v93 + 2))
      {
        v94 = *(v93 + 4);
        if (v94)
        {
          *v119 = 0;
          if ((sub_10011F360(v27, *v27 + v94) & 0x80000000) != 0)
          {
            v104 = "alloc";
            v105 = 631;
            goto LABEL_123;
          }

          if ((sub_10011A6AC(*(v27 + 2), v93[4], v119) & 0x80000000) != 0)
          {
            v104 = "String table append";
            v105 = 632;
            goto LABEL_123;
          }

          v95 = *(v27 + 1);
          v96 = *v27;
          v97 = (v93[3] + 2);
          do
          {
            v98 = (v95 + 24 * v96++);
            *v27 = v96;
            *v98 = *(v97 - 2);
            v98[3] = *v119 + *(v97 - 1);
            v99 = *v97;
            v97 += 3;
            v98[4] = v99;
            --v94;
          }

          while (v94);
          *(v93 + 4) = 0;
        }
      }

      ++v92;
    }

    while (v92 != v110);
    if (v112)
    {
      break;
    }

    v73 = v72 == *v27;
    v74 = v72 == *v27 ? v109 : v72;
    v72 = *v27;
  }

  while (v74 < *v27);
LABEL_110:
  if ((sub_10011FC00(v27) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 656, 60, 0, "Tree normalization", v100, v101, v107);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v49 = v114;
LABEL_125:
  v46 = v111;
LABEL_49:
  if ((sub_100102638(v47) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 661, 60, 0, "ThreadPoolDestroy", v51, v52, v107);
    v50 = 0;
  }

  v53 = atomic_load(&v117);
  if (v53 >= 1)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithDirectoryContents", 662, 60, 0, "threads reported errors", v51, v52, v107);
    v50 = 0;
  }

  if (v46)
  {
    if (v8 >= 1)
    {
      v54 = v8;
      v55 = v49 + 4;
      do
      {
        free(*(v55 - 1));
        v56 = *v55;
        v55 += 5;
        sub_10011A1FC(v56);
        --v54;
      }

      while (v54);
    }

    free(v46);
    free(v48);
  }

  free(v49);
  if (!v50)
  {
    AAPathListDestroy(v27);
    return 0;
  }

  return v27;
}

uint64_t sub_10011F360(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 4);
  if (v3 >= a2)
  {
    return 0;
  }

  v12 = v2;
  do
  {
    if (v3)
    {
      v3 += v3 >> 1;
    }

    else
    {
      v3 = 256;
    }
  }

  while (v3 < a2);
  *(a1 + 4) = v3;
  v5 = *(a1 + 8);
  v6 = realloc(v5, 24 * v3);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *(a1 + 8) = v7;
  }

  else
  {
    free(v5);
    *(a1 + 8) = 0;
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "increaseCapacity", 270, 60, *v9, "malloc", v10, v11, v12);
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10011F41C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 48);
  bzero(__src, 0x400uLL);
  bzero(v69, 0x800uLL);
  v3 = *(v2 + 4);
  if (!v3)
  {
    v3 = sub_10011A03C();
    *(v2 + 4) = v3;
    if (!v3)
    {
      v7 = "String table creation";
      v8 = 79;
      goto LABEL_86;
    }
  }

  sub_10011A248(v3);
  v2[4] = 0;
  v6 = strlen(*(v1 + 8));
  if (v6 >= 0x800)
  {
    v7 = "dir name too long";
    v8 = 88;
    goto LABEL_86;
  }

  v9 = v6;
  __memcpy_chk();
  v10 = &v69[v9];
  v69[v9] = 0;
  v11 = v2[1];
  if (v11 >= v2[2])
  {
    return 0;
  }

  v12 = v9 + 1;
  while (1)
  {
    v13 = *v1;
    if (**v1 <= v11 || (v68.d_ino = 0, (sub_1001202D0(v13, v11, 0x400uLL, __src, &v68.d_ino) & 0x80000000) != 0))
    {
      v7 = "get node path";
      v8 = 96;
      goto LABEL_86;
    }

    d_ino = v68.d_ino;
    if (v68.d_ino >= 0x400)
    {
      v7 = "truncated node path";
      v8 = 97;
      goto LABEL_86;
    }

    if (v68.d_ino)
    {
      v15 = v12 + v68.d_ino;
    }

    else
    {
      v15 = v9;
    }

    if (v68.d_ino)
    {
      if (v12 + v68.d_ino >= 0x800)
      {
        v7 = "path too long";
        v8 = 103;
        goto LABEL_86;
      }

      *v10 = 47;
      memcpy(v10 + 1, __src, d_ino);
    }

    v69[v15] = 0;
    memset(&v67, 0, sizeof(v67));
    if (lstat(v69, &v67) < 0)
    {
      v52 = *__error();
      v61 = v69;
      v7 = "lstat %s";
      v8 = 111;
      goto LABEL_87;
    }

    if (!sub_1000F6F88(v67.st_flags))
    {
      break;
    }

    v17 = *(v1 + 24);
    if (v17 && v17(*(v1 + 16), 12, __src, 0))
    {
      v61 = v69;
      v7 = "dataless dir error: %s";
      v8 = 118;
      goto LABEL_86;
    }

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 119, 60, "skip dataless dir: %s", v16, v4, v5, v69);
LABEL_73:
    if (++v11 >= v2[2])
    {
      return 0;
    }
  }

  v18 = opendir(v69);
  if (!v18)
  {
    v45 = *(v1 + 24);
    v12 = v9 + 1;
    if (v45 && v45(*(v1 + 16), 12, __src, 0))
    {
      v52 = *__error();
      v61 = v69;
      v7 = "opendir failed: %s";
      v8 = 130;
      goto LABEL_87;
    }

    v62 = *__error();
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 131, 60, "opendir failed with errno=%d: %s", v46, v47, v48, v62);
    goto LABEL_73;
  }

  v19 = v18;
  v63 = v10;
  memset(&v68, 0, 512);
  v66 = 0;
  while (!readdir_r(v19, &v68, &v66))
  {
    if (!v66)
    {
      goto LABEL_71;
    }

    d_namlen = v68.d_namlen;
    if ((v68.d_namlen != 1 || v68.d_name[0] != 46) && (v68.d_namlen != 2 || v68.d_name[0] != 46 || v68.d_name[1] != 46))
    {
      v23 = v15 + 1 + v68.d_namlen;
      if (v23 >= 0x800)
      {
        v53 = "path too long";
        v54 = 162;
        goto LABEL_80;
      }

      v69[v15] = 47;
      memcpy(&v69[v15 + 1], v68.d_name, d_namlen);
      v69[v23] = 0;
      memset(&v65, 0, sizeof(v65));
      if (lstat(v69, &v65))
      {
        sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 169, 60, "stat failed: %s", v25, v26, v27, v69);
      }

      else if (v68.d_type == 4)
      {
        v28 = *v2;
        if (*v2)
        {
LABEL_44:
          if (v65.st_dev == v67.st_dev || *(v1 + 40))
          {
            if (!v28)
            {
              goto LABEL_50;
            }

            v31 = *(v1 + 24);
            if (!v31)
            {
              goto LABEL_58;
            }

            v32 = v31(*(v1 + 16), 10, v63 + 1, 0);
            if (v32 < 0)
            {
              v57 = 182;
              goto LABEL_95;
            }

            if (!v32)
            {
LABEL_50:
              v33 = 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v68.d_type)
        {
          v29 = 0;
        }

        else
        {
          v29 = (v65.st_mode & 0xF000) == 0x4000;
        }

        v30 = v29;
        v28 = *v2;
        if ((((*v2 != 0) ^ v30) & 1) == 0)
        {
          if (v30)
          {
            goto LABEL_44;
          }

          v33 = 0;
LABEL_52:
          v34 = *(v1 + 24);
          if (!v34)
          {
LABEL_58:
            v37 = 1;
            goto LABEL_59;
          }

          v35 = v34(*(v1 + 16), 11, v63 + 1, 0);
          if (v35 < 0)
          {
            v57 = 189;
LABEL_95:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v57, 60, "abort from callback", v25, v26, v27, v61);
            goto LABEL_82;
          }

          v36 = v33;
          v37 = v35 == 0;
          if (!v35)
          {
            v36 = 1;
          }

          if (v36 == 1)
          {
LABEL_59:
            v64 = -1;
            if ((sub_10011A254(*(v2 + 4), v68.d_name, d_namlen, &v64, v24, v25, v26, v27) & 0x80000000) != 0)
            {
              v53 = "String insertion failed";
              v54 = 196;
LABEL_80:
              v55 = 0;
LABEL_81:
              sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v54, 60, v55, v53, v20, v21, v61);
LABEL_82:
              closedir(v19);
              v7 = "Directory expansion";
              v8 = 211;
              goto LABEL_86;
            }

            v39 = v2[3];
            v38 = v2[4];
            v40 = *(v2 + 3);
            if (v38 >= v39)
            {
              v41 = 2 * v39;
              if (!v39)
              {
                v41 = 256;
              }

              v2[3] = v41;
              v42 = realloc(v40, 12 * v41);
              if (!v42)
              {
                free(v40);
                *(v2 + 3) = 0;
                v58 = __error();
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 201, 60, *v58, "malloc", v59, v60, v61);
                v2[3] = 0;
                v2[4] = 0;
                goto LABEL_82;
              }

              *(v2 + 3) = v42;
              v38 = v2[4];
              v40 = v42;
            }

            v2[4] = v38 + 1;
            v43 = &v40[12 * v38];
            v44 = v64;
            *v43 = v11;
            v43[1] = v44;
            v43[2] = !v37;
          }
        }
      }
    }
  }

  if (*__error() != 11)
  {
    v55 = *__error();
    v53 = "readdir_r";
    v54 = 144;
    goto LABEL_81;
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", 143, 60, "readdir on dataless directory: %s", v49, v50, v51, v69);
LABEL_71:
  closedir(v19);
  if (!**(v1 + 32))
  {
    v10 = v63;
    v12 = v9 + 1;
    goto LABEL_73;
  }

  v7 = "Abort requested";
  v8 = 212;
LABEL_86:
  v52 = 0;
LABEL_87:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "expandDirThreadProc", v8, 60, v52, v7, v4, v5, v61);
  atomic_fetch_add(*(v1 + 32), 1u);
  return 0;
}

uint64_t sub_10011FC00(_DWORD *a1)
{
  if (*a1)
  {
    v2 = sub_10011AC38(*(a1 + 2));
    v33 = 0;
    v3 = *a1;
    if ((sub_10011A7DC(*(a1 + 2), &v33) & 0x80000000) != 0)
    {
      v27 = "String table sorting";
      v28 = 379;
LABEL_30:
      v30 = 0;
    }

    else
    {
      if (v3)
      {
        v6 = v33;
        v7 = (*(a1 + 1) + 12);
        v8 = v3;
        do
        {
          v9 = *v7;
          if (v9 >= v2)
          {
            v27 = "Name out of range";
            v28 = 386;
            goto LABEL_30;
          }

          *v7 = v6[v9];
          *(v7 - 1) = -1;
          v7 += 6;
          --v8;
        }

        while (v8);
        v10 = 0;
        v11 = -1;
        a1[7] = -1;
        v12 = *(a1 + 1);
        v13 = (v12 + 8);
        do
        {
          v14 = *(v13 - 2);
          if (v14 == -1)
          {
            if (v11 != -1)
            {
              v27 = "Multiple root nodes";
              v28 = 399;
              goto LABEL_30;
            }

            a1[7] = v10;
            v11 = v10;
          }

          else
          {
            v15 = v12 + 24 * v14;
            *v13 = *(v15 + 4);
            *(v15 + 4) = v10;
          }

          ++v10;
          v13 += 6;
        }

        while (v3 != v10);
        v16 = calloc(v3, 4uLL);
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = (*(a1 + 1) + 16);
        do
        {
          v21 = *v20;
          v20 += 24;
          if ((v21 & 1) == 0)
          {
            *&v16[4 * v19++] = v18;
          }

          ++v18;
        }

        while (v3 != v18);
        qsort_r(v16, v19, 4uLL, a1, sub_100120714);
        v22 = a1 + 6;
        if (v19)
        {
          v23 = 0;
          v24 = *(a1 + 1);
          do
          {
            v25 = *&v17[v23];
            *v22 = v25;
            v22 = (v24 + 24 * v25 + 20);
            v23 += 4;
          }

          while (4 * v19 != v23);
        }

        goto LABEL_26;
      }

      a1[7] = -1;
      v29 = calloc(v3, 4uLL);
      if (v29)
      {
        v17 = v29;
        qsort_r(v29, 0, 4uLL, a1, sub_100120714);
        v22 = a1 + 6;
LABEL_26:
        v26 = 0;
        *v22 = -1;
LABEL_32:
        free(v33);
        free(v17);
        return v26;
      }

LABEL_28:
      v30 = *__error();
      v27 = "malloc";
      v28 = 410;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "normalize", v28, 60, v30, v27, v4, v5, v32);
    v17 = 0;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_32;
  }

  return 0;
}

AAPathList AAPathListCreateWithPath(const char *dir, const char *path)
{
  v2 = __chkstk_darwin(dir);
  bzero(v34, 0x400uLL);
  bzero(v33, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v2, v34))
  {
    v10 = *__error();
    v29 = v2;
    v8 = "Invalid dir: %s";
    v9 = 693;
LABEL_20:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v9, 60, v10, v8, v6, v7, v29);
    v11 = 0;
    goto LABEL_21;
  }

  v3 = strlen(v34);
  v5 = v3 != 1 || v34[0] != 47;
  __strlcpy_chk();
  if ((sub_1000F456C(v33) & 0x80000000) != 0)
  {
    v29 = v2;
    v8 = "Invalid path (subpath normalization failed): %s/%s";
    v9 = 699;
    goto LABEL_17;
  }

  if ((sub_1000F4680(v32, 0x800uLL, v34, v33) & 0x80000000) != 0)
  {
    v10 = *__error();
    v29 = v2;
    v8 = "Path too long: %s/%s";
    v9 = 705;
    goto LABEL_20;
  }

  if (!realpath_DARWIN_EXTSN(v32, __s))
  {
    v10 = *__error();
    v29 = v2;
    v8 = "Invalid path, doesn't exist: %s/%s";
    v9 = 706;
    goto LABEL_20;
  }

  if (v5 && (strlen(__s) < v3 || memcmp(__s, v34, v3) || __s[v3] && __s[v3] != 47))
  {
    v29 = v2;
    v8 = "Path resolving outside target dir: %s/%s";
    v9 = 713;
LABEL_17:
    v10 = 0;
    goto LABEL_20;
  }

  v11 = sub_10011E7D4();
  if (!v11)
  {
    goto LABEL_21;
  }

  v13 = strlen(v33);
  if (!v13)
  {
LABEL_38:
    if ((sub_10011FC00(v11) & 0x80000000) != 0)
    {
      v26 = "Tree normalization";
      v27 = 745;
      goto LABEL_42;
    }

    return v11;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = *(v11 + 1) + 24 * v11[7];
  *(v17 + 16) |= 1u;
  while (1)
  {
    v18 = v33[v15];
    if (v18 == 47 || v18 == 0)
    {
      break;
    }

LABEL_37:
    if (++v15 > v14)
    {
      goto LABEL_38;
    }
  }

  v30 = -1;
  if ((sub_10011F360(v11, *v11 + 1) & 0x80000000) != 0)
  {
    v26 = "increase PathList capacity";
    v27 = 732;
    goto LABEL_42;
  }

  if ((sub_10011A254(*(v11 + 2), &v33[v16], v15 - v16, &v30, v20, v21, v22, v23) & 0x80000000) == 0)
  {
    v24 = *v11;
    v25 = (*(v11 + 1) + 24 * *v11);
    *v25 = *v11 - 1;
    v25[3] = v30;
    v25[4] = v18 != 0;
    *v11 = v24 + 1;
    if (!v18)
    {
      goto LABEL_38;
    }

    v16 = ++v15;
    goto LABEL_37;
  }

  v26 = "inserting path component in table";
  v27 = 733;
LABEL_42:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListCreateWithPath", v27, 60, 0, v26, v22, v23, v28);
LABEL_21:
  AAPathListDestroy(v11);
  return 0;
}

int AAPathListNodeGetPath(AAPathList path_list, uint64_t node, size_t path_capacity, char *path, size_t *path_length)
{
  if (node == -1)
  {
    if (path_capacity)
    {
      *path = 0;
    }

    result = 0;
    *path_length = 0;
  }

  else if (*path_list <= node)
  {
    return -1;
  }

  else
  {
    v7 = 0;
    result = sub_1001202D0(path_list, node, path_capacity, path, &v7);
    if (path_length)
    {
      *path_length = v7;
    }
  }

  return result;
}

uint64_t sub_1001202D0(uint64_t a1, unsigned int a2, size_t a3, _BYTE *a4, size_t *a5)
{
  if (a2 == -1)
  {
    v17 = 0;
    if (a3)
    {
      *a4 = 0;
    }

    goto LABEL_15;
  }

  if ((sub_1001202D0() & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 16);
  v11 = *(v10 + 8) + 16 * *(*(a1 + 8) + 24 * a2 + 12);
  v12 = *(v11 + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *a5;
  v14 = *a5 + 1;
  if (v14 + v12 < a3)
  {
    v15 = *(v10 + 32);
    v16 = *v11;
    if (v13)
    {
      a4[v13] = 47;
    }

    else
    {
      v14 = 0;
    }

    memcpy(&a4[v14], (v15 + v16), v12);
    v17 = v14 + v12;
    a4[v14 + v12] = 0;
    goto LABEL_15;
  }

  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v13 + (v12 + 1);
LABEL_15:
  result = 0;
  *a5 = v17;
  return result;
}

uint64_t AAPathListGetNode(uint64_t a1, char *__s)
{
  v2 = *(a1 + 28);
  if (v2 != -1)
  {
    v6 = strlen(__s);
    if (!v6)
    {
      return v2;
    }

    v7 = 0;
    v15 = v6;
    while (1)
    {
      v8 = v6 <= v7 + 1 ? v7 + 1 : v6;
      v9 = v7;
      while (__s[v9] != 47)
      {
        if (v8 == ++v9)
        {
          v10 = __s[v8] != 0;
          v9 = v8;
          goto LABEL_14;
        }
      }

      v10 = 1;
LABEL_14:
      if (v9 == v7)
      {
        break;
      }

      v11 = *(a1 + 8);
      v2 = *(v11 + 24 * v2 + 4);
      if (v2 == -1)
      {
        break;
      }

      v16 = v10;
      v12 = *(a1 + 16);
      v13 = *(v12 + 8);
      while (1)
      {
        v14 = *(v11 + 24 * v2 + 12);
        if (v9 - v7 == *(v13 + 16 * v14 + 8) && !strncmp((*(v12 + 32) + *(v13 + 16 * v14)), &__s[v7], v9 - v7))
        {
          break;
        }

        v2 = *(v11 + 24 * v2 + 8);
        if (v2 == -1)
        {
          return -1;
        }
      }

      v6 = v15;
      v7 = v9 + v16;
      if (v9 + v16 >= v15)
      {
        return v2;
      }
    }
  }

  return -1;
}

uint64_t AAPathListMerge(uint64_t a1, unsigned int *a2)
{
  v21 = 0;
  if (*a2 == 1)
  {
    return 0;
  }

  if ((sub_10011A6AC(*(a1 + 16), *(a2 + 2), &v21) & 0x80000000) != 0)
  {
    v18 = "String table merge";
    v19 = 800;
  }

  else
  {
    v7 = *a1;
    if ((sub_10011F360(a1, *a2 + *a1) & 0x80000000) != 0)
    {
      v18 = "Capacity increase";
      v19 = 804;
    }

    else
    {
      if (*a2 >= 2)
      {
        v8 = *(a1 + 8);
        v9 = *a1;
        v10 = (*(a2 + 1) + 40);
        v11 = 1;
        do
        {
          v12 = v8 + 24 * v9++;
          *a1 = v9;
          v13 = v21 + *(v10 - 1);
          v14 = *(v10 - 4);
          v15 = v14 == 0;
          v16 = v7 - 1 + v14;
          if (v15)
          {
            v16 = 0;
          }

          *v12 = v16;
          v17 = *v10;
          v10 += 6;
          *(v12 + 12) = v13;
          *(v12 + 16) = v17;
          *(v12 + 20) = -1;
          *(v12 + 4) = -1;
          ++v11;
        }

        while (v11 < *a2);
      }

      if ((sub_10011FC00(a1) & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = "Tree normalization";
      v19 = 816;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListMerge", v19, 60, 0, v18, v5, v6, v20);
  return 0xFFFFFFFFLL;
}

uint64_t AAPathListNodeFirst(AAPathList path_list)
{
  if (*(path_list + 6) == -1)
  {
    return -1;
  }

  else
  {
    return *(path_list + 6);
  }
}

uint64_t AAPathListNodeNext(AAPathList path_list, uint64_t node)
{
  if (*path_list <= node)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathList.c", "AAPathListNodeNext", 826, 60, 0, "Invalid node: %llu", v2, v3, node);
    return -1;
  }

  else if (*(*(path_list + 1) + 24 * node + 20) == -1)
  {
    return -1;
  }

  else
  {
    return *(*(path_list + 1) + 24 * node + 20);
  }
}

uint64_t sub_100120714(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  v6 = (v5 + 24 * v3);
  v7 = (v5 + 24 * *a3);
  if (*v6 == *v7)
  {
    v8 = v6[3];
    v9 = v7[3];
    if (v8 < v9)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v9 < v8;
    }
  }

  else
  {
    if (*a1 <= v3 || (*__s2 = 0, (sub_1001202D0(a1, v3, 0x400uLL, __s1, __s2) & 0x80000000) != 0) || *__s2 >= 0x400uLL)
    {
      __s1[0] = 0;
    }

    if (*a1 <= v4 || (v12 = 0, (sub_1001202D0(a1, v4, 0x400uLL, __s2, &v12) & 0x80000000) != 0) || v12 >= 0x400)
    {
      __s2[0] = 0;
    }

    return strcmp(__s1, __s2);
  }
}

void **sub_100120834(size_t a1)
{
  v2 = malloc(0x28uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    if ((sub_1001208C8(v2, a1) & 0x8000000000000000) != 0)
    {
      free(v3[4]);
      free(v3);
      return 0;
    }
  }

  else
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferCreate", 41, 36, *v4, "malloc", v5, v6, v8);
  }

  return v3;
}

unint64_t sub_1001208C8(uint64_t a1, size_t a2)
{
  result = *a1;
  if (result < a2)
  {
    v5 = reallocf(*(a1 + 32), a2);
    *(a1 + 32) = v5;
    if (v5)
    {
      *a1 = a2;
      return a2;
    }

    else
    {
      v6 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseCapacity", 91, 36, *v6, "malloc", v7, v8, v9);
      return -1;
    }
  }

  return result;
}

void sub_100120944(void **a1)
{
  if (a1)
  {
    free(a1[4]);

    free(a1);
  }
}

void **sub_100120988(size_t a1, const void *a2)
{
  v4 = sub_100120834(a1);
  v5 = v4;
  if (v4)
  {
    memcpy(v4[4], a2, a1);
    v5[1] = a1;
    v5[2] = 0;
    v5[3] = a1;
  }

  return v5;
}

uint64_t sub_100120A00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      memmove(*(a1 + 32), (*(a1 + 32) + v3), v2);
      v4 = *(a1 + 8);
      *(a1 + 16) = 0;
      *(a1 + 24) = v4;
    }
  }

  return *(a1 + 32) + *(a1 + 24);
}

uint64_t sub_100120A4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 8);
  v10 = *(a1 + 8);
  result = v10 - a2;
  if (v10 >= a2)
  {
    if (v10 == a2)
    {
      result = 0;
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
    }

    else
    {
      v12 = *(a1 + 16) + a2;
      *(a1 + 8) = result;
      *(a1 + 16) = v12;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferDecreaseSize", 117, 36, 0, "MemBufferDecreaseSize n is too large: %zu", a7, a8, a2);
    return -1;
  }

  return result;
}

uint64_t sub_100120AD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3] + a2;
  if (v8 <= *a1)
  {
    a1[3] = v8;
    v9 = a1[1] + a2;
    a1[1] = v9;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferIncreaseSize", 137, 36, 0, "MemBufferIncreaseSize n is too large: %zu", a7, a8, a2);
    return -1;
  }

  return v9;
}

void *sub_100120B50(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_100120B6C(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = *a1 - a1[1];
  v7 = sub_100120A00(a1);
  if (v6 >= a2)
  {
    memcpy(v7, a3, a2);

    return sub_100120AD4(a1, a2, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromBuffer", 162, 36, 0, "MemBufferFillFromBuffer n is too large: %zu", v8, v9, a2);
    return -1;
  }
}

uint64_t sub_100120C20(unint64_t *a1, size_t a2, const void *a3)
{
  v6 = a1[1] + a2;
  if (v6 > *a1 && (sub_1001208C8(a1, v6) & 0x8000000000000000) != 0)
  {
    return -1;
  }

  return sub_100120B6C(a1, a2, a3);
}

uint64_t sub_100120C9C(void *a1, size_t __n, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] >= __n)
  {
    memcpy(__dst, (a1[4] + a1[2]), __n);

    return sub_100120A4C(a1, __n, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToBuffer", 183, 36, 0, "MemBufferFlushToBuffer n is too large: %zu", a7, a8, __n);
    return -1;
  }
}

uint64_t sub_100120D44(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v8 = *a1 - a1[1];
  v9 = sub_100120A00(a1);
  if (v8 >= a2)
  {
    v8 = a2;
  }

  if (v8)
  {
    v16 = v9;
    v17 = 0;
    while (1)
    {
      v18 = a3(a4, v16, v8);
      if (v18 < 0)
      {
        return -1;
      }

      if (v18)
      {
        v16 += v18;
        v17 += v18;
        v8 -= v18;
        if (v8)
        {
          continue;
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
LABEL_10:

    return sub_100120AD4(a1, v17, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_100120E00(unint64_t *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (!a2)
  {
    return a1[1];
  }

  v8 = 0;
  while (1)
  {
    v9 = *a1 - a1[1];
    v10 = sub_100120A00(a1);
    if (v9)
    {
      goto LABEL_9;
    }

    v11 = *a1 ? *a1 + (*a1 >> 2) : 0x10000;
    if ((sub_1001208C8(a1, v11) & 0x8000000000000000) != 0)
    {
      break;
    }

    v9 = *a1 - a1[1];
    v10 = sub_100120A00(a1);
LABEL_9:
    v14 = a3(a4, v10, v9);
    if (v14 < 0)
    {
      return -1;
    }

    if (v14)
    {
      v8 += v14;
      sub_100120AD4(a1, v14, v15, v16, v17, v18, v19, v20);
      if (v8 < a2)
      {
        continue;
      }
    }

    return a1[1];
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFillFromIStreamWithCapacityIncrease", 229, 36, 0, "Capacity increase failed", v12, v13, v22);
  return -1;
}

uint64_t sub_100120EF4(void *a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[1] >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a1[1];
  }

  if (v9)
  {
    v12 = 0;
    v13 = a1[4] + a1[2];
    while (1)
    {
      v14 = a3(a4, v13, v9);
      if (v14 < 0)
      {
        return -1;
      }

      if (!v14)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferFlushToOStream", 265, 36, 0, "MemBuffer write proc returned 0", a7, a8, v16);
        return -1;
      }

      v13 += v14;
      v12 += v14;
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_11:

    return sub_100120A4C(a1, v12, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100120FD4(unint64_t *a1, unint64_t a2, size_t (*a3)(int a1, void *a2, size_t a3), uint64_t a4, uint64_t (*a5)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a3 | a5)
  {
    if (a3)
    {
      v11 = a4;
    }

    else
    {
      v11 = 0;
    }

    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = sub_1000FD92C;
    }

    if (a5)
    {
      v13 = a6;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      v14 = a5;
    }

    else
    {
      v14 = sub_1000FD95C;
    }

    if (*a1)
    {
      a1[1] = 0;
      a1[2] = 0;
      a1[3] = 0;
      v9 = 0;
      if (!a2)
      {
        return v9;
      }

      while (1)
      {
        if (*a1 >= v8)
        {
          v15 = v8;
        }

        else
        {
          v15 = *a1;
        }

        v16 = v12(v11, a1[4], v15);
        if (v16 < 0)
        {
          v19 = "read failed";
          v20 = 294;
          goto LABEL_30;
        }

        v17 = v16;
        v18 = v14(v13, a1[4], v16);
        if ((v18 & 0x8000000000000000) != 0)
        {
          v19 = "write failed";
          v20 = 298;
          goto LABEL_30;
        }

        if (v18 < v17)
        {
          break;
        }

        if (v17)
        {
          v9 += v17;
          if (v8 == -1)
          {
            v8 = -1;
          }

          else
          {
            v8 -= v17;
          }

          if (v8)
          {
            continue;
          }
        }

        return v9;
      }

      v19 = "truncated write";
      v20 = 299;
    }

    else
    {
      v19 = "MemBuffer is not allocated";
      v20 = 281;
    }

LABEL_30:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MemBufferTransmit", v20, 36, 0, v19, a7, a8, v22);
    return -1;
  }

  return a2;
}

void *sub_100121150(const char *a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v24, 0, sizeof(v24));
    v8 = getpagesize();
    *(v7 + 1) = 1;
    v9 = open(a1, 0);
    *v7 = v9;
    if (v9 < 0)
    {
      v13 = *__error();
      v23 = a1;
      v14 = "%s";
      v15 = 344;
      goto LABEL_7;
    }

    v10 = v9;
    if (fstat(v9, &v24))
    {
      v13 = *__error();
      v23 = a1;
      v14 = "%s";
      v15 = 347;
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", v15, 36, v13, v14, v11, v12, v23);
      sub_1001213A4(v7);
      return 0;
    }

    if (v24.st_size > a2)
    {
      if (a3 == -1)
      {
        a3 = v24.st_size - a2;
      }

      else if (a3 + a2 > v24.st_size)
      {
        v23 = a2;
        v14 = "invalid offset=%llu, size=%llu in file %s";
        v15 = 352;
LABEL_19:
        v13 = 0;
        goto LABEL_7;
      }

      if (a3)
      {
        v7[4] = a3;
        v20 = a2 / v8 * v8;
        v21 = a2 % v8;
        v7[2] = v21 + a3;
        v22 = mmap(0, v21 + a3, 1, 2, v10, v20);
        v7[1] = v22;
        if (v22 != -1)
        {
          v7[3] = &v22[v21];
          return v7;
        }

        v13 = *__error();
        v14 = "mmap file segment";
        v15 = 364;
        goto LABEL_7;
      }

      v23 = 0;
      v14 = "invalid size=%llu";
      v15 = 354;
      goto LABEL_19;
    }

    v23 = a2;
    v14 = "invalid offset=%llu in file %s";
    v15 = 348;
    goto LABEL_19;
  }

  v16 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFilename", 329, 36, *v16, "malloc", v17, v18, v23);
  return v7;
}

void sub_1001213A4(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2 != -1)
    {
      munmap(v2, a1[2]);
    }

    if (*(a1 + 1) && (*a1 & 0x80000000) == 0)
    {
      close(*a1);
    }

    free(a1);
  }
}

void *sub_100121408(int a1, unint64_t a2, unint64_t a3)
{
  v6 = malloc(0x28uLL);
  v7 = v6;
  if (v6)
  {
    v6[3] = 0;
    v6[4] = 0;
    v6[1] = -1;
    v6[2] = 0;
    memset(&v23, 0, sizeof(v23));
    v8 = getpagesize();
    *v7 = a1;
    *(v7 + 1) = 0;
    if (a1 < 0)
    {
      v13 = "invalid file descriptor";
      v14 = 397;
LABEL_17:
      v12 = 0;
      goto LABEL_18;
    }

    v11 = v8;
    if (fstat(a1, &v23))
    {
      v12 = *__error();
      v13 = "MappedBuffer fstat";
      v14 = 400;
LABEL_18:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", v14, 36, v12, v13, v9, v10, v22);
      sub_1001213A4(v7);
      return 0;
    }

    if (v23.st_size <= a2)
    {
      v22 = a2;
      v13 = "invalid offset=%llu for fd";
      v14 = 401;
      goto LABEL_17;
    }

    if (a3 == -1)
    {
      a3 = v23.st_size - a2;
    }

    else if (a3 + a2 > v23.st_size)
    {
      v22 = a2;
      v13 = "invalid offset=%llu, size=%llu for fd";
      v14 = 405;
      goto LABEL_17;
    }

    if (!a3)
    {
      v22 = 0;
      v13 = "invalid size=%llu for fd";
      v14 = 407;
      goto LABEL_17;
    }

    v7[4] = a3;
    v18 = a2 / v11 * v11;
    v19 = a2 % v11;
    v7[2] = v19 + a3;
    v20 = mmap(0, v19 + a3, 1, 1, a1, v18);
    v7[1] = v20;
    if (v20 == -1)
    {
      v12 = *__error();
      v13 = "mmap file segment";
      v14 = 417;
      goto LABEL_18;
    }

    v7[3] = &v20[v19];
  }

  else
  {
    v15 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "MappedBufferCreateWithFD", 382, 36, *v15, "malloc", v16, v17, v22);
  }

  return v7;
}

void *sub_10012163C(uint64_t a1, const char *a2)
{
  memset(&v16, 0, sizeof(v16));
  address = 0;
  v4 = mach_task_self_;
  v5 = calloc(1uLL, 0x430uLL);
  v6 = v5;
  if (v5)
  {
    *(v5 + 256) = -1;
    v7 = (a1 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
    if (!a1)
    {
      v7 = 10485760;
    }

    v5[130] = v7;
    if (!a2)
    {
      __strlcpy_chk();
      goto LABEL_11;
    }

    if (realpath_DARWIN_EXTSN(a2, v5))
    {
      if (stat(a2, &v16) || (v16.st_mode & 0xF000) != 0x4000)
      {
        v14 = a2;
        v10 = "Invalid tempDir %s";
        v11 = 526;
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }

LABEL_11:
      __strlcat_chk();
      if (vm_allocate(v4, &address, v6[130], 1))
      {
        v10 = "Failed vm_allocate out buffer";
        v11 = 531;
      }

      else
      {
        if (!vm_protect(v4, address, v6[130], 0, 3))
        {
          v6[129] = address;
          return v6;
        }

        v10 = "Failed vm_protect out buffer";
        v11 = 532;
      }

      goto LABEL_16;
    }

    v12 = *__error();
    v14 = a2;
    v10 = "Invalid tempDir %s";
    v11 = 525;
  }

  else
  {
    v12 = *__error();
    v10 = "malloc";
    v11 = 514;
  }

LABEL_17:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferCreate", v11, 36, v12, v10, v8, v9, v14);
  sub_100121848(v6);
  return 0;
}

void sub_100121848(void *a1)
{
  if (a1)
  {
    v2 = a1[129];
    if (v2)
    {
      vm_deallocate(mach_task_self_, v2, a1[130]);
      a1[129] = 0;
    }

    v3 = *(a1 + 256);
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
      unlink(a1);
    }

    free(a1);
  }
}

uint64_t sub_1001218B8(uint64_t a1)
{
  *(a1 + 1068) = 1;
  *(a1 + 1048) = 0;
  return 0;
}

size_t sub_1001218CC(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100121904(a1, a2, a3, *(a1 + 1048), a5, a6, a7, a8);
  if ((result & 0x8000000000000000) == 0)
  {
    *(a1 + 1048) += result;
  }

  return result;
}

size_t sub_100121904(char *a1, void *__buf, size_t __nbyte, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 266) || *(a1 + 267))
  {
    return -1;
  }

  if (*(a1 + 132) < a4)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPWrite", 590, 36, 0, "offset out of range: %llllu", a7, a8, a4);
    return -1;
  }

  v10 = __nbyte;
  v12 = a4 + __nbyte;
  v13 = *(a1 + 129);
  if (v13)
  {
    if (v12 <= *(a1 + 130))
    {
      memcpy((v13 + a4), __buf, __nbyte);
      goto LABEL_19;
    }

    if ((*(a1 + 256) & 0x80000000) == 0)
    {
      v14 = "Already switched to file";
      v15 = 475;
LABEL_9:
      v16 = 0;
LABEL_24:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "tempBufferSwitchToFile", v15, 36, v16, v14, a7, a8, v27);
      v24 = "switching to tmp file";
      v25 = 597;
      goto LABEL_25;
    }

    v17 = mkstemp(a1);
    *(a1 + 256) = v17;
    if (v17 < 0)
    {
      v16 = *__error();
      v27 = a1;
      v14 = "%s";
      v15 = 479;
      goto LABEL_24;
    }

    v18 = write(v17, *(a1 + 129), *(a1 + 132));
    if (v18 < 0)
    {
      v16 = *__error();
      v14 = "write";
      v15 = 483;
      goto LABEL_24;
    }

    if (v18 != *(a1 + 132))
    {
      v14 = "truncated write";
      v15 = 484;
      goto LABEL_9;
    }

    v19 = *(a1 + 129);
    if (v19)
    {
      vm_deallocate(mach_task_self_, v19, *(a1 + 130));
      *(a1 + 129) = 0;
    }
  }

  v20 = *(a1 + 256);
  if (v20 < 0)
  {
    return -1;
  }

  v21 = pwrite(v20, __buf, v10, a4);
  if (v21 < 0 || v21 != v10)
  {
    v24 = "Write to tmp error";
    v25 = 611;
LABEL_25:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPWrite", v25, 36, 0, v24, v22, v23, v27);
    return -1;
  }

LABEL_19:
  if (v12 > *(a1 + 132))
  {
    *(a1 + 132) = v12;
  }

  return v10;
}

size_t sub_100121B30(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100121B68(a1, a2, a3, *(a1 + 1048), a5, a6, a7, a8);
  if ((result & 0x8000000000000000) == 0)
  {
    *(a1 + 1048) += result;
  }

  return result;
}

size_t sub_100121B68(uint64_t a1, void *__buf, size_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1064) || !*(a1 + 1068))
  {
    return -1;
  }

  v10 = *(a1 + 1056);
  if (v10 < a4)
  {
    v16 = a4;
    v11 = "offset out of range: %llllu";
    v12 = 634;
LABEL_7:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferPRead", v12, 36, 0, v11, a7, a8, v16);
    return -1;
  }

  if (a4 + a3 <= v10)
  {
    v8 = a3;
  }

  else
  {
    v8 = v10 - a4;
  }

  if (v8)
  {
    v13 = *(a1 + 1032);
    if (v13)
    {
      memcpy(__buf, (v13 + a4), v8);
      return v8;
    }

    v14 = *(a1 + 1024);
    if (v14 < 0)
    {
      return -1;
    }

    v15 = pread(v14, __buf, v8, a4);
    if (v15 < 0 || v15 != v8)
    {
      v11 = "Read from tmp error";
      v12 = 650;
      goto LABEL_7;
    }
  }

  return v8;
}

uint64_t sub_100121C50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  if (*(a1 + 1056) >= a2)
  {
    *(a1 + 1048) = a2;
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOBuffers.c", "TempBufferSetPos", 662, 36, 0, "offset out of range: %llllu size=%ll llu", a7, a8, a2);
    return -1;
  }

  return a2;
}

uint64_t sub_100121CC8(uint64_t a1)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  else
  {
    return *(a1 + 1048);
  }
}

uint64_t sub_100121CE0(uint64_t a1)
{
  if (*(a1 + 1064))
  {
    return -1;
  }

  else
  {
    return *(a1 + 1056);
  }
}

unint64_t AAAsyncByteStreamProcessAllRanges(void *a1, void *a2, int a3, size_t __count)
{
  if (!__count)
  {
    LODWORD(__count) = sub_1000F4290();
  }

  v47 = 0;
  v46 = 0;
  v6 = __count;
  v7 = calloc(__count, 8uLL);
  v8 = v7;
  if (!v7)
  {
    v30 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 79, 116, *v30, "malloc", v31, v32, v44);
    v15 = 0;
    goto LABEL_24;
  }

  if (v6)
  {
    v9 = v6;
    v10 = v7;
    do
    {
      v11 = malloc(0x48uLL);
      v12 = v11;
      if (!v11)
      {
        v33 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 83, 116, *v33, "malloc", v34, v35, v44);
        v15 = 0;
        goto LABEL_25;
      }

      memset_s(v11, 0x48uLL, 0, 0x48uLL);
      *v12 = a2;
      v12[1] = a1;
      v12[2] = &v47;
      v12[3] = &v46;
      *v10++ = v12;
      --v9;
    }

    while (v9);
  }

  v15 = sub_1001021B4(v6, v8, sub_100122010);
  if (!v15)
  {
    v42 = "ThreadPoolCreate";
    v43 = 93;
    goto LABEL_23;
  }

  if (atomic_load(&v47))
  {
LABEL_10:
    LODWORD(v12) = 1;
    goto LABEL_25;
  }

  while (1)
  {
    v44 = 0;
    v45 = 0;
    Range = AAAsyncByteStreamGetRange(a1, &v45, &v44);
    if (Range < 0)
    {
      v42 = "AAAsyncByteStreamGetRange";
      v43 = 101;
      goto LABEL_23;
    }

    if (!Range)
    {
      usleep(0x4E20u);
      goto LABEL_17;
    }

    if (!v45)
    {
      goto LABEL_10;
    }

    v17 = sub_100102924(v15, v25, v26, v27, v28, v29, v13, v14);
    if (!v17)
    {
      break;
    }

    v22 = v44;
    *(v17 + 32) = v45;
    *(v17 + 40) = v22;
    if ((sub_100102A58(v15, v17, v18, v19, v20, v21, v13, v14) & 0x80000000) != 0)
    {
      v42 = "ThreadPoolRunWorker";
      v43 = 110;
      goto LABEL_23;
    }

LABEL_17:
    v23 = atomic_load(&v47);
    LODWORD(v12) = 1;
    if (v23)
    {
      goto LABEL_25;
    }
  }

  v42 = "ThreadPoolGetWorker";
  v43 = 107;
LABEL_23:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", v43, 116, 0, v42, v13, v14, v44);
LABEL_24:
  LODWORD(v12) = 0;
LABEL_25:
  if ((sub_100102638(v15) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 115, 116, 0, "Threads reported errors", v36, v37, v44);
    LODWORD(v12) = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v38 = v8;
      do
      {
        v39 = *v38;
        if (*v38)
        {
          free(v39[8]);
          free(v39);
        }

        ++v38;
        --v6;
      }

      while (v6);
    }

    free(v8);
  }

  if (atomic_load(&v47))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "AAAsyncByteStreamProcessAllRanges", 127, 116, 0, "Threads reported errors", v36, v37, v44);
    return -1;
  }

  if (v12)
  {
    return atomic_load(&v46);
  }

  else
  {
    return -1;
  }
}

uint64_t sub_100122010(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) < v2)
  {
    *(a1 + 48) = v2;
    if (v2 >= 0x2000000001)
    {
      *__error() = 12;
LABEL_16:
      *(a1 + 64) = 0;
      v12 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", 36, 116, *v12, "malloc", v13, v14, v16);
      *(a1 + 48) = 0;
      goto LABEL_17;
    }

    v3 = *(a1 + 64);
    v4 = realloc(v3, v2);
    if (!v4)
    {
      free(v3);
      goto LABEL_16;
    }

    *(a1 + 64) = v4;
    v2 = *(a1 + 32);
  }

  *(a1 + 56) = 0;
  v5 = 0;
  if (v2)
  {
    while (1)
    {
      v6 = AAByteStreamPRead(*a1, (*(a1 + 64) + v5), v2 - v5, *(a1 + 40) + v5);
      if (v6 < 0)
      {
        break;
      }

      v5 = *(a1 + 56);
      if (v6)
      {
        v5 += v6;
        *(a1 + 56) = v5;
        v2 = *(a1 + 32);
        if (v5 < v2)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v10 = "istream read";
    v11 = 43;
  }

  else
  {
LABEL_10:
    if ((AAAsyncByteStreamProcess(*(a1 + 8), *(a1 + 64), v5, *(a1 + 40)) & 0x80000000) == 0)
    {
      result = 0;
      atomic_fetch_add_explicit(*(a1 + 24), *(a1 + 56), memory_order_relaxed);
      return result;
    }

    v10 = "stream process";
    v11 = 50;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAAsyncByteStreamProcessAllRanges.c", "workerProc", v11, 116, 0, v10, v7, v8, v16);
LABEL_17:
  v15 = 0;
  *(a1 + 56) = 0;
  atomic_compare_exchange_strong(*(a1 + 16), &v15, 1u);
  return 0xFFFFFFFFLL;
}

void *sub_100122190(int a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, __int16 a7)
{
  v14 = calloc(1uLL, 0x68uLL);
  v15 = malloc(0x80uLL);
  v16 = v15;
  if (v15)
  {
    memset_s(v15, 0x80uLL, 0, 0x80uLL);
    if (v14)
    {
      *v16 = -1;
      if ((a7 & 0x100) == 0)
      {
        if (a1 < 0)
        {
          unlink(a2);
        }

        else
        {
          unlinkat(a1, a2, 0);
        }
      }

      if (a7)
      {
        a6 = 4;
      }

      if (a6 < 1)
      {
        v28 = *v16;
        if ((*v16 & 0x80000000) != 0)
        {
          v46 = -92;
          v28 = a1 < 0 ? open(a2, 1793) : openat(a1, a2, 1793);
          *v16 = v28;
          if (v28 < 0)
          {
            v21 = *__error();
            v46 = a2;
            v24 = "%s";
            v25 = 363;
            goto LABEL_7;
          }
        }
      }

      else if (a1 < 0)
      {
        v46 = -92;
        v28 = open_dprotected_np(a2, 1793, a6, 0);
        *v16 = v28;
        if (v28 < 0)
        {
LABEL_22:
          v21 = *__error();
          v46 = a2;
          v24 = "%s";
          v25 = 354;
          goto LABEL_7;
        }
      }

      else
      {
        v27 = openat(a1, a2, 1793, 420);
        *v16 = v27;
        if (v27 < 0)
        {
          goto LABEL_22;
        }

        v46 = a6;
        if (fcntl(v27, 64) < 0)
        {
          v21 = *__error();
          v24 = "fcntl F_SETPROTECTIONCLASS";
          v25 = 352;
          goto LABEL_7;
        }

        v28 = *v16;
        if ((*v16 & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      if ((a7 & 8) != 0)
      {
        v46 = 1;
        if (fcntl(v28, 48))
        {
          v29 = __error();
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 371, 67, "Warning: F_NOCACHE failed with error %d: %s\n", v30, v31, v32, *v29);
        }
      }

      if ((a7 & 2) != 0)
      {
        v46 = 1;
        if (fcntl(*v16, 68) == -1)
        {
          v33 = __error();
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 380, 67, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v34, v35, v36, *v33);
        }
      }

      if (a3 > 0)
      {
        if (a4 != -1 && (a7 & 4) != 0)
        {
          v37 = AAAFSCStreamOpen(*v16, a3, a4, a5, v17, v18, v19, v20);
          *(v16 + 40) = v37;
          if (!v37)
          {
            v46 = a2;
            v24 = "ParallelCompressionAFSCStreamOpen failed: %s";
            v25 = 389;
            goto LABEL_60;
          }
        }

        if ((a7 & 0x40) != 0 && !*(v16 + 40))
        {
          v38 = fpathconf(*v16, 27);
          if (v38 >= 1)
          {
            *(v16 + 88) = 1;
            if (v38 == 4096)
            {
              *(v16 + 96) = 4096;
            }

            else
            {
              v39 = 0x10000;
              if (v38 < 0x10000)
              {
                v39 = v38;
              }

              v40 = 1024;
              do
              {
                v41 = v40;
                v40 *= 2;
              }

              while (v41 < v39);
              *(v16 + 96) = v41;
            }
          }
        }
      }

      *(v16 + 16) = a3;
      *(v16 + 56) = 0x40000;
      if (*(v16 + 40))
      {
        goto LABEL_58;
      }

      v42 = *(v16 + 72);
      if (v42 >> 18)
      {
        goto LABEL_58;
      }

      do
      {
        v43 = (v42 >> 1) + v42;
        if (((v42 >> 1) & v42) != 0)
        {
          v43 = ((v42 >> 1) & v42) + v42;
        }

        if (v42)
        {
          v42 = v43;
        }

        else
        {
          v42 = 0x4000;
        }
      }

      while (v42 < 0x40000);
      v44 = *(v16 + 80);
      v45 = realloc(v44, v42);
      if (v45)
      {
        *(v16 + 72) = v42;
        *(v16 + 80) = v45;
LABEL_58:
        *v14 = v16;
        v14[1] = sub_1001225F4;
        v14[7] = sub_100122794;
        v14[3] = sub_1001227A8;
        v14[12] = sub_100122A88;
        return v14;
      }

      free(v44);
      *(v16 + 64) = 0;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0;
      v24 = "alloc blob";
      v25 = 434;
LABEL_60:
      v21 = 0;
      goto LABEL_7;
    }
  }

  v21 = *__error();
  v24 = "malloc";
  v25 = 329;
LABEL_7:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", v25, 67, v21, v24, v22, v23, v46);
  sub_1001225F4(v16);
  free(v14);
  return 0;
}

uint64_t sub_1001225F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 48));
    v3 = v2 == 0;
    if (AAByteStreamClose(*(result + 40)) < 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 197, 67, 0, "closing AFSC stream", v4, v5, v17);
      v3 = 0;
    }

    if (*(v1 + 120) && *(v1 + 104))
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = (*(v1 + 120) + v6);
        v20 = 0;
        v21 = 0;
        v19 = 0;
        v9 = *v8;
        v10 = v8[1] - *v8;
        v20 = v9;
        v21 = v10;
        if (fcntl(*v1, 99, &v19) < 0)
        {
          break;
        }

        ++v7;
        v6 += 16;
        if (v7 >= *(v1 + 104))
        {
          goto LABEL_11;
        }
      }

      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 209, 67, "F_PUNCHHOLE failed", v11, v12, v13, v18);
    }

LABEL_11:
    if ((*(v1 + 8) & 0x10) != 0 && fcntl(*v1, 51) == -1)
    {
      v14 = __error();
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 218, 67, *v14, "Final FULLFSYNC", v15, v16, 0);
    }

    if ((*v1 & 0x80000000) == 0 && !*(v1 + 4))
    {
      close(*v1);
    }

    free(*(v1 + 80));
    memset_s((v1 + 64), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 120));
    free(v1);
    return (v3 - 1);
  }

  return result;
}

uint64_t sub_1001227A8(uint64_t a1, uint64_t __src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!atomic_load((a1 + 48)))
  {
    v10 = a3;
    v12 = *(a1 + 24);
    if (__CFADD__(a3, v12) || (a3 + v12) > *(a1 + 16))
    {
      v32 = a3 + v12;
      v16 = "received too many bytes %llu/%llu";
      v17 = 275;
      goto LABEL_13;
    }

    v13 = __src;
    v14 = *(a1 + 40);
    if (v14)
    {
      if (!v14[3])
      {
        v9 = -1;
LABEL_46:
        if (v12 != *(a1 + 16) || (sub_100123290(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            return v9;
          }

          goto LABEL_14;
        }

        v16 = "flush buf";
        v17 = 298;
LABEL_13:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", v17, 67, 0, v16, a7, a8, v32);
        v9 = -1;
LABEL_14:
        v18 = 0;
        atomic_compare_exchange_strong((a1 + 48), &v18, 1u);
        return v9;
      }

      if (a3)
      {
        v9 = 0;
        while (1)
        {
          v15 = (v14[3])(*v14, v13, v10);
          if (v15 < 1)
          {
            break;
          }

          v13 += v15;
          v9 += v15;
          v10 -= v15;
          if (!v10)
          {
            goto LABEL_41;
          }
        }

        v12 = *(a1 + 24);
        v9 = v15;
        goto LABEL_46;
      }
    }

    else if (a3)
    {
      v9 = 0;
      v20 = (a1 + 64);
      v19 = *(a1 + 64);
      do
      {
        v21 = *(a1 + 56);
        v22 = v21 - v19;
        if (v21 == v19)
        {
          if ((sub_100123290(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            v16 = "flush buf";
            v17 = 284;
            goto LABEL_13;
          }

          v19 = *v20;
        }

        if (v10 < v22)
        {
          v22 = v10;
        }

        v23 = __CFADD__(v19, v22);
        v24 = v19 + v22;
        if (v23 || (v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v25 = *(a1 + 72);
        if (v25 < v24)
        {
          do
          {
            while (!v25)
            {
              v25 = 0x4000;
              v27 = 0x4000;
              if (v24 <= 0x4000)
              {
                goto LABEL_33;
              }
            }

            v26 = v25 >> 1;
            if ((v25 & (v25 >> 1)) != 0)
            {
              v26 = v25 & (v25 >> 1);
            }

            v25 += v26;
          }

          while (v25 < v24);
          v27 = v25;
          if (v25 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_54;
          }

LABEL_33:
          v28 = *(a1 + 80);
          v29 = realloc(v28, v27);
          if (v29)
          {
            *(a1 + 72) = v27;
            *(a1 + 80) = v29;
            goto LABEL_35;
          }

          free(v28);
LABEL_54:
          *v20 = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
LABEL_55:
          v16 = "append to buf";
          v17 = 286;
          goto LABEL_13;
        }

LABEL_35:
        v30 = *(a1 + 80);
        if (v13)
        {
          memcpy((v30 + *v20), v13, v22);
        }

        else if (v30)
        {
          memset_s((v30 + *v20), v22, 0, v22);
        }

        v19 = *v20 + v22;
        *v20 = v19;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v13 += v22;
        v9 += v22;
        v10 -= v22;
      }

      while (v10);
LABEL_41:
      v12 = *(a1 + 24);
      if (v9 >= 1)
      {
        v12 += v9;
        *(a1 + 24) = v12;
      }

      goto LABEL_46;
    }

    v9 = 0;
    v12 = *(a1 + 24);
    goto LABEL_46;
  }

  return -1;
}

uint64_t sub_100122A88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v8;
  v36 = v9;
  if ((sub_100123290(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 236, 67, 0, "flush buf", v15, v16, v32[0]);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(a1 + 24);
  v32[0] = *(a1 + 8);
  v32[1] = v18;
  v19 = *(a1 + 96);
  v32[2] = *(a1 + 56);
  v32[3] = v19;
  v33 = *(a1 + 40) != 0;
  v34 = *(a1 + 88);
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v20 = 0;
  v21 = v32;
  v22 = 66;
  while (1)
  {
    v23 = (a2[3])(*a2, v21, v22);
    if (v23 < 1)
    {
      break;
    }

    v21 = (v21 + v23);
    v20 += v23;
    v22 -= v23;
    if (!v22)
    {
      if (v20 < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_13;
    }
  }

  if (v23 < 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 80);
    while (1)
    {
      v27 = (a2[3])(*a2, v26, v24);
      if (v27 < 1)
      {
        break;
      }

      v26 += v27;
      v25 += v27;
      v24 -= v27;
      if (!v24)
      {
        if (v25 < 0)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }

    if (v27 < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (!a2[3])
    {
      goto LABEL_32;
    }
  }

  v28 = 16 * *(a1 + 104);
  if (v28)
  {
    v29 = 0;
    v30 = *(a1 + 120);
    while (1)
    {
      v31 = (a2[3])(*a2, v30, v28);
      if (v31 < 1)
      {
        break;
      }

      v30 += v31;
      v29 += v31;
      v28 -= v31;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    v29 = v31;
LABEL_28:
    if (v29 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((AAByteStreamCloseWithState(*(a1 + 40)) & 0x80000000) != 0)
  {
LABEL_32:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 253, 67, 0, "serializing state", v15, v16, v32[0]);
    v17 = 0;
  }

  else if (a3)
  {
    *a3 = *(a1 + 24);
  }

  if ((*a1 & 0x80000000) == 0 && !*(a1 + 4))
  {
    close(*a1);
  }

  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 120));
  free(a1);
  if (v17)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *sub_100122CE4(int a1, const char *a2, AAByteStream_impl *a3, void *a4)
{
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x80uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x80uLL, 0, 0x80uLL), !v8))
  {
    v14 = *__error();
    v15 = "malloc";
    v16 = 467;
    goto LABEL_27;
  }

  *v10 = -1;
  v55 = -92;
  if (a1 < 0)
  {
    v11 = open(a2, 257);
  }

  else
  {
    v11 = openat(a1, a2, 257);
  }

  *v10 = v11;
  if (v11 < 0)
  {
    v34 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 475, 67, v34, "%s", v35, v36, a2);
    goto LABEL_28;
  }

  if (!*(a3 + 2))
  {
LABEL_25:
    v15 = "loading state";
    v16 = 478;
    goto LABEL_26;
  }

  v17 = &v56;
  v18 = 66;
  do
  {
    v19 = (*(a3 + 2))(*a3, v17, v18);
    if (v19 < 0)
    {
      goto LABEL_25;
    }

    v17 = (v17 + v19);
    v18 -= v19;
    if (v19)
    {
      v23 = v18 == 0;
    }

    else
    {
      v23 = 1;
    }
  }

  while (!v23);
  v24 = *(&v59 + 1);
  v25 = v59;
  *(v10 + 104) = *(&v59 + 1);
  v26 = (v10 + 104);
  v27 = v57;
  *(v10 + 8) = v56;
  *(v10 + 24) = v27;
  v28 = v58;
  *(v10 + 56) = v58;
  *(v10 + 88) = HIBYTE(v60);
  *(v10 + 96) = v25;
  *(v10 + 112) = v24;
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

  v29 = (v10 + 64);
  v30 = *(v10 + 72);
  if (v30 < v28)
  {
    do
    {
      while (!v30)
      {
        v30 = 0x4000;
        if (v28 <= 0x4000)
        {
          v32 = (v10 + 80);
          v30 = 0x4000;
          goto LABEL_33;
        }
      }

      v31 = v30 >> 1;
      if ((v30 & (v30 >> 1)) != 0)
      {
        v31 = v30 & (v30 >> 1);
      }

      v30 += v31;
    }

    while (v30 < v28);
    v32 = (v10 + 80);
    if (v30 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_80;
    }

LABEL_33:
    v37 = *v32;
    v38 = realloc(*v32, v30);
    if (v38)
    {
      *(v10 + 72) = v30;
      *(v10 + 80) = v38;
      v24 = *(v10 + 112);
      goto LABEL_35;
    }

    free(v37);
LABEL_80:
    *v32 = 0;
    *v29 = 0;
    *(v10 + 72) = 0;
LABEL_81:
    v15 = "alloc buf";
    v16 = 490;
    goto LABEL_26;
  }

LABEL_35:
  if (v24)
  {
    if (v24 >= 0x200000001)
    {
      *__error() = 12;
      *(v10 + 120) = 0;
LABEL_78:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 492, 67, 0, "alloc holes", v12, v13, 164);
      *v26 = 0;
      *(v10 + 112) = 0;
      goto LABEL_28;
    }

    v39 = calloc(v24, 0x10uLL);
    *(v10 + 120) = v39;
    if (!v39)
    {
      goto LABEL_78;
    }
  }

  v40 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
LABEL_64:
    if (!*(a3 + 2))
    {
      goto LABEL_86;
    }

    v50 = 16 * *v26;
    if (v50)
    {
      v51 = *(v10 + 120);
      do
      {
        v52 = (*(a3 + 2))(*a3, v51, v50);
        if (v52 < 0)
        {
          goto LABEL_86;
        }

        v51 += v52;
        v50 -= v52;
        if (v52)
        {
          v53 = v50 == 0;
        }

        else
        {
          v53 = 1;
        }
      }

      while (!v53);
    }

    if (v60)
    {
      v54 = AAAFSCStreamOpenWithState(*v10, a3, 0, v20, v21, v22, v12, v13);
      *(v10 + 40) = v54;
      if (!v54)
      {
        v15 = "loading AFSC stream state";
        v16 = 500;
        goto LABEL_26;
      }
    }

    if (a4)
    {
      *a4 = *(v10 + 24);
    }

    *v8 = v10;
    v8[1] = sub_1001225F4;
    v8[7] = sub_100122794;
    v8[3] = sub_1001227A8;
    v8[12] = sub_100122A88;
    return v8;
  }

  v42 = *(v10 + 64);
  v41 = *(v10 + 72);
  while (1)
  {
    if (v42 != v41)
    {
      goto LABEL_52;
    }

    v43 = v41 + 0x40000;
    if ((v41 + 0x40000) < 0)
    {
      goto LABEL_86;
    }

    if (v41 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v42 = v41;
LABEL_52:
    v45 = v41;
LABEL_56:
    if (v45 - v42 >= v40)
    {
      v48 = v40;
    }

    else
    {
      v48 = v45 - v42;
    }

    v49 = AAByteStreamRead(a3, (*(v10 + 80) + v42), v48);
    if (v49 < 0)
    {
      goto LABEL_86;
    }

    if (!v49)
    {
      goto LABEL_64;
    }

    v42 = *v29 + v49;
    if (__CFADD__(*v29, v49))
    {
      goto LABEL_86;
    }

    v41 = *(v10 + 72);
    if (v42 > v41)
    {
      goto LABEL_86;
    }

    *v29 = v42;
    v40 -= v49;
    if (!v40)
    {
      goto LABEL_64;
    }
  }

  do
  {
    while (!v41)
    {
      v41 = 0x4000;
      v45 = 0x4000;
      if (v43 <= 0x4000)
      {
        goto LABEL_54;
      }
    }

    v44 = v41 >> 1;
    if ((v41 & (v41 >> 1)) != 0)
    {
      v44 = v41 & (v41 >> 1);
    }

    v41 += v44;
  }

  while (v41 < v43);
  v45 = v41;
  if (v41 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_85;
  }

LABEL_54:
  v46 = *(v10 + 80);
  v47 = realloc(v46, v45);
  if (v47)
  {
    *(v10 + 72) = v45;
    *(v10 + 80) = v47;
    v42 = *(v10 + 64);
    goto LABEL_56;
  }

  free(v46);
LABEL_85:
  *v29 = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
LABEL_86:
  v15 = "loading state";
  v16 = 496;
LABEL_26:
  v14 = 0;
LABEL_27:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", v16, 67, v14, v15, v12, v13, v55);
LABEL_28:
  sub_1001225F4(v10);
  free(v8);
  return 0;
}