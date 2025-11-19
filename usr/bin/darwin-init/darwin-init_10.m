int AEAAuthDataGetEntry(AEAAuthData auth_data, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*auth_data <= i)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 98, 95, 0, "invalid entry index %u", data, data_size, i);
    return -1;
  }

  v8 = (*(auth_data + 5) + *(*(auth_data + 2) + 8 * i));
  v9 = v8 + 1;
  v10 = *v8;
  if (v10 < 5)
  {
    goto LABEL_15;
  }

  v14 = 0;
  while (v9[v14])
  {
    if (++v14 + 4 >= v10)
    {
      goto LABEL_15;
    }
  }

  v15 = v10 - 5 - v14;
  if (v15 >= v10)
  {
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 109, 95, 0, "invalid auth_data blob", data, data_size, v17);
    return -1;
  }

  if (key_length)
  {
    *key_length = v14;
  }

  if (data_size)
  {
    *data_size = v15;
  }

  if (v14 >= key_capacity)
  {
    if (key_capacity)
    {
      return -1;
    }
  }

  else
  {
    memcpy(key, v9, v14);
    key[v14] = 0;
  }

  if (v15 > data_capacity)
  {
    if (!data_capacity)
    {
      return 0;
    }

    return -1;
  }

  memcpy(data, v8 + v10 - v15, v15);
  return 0;
}

int AEAAuthDataAppendEntry(AEAAuthData auth_data, const char *key, const uint8_t *data, size_t data_size)
{
  v8 = strlen(key);
  v11 = v8 + 1;
  v12 = v8 + 5;
  if (v8 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v15 = data_size + v12, __CFADD__(data_size, v12)) || v15 >= 0xFFFFFFFF)
  {
    v13 = "invalid attribute size";
    v14 = 148;
LABEL_49:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", v14, 95, 0, v13, v9, v10, v43);
    return -1;
  }

  if (v15 < 4)
  {
    goto LABEL_48;
  }

  v16 = (auth_data + 24);
  v17 = *(auth_data + 3);
  v18 = v17 + v15;
  if (__CFADD__(v17, v15))
  {
    goto LABEL_48;
  }

  v20 = *auth_data;
  v19 = *(auth_data + 1);
  v21 = *auth_data + 1;
  if (v19 < v21)
  {
    v22 = *(auth_data + 1);
    do
    {
      if (v22)
      {
        v22 *= 2;
      }

      else
      {
        v22 = 16;
      }
    }

    while (v22 < v21);
    if (v22 > v19)
    {
      v24 = (auth_data + 16);
      v23 = *(auth_data + 2);
      *(auth_data + 1) = v22;
      if (8 * v22 >= 0x2000000001)
      {
        *__error() = 12;
LABEL_47:
        *auth_data = 0;
        *v24 = 0;
        *(auth_data + 3) = 0;
        goto LABEL_48;
      }

      v43 = v23;
      v44 = v20;
      v25 = realloc(v23, 8 * v22);
      if (!v25)
      {
        free(v43);
        goto LABEL_47;
      }

      *v24 = v25;
      v20 = v44;
    }
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v26 = *(auth_data + 4);
  if (v26 < v18)
  {
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (v18 <= 0x4000)
        {
          v26 = 0x4000;
          goto LABEL_29;
        }
      }

      v27 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v27 = v26 & (v26 >> 1);
      }

      v26 += v27;
    }

    while (v26 < v18);
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_42;
    }

LABEL_29:
    v45 = v20;
    v28 = *(auth_data + 5);
    v29 = realloc(v28, v26);
    if (v29)
    {
      *(auth_data + 4) = v26;
      *(auth_data + 5) = v29;
      v20 = v45;
      goto LABEL_31;
    }

    free(v28);
LABEL_42:
    *(auth_data + 4) = 0;
    *(auth_data + 5) = 0;
LABEL_43:
    *auth_data = 0;
    *(auth_data + 3) = 0;
    goto LABEL_48;
  }

LABEL_31:
  v30 = *v16;
  v31 = *v16 + v15;
  if (__CFADD__(*v16, v15) || (v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if (v26 < v31)
  {
    do
    {
      while (!v26)
      {
        v26 = 0x4000;
        if (v31 <= 0x4000)
        {
          v46 = v20;
          v33 = (auth_data + 40);
          v26 = 0x4000;
          goto LABEL_53;
        }
      }

      v32 = v26 >> 1;
      if ((v26 & (v26 >> 1)) != 0)
      {
        v32 = v26 & (v26 >> 1);
      }

      v26 += v32;
    }

    while (v26 < v31);
    v33 = (auth_data + 40);
    if (v26 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_61;
    }

    v46 = v20;
LABEL_53:
    v43 = v33;
    v37 = *v33;
    v34 = realloc(v37, v26);
    if (v34)
    {
      *(auth_data + 5) = v34;
      v35 = (auth_data + 40);
      *(auth_data + 4) = v26;
      v30 = *(auth_data + 3);
      goto LABEL_55;
    }

    free(v37);
    v33 = v43;
LABEL_61:
    *v33 = 0;
    *v16 = 0;
    *(auth_data + 4) = 0;
    goto LABEL_48;
  }

  v46 = v20;
  v35 = (auth_data + 40);
  v34 = *(auth_data + 5);
  if (v34)
  {
LABEL_55:
    memset_s(&v34[v30], v15, 0, v15);
    v30 = *v16;
  }

  *(auth_data + 3) = v30 + v15;
  v38 = *(auth_data + 2);
  v39 = (*auth_data)++;
  *(v38 + 8 * v39) = v17;
  if (v17 >= 0xFFFFFFFFFFFFFFFCLL || v17 + 4 > *v16 || (*(*v35 + v17) = v15, v46 < 0))
  {
LABEL_48:
    v13 = "alloc auth_data entry";
    v14 = 152;
    goto LABEL_49;
  }

  v40 = *(auth_data + 5);
  v41 = *(*(auth_data + 2) + 8 * v46);
  *(v40 + v41) = v15;
  v42 = (v40 + v41 + 4);
  memcpy(v42, key, v11);
  memcpy(&v42[v11], data, data_size);
  return 0;
}

int AEAAuthDataSetEntry(AEAAuthData auth_data, uint32_t i, const char *key, const uint8_t *data, size_t data_size)
{
  if (*auth_data <= i)
  {
    v15 = "invalid auth_data index";
    v16 = 172;
    goto LABEL_5;
  }

  v12 = strlen(key);
  v13 = v12 + 1;
  v14 = v12 + 5;
  if (v12 + 1 >= 0xFFFFFFFFFFFFFFFCLL || (v18 = data_size + v14, __CFADD__(data_size, v14)) || v18 >= 0xFFFFFFFF)
  {
    v15 = "invalid attribute size";
    v16 = 180;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", v16, 95, 0, v15, v5, v6, v46);
    return -1;
  }

  if (v18 < 4)
  {
    goto LABEL_11;
  }

  v19 = i;
  v20 = *(*(auth_data + 2) + 8 * i);
  v21 = *(auth_data + 5);
  v22 = *&v21[v20];
  v23 = v20 + v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_11;
  }

  v24 = *(auth_data + 3);
  v25 = v24 - v23;
  if (v24 < v23)
  {
    goto LABEL_11;
  }

  v26 = v18 - v22;
  if (v18 > v22)
  {
    v27 = v24 + v26;
    if ((v24 + v26) < 0)
    {
LABEL_11:
      v15 = "alloc auth_data entry";
      v16 = 183;
      goto LABEL_5;
    }

    v28 = *(auth_data + 4);
    if (v28 < v27)
    {
      v29 = 0x4000;
      do
      {
        while (!v28)
        {
          v28 = 0x4000;
          if (v27 <= 0x4000)
          {
            goto LABEL_29;
          }
        }

        v30 = v28 >> 1;
        if ((v28 & (v28 >> 1)) != 0)
        {
          v30 = v28 & (v28 >> 1);
        }

        v28 += v30;
      }

      while (v28 < v27);
      v29 = v28;
      if (v28 >= 0x2000000001)
      {
        *__error() = 12;
        goto LABEL_44;
      }

LABEL_29:
      v47 = v26;
      v48 = v19;
      v46 = v29;
      v36 = realloc(v21, v29);
      if (v36)
      {
        v26 = v47;
        *(auth_data + 4) = v46;
        *(auth_data + 5) = v36;
        v21 = v36;
        v25 = v24 - v23;
        v19 = v48;
        goto LABEL_31;
      }

      free(v21);
LABEL_44:
      *(auth_data + 3) = 0;
      *(auth_data + 4) = 0;
      *(auth_data + 5) = 0;
      goto LABEL_11;
    }

LABEL_31:
    if (v24 != v23)
    {
      v37 = &v21[v23];
      v38 = &v21[v23 + v26];
      v39 = v19;
      v40 = v26;
      memmove(v38, v37, v25);
      v26 = v40;
      v19 = v39;
    }

    v24 = *(auth_data + 3) + v26;
    goto LABEL_34;
  }

  if (v18 < v22)
  {
    v31 = v22 - v18;
    if (v24 != v23)
    {
      v32 = &v21[v23];
      v33 = &v21[v23 - v31];
      v34 = v19;
      v35 = v31;
      memmove(v33, v32, v25);
      v31 = v35;
      v19 = v34;
      v23 = *(auth_data + 3);
    }

    v24 = v23 - v31;
LABEL_34:
    *(auth_data + 3) = v24;
  }

  if (v20 >= 0xFFFFFFFFFFFFFFFCLL || v20 + 4 > v24)
  {
    goto LABEL_11;
  }

  *(*(auth_data + 5) + v20) = v18;
  if (*auth_data > v19)
  {
    v41 = v19;
    while (v20 < 0xFFFFFFFFFFFFFFFCLL && v20 + 4 <= *(auth_data + 3))
    {
      v42 = *(*(auth_data + 5) + v20);
      *(*(auth_data + 2) + 8 * v41) = v20;
      v20 += v42;
      if (++v41 >= *auth_data)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_11;
  }

LABEL_42:
  v43 = *(auth_data + 5);
  v44 = *(*(auth_data + 2) + 8 * v19);
  *(v43 + v44) = v18;
  v45 = (v43 + v44 + 4);
  memcpy(v45, key, v13);
  memcpy(&v45[v13], data, data_size);
  return 0;
}

int AEAAuthDataClear(AEAAuthData auth_data)
{
  *auth_data = 0;
  *(auth_data + 3) = 0;
  return 0;
}

int AEAAuthDataRemoveEntry(AEAAuthData auth_data, uint32_t i)
{
  v4 = *auth_data;
  if (*auth_data <= i || (v6 = i, v7 = *(*(auth_data + 2) + 8 * i), v8 = *(auth_data + 5), v9 = *(v8 + v7), v10 = __CFADD__(v7, v9), v11 = v7 + v9, v10) || (v12 = *(auth_data + 3), v12 < v11))
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataRemoveEntry", 205, 95, 0, "invalid auth_data index %u", v2, v3, i);
    return -1;
  }

  else
  {
    if (v9)
    {
      if (v12 != v11)
      {
        memmove((v8 + v11 - v9), (v8 + v11), v12 - v11);
        v11 = *(auth_data + 3);
        v4 = *auth_data;
      }

      *(auth_data + 3) = v11 - v9;
    }

    v14 = v4 - 1;
    *auth_data = v14;
    if (v14 > v6)
    {
      v15 = *(auth_data + 2);
      do
      {
        *(v15 + 8 * v6) = *(v15 + 8 * v6 + 8) - v9;
        ++v6;
      }

      while (v6 < *auth_data);
    }

    return 0;
  }
}

void sub_1000EFE90(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v2);
    v3 = *(a1 + 392);
    if (v3)
    {
      memset_s(*(a1 + 392), 544 * *(a1 + 400), 0, 544 * *(a1 + 400));
    }

    free(v3);
    memset_s(a1, 0x6C0uLL, 0, 0x6C0uLL);

    free(a1);
  }
}

uint64_t sub_1000EFF30(uint64_t a1)
{
  v2 = malloc(0x6C0uLL);
  v3 = v2;
  if (!v2)
  {
    v14 = *__error();
    v12 = "malloc";
    v13 = 22;
    goto LABEL_28;
  }

  memset_s(v2, 0x6C0uLL, 0, 0x6C0uLL);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  if ((sub_1000DB560((v3 + 72), v3) & 0x80000000) != 0)
  {
    v12 = "Invalid context";
    v13 = 28;
    goto LABEL_27;
  }

  v8 = *(v3 + 4);
  if (v8)
  {
    v9 = malloc(*(v3 + 4));
    *(v3 + 384) = v9;
    if (v9)
    {
      memcpy(v9, *(a1 + 2712), v8);
      goto LABEL_6;
    }

    v14 = *__error();
    v12 = "malloc";
    v13 = 34;
LABEL_28:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateNew", v13, 28, v14, v12, v6, v7, v19);
    sub_1000EFE90(v3);
    return 0;
  }

LABEL_6:
  if (*v3 <= 5u && ((1 << *v3) & 0x2A) != 0)
  {
    goto LABEL_10;
  }

  if (*(a1 + 592))
  {
    v15 = *(v3 + 240);
    if (!v15)
    {
      goto LABEL_23;
    }

    v16 = v15(a1 + 332, a1 + 592);
    if (*(a1 + 332) != *(v3 + 104) || v16 < 0)
    {
      goto LABEL_23;
    }

    v17 = *(a1 + 592);
    if (v17 >= 0x101)
    {
      __break(1u);
LABEL_23:
      v12 = "Invalid signing private key in context";
      v13 = 45;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = 0;
  }

  __memcpy_chk();
  *(v3 + 1188) = v17;
  memset_s((v3 + 1192 + v17), 256 - v17, 0, 256 - v17);
  *(v3 + 1712) = *(a1 + 2416);
  if (*(a1 + 332) != *(v3 + 104))
  {
    v12 = "Invalid signing public key in context";
    v13 = 55;
    goto LABEL_27;
  }

LABEL_10:
  if ((sub_1000FB160(v3 + 280, v3, (v3 + 72)) & 0x80000000) != 0)
  {
    v12 = "deriving container offsets";
    v13 = 59;
    goto LABEL_27;
  }

  v11 = *(v3 + 344);
  *(v3 + 32) = 0;
  *(v3 + 40) = v11;
  if ((sub_1000FC3DC((v3 + 72), v3, (v3 + 668), (v3 + 928), (v3 + 408), (a1 + 72), (a1 + 2152), (a1 + 332), (a1 + 852)) & 0x80000000) != 0)
  {
    v12 = "Main key derivation";
    v13 = 75;
LABEL_27:
    v14 = 0;
    goto LABEL_28;
  }

  return v3;
}

uint64_t sub_1000F01DC(uint64_t a1, AAByteStream_impl *a2, int a3, int a4)
{
  v102 = 0;
  memset(__s, 0, sizeof(__s));
  v100 = 0;
  memset(v99, 0, sizeof(v99));
  v98 = 0;
  memset(v97, 0, sizeof(v97));
  memset(v96, 0, sizeof(v96));
  v8 = malloc(0x6C0uLL);
  v9 = v8;
  if (!v8)
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 95;
    goto LABEL_41;
  }

  memset_s(v8, 0x6C0uLL, 0, 0x6C0uLL);
  v10 = (v9 + 668);
  if ((sub_100115E00(a1, v9, (v9 + 668), (v9 + 408), a3, a4) & 0x80000000) != 0)
  {
    v22 = "unlocking context";
    v23 = 99;
LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  if ((sub_1000DB560((v9 + 72), v9) & 0x80000000) != 0)
  {
    v22 = "Invalid container";
    v23 = 102;
    goto LABEL_40;
  }

  if ((sub_1000FB160(v9 + 280, v9, (v9 + 72)) & 0x80000000) != 0)
  {
    v22 = "deriving container offsets";
    v23 = 103;
    goto LABEL_40;
  }

  v13 = *(v9 + 4);
  if (v13)
  {
    v14 = malloc(*(v9 + 4));
    *(v9 + 384) = v14;
    if (v14)
    {
      memcpy(v14, *(a1 + 2712), v13);
      goto LABEL_8;
    }

    v21 = *__error();
    v22 = "malloc";
    v23 = 110;
LABEL_41:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v23, 28, v21, v22, v11, v12, v90);
    v20 = 0;
    goto LABEL_42;
  }

LABEL_8:
  if (*v9 > 5u || ((1 << *v9) & 0x2A) == 0)
  {
    if (*(a1 + 592))
    {
      v34 = *(v9 + 240);
      if (!v34)
      {
        goto LABEL_36;
      }

      v35 = v34(a1 + 332, a1 + 592);
      if (*(a1 + 332) != *(v9 + 104) || v35 < 0)
      {
        goto LABEL_36;
      }

      v36 = *(a1 + 592);
      if (v36 >= 0x101)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        v22 = "Invalid signing private key in context";
        v23 = 121;
        goto LABEL_40;
      }
    }

    else
    {
      v36 = 0;
    }

    __memcpy_chk();
    *(v9 + 1188) = v36;
    memset_s((v9 + 1192 + v36), 256 - v36, 0, 256 - v36);
    *(v9 + 1712) = *(a1 + 2416);
    if (*(a1 + 332) != *(v9 + 104))
    {
      v22 = "Invalid signing public key in context";
      v23 = 131;
      goto LABEL_40;
    }
  }

  v15 = *(v9 + 120);
  if (v15 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  *(v9 + 928) = v15;
  memset_s((v9 + 932 + v15), 256 - v15, 0, 256 - v15);
  v16 = *(v9 + 84);
  if (v16 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v97[0]) = v16;
  memset_s(v97 + v16 + 4, 256 - v16, 0, 256 - v16);
  v17 = *(v9 + 84);
  if (v17 >= 0x101)
  {
    goto LABEL_35;
  }

  __memcpy_chk();
  LODWORD(v99[0]) = v17;
  memset_s(v99 + v17 + 4, 256 - v17, 0, 256 - v17);
  v18 = AAByteStreamSeek(a2, 0, 2);
  if ((v18 & 0x8000000000000000) == 0 && v18 != *(v9 + 40))
  {
    v22 = "Container size mismatch";
    v23 = 143;
    goto LABEL_40;
  }

  v19 = *(v9 + 376);
  if (v19 <= 0x100000)
  {
    v20 = 0x100000;
  }

  else
  {
    v20 = *(v9 + 376);
  }

  if (v19 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_28:
    v31 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 151, 28, *v31, "malloc", v32, v33, v90);
LABEL_42:
    v27 = 0;
LABEL_43:
    v37 = 1;
    goto LABEL_44;
  }

  v24 = malloc(v20);
  if (!v24)
  {
    goto LABEL_28;
  }

  v27 = v24;
  v28 = (*(v9 + 32) + *(v9 + 16) - 1) / *(v9 + 16);
  if (HIDWORD(v28))
  {
    v29 = "Invalid sizes in root header";
    v30 = 155;
LABEL_51:
    v41 = 0;
LABEL_52:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v30, 28, v41, v29, v25, v26, v90);
    goto LABEL_43;
  }

  *(v9 + 400) = v28;
  v39 = *(v9 + 20);
  v40 = (v28 + v39 - 1) / v39;
  *(v9 + 404) = v40;
  if (((v39 * v40) & 0xFFFFFFFF00000000) != 0)
  {
    v29 = "Invalid sizes in root header";
    v30 = 158;
    goto LABEL_51;
  }

  v42 = v40 * v39;
  if (v42 >= 0xF0F0F10)
  {
    *__error() = 12;
    *(v9 + 392) = 0;
LABEL_99:
    v41 = *__error();
    v29 = "malloc";
    v30 = 171;
    goto LABEL_52;
  }

  v43 = calloc(v42, 0x220uLL);
  *(v9 + 392) = v43;
  if (!v43)
  {
    goto LABEL_99;
  }

  v91 = v20;
  v44 = *(v9 + 344);
  v93 = a2;
  v92 = (v9 + 668);
  if (*(v9 + 404))
  {
    v95 = 0;
    v45 = *(v9 + 376);
    while (1)
    {
      v94 = v44;
      if (*(a2 + 4))
      {
        v46 = 0;
        if (v45)
        {
          v47 = v27;
          v48 = v45;
          while (1)
          {
            v49 = (*(a2 + 4))(*a2, v47, v48, v44);
            if (v49 < 0)
            {
              break;
            }

            if (v49)
            {
              v47 += v49;
              v46 += v49;
              v44 += v49;
              v48 -= v49;
              if (v48)
              {
                continue;
              }
            }

            goto LABEL_67;
          }

          v46 = v49;
        }
      }

      else
      {
        v46 = -1;
      }

LABEL_67:
      if (v46 != v45)
      {
        v73 = "loading cluster header";
        v74 = 183;
        goto LABEL_108;
      }

      v119 = 0;
      v118 = 0u;
      v117 = 0u;
      v116 = 0u;
      v115 = 0u;
      v114 = 0u;
      v113 = 0u;
      v112 = 0u;
      v111 = 0u;
      v110 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      memset(&v121[8], 0, 252);
      memset(v120, 0, 260);
      *&v121[8] = 19267;
      *v121 = 0x5F41454100000006;
      memset_s(&v121[10], 0xFAuLL, 0, 0xFAuLL);
      v50 = *v121;
      if (*v121 >= 0xFDu)
      {
        goto LABEL_35;
      }

      *&v121[*v121 + 4] = v95;
      *v121 = v50 + 4;
      memset_s(&v121[v50 + 8], 252 - v50, 0, 252 - v50);
      v51 = *(v9 + 144);
      if (!v51 || !*v10)
      {
        break;
      }

      v52 = v51(&v103, *(v9 + 72), v10, v121, v120);
      memset_s(v121, 0x104uLL, 0, 0x104uLL);
      v53 = 0;
      if (v52 < 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      memset(v120 + 12, 0, 248);
      *(v120 + 4) = 0x4B4548435F414541;
      LODWORD(v120[0]) = 8;
      memset_s(v120 + 12, 0xF8uLL, 0, 0xF8uLL);
      memset(v121, 0, sizeof(v121));
      v54 = *(v9 + 144);
      if (!v54 || !v103)
      {
        memset_s(v120, 0x104uLL, 0, 0x104uLL);
LABEL_106:
        memset_s(&v103, 0x104uLL, 0, 0x104uLL);
LABEL_107:
        v73 = "deriving cluster header key";
        v74 = 187;
LABEL_108:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", v74, 28, 0, v73, v11, v12, v90);
        v37 = 1;
        goto LABEL_109;
      }

      v55 = v54(__s, *(v9 + 76), &v103, v120, v121);
      memset_s(v120, 0x104uLL, 0, 0x104uLL);
      if (v55 < 0)
      {
        goto LABEL_106;
      }

      memset_s(&v103, 0x104uLL, 0, 0x104uLL);
      if (v53)
      {
        goto LABEL_107;
      }

      v56 = *(v9 + 168);
      if (!v56 || LODWORD(v97[0]) != *(v9 + 84) || (v56(v27, *(v9 + 360), v97, __s, &v27[*(v9 + 360)], *(v9 + 376) - *(v9 + 360)) & 0x80000000) != 0)
      {
        v73 = "decrypting cluster header";
        v74 = 195;
        goto LABEL_108;
      }

      v57 = *(v9 + 84);
      if (v57 >= 0x101)
      {
        goto LABEL_35;
      }

      __memcpy_chk();
      LODWORD(v97[0]) = v57;
      memset_s(v97 + v57 + 4, 256 - v57, 0, 256 - v57);
      LODWORD(v58) = *(v9 + 20);
      if (v58)
      {
        v59 = 0;
        v60 = *(v9 + 368);
        v61 = *(v9 + 352);
        do
        {
          v62 = v59 + v95 * v58;
          if (v62 >= *(v9 + 400))
          {
            v45 = *(v9 + 376);
            a2 = v93;
            v44 = v45 + v94;
            v10 = (v9 + 668);
            goto LABEL_93;
          }

          v63 = (*(v9 + 392) + 544 * v62);
          *v63 = v62;
          v63[1] = *&v27[v61];
          v63[2] = *&v27[v61 + 4];
          v64 = *(v9 + 48);
          if (v64 >= 0x101)
          {
            goto LABEL_35;
          }

          v65 = v61 + 8;
          memcpy(v63 + 7, &v27[v65], *(v9 + 48));
          v63[6] = v64;
          memset_s(v63 + v64 + 28, 256 - v64, 0, 256 - v64);
          v66 = *(v9 + 84);
          if (v66 >= 0x101)
          {
            goto LABEL_35;
          }

          v61 = v65 + *(v9 + 48);
          memcpy(v63 + 72, &v27[v60], *(v9 + 84));
          v63[71] = v66;
          memset_s(v63 + v66 + 288, 256 - v66, 0, 256 - v66);
          v60 += *(v9 + 84);
          ++v59;
          LODWORD(v58) = *(v9 + 20);
        }

        while (v59 < v58);
        v45 = *(v9 + 376);
        a2 = v93;
        v44 = v45 + v94;
        v10 = (v9 + 668);
        if (!v58)
        {
          goto LABEL_96;
        }

LABEL_93:
        v67 = (v58 * v95);
        v68 = *(v9 + 400);
        v58 = v58;
        v69 = 544 * v67;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = *(v9 + 392) + v69;
          *(v70 + 16) = v44;
          v44 += *(v70 + 8);
          v69 += 544;
          ++v67;
          --v58;
        }

        while (v58);
      }

      else
      {
        v45 = *(v9 + 376);
        v44 = v45 + v94;
        a2 = v93;
        v10 = (v9 + 668);
      }

LABEL_96:
      if (++v95 >= *(v9 + 404))
      {
        goto LABEL_97;
      }
    }

    memset_s(v121, 0x104uLL, 0, 0x104uLL);
LABEL_74:
    v53 = 1;
    goto LABEL_75;
  }

LABEL_97:
  v71 = *(v9 + 40);
  v72 = v71 - v44;
  if (v71 < v44)
  {
    v73 = "Invalid container size";
    v74 = 230;
    goto LABEL_108;
  }

  *(v9 + 64) = v72;
  v20 = v91;
  if (v71 == v44 || *(a1 + 2740))
  {
    v37 = 0;
  }

  else
  {
    v75 = v44;
    memset(v121, 0, sizeof(v121));
    memset(v120, 0, 260);
    v119 = 0;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v103 = 0u;
    if (*(v9 + 248) && (*(v120 + 7) = 1262571615, *&v120[0] = 0x5F41454100000007, memset_s((v120 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v76 = *(v9 + 144)) != 0) && *v92 && (v76(v121, *(v9 + 72), v92, v120, &v103) & 0x80000000) == 0)
    {
      v77 = (*(v9 + 248))(v121);
    }

    else
    {
      v77 = 0;
    }

    memset_s(v121, 0x104uLL, 0, 0x104uLL);
    memset_s(v120, 0x104uLL, 0, 0x104uLL);
    if (!v77)
    {
      v73 = "authenticating padding";
      v74 = 241;
      goto LABEL_108;
    }

    v78 = v93;
    while (1)
    {
      if (v72 >= 0x100000)
      {
        v79 = 0x100000;
      }

      else
      {
        v79 = v72;
      }

      if (!*(v78 + 4))
      {
        goto LABEL_134;
      }

      v80 = 0;
      v81 = v27;
      v82 = v75;
      v83 = v79;
      while (1)
      {
        v84 = (*(v93 + 4))(*v93, v81, v83, v82);
        if (v84 < 0)
        {
          break;
        }

        if (v84)
        {
          v81 += v84;
          v80 += v84;
          v82 += v84;
          v83 -= v84;
          if (v83)
          {
            continue;
          }
        }

        goto LABEL_128;
      }

      v80 = v84;
LABEL_128:
      if (v80 != v79)
      {
LABEL_134:
        v73 = "loading padding";
        v74 = 250;
        goto LABEL_108;
      }

      v85 = *(v9 + 256);
      v78 = v93;
      if (!v85 || (v85(v77, v27, v79) & 0x80000000) != 0)
      {
        break;
      }

      v75 += v79;
      v72 -= v79;
      if (!v72)
      {
        v37 = 0;
        goto LABEL_136;
      }
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerCreateExisting", 252, 28, 0, "authenticating padding", v11, v12, v90);
    v37 = 1;
LABEL_136:
    memset(v121, 0, sizeof(v121));
    v86 = *(v9 + 264);
    if (!v86)
    {
      goto LABEL_144;
    }

    if (LODWORD(v97[0]) != *(v9 + 84))
    {
      goto LABEL_144;
    }

    if ((v86(v77, v121) & 0x80000000) != 0)
    {
      goto LABEL_144;
    }

    if (*v121 != *(v9 + 84))
    {
      goto LABEL_144;
    }

    if (*v121 >= 8u)
    {
      v87 = 0;
      v88 = 4;
      do
      {
        v87 |= *&v121[v88] ^ *(v97 + v88);
        v89 = v88 + 12;
        v88 += 8;
      }

      while (v89 <= *v121);
      if (v87)
      {
LABEL_144:
        memset_s(v121, 0x104uLL, 0, 0x104uLL);
        v73 = "authenticating padding";
        v74 = 257;
        goto LABEL_108;
      }
    }

    memset_s(v121, 0x104uLL, 0, 0x104uLL);
LABEL_109:
    v20 = v91;
  }

LABEL_44:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(v99, 0x104uLL, 0, 0x104uLL);
  memset_s(v97, 0x104uLL, 0, 0x104uLL);
  memset_s(v96, 0x30uLL, 0, 0x30uLL);
  if (v27)
  {
    memset_s(v27, v20, 0, v20);
  }

  free(v27);
  if (v37)
  {
    sub_1000EFE90(v9);
    return 0;
  }

  return v9;
}

uint64_t sub_1000F11E4(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*__src == -1)
  {
    v22 = "Invalid segment id\n";
    v23 = 280;
  }

  else
  {
    v12 = *(a1 + 400);
    v13 = *(a1 + 404);
    v14 = *(a1 + 20);
    if (v12 < v14 * v13)
    {
      v15 = *(a1 + 40);
      goto LABEL_4;
    }

    *(a1 + 404) = v13 + 1;
    v24 = v14 * (v13 + 1);
    if (v24 < 0xFFFFFFFF)
    {
      if (v24 < 0xF0F0F10)
      {
        v25 = *(a1 + 392);
        v26 = realloc(v25, 544 * v24);
        if (v26)
        {
          *(a1 + 392) = v26;
          memset_s(&v26[544 * *(a1 + 400)], 544 * (v24 - *(a1 + 400)), 0, 544 * (v24 - *(a1 + 400)));
          v15 = *(a1 + 40) + *(a1 + 376);
          *(a1 + 40) = v15;
          v12 = *(a1 + 400);
LABEL_4:
          __src[2] = v15;
          v16 = *(__src + 2);
          memcpy((*(a1 + 392) + 544 * v12), __src, 0x220uLL);
          ++*(a1 + 400);
          v17 = *(a1 + 40) + v16;
          *(a1 + 32) += *(__src + 1);
          *(a1 + 40) = v17;
          if (*(a2 + 40))
          {
            v18 = 0;
            if (v16)
            {
              v19 = __src[2];
              v20 = v16;
              while (1)
              {
                v21 = (*(a2 + 40))(*a2, a4, v20, v19);
                if (v21 < 1)
                {
                  break;
                }

                a4 += v21;
                v18 += v21;
                v19 += v21;
                v20 -= v21;
                if (!v20)
                {
                  goto LABEL_18;
                }
              }

              v18 = v21;
            }

LABEL_18:
            if (v18 == v16)
            {
              return 0;
            }
          }

          v22 = "Segment write";
          v23 = 308;
          goto LABEL_21;
        }

        free(v25);
      }

      else
      {
        *__error() = 12;
      }

      *(a1 + 392) = 0;
      v28 = *__error();
      v22 = "malloc";
      v23 = 289;
      goto LABEL_22;
    }

    v22 = "Container size limit reached";
    v23 = 287;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerAppendSegment", v23, 28, v28, v22, a7, a8, v29);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F1420(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 40) -= v2;
    *(a1 + 64) = 0;
    if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
    {
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemovePadding", 328, 28, "Warning: container truncate failed", v3, v4, v5, vars0);
    }
  }

  return 0;
}

uint64_t sub_1000F1488(uint64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[25].i32[0];
  if (!v8)
  {
    v10 = "No segments to remove";
    v11 = 339;
    goto LABEL_5;
  }

  if (a1[4].i64[0])
  {
    v10 = "Padding was not removed";
    v11 = 340;
LABEL_5:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", v11, 28, 0, v10, a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  v14 = a1[24].i64[1] + 544 * (v8 - 1);
  v15 = a1[25].i32[1];
  a1[25].i32[0] = v8 - 1;
  a1[25].i32[1] = (v8 + a1[1].i32[1] - 2) / a1[1].i32[1];
  a1[2] = vsubw_u32(a1[2], *(v14 + 4));
  memset_s(v14, 0x220uLL, 0, 0x220uLL);
  if (v15 != a1[25].i32[1])
  {
    a1[2].i64[1] -= a1[23].i64[1];
  }

  if ((AAByteStreamTruncate(a2) & 0x80000000) != 0)
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerRemoveLastSegment", 364, 28, "Warning: container truncate failed", v16, v17, v18, v19);
  }

  return 0;
}

uint64_t sub_1000F15B0(uint64_t a1, AAByteStream_impl *a2, _DWORD *a3, _DWORD *a4, unsigned int *a5, unsigned int *a6)
{
  v119 = 0;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *__n = 0u;
  v102 = 0;
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
  *v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  *v69 = 0u;
  v70 = 0u;
  v12 = *(a1 + 16);
  v13 = *a1;
  v14 = *a1 < 6u;
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  v15 = malloc(v12);
  if (!v15)
  {
    v51 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 390, 28, *v51, "malloc", v52, v53, v59);
    v50 = 0xFFFFFFFFLL;
    goto LABEL_66;
  }

  if ((sub_1000FC3DC((a1 + 72), a1, v86, v69, __n, a3, a4, a5, a6) & 0x80000000) != 0)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", 400, 28, 0, "generating new main key", v16, v17, v60);
    v50 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v62 = v12;
  if (!*(a1 + 400))
  {
LABEL_47:
    v47 = LODWORD(__n[0]);
    if (LODWORD(__n[0]) >= 0x101 || (memcpy((a1 + 412), __n + 4, LODWORD(__n[0])), *(a1 + 408) = v47, memset_s((a1 + 412 + v47), 256 - v47, 0, 256 - v47), v48 = LODWORD(v86[0]), v12 = v62, LODWORD(v86[0]) >= 0x101) || (memcpy((a1 + 672), v86 + 4, LODWORD(v86[0])), *(a1 + 668) = v48, memset_s((a1 + 672 + v48), 256 - v48, 0, 256 - v48), v49 = LODWORD(v69[0]), LODWORD(v69[0]) >= 0x101))
    {
LABEL_68:
      __break(1u);
    }

    memcpy((a1 + 932), v69 + 4, LODWORD(v69[0]));
    *(a1 + 928) = v49;
    memset_s((a1 + 932 + v49), 256 - v49, 0, 256 - v49);
    v50 = 0;
    goto LABEL_65;
  }

  v18 = 0;
  v61 = v14 & (1u >> v13);
  v63 = (a1 + 668);
  v65 = v15;
  while (1)
  {
    if (!*(a2 + 4))
    {
      goto LABEL_54;
    }

    v19 = *(a1 + 392) + 544 * v18;
    v20 = *(a1 + 20);
    nbyte = *(v19 + 8);
    v64 = v19;
    v21 = 0;
    if (nbyte)
    {
      v22 = *(v19 + 16);
      v23 = v15;
      v24 = *(v19 + 8);
      while (1)
      {
        v25 = (*(a2 + 4))(*a2, v23, v24, v22);
        if (v25 < 0)
        {
          break;
        }

        if (v25)
        {
          v23 += v25;
          v21 += v25;
          v22 += v25;
          v24 -= v25;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v21 = v25;
    }

LABEL_13:
    v15 = v65;
    if (v21 != nbyte)
    {
LABEL_54:
      v56 = "loading compressed segment";
      v57 = 412;
      goto LABEL_63;
    }

    v136 = 0;
    v135 = 0uLL;
    v134 = 0uLL;
    v133 = 0uLL;
    v132 = 0uLL;
    v131 = 0uLL;
    v130 = 0uLL;
    v129 = 0uLL;
    v128 = 0uLL;
    v127 = 0uLL;
    v126 = 0uLL;
    v125 = 0uLL;
    v124 = 0uLL;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    v120 = 0uLL;
    *(&__s[15] + 4) = 0uLL;
    *(&__s[14] + 8) = 0uLL;
    *(&__s[13] + 8) = 0uLL;
    *(&__s[12] + 8) = 0uLL;
    *(&__s[11] + 8) = 0uLL;
    *(&__s[10] + 8) = 0uLL;
    *(&__s[9] + 8) = 0uLL;
    *(&__s[8] + 8) = 0uLL;
    *(&__s[7] + 8) = 0uLL;
    *(&__s[6] + 8) = 0uLL;
    *(&__s[5] + 8) = 0uLL;
    *(&__s[4] + 8) = 0uLL;
    *(&__s[3] + 8) = 0uLL;
    *(&__s[2] + 8) = 0uLL;
    *(&__s[1] + 8) = 0uLL;
    __s[0] = 0x5F41454100000006uLL;
    memset(v137, 0, 260);
    WORD4(__s[0]) = 19267;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v26 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v18 / v20;
    LODWORD(__s[0]) = v26 + 4;
    memset_s(__s + v26 + 8, 252 - v26, 0, 252 - v26);
    v27 = *(a1 + 144);
    if (v27 && *v63)
    {
      v28 = v27(&v120, *(a1 + 72), v63, __s, v137);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v29 = 0;
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v29 = 1;
LABEL_21:
    memset(v137 + 8, 0, 224);
    memset(&v137[14] + 8, 0, 28);
    WORD4(v137[0]) = 19283;
    *&v137[0] = 0x5F41454100000006;
    memset_s(v137 + 10, 0xFAuLL, 0, 0xFAuLL);
    v30 = LODWORD(v137[0]);
    if (LODWORD(v137[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    v31 = v18 % v20;
    *(v137 + LODWORD(v137[0]) + 4) = v18 % v20;
    LODWORD(v137[0]) = v30 + 4;
    memset_s(v137 + v30 + 8, 252 - v30, 0, 252 - v30);
    memset(__s, 0, 260);
    v32 = *(a1 + 144);
    if (!v32 || !v120)
    {
      memset_s(v137, 0x104uLL, 0, 0x104uLL);
LABEL_57:
      memset_s(&v120, 0x104uLL, 0, 0x104uLL);
LABEL_58:
      v54 = "deriving segment key";
      v55 = 416;
LABEL_59:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", v55, 28, 0, v54, v34, v35, v60);
      v50 = 0xFFFFFFFFLL;
      v15 = v65;
      goto LABEL_64;
    }

    v33 = v32(v67, *(a1 + 76), &v120, v137, __s);
    memset_s(v137, 0x104uLL, 0, 0x104uLL);
    if (v33 < 0)
    {
      goto LABEL_57;
    }

    memset_s(&v120, 0x104uLL, 0, 0x104uLL);
    if (v29)
    {
      goto LABEL_58;
    }

    v36 = *(a1 + 168);
    if (!v36 || (v37 = (v64 + 284), *(v64 + 284) != *(a1 + 84)) || (v36(v65, nbyte, v64 + 284, v67, 0, 0) & 0x80000000) != 0)
    {
      v54 = "decrypting segment data";
      v55 = 418;
      goto LABEL_59;
    }

    v136 = 0;
    v135 = 0u;
    v134 = 0u;
    v133 = 0u;
    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v125 = 0u;
    v124 = 0u;
    v123 = 0u;
    v122 = 0u;
    v121 = 0u;
    v120 = 0u;
    memset(__s + 8, 0, 252);
    memset(v137, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v38 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(__s + LODWORD(__s[0]) + 4) = v18 / v20;
    LODWORD(__s[0]) = v38 + 4;
    memset_s(__s + v38 + 8, 252 - v38, 0, 252 - v38);
    v39 = *(a1 + 144);
    if (v39 && LODWORD(v86[0]))
    {
      v40 = v39(&v120, *(a1 + 72), v86, __s, v137);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v41 = 0;
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v41 = 1;
LABEL_36:
    memset(v137 + 8, 0, 224);
    memset(&v137[14] + 8, 0, 28);
    WORD4(v137[0]) = 19283;
    *&v137[0] = 0x5F41454100000006;
    memset_s(v137 + 10, 0xFAuLL, 0, 0xFAuLL);
    v42 = LODWORD(v137[0]);
    if (LODWORD(v137[0]) >= 0xFD)
    {
      goto LABEL_68;
    }

    *(v137 + LODWORD(v137[0]) + 4) = v31;
    LODWORD(v137[0]) = v42 + 4;
    memset_s(v137 + v42 + 8, 252 - v42, 0, 252 - v42);
    memset(__s, 0, 260);
    v43 = *(a1 + 144);
    if (!v43 || !v120)
    {
      break;
    }

    v44 = v43(v67, *(a1 + 76), &v120, v137, __s);
    memset_s(v137, 0x104uLL, 0, 0x104uLL);
    v15 = v65;
    if (v44 < 0)
    {
      goto LABEL_61;
    }

    memset_s(&v120, 0x104uLL, 0, 0x104uLL);
    if (v41)
    {
      goto LABEL_62;
    }

    v45 = *(a1 + 160);
    if (!v45 || (v46 = v45(v65, nbyte, v37, v67, 0, 0), *v37 != *(a1 + 84)) || v46 < 0)
    {
      v56 = "decrypting segment data";
      v57 = 424;
      goto LABEL_63;
    }

    if ((v61 & 1) == 0 && AAByteStreamPWrite(a2, v65, nbyte, *(v64 + 16)) != nbyte)
    {
      v56 = "storing compressed segment";
      v57 = 429;
      goto LABEL_63;
    }

    if (++v18 >= *(a1 + 400))
    {
      goto LABEL_47;
    }
  }

  memset_s(v137, 0x104uLL, 0, 0x104uLL);
  v15 = v65;
LABEL_61:
  memset_s(&v120, 0x104uLL, 0, 0x104uLL);
LABEL_62:
  v56 = "deriving segment key";
  v57 = 422;
LABEL_63:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerReencrypt", v57, 28, 0, v56, v16, v17, v60);
  v50 = 0xFFFFFFFFLL;
LABEL_64:
  v12 = v62;
LABEL_65:
  memset_s(v15, v12, 0, v12);
LABEL_66:
  free(v15);
  memset_s(v86, 0x104uLL, 0, 0x104uLL);
  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  memset_s(v69, 0x104uLL, 0, 0x104uLL);
  memset_s(v67, 0x104uLL, 0, 0x104uLL);
  return v50;
}

uint64_t sub_1000F2144(uint64_t a1, void *a2, unsigned int a3, uint8_t *a4, const uint8_t *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  if (*(a1 + 400) <= a3)
  {
    v20 = "Invalid segment index";
    v21 = 463;
    goto LABEL_41;
  }

  if (!a2[4])
  {
    goto LABEL_20;
  }

  v13 = *(a1 + 392) + 544 * a3;
  v14 = *(v13 + 8);
  __n = *(v13 + 4);
  v42 = v13;
  if (v14)
  {
    v15 = 0;
    v16 = *(v13 + 16);
    v17 = v9;
    v18 = *(v13 + 8);
    while (1)
    {
      v19 = (a2[4])(*a2, v9, v14, v16);
      if (v19 < 0)
      {
        break;
      }

      if (v19)
      {
        v9 += v19;
        v15 += v19;
        v16 += v19;
        v14 -= v19;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v15 = v19;
  }

  else
  {
    v17 = v9;
    v18 = *(v13 + 8);
    v15 = 0;
  }

LABEL_15:
  if (v15 != v18)
  {
LABEL_20:
    v20 = "loading segment";
    v21 = 471;
    goto LABEL_41;
  }

  v22 = v18;
  v23 = v17;
  v24 = *(a1 + 20);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  memset(&__s[8], 0, 252);
  memset(v54, 0, 260);
  *&__s[8] = 19267;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  v40 = v22;
  *&__s[10] = a3 / v24;
  *__s = 0x5F4145410000000ALL;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v25 = *(a1 + 144);
  if (v25 && *(a1 + 668))
  {
    v26 = v25(v52, *(a1 + 72));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v27 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v27 = 1;
LABEL_23:
  memset(v54 + 8, 0, 224);
  memset(&v54[14] + 8, 0, 28);
  WORD4(v54[0]) = 19283;
  *&v54[0] = 0x5F41454100000006;
  result = memset_s(v54 + 10, 0xFAuLL, 0, 0xFAuLL);
  v29 = LODWORD(v54[0]);
  if (LODWORD(v54[0]) < 0xFD)
  {
    *(v54 + LODWORD(v54[0]) + 4) = a3 % v24;
    LODWORD(v54[0]) = v29 + 4;
    memset_s(v54 + v29 + 8, 252 - v29, 0, 252 - v29);
    memset(__s, 0, sizeof(__s));
    v30 = *(a1 + 144);
    if (v30 && LODWORD(v52[0]))
    {
      v31 = v30(v48, *(a1 + 76), v52, v54, __s);
      memset_s(v54, 0x104uLL, 0, 0x104uLL);
      if ((v31 & 0x80000000) == 0)
      {
        memset_s(v52, 0x104uLL, 0, 0x104uLL);
        if (!v27)
        {
          v32 = *(a1 + 168);
          if (v32 && *(v42 + 284) == *(a1 + 84) && (v32(v23, v40) & 0x80000000) == 0)
          {
            v35 = __n;
            if (v8)
            {
              v36 = *(a1 + 24);
              if (v36 && __n > v40)
              {
                if (v36 == 774)
                {
                  v37 = sub_1000E7CEC(a4, *(a1 + 16), a5, v40);
                  if (v37 >= 0)
                  {
                    v37 = v37;
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else
                {
                  v38 = sub_1000FB3BC(v36);
                  v37 = compression_decode_buffer(a4, *(a1 + 16), a5, v40, a6, v38);
                }

                if (v37 != __n)
                {
                  v20 = "Segment decompression";
                  v21 = 511;
                  goto LABEL_41;
                }
              }

              else
              {
                memcpy(a4, a5, __n);
              }
            }

            if ((sub_1000FB1CC(v46, *(a1 + 12), a4, __n, v33, v34, a7, a8) & 0x80000000) != 0)
            {
              v20 = "computing segment checksum";
              v21 = 515;
            }

            else
            {
              v39 = *(a1 + 48);
              if (!v39 || !memcmp(v46 + 4, (v42 + 28), v39))
              {
                goto LABEL_42;
              }

              v20 = "Checksum verification failed, data corrupted";
              v21 = 519;
            }
          }

          else
          {
            v20 = "decrypting segment data";
            v21 = 485;
          }

LABEL_41:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerLoadSegment", v21, 28, 0, v20, a7, a8, v40);
          v35 = -1;
LABEL_42:
          memset_s(v50, 0x104uLL, 0, 0x104uLL);
          memset_s(v48, 0x104uLL, 0, 0x104uLL);
          memset_s(v46, 0x104uLL, 0, 0x104uLL);
          return v35;
        }

LABEL_40:
        v20 = "deriving segment key";
        v21 = 481;
        goto LABEL_41;
      }
    }

    else
    {
      memset_s(v54, 0x104uLL, 0, 0x104uLL);
    }

    memset_s(v52, 0x104uLL, 0, 0x104uLL);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

BOOL sub_1000F2804(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__n = 0u;
  v12 = 0u;
  if (*(a1 + 400) <= a2)
  {
    goto LABEL_6;
  }

  v8 = (*(a1 + 392) + 544 * a2);
  if (v8[1] != a4)
  {
    return 0;
  }

  if ((sub_1000FB1CC(__n, *(a1 + 12), a3, a4, a5, a6, a7, a8) & 0x80000000) != 0 || LODWORD(__n[0]) != v8[6])
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v9 = memcmp(__n + 4, v8 + 7, LODWORD(__n[0])) == 0;
  }

  memset_s(__n, 0x104uLL, 0, 0x104uLL);
  return v9;
}

unint64_t sub_1000F2900(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a2 > 0xF)
    {
      goto LABEL_8;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (result >= 8)
        {
          v9 = __clz(result);
          v10 = __clz(v9 ^ 0x3F) - v9;
          if (v10 < -31)
          {
            return -1;
          }

          a2 = 1 << (v10 + 31);
LABEL_8:
          if (!__CFADD__(result, a2 - 1))
          {
            return (result + a2 - 1) / a2 * a2;
          }

          return -1;
        }
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaPaddedContainerSize", 585, 28, 0, "Invalid padding_alignment", a7, a8, v8);
        return -1;
      }
    }
  }

  return result;
}

uint64_t sub_1000F29A8(uint64_t a1, AAByteStream_impl *a2)
{
  v3 = *(a1 + 344);
  v4 = *(a1 + 376);
  if (v3 <= v4)
  {
    v5 = *(a1 + 376);
  }

  else
  {
    v5 = *(a1 + 344);
  }

  v181 = 0;
  if (v5 <= 0x100000)
  {
    v6 = 0x100000;
  }

  else
  {
    v6 = v5;
  }

  memset(__s, 0, sizeof(__s));
  v179 = 0;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v169 = 0u;
  v168 = 0u;
  v167 = 0u;
  v166 = 0u;
  v165 = 0u;
  v164 = 0u;
  *v163 = 0u;
  v162 = 0;
  memset(v161, 0, sizeof(v161));
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  *v142 = 0u;
  v143 = 0u;
  v141 = 0;
  memset(v140, 0, sizeof(v140));
  v139 = 0;
  memset(v138, 0, sizeof(v138));
  v134 = 0;
  v133 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  if (v5 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_21:
    v23 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 620, 28, *v23, "malloc", v24, v25, nbyte);
    v8 = 0;
    v22 = 0;
    v26 = 0;
    v27 = 0xFFFFFFFFLL;
    v28 = 1;
LABEL_25:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v163, 0x104uLL, 0, 0x104uLL);
    memset_s(v140, 0x104uLL, 0, 0x104uLL);
    memset_s(v161, 0x104uLL, 0, 0x104uLL);
    memset_s(v159, 0x104uLL, 0, 0x104uLL);
    memset_s(v142, 0x104uLL, 0, 0x104uLL);
    memset_s(v138, 0x104uLL, 0, 0x104uLL);
    memset_s(&v135, 0x30uLL, 0, 0x30uLL);
    memset_s(&v133, 0xCuLL, 0, 0xCuLL);
    if ((v28 & 1) == 0)
    {
      memset_s(v8, v6, 0, v6);
    }

    free(v8);
    if (v26)
    {
      memset_s(v26, v22, 0, v22);
    }

    free(v26);
    v31 = *(a1 + 384);
    if (v31)
    {
      memset_s(*(a1 + 384), *(a1 + 4), 0, *(a1 + 4));
    }

    free(v31);
    *(a1 + 384) = 0;
    return v27;
  }

  v7 = malloc(v6);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(a1 + 84);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  if (v9 > 0x100 || (v12 = *(a1 + 136)) == 0 || (v12(__s + 4, v9) & 0x80000000) != 0)
  {
    v29 = "generating last cluster random MAC";
    v30 = 624;
LABEL_23:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v30, 28, 0, v29, v10, v11, nbyte);
    v28 = 0;
    v22 = 0;
    v26 = 0;
LABEL_24:
    v27 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  __n = v6;
  LODWORD(__s[0]) = v9;
  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = *(a1 + 40);
    v19 = sub_1000F2900(v18, v17, v13, v14, v15, v16, v10, v11);
    if (v19 == -1)
    {
      v33 = "Container size is too large to allow padding";
      v34 = 631;
LABEL_130:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v34, 28, 0, v33, v10, v11, nbyte);
      v28 = 0;
      v22 = 0;
      goto LABEL_131;
    }

    v20 = v19;
    if (v19 > v18)
    {
      memset(v217, 0, sizeof(v217));
      memset(v216, 0, 260);
      v215 = 0;
      v214 = 0u;
      v213 = 0u;
      v212 = 0u;
      v211 = 0u;
      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      v204 = 0u;
      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v200 = 0u;
      v199 = 0u;
      if (*(a1 + 248) && (*(v216 + 7) = 1262571615, *&v216[0] = 0x5F41454100000007, memset_s((v216 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v21 = *(a1 + 144)) != 0) && *(a1 + 668) && (v21(v217, *(a1 + 72)) & 0x80000000) == 0)
      {
        v22 = (*(a1 + 248))(v217);
      }

      else
      {
        v22 = 0;
      }

      memset_s(v217, 0x104uLL, 0, 0x104uLL);
      memset_s(v216, 0x104uLL, 0, 0x104uLL);
      if (!v22)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 636, 28, 0, "hashing padding", v35, v36, nbyte);
        v28 = 0;
LABEL_131:
        v26 = 0;
LABEL_132:
        v27 = 0xFFFFFFFFLL;
LABEL_133:
        v6 = __n;
        goto LABEL_25;
      }

      nbyte = v3;
      v130 = v22;
      while (1)
      {
        if (v20 - v18 >= 0x100000)
        {
          v37 = 0x100000;
        }

        else
        {
          v37 = v20 - v18;
        }

        v38 = *(a1 + 136);
        if (!v38 || (v38(v8, v37) & 0x80000000) != 0)
        {
          v47 = "generating padding";
          v48 = 640;
          goto LABEL_58;
        }

        v39 = *(a1 + 256);
        if (!v39 || (v39(v22, v8, v37) & 0x80000000) != 0)
        {
          v47 = "hashing padding";
          v48 = 641;
          goto LABEL_58;
        }

        if (!*(a2 + 5))
        {
          break;
        }

        v40 = v20;
        if (v20 == v18)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          v42 = v8;
          v43 = v18;
          v44 = v37;
          while (1)
          {
            v45 = (*(a2 + 5))(*a2, v42, v44, v43);
            if (v45 < 1)
            {
              break;
            }

            v42 += v45;
            v41 += v45;
            v43 += v45;
            v44 -= v45;
            if (!v44)
            {
              goto LABEL_51;
            }
          }

          v41 = v45;
        }

LABEL_51:
        v22 = v130;
        if (v37 != v41)
        {
          break;
        }

        v20 = v40;
        v18 += v37;
        if (v18 >= v40)
        {
          v46 = 0;
          goto LABEL_59;
        }
      }

      v47 = "writing padding";
      v48 = 642;
LABEL_58:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v48, 28, 0, v47, v35, v36, nbyte);
      v46 = 1;
LABEL_59:
      v49 = *(a1 + 264);
      if (v49)
      {
        if ((v49(v22, __s) & 0x80000000) == 0 && LODWORD(__s[0]) == *(a1 + 84))
        {
          if (!v46)
          {
            *(a1 + 40) = v18;
            v3 = nbyte;
            goto LABEL_64;
          }

          goto LABEL_129;
        }

        memset_s(__s, 0x104uLL, 0, 0x104uLL);
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", 645, 28, 0, "hashing padding", v35, v36, nbyte);
LABEL_129:
      v33 = "Padding generation and hashing failed";
      v34 = 647;
      goto LABEL_130;
    }
  }

LABEL_64:
  nbyte = v3;
  v50 = *(a1 + 404);
  v51 = v50 - 1;
  v127 = (a1 + 668);
  while (v50)
  {
    v52 = *(a1 + 20);
    v129 = v51;
    v131 = v50 - 1;
    v53 = (v52 * (v50 - 1));
    v54 = *(a1 + 400);
    if (v52 * v50 >= v54)
    {
      v55 = v54;
    }

    else
    {
      v55 = (v52 * v50);
    }

    v56 = *(a1 + 392);
    v128 = *(v56 + 544 * v53 + 16);
    v57 = *(a1 + 368);
    v58 = *(a1 + 376);
    v59 = 0;
    if (v53 < v55)
    {
      v60 = (v56 + 544 * (v52 * v51));
      do
      {
        v61 = &v8[v59];
        *v61 = v60[1];
        *(v61 + 1) = v60[2];
        v62 = v59 + 8;
        memcpy(&v8[v62], v60 + 7, v60[6]);
        v59 = v62 + v60[6];
        memcpy(&v8[v57], v60 + 72, v60[71]);
        v57 += v60[71];
        ++v53;
        v60 += 136;
      }

      while (v53 < v55);
    }

    v63 = *(a1 + 360);
    v64 = v58;
    if (v63 > v59)
    {
      memset_s(&v8[v59], v63 - v59, 0, v63 - v59);
      v64 = *(a1 + 376);
    }

    v65 = v64 - v57;
    if (v64 > v57)
    {
      v66 = *(a1 + 136);
      if (!v66 || (v66(&v8[v57], v65) & 0x80000000) != 0)
      {
        v33 = "generating random padding";
        v34 = 686;
        goto LABEL_130;
      }
    }

    memcpy(&v8[*(a1 + 360)], __s + 4, LODWORD(__s[0]));
    v215 = 0;
    v214 = 0u;
    v213 = 0u;
    v212 = 0u;
    v211 = 0u;
    v210 = 0u;
    v209 = 0u;
    v208 = 0u;
    v207 = 0u;
    v206 = 0u;
    v205 = 0u;
    v204 = 0u;
    v203 = 0u;
    v202 = 0u;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    memset(&v217[8], 0, 252);
    memset(v216, 0, 260);
    *&v217[8] = 19267;
    *v217 = 0x5F41454100000006;
    result = memset_s(&v217[10], 0xFAuLL, 0, 0xFAuLL);
    v67 = *v217;
    if (*v217 >= 0xFDu)
    {
      goto LABEL_181;
    }

    v50 = v131;
    *&v217[*v217 + 4] = v131;
    *v217 = v67 + 4;
    memset_s(&v217[v67 + 8], 252 - v67, 0, 252 - v67);
    v68 = *(a1 + 144);
    if (!v68 || !*v127)
    {
      memset_s(v217, 0x104uLL, 0, 0x104uLL);
LABEL_83:
      v70 = 1;
      goto LABEL_84;
    }

    v69 = v68(&v199, *(a1 + 72), v127, v217, v216);
    memset_s(v217, 0x104uLL, 0, 0x104uLL);
    v70 = 0;
    if (v69 < 0)
    {
      goto LABEL_83;
    }

LABEL_84:
    memset(v216 + 12, 0, 248);
    *(v216 + 4) = 0x4B4548435F414541;
    LODWORD(v216[0]) = 8;
    memset_s(v216 + 12, 0xF8uLL, 0, 0xF8uLL);
    memset(v217, 0, sizeof(v217));
    v71 = *(a1 + 144);
    if (!v71 || !v199)
    {
      memset_s(v216, 0x104uLL, 0, 0x104uLL);
LABEL_125:
      memset_s(&v199, 0x104uLL, 0, 0x104uLL);
LABEL_126:
      v33 = "derivating secondary key";
      v34 = 694;
      goto LABEL_130;
    }

    v72 = v71(v161, *(a1 + 76), &v199, v216, v217);
    memset_s(v216, 0x104uLL, 0, 0x104uLL);
    if (v72 < 0)
    {
      goto LABEL_125;
    }

    memset_s(&v199, 0x104uLL, 0, 0x104uLL);
    if (v70)
    {
      goto LABEL_126;
    }

    v73 = *(a1 + 160);
    if (!v73 || (v74 = v73(v8, *(a1 + 360), __s, v161, &v8[*(a1 + 360)], v4 - *(a1 + 360)), LODWORD(__s[0]) != *(a1 + 84)) || v74 < 0)
    {
      v33 = "Cluster header encryption";
      v34 = 701;
      goto LABEL_130;
    }

    v75 = *(a2 + 5);
    if (v75)
    {
      v76 = 0;
    }

    else
    {
      v76 = -1;
    }

    if (v75 && v4)
    {
      v76 = 0;
      v77 = v128 - v58;
      v78 = v8;
      v79 = v4;
      while (1)
      {
        v80 = (*(a2 + 5))(*a2, v78, v79, v77);
        if (v80 < 1)
        {
          break;
        }

        v78 += v80;
        v76 += v80;
        v77 += v80;
        v79 -= v80;
        if (!v79)
        {
          goto LABEL_101;
        }
      }

      v76 = v80;
    }

LABEL_101:
    v51 = v129 - 1;
    if (v76 != v4)
    {
      v33 = "writing cluster header";
      v34 = 706;
      goto LABEL_130;
    }
  }

  v6 = __n;
  memset_s(v8, __n, 0, __n);
  if ((sub_1000FB054(&v133, a1) & 0x80000000) != 0)
  {
    v29 = "encoding magic";
    v30 = 716;
    goto LABEL_23;
  }

  v81 = *(a1 + 288);
  v82 = &v8[*(a1 + 280)];
  *v82 = v133;
  *(v82 + 2) = v134;
  memcpy(&v8[v81], *(a1 + 384), *(a1 + 4));
  memcpy(&v8[*(a1 + 336)], __s + 4, LODWORD(__s[0]));
  if ((sub_1000FB078(&v135, a1, v83, v84, v85, v86, v87, v88) & 0x80000000) != 0)
  {
    v29 = "encoding root header";
    v30 = 726;
    goto LABEL_23;
  }

  v89 = LODWORD(__s[0]);
  v90 = *(a1 + 4);
  v22 = (v90 + LODWORD(__s[0]));
  v91 = malloc(v22);
  v26 = v91;
  if (!v91)
  {
    v113 = *__error();
    v111 = "malloc";
    v112 = 731;
    goto LABEL_140;
  }

  memcpy(v91, __s + 4, v89);
  memcpy(&v26[v89], *(a1 + 384), v90);
  memset(v216 + 12, 0, 248);
  *(v216 + 4) = 0x4B4548525F414541;
  LODWORD(v216[0]) = 8;
  memset_s(v216 + 12, 0xF8uLL, 0, 0xF8uLL);
  memset(v217, 0, sizeof(v217));
  v92 = *(a1 + 144);
  if (!v92 || !*v127)
  {
    memset_s(v216, 0x104uLL, 0, 0x104uLL);
    goto LABEL_137;
  }

  v93 = v92(v161, *(a1 + 76), v127, v216, v217);
  memset_s(v216, 0x104uLL, 0, 0x104uLL);
  if (v93 < 0)
  {
LABEL_137:
    v111 = "derivating RHEK";
    v112 = 738;
LABEL_138:
    v113 = 0;
LABEL_140:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v112, 28, v113, v111, v94, v95, nbyte);
    v28 = 0;
    goto LABEL_24;
  }

  v96 = *(a1 + 160);
  if (!v96 || (v97 = v96(&v135, 48, v163, v161, v26, v22), v98 = LODWORD(v163[0]), LODWORD(v163[0]) != *(a1 + 84)) || v97 < 0)
  {
    v111 = "Root header encryption";
    v112 = 744;
    goto LABEL_138;
  }

  v99 = *(a1 + 320);
  v100 = &v8[*(a1 + 328)];
  v101 = v136;
  *v100 = v135;
  *(v100 + 1) = v101;
  *(v100 + 2) = v137;
  memcpy(&v8[v99], v163 + 4, v98);
  memcpy(&v8[*(a1 + 312)], (a1 + 412), *(a1 + 408));
  v102 = *(a1 + 928);
  if (v102 != *(a1 + 120))
  {
    v111 = "Invalid encryption data size";
    v112 = 752;
    goto LABEL_138;
  }

  memcpy(&v8[*(a1 + 304)], (a1 + 932), v102);
  if (!*(a1 + 1188) && !*(a1 + 1712))
  {
LABEL_172:
    v123 = *(a1 + 272);
    if (v123 && (v124 = v123(a1 + 1448, v8, nbyte), *(a1 + 1448) == *(a1 + 124)) && (v124 & 0x80000000) == 0)
    {
      if (AAByteStreamPWrite(a2, v8, nbyte, 0) == nbyte)
      {
        v28 = 0;
        v27 = 0;
        goto LABEL_133;
      }

      v109 = "writing container headers";
      v110 = 800;
    }

    else
    {
      v109 = "digesting prologue";
      v110 = 796;
    }

    goto LABEL_144;
  }

  v105 = *(a1 + 192);
  if (!v105 || (v106 = v105(v138, v8, nbyte), LODWORD(v138[0]) != *(a1 + 108)) || v106 < 0)
  {
    v109 = "digesting prologue";
    v110 = 759;
LABEL_144:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContainer.c", "aeaContainerFinish", v110, 28, 0, v109, v103, v104, nbyte);
    v28 = 0;
    goto LABEL_132;
  }

  v107 = *(a1 + 1712);
  if (!v107)
  {
    v114 = *(a1 + 200);
    if (!v114 || (result = v114(v159, a1 + 1188, v138), LODWORD(v159[0]) != *(a1 + 112)) || (result & 0x80000000) != 0)
    {
      v109 = "signing prologue";
      v110 = 778;
      goto LABEL_144;
    }

LABEL_152:
    if (*a1)
    {
      memset(&v217[8], 0, 252);
      memset(v216, 0, 260);
      *&v217[7] = 1262834527;
      *v217 = 0x5F41454100000007;
      memset_s(&v217[11], 0xF9uLL, 0, 0xF9uLL);
      v115 = *(a1 + 144);
      if (v115 && *v127)
      {
        v116 = v115(v140, *(a1 + 72), v127, v217, v216);
        memset_s(v217, 0x104uLL, 0, 0x104uLL);
        if ((v116 & 0x80000000) == 0)
        {
          if (*(a1 + 216))
          {
            memset(v216, 0, 260);
            v215 = 0;
            v214 = 0u;
            v213 = 0u;
            v212 = 0u;
            v211 = 0u;
            v210 = 0u;
            v209 = 0u;
            v208 = 0u;
            v207 = 0u;
            v206 = 0u;
            v205 = 0u;
            v204 = 0u;
            v203 = 0u;
            v202 = 0u;
            v201 = 0u;
            v200 = 0u;
            v199 = 0u;
            v198 = 0;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            *v182 = 0u;
            if (LODWORD(v159[0]) == *(a1 + 112) && LODWORD(v140[0]) == *(a1 + 72))
            {
              *(&v199 + 4) = 0x324B45535F414541;
              LODWORD(v199) = 8;
              memset_s((&v199 | 0xC), 0xF8uLL, 0, 0xF8uLL);
              memset(v217, 0, sizeof(v217));
              v117 = *(a1 + 144);
              if (v117)
              {
                if (LODWORD(v140[0]))
                {
                  result = v117(v216, *(a1 + 76), v140, &v199, v217);
                  if ((result & 0x80000000) == 0)
                  {
                    v118 = LODWORD(v159[0]);
                    if (LODWORD(v159[0]) >= 0x101)
                    {
                      goto LABEL_181;
                    }

                    __memcpy_chk();
                    LODWORD(v142[0]) = v118;
                    memset_s(v142 + v118 + 4, 256 - v118, 0, 256 - v118);
                    result = (*(a1 + 216))(v142 + 4, LODWORD(v159[0]), v182, v216, 0, 0);
                    if ((result & 0x80000000) == 0)
                    {
                      v119 = LODWORD(v142[0]) + LODWORD(v182[0]);
                      if (v119 >= 0x101)
                      {
                        goto LABEL_181;
                      }

                      memcpy(v142 + LODWORD(v142[0]) + 4, v182 + 4, LODWORD(v182[0]));
                      LODWORD(v142[0]) = v119;
                      memset_s(v142 + v119 + 4, 256 - v119, 0, 256 - v119);
                      v120 = v142[0];
                      v121 = *(a1 + 116);
                      memset_s(v216, 0x104uLL, 0, 0x104uLL);
                      memset_s(v182, 0x104uLL, 0, 0x104uLL);
                      memset_s(&v199, 0x104uLL, 0, 0x104uLL);
                      if (v120 != v121)
                      {
                        goto LABEL_180;
                      }

                      goto LABEL_171;
                    }
                  }
                }
              }
            }

            memset_s(v216, 0x104uLL, 0, 0x104uLL);
            memset_s(v182, 0x104uLL, 0, 0x104uLL);
            memset_s(&v199, 0x104uLL, 0, 0x104uLL);
          }

LABEL_180:
          v109 = "encrypt signature";
          v110 = 788;
          goto LABEL_144;
        }
      }

      else
      {
        memset_s(v217, 0x104uLL, 0, 0x104uLL);
      }

      v109 = "deriving signature encryption key";
      v110 = 786;
      goto LABEL_144;
    }

    v122 = LODWORD(v159[0]);
    if (LODWORD(v159[0]) >= 0x101)
    {
      goto LABEL_181;
    }

    __memcpy_chk();
    LODWORD(v142[0]) = v122;
    memset_s(v142 + v122 + 4, 256 - v122, 0, 256 - v122);
LABEL_171:
    memcpy(&v8[*(a1 + 296)], v142 + 4, LODWORD(v142[0]));
    goto LABEL_172;
  }

  *v217 = 0;
  result = v107(*(a1 + 1720), 256, v159 + 4, v217, v138 + 4);
  if ((result & 0x80000000) != 0)
  {
    v109 = "Signing callback";
    v110 = 771;
    goto LABEL_144;
  }

  v108 = *(a1 + 112);
  if (*v217 > v108)
  {
    v109 = "Invalid callback size return value";
    v110 = 772;
    goto LABEL_144;
  }

  if (v108 < 0x101)
  {
    LODWORD(v159[0]) = *(a1 + 112);
    result = memset_s(v159 + v108 + 4, 256 - v108, 0, 256 - v108);
    goto LABEL_152;
  }

LABEL_181:
  __break(1u);
  return result;
}

void *sub_1000F40E4(void *a1, size_t __size)
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

uint64_t sub_1000F4144()
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

uint64_t sub_1000F4184(const char *a1)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "parseSize", 89, 3, 0, "invalid size: %s", v3, v4, v1);
    return -1;
  }

  return result;
}

double sub_1000F4248()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec + v1.tv_usec * 0.000001;
}

uint64_t sub_1000F4290()
{
  v5 = 0;
  v4 = 4;
  if (!sysctlbyname("hw.physicalcpu", &v5, &v4, 0, 0))
  {
    return v5;
  }

  v0 = __error();
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDefaultNThreads", 107, 3, *v0, "sysctlbyname", v1, v2, v4);
  return 1;
}

uint64_t sub_1000F4310(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 1);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 1) = a0123456789abcd[v4 >> 4];
    *v3 = a0123456789abcd[v4 & 0xF];
    v3 += 2;
    ++v2;
  }

  while (v2 != 20);
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1000F4350(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = *a3++;
      *(result + v3) = a0123456789abcd[v4 >> 4];
      *(result + (v3 + 1)) = a0123456789abcd[v4 & 0xF];
      v3 += 2;
    }

    while (2 * a2 != v3);
  }

  *(result + 2 * a2) = 0;
  return result;
}

uint64_t sub_1000F439C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F43FC(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 20; ++i)
  {
    *(result + i) ^= *(a2 + i);
  }

  return result;
}

const char *sub_1000F442C(const char *result, unint64_t a2)
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

const char *sub_1000F44EC(const char *result, uint64_t a2)
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

uint64_t sub_1000F456C(uint64_t a1)
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

uint64_t sub_1000F4680(char *a1, unint64_t a2, char *__s, const char *a4)
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

uint64_t sub_1000F4744(char *a1, size_t a2, char *__s, const char *a4)
{
  v8 = strlen(__s);
  v9 = strlen(a4);
  if (!v8)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 278, 3, 0, "invalid dir: %s", v10, v11, __s);
    return 0xFFFFFFFFLL;
  }

  v12 = v9;
  if (v8 + v9 + 1 >= a2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 279, 3, 0, "dir/path too long: %s", v10, v11, __s);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 297, 3, 0, "invalid path: %s", v16, v17, a4);
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 326, 3, 0, "a parent of path is not a directory: %s", v25, v26, a4);
          return 0xFFFFFFFFLL;
        }
      }

      else if ((v30.st_mode & 0xF000) != 0x4000)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 316, 3, 0, "a parent of path is not a directory: %s", v23, v24, a4);
        return 0xFFFFFFFFLL;
      }
    }

    else if (v22 || (v27 = v30.st_mode & 0xF000, v27 != 0x4000) && v27 != 40960)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 311, 3, 0, "dir doesn't exist, or is invalid: %s", v23, v24, __s);
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

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "concatExtractPath", 304, 3, 0, "invalid path: %s", v16, v17, a4);
  return 0xFFFFFFFFLL;
}

BOOL sub_1000F4A20(_BYTE *a1, size_t __n)
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

uint64_t sub_1000F4AFC(const char *a1, uint64_t a2, char *__s)
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

uint64_t sub_1000F4C14(char *a1, size_t a2)
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

uint64_t sub_1000F4CD8(const char *a1)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 438, 3, *v10, "readdir_r", v11, v12, v14);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "isDirEmpty", 428, 3, *v7, "%s", v8, v9, v1);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_1000F4E70(const char *a1, char **a2, off_t *a3, uint64_t a4)
{
  memset(&v31, 0, sizeof(v31));
  if (lstat(a1, &v31))
  {
    v8 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 475, 3, *v8, "%s", v9, v10, a1);
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
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 499, 3, v27, "%s", v28, v29, a1);
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

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", 500, 3, 0, "reading contents: %s", v20, v21, a1);
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileContents", v26, 3, v22, v25, v23, v24, v30);
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

uint64_t sub_1000F507C(const char *a1, void *a2, size_t a3, off_t a4)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "loadFileSegment", v14, 3, v15, v13, v11, v12, v17);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000F5188(const char *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = open(a1, 1537, 420);
  if (v6 < 0)
  {
    v14 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 535, 3, *v14, "%s", v15, v16, v5);
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
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 544, 3, v17, "%s", v18, v19, v5);
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

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "storeFileContents", 545, 3, 0, "write error: %s", v11, v12, v5);
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

uint64_t sub_1000F52C4(const char *a1, unint64_t a2, unint64_t a3, const char *a4)
{
  v10 = sub_100120834(0x100000uLL);
  if (v10)
  {
    v13 = sub_1000FDD20(a1, a2, a3);
    if (v13)
    {
      v16 = sub_1000FE594(a4, a3);
      if (v16)
      {
        if ((sub_100120FD4(v10, a3, sub_1000FE21C, v13, sub_1000FE740, v16, v14, v15) & 0x8000000000000000) == 0)
        {
          v19 = 0;
          goto LABEL_11;
        }

        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 569, 3, 0, "copy failed: %s to %s", v17, v18, a1);
      }

      else
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 566, 3, 0, "opening file: %s", v14, v15, a4);
      }
    }

    else
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 565, 3, 0, "opening file: %s", v11, v12, a1);
      v16 = 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileSegment", 564, 3, 0, "mem buffer creation", v8, v9, v21);
    v16 = 0;
    v13 = 0;
  }

  v19 = 1;
LABEL_11:
  sub_1000FE0A0(v13);
  sub_1000FE6F0(v16);
  sub_100120944(v10);
  if (v19)
  {
    unlink(a4);
  }

  return (v19 << 31 >> 31);
}

uint64_t sub_1000F5468(const char *a1, uint64_t a2)
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", v7, 3, *v19, "%s", v20, v21, a1);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 610, 3, *v8, "%s", v9, v10, a1);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 614, 3, *v12, "%s", v13, v14, a1);
    v4 = 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 116) & 0xFFFFFFDF | (32 * ((v23.st_flags >> 5) & 1));
  if (v23.st_flags != v15 && chflags(a1, v15) && *__error() != 1)
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "updateFileAttributes", 621, 3, *v16, "%s", v17, v18, a1);
    v4 = 0xFFFFFFFFLL;
  }

  if (utimes(a1, &v24) && *__error() != 1)
  {
    v7 = 624;
    goto LABEL_24;
  }

  return v4;
}

uint64_t sub_1000F56CC(const char *a1, const char *a2, int a3, uint64_t a4, int a5)
{
  memset(&v54, 0, sizeof(v54));
  v9 = open(a1, 0);
  if (v9 < 0)
  {
    v16 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 645, 3, *v16, "%s", v17, v18, a1);
LABEL_19:
    v24 = 0;
LABEL_20:
    v28 = 0;
LABEL_21:
    v32 = 0;
LABEL_22:
    sub_1000FE0A0(v24);
    sub_1000FEEA8(v28, v44, v45, v46, v47, v48, v49, v50);
    sub_100120944(v32);
    unlink(a2);
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fstat(v9, &v54))
  {
    v13 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 646, 3, v13, "%s", v14, v15, a1);
LABEL_18:
    close(v10);
    goto LABEL_19;
  }

  if ((v54.st_mode & 0xF000) != 0x8000)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 647, 3, 0, "not a regular file: %s", v11, v12, a1);
    goto LABEL_18;
  }

  v19 = sub_1000F59EC(v10);
  close(v10);
  st_size = v54.st_size;
  st_flags = v54.st_flags;
  v24 = sub_1000FDD20(a1, 0, v54.st_size);
  if (!v24)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 666, 3, 0, "open failed: %s", v22, v23, a1);
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

  v28 = sub_1000FE910(a2, st_size, v25 | 8u, v19, a3);
  if (!v28)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 667, 3, 0, "open failed: %s", v26, v27, a1);
    goto LABEL_21;
  }

  v29 = sub_100120834(0x100000uLL);
  v32 = v29;
  if (!v29)
  {
    v51 = "alloc";
    v52 = 670;
LABEL_27:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", v52, 3, 0, v51, v30, v31, v53);
    goto LABEL_22;
  }

  v33 = sub_100120FD4(v29, st_size, sub_1000FE21C, v24, sub_1000FF09C, v28, v30, v31);
  if (v33 < 0 || v33 != st_size)
  {
    v53 = v33;
    v51 = "copy failed %lld";
    v52 = 674;
    goto LABEL_27;
  }

  sub_1000FE0A0(v24);
  sub_1000FEEA8(v28, v34, v35, v36, v37, v38, v39, v40);
  sub_100120944(v32);
  if (!sub_1000F5468(a2, &v54))
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "copyFileWithAttributes", 690, 3, 0, "update file attributes", v41, v42, v53);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F59EC(int a1)
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

uint64_t sub_1000F5A84(unsigned int a1)
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

uint64_t sub_1000F5A94(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F5AA0(const char *a1, const char *a2)
{
  memset(&v39, 0, sizeof(v39));
  memset(&v38, 0, sizeof(v38));
  if (stat(a1, &v39))
  {
    v4 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 708, 3, v4, "%s", v5, v6, a1);
LABEL_5:
    v10 = 0;
    v11 = 0;
    v12 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (stat(a2, &v38))
  {
    v7 = *__error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 709, 3, v7, "%s", v8, v9, a2);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 714, 3, v22, "%s", v23, v24, a1);
    goto LABEL_5;
  }

  v15 = v14;
  v16 = open(a2, 0);
  if (v16 < 0)
  {
    v25 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 716, 3, *v25, "%s", v26, v27, a2);
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 723, 3, v31, "%s read", v32, v33, a1);
        goto LABEL_24;
      }

      v20 = v19;
      v21 = read(v17, v10, 0x40000uLL);
      if (v21 < 0)
      {
        v34 = *__error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 725, 3, v34, "%s read", v35, v36, a2);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "areFilesEqual", 719, 3, v28, "malloc", v29, v30, v37);
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

uint64_t sub_1000F5D8C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (sub_1000F4680(v8, 0x800uLL, v1, v5) || sub_1000F4680(v7, 0x800uLL, v4, v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_1000F5AA0(v8, v7);
  }
}

uint64_t sub_1000F5E4C(const char *a1)
{
  v1 = a1;
  memset(&v6, 0, 512);
  if ((statfs(a1, &v6) & 0x80000000) == 0)
  {
    return v6.f_bsize;
  }

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFilesystemBlockSize", 752, 3, "statfs failed: %s\n", v2, v3, v4, v1);
  return 4096;
}

uint64_t sub_1000F5F24(const char *a1)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a1, &v12))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDiskUsage", 765, 3, "stat failed: %s\n", v2, v3, v4, a1);
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

uint64_t sub_1000F5FF4(const char *a1)
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

uint64_t sub_1000F6084(const char *a1)
{
  v2 = listxattr(a1, 0, 0, 1);
  if (v2 < 0)
  {
    v11 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 912, 3, *v11, "listxattr failed: %s", v12, v13, a1);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", 927, 3, v20, "listxattr failed: %s", v21, v22, a1);
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
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "clearEntryXAT", v19, 3, v15, v18, v16, v17, v24);
LABEL_19:
  v14 = 0xFFFFFFFFLL;
LABEL_20:
  free(v4);
  return v14;
}

uint64_t sub_1000F6224(char *a1, unint64_t a2, unsigned __int8 *a3)
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

uint64_t sub_1000F62C4(char *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 983, 3, *v17, "%s", v18, v19, v7);
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
          sub_10010403C(v25);
        }

        while (1)
        {
          v12 = read(v9, v11, 0x100000uLL);
          v13 = v12;
          if (v12 < 0)
          {
            v14 = __error();
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 997, 3, *v14, "read", v15, v16, v24);
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
            sub_10010404C(v25, v11, v13);
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
          sub_10010409C(v4, v25);
        }

LABEL_29:
        free(v11);
        v4 = v13 >> 63;
      }

      else
      {
        v20 = __error();
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileDigests", 987, 3, *v20, "malloc", v21, v22, v24);
        v4 = 0xFFFFFFFFLL;
      }

      close(v9);
    }
  }

  return v4;
}

uint64_t sub_1000F64D8(const char *a1, off_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = open(a1, 0);
  if (v8 < 0)
  {
    v12 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1Digest", 1025, 3, *v12, "%s", v13, v14, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
    v10 = sub_1000F6584(v8, a2, a3, a4);
    close(v9);
    return v10;
  }
}

uint64_t sub_1000F6584(int a1, off_t a2, unint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v24 = 1;
  if (fcntl(a1, 48))
  {
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1044, 3, "Warning: couldn't set F_NOCACHE\n", v8, v9, v10, 1);
  }

  memset(&c, 0, sizeof(c));
  v11 = valloc(0x100000uLL);
  if (!v11)
  {
    v18 = *__error();
    v21 = "malloc";
    v22 = 1049;
LABEL_15:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", v22, 3, v18, v21, v19, v20, v24);
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

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getFileSegmentSHA1DigestFD", 1062, 3, 0, "error: read more bytes than requested: %zd (requested %zu)", v14, v15, v13);
    goto LABEL_16;
  }

LABEL_12:
  CC_SHA1_Final(a4, &c);
  v17 = 0;
LABEL_17:
  free(v11);
  return v17;
}

uint64_t sub_1000F6730(const char *a1)
{
  bzero(__s, 0x410uLL);
  memset(&v10, 0, sizeof(v10));
  if (realpath_DARWIN_EXTSN(a1, __s))
  {
    if (lstat(__s, &v10) || (v10.st_mode & 0xF000) != 0x4000)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1106, 3, 0, "Not a directory: %s", v4, v5, a1);
    }

    else
    {
      v13 = sub_1000F5E4C(__s);
      v9[1] = 0;
      v9[2] = 0;
      v9[3] = sub_1000F6898;
      v9[0] = __s;
      if ((sub_1000F6984(v9, __s) & 0x80000000) == 0)
      {
        return v12;
      }

      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1115, 3, 0, "enumerating directory: %s", v6, v7, a1);
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "getDirectoryDiskUsage", 1105, 3, 0, "Invalid path: %s", v2, v3, a1);
  }

  return -1;
}

uint64_t sub_1000F6898(uint64_t a1, char *a2)
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a2, &v12) < 0)
  {
    v9 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "DirectoryDiskUsageProc", 1088, 3, *v9, "lstat: %s", v10, v11, a2);
    return 0xFFFFFFFFLL;
  }

  v4 = v12.st_mode & 0xF000;
  if (v4 == 0x8000 || v4 == 0x4000)
  {
    v5 = *(a1 + 1032);
    v6 = sub_1000F5F24(a2);
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

uint64_t sub_1000F6984(void *a1, char *__s)
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
  return sub_1000F6AEC(a1, v7, v6);
}

uint64_t sub_1000F6A60(const char *a1)
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

uint64_t sub_1000F6AEC(void *a1, const char *a2, uint64_t a3)
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
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1170, 3, "lstat after readdir failed (errno=%d): %s", v23, v24, v25, v22);
            }

            else if ((v30.st_flags & 0x40000000) != 0)
            {
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1175, 3, "skip dataless: %s", v23, v24, v25, a2);
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

              if (d_type == 4 && (sub_1000F6AEC(a1, a2, v21) & 0x80000000) != 0)
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1143, 3, *v9, "readdir_r", v10, v11, v29);
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
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "enumerateTree_rec", 1126, 3, *v15, "%s", v16, v17, a2);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1000F6E1C(char *__s)
{
  v2[0] = 0;
  v2[1] = 0;
  v2[3] = sub_1000F6E68;
  v2[2] = sub_1000F6F20;
  return sub_1000F6984(v2, __s);
}

uint64_t sub_1000F6E68(int a1, char *a2)
{
  memset(&v8, 0, sizeof(v8));
  if (lstat(a2, &v8))
  {
    v3 = 1247;
LABEL_3:
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeEntryProc", v3, 3, *v4, "%s", v5, v6, a2);
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

uint64_t sub_1000F6F20(int a1, char *a2)
{
  v2 = a2;
  result = rmdir(a2);
  if (result)
  {
    v4 = __error();
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/Utils.c", "removeLeaveDirProc", 1258, 3, *v4, "%s", v5, v6, v2);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1000F6F90(const char *a1)
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
    v5 = vandq_s8(vshlq_u32(v4, xmmword_10037C170), xmmword_10037C180);
    *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
    return (v5.i32[0] | v5.i32[1]);
  }

  return result;
}

uint64_t sub_1000F709C(uint64_t a1, uint64_t *a2)
{
  if (AAHeaderAssign(*(a1 + 88), *(a1 + 96)) < 0)
  {
    v16 = "init header";
    v17 = 199;
    goto LABEL_147;
  }

  if ((sub_1000DA780(a1, 0x200uLL, v4, v5, v6, v7, v8, v9) & 0x80000000) != 0)
  {
    v16 = "invalid tar archive";
    v17 = 202;
    goto LABEL_147;
  }

  v10 = *(a1 + 64);
  if (sub_1000F8234(v10, 512))
  {
    if ((sub_1000DA780(a1, 0x400uLL, v11, v12, v13, v14, v8, v9) & 0x80000000) != 0)
    {
      v16 = "invalid tar archive";
      v17 = 207;
      goto LABEL_147;
    }

    if (!sub_1000F8234(*(a1 + 64), 1024))
    {
      v16 = "Invalid EOF record header";
      v17 = 209;
      goto LABEL_147;
    }

    return 1;
  }

  v133 = a2;
  v18 = 70;
  while (1)
  {
    while (1)
    {
      v19 = *(a1 + 72);
      v20 = &v10[v19];
      v21 = &v10[v19 - 356];
      v22 = *v21;
      if (v22 != 120 && v22 != 103)
      {
        break;
      }

      v142 = 0;
      if ((sub_1000F82B0(v20 - 388, 0xCuLL, &v142) & 0x80000000) != 0)
      {
        v16 = "invalid pax header";
        v17 = 229;
        goto LABEL_147;
      }

      v27 = v142;
      if (v22 == 103 && AAHeaderClear(*(a1 + 88)) < 0)
      {
        v16 = "clear header";
        v17 = 233;
        goto LABEL_147;
      }

      if ((sub_1000DA780(a1, v19 + ((v27 + 511) & 0xFFFFFFFFFFFFFE00) + 512, v23, v24, v25, v26, v8, v9) & 0x80000000) != 0)
      {
        v16 = "truncated stream";
        v17 = 236;
        goto LABEL_147;
      }

      if (v27)
      {
        v28 = 0;
        v29 = *(a1 + 64) + v19;
        v30 = v29 + v27;
        while (1)
        {
          __endptr = 0;
          v31 = strtoll((v29 + v28), &__endptr, 10);
          if (!v31 || ((v28 += v31, v32 = __endptr, v28 <= v27) ? (v33 = __endptr > v30) : (v33 = 1), v33 || (v34 = (v28 - 1), v35 = (v29 + v28 - 1), *v35 != 10)))
          {
            v16 = "invalid xhdr entry";
            v17 = 249;
            goto LABEL_147;
          }

          v34[v29] = 0;
          v36 = &v32[-v29];
          if (&v32[-v29] < v34)
          {
            while (1)
            {
              v37 = *v32++;
              if (v37 != 32)
              {
                break;
              }

              if (++v36 >= v34)
              {
                goto LABEL_145;
              }
            }
          }

          if (v36 >= v34)
          {
LABEL_145:
            v16 = "invalid xhdr entry";
            v17 = 257;
            goto LABEL_147;
          }

          v38 = v29;
          while (v36[v38] != 61)
          {
            --v34;
            ++v38;
            if (v36 == v34)
            {
              goto LABEL_145;
            }
          }

          v132 = v30;
          v36[v38] = 0;
          v39 = &v36[v38 + 1];
          fprintf(__stderrp, "xhdr %s: %s\n", &v36[v29], v39);
          if (!strcmp(&v36[v29], "size"))
          {
            v42.ikey = 5521732;
            v40 = 5;
LABEL_43:
            v41 = 1;
            goto LABEL_48;
          }

          if (!strcmp(&v36[v29], "path"))
          {
            v41 = 0;
            v40 = 2;
            v42.ikey = 5521744;
            goto LABEL_48;
          }

          if (!strcmp(&v36[v29], "uid"))
          {
            break;
          }

          if (!strcmp(&v36[v29], "gid"))
          {
            v41 = 1;
            v42.ikey = 4475207;
            goto LABEL_47;
          }

          if (!strcmp(&v36[v29], "uname"))
          {
            v42.ikey = 5130581;
            v40 = 2;
            goto LABEL_43;
          }

          if (!strcmp(&v36[v29], "gname"))
          {
            v40 = 2;
            v41 = 1;
            v42.ikey = 5130567;
          }

          else if (!strcmp(&v36[v29], "linkpath"))
          {
            v41 = 0;
            v40 = 2;
            v42.ikey = 4935244;
          }

          else
          {
            if (strcmp(&v36[v29], "mtime"))
            {
              goto LABEL_96;
            }

            v40 = 4;
            v41 = 1;
            v42.ikey = 5067853;
          }

LABEL_48:
          v43 = *v39;
          if (!*v39)
          {
            v47 = *(a1 + 88);
            KeyIndex = AAHeaderGetKeyIndex(v47, v42);
            if ((KeyIndex & 0x80000000) == 0 && AAHeaderRemoveField(v47, KeyIndex) < 0)
            {
              v16 = "removing header field";
              v17 = 278;
              goto LABEL_147;
            }

            goto LABEL_96;
          }

          if (v40 > 3)
          {
            if (v40 == 4)
            {
              v65 = v42;
              value.tv_sec = 0;
              value.tv_nsec = 0;
              value.tv_sec = strtoll(v39, &__endptr, 10);
              v66 = __endptr;
              if (__endptr && *__endptr == 46)
              {
                value.tv_nsec = strtoll(__endptr + 1, &__endptr, 10);
                v66 = __endptr;
              }

              if (v66 != v35)
              {
                v16 = "xhdr value parsing";
                v17 = 317;
                goto LABEL_147;
              }

              v67 = *(a1 + 88);
              v68 = v65;
              v69 = AAHeaderGetKeyIndex(v67, v68);
              if (v69 < 0)
              {
                v70 = -1;
              }

              else
              {
                v70 = v69;
              }

              v71 = v65;
              if (AAHeaderSetFieldTimespec(v67, v70, v71, &value) < 0)
              {
                v16 = "creating header";
                v17 = 318;
                goto LABEL_147;
              }
            }

            else
            {
              v49 = v42;
              v50 = strtoll(v39, &__endptr, 10);
              if (__endptr != v35)
              {
                v16 = "xhdr value parsing";
                v17 = 288;
                goto LABEL_147;
              }

              v51 = v50;
              v52 = *(a1 + 88);
              v53 = v49;
              v54 = AAHeaderGetKeyIndex(v52, v53);
              if (v54 < 0)
              {
                v55 = -1;
              }

              else
              {
                v55 = v54;
              }

              v56 = v49;
              if (AAHeaderSetFieldBlob(v52, v55, v56, v51) < 0)
              {
                v16 = "creating header";
                v17 = 289;
                goto LABEL_147;
              }
            }
          }

          else
          {
            if (v40 != 1)
            {
              key = v42;
              v44 = v41;
              v45 = strlen(&v36[v38 + 1]);
              v46 = v45;
              if (v44)
              {
                goto LABEL_91;
              }

              if (v45 == 1)
              {
                if (v43 == 46)
                {
                  v46 = 0;
                  goto LABEL_91;
                }

                v46 = 1;
              }

              else if (!v45 || v43 == 46 && v36[v38 + 2] == 47 && (v39 = &v36[v38 + 3], v46 = v45 - 2, v45 == 2))
              {
LABEL_91:
                v72 = *(a1 + 88);
                v73 = key;
                v74 = AAHeaderGetKeyIndex(v72, v73);
                if (v74 < 0)
                {
                  v75 = -1;
                }

                else
                {
                  v75 = v74;
                }

                v76 = key;
                if (AAHeaderSetFieldString(v72, v75, v76, v39, v46) < 0)
                {
                  v16 = "creating header";
                  v17 = 309;
                  goto LABEL_147;
                }

                v27 = v142;
                goto LABEL_96;
              }

              if (v39[v46 - 1] == 47)
              {
                --v46;
              }

              goto LABEL_91;
            }

            v57 = v42;
            v58 = strtoll(v39, &__endptr, 10);
            if (__endptr != v35)
            {
              v16 = "xhdr value parsing";
              v17 = 295;
              goto LABEL_147;
            }

            v59 = v58;
            v60 = *(a1 + 88);
            v61 = v57;
            v62 = AAHeaderGetKeyIndex(v60, v61);
            if (v62 < 0)
            {
              v63 = -1;
            }

            else
            {
              v63 = v62;
            }

            v64 = v57;
            if (AAHeaderSetFieldUInt(v60, v63, v64, v59) < 0)
            {
              v16 = "creating header";
              v17 = 296;
              goto LABEL_147;
            }
          }

LABEL_96:
          v30 = v132;
          if (v28 >= v27)
          {
            goto LABEL_97;
          }
        }

        v42.ikey = 4475221;
        v41 = 1;
LABEL_47:
        v40 = 1;
        goto LABEL_48;
      }

LABEL_97:
      if (*v21 == 103 && AAHeaderAssign(*(a1 + 96), *(a1 + 88)) < 0)
      {
        v16 = "update global header";
        v17 = 330;
        goto LABEL_147;
      }

      v10 = *(a1 + 64);
      v18 = 70;
    }

    if ((v77 = *(a1 + 88)) != 0 && (v78.ikey = 5521744, v79 = AAHeaderGetKeyIndex(*(a1 + 88), v78), (v79 & 0x80000000) == 0) && ((FieldString = AAHeaderGetFieldString(v77, v79, 0x400uLL, &__s, 0), FieldString <= 1) ? (v81 = 1) : (v81 = FieldString), v81 < 0 || FieldString < 2))
    {
      if (v81 < 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v82 = 0;
      v83 = v20 - 512;
      do
      {
        if (!v83[v82])
        {
          break;
        }

        ++v82;
      }

      while (v82 != 100);
      for (i = 0; i != 155; ++i)
      {
        if (!v20[i - 167])
        {
          break;
        }
      }

      do
      {
        v85 = v82;
        if (!v82)
        {
          break;
        }

        --v82;
      }

      while (v83[v85 - 1] == 47);
      v86 = i - 1022;
      while (v86 != -1022)
      {
        v87 = v20[v86-- + 854];
        if (v87 != 47)
        {
          if (v85 + v86 >= 0xFFFFFFFFFFFFFBFFLL)
          {
            __memcpy_chk();
            v88 = v86 + 1024;
            v145[v86 + 1021] = 47;
            goto LABEL_122;
          }

LABEL_143:
          v16 = "invalid header";
          v17 = 337;
          goto LABEL_147;
        }
      }

      if (v85 - 1023 < 0xFFFFFFFFFFFFFBFFLL)
      {
        goto LABEL_143;
      }

      v88 = 0;
LABEL_122:
      v89 = &__s + v88;
      memcpy(&__s + v88, v20 - 512, v85);
      v89[v85] = 0;
    }

    v90 = strrchr(&__s, 47);
    v91 = *v21;
    if (v91 != 48)
    {
      break;
    }

    if (v90)
    {
      p_s = v90 + 1;
    }

    else
    {
      p_s = &__s;
    }

    if (*p_s != 46)
    {
      goto LABEL_163;
    }

    v93 = v90 + 2;
    if (!v90)
    {
      v93 = &v144;
    }

    if (*v93 != 95)
    {
LABEL_163:
      v102 = 0;
      v104 = 0;
      v106 = 0;
      v105 = 0;
      v103 = 1;
      goto LABEL_169;
    }

    value.tv_sec = 0;
    if ((sub_1000F82B0(v20 - 388, 0xCuLL, &value) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 346;
      goto LABEL_147;
    }

    tv_sec = value.tv_sec;
    if ((sub_1000DA780(a1, v19 + ((value.tv_sec + 511) & 0xFFFFFFFFFFFFFE00) + 512, v94, v95, v96, v97, v8, v9) & 0x80000000) != 0)
    {
      v16 = "truncated stream";
      v17 = 350;
      goto LABEL_147;
    }

    if (tv_sec >= 0x18)
    {
      v10 = *(a1 + 64);
      v99 = *&v10[v19] == 0x20007160500 && *&v10[v19 + 8] == 0x5820534F2063614DLL;
      if (v99 && *&v10[v19 + 16] == 0x2020202020202020)
      {
        continue;
      }
    }

    v16 = "invalid ._ entry";
    v17 = 361;
    goto LABEL_147;
  }

  v102 = 0;
  v103 = 1;
  if (*v21 <= 0x32u)
  {
    v104 = 0;
    v106 = 0;
    v105 = 0;
    switch(v91)
    {
      case 0:
        goto LABEL_169;
      case 49:
        v102 = 0;
        v106 = 0;
        v105 = 0;
        v103 = 0;
        v104 = 1;
        v18 = 72;
        goto LABEL_169;
      case 50:
        v104 = 0;
        v106 = 0;
        v105 = 0;
        v103 = 0;
        v102 = 1;
        v18 = 76;
        goto LABEL_169;
    }

LABEL_162:
    v130 = v91;
    v16 = "Non supported entry type %u";
    v17 = 392;
    goto LABEL_147;
  }

  if (*v21 > 0x34u)
  {
    if (v91 == 53)
    {
      v102 = 0;
      v104 = 0;
      v106 = 0;
      v105 = 0;
      v103 = 0;
      v18 = 68;
      goto LABEL_169;
    }

    v104 = 0;
    v106 = 0;
    v105 = 0;
    if (v91 == 55)
    {
      goto LABEL_169;
    }

    goto LABEL_162;
  }

  v102 = 0;
  v104 = 0;
  if (v91 == 51)
  {
    v106 = 0;
    v103 = 0;
    v105 = 1;
    v18 = 67;
  }

  else
  {
    v105 = 0;
    v103 = 0;
    v106 = 1;
    v18 = 66;
  }

LABEL_169:
  v107.ikey = 5265748;
  if (AAHeaderSetFieldUInt(*(a1 + 88), 0xFFFFFFFF, v107, v18) < 0)
  {
    v16 = "creating header";
    v17 = 394;
    goto LABEL_147;
  }

  v108.ikey = 5521744;
  if (AAHeaderGetKeyIndex(*(a1 + 88), v108) < 0)
  {
    v109 = &__s;
    v110 = strlen(&__s);
    v111 = v110;
    if (v110 == 1 && __s == 46)
    {
      v111 = 0;
    }

    else
    {
      v109 = &__s;
      if (v110 >= 2 && __s == 46 && v144 == 47)
      {
        v109 = v145;
        v111 = v110 - 2;
      }
    }

    v112.ikey = 5521744;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v112, v109, v111) < 0)
    {
      v16 = "creating header";
      v17 = 405;
      goto LABEL_147;
    }
  }

  if ((v102 | v104) != 1 || (v113.ikey = 4935244, (AAHeaderGetKeyIndex(*(a1 + 88), v113) & 0x80000000) == 0))
  {
LABEL_195:
    if ((v106 | v105) == 1)
    {
      value.tv_sec = 0;
      v142 = 0;
      if ((sub_1000F82B0(v20 - 183, 8uLL, &value) & 0x80000000) != 0)
      {
        v16 = "invalid header";
        v17 = 424;
        goto LABEL_147;
      }

      if ((sub_1000F82B0(v20 - 175, 8uLL, &v142) & 0x80000000) != 0)
      {
        v16 = "invalid header";
        v17 = 425;
        goto LABEL_147;
      }

      v116.ikey = 5653828;
      if ((sub_1000F835C(*(a1 + 88), v116, value.tv_sec) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 426;
        goto LABEL_147;
      }

      v117.ikey = 3294532;
      if ((sub_1000F835C(*(a1 + 88), v117, v142) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 427;
        goto LABEL_147;
      }
    }

    size = 0;
    if ((sub_1000F82B0(v20 - 388, 0xCuLL, &size) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 432;
      goto LABEL_147;
    }

    if (v103)
    {
      v118.ikey = 5521732;
      v119 = AAHeaderGetKeyIndex(*(a1 + 88), v118);
      if ((v119 & 0x80000000) != 0)
      {
        v120.ikey = 5521732;
        if (AAHeaderSetFieldBlob(*(a1 + 88), 0xFFFFFFFF, v120, size) < 0)
        {
          v16 = "creating header";
          v17 = 438;
          goto LABEL_147;
        }
      }

      else
      {
        value.tv_sec = 0;
        if (AAHeaderGetFieldBlob(*(a1 + 88), v119, &size, &value) < 0)
        {
          v16 = "looking up header";
          v17 = 443;
          goto LABEL_147;
        }
      }
    }

    v137 = 0;
    v138 = 0;
    v136 = 0;
    if ((sub_1000F82B0(v20 - 412, 8uLL, &v138) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 449;
      goto LABEL_147;
    }

    if ((sub_1000F82B0(v20 - 404, 8uLL, &v137) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 450;
      goto LABEL_147;
    }

    if ((sub_1000F82B0(v20 - 396, 8uLL, &v136) & 0x80000000) != 0)
    {
      v16 = "invalid header";
      v17 = 451;
      goto LABEL_147;
    }

    v121.ikey = 4476749;
    if ((sub_1000F835C(*(a1 + 88), v121, v138) & 0x80000000) != 0)
    {
      v16 = "creating header";
      v17 = 452;
      goto LABEL_147;
    }

    v122.ikey = 4475221;
    if ((sub_1000F835C(*(a1 + 88), v122, v137) & 0x80000000) != 0)
    {
      v16 = "creating header";
      v17 = 453;
    }

    else
    {
      v123.ikey = 4475207;
      if ((sub_1000F835C(*(a1 + 88), v123, v136) & 0x80000000) != 0)
      {
        v16 = "creating header";
        v17 = 454;
      }

      else
      {
        v135.tv_sec = 0;
        v135.tv_nsec = 0;
        v134 = 0;
        if ((sub_1000F82B0(v20 - 376, 0xCuLL, &v134) & 0x80000000) != 0)
        {
          v16 = "invalid header";
          v17 = 459;
        }

        else
        {
          v135.tv_sec = v134;
          if ((sub_1000F83CC(*(a1 + 88), &v135) & 0x80000000) != 0)
          {
            v16 = "creating header";
            v17 = 461;
          }

          else
          {
            v124 = 0;
            v125 = v20 - 247;
            while (v125[v124])
            {
              if (++v124 == 32)
              {
                goto LABEL_240;
              }
            }

            if (v124)
            {
LABEL_240:
              v126.ikey = 5130581;
              if ((sub_1000F8434(*(a1 + 88), v126, v125, v124) & 0x80000000) != 0)
              {
                v16 = "creating header";
                v17 = 465;
                goto LABEL_147;
              }
            }

            v127 = 0;
            v128 = v20 - 215;
            while (v128[v127])
            {
              if (++v127 == 32)
              {
                goto LABEL_246;
              }
            }

            if (!v127)
            {
LABEL_247:
              result = 0;
              *v133 = (size + 511) & 0xFFFFFFFFFFFFFE00;
              return result;
            }

LABEL_246:
            v129.ikey = 5130567;
            if ((sub_1000F8434(*(a1 + 88), v129, v128, v127) & 0x80000000) == 0)
            {
              goto LABEL_247;
            }

            v16 = "creating header";
            v17 = 467;
          }
        }
      }
    }

LABEL_147:
    LODWORD(v101) = 0;
    goto LABEL_148;
  }

  v101 = 0;
  v114 = v20 - 355;
  while (v114[v101])
  {
    if (++v101 == 100)
    {
      goto LABEL_191;
    }
  }

  if (v101)
  {
    if (v101 != 1)
    {
LABEL_191:
      if (*v114 == 46 && *(v20 - 354) == 47)
      {
        v114 = v20 - 353;
        v101 -= 2;
      }
    }

    v115.ikey = 4935244;
    if (AAHeaderSetFieldString(*(a1 + 88), 0xFFFFFFFF, v115, v114, v101) < 0)
    {
      v16 = "creating header";
      v17 = 417;
      goto LABEL_147;
    }

    goto LABEL_195;
  }

  v16 = "invalid linkname";
  v17 = 412;
LABEL_148:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AADecodeArchiveInputStreamTar.c", "loadAndDecodeHeader_Ustar", v17, 70, v101, v16, v8, v9, v130);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F8234(_BYTE *a1, uint64_t a2)
{
  v2 = &a1[a2];
  if (a2 >= 1 && (a1 & 7) != 0)
  {
    v3 = a1 + 1;
    while (!*a1)
    {
      if (++a1 < v2)
      {
        if ((v3++ & 7))
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

  else
  {
LABEL_9:
    while ((a1 + 8) <= v2)
    {
      v5 = *a1;
      a1 += 8;
      if (v5)
      {
        return 0;
      }
    }

    while (a1 < v2)
    {
      if (*a1)
      {
        return 0;
      }

      ++a1;
    }

    return 1;
  }
}

uint64_t sub_1000F82B0(_BYTE *a1, unint64_t a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = 0xFFFFFFFFLL;
  if (*a1 && v3 != 128 && v3 != 255)
  {
    v5 = 0;
    if (a2)
    {
      while (a1[v5] == 32)
      {
        if (a2 == ++v5)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = 0;
    v8 = 0;
    v9 = -3 * v5 + 3 * a2;
    v10 = &a1[v5];
    while (1)
    {
      v12 = *v10++;
      v11 = v12;
      if ((v12 & 0xF8) != 0x30)
      {
        break;
      }

      v7 += 3;
      v8 = v11 & 7 | (8 * v8);
      if (!--v6)
      {
        v7 = v9;
        break;
      }
    }

    if ((v7 - 65) >= 0xFFFFFFFFFFFFFFC0)
    {
      v4 = 0;
      *a3 = v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_1000F835C(AAHeader_impl *a1, AAFieldKey key, uint64_t a3)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = key;

  return AAHeaderSetFieldUInt(a1, 0xFFFFFFFF, v7, a3);
}

uint64_t sub_1000F83CC(AAHeader_impl *a1, const timespec *a2)
{
  v4.ikey = 5067853;
  if ((AAHeaderGetKeyIndex(a1, v4) & 0x80000000) == 0)
  {
    return 0;
  }

  v6.ikey = 5067853;

  return AAHeaderSetFieldTimespec(a1, 0xFFFFFFFF, v6, a2);
}

uint64_t sub_1000F8434(AAHeader_impl *a1, AAFieldKey key, const char *a3, size_t a4)
{
  if ((AAHeaderGetKeyIndex(a1, key) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = key;

  return AAHeaderSetFieldString(a1, 0xFFFFFFFF, v9, a3, a4);
}

uint64_t sub_1000F84AC(uint64_t (**a1)(uint64_t result), uint64_t a2)
{
  if (a1[1] == sub_1000F84E4 && *(*a1 + 4) == a2)
  {
    return *(*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F84E4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 576);
    v3 = v2 == 0;
    if (*(result + 136))
    {
      sub_1000F9DA8(result, -1, -1);
      sub_1000E79CC(*(v1 + 17));
    }

    v4 = *(v1 + 12);
    if (v4)
    {
      v5 = v1[22];
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v6;
          v9 = *v4;
          v4 += 20;
          v8 = v9;
          if (v9)
          {
            ++v6;
          }

          --v5;
        }

        while (v5);
        if (v6)
        {
          if (v8)
          {
            v10 = v7 + 1;
          }

          else
          {
            v10 = v7;
          }

          do
          {
            v11 = v1[37];
            if (!v11)
            {
              break;
            }

            v12 = v1[39];
            if (!v12)
            {
              v12 = v1[36];
            }

            v13 = v12 - 1;
            v14 = *(*(v1 + 20) + 4 * (v12 - 1));
            v1[39] = v13;
            v1[37] = v11 - 1;
            if (v14 >= v1[22])
            {
              break;
            }

            v15 = *(v1 + 12) + 160 * v14;
            *(v15 + 144) = -1;
            if (!pthread_mutex_lock((v15 + 24)))
            {
              v16 = *(v15 + 16);
              *(v15 + 16) = v16 + 1;
              if (v16 || !pthread_cond_broadcast((v15 + 88)))
              {
                pthread_mutex_unlock((v15 + 24));
              }
            }

            sub_1000E79CC(*v15);
            *v15 = 0;
            --v10;
          }

          while (v10);
        }
      }
    }

    v17 = *(v1 + 4);
    if (v17)
    {
      v3 = v17(*(v1 + 1)) >= 0 && v2 == 0;
    }

    v19 = *(v1 + 14);
    if (v19)
    {
      if (v1[26])
      {
        v20 = 0;
        v21 = 16;
        do
        {
          free(*(*(v1 + 14) + v21));
          ++v20;
          v21 += 32;
        }

        while (v20 < v1[26]);
        v19 = *(v1 + 14);
      }

      free(v19);
    }

    free(*(v1 + 10));
    v22 = *(v1 + 16);
    if (v22)
    {
      if (v1[30])
      {
        v23 = 0;
        v24 = 88;
        do
        {
          v25 = (*(v1 + 16) + v24);
          if (!pthread_mutex_destroy(&v25[-2].__opaque[24]))
          {
            pthread_cond_destroy(v25);
          }

          ++v23;
          v24 += 136;
        }

        while (v23 < v1[30]);
        v22 = *(v1 + 16);
      }

      free(v22);
    }

    free(*(v1 + 23));
    *(v1 + 21) = 0;
    *(v1 + 22) = 0;
    *(v1 + 23) = 0;
    v26 = *(v1 + 12);
    if (v26)
    {
      if (v1[22])
      {
        v27 = 0;
        v28 = 88;
        do
        {
          v29 = (*(v1 + 12) + v28);
          if (!pthread_mutex_destroy(&v29[-2].__opaque[24]))
          {
            pthread_cond_destroy(v29);
          }

          ++v27;
          v28 += 160;
        }

        while (v27 < v1[22]);
        v26 = *(v1 + 12);
      }

      free(v26);
    }

    free(*(v1 + 20));
    *(v1 + 18) = 0;
    *(v1 + 19) = 0;
    *(v1 + 20) = 0;
    free(*(v1 + 8));
    if (!pthread_mutex_destroy((v1 + 52)) && !pthread_cond_destroy((v1 + 68)))
    {
      free(*(v1 + 25));
    }

    if (!pthread_mutex_destroy((v1 + 84)) && !pthread_cond_destroy((v1 + 100)))
    {
      free(*(v1 + 41));
    }

    if (!pthread_mutex_destroy((v1 + 116)) && !pthread_cond_destroy(v1 + 11))
    {
      free(*(v1 + 57));
    }

    if ((*v1 & 0x8000000000000000) != 0)
    {
      fprintf(__stderrp, "%12llu blocks\n", *(v1 + 7));
      fprintf(__stderrp, "%12u blocks in cache\n", v1[26]);
      v30 = __stderrp;
      v31 = atomic_load(v1 + 75);
      fprintf(v30, "%12llu blocks computed\n", v31);
      v32 = __stderrp;
      v33 = atomic_load(v1 + 76);
      fprintf(v32, "%12llu requests processed\n", v33);
    }

    free(v1);
    return (v3 - 1);
  }

  return result;
}

void *sub_1000F8834(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = calloc(1uLL, 0x68uLL);
  v18 = malloc(0x268uLL);
  v19 = v18;
  if (v18)
  {
    memset_s(v18, 0x268uLL, 0, 0x268uLL);
    if (v17)
    {
      if (a4 < a3)
      {
        v22 = "Cache size must be >= n_workers";
        v23 = 653;
        goto LABEL_23;
      }

      *(v19 + 16) = a6;
      *(v19 + 24) = a7;
      *v19 = a9;
      *(v19 + 8) = a5;
      *(v19 + 48) = a2;
      *(v19 + 32) = a8;
      *(v19 + 40) = a1;
      *(v19 + 56) = (a1 + a2 - 1) / a2;
      *(v19 + 104) = a4;
      *(v19 + 88) = a3;
      *(v19 + 120) = 2 * a3;
      v25 = 3 * a3 + 1;
      *(v19 + 72) = v25;
      if (a9 < 0)
      {
        fprintf(__stderrp, "%12llu blocks in file\n", (a1 + a2 - 1) / a2);
        fprintf(__stderrp, "%12u blocks in cache\n", *(v19 + 104));
        fprintf(__stderrp, "%12u workers\n", *(v19 + 88));
        fprintf(__stderrp, "%12u requests\n", *(v19 + 120));
        fprintf(__stderrp, "%12u messages\n", *(v19 + 72));
        v25 = *(v19 + 72);
      }

      *(v19 + 192) = 0;
      *(v19 + 196) = v25;
      v26 = calloc(v25, 4uLL);
      *(v19 + 200) = v26;
      if (v26)
      {
        if (pthread_mutex_init((v19 + 208), 0))
        {
LABEL_10:
          v30 = "SharedArrayInit: pthread_mutex_init failed\n";
          v31 = 56;
LABEL_22:
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v31, 0, v30, v27, v28, v29, v64);
          v22 = "SharedArrayInit";
          v23 = 684;
          goto LABEL_23;
        }

        if (pthread_cond_init((v19 + 272), 0))
        {
LABEL_12:
          v30 = "SharedArrayInit: pthread_cond_init failed\n";
          v31 = 57;
          goto LABEL_22;
        }

        v32 = *(v19 + 72);
        *(v19 + 320) = 0;
        *(v19 + 324) = v32;
        v33 = calloc(v32, 4uLL);
        *(v19 + 328) = v33;
        if (v33)
        {
          if (pthread_mutex_init((v19 + 336), 0))
          {
            goto LABEL_10;
          }

          if (pthread_cond_init((v19 + 400), 0))
          {
            goto LABEL_12;
          }

          v34 = *(v19 + 120);
          *(v19 + 448) = 0;
          *(v19 + 452) = v34;
          v35 = calloc(v34, 4uLL);
          *(v19 + 456) = v35;
          if (v35)
          {
            if (pthread_mutex_init((v19 + 464), 0))
            {
              goto LABEL_10;
            }

            if (!pthread_cond_init((v19 + 528), 0))
            {
              v36 = *(v19 + 56);
              if (v36 < 0x800000001)
              {
                v38 = calloc(v36, 4uLL);
                *(v19 + 64) = v38;
                if (v38)
                {
                  v39 = *(v19 + 56);
                  if (v39)
                  {
                    memset(v38, 255, 4 * v39);
                  }

                  v40 = calloc(*(v19 + 104), 0x20uLL);
                  *(v19 + 112) = v40;
                  if (!v40)
                  {
                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 693;
                    goto LABEL_24;
                  }

                  v41 = *(v19 + 104);
                  if (v41)
                  {
                    v42 = 0;
                    v43 = *(v19 + 48);
                    v44 = (v40 + 16);
                    while (1)
                    {
                      *(v44 - 1) = -1;
                      atomic_store(0, v44 - 4);
                      v45 = malloc(v43);
                      *v44 = v45;
                      if (!v45)
                      {
                        break;
                      }

                      ++v42;
                      v44 += 8;
                      if (v42 >= v41)
                      {
                        goto LABEL_34;
                      }
                    }

                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 700;
                    goto LABEL_24;
                  }

LABEL_34:
                  v46 = calloc(*(v19 + 72), 8uLL);
                  *(v19 + 80) = v46;
                  if (!v46)
                  {
                    v24 = *__error();
                    v22 = "malloc";
                    v23 = 705;
                    goto LABEL_24;
                  }

                  if (*(v19 + 72))
                  {
                    v47 = 0;
                    while ((sub_1000F902C((v19 + 192), v47) & 0x80000000) == 0)
                    {
                      if (++v47 >= *(v19 + 72))
                      {
                        goto LABEL_39;
                      }
                    }

                    v22 = "SharedArrayPush";
                    v23 = 708;
                    goto LABEL_23;
                  }

LABEL_39:
                  v48 = *(v19 + 120);
                  if (v48 < 0x3C3C3C3D)
                  {
                    v49 = calloc(v48, 0x88uLL);
                    *(v19 + 128) = v49;
                    if (v49)
                    {
                      v50 = *(v19 + 120);
                      v51 = malloc(4 * v50);
                      *(v19 + 184) = v51;
                      if (v51)
                      {
                        *(v19 + 176) = 0;
                        *(v19 + 168) = v50;
                        *(v19 + 172) = 0;
                        if (!v50)
                        {
LABEL_52:
                          v54 = *(v19 + 88);
                          if (v54 < 0x33333334)
                          {
                            v55 = calloc(v54, 0xA0uLL);
                            *(v19 + 96) = v55;
                            if (v55)
                            {
                              v56 = *(v19 + 88);
                              v57 = malloc(4 * v56);
                              *(v19 + 160) = v57;
                              if (v57)
                              {
                                *(v19 + 152) = 0;
                                *(v19 + 144) = v56;
                                *(v19 + 148) = 0;
                                if (v56)
                                {
                                  v58 = 0;
                                  v59 = 0;
                                  while (1)
                                  {
                                    v60 = *(v19 + 96) + v58;
                                    if ((sub_1000F913C(v60 + 16) & 0x80000000) != 0)
                                    {
                                      v22 = "SemInit";
                                      v23 = 729;
                                      goto LABEL_23;
                                    }

                                    *(v60 + 8) = v19;
                                    *(v60 + 136) = v59;
                                    if (*(v19 + 148) >= *(v19 + 144))
                                    {
                                      v22 = "LocalArrayPush";
                                      v23 = 732;
                                      goto LABEL_23;
                                    }

                                    v61 = *(v19 + 156);
                                    *(*(v19 + 160) + 4 * v61) = v59;
                                    v62 = *(v19 + 148);
                                    v63 = v61 + 1 == *(v19 + 144) ? 0 : v61 + 1;
                                    *(v19 + 156) = v63;
                                    *(v19 + 148) = v62 + 1;
                                    if ((sub_1000E766C(v60, sub_1000F9188, v60, 0) & 0x80000000) != 0)
                                    {
                                      break;
                                    }

                                    ++v59;
                                    v58 += 160;
                                    if (v59 >= *(v19 + 88))
                                    {
                                      goto LABEL_68;
                                    }
                                  }

                                  v22 = "Worker thread creation";
                                  v23 = 733;
                                }

                                else
                                {
LABEL_68:
                                  if ((sub_1000E766C((v19 + 136), sub_1000F92DC, v19, 0) & 0x80000000) == 0)
                                  {
                                    v17[2] = sub_1000F99E8;
                                    v17[4] = sub_1000F9A04;
                                    v17[6] = sub_1000F9D38;
                                    v17[7] = sub_1000F9D84;
                                    *v17 = v19;
                                    v17[1] = sub_1000F84E4;
                                    return v17;
                                  }

                                  v22 = "Stream thread creation";
                                  v23 = 737;
                                }
                              }

                              else
                              {
                                v22 = "LocalArrayInit";
                                v23 = 725;
                              }

                              goto LABEL_23;
                            }
                          }

                          else
                          {
                            *__error() = 12;
                            *(v19 + 96) = 0;
                          }

                          v24 = *__error();
                          v22 = "malloc";
                          v23 = 724;
                          goto LABEL_24;
                        }

                        v52 = 0;
                        v53 = 16;
                        while (1)
                        {
                          if ((sub_1000F913C(*(v19 + 128) + v53) & 0x80000000) != 0)
                          {
                            v22 = "SemInit";
                            v23 = 718;
                            goto LABEL_23;
                          }

                          if ((sub_1000F902C((v19 + 448), v52) & 0x80000000) != 0)
                          {
                            break;
                          }

                          ++v52;
                          v53 += 136;
                          if (v52 >= *(v19 + 120))
                          {
                            goto LABEL_52;
                          }
                        }

                        v22 = "SharedArrayPush";
                        v23 = 719;
                      }

                      else
                      {
                        v22 = "LocalArrayInit";
                        v23 = 714;
                      }

LABEL_23:
                      v24 = 0;
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                    *__error() = 12;
                    *(v19 + 128) = 0;
                  }

                  v24 = *__error();
                  v22 = "malloc";
                  v23 = 713;
                  goto LABEL_24;
                }
              }

              else
              {
                *__error() = 12;
                *(v19 + 64) = 0;
              }

              v24 = *__error();
              v22 = "malloc";
              v23 = 688;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }
      }

      v30 = "SharedArrayInit: malloc failed\n";
      v31 = 55;
      goto LABEL_22;
    }
  }

  v24 = *__error();
  v22 = "malloc";
  v23 = 650;
LABEL_24:
  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "AAGenericRandomAccessInputStreamOpen", v23, 33, v24, v22, v20, v21, v64);
  free(v17);
  sub_1000F84E4(v19);
  return 0;
}

uint64_t sub_1000F902C(unsigned int *a1, int a2)
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

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000F913C(uint64_t a1)
{
  *a1 = 0;
  if (pthread_mutex_init((a1 + 8), 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 72), 0))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t sub_1000F9188(uint64_t a1)
{
  v2 = 1;
  v3 = *(a1 + 8);
  while (1)
  {
    if (pthread_mutex_lock((a1 + 24)))
    {
      goto LABEL_7;
    }

    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 88), (a1 + 24)))
      {
        goto LABEL_7;
      }
    }

    *(a1 + 16) = v6 - 1;
    if (pthread_mutex_unlock((a1 + 24)))
    {
LABEL_7:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 365, 33, 0, "SemAcquire", v4, v5, v13);
      v2 = 0;
    }

    v7 = *(a1 + 144);
    if (v7 == -1)
    {
      return a1;
    }

    if (((*(v3 + 16))(*(v3 + 8), *(a1 + 136), v7, *(*(v3 + 112) + 32 * *(a1 + 152) + 16)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 374, 33, 0, "get block data", v8, v9, v13);
      v2 = 0;
    }

    *(a1 + 156) = v2;
    if ((sub_1000F9DA8(v3, -1, *(a1 + 136)) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "workerProc", 381, 33, 0, "send worker message", v10, v11, v13);
      v2 = 0;
    }
  }
}

uint64_t sub_1000F92DC(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    while (1)
    {
      if (pthread_mutex_lock((a1 + 336)))
      {
        v6 = 91;
        v7 = "SharedArrayPop: pthread_mutex_lock failed\n";
        goto LABEL_9;
      }

      while (1)
      {
        v8 = *(a1 + 320);
        if (v8)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 400), (a1 + 336)))
        {
          v6 = 94;
          v7 = "SharedArrayPop: pthread_cond_wait failed\n";
          goto LABEL_9;
        }
      }

      v9 = v8 - 1;
      *(a1 + 320) = v9;
      v10 = *(*(a1 + 328) + 4 * v9);
      if (!pthread_mutex_unlock((a1 + 336)))
      {
        break;
      }

      v6 = 98;
      v7 = "SharedArrayPop: pthread_mutex_unlock failed\n";
LABEL_9:
      sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v6, 0, v7, v3, v4, v5, v63);
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 186, 33, 0, "SharedArrayPop", v11, v12, v64);
      *(a1 + 576) = 1;
    }

    v13 = (*(a1 + 80) + 8 * v10);
    v15 = *v13;
    v14 = v13[1];
    if ((sub_1000F902C((a1 + 192), v10) & 0x80000000) != 0)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 192, 33, 0, "SharedArrayPush", v16, v17, v63);
      *(a1 + 576) = 1;
    }

    if ((v14 & v15) == 0xFFFFFFFF)
    {
      v18 = 1;
    }

    else
    {
      v18 = v2;
    }

    v65 = v18;
    v19 = v15;
    if (v14 != -1)
    {
      atomic_fetch_add_explicit((a1 + 600), 1uLL, memory_order_relaxed);
      v20 = *(a1 + 96) + 160 * v14;
      v21 = *(a1 + 112) + 32 * *(v20 + 152);
      if (*(v20 + 156))
      {
        atomic_fetch_add(v21, 1u);
        atomic_fetch_add((v21 + 4), 0xFFFFFFFF);
        *(v21 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        v22 = *(v20 + 152);
      }

      else
      {
        atomic_fetch_add((v21 + 4), 0xFFFFFFFF);
        *(v21 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
        *(v21 + 8) = -1;
        v22 = -3;
      }

      *(*(a1 + 64) + 4 * *(v20 + 144)) = v22;
      *(v20 + 144) = -1;
      *(v20 + 152) = -1;
      if (*(a1 + 148) >= *(a1 + 144))
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 242, 33, 0, "LocalArrayPush", v16, v17, v63);
        *(a1 + 576) = 1;
      }

      else
      {
        v23 = *(a1 + 156);
        *(*(a1 + 160) + 4 * v23) = v14;
        v24 = *(a1 + 148);
        if (v23 + 1 == *(a1 + 144))
        {
          v25 = 0;
        }

        else
        {
          v25 = v23 + 1;
        }

        *(a1 + 156) = v25;
        *(a1 + 148) = v24 + 1;
      }
    }

    v26 = *(a1 + 172);
    if (v19 == -1)
    {
      goto LABEL_30;
    }

    atomic_fetch_add_explicit((a1 + 608), 1uLL, memory_order_relaxed);
    v27 = *(a1 + 168);
    if (v26 < v27)
    {
      if (*(a1 + 176))
      {
        v27 = *(a1 + 176);
      }

      v28 = v27 - 1;
      *(*(a1 + 184) + 4 * v28) = v19;
      v26 = *(a1 + 172) + 1;
      *(a1 + 172) = v26;
      *(a1 + 176) = v28;
LABEL_30:
      if (v26)
      {
        goto LABEL_33;
      }

      goto LABEL_96;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 254, 33, 0, "LocalArrayEnqueue", v16, v17, v63);
    *(a1 + 576) = 1;
    v26 = *(a1 + 172);
    if (v26)
    {
LABEL_33:
      v29 = 0;
      while (1)
      {
        v30 = *(a1 + 172);
        if (v30)
        {
          v31 = *(a1 + 180);
          if (!v31)
          {
            v31 = *(a1 + 168);
          }

          v32 = v31 - 1;
          v33 = *(*(a1 + 184) + 4 * (v31 - 1));
          *(a1 + 180) = v32;
          *(a1 + 172) = v30 - 1;
        }

        else
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 262, 33, 0, "LocalArrayDequeue", v16, v17, v63);
          *(a1 + 576) = 1;
          v33 = -1;
        }

        v34 = *(a1 + 128) + 136 * v33;
        if (v65)
        {
          break;
        }

        v36 = *(*(a1 + 64) + 4 * *v34);
        if (v36 < *(a1 + 104))
        {
          *(v34 + 8) = v36;
          v37 = *(a1 + 112) + 32 * v36;
          atomic_fetch_add(v37, 1u);
          *(v37 + 24) = atomic_fetch_add((a1 + 592), 1uLL);
          if (!pthread_mutex_lock((v34 + 24)))
          {
            v38 = *(v34 + 16);
            *(v34 + 16) = v38 + 1;
            if ((v38 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
            {
              goto LABEL_81;
            }
          }

          v42 = 292;
          goto LABEL_79;
        }

        if (v36 == -3)
        {
          *(v34 + 8) = -1;
          if (!pthread_mutex_lock((v34 + 24)))
          {
            v39 = *(v34 + 16);
            *(v34 + 16) = v39 + 1;
            if ((v39 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
            {
              goto LABEL_81;
            }
          }

          v42 = 303;
          goto LABEL_79;
        }

        v40 = *(a1 + 168);
        if (*(a1 + 172) >= v40)
        {
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", 308, 33, 0, "LocalArrayEnqueue", v16, v17, v63);
          *(a1 + 576) = 1;
        }

        else
        {
          if (*(a1 + 176))
          {
            v40 = *(a1 + 176);
          }

          v41 = v40 - 1;
          *(*(a1 + 184) + 4 * v41) = v33;
          ++*(a1 + 172);
          *(a1 + 176) = v41;
        }

        if (v36 == -1 && *(a1 + 148))
        {
          v43 = *v34;
          if (*(a1 + 56) <= *v34)
          {
            v54 = 149;
            v55 = "Invalid block_id, or no workers available";
            goto LABEL_95;
          }

          while (!*(a1 + 104))
          {
            v47 = -1;
LABEL_73:
            v45 = v47;
            v51 = *(a1 + 112) + 32 * v47;
            v52 = 1;
            atomic_compare_exchange_strong(v51, &v52, 0);
            if (v52 == 1)
            {
              *(*(a1 + 64) + 4 * *(v51 + 8)) = -1;
              *(v51 + 8) = -1;
              goto LABEL_85;
            }
          }

          v44 = 0;
          v45 = 0;
          v46 = -1;
          v47 = -1;
          while (1)
          {
            v48 = *(a1 + 112);
            if (!atomic_load((v48 + v44 + 4)))
            {
              if (*(v48 + v44 + 8) == -1)
              {
                v51 = v48 + v44;
                v47 = v45;
LABEL_85:
                atomic_fetch_add((v51 + 4), 1u);
                *(*(a1 + 112) + 32 * v45 + 8) = v43;
                v56 = *(a1 + 148);
                if (v56)
                {
                  v57 = *(a1 + 156);
                  if (!v57)
                  {
                    v57 = *(a1 + 144);
                  }

                  v58 = v57 - 1;
                  v59 = *(*(a1 + 160) + 4 * v58);
                  *(a1 + 156) = v58;
                  *(a1 + 148) = v56 - 1;
                  v60 = *(a1 + 96) + 160 * v59;
                  *(v60 + 144) = v43;
                  *(v60 + 152) = v47;
                  *(*(a1 + 64) + 4 * v43) = -2;
                  if (!pthread_mutex_lock((v60 + 24)))
                  {
                    v61 = *(v60 + 16);
                    *(v60 + 16) = v61 + 1;
                    if ((v61 || !pthread_cond_broadcast((v60 + 88))) && !pthread_mutex_unlock((v60 + 24)))
                    {
                      break;
                    }
                  }

                  v54 = 167;
                  v55 = "SemRelease";
                }

                else
                {
                  v54 = 159;
                  v55 = "LocalArrayPop";
                }

LABEL_95:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "runWorker", v54, 33, 0, v55, v16, v17, v63);
                v42 = 313;
                v53 = "run worker";
LABEL_80:
                sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "streamProc", v42, 33, 0, v53, v16, v17, v63);
                *(a1 + 576) = 1;
                break;
              }

              v50 = *(v48 + v44 + 24);
              if (v50 < v46)
              {
                v46 = v50;
                v47 = v45;
              }
            }

            ++v45;
            v44 += 32;
            if (v45 >= *(a1 + 104))
            {
              goto LABEL_73;
            }
          }
        }

LABEL_81:
        if (++v29 == v26)
        {
          goto LABEL_96;
        }
      }

      *(v34 + 8) = -1;
      if (!pthread_mutex_lock((v34 + 24)))
      {
        v35 = *(v34 + 16);
        *(v34 + 16) = v35 + 1;
        if ((v35 || !pthread_cond_broadcast((v34 + 88))) && !pthread_mutex_unlock((v34 + 24)))
        {
          goto LABEL_81;
        }
      }

      v42 = 272;
LABEL_79:
      v53 = "SemRelease";
      goto LABEL_80;
    }

LABEL_96:
    v2 = 0;
    if (v65)
    {
      v2 = v65;
      if (*(a1 + 148) == *(a1 + 88))
      {
        return a1;
      }
    }
  }
}

uint64_t sub_1000F99E8(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  else
  {
    return sub_1000F9A04(a1, a2, a3, atomic_fetch_add((a1 + 584), a3));
  }
}

uint64_t sub_1000F9A04(uint64_t a1, char *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 576))
  {
    return -1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = a4 + a3;
    if (a4 + a3 >= *(a1 + 40))
    {
      v7 = *(a1 + 40);
    }

    if (__CFADD__(a4, a3))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = v7;
    }

    if (v8 > a4)
    {
      v9 = a4 / *(a1 + 48);
      if (v9 < *(a1 + 56))
      {
        v4 = 0;
        v11 = (a1 + 448);
        while (1)
        {
          v12 = *(a1 + 48);
          if (pthread_mutex_lock((a1 + 464)))
          {
            v30 = "SharedArrayPop: pthread_mutex_lock failed\n";
            v31 = 91;
LABEL_38:
            sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v31, 0, v30, v13, v14, v15, v34);
            v32 = "SharedArrayPop";
            v33 = 395;
            goto LABEL_39;
          }

          while (!*v11)
          {
            if (pthread_cond_wait((a1 + 528), (a1 + 464)))
            {
              v30 = "SharedArrayPop: pthread_cond_wait failed\n";
              v31 = 94;
              goto LABEL_38;
            }
          }

          v16 = *v11 - 1;
          *(a1 + 448) = v16;
          v17 = *(*(a1 + 456) + 4 * v16);
          if (pthread_mutex_unlock((a1 + 464)))
          {
            v30 = "SharedArrayPop: pthread_mutex_unlock failed\n";
            v31 = 98;
            goto LABEL_38;
          }

          v18 = *(a1 + 128) + 136 * v17;
          *v18 = v9;
          *(v18 + 8) = -1;
          if ((sub_1000F9DA8(a1, v17, -1) & 0x80000000) != 0)
          {
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 404, 33, 0, "send request", v19, v20, v34);
            v35 = 0;
          }

          else
          {
            v35 = 1;
          }

          if (pthread_mutex_lock((v18 + 24)))
          {
            goto LABEL_26;
          }

          while (1)
          {
            v23 = *(v18 + 16);
            if (v23 > 0)
            {
              break;
            }

            if (pthread_cond_wait((v18 + 88), (v18 + 24)))
            {
              goto LABEL_26;
            }
          }

          *(v18 + 16) = v23 - 1;
          if (pthread_mutex_unlock((v18 + 24)))
          {
LABEL_26:
            sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", 410, 33, 0, "SemAcquire", v21, v22, v34);
            v35 = 0;
          }

          v24 = *(v18 + 8);
          if ((sub_1000F902C((a1 + 448), v17) & 0x80000000) != 0)
          {
            break;
          }

          if (!v35 || v24 == -1)
          {
            goto LABEL_40;
          }

          v27 = v9 * v12;
          v36 = v9 * v12 + v12;
          if (v36 >= v8)
          {
            v28 = v8;
          }

          else
          {
            v28 = v9 * v12 + v12;
          }

          memcpy(a2, (*(*(a1 + 112) + 32 * v24 + 16) + v5 - v27), v28 - v5);
          v4 += v28 - v5;
          atomic_fetch_add((*(a1 + 112) + 32 * v24), 0xFFFFFFFF);
          if (v36 < v8)
          {
            a2 += v28 - v5;
            ++v9;
            v5 = v28;
            if (v9 < *(a1 + 56))
            {
              continue;
            }
          }

          return v4;
        }

        v32 = "SharedArrayPush";
        v33 = 418;
LABEL_39:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "acquireCachedBlock", v33, 33, 0, v32, v25, v26, v34);
LABEL_40:
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "graisPRead", 464, 33, 0, "acquire segment in cache", v25, v26, v34);
        return -1;
      }
    }

    return 0;
  }

  return -1;
}

uint64_t sub_1000F9D38(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 576))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        a2 += atomic_fetch_add((a1 + 584), a2);
        return a2;
      }

      if (a3 != 2)
      {
        return -1;
      }

      a2 += *(a1 + 40);
    }

    atomic_store(a2, (a1 + 584));
    return a2;
  }

  return -1;
}

uint64_t sub_1000F9D84(uint64_t result)
{
  if (!*(result + 576))
  {
    *(result + 576) = 1;
    v1 = *(result + 24);
    if (v1)
    {
      return v1(*(result + 8));
    }
  }

  return result;
}

uint64_t sub_1000F9DA8(uint64_t a1, int a2, int a3)
{
  if (pthread_mutex_lock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_lock failed\n";
    v10 = 91;
LABEL_8:
    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v10, 0, v9, v6, v7, v8, v20);
    v16 = "SharedArrayPop";
    v17 = 339;
    goto LABEL_9;
  }

  while (1)
  {
    v11 = *(a1 + 192);
    if (v11)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 272), (a1 + 208)))
    {
      v9 = "SharedArrayPop: pthread_cond_wait failed\n";
      v10 = 94;
      goto LABEL_8;
    }
  }

  v12 = v11 - 1;
  *(a1 + 192) = v12;
  v13 = *(*(a1 + 200) + 4 * v12);
  if (pthread_mutex_unlock((a1 + 208)))
  {
    v9 = "SharedArrayPop: pthread_mutex_unlock failed\n";
    v10 = 98;
    goto LABEL_8;
  }

  v19 = (*(a1 + 80) + 8 * v13);
  *v19 = a2;
  v19[1] = a3;
  if ((sub_1000F902C((a1 + 320), v13) & 0x80000000) != 0)
  {
    v16 = "SharedArrayPush";
    v17 = 347;
LABEL_9:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAGenericRandomAccessInputStream.c", "sendMessage", v17, 33, 0, v16, v14, v15, v20);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

char *sub_1000F9EEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v9 = getpagesize();
    if (v9 <= 0x197)
    {
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size", v10, v11, v39);
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
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v24, "malloc", v25, v26, v39);
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
                  if ((sub_1000FA288(v12 + 32, v37) & 0x80000000) != 0)
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

          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v36, 0, v35, v32, v33, v34, v39);
          v29 = "SharedArrayInit";
          v30 = 270;
LABEL_19:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", v30, 73, 0, v29, v27, v28, v39);
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

    sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v23, 0, v22, v19, v20, v21, v39);
    v29 = "SharedArrayInit";
    v30 = 269;
    goto LABEL_19;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu", a7, a8, a1);
  return 0;
}

uint64_t sub_1000FA288(unsigned int *a1, int a2)
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

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPush", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

void sub_1000FA398(uint64_t a1)
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

uint64_t sub_1000FA42C(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferFillFromStream", v12, 73, 0, v11, a7, a8, v38);
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
              sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v36, 0, v35, v19, v20, v21, v38);
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
          if (v34 == v30[1] && (sub_1000FA6F0(a1) & 0x80000000) != 0)
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

        if ((sub_1000FA66C(a1) & 0x80000000) == 0)
        {
LABEL_31:
          if ((sub_1000FA6F0(a1) & 0x80000000) == 0)
          {
            return v16;
          }
        }
      }

LABEL_26:
      sub_1000FA760(a1, v25, v26, v27, v28, v19, v20, v21, v38);
    }
  }

  return -1;
}

uint64_t sub_1000FA66C(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 392), &v1, 1u);
  if (v1)
  {
    return 0;
  }

  if ((sub_1000FA6F0(a1) & 0x80000000) == 0)
  {
    if ((sub_1000FAA6C(a1, -2) & 0x80000000) == 0)
    {
      return 0;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "sendEOF", 351, 73, 0, "SharedArrayEnqueue", v3, v4, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FA6F0(unsigned int *a1)
{
  v2 = a1[96];
  a1[96] = -1;
  if (v2 > 3)
  {
    return 0;
  }

  if ((sub_1000FAA6C(a1, v2) & 0x80000000) == 0)
  {
    return 0;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "currentWriteBufferFull", 324, 73, 0, "SharedArrayEnqueue", v4, v5, v1);
  return 0xFFFFFFFFLL;
}

size_t sub_1000FA760(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v9 = result;
    v10 = 0;
    atomic_compare_exchange_strong((result + 400), &v10, 1u);
    if (!v10)
    {
      if ((sub_1000FA288((result + 128), -1) & 0x80000000) != 0)
      {
        sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 500, 73, 0, "SharedArrayPush", v11, v12, v15);
      }

      result = sub_1000FAA6C(v9, -1);
      if ((result & 0x80000000) != 0)
      {

        return sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferAbort", 501, 73, 0, "SharedArrayPush", v13, v14, a9);
      }
    }
  }

  return result;
}

uint64_t sub_1000FA824(size_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
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
          sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayPop", v32, 0, v31, v13, v14, v15, v37);
          v33 = "SharedBufferFlushToStream";
          v34 = "SharedArrayDequeue";
          v35 = 448;
LABEL_27:
          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", v33, v35, 73, 0, v34, v25, v26, v37);
LABEL_28:
          sub_1000FA760(a1, v17, v18, v19, v20, v13, v14, v15, v37);
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
        if (v30 <= 3 && (sub_1000FA288((a1 + 128), v30) & 0x80000000) != 0)
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

uint64_t sub_1000FAA6C(unsigned int *a1, int a2)
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

  sub_1000E3FC4("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FAB94(size_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  if (!a3)
  {
    return sub_1000FA66C(a1);
  }

  v10 = a2;
  return sub_1000FA42C(a1, a3, sub_1000FABF4, &v10, a5, a6, a7, a8);
}

size_t sub_1000FABF4(const void **a1, void *__dst, size_t a3)
{
  memcpy(__dst, *a1, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_1000FAC38(size_t a1, uint64_t a2, unint64_t a3)
{
  if (atomic_load((a1 + 400)))
  {
    return -1;
  }

  v7[1] = v3;
  v7[2] = v4;
  v7[0] = a2;
  return sub_1000FA824(a1, a3, sub_1000FAC8C, v7);
}

size_t sub_1000FAC8C(void **a1, const void *a2, size_t a3)
{
  memcpy(*a1, a2, a3);
  *a1 = *a1 + a3;
  return a3;
}

uint64_t sub_1000FACD4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 6)
  {
    *a1 = a2;
    *(a1 + 12) = 2;
    *(a1 + 48) = 32;
    *(a1 + 56) = 1;
    *(a1 + 16) = 0x10000100000;
    *(a1 + 24) = 2049;
    if (a2)
    {
      v8 = 0;
      if (a2 == 5)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      v8 = 0;
      *(a1 + 56) = 0;
    }
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithProfile", 31, 79, 0, "Invalid profile: %u", a7, a8, a2);
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t sub_1000FAD8C(int a1)
{
  if (a1 == 2)
  {
    return 32;
  }

  else
  {
    return 8 * (a1 == 1);
  }
}

uint64_t sub_1000FADA8(int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == 826361153)
  {
    v10 = a2[2];
    if (v10 < 0x4000001)
    {
      v11 = a2[1];
      if ((v11 & 0xFFFFFF) < 6)
      {
        v12 = 0;
        *a1 = v11 & 0xFFFFFF;
        a1[1] = v10;
        a1[2] = HIBYTE(v11);
        return v12;
      }

      v14 = a2[1];
      v8 = "Invalid profile: %u";
      v9 = 57;
    }

    else
    {
      v8 = "Invalid AEA container (auth_data_size)";
      v9 = 55;
    }
  }

  else
  {
    v8 = "Invalid magic bytes";
    v9 = 54;
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", v9, 79, 0, v8, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FAE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 25);
  if (v8 > 2)
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 74, 79, 0, "Invalid checksum in root header: %u", a7, a8, *(a2 + 25));
    return 0xFFFFFFFFLL;
  }

  *(a1 + 12) = v8;
  if (v8 == 2)
  {
    v9 = 32;
  }

  else
  {
    v9 = 8 * (v8 == 1);
  }

  *(a1 + 48) = v9;
  v10 = *(a2 + 24);
  if (v10 <= 0x64)
  {
    switch(v10)
    {
      case '-':
        v11 = 0;
        break;
      case '4':
        v11 = 256;
        break;
      case 'b':
        v11 = 1794;
        break;
      default:
        goto LABEL_19;
    }
  }

  else if (*(a2 + 24) > 0x77u)
  {
    if (v10 == 120)
    {
      v11 = 774;
    }

    else
    {
      if (v10 != 122)
      {
        goto LABEL_19;
      }

      v11 = 1285;
    }
  }

  else
  {
    if (v10 != 101)
    {
      if (v10 == 102)
      {
        v11 = 2304;
        goto LABEL_23;
      }

LABEL_19:
      sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 81, 79, 0, "Invalid compression algorithm key in root header: %u", a7, a8, *(a2 + 24));
      return 0xFFFFFFFFLL;
    }

    v11 = 2049;
  }

LABEL_23:
  *(a1 + 24) = v11;
  v12 = *(a2 + 16);
  if ((v12 - 268435457) > 0xF0003FFE)
  {
    *(a1 + 16) = v12;
    v13 = *(a2 + 20);
    if ((v13 - 262145) > 0xFFFC001E)
    {
      v14 = 0;
      *(a1 + 20) = v13;
      *(a1 + 32) = *a2;
      return v14;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 89, 79, 0, "Invalid segments per cluster count in root header: %u", a7, a8, *(a2 + 20));
  }

  else
  {
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 85, 79, 0, "Invalid segment size in root header: %u", a7, a8, *(a2 + 16));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FB054(_DWORD *a1, _DWORD *a2)
{
  *a1 = 826361153;
  v2 = a2[1];
  a1[1] = *a2 & 0xFFFFFF | (a2[2] << 24);
  a1[2] = v2;
  return 0;
}

uint64_t sub_1000FB078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 24);
  if (v9 <= 1284)
  {
    switch(v9)
    {
      case 0:
        v10 = 45;
        goto LABEL_18;
      case 256:
        v10 = 52;
        goto LABEL_18;
      case 774:
        v10 = 120;
        goto LABEL_18;
    }
  }

  else if (v9 > 2048)
  {
    if (v9 == 2049)
    {
      v10 = 101;
      goto LABEL_18;
    }

    if (v9 == 2304)
    {
      v10 = 102;
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 == 1285)
    {
      v10 = 122;
      goto LABEL_18;
    }

    if (v9 == 1794)
    {
      v10 = 98;
LABEL_18:
      v11 = 0;
      *(a1 + 25) = *(a2 + 12);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v10;
      *a1 = *(a2 + 32);
      return v11;
    }
  }

  sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaRootHeaderInit", 117, 79, 0, "Invalid compression algorithm in context", a7, a8, v8);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1000FB160(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[5];
  *a1 = xmmword_10037C1C0;
  v4 = a2[1] + 12;
  v5 = a3[12];
  v6 = v4 + a3[11];
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  v7 = v6 + v5;
  v8 = a3[3];
  v9 = v7 + a3[2];
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  v10 = v9 + v8;
  v11 = v9 + v8 + 48;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v11 + v8;
  *(a1 + 72) = 0;
  v12 = (a2[12] + 8) * v3;
  *(a1 + 80) = v12;
  *(a1 + 88) = v12 + v8;
  *(a1 + 96) = v12 + v8 + v8 * v3;
  return 0;
}

uint64_t sub_1000FB1CC(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = a4;
    v10 = a3;
    if (a2 == 2)
    {
      memset(&v20, 0, sizeof(v20));
      CC_SHA256_Init(&v20);
      CC_SHA256_Update(&v20, v10, v9);
      CC_SHA256_Final((a1 + 4), &v20);
      *a1 = 32;
      v16 = (a1 + 36);
      v17 = 224;
      v18 = 224;
LABEL_14:
      memset_s(v16, v17, 0, v18);
      return 0;
    }

    if (a2 == 1)
    {
      v11 = (0xC6A4A7935BD1E995 * a4) ^ 0xE2236FDC26A5F6D2;
      v12 = a3 + a4;
      if (a4 >= 16)
      {
        do
        {
          v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v10) ^ ((0xC6A4A7935BD1E995 * *v10) >> 47))) ^ v11)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v10[1]) ^ ((0xC6A4A7935BD1E995 * v10[1]) >> 47))));
          v13 = v10 + 2;
          v14 = v10 + 4;
          v10 += 2;
        }

        while (v14 <= v12);
      }

      else
      {
        v13 = a3;
      }

      if ((v13 + 1) <= v12)
      {
        do
        {
          v11 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *v13) ^ ((0xC6A4A7935BD1E995 * *v13) >> 47))) ^ v11);
          v15 = (v13 + 2) > v12;
          ++v13;
        }

        while (!v15);
      }

      if ((a4 & 7) != 0)
      {
        *v20.count = 0;
        __memcpy_chk();
        v11 *= 0xC6A4A7935BD1E995;
      }

      *(a1 + 4) = (0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v11 ^ (v11 >> 47))) >> 47);
      *a1 = 8;
      v16 = (a1 + 12);
      v17 = 248;
      v18 = 248;
      goto LABEL_14;
    }

    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaChecksum", 228, 79, 0, "Invalid checksum mode", a7, a8, v20.count[0]);
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1000FB3BC(uint64_t result)
{
  if (result == 256)
  {
    return 257;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000FB3CC(unsigned int *a1, int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10, uint64_t (*a11)(uint64_t, void, char *, __int128 *, unsigned int *, void), uint64_t a12)
{
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v16 = *a2;
  v17 = *a2 & 0xFFFFFF | (a2[2] << 24);
  if (*a2 > 2)
  {
    if ((v16 - 3) >= 2)
    {
      if (v16 != 5)
      {
        goto LABEL_68;
      }

      v119 = 0;
      v118 = 0uLL;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0;
      v101 = 0uLL;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      *__n = 0uLL;
      v85 = 0;
      v84 = 0uLL;
      v83 = 0uLL;
      v82 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      *v69 = 0uLL;
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v66 = 0;
      memset(v65, 0, sizeof(v65));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a5 >= 0x14u)
        {
          if (*a10 == a1[2])
          {
            WORD2(__n[1]) = 21584;
            *(__n + 4) = *"AEA_SCRYPT";
            LODWORD(__n[0]) = 10;
            memset_s((__n | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&v103, 2 * a1[2], a10, __n, v69);
            if ((result & 0x80000000) != 0)
            {
              v36 = -4;
            }

            else
            {
              v51 = a1[2];
              if (v51 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v67[0]) = v51;
              result = memset_s(v67 + v51 + 4, 256 - v51, 0, 256 - v51);
              v52 = a1[2];
              if (v52 >= 0x101)
              {
                goto LABEL_139;
              }

              __memcpy_chk();
              LODWORD(v65[0]) = v52;
              memset_s(v65 + v52 + 4, 256 - v52, 0, 256 - v52);
              memset_s(&v103, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&v103, a5 + 1, *a5, a1[14], v67) & 0x80000000) != 0)
              {
                v36 = -5;
              }

              else
              {
                memset(v134, 0, sizeof(v134));
                v133 = 0u;
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                *&__s[8] = 0u;
                if (v103 == *a1)
                {
                  if (LODWORD(v65[0]) == a1[2])
                  {
                    if (LODWORD(v69[0]) == a1[5])
                    {
                      if (*a7 == a1[8])
                      {
                        *&__s[7] = 1263354207;
                        *__s = 0x5F41454100000007;
                        result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                        v53 = *__s;
                        if (*__s >= 0xFDu)
                        {
                          goto LABEL_139;
                        }

                        *&__s[*__s + 4] = v17;
                        *__s = v53 + 4;
                        result = memset_s(&__s[v53 + 8], 252 - v53, 0, 252 - v53);
                        v54 = *__s + LODWORD(v69[0]);
                        if (v54 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v69 + 4, LODWORD(v69[0]));
                        *__s = v54;
                        result = memset_s(&__s[v54 + 4], 256 - v54, 0, 256 - v54);
                        v55 = *__s + LODWORD(v69[0]);
                        if (v55 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v69 + 4, LODWORD(v69[0]));
                        *__s = v55;
                        result = memset_s(&__s[v55 + 4], 256 - v55, 0, 256 - v55);
                        v56 = *a7;
                        v57 = *__s + v56;
                        if (v57 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], a7 + 1, v56);
                        *__s = v57;
                        memset_s(&__s[v57 + 4], 256 - v57, 0, 256 - v57);
                        v58 = *(a1 + 9);
                        v59 = -1;
                        if (v58 && v103)
                        {
                          v59 = v58(a3, *a1, &v103, __s, v65);
                        }

                        if (*a3 == *a1)
                        {
                          v36 = v59;
                        }

                        else
                        {
                          v36 = -1006;
                        }

                        memset_s(__s, 0x104uLL, 0, 0x104uLL);
                        if (v36)
                        {
                          memset_s(a3, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v36 = -1005;
                      }
                    }

                    else
                    {
                      v36 = -1003;
                    }
                  }

                  else
                  {
                    v36 = -1002;
                  }
                }

                else
                {
                  v36 = -1001;
                }
              }
            }
          }

          else
          {
            v36 = -3;
          }
        }

        else
        {
          v36 = -2;
        }
      }

      else
      {
        v36 = -1;
      }

      memset_s(&v103, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v67, 0x104uLL, 0, 0x104uLL);
      v49 = v65;
    }

    else
    {
      if (a11 && *a8)
      {
        *&v103 = 0;
        v27 = a6 + 1;
        result = a11(a12, a1[6], v63 + 4, &v103, a6 + 1, *a6);
        if ((result & 0x80000000) != 0)
        {
          v47 = "DH callback";
          v48 = 321;
          goto LABEL_78;
        }

        if (v103 != a1[6])
        {
          v47 = "DH callback returning invalid shared secret size";
          v48 = 322;
          goto LABEL_78;
        }

        if (v103 >= 0x101)
        {
          goto LABEL_139;
        }

        LODWORD(v63[0]) = v103;
        memset_s(v63 + v103 + 4, 256 - v103, 0, 256 - v103);
        memset(v134, 0, sizeof(v134));
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        v122 = 0u;
        v121 = 0u;
        *&__s[8] = 0u;
        if (LODWORD(v63[0]) == *a1)
        {
          if (*a10 == a1[2])
          {
            if (*a6 == a1[5])
            {
              if (*a8 != *a6)
              {
                v36 = -1004;
                goto LABEL_75;
              }

              if (*a7 == a1[8])
              {
                *&__s[7] = 1263354207;
                *__s = 0x5F41454100000007;
                result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                v28 = *__s;
                if (*__s < 0xFDu)
                {
                  *&__s[*__s + 4] = v17;
                  *__s = v28 + 4;
                  result = memset_s(&__s[v28 + 8], 252 - v28, 0, 252 - v28);
                  v29 = *a6;
                  v30 = *__s + v29;
                  if (v30 < 0x101)
                  {
                    memcpy(&__s[*__s + 4], v27, v29);
                    *__s = v30;
                    result = memset_s(&__s[v30 + 4], 256 - v30, 0, 256 - v30);
                    v31 = *a8;
                    v32 = *__s + v31;
                    if (v32 < 0x101)
                    {
                      memcpy(&__s[*__s + 4], a8 + 1, v31);
                      *__s = v32;
                      result = memset_s(&__s[v32 + 4], 256 - v32, 0, 256 - v32);
                      v33 = *a7;
                      v34 = *__s + v33;
                      if (v34 < 0x101)
                      {
                        memcpy(&__s[*__s + 4], a7 + 1, v33);
                        *__s = v34;
                        memset_s(&__s[v34 + 4], 256 - v34, 0, 256 - v34);
                        v22 = *(a1 + 9);
                        v35 = -1;
                        if (!v22 || !LODWORD(v63[0]))
                        {
LABEL_118:
                          if (*a3 == *a1)
                          {
                            v36 = v35;
                          }

                          else
                          {
                            v36 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (!v36)
                          {
                            goto LABEL_75;
                          }

                          v49 = a3;
                          goto LABEL_74;
                        }

                        v23 = *a1;
                        v25 = v63;
                        v24 = a3;
LABEL_115:
                        v35 = v22(v24, v23, v25, __s, a10);
                        goto LABEL_118;
                      }
                    }
                  }
                }

                goto LABEL_139;
              }

              goto LABEL_116;
            }

            goto LABEL_36;
          }

          goto LABEL_71;
        }

LABEL_37:
        v36 = -1001;
        goto LABEL_75;
      }

      v119 = 0;
      v118 = 0uLL;
      v117 = 0uLL;
      v116 = 0uLL;
      v115 = 0uLL;
      v114 = 0uLL;
      v113 = 0uLL;
      v112 = 0uLL;
      v111 = 0uLL;
      v110 = 0uLL;
      v109 = 0uLL;
      v108 = 0uLL;
      v107 = 0uLL;
      v106 = 0uLL;
      v105 = 0uLL;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0;
      v101 = 0uLL;
      v100 = 0uLL;
      v99 = 0uLL;
      v98 = 0uLL;
      v97 = 0uLL;
      v96 = 0uLL;
      v95 = 0uLL;
      v94 = 0uLL;
      v93 = 0uLL;
      v92 = 0uLL;
      v91 = 0uLL;
      v90 = 0uLL;
      v89 = 0uLL;
      v88 = 0uLL;
      v87 = 0uLL;
      *__n = 0uLL;
      if (*(a1 + 9) && (v38 = *(a1 + 14)) != 0 && *(a1 + 20))
      {
        if (*a6 == a1[5])
        {
          if (*a9 == a1[4])
          {
            if ((v38(&v103, a6, a9) & 0x80000000) != 0)
            {
              v36 = -4;
            }

            else if (v103 == a1[6])
            {
              if (((*(a1 + 20))(__n, a9) & 0x80000000) != 0)
              {
                v36 = -6;
              }

              else
              {
                memset(v134, 0, sizeof(v134));
                v133 = 0u;
                v132 = 0u;
                v131 = 0u;
                v130 = 0u;
                v129 = 0u;
                v128 = 0u;
                v127 = 0u;
                v126 = 0u;
                v125 = 0u;
                v124 = 0u;
                v123 = 0u;
                v122 = 0u;
                v121 = 0u;
                *&__s[8] = 0u;
                if (v103 == *a1)
                {
                  if (*a10 == a1[2])
                  {
                    if (*a6 == a1[5])
                    {
                      if (LODWORD(__n[0]) == *a6)
                      {
                        if (*a7 == a1[8])
                        {
                          *&__s[7] = 1263354207;
                          *__s = 0x5F41454100000007;
                          result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                          v39 = *__s;
                          if (*__s >= 0xFDu)
                          {
                            goto LABEL_139;
                          }

                          *&__s[*__s + 4] = v17;
                          *__s = v39 + 4;
                          result = memset_s(&__s[v39 + 8], 252 - v39, 0, 252 - v39);
                          v40 = *a6;
                          v41 = *__s + v40;
                          if (v41 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a6 + 1, v40);
                          *__s = v41;
                          result = memset_s(&__s[v41 + 4], 256 - v41, 0, 256 - v41);
                          v42 = *__s + LODWORD(__n[0]);
                          if (v42 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], __n + 4, LODWORD(__n[0]));
                          *__s = v42;
                          result = memset_s(&__s[v42 + 4], 256 - v42, 0, 256 - v42);
                          v43 = *a7;
                          v44 = *__s + v43;
                          if (v44 >= 0x101)
                          {
                            goto LABEL_139;
                          }

                          memcpy(&__s[*__s + 4], a7 + 1, v43);
                          *__s = v44;
                          memset_s(&__s[v44 + 4], 256 - v44, 0, 256 - v44);
                          v45 = *(a1 + 9);
                          v46 = -1;
                          if (v45 && v103)
                          {
                            v46 = v45(a3, *a1, &v103, __s, a10);
                          }

                          if (*a3 == *a1)
                          {
                            v36 = v46;
                          }

                          else
                          {
                            v36 = -1006;
                          }

                          memset_s(__s, 0x104uLL, 0, 0x104uLL);
                          if (v36)
                          {
                            memset_s(a3, 0x104uLL, 0, 0x104uLL);
                          }
                        }

                        else
                        {
                          v36 = -1005;
                        }
                      }

                      else
                      {
                        v36 = -1004;
                      }
                    }

                    else
                    {
                      v36 = -1003;
                    }
                  }

                  else
                  {
                    v36 = -1002;
                  }
                }

                else
                {
                  v36 = -1001;
                }
              }
            }

            else
            {
              v36 = -5;
            }
          }

          else
          {
            v36 = -3;
          }
        }

        else
        {
          v36 = -2;
        }
      }

      else
      {
        v36 = -1;
      }

      memset_s(&v103, 0x104uLL, 0, 0x104uLL);
      v49 = __n;
    }

LABEL_74:
    memset_s(v49, 0x104uLL, 0, 0x104uLL);
    goto LABEL_75;
  }

  if ((v16 - 1) < 2)
  {
    memset(v134, 0, sizeof(v134));
    v133 = 0uLL;
    v132 = 0uLL;
    v131 = 0uLL;
    v130 = 0uLL;
    v129 = 0uLL;
    v128 = 0uLL;
    v127 = 0uLL;
    v126 = 0uLL;
    v125 = 0uLL;
    v124 = 0uLL;
    v123 = 0uLL;
    v122 = 0uLL;
    v121 = 0uLL;
    *&__s[8] = 0uLL;
    if (*a4 == *a1)
    {
      if (*a10 == a1[2])
      {
        if (!a1[5])
        {
          if (*a7 == a1[8])
          {
            *&__s[7] = 1263354207;
            *__s = 0x5F41454100000007;
            memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
            *&__s[*__s + 4] = v17;
            *__s = 11;
            memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
            memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
            v20 = *a7;
            v21 = *__s + v20;
            if (v21 < 0x101)
            {
              memcpy(&__s[*__s + 4], a7 + 1, v20);
              *__s = v21;
              memset_s(&__s[v21 + 4], 256 - v21, 0, 256 - v21);
              v22 = *(a1 + 9);
              if (v22 && *a4)
              {
                v23 = *a1;
                v24 = a3;
                v25 = a4;
                goto LABEL_115;
              }

LABEL_117:
              v35 = -1;
              goto LABEL_118;
            }

            goto LABEL_139;
          }

LABEL_116:
          v36 = -1005;
          goto LABEL_75;
        }

        goto LABEL_36;
      }

LABEL_71:
      v36 = -1002;
      goto LABEL_75;
    }

    goto LABEL_37;
  }

  if (v16)
  {
LABEL_68:
    v47 = "Unsupported profile";
    v48 = 351;
    goto LABEL_78;
  }

  memset(v134, 0, sizeof(v134));
  v133 = 0uLL;
  v132 = 0uLL;
  v131 = 0uLL;
  v130 = 0uLL;
  v129 = 0uLL;
  v128 = 0uLL;
  v127 = 0uLL;
  v126 = 0uLL;
  v125 = 0uLL;
  v124 = 0uLL;
  v123 = 0uLL;
  v122 = 0uLL;
  v121 = 0uLL;
  *&__s[8] = 0uLL;
  if (*a6 != *a1)
  {
    goto LABEL_37;
  }

  if (*a10 != a1[2])
  {
    goto LABEL_71;
  }

  if (a1[5])
  {
LABEL_36:
    v36 = -1003;
LABEL_75:
    if ((v36 & 0x80000000) == 0)
    {
      v50 = 0;
LABEL_81:
      memset_s(v63, 0x104uLL, 0, 0x104uLL);
      return v50;
    }

    v62 = v36;
    v47 = "Main key derivation failed (%d)";
    v48 = 353;
LABEL_78:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", v48, 79, 0, v47, a7, a8, v62);
    if (a3)
    {
      memset_s(a3, 0x104uLL, 0, 0x104uLL);
    }

    v50 = 0xFFFFFFFFLL;
    goto LABEL_81;
  }

  if (*a7 != a1[8])
  {
    goto LABEL_116;
  }

  *&__s[7] = 1263354207;
  *__s = 0x5F41454100000007;
  memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
  *&__s[*__s + 4] = v17;
  *__s = 11;
  memset_s(&__s[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  result = memset_s(&__s[*__s + 4], 256 - *__s, 0, 256 - *__s);
  v60 = *a7;
  v61 = *__s + v60;
  if (v61 < 0x101)
  {
    memcpy(&__s[*__s + 4], a7 + 1, v60);
    *__s = v61;
    memset_s(&__s[v61 + 4], 256 - v61, 0, 256 - v61);
    v22 = *(a1 + 9);
    if (v22 && *a6)
    {
      v23 = *a1;
      v24 = a3;
      v25 = a6;
      goto LABEL_115;
    }

    goto LABEL_117;
  }

LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1000FC3DC(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, char *__s, _DWORD *a6, _DWORD *a7, unsigned int *a8, unsigned int *a9)
{
  v16 = *a2;
  v17 = a2[2];
  v18 = a1[2];
  if (__s)
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  if (v18 > 0x100 || (v19 = *(a1 + 8)) == 0 || (v19(__s + 4, v18) & 0x80000000) != 0)
  {
    v23 = "generating random salt";
    v24 = 380;
LABEL_13:
    sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", v24, 79, 0, v23, a7, a8, v62);
    return 0xFFFFFFFFLL;
  }

  v63 = a3;
  v20 = v16 & 0xFFFFFF | (v17 << 24);
  *__s = v18;
  v21 = *a2;
  if (*a2 > 2)
  {
    if ((v21 - 3) >= 2)
    {
      if (v21 != 5)
      {
LABEL_54:
        v23 = "Unsupported profile";
        v24 = 435;
        goto LABEL_13;
      }

      v104 = 0;
      v103 = 0u;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      __sa = 0u;
      v87 = 0;
      memset(v86, 0, sizeof(v86));
      v85 = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *__n = 0u;
      v70 = 0u;
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v66 = 0;
      memset(v65, 0, sizeof(v65));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a7 >= 0x14u)
        {
          if (v18 == a1[2])
          {
            WORD6(v86[0]) = 21584;
            *(v86 + 4) = *"AEA_SCRYPT";
            LODWORD(v86[0]) = 10;
            memset_s((v86 | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&__sa, 2 * a1[2], __s, v86, __n);
            if ((result & 0x80000000) != 0)
            {
              v22 = -4;
            }

            else
            {
              v46 = a1[2];
              if (v46 >= 0x101)
              {
                goto LABEL_119;
              }

              __memcpy_chk();
              LODWORD(v67[0]) = v46;
              result = memset_s(v67 + v46 + 4, 256 - v46, 0, 256 - v46);
              v47 = a1[2];
              if (v47 >= 0x101)
              {
                goto LABEL_119;
              }

              __memcpy_chk();
              LODWORD(v65[0]) = v47;
              memset_s(v65 + v47 + 4, 256 - v47, 0, 256 - v47);
              memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&__sa, a7 + 1, *a7, a1[14], v67) & 0x80000000) != 0)
              {
                v22 = -5;
              }

              else
              {
                memset(v119, 0, sizeof(v119));
                v118 = 0u;
                v117 = 0u;
                v116 = 0u;
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                *&v105[8] = 0u;
                if (__sa == *a1)
                {
                  if (LODWORD(v65[0]) == a1[2])
                  {
                    if (LODWORD(__n[0]) == a1[5])
                    {
                      if (*a8 == a1[8])
                      {
                        *&v105[7] = 1263354207;
                        *v105 = 0x5F41454100000007;
                        result = memset_s(&v105[11], 0xF9uLL, 0, 0xF9uLL);
                        v48 = *v105;
                        if (*v105 >= 0xFDu)
                        {
                          goto LABEL_119;
                        }

                        *&v105[*v105 + 4] = v20;
                        *v105 = v48 + 4;
                        result = memset_s(&v105[v48 + 8], 252 - v48, 0, 252 - v48);
                        v49 = *v105 + LODWORD(__n[0]);
                        if (v49 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], __n + 4, LODWORD(__n[0]));
                        *v105 = v49;
                        result = memset_s(&v105[v49 + 4], 256 - v49, 0, 256 - v49);
                        v50 = *v105 + LODWORD(__n[0]);
                        if (v50 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], __n + 4, LODWORD(__n[0]));
                        *v105 = v50;
                        result = memset_s(&v105[v50 + 4], 256 - v50, 0, 256 - v50);
                        v51 = *a8;
                        v52 = *v105 + v51;
                        if (v52 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], a8 + 1, v51);
                        *v105 = v52;
                        memset_s(&v105[v52 + 4], 256 - v52, 0, 256 - v52);
                        v53 = *(a1 + 9);
                        v54 = -1;
                        if (v53 && __sa)
                        {
                          v54 = v53(a3, *a1, &__sa, v105, v65);
                        }

                        if (*a3 == *a1)
                        {
                          v22 = v54;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v105, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v63, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1003;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }
            }
          }

          else
          {
            v22 = -3;
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
      memset_s(v86, 0x104uLL, 0, 0x104uLL);
      memset_s(v67, 0x104uLL, 0, 0x104uLL);
      p_sa = v65;
    }

    else
    {
      v104 = 0;
      v103 = 0u;
      v102 = 0u;
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
      v93 = 0u;
      v92 = 0u;
      v91 = 0u;
      v90 = 0u;
      v89 = 0u;
      __sa = 0u;
      if (*(a1 + 9) && (v26 = *(a1 + 13)) != 0)
      {
        if (*a9 == a1[5])
        {
          if ((v26(&__sa, a4, a9) & 0x80000000) != 0)
          {
            v22 = -3;
          }

          else
          {
            v27 = *a4;
            if (*a4 == a1[5])
            {
              if (__sa == a1[6])
              {
                memset(v119, 0, sizeof(v119));
                v118 = 0u;
                v117 = 0u;
                v116 = 0u;
                v115 = 0u;
                v114 = 0u;
                v113 = 0u;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                v109 = 0u;
                v108 = 0u;
                v107 = 0u;
                v106 = 0u;
                *&v105[8] = 0u;
                if (__sa == *a1)
                {
                  if (*__s == a1[2])
                  {
                    if (*a9 == v27)
                    {
                      if (*a8 == a1[8])
                      {
                        *&v105[7] = 1263354207;
                        *v105 = 0x5F41454100000007;
                        result = memset_s(&v105[11], 0xF9uLL, 0, 0xF9uLL);
                        v28 = *v105;
                        if (*v105 >= 0xFDu)
                        {
                          goto LABEL_119;
                        }

                        *&v105[*v105 + 4] = v20;
                        *v105 = v28 + 4;
                        result = memset_s(&v105[v28 + 8], 252 - v28, 0, 252 - v28);
                        v29 = *a4;
                        v30 = *v105 + v29;
                        if (v30 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], a4 + 1, v29);
                        *v105 = v30;
                        result = memset_s(&v105[v30 + 4], 256 - v30, 0, 256 - v30);
                        v31 = *a9;
                        v32 = *v105 + v31;
                        if (v32 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], a9 + 1, v31);
                        *v105 = v32;
                        result = memset_s(&v105[v32 + 4], 256 - v32, 0, 256 - v32);
                        v33 = *a8;
                        v34 = *v105 + v33;
                        if (v34 >= 0x101)
                        {
                          goto LABEL_119;
                        }

                        memcpy(&v105[*v105 + 4], a8 + 1, v33);
                        *v105 = v34;
                        memset_s(&v105[v34 + 4], 256 - v34, 0, 256 - v34);
                        v35 = *(a1 + 9);
                        v36 = -1;
                        if (v35 && __sa)
                        {
                          v36 = v35(a3, *a1, &__sa, v105, __s);
                        }

                        v60 = *a1;
                        v61 = a3;
                        if (*a3 == v60)
                        {
                          v22 = v36;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v105, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v61, 0x104uLL, 0, 0x104uLL);
                        }
                      }

                      else
                      {
                        v22 = -1005;
                      }
                    }

                    else
                    {
                      v22 = -1004;
                    }
                  }

                  else
                  {
                    v22 = -1002;
                  }
                }

                else
                {
                  v22 = -1001;
                }
              }

              else
              {
                v22 = -5;
              }
            }

            else
            {
              v22 = -4;
            }
          }
        }

        else
        {
          v22 = -2;
        }
      }

      else
      {
        v22 = -1;
      }

      p_sa = &__sa;
    }

LABEL_110:
    memset_s(p_sa, 0x104uLL, 0, 0x104uLL);
    goto LABEL_111;
  }

  if ((v21 - 1) < 2)
  {
    memset(v119, 0, sizeof(v119));
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    *&v105[8] = 0u;
    if (*a6 == *a1)
    {
      if (v18 == a1[2])
      {
        if (a1[5])
        {
LABEL_11:
          v22 = -1003;
LABEL_111:
          if ((v22 & 0x80000000) == 0)
          {
            return 0;
          }

          sub_1000E3EB8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 437, 79, 0, "Main key derivation failed (%d)", a7, a8, v22);
          return 0xFFFFFFFFLL;
        }

        if (*a8 == a1[8])
        {
          qmemcpy(&v105[4], "AEA_AMK", 7);
          memset_s(&v105[11], 0xF9uLL, 0, 0xF9uLL);
          *&v105[11] = v20;
          *v105 = 11;
          memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
          memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
          result = memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
          v55 = *a8;
          v56 = v55 + 11;
          if (v55 + 11 < 0x101)
          {
            memcpy(&v105[*v105 + 4], a8 + 1, v55);
            *v105 = v56;
            memset_s(&v105[v56 + 4], 256 - v56, 0, 256 - v56);
            v41 = *(a1 + 9);
            if (v41)
            {
              if (*a6)
              {
                v42 = *a1;
                v43 = a3;
                v44 = a6;
                goto LABEL_81;
              }

              goto LABEL_90;
            }

            goto LABEL_87;
          }

          goto LABEL_119;
        }

LABEL_84:
        v22 = -1005;
        goto LABEL_111;
      }

LABEL_58:
      v22 = -1002;
      goto LABEL_111;
    }

LABEL_53:
    v22 = -1001;
    goto LABEL_111;
  }

  if (v21)
  {
    goto LABEL_54;
  }

  v37 = a1[12];
  if (a4)
  {
    memset_s(a4, 0x104uLL, 0, 0x104uLL);
  }

  if (v37 > 0x100 || (v38 = *(a1 + 8)) == 0 || (v38(a4 + 1, v37) & 0x80000000) != 0)
  {
    v23 = "generating random encryption key";
    v24 = 390;
    goto LABEL_13;
  }

  *a4 = v37;
  memset(v119, 0, sizeof(v119));
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  *&v105[8] = 0u;
  if (v37 != *a1)
  {
    goto LABEL_53;
  }

  if (*__s != a1[2])
  {
    goto LABEL_58;
  }

  if (a1[5])
  {
    goto LABEL_11;
  }

  if (*a8 != a1[8])
  {
    goto LABEL_84;
  }

  qmemcpy(&v105[4], "AEA_AMK", 7);
  memset_s(&v105[11], 0xF9uLL, 0, 0xF9uLL);
  *&v105[11] = v20;
  *v105 = 11;
  memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
  result = memset_s(&v105[15], 0xF5uLL, 0, 0xF5uLL);
  v39 = *a8;
  v40 = v39 + 11;
  if (v39 + 11 < 0x101)
  {
    memcpy(&v105[*v105 + 4], a8 + 1, v39);
    *v105 = v40;
    memset_s(&v105[v40 + 4], 256 - v40, 0, 256 - v40);
    v41 = *(a1 + 9);
    if (v41)
    {
      if (*a4)
      {
        v42 = *a1;
        v43 = a3;
        v44 = a4;
LABEL_81:
        v57 = v41(v43, v42, v44, v105, __s);
LABEL_91:
        v58 = *a1;
        v59 = a3;
        if (*a3 == v58)
        {
          v22 = v57;
        }

        else
        {
          v22 = -1006;
        }

        memset_s(v105, 0x104uLL, 0, 0x104uLL);
        if (!v22)
        {
          goto LABEL_111;
        }

        p_sa = v59;
        goto LABEL_110;
      }

LABEL_90:
      v57 = -1;
      goto LABEL_91;
    }

LABEL_87:
    v57 = -1;
    goto LABEL_91;
  }

LABEL_119:
  __break(1u);
  return result;
}