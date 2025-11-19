int AEAAuthDataGetEntry(AEAAuthData auth_data, uint32_t i, size_t key_capacity, char *key, size_t *key_length, size_t data_capacity, uint8_t *data, size_t *data_size)
{
  if (*auth_data <= i)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 98, 95, 0, "invalid entry index %u", data, data_size, i);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataGetEntry", 109, 95, 0, "invalid auth_data blob", data, data_size, v17);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataAppendEntry", v14, 95, 0, v13, v9, v10, v43);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataSetEntry", v16, 95, 0, v15, v5, v6, v46);
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAAuthData.c", "AEAAuthDataRemoveEntry", 205, 95, 0, "invalid auth_data index %u", v2, v3, i);
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

uint64_t apfs_scan_diskimage(const char *a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3, uint64_t a4)
{
  v72 = *MEMORY[0x29EDCA608];
  memset(&v61, 0, sizeof(v61));
  if (snprintf(__str, 0x400uLL, "%s.json", a1) <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 110, 144, 0, "snprintf", v7, v8, v60);
    v12 = 0;
    v11 = 0;
    goto LABEL_71;
  }

  if (stat(__str, &v61) || (v61.st_mode & 0xF000) != 0x8000)
  {
    if (getenv("PC_APFS_DISKIMAGE_MAP") && (__strlcpy_chk(), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000 || (v30 = getenv("MASTERING_TOOLCHAIN_DIR")) != 0 && (snprintf(__str, 0x400uLL, "%s%s/%s", v30, "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000 || (snprintf(__str, 0x400uLL, "%s/%s", "/System/Library/Filesystems/apfs.fs/Contents/Resources", "apfs_diskimage_map"), !stat(__str, &v61)) && (v61.st_mode & 0xF000) == 0x8000)
    {
      v12 = malloc(0x40000uLL);
      if (v12)
      {
        v11 = AATempStreamOpen(0x800000uLL);
        if (v11)
        {
          snprintf(v70, 0x400uLL, "%s %s", __str, a1);
          v35 = popen(v70, "r");
          if (v35)
          {
            v36 = v35;
            while (!feof(v36))
            {
              v37 = fread(v12, 1uLL, 0x40000uLL, v36);
              if (ferror(v36))
              {
                v44 = "reading from tool pipe";
                v45 = 170;
LABEL_86:
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", v45, 144, 0, v44, v38, v39, v60);
                AAByteStreamClose(v11);
                pclose(v36);
LABEL_76:
                v46 = 0xFFFFFFFFLL;
                goto LABEL_77;
              }

              if (*(v11 + 3))
              {
                v40 = 0;
                if (v37)
                {
                  v41 = v12;
                  v42 = v37;
                  while (1)
                  {
                    v43 = (*(v11 + 3))(*v11, v41, v42);
                    if (v43 < 1)
                    {
                      break;
                    }

                    v41 += v43;
                    v40 += v43;
                    v42 -= v43;
                    if (!v42)
                    {
                      goto LABEL_68;
                    }
                  }

                  v40 = v43;
                }
              }

              else
              {
                v40 = -1;
              }

LABEL_68:
              if (v40 != v37)
              {
                v44 = "writing tool output";
                v45 = 172;
                goto LABEL_86;
              }
            }

            pclose(v36);
            AAByteStreamSeek(v11, 0, 0);
            goto LABEL_6;
          }

          v54 = *__error();
          v60 = v70;
          v52 = "%s";
          v53 = 164;
        }

        else
        {
          v52 = "temp stream open";
          v53 = 159;
          v54 = 0;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", v53, 144, v54, v52, v33, v34, v60);
LABEL_75:
        AAByteStreamClose(v11);
        goto LABEL_76;
      }

      v49 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 156, 144, *v49, "malloc", v50, v51, v60);
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 153, 144, 0, "could not locate the apfs diskimage map tool", v31, v32, v60);
      v12 = 0;
    }

    v11 = 0;
    goto LABEL_75;
  }

  v11 = AAFileStreamOpenWithPath(__str, 0, 0);
  if (!v11)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 114, 144, 0, "AAFileStreamOpenWithPath", v9, v10, v60);
    v12 = 0;
    goto LABEL_71;
  }

  v12 = 0;
LABEL_6:
  v68 = 0u;
  *v69 = 0u;
  __src = 0;
  v67 = 0;
  v13 = AAJSONInputStreamOpen(v11);
  if (!v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", 27, 144, 0, "AAJSONInputStreamOpen", v18, v19, v60);
    v55 = 0;
    goto LABEL_93;
  }

  v20 = v13;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *__s1 = 0u;
  if ((AAJSONInputStreamRead(v13, __s1, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v27 = v65;
    if (!v65)
    {
      AAJSONInputStreamClose(v20);
      v46 = 0;
      goto LABEL_72;
    }

    if (LODWORD(__s1[0]) < 2)
    {
      if (v65 <= 4)
      {
        if (v65 == 2)
        {
          if (strcmp(__s1[1], "volumes"))
          {
            v56 = "bad map";
            v57 = 41;
            goto LABEL_91;
          }
        }

        else if (v65 == 4 && strcmp(__s1[1], "files"))
        {
          v56 = "bad map";
          v57 = 42;
          goto LABEL_91;
        }
      }

      else
      {
        switch(v65)
        {
          case 5:
            v68 = 0u;
            *v69 = 0u;
            *&v69[2] = pc_array_init(16);
            break;
          case 6:
            if (strcmp(__s1[1], "extents"))
            {
              v56 = "bad map";
              v57 = 43;
              goto LABEL_91;
            }

            break;
          case 8:
            v56 = "bad map";
            v57 = 44;
            goto LABEL_91;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) == 2)
    {
      if (v65 == 4)
      {
        v69[1] = *(*&v69[2] - 64);
        if ((a2(&v68, a4) & 0x80000000) != 0)
        {
          v56 = "add_fork";
          v57 = 58;
          goto LABEL_91;
        }

        pc_array_free(*&v69[2]);
        *&v69[2] = 0;
        v27 = v65;
      }

      if (v27 == 6)
      {
        *&v69[2] = pc_array_append(*&v69[2], &__src, v21, v22, v23, v24, v25, v26);
        if (!*&v69[2])
        {
          v56 = "pc_array_append";
          v57 = 67;
          goto LABEL_91;
        }
      }

      goto LABEL_44;
    }

    if (LODWORD(__s1[0]) != 4)
    {
      goto LABEL_44;
    }

    if (v65 != 7)
    {
      break;
    }

    v29 = __s1[1];
    if (!strcmp(__s1[1], "offset"))
    {
      __src = *(&v63 + 1);
    }

    else
    {
      if (strcmp(v29, "length"))
      {
        v56 = "bad map";
        v57 = 83;
        goto LABEL_91;
      }

      v67 = *(&v63 + 1);
    }

LABEL_44:
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    *__s1 = 0u;
    if ((AAJSONInputStreamRead(v20, __s1, v21, v22, v23, v24, v25, v26) & 0x80000000) != 0)
    {
      goto LABEL_92;
    }
  }

  if (v65 != 5)
  {
    goto LABEL_44;
  }

  v28 = __s1[1];
  if (!strcmp(__s1[1], "compression"))
  {
    v69[0] = BYTE8(v63);
    goto LABEL_44;
  }

  if (!strcmp(v28, "uncompressed_size"))
  {
    *&v68 = *(&v63 + 1);
    goto LABEL_44;
  }

  if (!strcmp(v28, "size"))
  {
    *(&v68 + 1) = *(&v63 + 1);
    goto LABEL_44;
  }

  v56 = "bad map";
  v57 = 77;
LABEL_91:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "parseAPFSJSON", v57, 144, 0, v56, v25, v26, v60);
LABEL_92:
  v55 = v20;
LABEL_93:
  AAJSONInputStreamClose(v55);
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/APFS/APFS.c", "apfs_scan_diskimage", 181, 144, 0, "invalid image map JSON", v58, v59, v60);
LABEL_71:
  v46 = 0xFFFFFFFFLL;
LABEL_72:
  AAByteStreamClose(v11);
LABEL_77:
  free(v12);
  v47 = *MEMORY[0x29EDCA608];
  return v46;
}

uint64_t reStringAppend(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v8 = (a1 + 8);
  v9 = a3 + *(a1 + 16) + 16;
  if (v9 <= *(a1 + 8))
  {
    goto LABEL_5;
  }

  *(a1 + 8) = v9;
  if (v9 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_30:
    *a1 = 0;
    perror("malloc");
    *v8 = 0;
    v8[1] = 0;
    return 0xFFFFFFFFLL;
  }

  v10 = *a1;
  v11 = realloc(*a1, v9);
  if (!v11)
  {
    free(v10);
    goto LABEL_30;
  }

  *a1 = v11;
LABEL_5:
  v12 = "(^\\Q";
  if ((a4 & 4) == 0)
  {
    v12 = "(^";
  }

  v13 = "(\\Q";
  if ((a4 & 4) == 0)
  {
    v13 = "(";
  }

  if (a4)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = "\\E)";
  if ((a4 & 4) == 0)
  {
    v15 = ")";
  }

  v16 = "\\E/)";
  if ((a4 & 4) == 0)
  {
    v16 = "/)";
  }

  if ((a4 & 8) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if ((a4 & 4) != 0)
  {
    v18 = "\\E$)";
  }

  else
  {
    v18 = "$)";
  }

  v19 = *(a1 + 16);
  v20 = *a1;
  if ((a4 & 2) != 0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  if (v19)
  {
    *(a1 + 16) = v19 + 1;
    v20[v19] = 124;
    v20 = *a1;
    v19 = *(a1 + 16);
  }

  strlcpy(&v20[v19], v14, *(a1 + 8) - v19);
  v22 = strlen(v14);
  v23 = *(a1 + 8);
  v24 = *(a1 + 16) + v22;
  *(a1 + 16) = v24;
  strlcpy((*a1 + v24), a2, v23 - v24);
  v25 = *(a1 + 8);
  v26 = *(a1 + 16) + a3;
  *(a1 + 16) = v26;
  strlcpy((*a1 + v26), v21, v25 - v26);
  v27 = strlen(v21);
  result = 0;
  v29 = *(a1 + 16) + v27;
  *(a1 + 16) = v29;
  *(*a1 + v29) = 0;
  return result;
}

void *AAPathFilterCreate()
{
  v0 = malloc(0xA8uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0xA8uLL, 0, 0xA8uLL);
    v1[3] = StringTableCreate();
    v1[12] = StringTableCreate();
    v1[1] = StringTableCreate();
    v2 = StringTableCreate();
    v1[2] = v2;
    if (!v1[3] || !v1[12] || !v1[1] || !v2)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterCreate", 192, 130, 0, "StringTableCreate", v3, v4, v9);
      AAPathFilterDestroy(v1);
      return 0;
    }
  }

  else
  {
    v5 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterCreate", 183, 130, *v5, "malloc", v6, v7, v9);
  }

  return v1;
}

void AAPathFilterDestroy(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 56))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
    }

    if (*(a1 + 128))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
    }

    StringTableDestroy(*(a1 + 24));
    StringTableDestroy(*(a1 + 96));
    StringTableDestroy(*(a1 + 8));
    StringTableDestroy(*(a1 + 16));
    free(*(a1 + 32));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    free(*(a1 + 104));

    free(a1);
  }
}

uint64_t AAPathFilterAddRule(uint64_t a1, unsigned int a2, unsigned int a3, char *__s, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    if (*(a1 + 56))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
      *(a1 + 56) = 0;
    }

    if (*(a1 + 128))
    {
      MEMORY[0x29C25E6A0](a1 + 64);
      *(a1 + 128) = 0;
    }

    *a1 = 0;
  }

  if (a2 < 3)
  {
    if (a3 >= 3)
    {
      v28 = a3;
      v13 = "invalid match type: %u";
      v14 = 243;
    }

    else if (a2 == 2 && a3)
    {
      v13 = "expected match type PREFIX for MAPTO rule";
      v14 = 246;
    }

    else if (a2 != 2 || a5)
    {
      if (a2 == 2 || !a5)
      {
        if (__s)
        {
          v21 = strlen(__s);
          if (a3 != 1 && !pathIsValid(__s, v21))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 256, 130, 0, "invalid match path: %s", v19, v20, __s);
            goto LABEL_15;
          }

          if (a5)
          {
            v22 = strlen(a5);
            if (!pathIsValid(a5, v22))
            {
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 260, 130, 0, "invalid mapto path: %s", v19, v20, a5);
              goto LABEL_15;
            }
          }

          else
          {
            v22 = 0;
          }

          if (a3 == 2 && (!v21 || strchr(__s, 47)))
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 264, 130, 0, "invalid path for name match: %s", v19, v20, __s);
            goto LABEL_15;
          }

          if (a2 == 2)
          {
            if ((StringTableAppend(*(a1 + 8), __s, v21, 0, v17, v18, v19, v20) & 0x80000000) != 0)
            {
              v13 = "StringTableAppend";
              v14 = 270;
              goto LABEL_14;
            }

            if ((StringTableAppend(*(a1 + 16), a5, v22, 0, v23, v24, a7, a8) & 0x80000000) != 0)
            {
              v13 = "StringTableAppend";
              v14 = 271;
              goto LABEL_14;
            }
          }

          else
          {
            if (a2)
            {
              v25 = 104;
            }

            else
            {
              v25 = 32;
            }

            if (a3)
            {
              if (a3 == 2)
              {
                v29[0] = 47;
                __memcpy_chk();
                v26 = v21 + 1;
                v29[v21 + 1] = 0;
                if ((reStringAppend(a1 + v25, v29, v21 + 1, 6) & 0x80000000) != 0)
                {
                  v13 = "error building regex";
                  v14 = 299;
                  goto LABEL_14;
                }

                v29[v26] = 47;
                v29[v21 + 2] = 0;
                if ((reStringAppend(a1 + v25, v29, v21 + 2, 4) & 0x80000000) != 0)
                {
                  v13 = "error building regex";
                  v14 = 303;
                  goto LABEL_14;
                }

                __memcpy_chk();
                v29[v21] = 47;
                v29[v26] = 0;
                if ((reStringAppend(a1 + v25, v29, v21 + 1, 5) & 0x80000000) != 0)
                {
                  v13 = "error building regex";
                  v14 = 307;
                  goto LABEL_14;
                }

                if ((reStringAppend(a1 + v25, __s, v21, 7) & 0x80000000) != 0)
                {
                  v13 = "error building regex";
                  v14 = 310;
                  goto LABEL_14;
                }
              }

              else if ((reStringAppend(a1 + v25, __s, v21, 0) & 0x80000000) != 0)
              {
                v13 = "error building regex";
                v14 = 283;
                goto LABEL_14;
              }
            }

            else
            {
              v27 = 96;
              if (!a2)
              {
                v27 = 24;
              }

              if ((StringTableAppend(*(a1 + v27), __s, v21, 0, v17, v18, v19, v20) & 0x80000000) != 0)
              {
                v13 = "StringTableAppend";
                v14 = 289;
                goto LABEL_14;
              }
            }
          }

          result = 0;
          goto LABEL_16;
        }

        v13 = "match string is required for all rules";
        v14 = 252;
      }

      else
      {
        v13 = "mapto string is not allowed for non MAPTO rules";
        v14 = 250;
      }
    }

    else
    {
      v13 = "mapto string is required for MAPTO rule";
      v14 = 248;
    }

LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", v14, 130, 0, v13, a7, a8, v28);
    goto LABEL_15;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterAddRule", 235, 130, 0, "invalid rule type: %u", a7, a8, a2);
LABEL_15:
  result = 0xFFFFFFFFLL;
LABEL_16:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AAPathFilterApply(uint64_t a1, char *__s, size_t a3, char *a4)
{
  if (!*a1)
  {
    if (*(a1 + 48) && !*(a1 + 56))
    {
      v13 = regcomp((a1 + 64), *(a1 + 32), 257);
      if (v13)
      {
        AAPathFilterApply_cold_1(v13, (a1 + 64));
        goto LABEL_34;
      }

      *(a1 + 56) = 1;
    }

    if (*(a1 + 120) && !*(a1 + 128))
    {
      v14 = regcomp((a1 + 136), *(a1 + 104), 257);
      if (v14)
      {
        AAPathFilterApply_cold_2(v14, (a1 + 136));
        goto LABEL_34;
      }

      *(a1 + 128) = 1;
    }

    if ((StringTableSort(*(a1 + 24), 0) & 0x80000000) != 0)
    {
      v21 = 134;
    }

    else
    {
      if ((StringTableSort(*(a1 + 96), 0) & 0x80000000) == 0)
      {
        *a1 = 1;
        goto LABEL_2;
      }

      v21 = 135;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "prepareFilter", v21, 130, 0, "string table sort", v15, v16, v41);
LABEL_34:
    v17 = "filter prepare";
    v18 = 325;
    goto LABEL_35;
  }

LABEL_2:
  v8 = strlen(__s);
  if (!pathIsValid(__s, v8))
  {
    v17 = "invalid input path";
    v18 = 327;
    goto LABEL_35;
  }

  if (!StringTableSize(*(a1 + 24)) && !*(a1 + 56))
  {
    goto LABEL_25;
  }

  if (StringTableSize(*(a1 + 24)))
  {
    v11 = StringTableMatchesPrefixSorted(*(a1 + 24), __s);
    v12 = v11 < 1;
    if (!*(a1 + 56))
    {
      if (v11 < 1)
      {
        return 2;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      return 2;
    }

    v12 = 1;
  }

  if (regexec((a1 + 64), __s, 0, 0, 0) && v12)
  {
    return 2;
  }

LABEL_25:
  if (!StringTableSize(*(a1 + 96)) && !*(a1 + 128))
  {
    goto LABEL_40;
  }

  if (StringTableSize(*(a1 + 96)))
  {
    v19 = StringTableMatchesPrefixSorted(*(a1 + 96), __s);
    v20 = v19 < 1;
    if (!*(a1 + 128))
    {
      if (v19 <= 0)
      {
        goto LABEL_40;
      }

      return 2;
    }
  }

  else
  {
    if (!*(a1 + 128))
    {
      goto LABEL_40;
    }

    v20 = 1;
  }

  v23 = regexec((a1 + 136), __s, 0, 0, 0);
  result = 2;
  if (v23)
  {
    if (v20)
    {
LABEL_40:
      result = StringTableSize(*(a1 + 8));
      if (!result)
      {
        return result;
      }

      v24 = StringTableSize(*(a1 + 8));
      if (!v24)
      {
        return 2;
      }

      v41 = a3;
      __dst = a4;
      v25 = 0;
      v26 = 0;
      v27 = *(a1 + 8);
      v28 = *(v27 + 32);
      v29 = v24;
      v30 = (*(v27 + 8) + 8);
      v31 = -1;
      do
      {
        v32 = *v30;
        if ((!v32 || v8 >= v32 && !memcmp((v28 + *(v30 - 1)), __s, *v30) && (v8 == v32 || __s[v32] == 47)) && (v31 == -1 || v26 < v32))
        {
          v26 = v32;
          v31 = v25;
        }

        v30 += 4;
        ++v25;
      }

      while (v29 != v25);
      if (v31 == -1)
      {
        return 2;
      }

      if (!__dst)
      {
        return 0;
      }

      v35 = *(a1 + 16);
      v36 = *(v35 + 8);
      v37 = *(v36 + 16 * v31 + 8);
      if (v37 >= v41)
      {
        v17 = "insufficient out_capacity";
        v18 = 373;
      }

      else
      {
        v38 = *(*(*(a1 + 8) + 8) + 16 * v31 + 8);
        memcpy(__dst, (*(v35 + 32) + *(v36 + 16 * v31)), v37);
        if (v8 <= v38)
        {
LABEL_63:
          __dst[v37] = 0;
          return 1;
        }

        v39 = v8 - v38 - (v37 == 0);
        v40 = v39 + v37;
        if (v39 + v37 < v41)
        {
          memcpy(&__dst[v37], &__s[v8 - v39], v39);
          v37 = v40;
          goto LABEL_63;
        }

        v17 = "insufficient out_capacity";
        v18 = 379;
      }

LABEL_35:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAPathFilter.c", "AAPathFilterApply", v18, 130, 0, v17, v9, v10, v41);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

size_t OUTLINED_FUNCTION_0@<X0>(int a1@<W0>, const regex_t *a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, __int128 a6, __int128 a7, __int128 a8, __int128 a9, __int128 a10, __int128 a11, int a12)
{
  *(v12 - 24) = a3;
  a12 = 0;
  a10 = 0u;
  a11 = 0u;
  a8 = 0u;
  a9 = 0u;
  a6 = 0u;
  a7 = 0u;

  return regerror(a1, a2, &a6, 0x64uLL);
}

size_t PCompressLZ4Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZ4Decode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZ4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t aeaContainerParamsInitWithProfile(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithProfile", 31, 79, 0, "Invalid profile: %u", a7, a8, a2);
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t aeaChecksumSize(int a1)
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

uint64_t aeaContainerParamsInitWithMagic(int *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithMagic", v9, 79, 0, v8, a7, a8, v14);
  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerParamsInitWithRootHeader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 25);
  if (v8 > 2)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 74, 79, 0, "Invalid checksum in root header: %u", a7, a8, *(a2 + 25));
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
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 81, 79, 0, "Invalid compression algorithm key in root header: %u", a7, a8, *(a2 + 24));
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

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 89, 79, 0, "Invalid segments per cluster count in root header: %u", a7, a8, *(a2 + 20));
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaContainerParamsInitWithRootHeader", 85, 79, 0, "Invalid segment size in root header: %u", a7, a8, *(a2 + 16));
  }

  return 0xFFFFFFFFLL;
}

uint64_t aeaMagicInit(_DWORD *a1, _DWORD *a2)
{
  *a1 = 826361153;
  v2 = a2[1];
  a1[1] = *a2 & 0xFFFFFF | (a2[2] << 24);
  a1[2] = v2;
  return 0;
}

uint64_t aeaRootHeaderInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaRootHeaderInit", 117, 79, 0, "Invalid compression algorithm in context", a7, a8, v8);
  return 0xFFFFFFFFLL;
}

uint64_t aeaContainerOffsetsInit(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[5];
  *a1 = xmmword_296AD17B0;
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

uint64_t aeaChecksum(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaChecksum", 228, 79, 0, "Invalid checksum mode", a7, a8, v20.count[0]);
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t aeaEffectiveCompressionAlgorithm(uint64_t result)
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

uint64_t aeaDeriveMainKeyExisting(unsigned int *a1, int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, _DWORD *a9, _DWORD *a10, uint64_t (*a11)(uint64_t, void, char *, __int128 *, unsigned int *, void), uint64_t a12)
{
  v138 = *MEMORY[0x29EDCA608];
  v67 = 0;
  memset(v66, 0, sizeof(v66));
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

      v122 = 0;
      v121 = 0uLL;
      v120 = 0uLL;
      v119 = 0uLL;
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
      v105 = 0;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
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
      *__n = 0uLL;
      v88 = 0;
      v87 = 0uLL;
      v86 = 0uLL;
      v85 = 0uLL;
      v83 = 0uLL;
      v84 = 0uLL;
      v81 = 0uLL;
      v82 = 0uLL;
      v79 = 0uLL;
      v80 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      *v72 = 0uLL;
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v69 = 0;
      memset(v68, 0, sizeof(v68));
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
            result = (*(a1 + 9))(&v106, 2 * a1[2], a10, __n, v72);
            if ((result & 0x80000000) != 0)
            {
              v36 = -4;
            }

            else
            {
              v52 = a1[2];
              if (v52 >= 0x101)
              {
                goto LABEL_139;
              }

              v53 = a1[2];
              __memcpy_chk();
              LODWORD(v70[0]) = v52;
              result = memset_s(v70 + v52 + 4, 256 - v52, 0, 256 - v52);
              v54 = a1[2];
              if (v54 >= 0x101)
              {
                goto LABEL_139;
              }

              v55 = a1[2];
              __memcpy_chk();
              LODWORD(v68[0]) = v54;
              memset_s(v68 + v54 + 4, 256 - v54, 0, 256 - v54);
              memset_s(&v106, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&v106, a5 + 1, *a5, a1[14], v70) & 0x80000000) != 0)
              {
                v36 = -5;
              }

              else
              {
                memset(v137, 0, sizeof(v137));
                v136 = 0u;
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
                *&__s[8] = 0u;
                if (v106 == *a1)
                {
                  if (LODWORD(v68[0]) == a1[2])
                  {
                    if (LODWORD(v72[0]) == a1[5])
                    {
                      if (*a7 == a1[8])
                      {
                        *&__s[7] = 1263354207;
                        *__s = 0x5F41454100000007;
                        result = memset_s(&__s[11], 0xF9uLL, 0, 0xF9uLL);
                        v56 = *__s;
                        if (*__s >= 0xFDu)
                        {
                          goto LABEL_139;
                        }

                        *&__s[*__s + 4] = v17;
                        *__s = v56 + 4;
                        result = memset_s(&__s[v56 + 8], 252 - v56, 0, 252 - v56);
                        v57 = *__s + LODWORD(v72[0]);
                        if (v57 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v72 + 4, LODWORD(v72[0]));
                        *__s = v57;
                        result = memset_s(&__s[v57 + 4], 256 - v57, 0, 256 - v57);
                        v58 = *__s + LODWORD(v72[0]);
                        if (v58 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], v72 + 4, LODWORD(v72[0]));
                        *__s = v58;
                        result = memset_s(&__s[v58 + 4], 256 - v58, 0, 256 - v58);
                        v59 = *a7;
                        v60 = *__s + v59;
                        if (v60 >= 0x101)
                        {
                          goto LABEL_139;
                        }

                        memcpy(&__s[*__s + 4], a7 + 1, v59);
                        *__s = v60;
                        memset_s(&__s[v60 + 4], 256 - v60, 0, 256 - v60);
                        v61 = *(a1 + 9);
                        v62 = -1;
                        if (v61 && v106)
                        {
                          v62 = v61(a3, *a1, &v106, __s, v68);
                        }

                        if (*a3 == *a1)
                        {
                          v36 = v62;
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

      memset_s(&v106, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v70, 0x104uLL, 0, 0x104uLL);
      v49 = v68;
    }

    else
    {
      if (a11 && *a8)
      {
        *&v106 = 0;
        v27 = a6 + 1;
        result = a11(a12, a1[6], v66 + 4, &v106, a6 + 1, *a6);
        if ((result & 0x80000000) != 0)
        {
          v47 = "DH callback";
          v48 = 321;
          goto LABEL_78;
        }

        if (v106 != a1[6])
        {
          v47 = "DH callback returning invalid shared secret size";
          v48 = 322;
          goto LABEL_78;
        }

        if (v106 >= 0x101)
        {
          goto LABEL_139;
        }

        LODWORD(v66[0]) = v106;
        memset_s(v66 + v106 + 4, 256 - v106, 0, 256 - v106);
        memset(v137, 0, sizeof(v137));
        v136 = 0u;
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
        *&__s[8] = 0u;
        if (LODWORD(v66[0]) == *a1)
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
                        if (!v22 || !LODWORD(v66[0]))
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
                        v25 = v66;
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

      v122 = 0;
      v121 = 0uLL;
      v120 = 0uLL;
      v119 = 0uLL;
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
      v105 = 0;
      v104 = 0uLL;
      v103 = 0uLL;
      v102 = 0uLL;
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
      *__n = 0uLL;
      if (*(a1 + 9) && (v38 = *(a1 + 14)) != 0 && *(a1 + 20))
      {
        if (*a6 == a1[5])
        {
          if (*a9 == a1[4])
          {
            if ((v38(&v106, a6, a9) & 0x80000000) != 0)
            {
              v36 = -4;
            }

            else if (v106 == a1[6])
            {
              if (((*(a1 + 20))(__n, a9) & 0x80000000) != 0)
              {
                v36 = -6;
              }

              else
              {
                memset(v137, 0, sizeof(v137));
                v136 = 0u;
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
                *&__s[8] = 0u;
                if (v106 == *a1)
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
                          if (v45 && v106)
                          {
                            v46 = v45(a3, *a1, &v106, __s, a10);
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

      memset_s(&v106, 0x104uLL, 0, 0x104uLL);
      v49 = __n;
    }

LABEL_74:
    memset_s(v49, 0x104uLL, 0, 0x104uLL);
    goto LABEL_75;
  }

  if ((v16 - 1) < 2)
  {
    memset(v137, 0, sizeof(v137));
    v136 = 0uLL;
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

  memset(v137, 0, sizeof(v137));
  v136 = 0uLL;
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
      memset_s(v66, 0x104uLL, 0, 0x104uLL);
      v51 = *MEMORY[0x29EDCA608];
      return v50;
    }

    v65 = v36;
    v47 = "Main key derivation failed (%d)";
    v48 = 353;
LABEL_78:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyExisting", v48, 79, 0, v47, a7, a8, v65);
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
  v63 = *a7;
  v64 = *__s + v63;
  if (v64 < 0x101)
  {
    memcpy(&__s[*__s + 4], a7 + 1, v63);
    *__s = v64;
    memset_s(&__s[v64 + 4], 256 - v64, 0, 256 - v64);
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

uint64_t aeaDeriveMainKeyNew(unsigned int *a1, int *a2, _DWORD *a3, unsigned int *a4, char *__s, _DWORD *a6, _DWORD *a7, unsigned int *a8, unsigned int *a9)
{
  v123 = *MEMORY[0x29EDCA608];
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
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", v24, 79, 0, v23, a7, a8, v65);
    goto LABEL_14;
  }

  v66 = a3;
  v20 = v16 & 0xFFFFFF | (v17 << 24);
  *__s = v18;
  v21 = *a2;
  if (*a2 > 2)
  {
    if ((v21 - 3) >= 2)
    {
      if (v21 != 5)
      {
LABEL_55:
        v23 = "Unsupported profile";
        v24 = 435;
        goto LABEL_13;
      }

      v107 = 0;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
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
      __sa = 0u;
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      *__n = 0u;
      v73 = 0u;
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      if (*(a1 + 10) && *(a1 + 9))
      {
        if (*a7 >= 0x14u)
        {
          if (v18 == a1[2])
          {
            WORD6(v89[0]) = 21584;
            *(v89 + 4) = *"AEA_SCRYPT";
            LODWORD(v89[0]) = 10;
            memset_s((v89 | 0xE), 0xF6uLL, 0, 0xF6uLL);
            result = (*(a1 + 9))(&__sa, 2 * a1[2], __s, v89, __n);
            if ((result & 0x80000000) != 0)
            {
              v22 = -4;
            }

            else
            {
              v47 = a1[2];
              if (v47 >= 0x101)
              {
                goto LABEL_120;
              }

              v48 = a1[2];
              __memcpy_chk();
              LODWORD(v70[0]) = v47;
              result = memset_s(v70 + v47 + 4, 256 - v47, 0, 256 - v47);
              v49 = a1[2];
              if (v49 >= 0x101)
              {
                goto LABEL_120;
              }

              v50 = a1[2];
              __memcpy_chk();
              LODWORD(v68[0]) = v49;
              memset_s(v68 + v49 + 4, 256 - v49, 0, 256 - v49);
              memset_s(&__sa, 0x104uLL, 0, 0x104uLL);
              if (((*(a1 + 10))(&__sa, a7 + 1, *a7, a1[14], v70) & 0x80000000) != 0)
              {
                v22 = -5;
              }

              else
              {
                memset(v122, 0, sizeof(v122));
                v121 = 0u;
                v120 = 0u;
                v119 = 0u;
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
                *&v108[8] = 0u;
                if (__sa == *a1)
                {
                  if (LODWORD(v68[0]) == a1[2])
                  {
                    if (LODWORD(__n[0]) == a1[5])
                    {
                      if (*a8 == a1[8])
                      {
                        *&v108[7] = 1263354207;
                        *v108 = 0x5F41454100000007;
                        result = memset_s(&v108[11], 0xF9uLL, 0, 0xF9uLL);
                        v51 = *v108;
                        if (*v108 >= 0xFDu)
                        {
                          goto LABEL_120;
                        }

                        *&v108[*v108 + 4] = v20;
                        *v108 = v51 + 4;
                        result = memset_s(&v108[v51 + 8], 252 - v51, 0, 252 - v51);
                        v52 = *v108 + LODWORD(__n[0]);
                        if (v52 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], __n + 4, LODWORD(__n[0]));
                        *v108 = v52;
                        result = memset_s(&v108[v52 + 4], 256 - v52, 0, 256 - v52);
                        v53 = *v108 + LODWORD(__n[0]);
                        if (v53 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], __n + 4, LODWORD(__n[0]));
                        *v108 = v53;
                        result = memset_s(&v108[v53 + 4], 256 - v53, 0, 256 - v53);
                        v54 = *a8;
                        v55 = *v108 + v54;
                        if (v55 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], a8 + 1, v54);
                        *v108 = v55;
                        memset_s(&v108[v55 + 4], 256 - v55, 0, 256 - v55);
                        v56 = *(a1 + 9);
                        v57 = -1;
                        if (v56 && __sa)
                        {
                          v57 = v56(a3, *a1, &__sa, v108, v68);
                        }

                        if (*a3 == *a1)
                        {
                          v22 = v57;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v108, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v66, 0x104uLL, 0, 0x104uLL);
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
      memset_s(v89, 0x104uLL, 0, 0x104uLL);
      memset_s(v70, 0x104uLL, 0, 0x104uLL);
      p_sa = v68;
    }

    else
    {
      v107 = 0;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
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
      __sa = 0u;
      if (*(a1 + 9) && (v27 = *(a1 + 13)) != 0)
      {
        if (*a9 == a1[5])
        {
          if ((v27(&__sa, a4, a9) & 0x80000000) != 0)
          {
            v22 = -3;
          }

          else
          {
            v28 = *a4;
            if (*a4 == a1[5])
            {
              if (__sa == a1[6])
              {
                memset(v122, 0, sizeof(v122));
                v121 = 0u;
                v120 = 0u;
                v119 = 0u;
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
                *&v108[8] = 0u;
                if (__sa == *a1)
                {
                  if (*__s == a1[2])
                  {
                    if (*a9 == v28)
                    {
                      if (*a8 == a1[8])
                      {
                        *&v108[7] = 1263354207;
                        *v108 = 0x5F41454100000007;
                        result = memset_s(&v108[11], 0xF9uLL, 0, 0xF9uLL);
                        v29 = *v108;
                        if (*v108 >= 0xFDu)
                        {
                          goto LABEL_120;
                        }

                        *&v108[*v108 + 4] = v20;
                        *v108 = v29 + 4;
                        result = memset_s(&v108[v29 + 8], 252 - v29, 0, 252 - v29);
                        v30 = *a4;
                        v31 = *v108 + v30;
                        if (v31 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], a4 + 1, v30);
                        *v108 = v31;
                        result = memset_s(&v108[v31 + 4], 256 - v31, 0, 256 - v31);
                        v32 = *a9;
                        v33 = *v108 + v32;
                        if (v33 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], a9 + 1, v32);
                        *v108 = v33;
                        result = memset_s(&v108[v33 + 4], 256 - v33, 0, 256 - v33);
                        v34 = *a8;
                        v35 = *v108 + v34;
                        if (v35 >= 0x101)
                        {
                          goto LABEL_120;
                        }

                        memcpy(&v108[*v108 + 4], a8 + 1, v34);
                        *v108 = v35;
                        memset_s(&v108[v35 + 4], 256 - v35, 0, 256 - v35);
                        v36 = *(a1 + 9);
                        v37 = -1;
                        if (v36 && __sa)
                        {
                          v37 = v36(a3, *a1, &__sa, v108, __s);
                        }

                        v63 = *a1;
                        v64 = a3;
                        if (*a3 == v63)
                        {
                          v22 = v37;
                        }

                        else
                        {
                          v22 = -1006;
                        }

                        memset_s(v108, 0x104uLL, 0, 0x104uLL);
                        if (v22)
                        {
                          memset_s(v64, 0x104uLL, 0, 0x104uLL);
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

LABEL_111:
    memset_s(p_sa, 0x104uLL, 0, 0x104uLL);
    goto LABEL_112;
  }

  if ((v21 - 1) < 2)
  {
    memset(v122, 0, sizeof(v122));
    v121 = 0u;
    v120 = 0u;
    v119 = 0u;
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
    *&v108[8] = 0u;
    if (*a6 == *a1)
    {
      if (v18 == a1[2])
      {
        if (a1[5])
        {
LABEL_11:
          v22 = -1003;
LABEL_112:
          if ((v22 & 0x80000000) == 0)
          {
            result = 0;
            goto LABEL_15;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "aeaDeriveMainKeyNew", 437, 79, 0, "Main key derivation failed (%d)", a7, a8, v22);
LABEL_14:
          result = 0xFFFFFFFFLL;
LABEL_15:
          v26 = *MEMORY[0x29EDCA608];
          return result;
        }

        if (*a8 == a1[8])
        {
          qmemcpy(&v108[4], "AEA_AMK", 7);
          memset_s(&v108[11], 0xF9uLL, 0, 0xF9uLL);
          *&v108[11] = v20;
          *v108 = 11;
          memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
          memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
          result = memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
          v58 = *a8;
          v59 = v58 + 11;
          if (v58 + 11 < 0x101)
          {
            memcpy(&v108[*v108 + 4], a8 + 1, v58);
            *v108 = v59;
            memset_s(&v108[v59 + 4], 256 - v59, 0, 256 - v59);
            v42 = *(a1 + 9);
            if (v42)
            {
              if (*a6)
              {
                v43 = *a1;
                v44 = a3;
                v45 = a6;
                goto LABEL_82;
              }

              goto LABEL_91;
            }

            goto LABEL_88;
          }

          goto LABEL_120;
        }

LABEL_85:
        v22 = -1005;
        goto LABEL_112;
      }

LABEL_59:
      v22 = -1002;
      goto LABEL_112;
    }

LABEL_54:
    v22 = -1001;
    goto LABEL_112;
  }

  if (v21)
  {
    goto LABEL_55;
  }

  v38 = a1[12];
  if (a4)
  {
    memset_s(a4, 0x104uLL, 0, 0x104uLL);
  }

  if (v38 > 0x100 || (v39 = *(a1 + 8)) == 0 || (v39(a4 + 1, v38) & 0x80000000) != 0)
  {
    v23 = "generating random encryption key";
    v24 = 390;
    goto LABEL_13;
  }

  *a4 = v38;
  memset(v122, 0, sizeof(v122));
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
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
  *&v108[8] = 0u;
  if (v38 != *a1)
  {
    goto LABEL_54;
  }

  if (*__s != a1[2])
  {
    goto LABEL_59;
  }

  if (a1[5])
  {
    goto LABEL_11;
  }

  if (*a8 != a1[8])
  {
    goto LABEL_85;
  }

  qmemcpy(&v108[4], "AEA_AMK", 7);
  memset_s(&v108[11], 0xF9uLL, 0, 0xF9uLL);
  *&v108[11] = v20;
  *v108 = 11;
  memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
  memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
  result = memset_s(&v108[15], 0xF5uLL, 0, 0xF5uLL);
  v40 = *a8;
  v41 = v40 + 11;
  if (v40 + 11 < 0x101)
  {
    memcpy(&v108[*v108 + 4], a8 + 1, v40);
    *v108 = v41;
    memset_s(&v108[v41 + 4], 256 - v41, 0, 256 - v41);
    v42 = *(a1 + 9);
    if (v42)
    {
      if (*a4)
      {
        v43 = *a1;
        v44 = a3;
        v45 = a4;
LABEL_82:
        v60 = v42(v44, v43, v45, v108, __s);
LABEL_92:
        v61 = *a1;
        v62 = a3;
        if (*a3 == v61)
        {
          v22 = v60;
        }

        else
        {
          v22 = -1006;
        }

        memset_s(v108, 0x104uLL, 0, 0x104uLL);
        if (!v22)
        {
          goto LABEL_112;
        }

        p_sa = v62;
        goto LABEL_111;
      }

LABEL_91:
      v60 = -1;
      goto LABEL_92;
    }

LABEL_88:
    v60 = -1;
    goto LABEL_92;
  }

LABEL_120:
  __break(1u);
  return result;
}

int AEAStreamSign(AAByteStream encrypted_stream, AEAContext context)
{
  v87 = *MEMORY[0x29EDCA608];
  v63 = 0;
  memset(__s, 0, sizeof(__s));
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  v46 = 0u;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  if (*context <= 5u && ((1 << *context) & 0x2A) != 0)
  {
    v4 = 0;
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v30 = 0uLL;
    v29 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
LABEL_15:
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v45, 0x104uLL, 0, 0x104uLL);
    memset_s(v43, 0x104uLL, 0, 0x104uLL);
    memset_s(&v23, 0x68uLL, 0, 0x68uLL);
    memset_s(&v30, 0xD0uLL, 0, 0xD0uLL);
    v16 = *MEMORY[0x29EDCA608];
    return v4;
  }

  v5 = *(context + 340);
  v6 = *(context + 341);
  v41 = 0uLL;
  v42 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v30 = 0uLL;
  v29 = 0;
  v27 = 0uLL;
  v28 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  if ((aeaCryptoInit(&v30, context) & 0x80000000) != 0)
  {
    v14 = "initializing crypto params";
    v15 = 467;
    goto LABEL_14;
  }

  v9 = *(context + 5);
  v23 = xmmword_296AD17B0;
  *&v24 = *(context + 1) + 12;
  *(&v24 + 1) = v24 + HIDWORD(v32);
  *&v25 = *(&v24 + 1) + v33;
  *(&v25 + 1) = v25 + DWORD2(v30);
  *&v26 = *(&v25 + 1) + HIDWORD(v30);
  *(&v26 + 1) = v26 + 48;
  v27 = v26 + 48 + HIDWORD(v30);
  v10 = (*(context + 12) + 8) * v9 + HIDWORD(v30);
  *&v28 = (*(context + 12) + 8) * v9;
  *(&v28 + 1) = v10;
  v29 = v10 + HIDWORD(v30) * v9;
  memset_s(&v5[v24], HIDWORD(v32), 0, HIDWORD(v32));
  if (!*(&v37 + 1) || (v11 = (*(&v37 + 1))(v43, v5, v6), LODWORD(v43[0]) != DWORD1(v32)) || v11 < 0)
  {
    v14 = "digesting prologue";
    v15 = 474;
    goto LABEL_14;
  }

  v12 = *(context + 302);
  if (v12)
  {
    *&v85[0] = 0;
    result = v12(*(context + 303), 256, __s + 4, v85, v43 + 4);
    if (result < 0)
    {
      v14 = "signing prologue digest";
      v15 = 484;
      goto LABEL_14;
    }

    if (*&v85[0] > DWORD2(v32))
    {
      v14 = "invalid signature size";
      v15 = 485;
LABEL_14:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACommon.c", "AEAStreamSign", v15, 79, 0, v14, v7, v8, v23);
      v4 = -1;
      goto LABEL_15;
    }

    if (DWORD2(v32) >= 0x101)
    {
      goto LABEL_46;
    }

    LODWORD(__s[0]) = DWORD2(v32);
    result = memset_s(__s + DWORD2(v32) + 4, 256 - DWORD2(v32), 0, 256 - DWORD2(v32));
  }

  else if (!v38 || (result = (v38)(__s, context + 592, v43), LODWORD(__s[0]) != DWORD2(v32)) || result < 0)
  {
    v14 = "signing prologue";
    v15 = 490;
    goto LABEL_14;
  }

  if (*context)
  {
    if (!v39)
    {
      goto LABEL_36;
    }

    v84 = 0;
    memset(v83, 0, sizeof(v83));
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    v80 = 0;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    *__n = 0u;
    if (LODWORD(__s[0]) != DWORD2(v32))
    {
      goto LABEL_35;
    }

    if (*(context + 408) != v30)
    {
      goto LABEL_35;
    }

    *(v81 + 4) = 0x324B45535F414541;
    LODWORD(v81[0]) = 8;
    memset_s((v81 | 0xC), 0xF8uLL, 0, 0xF8uLL);
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    if (!*(&v34 + 1))
    {
      goto LABEL_35;
    }

    if (!*(context + 408))
    {
      goto LABEL_35;
    }

    result = (*(&v34 + 1))(v83, DWORD1(v30), context + 1632, v81, v85);
    if (result < 0)
    {
      goto LABEL_35;
    }

    v17 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0x101)
    {
      goto LABEL_46;
    }

    __memcpy_chk();
    LODWORD(v45[0]) = v17;
    memset_s(v45 + v17 + 4, 256 - v17, 0, 256 - v17);
    result = (v39)(v45 + 4, LODWORD(__s[0]), __n, v83, 0, 0);
    if (result < 0)
    {
LABEL_35:
      memset_s(v83, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v81, 0x104uLL, 0, 0x104uLL);
      goto LABEL_36;
    }

    v18 = LODWORD(v45[0]) + LODWORD(__n[0]);
    if (v18 < 0x101)
    {
      memcpy(v45 + LODWORD(v45[0]) + 4, __n + 4, LODWORD(__n[0]));
      LODWORD(v45[0]) = v18;
      memset_s(v45 + v18 + 4, 256 - v18, 0, 256 - v18);
      v19 = v45[0];
      v20 = HIDWORD(v32);
      memset_s(v83, 0x104uLL, 0, 0x104uLL);
      memset_s(__n, 0x104uLL, 0, 0x104uLL);
      memset_s(v81, 0x104uLL, 0, 0x104uLL);
      if (v19 == v20)
      {
LABEL_39:
        memcpy(&v5[v24], v45 + 4, LODWORD(v45[0]));
        if (AAByteStreamPWrite(encrypted_stream, v5, v6, 0) == v6)
        {
          if (*(&v42 + 1))
          {
            v22 = (*(&v42 + 1))(context + 1892, v5, v6);
            if (*(context + 473) == DWORD1(v33) && (v22 & 0x80000000) == 0)
            {
              v4 = 0;
              goto LABEL_15;
            }
          }

          v14 = "digesting prologue";
          v15 = 505;
        }

        else
        {
          v14 = "writing updated prologue";
          v15 = 502;
        }

        goto LABEL_14;
      }

LABEL_36:
      v14 = "encrypt signature";
      v15 = 497;
      goto LABEL_14;
    }
  }

  else
  {
    v21 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) < 0x101)
    {
      __memcpy_chk();
      LODWORD(v45[0]) = v21;
      memset_s(v45 + v21 + 4, 256 - v21, 0, 256 - v21);
      goto LABEL_39;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

size_t PCompressLZFSEEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZFSEDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZFSE);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t *AAVerifyDirectoryArchiveOutputStreamOpen(const char *a1, AAFieldKeySet_impl *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  DefaultNThreads = a6;
  if (!a6)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  v12 = malloc(0x38uLL);
  v13 = v12;
  if (v12)
  {
    memset_s(v12, 0x38uLL, 0, 0x38uLL);
  }

  memset(&v73, 0, sizeof(v73));
  v14 = malloc(0x4B8uLL);
  v15 = v14;
  if (v14 && (memset_s(v14, 0x4B8uLL, 0, 0x4B8uLL), v13))
  {
    if (realpath_DARWIN_EXTSN(a1, v15))
    {
      if (stat(v15, &v73) || (v73.st_mode & 0xF000) != 0x4000)
      {
        v72 = a1;
        v44 = "Invalid directory: %s";
        v45 = 450;
        goto LABEL_64;
      }

      *(v15 + 1024) = a5;
      *(v15 + 1032) = a3;
      *(v15 + 1040) = a4;
      *(v15 + 1064) = DefaultNThreads;
      *(v15 + 1048) = a5 >> 62;
      *(v15 + 1088) = 0xFFFFFFFFLL;
      if (a2)
      {
        v18.ikey = 4475221;
        if (AAFieldKeySetContainsKey(a2, v18))
        {
          *(v15 + 1088) &= ~1u;
        }

        v19.ikey = 4475207;
        if (AAFieldKeySetContainsKey(a2, v19))
        {
          *(v15 + 1088) &= ~2u;
        }

        v20.ikey = 4672582;
        if (AAFieldKeySetContainsKey(a2, v20))
        {
          *(v15 + 1088) &= ~4u;
        }

        v21.ikey = 4476749;
        if (AAFieldKeySetContainsKey(a2, v21))
        {
          *(v15 + 1088) &= ~8u;
        }

        v22.ikey = 5067842;
        if (AAFieldKeySetContainsKey(a2, v22))
        {
          *(v15 + 1088) &= ~0x10u;
        }

        v23.ikey = 5067843;
        if (AAFieldKeySetContainsKey(a2, v23))
        {
          *(v15 + 1088) &= ~0x20u;
        }

        v24.ikey = 5067853;
        if (AAFieldKeySetContainsKey(a2, v24))
        {
          *(v15 + 1088) &= ~0x40u;
        }

        v25.ikey = 5523009;
        if (AAFieldKeySetContainsKey(a2, v25))
        {
          *(v15 + 1088) &= ~0x80u;
        }

        v26.ikey = 5391937;
        if (AAFieldKeySetContainsKey(a2, v26))
        {
          *(v15 + 1088) &= ~0x100u;
        }

        v27.ikey = 4803654;
        if (AAFieldKeySetContainsKey(a2, v27))
        {
          *(v15 + 1088) &= ~0x200u;
        }

        v28.ikey = 4411984;
        if (AAFieldKeySetContainsKey(a2, v28))
        {
          *(v15 + 1088) &= ~0x400u;
        }

        v29.ikey = 5458755;
        if (AAFieldKeySetContainsKey(a2, v29))
        {
          *(v15 + 1088) &= ~0x800u;
        }

        v30.ikey = 3229779;
        if (AAFieldKeySetContainsKey(a2, v30))
        {
          *(v15 + 1088) &= ~0x1000u;
        }

        v31.ikey = 3295315;
        if (AAFieldKeySetContainsKey(a2, v31))
        {
          *(v15 + 1088) &= ~0x2000u;
        }

        v32.ikey = 3360851;
        if (AAFieldKeySetContainsKey(a2, v32))
        {
          *(v15 + 1088) &= ~0x4000u;
        }

        v33.ikey = 3491923;
        if (AAFieldKeySetContainsKey(a2, v33))
        {
          *(v15 + 1088) &= ~0x8000u;
        }

        v34.ikey = 5521732;
        if (AAFieldKeySetContainsKey(a2, v34))
        {
          *(v15 + 1088) &= ~0x80000u;
        }

        v35.ikey = 4408665;
        if (AAFieldKeySetContainsKey(a2, v35))
        {
          *(v15 + 1088) &= ~0x10000u;
        }

        v36.ikey = 5521752;
        if (AAFieldKeySetContainsKey(a2, v36))
        {
          *(v15 + 1088) &= ~0x20000u;
        }

        v37.ikey = 4997953;
        if (AAFieldKeySetContainsKey(a2, v37))
        {
          *(v15 + 1088) &= ~0x40000u;
        }
      }

      if ((a5 & 0x80000000000000) == 0)
      {
        if (a5 >> 62)
        {
          fprintf(*MEMORY[0x29EDCA610], "Scanning target directory: %s\n", a1);
        }

        v38 = AAPathListCreateWithDirectoryContents(a1, 0, *(v15 + 1032), *(v15 + 1040), 0, DefaultNThreads);
        *(v15 + 1056) = v38;
        if (!v38)
        {
          v72 = a1;
          v44 = "Scanning target directory failed: %s";
          v45 = 488;
          goto LABEL_64;
        }

        v39 = AAPathListNodeFirst(v38);
        if (v39 == -1)
        {
          *(v15 + 1120) = 64;
          v42 = 8;
        }

        else
        {
          v40 = v39;
          v41 = 0;
          do
          {
            ++*(v15 + 1152);
            if (v40 > v41)
            {
              v41 = v40;
            }

            v40 = AAPathListNodeNext(*(v15 + 1056), v40);
          }

          while (v40 != -1);
          *(v15 + 1120) = (v41 + 64) & 0xFFFFFFFFFFFFFFC0;
          v42 = ((v41 + 64) >> 3) & 0x1FFFFFFFFFFFFFF8;
          if (v42 >= 0x2000000001)
          {
            *__error() = 12;
LABEL_87:
            *(v15 + 1128) = 0;
            v43 = *__error();
            v44 = "malloc";
            v45 = 499;
            goto LABEL_65;
          }
        }

        v54 = malloc(v42);
        if (!v54)
        {
          goto LABEL_87;
        }

        v55 = v54;
        memset_s(v54, v42, 0, v42);
        *(v15 + 1128) = v55;
      }

      v56 = calloc(*(v15 + 1064), 8uLL);
      *(v15 + 1072) = v56;
      if (v56)
      {
        if (*(v15 + 1064))
        {
          v57 = 0;
          while (1)
          {
            v58 = malloc(0x5A8uLL);
            v59 = v58;
            if (!v58)
            {
              v61 = __error();
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerDataAlloc", 80, 119, *v61, "malloc", v62, v63, v72);
              goto LABEL_83;
            }

            memset_s(v58, 0x5A8uLL, 0, 0x5A8uLL);
            *v59 = v15;
            v60 = *(v15 + 1120);
            if (!v60)
            {
              goto LABEL_83;
            }

            if (v60 < 0x10000000008)
            {
              v64 = v60 >> 3;
              v65 = malloc(v60 >> 3);
              if (v65)
              {
                v66 = v65;
                memset_s(v65, v64, 0, v64);
                v59[180] = v66;
                goto LABEL_83;
              }
            }

            else
            {
              *__error() = 12;
            }

            v59[180] = 0;
            v67 = __error();
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerDataAlloc", 85, 119, *v67, "malloc", v68, v69, v72);
            workerDataFree(v59);
            v59 = 0;
LABEL_83:
            *(*(v15 + 1072) + 8 * v57) = v59;
            v70 = *(v15 + 1072);
            if (!*(v70 + 8 * v57))
            {
              v44 = "allocation";
              v45 = 508;
              goto LABEL_64;
            }

            ++v57;
            v56 = *(v15 + 1064);
            if (v57 >= v56)
            {
              goto LABEL_89;
            }
          }
        }

        v70 = v56;
        LODWORD(v56) = 0;
LABEL_89:
        v71 = ThreadPoolCreate(v56, v70, workerProc_0);
        *(v15 + 1080) = v71;
        if (v71)
        {
          v13[3] = verifyDirectoryStreamWriteHeader;
          v13[4] = verifyDirectoryStreamWriteBlob;
          v13[2] = verifyDirectoryStreamCancel;
          *v13 = v15;
          v13[1] = verifyDirectoryStreamClose;
          return v13;
        }

        v44 = "ThreadPoolCreate";
        v45 = 511;
LABEL_64:
        v43 = 0;
      }

      else
      {
        v43 = *__error();
        v44 = "malloc";
        v45 = 504;
      }
    }

    else
    {
      v43 = *__error();
      v72 = a1;
      v44 = "%s";
      v45 = 449;
    }
  }

  else
  {
    v43 = *__error();
    v44 = "malloc";
    v45 = 448;
  }

LABEL_65:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "AAVerifyDirectoryArchiveOutputStreamOpen", v45, 119, v43, v44, v16, v17, v72);
  free(v13);
  verifyDirectoryStreamClose(v15, v46, v47, v48, v49, v50, v51, v52);
  return 0;
}

uint64_t workerProc_0(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v3 = (a1 + 12);
  v2 = *a1;
  memset(&v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  if ((concatPath(v52, 0x800uLL, v2, (a1 + 12)) & 0x80000000) == 0)
  {
    v6 = *(v2 + 1056);
    if (v6)
    {
      Node = AAPathListGetNode(v6, v3);
      if (Node != -1)
      {
        if (Node >= *(v2 + 1120))
        {
          v21 = "invalid node index";
          v22 = 166;
LABEL_22:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", v22, 119, 0, v21, v8, v9, v44);
          goto LABEL_23;
        }

        *(*(a1 + 1440) + ((Node >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << Node;
LABEL_8:
        v10 = *(a1 + 1392);
        if (v10)
        {
          LOBYTE(v46) = v46 | 1;
          *(&v46 + 1) = *(a1 + 1408);
          *&v47 = v10;
        }

        v11 = *(a1 + 1344);
        if (v11)
        {
          LOBYTE(v46) = v46 | 2;
          *(&v47 + 1) = *(a1 + 1360);
          *&v48 = v11;
        }

        v12 = *(a1 + 1368);
        if (v12)
        {
          LOBYTE(v46) = v46 | 4;
          *(&v48 + 1) = *(a1 + 1384);
          v49 = v12;
        }

        if ((aaCheckAndFixWithPath((a1 + 1040), (a1 + 1112), (a1 + 1168), &v46, *(v2 + 1088), &v50, v2, v3, *(v2 + 1024)) & 0x80000000) == 0)
        {
          if (v50)
          {
            v13 = AAFieldKeySetCreate();
            v16 = v13;
            if (!v13)
            {
              v24 = "AAFieldKeySetCreate";
              v25 = 200;
LABEL_92:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", v25, 119, 0, v24, v14, v15, v45);
              goto LABEL_24;
            }

            v17 = v50;
            if (v50)
            {
              v26.ikey = 4475221;
              v18 = AAFieldKeySetInsertKey(v13, v26) >= 0;
              v17 = v50;
            }

            else
            {
              v18 = 1;
            }

            if ((v17 & 2) != 0)
            {
              v27.ikey = 4475207;
              if (AAFieldKeySetInsertKey(v16, v27) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
            }

            if ((v17 & 8) != 0)
            {
              v28.ikey = 4476749;
              if (AAFieldKeySetInsertKey(v16, v28) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
            }

            if ((v17 & 4) != 0)
            {
              v29.ikey = 4672582;
              if (AAFieldKeySetInsertKey(v16, v29) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
            }

            if ((v17 & 0x40) != 0)
            {
              v32.ikey = 5067853;
              if (AAFieldKeySetInsertKey(v16, v32) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
              if ((v50 & 0x10) == 0)
              {
LABEL_44:
                if ((v17 & 0x20) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_45;
              }
            }

            else if ((v17 & 0x10) == 0)
            {
              goto LABEL_44;
            }

            v33.ikey = 5067842;
            if (AAFieldKeySetInsertKey(v16, v33) < 0)
            {
              v18 = 0;
            }

            v17 = v50;
            if ((v50 & 0x20) == 0)
            {
LABEL_48:
              if ((v17 & 0x80) != 0)
              {
                v34.ikey = 5523009;
                if (AAFieldKeySetInsertKey(v16, v34) < 0)
                {
                  v18 = 0;
                }

                v17 = v50;
                if ((v50 & 0x100) == 0)
                {
LABEL_50:
                  if ((v17 & 0x200) == 0)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_51;
                }
              }

              else if ((v17 & 0x100) == 0)
              {
                goto LABEL_50;
              }

              v35.ikey = 5391937;
              if (AAFieldKeySetInsertKey(v16, v35) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
              if ((v50 & 0x200) == 0)
              {
LABEL_54:
                if ((v17 & 0x400) != 0)
                {
                  v36.ikey = 4411984;
                  if (AAFieldKeySetInsertKey(v16, v36) < 0)
                  {
                    v18 = 0;
                  }

                  v17 = v50;
                  if ((v50 & 0x80000) == 0)
                  {
LABEL_56:
                    if ((v17 & 0x10000) == 0)
                    {
                      goto LABEL_57;
                    }

                    goto LABEL_80;
                  }
                }

                else if ((v17 & 0x80000) == 0)
                {
                  goto LABEL_56;
                }

                v37.ikey = 5521732;
                if (AAFieldKeySetInsertKey(v16, v37) < 0)
                {
                  v18 = 0;
                }

                v17 = v50;
                if ((v50 & 0x10000) == 0)
                {
LABEL_57:
                  if ((v17 & 0x20000) == 0)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_83;
                }

LABEL_80:
                v38.ikey = 4408665;
                if (AAFieldKeySetInsertKey(v16, v38) < 0)
                {
                  v18 = 0;
                }

                v17 = v50;
                if ((v50 & 0x20000) == 0)
                {
LABEL_58:
                  if ((v17 & 0x40000) == 0)
                  {
                    goto LABEL_87;
                  }

LABEL_86:
                  v40.ikey = 4997953;
                  if (AAFieldKeySetInsertKey(v16, v40) < 0)
                  {
LABEL_91:
                    v24 = "AAFieldKeySetInsertKey";
                    v25 = 216;
                    goto LABEL_92;
                  }

LABEL_87:
                  if (v18)
                  {
                    if ((sendMessage(v2, 74, v3, v16) & 0x80000000) != 0)
                    {
                      goto LABEL_89;
                    }

LABEL_27:
                    v23 = 0;
                    goto LABEL_90;
                  }

                  goto LABEL_91;
                }

LABEL_83:
                v39.ikey = 5521752;
                if (AAFieldKeySetInsertKey(v16, v39) < 0)
                {
                  v18 = 0;
                }

                if ((v50 & 0x40000) == 0)
                {
                  goto LABEL_87;
                }

                goto LABEL_86;
              }

LABEL_51:
              v31.ikey = 4803654;
              if (AAFieldKeySetInsertKey(v16, v31) < 0)
              {
                v18 = 0;
              }

              v17 = v50;
              goto LABEL_54;
            }

LABEL_45:
            v30.ikey = 5067843;
            if (AAFieldKeySetInsertKey(v16, v30) < 0)
            {
              v18 = 0;
            }

            v17 = v50;
            goto LABEL_48;
          }

          v19 = v2;
          v20 = 73;
LABEL_26:
          v16 = 0;
          if ((sendMessage(v19, v20, v3, 0) & 0x80000000) != 0)
          {
LABEL_89:
            v41 = 0;
            atomic_compare_exchange_strong((v2 + 1136), &v41, 1u);
            v23 = 0xFFFFFFFFLL;
            goto LABEL_90;
          }

          goto LABEL_27;
        }

        v44 = v3;
        v21 = "CheckAndFix: %s";
        v22 = 190;
        goto LABEL_22;
      }
    }

    else if ((lstat(v52, &v51) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v19 = v2;
    v20 = 71;
    goto LABEL_26;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "workerProc", 153, 119, 0, "invalid path: %s", v4, v5, v3);
LABEL_23:
  v16 = 0;
LABEL_24:
  v23 = 0;
  atomic_fetch_add_explicit((v2 + 1160), 1uLL, memory_order_relaxed);
LABEL_90:
  AAFieldKeySetDestroy(v16);
  v42 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t verifyDirectoryStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v8 = result;
    v9 = *(result + 1096);
    if (v9)
    {
      v10 = *(result + 1080);
      if (v10)
      {
        *(v9 + 8) = 0;
        ThreadPoolRunWorker(v10, v9, a3, a4, a5, a6, a7, a8);
        *(v8 + 1096) = 0;
      }
    }

    ThreadPoolDestroy(*(v8 + 1080));
    v11 = atomic_load((v8 + 1136));
    if (v11 || (v12 = atomic_load((v8 + 1160))) != 0)
    {
LABEL_7:
      v13 = 0;
      v14 = 1;
    }

    else
    {
      v38 = *(v8 + 1072);
      if (v38)
      {
        v39 = *(v8 + 1120);
        if (v39)
        {
          v40 = *(v8 + 1064);
          if (v40)
          {
            for (i = 0; i != v40; ++i)
            {
              v42 = *(v38 + 8 * i);
              if (v42)
              {
                v43 = 0;
                v44 = *(v42 + 1440);
                v45 = *(v8 + 1128);
                do
                {
                  v46 = *v44++;
                  *v45++ |= v46;
                  v43 += 64;
                }

                while (v43 < v39);
              }
            }
          }
        }
      }

      v47 = *(v8 + 1056);
      if (v47)
      {
        v48 = AAPathListNodeFirst(v47);
        if (v48 != -1)
        {
          for (j = v48; j != -1; j = AAPathListNodeNext(*(v8 + 1056), j))
          {
            if (((*(*(v8 + 1128) + ((j >> 3) & 0x1FFFFFFFFFFFFFF8)) >> j) & 1) == 0)
            {
              if (AAPathListNodeGetPath(*(v8 + 1056), j, 0x400uLL, path, 0) < 0)
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamClose", 385, 119, 0, "path too long", v50, v51, v52);
                goto LABEL_7;
              }

              if ((sendMessage(v8, 72, path, 0) & 0x80000000) != 0)
              {
                goto LABEL_7;
              }
            }
          }
        }
      }

      v14 = 0;
      v13 = 1;
    }

    AAPathListDestroy(*(v8 + 1056));
    v15 = *(v8 + 1072);
    if (v15)
    {
      if (*(v8 + 1064))
      {
        v16 = 0;
        do
        {
          workerDataFree(*(*(v8 + 1072) + 8 * v16++));
        }

        while (v16 < *(v8 + 1064));
        v15 = *(v8 + 1072);
      }

      free(v15);
    }

    if ((v14 & 1) == 0 && *(v8 + 1048))
    {
      v17 = MEMORY[0x29EDCA610];
      v18 = *MEMORY[0x29EDCA610];
      if (*(v8 + 1144) == *(v8 + 1152))
      {
        v53 = *(v8 + 1144);
        fprintf(v18, "%12llu entries\n");
      }

      else
      {
        fprintf(v18, "%12llu entries in archive\n", *(v8 + 1144));
        v19 = *(v8 + 1152);
        fprintf(*v17, "%12llu entries in directory\n");
      }

      v20 = *v17;
      v21 = atomic_load((v8 + 1176));
      fprintf(v20, "%12llu common, OK\n", v21);
      v22 = *v17;
      v23 = atomic_load((v8 + 1184));
      fprintf(v22, "%12llu common, not matching\n", v23);
      v24 = *v17;
      v25 = atomic_load((v8 + 1192));
      fprintf(v24, "%12llu added\n", v25);
      v26 = *v17;
      v27 = atomic_load((v8 + 1200));
      fprintf(v26, "%12llu removed\n", v27);
      if (atomic_load((v8 + 1168)))
      {
        v29 = *v17;
        v30 = atomic_load((v8 + 1168));
        fprintf(v29, "%12llu differences ignored\n", v30);
      }

      if (atomic_load((v8 + 1160)))
      {
        v32 = *v17;
        v33 = atomic_load((v8 + 1160));
        fprintf(v32, "%12llu errors reported\n", v33);
      }
    }

    v34 = atomic_load((v8 + 1184));
    if (v34 || (v35 = atomic_load((v8 + 1192))) != 0 || (v36 = atomic_load((v8 + 1200))) != 0)
    {
      v13 = 0;
    }

    free(*(v8 + 1128));
    free(v8);
    if (v13)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verifyDirectoryStreamWriteHeader(uint64_t a1, AAHeader_impl *a2)
{
  v64 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 1136)))
  {
    goto LABEL_7;
  }

  value = 0;
  bzero(v63, 0x400uLL);
  size = 0;
  length = 0;
  offset = 0;
  if (!*(a1 + 1096) && !*(a1 + 1112))
  {
    *(a1 + 1104) = 0;
    ++*(a1 + 1144);
    v12.ikey = 5265748;
    KeyIndex = AAHeaderGetKeyIndex(a2, v12);
    if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(a2, KeyIndex, &value), FieldUInt <= 1) ? (v16 = 1) : (v16 = FieldUInt), v16 <= 0))
    {
      v17 = 252;
    }

    else
    {
      if (value == 77)
      {
        goto LABEL_15;
      }

      v18.ikey = 5521744;
      v19 = AAHeaderGetKeyIndex(a2, v18);
      if ((v19 & 0x80000000) == 0)
      {
        FieldString = AAHeaderGetFieldString(a2, v19, 0x400uLL, v63, &length);
        v25 = FieldString <= 1 ? 1 : FieldString;
        if (v25 > 0)
        {
          v26 = *(a1 + 1040);
          if (v26)
          {
            v27 = v26(*(a1 + 1032), 70, v63, a2);
            if (v27 < 0)
            {
              v7 = "user cancelled";
              v8 = 260;
              goto LABEL_5;
            }

            if (v27)
            {
LABEL_15:
              result = 0;
              *(a1 + 1104) = 1;
              goto LABEL_8;
            }
          }

          Worker = ThreadPoolGetWorker(*(a1 + 1080), v21, v22, v23, v24, v14, v5, v6);
          if (!Worker)
          {
            v7 = "ThreadPoolGetWorker";
            v8 = 266;
            goto LABEL_5;
          }

          v29 = Worker;
          *(a1 + 1112) = AAHeaderGetPayloadSize(a2);
          *(v29 + 8) = value;
          __strlcpy_chk();
          *(v29 + 1344) = 0;
          *(v29 + 1368) = 0;
          *(v29 + 1392) = 0;
          *(v29 + 1416) = 0;
          *(v29 + 1432) = 0;
          *(v29 + 1424) = 0;
          if ((aaEntryAttributesInitWithHeader((v29 + 1040), (v29 + 1112), (v29 + 1168), a2) & 0x80000000) != 0)
          {
            v7 = "invalid header";
            v8 = 277;
            goto LABEL_5;
          }

          v30.ikey = 4997953;
          v31 = AAHeaderGetKeyIndex(a2, v30);
          if ((v31 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v31, &size, &offset) <= 1)
          {
            v32 = size;
            *(v29 + 1424) = size;
            if ((v32 & 0x8000000000000000) != 0)
            {
LABEL_84:
              v7 = "ACL blob allocation";
              v8 = 284;
              goto LABEL_5;
            }

            v33 = *(v29 + 1376);
            if (v33 < v32)
            {
              do
              {
                while (!v33)
                {
                  v33 = 0x4000;
                  if (v32 <= 0x4000)
                  {
                    v35 = (v29 + 1384);
                    __size = 0x4000;
                    goto LABEL_45;
                  }
                }

                v34 = v33 >> 1;
                if ((v33 & (v33 >> 1)) != 0)
                {
                  v34 = v33 & (v33 >> 1);
                }

                v33 += v34;
              }

              while (v33 < v32);
              v35 = (v29 + 1384);
              __size = v33;
              if (v33 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_83;
              }

LABEL_45:
              v36 = *v35;
              v37 = realloc(*v35, __size);
              if (v37)
              {
                *(v29 + 1384) = v37;
                *(v29 + 1376) = __size;
                goto LABEL_47;
              }

              free(v36);
LABEL_83:
              *v35 = 0;
              *(v29 + 1368) = 0;
              *(v29 + 1376) = 0;
              goto LABEL_84;
            }
          }

LABEL_47:
          v38.ikey = 5521752;
          v39 = AAHeaderGetKeyIndex(a2, v38);
          if ((v39 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v39, &size, &offset) <= 1)
          {
            v40 = size;
            *(v29 + 1416) = size;
            if ((v40 & 0x8000000000000000) != 0)
            {
LABEL_87:
              v7 = "XAT blob allocation";
              v8 = 290;
              goto LABEL_5;
            }

            v41 = *(v29 + 1352);
            if (v41 < v40)
            {
              do
              {
                while (!v41)
                {
                  v41 = 0x4000;
                  if (v40 <= 0x4000)
                  {
                    v43 = (v29 + 1360);
                    __size = 0x4000;
                    goto LABEL_60;
                  }
                }

                v42 = v41 >> 1;
                if ((v41 & (v41 >> 1)) != 0)
                {
                  v42 = v41 & (v41 >> 1);
                }

                v41 += v42;
              }

              while (v41 < v40);
              v43 = (v29 + 1360);
              __size = v41;
              if (v41 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_86;
              }

LABEL_60:
              v44 = *v43;
              v45 = realloc(*v43, __size);
              if (v45)
              {
                *(v29 + 1360) = v45;
                *(v29 + 1352) = __size;
                goto LABEL_62;
              }

              free(v44);
LABEL_86:
              *v43 = 0;
              *(v29 + 1344) = 0;
              *(v29 + 1352) = 0;
              goto LABEL_87;
            }
          }

LABEL_62:
          v46.ikey = 4408665;
          v47 = AAHeaderGetKeyIndex(a2, v46);
          if ((v47 & 0x80000000) == 0 && AAHeaderGetFieldBlob(a2, v47, &size, &offset) <= 1)
          {
            v52 = size;
            *(v29 + 1432) = size;
            if ((v52 & 0x8000000000000000) != 0)
            {
LABEL_90:
              v7 = "YEC blob allocation";
              v8 = 296;
              goto LABEL_5;
            }

            v53 = *(v29 + 1400);
            if (v53 < v52)
            {
              do
              {
                while (!v53)
                {
                  v53 = 0x4000;
                  if (v52 <= 0x4000)
                  {
                    v55 = (v29 + 1408);
                    v53 = 0x4000;
                    goto LABEL_75;
                  }
                }

                v54 = v53 >> 1;
                if ((v53 & (v53 >> 1)) != 0)
                {
                  v54 = v53 & (v53 >> 1);
                }

                v53 += v54;
              }

              while (v53 < v52);
              v55 = (v29 + 1408);
              if (v53 >= 0x2000000001)
              {
                *__error() = 12;
                goto LABEL_89;
              }

LABEL_75:
              v56 = *v55;
              v57 = realloc(*v55, v53);
              if (v57)
              {
                *(v29 + 1408) = v57;
                *(v29 + 1400) = v53;
                goto LABEL_77;
              }

              free(v56);
LABEL_89:
              *v55 = 0;
              *(v29 + 1392) = 0;
              *(v29 + 1400) = 0;
              goto LABEL_90;
            }
          }

LABEL_77:
          if (*(a1 + 1112))
          {
            result = 0;
            *(a1 + 1096) = v29;
            goto LABEL_8;
          }

          if ((ThreadPoolRunWorker(*(a1 + 1080), v29, v48, v49, v50, v51, v5, v6) & 0x80000000) == 0)
          {
            result = 0;
            goto LABEL_8;
          }

          v7 = "ThreadPoolRunWorker";
          v8 = 302;
          goto LABEL_5;
        }
      }

      v17 = 254;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", v17, 119, "invalid archive", v14, v5, v6, __size);
    goto LABEL_6;
  }

  v7 = "invalid state";
  v8 = 247;
LABEL_5:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteHeader", v8, 119, 0, v7, v5, v6, __size);
LABEL_6:
  v9 = 0;
  atomic_compare_exchange_strong((a1 + 1136), &v9, 1u);
LABEL_7:
  result = 0xFFFFFFFFLL;
LABEL_8:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t verifyDirectoryStreamWriteBlob(uint64_t a1, int a2, void *__src, rsize_t __smax, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 1136)))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1104))
  {
    return 0;
  }

  v11 = *(a1 + 1096);
  if (!v11)
  {
    v17 = "invalid state";
    v18 = 318;
LABEL_41:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAVerifyDirectoryArchiveOutputStream.c", "verifyDirectoryStreamWriteBlob", v18, 119, 0, v17, a7, a8, v32);
    v31 = 0;
    atomic_compare_exchange_strong((a1 + 1136), &v31, 1u);
    return 0xFFFFFFFFLL;
  }

  v14 = *&a2 & 0xFFFFFFLL;
  if ((*&a2 & 0xFFFFFFLL) == 0x434559)
  {
    v15 = 1432;
    v16 = 1392;
  }

  else if (v14 == 5521752)
  {
    v15 = 1416;
    v16 = 1344;
  }

  else
  {
    if (v14 != 4997953)
    {
      goto LABEL_34;
    }

    v15 = 1424;
    v16 = 1368;
  }

  v19 = (v11 + v16);
  v20 = *(v11 + v16);
  v21 = __CFADD__(v20, __smax);
  v22 = v20 + __smax;
  if (v21 || (v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v23 = *(v11 + v15);
  v24 = v19[1];
  if (v24 < v22)
  {
    do
    {
      while (!v24)
      {
        v24 = 0x4000;
        if (v22 <= 0x4000)
        {
          v24 = 0x4000;
          goto LABEL_25;
        }
      }

      v25 = v24 >> 1;
      if ((v24 & (v24 >> 1)) != 0)
      {
        v25 = v24 & (v24 >> 1);
      }

      v24 += v25;
    }

    while (v24 < v22);
    if (v24 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_39;
    }

LABEL_25:
    v26 = v19[2];
    v27 = realloc(v26, v24);
    if (v27)
    {
      v19[1] = v24;
      v19[2] = v27;
      goto LABEL_27;
    }

    free(v26);
LABEL_39:
    v19[1] = 0;
    v19[2] = 0;
    *v19 = 0;
    goto LABEL_40;
  }

LABEL_27:
  v28 = v19[2];
  if (__src)
  {
    memcpy((v28 + *v19), __src, __smax);
  }

  else if (v28)
  {
    memset_s((v28 + *v19), __smax, 0, __smax);
  }

  v29 = *v19 + __smax;
  *v19 = v29;
  if ((__smax & 0x8000000000000000) != 0)
  {
LABEL_40:
    v17 = "blob append";
    v18 = 328;
    goto LABEL_41;
  }

  if (v29 > v23)
  {
    v17 = "blob size mismatch";
    v18 = 329;
    goto LABEL_41;
  }

LABEL_34:
  v30 = *(a1 + 1112) - __smax;
  *(a1 + 1112) = v30;
  if (v30)
  {
    return 0;
  }

  if ((ThreadPoolRunWorker(*(a1 + 1080), v11, __src, __smax, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v17 = "ThreadPoolRunWorker";
    v18 = 337;
    goto LABEL_41;
  }

  result = 0;
  *(a1 + 1096) = 0;
  return result;
}

void workerDataFree(void **a1)
{
  if (a1)
  {
    free(a1[170]);
    memset_s(a1 + 168, 0x18uLL, 0, 0x18uLL);
    free(a1[173]);
    memset_s(a1 + 171, 0x18uLL, 0, 0x18uLL);
    free(a1[176]);
    memset_s(a1 + 174, 0x18uLL, 0, 0x18uLL);
    free(a1[180]);

    free(a1);
  }
}

uint64_t sendMessage(uint64_t a1, uint64_t a2, _BYTE *a3, AAFieldKeySet key_set)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 1048);
  if (v8)
  {
    *a3;
    if (a2 > 72)
    {
      if (a2 == 74)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        *s = 0u;
        v14 = 0u;
        if (key_set)
        {
          AAFieldKeySetSerialize(key_set, 0x80uLL, s);
        }

        fprintf(*MEMORY[0x29EDCA610], "DIFFER  %s (%s)\n");
      }

      else if (v8 != 1)
      {
        fprintf(*MEMORY[0x29EDCA610], "OK      %s\n");
      }
    }

    else if (a2 == 71)
    {
      fprintf(*MEMORY[0x29EDCA610], "REMOVED %s\n");
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "ADDED   %s\n");
    }
  }

  v9 = *(a1 + 1040);
  if (!v9)
  {
    if ((a2 - 71) >= 4)
    {
      result = 0;
      goto LABEL_23;
    }

    result = 0;
    v11 = qword_296AD17C0[(a2 - 71)];
    goto LABEL_21;
  }

  result = v9(*(a1 + 1032), a2, a3, key_set);
  if ((result & 0x80000000) == 0)
  {
    if (a2 == 73)
    {
      v11 = 1176;
    }

    else if (result)
    {
      v11 = 1168;
    }

    else if (a2 == 74)
    {
      result = 0;
      v11 = 1184;
    }

    else
    {
      result = 0;
      if (a2 == 72)
      {
        v11 = 1192;
      }

      else
      {
        if (a2 != 71)
        {
          goto LABEL_23;
        }

        result = 0;
        v11 = 1200;
      }
    }

LABEL_21:
    atomic_fetch_add_explicit((a1 + v11), 1uLL, memory_order_relaxed);
    goto LABEL_23;
  }

  result = 0xFFFFFFFFLL;
LABEL_23:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

size_t PCompressLZMA6Encode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZMADecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, COMPRESSION_LZMA);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t aeaCryptoInit(char *__s, unsigned int *a2)
{
  if (__s)
  {
    memset_s(__s, 0xD0uLL, 0, 0xD0uLL);
  }

  if (!aeaProfileIsValid(*a2))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "aeaCryptoInit", 1400, 94, 0, "Invalid profile", v4, v5, v11);
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *a2;
  *__s = 32;
  *(__s + 9) = HKDFDerive;
  *(__s + 1) = 0x2000000020;
  *(__s + 8) = RNG;
  *(__s + 13) = 32;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 == 5)
        {
          *(__s + 1) = 80;
          *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
          *(__s + 12) = AEADDecrypt_AESCTR_MAC256_KEY640;
          *(__s + 10) = ScryptDerive_KEY256;
          *(__s + 14) = a2[2];
        }

        goto LABEL_21;
      }

      v6 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
    *(__s + 12) = AEADDecrypt_AESCTR_MAC256_KEY640;
    *(__s + 12) = 65;
    *(__s + 13) = DHESender_ECDHE_P256;
    *(__s + 14) = DHERecipient_ECDHE_P256;
    *(__s + 2) = 0x4100000061;
    *(__s + 6) = 32;
    v8 = DerivePublicFromPrivate_ECP256;
    v9 = 160;
  }

  else
  {
    if (!v7)
    {
      *(__s + 1) = 32;
      *(__s + 11) = AEADEncrypt_None_MAC256_KEY256;
      *(__s + 12) = AEADDecrypt_None_MAC256_KEY256;
      *(__s + 15) = Digest_SHA256;
      *(__s + 16) = DSASign_ECDSA_P256;
      *(__s + 17) = DSAVerify_ECDSA_P256;
      *(__s + 28) = xmmword_296AD17F0;
      *(__s + 44) = 0x2000000080;
LABEL_20:
      *(__s + 21) = DerivePublicFromPrivate_ECP256;
      goto LABEL_21;
    }

    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v6 = 1;
    }

    *(__s + 1) = 80;
    *(__s + 11) = AEADEncrypt_AESCTR_MAC256_KEY640;
    v8 = AEADDecrypt_AESCTR_MAC256_KEY640;
    v9 = 96;
  }

  *&__s[v9] = v8;
  if (v6 == 1)
  {
    *(__s + 15) = Digest_SHA256;
    *(__s + 16) = DSASign_ECDSA_P256;
    *(__s + 17) = DSAVerify_ECDSA_P256;
    *(__s + 28) = xmmword_296AD17F0;
    *(__s + 11) = 160;
    *(__s + 18) = AEADEncrypt_AESCTR_MAC256_KEY640;
    *(__s + 19) = AEADDecrypt_AESCTR_MAC256_KEY640;
    goto LABEL_20;
  }

LABEL_21:
  result = 0;
  *(__s + 22) = HMACInit_SHA256;
  *(__s + 23) = HMACUpdate_SHA256;
  *(__s + 24) = HMACFinal_SHA256;
  *(__s + 25) = Digest_SHA256;
  return result;
}

uint64_t HKDFDerive(_DWORD *a1, uint64_t a2, int *a3, int *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 - 257) < 0xFFFFFFFFFFFFFF00 || *a3 == 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", 518, 94, 0, "Invalid KDF parameters", a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  v13 = *a5;
  v14 = *a4;
  if (CCKDFParametersCreateHkdf())
  {
    v18 = "CCKDFParametersCreateHkdf";
    v19 = 529;
  }

  else
  {
    v20 = *a3;
    if (!CCDeriveKey())
    {
      v21 = 0;
      goto LABEL_12;
    }

    v18 = "CCDeriveKey";
    v19 = 535;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HKDFDerive", v19, 94, 0, v18, v16, v17, v22);
  v21 = 1;
LABEL_12:
  *a1 = a2;
  memset_s(a1 + a2 + 4, 256 - a2, 0, 256 - a2);
  if (v21)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return (v21 << 31 >> 31);
}

uint64_t RNG(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "RNG", 218, 94, 0, "generate random bytes", v3, v4, vars0);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t AEADEncrypt_None_MAC256_KEY256(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  if (*a4 == 32)
  {
    if ((HMACDerive_SHA256(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    v10 = "HMAC derivation";
    v11 = 904;
  }

  else
  {
    v10 = "AEAD invalid sizes";
    v11 = 901;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_None_MAC256_KEY256", v11, 94, 0, v10, a7, a8, v12);
  if (a3)
  {
    memset_s(a3, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t AEADDecrypt_None_MAC256_KEY256(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  if (*a4 == 32 && *a3 == 32)
  {
    if ((HMACVerify_SHA256(a3, a4, a1, a2, a5, a6) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "HMAC verification";
    v10 = 924;
  }

  else
  {
    v9 = "AEAD invalid sizes";
    v10 = 921;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_None_MAC256_KEY256", v10, 94, 0, v9, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AEADEncrypt_AESCTR_MAC256_KEY640(char *a1, size_t a2, _DWORD *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(v35, 0, sizeof(v35));
  memset(v32, 0, sizeof(v32));
  memset(v28, 0, sizeof(v28));
  if (*a4 != 80)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", 946, 94, 0, "AEAD invalid sizes", a7, a8, tweakLength);
    result = 0xFFFFFFFFLL;
    goto LABEL_22;
  }

  v30 = *(a4 + 4);
  v31 = *(a4 + 20);
  __s = 32;
  memset_s(v32, 0xE0uLL, 0, 0xE0uLL);
  keyLength_4[0] = *(a4 + 36);
  keyLength_4[1] = *(a4 + 52);
  keyLength = 32;
  memset_s(v35, 0xE0uLL, 0, 0xE0uLL);
  v27 = *(a4 + 68);
  v26 = 16;
  memset_s(v28, 0xF0uLL, 0, 0xF0uLL);
  dataOutMoved = 0;
  cryptorRef = 0;
  v16 = CCCryptorCreateWithMode(0, 4u, 0, 0, &v27, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
  if (!cryptorRef || v16)
  {
    v19 = "Cryptor creation";
    v20 = 968;
  }

  else if (CCCryptorGetOutputLength(cryptorRef, a2, 1) == a2)
  {
    if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
    {
      v19 = "Encryption";
      v20 = 975;
    }

    else if (CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) || dataOutMoved)
    {
      v19 = "Encryption";
      v20 = 977;
    }

    else
    {
      if ((HMACDerive_SHA256(a3, &__s, a1, a2, a5, a6) & 0x80000000) == 0)
      {
        v17 = 0;
        goto LABEL_18;
      }

      v19 = "HMAC";
      v20 = 980;
    }
  }

  else
  {
    v19 = "AEAD can't operate in-place";
    v20 = 971;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADEncrypt_AESCTR_MAC256_KEY640", v20, 94, 0, v19, v14, v15, tweakLengtha);
  v17 = 1;
LABEL_18:
  CCCryptorRelease(cryptorRef);
  memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
  memset_s(&__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v26, 0x104uLL, 0, 0x104uLL);
  if (a3 && v17)
  {
    memset_s(a3, 0x104uLL, 0, 0x104uLL);
  }

  result = (v17 << 31 >> 31);
LABEL_22:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AEADDecrypt_AESCTR_MAC256_KEY640(char *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(v37, 0, sizeof(v37));
  memset(v34, 0, sizeof(v34));
  memset(v30, 0, sizeof(v30));
  if (*a4 == 80)
  {
    v32 = *(a4 + 4);
    v33 = *(a4 + 20);
    __s = 32;
    memset_s(v34, 0xE0uLL, 0, 0xE0uLL);
    keyLength_4[0] = *(a4 + 36);
    keyLength_4[1] = *(a4 + 52);
    keyLength = 32;
    memset_s(v37, 0xE0uLL, 0, 0xE0uLL);
    v29 = *(a4 + 68);
    v28 = 16;
    memset_s(v30, 0xF0uLL, 0, 0xF0uLL);
    if ((HMACVerify_SHA256(a3, &__s, a1, a2, a5, a6) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1057, 94, 0, "HMAC", v14, v15, tweakLength);
      v19 = 0xFFFFFFFFLL;
LABEL_19:
      memset_s(&keyLength, 0x104uLL, 0, 0x104uLL);
      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      memset_s(&v28, 0x104uLL, 0, 0x104uLL);
      goto LABEL_20;
    }

    dataOutMoved = 0;
    cryptorRef = 0;
    v18 = CCCryptorCreateWithMode(1u, 4u, 0, 0, &v29, keyLength_4, keyLength, 0, 0, 0, 0, &cryptorRef);
    if (!cryptorRef || v18)
    {
      v20 = "Cryptor creation";
      v21 = 1074;
    }

    else if (CCCryptorGetOutputLength(cryptorRef, a2, 1) == a2)
    {
      if (CCCryptorUpdate(cryptorRef, a1, a2, a1, a2, &dataOutMoved) || dataOutMoved != a2)
      {
        v20 = "Encryption";
        v21 = 1081;
      }

      else
      {
        if (!CCCryptorFinal(cryptorRef, &a1[a2], 0, &dataOutMoved) && !dataOutMoved)
        {
          v19 = 0;
LABEL_18:
          CCCryptorRelease(cryptorRef);
          goto LABEL_19;
        }

        v20 = "Encryption";
        v21 = 1083;
      }
    }

    else
    {
      v20 = "AEAD can't operate in-place";
      v21 = 1077;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", v21, 94, 0, v20, v16, v17, tweakLengtha);
    v19 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "AEADDecrypt_AESCTR_MAC256_KEY640", 1049, 94, 0, "AEAD invalid sizes", a7, a8, tweakLength);
  v19 = 0xFFFFFFFFLL;
LABEL_20:
  v22 = *MEMORY[0x29EDCA608];
  return v19;
}

uint64_t ScryptDerive_KEY256(_DWORD *a1, uint64_t a2, unint64_t a3, unsigned int a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0x14 || !*a5)
  {
    v14 = "Invalid password/salt";
    v15 = 823;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", v15, 94, 0, v14, a7, a8, v25);
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 4)
  {
    v14 = "Invalid hardness parameter";
    v15 = 832;
    goto LABEL_8;
  }

  v10 = qword_296AD1800[a4];
  v11 = ccscrypt_storage_size();
  if ((v11 & 0x8000000000000000) != 0)
  {
    v17 = "Invalid scrypt parameters";
    v18 = 842;
    v19 = 0;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", v18, 94, v19, v17, v12, v13, v25);
    v21 = 0;
LABEL_17:
    free(v21);
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  if (v11 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_15:
    v19 = *__error();
    v17 = "malloc";
    v18 = 844;
    goto LABEL_16;
  }

  v20 = malloc(v11);
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = v20;
  v22 = *a5;
  if (ccscrypt())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "ScryptDerive_KEY256", 846, 94, 0, "scrypt", v23, v24, 32);
    goto LABEL_17;
  }

  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  free(v21);
  return 0;
}

uint64_t DHESender_ECDHE_P256(void *a1, void *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 != 65)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 581, 94, 0, "ECDHE_P256_Sender invalid sizes", a7, a8, v30);
    return 0xFFFFFFFFLL;
  }

  v11 = MEMORY[0x29C25DE20]();
  v12 = (32 * *v11) | 0x10;
  v13 = 24 * *v11 + 16;
  if (v12 < 0x2000000001)
  {
    v14 = malloc(v12);
  }

  else
  {
    v14 = 0;
    *__error() = 12;
  }

  if (v13 < 0x2000000001)
  {
    v18 = malloc(v13);
    v15 = v18;
    v16 = v14 == 0;
    v17 = v18 == 0;
    if (v14)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v23 = *a3;
      if (ccec_x963_import_pub())
      {
        v27 = "importing public key";
        v28 = 602;
      }

      else
      {
        ccrng();
        v27 = "RNG lookup";
        v28 = 606;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", v28, 94, 0, v27, v25, v26, 32);
      v17 = 0;
LABEL_21:
      memset_s(v14, v12, 0, v12);
      free(v14);
      if (!v17)
      {
        memset_s(v15, v13, 0, v13);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v15 = 0;
    *__error() = 12;
    v16 = v14 == 0;
    v17 = 1;
  }

  v20 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHESender_ECDHE_P256", 599, 94, *v20, "malloc", v21, v22, 32);
  if (!v16)
  {
    goto LABEL_21;
  }

  free(v14);
  if (!v17)
  {
    memset_s(v15, v13, 0, v13);
  }

LABEL_23:
  free(v15);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  if (a2)
  {
    memset_s(a2, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t DHERecipient_ECDHE_P256(void *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 != 97 || *a2 != 65)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 704, 94, 0, "ECDHE_P256_Recipient invalid sizes", a7, a8, v31);
    return 0xFFFFFFFFLL;
  }

  v11 = MEMORY[0x29C25DE20]();
  v12 = 24 * *v11 + 16;
  v13 = (32 * *v11) | 0x10;
  if (v12 < 0x2000000001)
  {
    v14 = malloc(v12);
  }

  else
  {
    v14 = 0;
    *__error() = 12;
  }

  if (v13 < 0x2000000001)
  {
    v19 = malloc(v13);
    v16 = v19;
    v17 = v14 == 0;
    v18 = v19 == 0;
    if (v14)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v24 = *a3;
      if (ccec_x963_import_priv())
      {
        v28 = "importing full key";
        v29 = 725;
      }

      else
      {
        v30 = *a2;
        if (ccec_x963_import_pub())
        {
          v28 = "importing pub key";
          v29 = 728;
        }

        else
        {
          ccrng();
          v28 = "RNG lookup";
          v29 = 732;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", v29, 94, 0, v28, v26, v27, 32);
      v18 = 0;
LABEL_25:
      memset_s(v14, v12, 0, v12);
      free(v14);
      if (!v18)
      {
        memset_s(v16, v13, 0, v13);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v16 = 0;
    *__error() = 12;
    v17 = v14 == 0;
    v18 = 1;
  }

  v21 = __error();
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DHERecipient_ECDHE_P256", 722, 94, *v21, "malloc", v22, v23, 32);
  if (!v17)
  {
    goto LABEL_25;
  }

  free(v14);
  if (!v18)
  {
    memset_s(v16, v13, 0, v13);
  }

LABEL_27:
  free(v16);
  if (a1)
  {
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t DerivePublicFromPrivate_ECP256(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != 97)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1346, 94, 0, "invalid private key size", a7, a8, v19);
    return 0xFFFFFFFFLL;
  }

  v9 = MEMORY[0x29C25DE20]();
  v10 = (32 * *v9) | 0x10;
  if (v10 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_9;
  }

  v11 = malloc((32 * *v9) | 0x10);
  if (!v11)
  {
LABEL_9:
    v15 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1356, 94, *v15, "malloc", v16, v17, v19);
    if (a1)
    {
LABEL_10:
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (ccec_x963_import_priv())
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DerivePublicFromPrivate_ECP256", 1359, 94, 0, "importing private key", v13, v14, v19);
    memset_s(v12, v10, 0, v10);
    free(v12);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  ccec_x963_export();
  *a1 = 65;
  memset_s(a1 + 69, 0xBFuLL, 0, 0xBFuLL);
  memset_s(v12, v10, 0, v10);
  free(v12);
  return 0;
}

uint64_t Digest_SHA256(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  return 0;
}

uint64_t DSASign_ECDSA_P256(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != 97)
  {
    v10 = "invalid private key size";
    v11 = 1154;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", v11, 94, 0, v10, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  if (*a3 != 32)
  {
    v10 = "invalid digest size";
    v11 = 1155;
    goto LABEL_7;
  }

  v9 = (32 * *MEMORY[0x29C25DE20]()) | 0x10;
  if (v9 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_12;
  }

  v13 = malloc(v9);
  if (!v13)
  {
LABEL_12:
    v19 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", 1167, 94, *v19, "malloc", v20, v21, v22);
    if (!a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_18;
  }

  v14 = v13;
  if (ccec_x963_import_priv())
  {
    v17 = "importing private key";
    v18 = 1170;
  }

  else
  {
    v22 = 0x80;
    if (a1)
    {
      memset_s(a1, 0x104uLL, 0, 0x104uLL);
    }

    ccrng();
    v17 = "RNG lookup";
    v18 = 1176;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSASign_ECDSA_P256", v18, 94, 0, v17, v15, v16, v22);
  memset_s(v14, v9, 0, v9);
  free(v14);
  if (a1)
  {
LABEL_18:
    memset_s(a1, 0x104uLL, 0, 0x104uLL);
  }

  return 0xFFFFFFFFLL;
}

uint64_t DSAVerify_ECDSA_P256(unsigned int *a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 128)
  {
    if (*a2 == 65)
    {
      if (*a3 == 32)
      {
        v10 = 24 * *MEMORY[0x29C25DE20]() + 16;
        if (v10 < 0x2000000001)
        {
          v14 = malloc(v10);
          if (v14)
          {
            v15 = v14;
            if (ccec_x963_import_pub())
            {
              v18 = "importing public key";
              v19 = 1267;
            }

            else
            {
              v23 = *a1;
              if (v23 >= 2 && *(a1 + 4) == 48)
              {
                if (*(a1 + 5) + 2 <= v23)
                {
                  v24 = *a3;
                  ccec_verify();
                  v18 = "Signature verification";
                  v19 = 1275;
                }

                else
                {
                  v18 = "Invalid signature";
                  v19 = 1272;
                }
              }

              else
              {
                v18 = "Invalid signature";
                v19 = 1270;
              }
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", v19, 94, 0, v18, v16, v17, v25);
            memset_s(v15, v10, 0, v10);
            goto LABEL_21;
          }
        }

        else
        {
          *__error() = 12;
        }

        v20 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", 1264, 94, *v20, "malloc", v21, v22, v25);
        v15 = 0;
LABEL_21:
        free(v15);
        return 0xFFFFFFFFLL;
      }

      v11 = "invalid digest size";
      v12 = 1253;
    }

    else
    {
      v11 = "Invalid public key size";
      v12 = 1252;
    }
  }

  else
  {
    v11 = "Invalid signature size";
    v12 = 1251;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "DSAVerify_ECDSA_P256", v12, 94, 0, v11, a7, a8, v25);
  return 0xFFFFFFFFLL;
}

CCHmacContext *HMACInit_SHA256(_DWORD *a1)
{
  if (*a1 != 32)
  {
    return 0;
  }

  v2 = malloc(0x180uLL);
  v3 = v2;
  if (v2)
  {
    CCHmacInit(v2, 2u, a1 + 1, 0x20uLL);
  }

  else
  {
    v4 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEACrypto.c", "HMACInit_SHA256", 379, 94, *v4, "malloc", v5, v6, v8);
  }

  return v3;
}

uint64_t HMACUpdate_SHA256(CCHmacContext *a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacUpdate(a1, a2, a3);
  return 0;
}

uint64_t HMACFinal_SHA256(CCHmacContext *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  CCHmacFinal(a1, a2 + 1);
  *a2 = 32;
  memset_s(a2 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(a1, 0x180uLL, 0, 0x180uLL);
  free(a1);
  return 0;
}

uint64_t HMACDerive_SHA256(_DWORD *a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  if (*a2 != 32)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v6;
  v17 = v7;
  memset(&ctx, 0, sizeof(ctx));
  CCHmacInit(&ctx, 2u, a2 + 1, 0x20uLL);
  CCHmacUpdate(&ctx, a5, a6);
  CCHmacUpdate(&ctx, a3, a4);
  data = a6;
  CCHmacUpdate(&ctx, &data, 8uLL);
  CCHmacFinal(&ctx, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&ctx, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t HMACVerify_SHA256(uint64_t a1, _DWORD *a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = *a1 != 32 || *a2 != 32;
  v17 = 0;
  memset(__s, 0, sizeof(__s));
  v8 = HMACDerive_SHA256(__s, a2, a3, a4, a5, a6) < 0;
  v14 = *(&__s[1] + 4);
  v15 = *(__s + 4);
  v12 = *(a1 + 20);
  v13 = *(a1 + 4);
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  v9 = *MEMORY[0x29EDCA608];
  v10 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(v15, v13), vceqq_s64(v14, v12))));
  v10.i16[0] = vmaxv_u16(v10);
  return ((v10.i32[0] | v8 | v7) << 31 >> 31);
}

AAByteStream AEADecryptionInputStreamOpen(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(context + 684) || !*(context + 341))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", 461, 30, 0, "Invalid context", v4, v5, v54);
    v10 = 0;
    v12 = 0;
LABEL_22:
    free(v10);
    aeaInputStreamClose(v12);
    return 0;
  }

  v10 = calloc(1uLL, 0x68uLL);
  v11 = malloc(0x428uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x428uLL, 0, 0x428uLL), !v10))
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 466;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "AEADecryptionInputStreamOpen", v17, 30, v18, v16, v13, v14, v54);
    goto LABEL_22;
  }

  *v12 = encrypted_stream;
  *(v12 + 8) = flags;
  if ((aeaContextUnlock(context, v12 + 144, (v12 + 788), 0, 1, 0) & 0x80000000) != 0)
  {
    v16 = "unlock container";
    v17 = 473;
    goto LABEL_20;
  }

  v15 = (*(v12 + 176) + *(v12 + 160) - 1) / *(v12 + 160);
  if (v15 >= 0xFFFFFFFF)
  {
    v16 = "Invalid data size";
    v17 = 477;
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  *(v12 + 52) = v15;
  *(v12 + 44) = (v15 + *(v12 + 164) - 1) / *(v12 + 164);
  atomic_store(*(context + 341), (v12 + 32));
  if ((aeaCryptoInit((v12 + 216), (v12 + 144)) & 0x80000000) != 0)
  {
    v16 = "Invalid container";
    v17 = 486;
    goto LABEL_20;
  }

  result = aeaContainerOffsetsInit(v12 + 424, (v12 + 144), (v12 + 216));
  if ((result & 0x80000000) != 0)
  {
    v16 = "deriving container offsets";
    v17 = 487;
    goto LABEL_20;
  }

  v20 = *(v12 + 228);
  if (v20 < 0x101)
  {
    v21 = *(context + 340) + *(v12 + 480);
    v22 = *(v12 + 228);
    __memcpy_chk();
    *(v12 + 528) = v20;
    memset_s((v12 + 532 + v20), 256 - v20, 0, 256 - v20);
    v23 = *(v12 + 520);
    *(v12 + 1056) = v23;
    if (v23 < 0x2000000001)
    {
      v25 = malloc(v23);
    }

    else
    {
      v24 = __error();
      v25 = 0;
      *v24 = 12;
    }

    *(v12 + 1048) = v25;
    if (*(v12 + 176) < 0x10000uLL || DefaultNThreads == 1)
    {
      *(v12 + 96) = 0;
      v43 = *(v12 + 168);
      if (v43)
      {
        v44 = aeaEffectiveCompressionAlgorithm(v43);
        v45 = compression_decode_scratch_buffer_size(v44);
        *(v12 + 96) = v45;
      }

      else
      {
        v45 = 0;
      }

      v46 = *(v12 + 160);
      v47 = malloc(v46);
      *(v12 + 72) = v47;
      *(v12 + 80) = malloc(v46);
      if (v45)
      {
        if (v45 < 0x2000000001)
        {
          v49 = malloc(v45);
        }

        else
        {
          v48 = __error();
          v49 = 0;
          *v48 = 12;
          v47 = *(v12 + 72);
        }

        *(v12 + 88) = v49;
      }

      if (!v47 || !*(v12 + 80) || !*(v12 + 1048) || *(v12 + 96) && !*(v12 + 88))
      {
        v18 = *__error();
        v16 = "malloc";
        v17 = 513;
        goto LABEL_21;
      }
    }

    else
    {
      *(v12 + 112) = DefaultNThreads;
      v26 = calloc(DefaultNThreads, 8uLL);
      *(v12 + 120) = v26;
      if (!v26)
      {
        v18 = *__error();
        v16 = "malloc";
        v17 = 520;
        goto LABEL_21;
      }

      v34 = *(v12 + 112);
      if (v34)
      {
        v35 = 0;
        v36 = 8 * v34;
        while (1)
        {
          v37 = malloc(0x240uLL);
          if (!v37)
          {
            v18 = *__error();
            v16 = "malloc";
            v17 = 524;
            goto LABEL_21;
          }

          v38 = v37;
          *(*(v12 + 120) + v35) = v37;
          *v37 = v12;
          v39 = *(v12 + 160);
          v40 = malloc(v39);
          v38[69] = v40;
          v41 = malloc(v39);
          v38[70] = v41;
          if (!v40 || v41 == 0)
          {
            break;
          }

          v35 += 8;
          if (v36 == v35)
          {
            goto LABEL_53;
          }
        }

        v18 = *__error();
        v16 = "malloc";
        v17 = 529;
        goto LABEL_21;
      }

      LODWORD(v39) = *(v12 + 160);
LABEL_53:
      v50 = SharedBufferCreate((2 * v39), v27, v28, v29, v30, v31, v32, v33);
      *(v12 + 104) = v50;
      if (!v50)
      {
        v16 = "creating shared buffer";
        v17 = 532;
        goto LABEL_20;
      }

      v51 = ThreadPipelineCreate(*(v12 + 112), *(v12 + 120), streamWorkerProc, v12, streamConsumerProc, 0);
      *(v12 + 128) = v51;
      if (!v51)
      {
        v16 = "creating pipeline";
        v17 = 534;
        goto LABEL_20;
      }

      if ((createThread((v12 + 136), streamThreadProc, v12, 0) & 0x80000000) != 0)
      {
        v16 = "Stream thread creation";
        v17 = 535;
        goto LABEL_20;
      }
    }

    v52 = *(v12 + 192);
    *(context + 2) = *(v12 + 176);
    *(context + 3) = v52;
    *(context + 8) = *(v12 + 208);
    v53 = *(v12 + 160);
    *context = *(v12 + 144);
    *(context + 1) = v53;
    v10[2] = aeaInputStreamRead;
    v10[7] = aeaInputStreamCancel;
    *v10 = v12;
    v10[1] = aeaInputStreamClose;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t streamWorkerProc(_DWORD *a1)
{
  v1 = *a1;
  if (atomic_load((*a1 + 16)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!a1[142] && (aeaInputStreamDecryptSegment(*a1, a1 + 2, *(a1 + 69), *(a1 + 70)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamWorkerProc", 298, 30, 0, "decrypting segment %u", v5, v6, a1[2]);
    aeaInputStreamCancel(v1, v7, v8, v9, v10, v11, v12, v13, v14);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t streamConsumerProc(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 16)))
  {
    return 0xFFFFFFFFLL;
  }

  if (atomic_load((a1 + 24)))
  {
    return 0;
  }

  if (*(a2 + 568))
  {
    v12 = 0;
    atomic_compare_exchange_strong((a1 + 24), &v12, 1u);
    if (!v12)
    {
      SharedBufferWrite(*(a1 + 104), 0, 0, a4, a5, a6, a7, a8);
    }

    return 0;
  }

  if (SharedBufferWrite(*(a1 + 104), *(a2 + 560), *(a2 + 12), a4, a5, a6, a7, a8) == *(a2 + 12))
  {
    return 0;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamConsumerProc", 321, 30, 0, "SharedBufferWrite", v13, v14, v22);
  aeaInputStreamCancel(a1, v15, v16, v17, v18, v19, v20, v21, v23);
  return 0xFFFFFFFFLL;
}

size_t streamThreadProc(size_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 52))
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = atomic_load((a1 + 16));
      if (v11 || (v12 = atomic_load((a1 + 20))) != 0)
      {
LABEL_13:
        v26 = v10 == 0;
        if (*(a1 + 48) >= *(a1 + 52))
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      Worker = ThreadPipelineGetWorker(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
      if (!Worker)
      {
        v40 = "getting worker from pipeline";
        v41 = 263;
        goto LABEL_26;
      }

      v14 = Worker;
      *(Worker + 568) = 0;
      memset_s((Worker + 8), 0x220uLL, 0, 0x220uLL);
      if ((aeaInputStreamLoadSegment(a1, (v14 + 8), *(v14 + 552), v15, v16, v17, v18, v19) & 0x80000000) != 0)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      *(a1 + 64) = *(a1 + 68);
      if ((ThreadPipelineRunWorker(*(a1 + 128), v14, v20, v21, v22, v23, v24, v25) & 0x80000000) != 0)
      {
        v40 = "running worker";
        v41 = 269;
        goto LABEL_26;
      }

      if (++v9 >= *(a1 + 52))
      {
        goto LABEL_13;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", 266, 30, 0, "loading segment", v24, v25, v43);
LABEL_10:
    memset_s((v14 + 8), 0x220uLL, 0, 0x220uLL);
    v10 = 0;
    goto LABEL_11;
  }

  v26 = 0;
LABEL_16:
  if ((aeaInputStreamAuthenticatePadding(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v40 = "authenticating padding";
    v41 = 275;
  }

  else
  {
LABEL_17:
    v27 = ThreadPipelineGetWorker(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
    if (v27)
    {
      v28 = v27;
      *(v27 + 568) = 1;
      memset_s((v27 + 8), 0x220uLL, 0, 0x220uLL);
      if ((ThreadPipelineRunWorker(*(a1 + 128), v28, v29, v30, v31, v32, v33, v34) & 0x80000000) == 0)
      {
        if (!v26)
        {
          return a1;
        }

        goto LABEL_27;
      }

      v40 = "running worker";
      v41 = 283;
    }

    else
    {
      v40 = "getting worker from pipeline";
      v41 = 280;
    }
  }

LABEL_26:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "streamThreadProc", v41, 30, 0, v40, a7, a8, v43);
LABEL_27:
  aeaInputStreamCancel(a1, v35, v36, v37, v38, v39, a7, a8, v43);
  return a1;
}

uint64_t aeaInputStreamRead(size_t a1, uint64_t __dst, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x29EDCA608];
  if (atomic_load((a1 + 16)))
  {
    goto LABEL_2;
  }

  v12 = a3;
  if (!a3)
  {
    goto LABEL_22;
  }

  v13 = __dst;
  v15 = *(a1 + 104);
  if (v15)
  {
    v9 = SharedBufferRead(v15, __dst, a3);
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    v18 = "Multi-thread read";
    v19 = 353;
    goto LABEL_8;
  }

  v9 = 0;
  v27 = *(a1 + 64);
  do
  {
    v28 = *(a1 + 68);
    if (v27 >= v28)
    {
      if (*(a1 + 48) >= *(a1 + 52))
      {
        break;
      }

      bzero(__s, 0x220uLL);
      if ((aeaInputStreamLoadSegment(a1, __s, *(a1 + 72), v29, v30, v31, v32, v33) & 0x80000000) != 0)
      {
        v18 = "Segment load";
        v19 = 365;
        goto LABEL_8;
      }

      if ((aeaInputStreamDecryptSegment(a1, __s, *(a1 + 72), *(a1 + 80)) & 0x80000000) != 0)
      {
        v18 = "Segment decrypt";
        v19 = 366;
        goto LABEL_8;
      }

      memset_s(__s, 0x220uLL, 0, 0x220uLL);
      v27 = *(a1 + 64);
      v28 = *(a1 + 68);
    }

    v34 = v28 - v27;
    if (!v34)
    {
      break;
    }

    v35 = v34 >= v12 ? v12 : v34;
    memcpy(v13, (*(a1 + 80) + v27), v35);
    v9 += v35;
    v13 += v35;
    v27 = *(a1 + 64) + v35;
    *(a1 + 64) = v27;
    v12 -= v35;
  }

  while (v12);
  if (v9)
  {
    goto LABEL_3;
  }

  if (atomic_load((a1 + 28)))
  {
LABEL_22:
    v9 = 0;
    goto LABEL_3;
  }

  if ((aeaInputStreamAuthenticatePadding(a1, __dst, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    v37 = 0;
    v9 = 0;
    atomic_compare_exchange_strong((a1 + 28), &v37, 1u);
    goto LABEL_3;
  }

  v18 = "Padding authentication";
  v19 = 385;
LABEL_8:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamRead", v19, 30, 0, v18, v16, v17, v38);
  aeaInputStreamCancel(a1, v20, v21, v22, v23, v24, v25, v26, v39);
LABEL_2:
  v9 = -1;
LABEL_3:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

size_t aeaInputStreamCancel(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = 0;
  atomic_compare_exchange_strong((result + 16), &v10, 1u);
  if (!v10)
  {
    v11 = result;
    AAByteStreamCancel(*result);
    result = *(v11 + 104);
    if (result)
    {

      return SharedBufferAbort(result, v12, v13, v14, v15, v16, v17, v18, a9);
    }
  }

  return result;
}

uint64_t aeaInputStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 136))
    {
      v2 = 0;
      atomic_compare_exchange_strong((result + 20), &v2, 1u);
        ;
      }

      joinThread(*(v1 + 136));
    }

    ThreadPipelineDestroy(*(v1 + 128));
    SharedBufferDestroy(*(v1 + 104));
    v5 = *(v1 + 120);
    if (v5)
    {
      v6 = *(v1 + 112);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v8 = *(*(v1 + 120) + 8 * i);
          if (v8)
          {
            free(v8[69]);
            free(v8[70]);
            free(v8);
            v6 = *(v1 + 112);
          }
        }

        v5 = *(v1 + 120);
      }

      free(v5);
    }

    v9 = atomic_load((v1 + 16));
    if (v9)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamClose", 438, 30, 0, "Stream processing cancelled", v3, v4, v14);
    }

    v10 = *(v1 + 1048);
    if (v10)
    {
      memset_s(*(v1 + 1048), *(v1 + 1056), 0, *(v1 + 1056));
    }

    free(v10);
    v11 = *(v1 + 72);
    if (v11)
    {
      memset_s(*(v1 + 72), *(v1 + 160), 0, *(v1 + 160));
    }

    free(v11);
    v12 = *(v1 + 80);
    if (v12)
    {
      memset_s(*(v1 + 80), *(v1 + 160), 0, *(v1 + 160));
    }

    free(v12);
    v13 = *(v1 + 88);
    if (v13)
    {
      memset_s(*(v1 + 88), *(v1 + 96), 0, *(v1 + 96));
    }

    free(v13);
    memset_s(v1, 0x428uLL, 0, 0x428uLL);
    free(v1);
    if (v9)
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

uint64_t aeaInputStreamDecryptSegment(uint64_t a1, unsigned int *a2, const uint8_t *a3, uint8_t *a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v7 = a2[2];
  v8 = *a2;
  v9 = *(a1 + 164);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  memset(&__s[8], 0, 252);
  memset(v40, 0, 260);
  *&__s[8] = 19267;
  *__s = 0x5F41454100000006;
  memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
  *&__s[*__s + 4] = v8 / v9;
  *__s = 10;
  memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
  v10 = *(a1 + 288);
  if (v10 && *(a1 + 788))
  {
    v11 = v10(v38, *(a1 + 216));
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
    v12 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    memset_s(__s, 0x104uLL, 0, 0x104uLL);
  }

  v12 = 1;
LABEL_8:
  memset(v40 + 8, 0, 224);
  memset(&v40[14] + 8, 0, 28);
  WORD4(v40[0]) = 19283;
  *&v40[0] = 0x5F41454100000006;
  memset_s(v40 + 10, 0xFAuLL, 0, 0xFAuLL);
  v13 = LODWORD(v40[0]);
  if (LODWORD(v40[0]) >= 0xFD)
  {
    __break(1u);
  }

  *(v40 + LODWORD(v40[0]) + 4) = v8 % v9;
  LODWORD(v40[0]) = v13 + 4;
  memset_s(v40 + v13 + 8, 252 - v13, 0, 252 - v13);
  memset(__s, 0, sizeof(__s));
  v14 = *(a1 + 288);
  if (!v14 || !LODWORD(v38[0]))
  {
    memset_s(v40, 0x104uLL, 0, 0x104uLL);
    goto LABEL_23;
  }

  v15 = v14(v36, *(a1 + 220), v38, v40, __s);
  memset_s(v40, 0x104uLL, 0, 0x104uLL);
  if (v15 < 0)
  {
LABEL_23:
    memset_s(v38, 0x104uLL, 0, 0x104uLL);
    goto LABEL_24;
  }

  memset_s(v38, 0x104uLL, 0, 0x104uLL);
  if (v12)
  {
LABEL_24:
    v26 = "derivating segment key";
    v27 = 122;
    goto LABEL_25;
  }

  v18 = *(a1 + 312);
  if (v18 && a2[71] == *(a1 + 228) && (v18(a3, v7) & 0x80000000) == 0)
  {
    v19 = *(a1 + 168);
    v20 = a2[1];
    if (v19 && (v21 = a2[2], v20 > v21))
    {
      if (v19 == 774)
      {
        v22 = PCompressLZMADecode(a4, *(a1 + 160), a3, v21);
        if (v22 >= 0)
        {
          v25 = v22;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v31 = aeaEffectiveCompressionAlgorithm(v19);
        v25 = compression_decode_buffer(a4, *(a1 + 160), a3, a2[2], *(a1 + 88), v31);
      }
    }

    else
    {
      memcpy(a4, a3, v20);
      v25 = a2[1];
    }

    if (v25 == a2[1])
    {
      if ((aeaChecksum(v34, *(a1 + 156), a4, v25, v23, v24, v16, v17) & 0x80000000) == 0)
      {
        v28 = 0;
        goto LABEL_26;
      }

      v26 = "computing segment checksum";
      v27 = 151;
    }

    else
    {
      v26 = "Segment decompression";
      v27 = 148;
    }
  }

  else
  {
    v26 = "decrypting segment";
    v27 = 125;
  }

LABEL_25:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamDecryptSegment", v27, 30, 0, v26, v16, v17, v32);
  v28 = 0xFFFFFFFFLL;
LABEL_26:
  memset_s(v36, 0x104uLL, 0, 0x104uLL);
  memset_s(v34, 0x104uLL, 0, 0x104uLL);
  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t aeaInputStreamLoadSegment(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = *MEMORY[0x29EDCA608];
  if (*(result + 64) < *(result + 68))
  {
    v8 = "Truncated segment";
    v9 = 168;
LABEL_3:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamLoadSegment", v9, 30, 0, v8, a7, a8, v42[0]);
    result = 0xFFFFFFFFLL;
LABEL_15:
    v19 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = result;
  if (*(result + 48) >= *(result + 52))
  {
    result = 0;
    goto LABEL_15;
  }

  v13 = *(result + 60);
  if (*(result + 56) >= v13)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    if (*(result + 40) >= *(result + 44))
    {
LABEL_38:
      if (!v13)
      {
LABEL_40:
        v8 = "Invalid state";
        v9 = 177;
        goto LABEL_3;
      }

      goto LABEL_39;
    }

    v14 = *result;
    v15 = *(result + 520);
    if (*(*result + 16))
    {
      if (!v15)
      {
        goto LABEL_20;
      }

      v16 = 0;
      v17 = *(result + 1048);
      while (1)
      {
        v18 = (*(v14 + 16))(*v14, v17, v15);
        if (v18 < 0)
        {
          break;
        }

        if (v18)
        {
          v17 += v18;
          v16 += v18;
          v15 -= v18;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v16 = v18;
LABEL_18:
      v15 = *(v10 + 520);
    }

    else
    {
      v16 = -1;
    }

    if (v16 != v15)
    {
      v24 = "loading cluster header";
      v25 = 86;
      goto LABEL_57;
    }

LABEL_20:
    atomic_fetch_add((v10 + 32), v15);
    v20 = *(v10 + 40);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    memset(&__s[8], 0, 252);
    memset(v46, 0, 260);
    *&__s[8] = 19267;
    memset_s(&__s[10], 0xFAuLL, 0, 0xFAuLL);
    *&__s[10] = v20;
    *__s = 0x5F4145410000000ALL;
    memset_s(&__s[14], 0xF6uLL, 0, 0xF6uLL);
    v21 = *(v10 + 288);
    if (v21 && *(v10 + 788))
    {
      v22 = v21(v44, *(v10 + 216));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v23 = 0;
      if ((v22 & 0x80000000) == 0)
      {
LABEL_27:
        memset(v46 + 12, 0, 248);
        *(v46 + 4) = 0x4B4548435F414541;
        LODWORD(v46[0]) = 8;
        memset_s(v46 + 12, 0xF8uLL, 0, 0xF8uLL);
        memset(__s, 0, sizeof(__s));
        v26 = *(v10 + 288);
        if (v26 && LODWORD(v44[0]))
        {
          v27 = v26(v42, *(v10 + 220), v44, v46, __s);
          memset_s(v46, 0x104uLL, 0, 0x104uLL);
          if ((v27 & 0x80000000) == 0)
          {
            memset_s(v44, 0x104uLL, 0, 0x104uLL);
            if (!v23)
            {
              v28 = *(v10 + 312);
              if (v28)
              {
                if (*(v10 + 528) == *(v10 + 228))
                {
                  result = v28(*(v10 + 1048), *(v10 + 504), v10 + 528, v42, *(v10 + 1048) + *(v10 + 504), *(v10 + 520) - *(v10 + 504));
                  if ((result & 0x80000000) == 0)
                  {
                    v29 = *(v10 + 228);
                    if (v29 >= 0x101)
                    {
                      goto LABEL_63;
                    }

                    memcpy((v10 + 532), (*(v10 + 1048) + *(v10 + 504)), *(v10 + 228));
                    *(v10 + 528) = v29;
                    memset_s((v10 + 532 + v29), 256 - v29, 0, 256 - v29);
                    ++*(v10 + 40);
                    v30 = *(v10 + 164);
                    if (v30 >= *(v10 + 52) - *(v10 + 48))
                    {
                      v30 = *(v10 + 52) - *(v10 + 48);
                    }

                    *(v10 + 56) = 0;
                    *(v10 + 60) = v30;
                    *(v10 + 64) = 0;
                    result = memset_s(v42, 0x104uLL, 0, 0x104uLL);
                    v13 = *(v10 + 60);
                    goto LABEL_38;
                  }
                }
              }

              v24 = "decrypting cluster";
              v25 = 95;
LABEL_57:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamUnlockCluster", v25, 30, 0, v24, a7, a8, v42[0]);
              memset_s(v42, 0x104uLL, 0, 0x104uLL);
              v8 = "unlocking next cluster";
              v9 = 174;
              goto LABEL_3;
            }

LABEL_56:
            v24 = "derivating cluster key";
            v25 = 90;
            goto LABEL_57;
          }
        }

        else
        {
          memset_s(v46, 0x104uLL, 0, 0x104uLL);
        }

        memset_s(v44, 0x104uLL, 0, 0x104uLL);
        goto LABEL_56;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v23 = 1;
    goto LABEL_27;
  }

LABEL_39:
  if (v13 > *(v10 + 164))
  {
    goto LABEL_40;
  }

  v31 = *(v10 + 496) + *(v10 + 56) * (*(v10 + 192) + 8);
  *a2 = *(v10 + 48);
  a2[1] = *(*(v10 + 1048) + v31);
  a2[2] = *(*(v10 + 1048) + v31 + 4);
  v32 = *(v10 + 192);
  if (v32 < 0x101)
  {
    memcpy(a2 + 7, (*(v10 + 1048) + v31 + 8), *(v10 + 192));
    a2[6] = v32;
    result = memset_s(a2 + v32 + 28, 256 - v32, 0, 256 - v32);
    v33 = *(v10 + 228);
    if (v33 < 0x101)
    {
      memcpy(a2 + 72, (*(v10 + 1048) + *(v10 + 512) + (*(v10 + 56) * v33)), *(v10 + 228));
      a2[71] = v33;
      memset_s(a2 + v33 + 288, 256 - v33, 0, 256 - v33);
      v34 = a2[1];
      v35 = *(v10 + 160);
      if (v34 > v35 || (v36 = a2[2], v36 > v34) || v36 > v35)
      {
        v8 = "Invalid segment sizes";
        v9 = 194;
      }

      else
      {
        v37 = *v10;
        if (*(*v10 + 16))
        {
          v38 = 0;
          if (v36)
          {
            v39 = a2[2];
            while (1)
            {
              v40 = (*(v37 + 16))(*v37, a3, v39);
              if (v40 < 0)
              {
                break;
              }

              if (v40)
              {
                a3 += v40;
                v38 += v40;
                v39 -= v40;
                if (v39)
                {
                  continue;
                }
              }

              goto LABEL_59;
            }

            v38 = v40;
          }

LABEL_59:
          if (v38 == v36)
          {
            result = 0;
            atomic_fetch_add((v10 + 32), v36);
            ++*(v10 + 48);
            ++*(v10 + 56);
            v41 = a2[1];
            *(v10 + 64) = 0;
            *(v10 + 68) = v41;
            goto LABEL_15;
          }
        }

        v8 = "reading segment data";
        v9 = 198;
      }

      goto LABEL_3;
    }
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t aeaInputStreamAuthenticatePadding(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x29EDCA608];
  if (*(a1 + 12) >= *(a1 + 13))
  {
    v11 = atomic_load(a1 + 4);
    v12 = a1[23];
    if (v11 > v12)
    {
      v8 = "Invalid container offset";
      v9 = 221;
      goto LABEL_5;
    }

    v17 = atomic_load(a1 + 4);
    v18 = v12 - v17;
    if (v12 == v17)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_7;
    }

    v13 = malloc(0x100000uLL);
    if (!v13)
    {
      v31 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 227, 30, *v31, "malloc", v32, v33, v39);
      goto LABEL_6;
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    __s = 0u;
    v44 = 0u;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    if (a1[49] && (*(v41 + 7) = 1262571615, *&v41[0] = 0x5F41454100000007, memset_s((v41 | 0xB), 0xF9uLL, 0, 0xF9uLL), (v19 = a1[36]) != 0) && *(a1 + 197) && (v19(&__s, *(a1 + 54)) & 0x80000000) == 0)
    {
      v20 = (a1[49])(&__s);
    }

    else
    {
      v20 = 0;
    }

    memset_s(&__s, 0x104uLL, 0, 0x104uLL);
    memset_s(v41, 0x104uLL, 0, 0x104uLL);
    if (v20)
    {
      v40 = v20;
      v23 = 1;
      do
      {
        if (v18 >= 0x100000)
        {
          v24 = 0x100000;
        }

        else
        {
          v24 = v18;
        }

        v25 = *a1;
        if (!*(*a1 + 16))
        {
          goto LABEL_38;
        }

        v26 = 0;
        v27 = v13;
        v28 = v24;
        while (1)
        {
          v29 = (*(v25 + 16))(*v25, v27, v28);
          if (v29 < 0)
          {
            break;
          }

          if (v29)
          {
            v27 += v29;
            v26 += v29;
            v28 -= v29;
            if (v28)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        v26 = v29;
LABEL_29:
        if (v26 != v24)
        {
LABEL_38:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 239, 30, 0, "reading padding", v21, v22, v39);
          v14 = 0xFFFFFFFFLL;
          goto LABEL_39;
        }

        v30 = a1[50];
        if (!v30 || (v30(v40, v13, v24) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", 240, 30, 0, "authenticating padding", v21, v22, v39);
          v23 = 0;
        }

        atomic_fetch_add(a1 + 4, v24);
        v18 -= v24;
      }

      while (v18);
      if (v23)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

LABEL_39:
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      __s = 0u;
      v44 = 0u;
      v34 = a1[51];
      if (v34)
      {
        if (*(a1 + 132) == *(a1 + 57) && (v34(v40, &__s) & 0x80000000) == 0 && __s == *(a1 + 57))
        {
          if (__s < 8)
          {
            goto LABEL_51;
          }

          v35 = 0;
          v36 = 0;
          do
          {
            v36 |= *(&__s + v35 * 8 + 4) ^ *(&a1[v35 + 66] + 4);
            v37 = v35 * 8 + 16;
            ++v35;
          }

          while (v37 <= __s);
          if (!v36)
          {
LABEL_51:
            memset_s(&__s, 0x104uLL, 0, 0x104uLL);
            goto LABEL_50;
          }
        }
      }

      memset_s(&__s, 0x104uLL, 0, 0x104uLL);
      v38 = 245;
    }

    else
    {
      v38 = 230;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", v38, 30, 0, "authenticating padding", v21, v22, v39);
    v14 = 0xFFFFFFFFLL;
LABEL_50:
    memset_s(v13, 0x100000uLL, 0, 0x100000uLL);
    goto LABEL_7;
  }

  v8 = "Invalid state";
  v9 = 220;
LABEL_5:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEASequentialDecryptionStream.c", "aeaInputStreamAuthenticatePadding", v9, 30, 0, v8, a7, a8, v39);
  v13 = 0;
LABEL_6:
  v14 = 0xFFFFFFFFLL;
LABEL_7:
  free(v13);
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

void *aaCacheStreamOpen(AAByteStream_impl *a1, unint64_t a2, int a3, int a4, unint64_t a5)
{
  v10 = calloc(1uLL, 0x68uLL);
  v11 = calloc(1uLL, 0x70uLL);
  v14 = v11;
  if (!v10 || !v11)
  {
    v18 = *__error();
    v16 = "aaCalloc";
    v17 = 472;
LABEL_18:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamOpen", v17, 146, v18, v16, v12, v13, v35);
    free(v10);
    aaCacheStreamClose(v14, v27, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  *v11 = a1;
  v11[26] = a4;
  v11[27] = a5 >> 62;
  v15 = ((1 << a3) - 1);
  v11[23] = 1 << a3;
  v11[24] = v15;
  v11[21] = (v15 | a2) >> a3;
  v11[22] = a3;
  if (a2 - 1073741825 <= 0xFFFFFFFFBFFFFFFFLL)
  {
    v16 = "cache too big";
    v17 = 484;
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v19 = AAByteStreamSeek(a1, 0, 2);
  *(v14 + 24) = v19;
  *(v14 + 32) = v19;
  if (v19 < 0)
  {
    v16 = "AAByteStreamSeek";
    v17 = 488;
    goto LABEL_17;
  }

  v20 = *(v14 + 84);
  if (v20 >= 0xCCCCCCCD)
  {
    *__error() = 12;
    *(v14 + 72) = 0;
LABEL_16:
    v16 = "aaCalloc";
    v17 = 492;
    goto LABEL_17;
  }

  v21 = calloc(v20, 0x28uLL);
  *(v14 + 72) = v21;
  if (!v21)
  {
    goto LABEL_16;
  }

  if (*(v14 + 84))
  {
    v22 = 0;
    v23 = 0;
    v24 = *(v14 + 92);
    while (1)
    {
      v25 = calloc(1uLL, v24);
      v26 = *(v14 + 72) + v22;
      *(v26 + 16) = v25;
      if (!v25)
      {
        break;
      }

      bzero(v25, *(v14 + 92));
      *v26 = -1;
      v24 = *(v14 + 92);
      *(v26 + 28) = 0;
      *(v26 + 32) = 0;
      *(v26 + 24) = v24;
      ++v23;
      v22 += 40;
      if (v23 >= *(v14 + 84))
      {
        goto LABEL_15;
      }
    }

    v16 = "aaCalloc";
    v17 = 498;
    goto LABEL_17;
  }

LABEL_15:
  AACustomByteStreamSetData(v10, v14);
  AACustomByteStreamSetSeekProc(v10, aaCacheStreamSeek);
  AACustomByteStreamSetPReadProc(v10, aaCacheStreamPRead);
  AACustomByteStreamSetPWriteProc(v10, aaCacheStreamPWrite);
  AACustomByteStreamSetReadProc(v10, aaCacheStreamRead);
  AACustomByteStreamSetWriteProc(v10, aaCacheStreamWrite);
  AACustomByteStreamSetCancelProc(v10, aaCacheStreamCancel);
  AACustomByteStreamSetCloseProc(v10, aaCacheStreamClose);
  v10[8] = aaCacheStreamTruncate;
  return v10;
}

uint64_t aaCacheStreamSeek(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 100))
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = 16;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_11;
        }

        v9 = 24;
      }

      a2 += *(a1 + v9);
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a1 + 16) = a2;
      return a2;
    }

LABEL_11:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamSeek", 392, 146, 0, "bad seek", a7, a8, v8);
    return -1;
  }

  return -1;
}

uint64_t aaCacheStreamPRead(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v9 = a4;
  v11 = *(a1 + 24);
  v12 = v11 <= a4;
  v13 = v11 - a4;
  if (v12)
  {
    return 0;
  }

  if (v13 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13;
  }

  if (v14)
  {
    v8 = 0;
    while (1)
    {
      v16 = *(a1 + 96);
      if (*(a1 + 92) - (v9 & v16) >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(a1 + 92) - (v9 & v16);
      }

      v18 = cachePageGet(a1, v9 & ~v16, a3, a4, a5, a6, a7, a8);
      if (!v18)
      {
        v29 = "cachePageGet";
        v30 = 224;
        goto LABEL_25;
      }

      v25 = v18;
      v26 = v16 & v9;
      if ((v26 < *(v18 + 24) || (v26 + v17) > *(v18 + 28)) && (cachePageReadFromDisk(a1, v18, v19, v20, v21, v22, v23, v24) & 0x80000000) != 0)
      {
        break;
      }

      memcpy(a2, (*(v25 + 16) + v26), v17);
      ++*(a1 + 40);
      v27 = *(a1 + 8) + 1;
      *(a1 + 8) = v27;
      *(v25 + 8) = v27;
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v8 += v17;
      a2 += v17;
      v9 += v17;
      v14 -= v17;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    v29 = "cachePageReadFromDisk";
    v30 = 229;
LABEL_25:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheRead", v30, 146, 0, v29, v23, v24, v31);
LABEL_26:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPRead", 313, 146, 0, "cacheRead", a7, a8, v31);
    return -1;
  }

  v8 = 0;
LABEL_21:
  *(a1 + 16) = v9;
  return v8;
}

uint64_t aaCacheStreamPWrite(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return -1;
  }

  v8 = a4;
  v9 = a3;
  if (a3)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(a1 + 96);
      if (*(a1 + 92) - (v8 & v13) >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = *(a1 + 92) - (v8 & v13);
      }

      v15 = cachePageGet(a1, v8 & ~v13, a3, a4, a5, a6, a7, a8);
      if (!v15)
      {
        v30 = "cachePageGet";
        v31 = 254;
        goto LABEL_27;
      }

      v22 = v15;
      v23 = v13 & v8;
      v24 = v23 + v14;
      v25 = *(v15 + 24);
      v26 = *(v15 + 28);
      if (v25 < v26)
      {
        v27 = v24 < v25 || v23 > v26;
        if (v27 && (cachePageReadFromDisk(a1, v15, v16, v17, v18, v19, v20, v21) & 0x80000000) != 0)
        {
          break;
        }
      }

      memcpy((*(v22 + 16) + v23), a2, v14);
      ++*(a1 + 48);
      if (v23 < *(v22 + 24))
      {
        *(v22 + 24) = v23;
      }

      if (v24 > *(v22 + 28))
      {
        *(v22 + 28) = v24;
      }

      v28 = *(a1 + 8) + 1;
      *(a1 + 8) = v28;
      *(v22 + 8) = v28;
      *(v22 + 32) = 1;
      v29 = v8 + v14;
      if (*(a1 + 24) < v29)
      {
        *(a1 + 24) = v29;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v12 += v14;
      a2 += v14;
      v8 += v14;
      v9 -= v14;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    v30 = "cachePageReadFromDisk";
    v31 = 262;
LABEL_27:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheWrite", v31, 146, 0, v30, v20, v21, v33);
LABEL_28:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamPWrite", 346, 146, 0, "cacheWrite", a7, a8, v33);
    return -1;
  }

  v12 = 0;
LABEL_25:
  *(a1 + 16) = v8;
  return v12;
}

uint64_t aaCacheStreamClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 72))
    {
      if ((cacheFlush(result, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 440, 146, 0, "cacheFlush", v9, v10, v18);
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      if (*(v8 + 84))
      {
        v12 = 0;
        v13 = 16;
        do
        {
          free(*(*(v8 + 72) + v13));
          ++v12;
          v13 += 40;
        }

        while (v12 < *(v8 + 84));
      }

      free(*(v8 + 72));
    }

    else
    {
      v11 = 1;
    }

    if (*(v8 + 104) && AAByteStreamClose(*v8) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamClose", 446, 146, 0, "AAByteStreamClose", v14, v15, v18);
      v11 = 0;
    }

    if (*(v8 + 108) >= 1)
    {
      v16 = *(v8 + 56);
      v17 = *(v8 + 64);
      fprintf(*MEMORY[0x29EDCA610], "CacheStream: read ops %zu/%zu, write ops %zu/%zu\n", v16, *(v8 + 40), v17, *(v8 + 48));
    }

    free(v8);
    if (v11)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aaCacheStreamTruncate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v8;
  if ((cacheFlush(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    v14 = "cacheFlush";
    v15 = 411;
  }

  else
  {
    if ((AAByteStreamTruncate(*a1) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 24) = a2;
      *(a1 + 32) = a2;
      return result;
    }

    v14 = "AAByteStreamTruncate";
    v15 = 412;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "aaCacheStreamTruncate", v15, 146, 0, v14, v12, v13, v16);
  return 0xFFFFFFFFLL;
}

uint64_t cachePageGet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 72);
  v9 = *(a1 + 84) - 1;
  v10 = v9 & ((0x16069317E428CA9 * a2) >> 32);
  v11 = v8 + 40 * v10;
  if (*v11 != a2)
  {
    v14 = v10 & 0xFFFFFC00;
    v15 = v10 | 0x3FF;
    if (v15 >= v9)
    {
      v15 = *(a1 + 84) - 1;
    }

    if (v14 <= v15)
    {
      v16 = v14;
      while (1)
      {
        v17 = (v8 + 40 * v14);
        if (*v17 == a2)
        {
          break;
        }

        if (v17[1] < *(v8 + 40 * v16 + 8))
        {
          v16 = v14;
        }

        if (++v14 > v15)
        {
          goto LABEL_11;
        }
      }
    }

    v16 = v14;
LABEL_11:
    v18 = *(v11 + 32);
    v20 = *v11;
    v19 = *(v11 + 16);
    v21 = v8 + 40 * v16;
    v22 = *(v21 + 32);
    v23 = *(v21 + 16);
    *v11 = *v21;
    *(v11 + 16) = v23;
    *(v11 + 32) = v22;
    v24 = *(a1 + 72) + 40 * v16;
    *v24 = v20;
    *(v24 + 16) = v19;
    *(v24 + 32) = v18;
    if (*v11 != a2)
    {
      if ((cachePageEvict(a1, v11, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageGet", 162, 146, 0, "cachePageEvict", v25, v26, v29);
        return 0;
      }

      else
      {
        bzero(*(v11 + 16), *(a1 + 92));
        v27 = *(a1 + 92);
        *(v11 + 28) = 0;
        *(v11 + 32) = 0;
        *(v11 + 24) = v27;
        *v11 = a2;
      }
    }
  }

  return v11;
}

uint64_t cachePageReadFromDisk(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 6);
  v10 = *(a2 + 7);
  if (v10 >= v11)
  {
    v12 = v10 - v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a2 + 8);
  if (v10 <= v11 || v13 == 0)
  {
    v15 = 0;
  }

  else
  {
    v16 = malloc(v12);
    v15 = v16;
    if (!v16)
    {
      v24 = "aaMalloc";
      v25 = 184;
LABEL_33:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageReadFromDisk", v25, 146, 0, v24, a7, a8, v30);
      v27 = 0xFFFFFFFFLL;
      goto LABEL_34;
    }

    memcpy(v16, (a2[2] + v11), v12);
  }

  v17 = *a2;
  if (a1[4] - *a2 >= *(a1 + 23))
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[4] - *a2;
  }

  if (v18 < 1)
  {
    goto LABEL_26;
  }

  v19 = *a1;
  if (!*(*a1 + 32))
  {
    goto LABEL_32;
  }

  v31 = v10;
  v32 = v12;
  v20 = 0;
  v21 = a2[2];
  v22 = v18;
  while (1)
  {
    v23 = (*(v19 + 32))(*v19, v21, v22, v17);
    if (v23 < 0)
    {
      break;
    }

    if (v23)
    {
      v21 += v23;
      v20 += v23;
      v17 += v23;
      v22 -= v23;
      if (v22)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  v20 = v23;
LABEL_24:
  v12 = v32;
  v10 = v31;
  if (v18 != v20)
  {
LABEL_32:
    v24 = "AAByteStreamPRead";
    v25 = 193;
    goto LABEL_33;
  }

  ++a1[7];
  v13 = *(a2 + 8);
LABEL_26:
  if (v10 > v11 && v13 != 0)
  {
    memcpy((a2[2] + *(a2 + 6)), v15, v12);
  }

  v27 = 0;
  v28 = *(a1 + 23);
  *(a2 + 6) = 0;
  *(a2 + 7) = v28;
LABEL_34:
  free(v15);
  return v27;
}

uint64_t cachePageEvict(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 25))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 32))
  {
    return 0;
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 28);
  if (v11 <= v10)
  {
    return 0;
  }

  v24 = v8;
  v13 = *a2 + v10;
  v14 = v11 - v10;
  if (v14 >= a1[3] - v13)
  {
    v15 = a1[3] - v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0)
  {
    v22 = "bad page";
    v23 = 87;
LABEL_21:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cachePageEvict", v23, 146, 0, v22, a7, a8, v24);
    return 0xFFFFFFFFLL;
  }

  v16 = *a1;
  if (!*(*a1 + 40))
  {
    goto LABEL_20;
  }

  v17 = 0;
  v18 = *(a2 + 16) + v10;
  v19 = *a2 + v10;
  v20 = v15;
  while (1)
  {
    v21 = (*(v16 + 40))(*v16, v18, v20, v19);
    if (v21 < 1)
    {
      break;
    }

    v18 += v21;
    v17 += v21;
    v19 += v21;
    v20 -= v21;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  v17 = v21;
LABEL_17:
  if (v15 != v17)
  {
LABEL_20:
    v22 = "aaByteStreamPWriteExpected";
    v23 = 90;
    goto LABEL_21;
  }

  ++a1[8];
  result = 0;
  if (a1[4] < v15 + v13)
  {
    a1[4] = v15 + v13;
  }

  return result;
}

uint64_t cacheFlush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 100))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 84))
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  while ((cachePageEvict(a1, *(a1 + 72) + v11, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    v15 = *(a1 + 72) + v11;
    bzero(*(v15 + 16), *(a1 + 92));
    *v15 = -1;
    v16 = *(a1 + 92);
    *(v15 + 28) = 0;
    *(v15 + 32) = 0;
    *(v15 + 24) = v16;
    ++v12;
    v11 += 40;
    if (v12 >= *(a1 + 84))
    {
      return 0;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AACacheStream.c", "cacheFlush", 115, 146, 0, "cachePageEvict", v13, v14, v8);
  return 0xFFFFFFFFLL;
}

uint64_t aeaOutputStreamRunThreads(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  if (v4)
  {
    v6 = aeaEffectiveCompressionAlgorithm(v4);
    v7 = compression_encode_scratch_buffer_size(v6);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = v2;
  v8 = calloc(v2, 4uLL);
  *(a1 + 72) = v8;
  if (!v8)
  {
    v12 = "SharedArrayInit: malloc failed\n";
    v13 = 55;
    goto LABEL_10;
  }

  if (pthread_mutex_init((a1 + 80), 0))
  {
    v12 = "SharedArrayInit: pthread_mutex_init failed\n";
    v13 = 56;
LABEL_10:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v13, 0, v12, v9, v10, v11, v40);
    v16 = "SharedArrayInit";
    v17 = 323;
LABEL_11:
    v18 = 0;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunThreads", v17, 41, v18, v16, v14, v15, v40);
    return 0xFFFFFFFFLL;
  }

  if (pthread_cond_init((a1 + 144), 0))
  {
    v12 = "SharedArrayInit: pthread_cond_init failed\n";
    v13 = 57;
    goto LABEL_10;
  }

  v20 = (v2 + 1);
  *(a1 + 192) = 0;
  *(a1 + 196) = v20;
  v21 = calloc(v20, 4uLL);
  *(a1 + 200) = v21;
  if (!v21)
  {
    v25 = "SharedArrayInit: malloc failed\n";
    v26 = 55;
    goto LABEL_19;
  }

  if (pthread_mutex_init((a1 + 208), 0))
  {
    v25 = "SharedArrayInit: pthread_mutex_init failed\n";
    v26 = 56;
LABEL_19:
    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayInit", v26, 0, v25, v22, v23, v24, v40);
    v16 = "SharedArrayInit";
    v17 = 324;
    goto LABEL_11;
  }

  if (pthread_cond_init((a1 + 272), 0))
  {
    v25 = "SharedArrayInit: pthread_cond_init failed\n";
    v26 = 57;
    goto LABEL_19;
  }

  *(a1 + 56) = -1;
  if (v2 >= 0x89AE409)
  {
    *__error() = 12;
    *(a1 + 48) = 0;
LABEL_50:
    v18 = *__error();
    v16 = "malloc";
    v17 = 329;
    goto LABEL_12;
  }

  v27 = calloc(v2, 0x3B8uLL);
  *(a1 + 48) = v27;
  if (!v27)
  {
    goto LABEL_50;
  }

  if (v2)
  {
    v28 = 0;
    v29 = 0;
    v30 = 952 * v2;
    while (1)
    {
      v31 = *(a1 + 48);
      v32 = v31 + v28;
      *(v31 + v28 + 592) = 0;
      if (pthread_mutex_init((v31 + v28 + 600), 0) || pthread_cond_init((v32 + 664), 0) || (*(v31 + v28 + 712) = 0, pthread_mutex_init((v31 + v28 + 720), 0)) || pthread_cond_init((v31 + v28 + 784), 0) || (*(v31 + v28 + 832) = 0, pthread_mutex_init((v31 + v28 + 840), 0)) || pthread_cond_init((v31 + v28 + 904), 0))
      {
        v16 = "SemInit";
        v17 = 333;
        goto LABEL_11;
      }

      v33 = v31 + v28;
      *(v33 + 8) = v29;
      *(v33 + 16) = a1;
      v34 = malloc(v5);
      *(v33 + 32) = v34;
      *(v33 + 40) = malloc(v5);
      if (v7)
      {
        if (v7 < 0x2000000001)
        {
          v36 = malloc(v7);
        }

        else
        {
          v35 = __error();
          v36 = 0;
          *v35 = 12;
          v34 = *(v33 + 32);
        }
      }

      else
      {
        v36 = 0;
      }

      *(v33 + 24) = v36;
      if (!v34 || (v7 ? (v37 = v36 == 0) : (v37 = 0), !v37 ? (v38 = 0) : (v38 = 1), !*(v33 + 40) || v38))
      {
        v18 = *__error();
        v16 = "malloc";
        v17 = 339;
        goto LABEL_12;
      }

      if ((createThread(v32, aeaOutputStreamWorkerThreadProc, v32, 0) & 0x80000000) != 0)
      {
        break;
      }

      ++v29;
      v28 += 952;
      if (v30 == v28)
      {
        goto LABEL_47;
      }
    }

    v16 = "Thread creation";
    v17 = 340;
    goto LABEL_11;
  }

LABEL_47:
  v39 = calloc(1uLL, 0x10uLL);
  *(a1 + 320) = v39;
  if (!v39)
  {
    v18 = *__error();
    v16 = "malloc";
    v17 = 345;
    goto LABEL_12;
  }

  v39[1] = a1;
  if ((createThread(v39, aeaOutputStreamWriterThreadProc, v39, 0) & 0x80000000) != 0)
  {
    v16 = "Thread creation";
    v17 = 347;
    goto LABEL_11;
  }

  return 0;
}

uint64_t aeaOutputStreamWorkerThreadProc(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(a1 + 8);
  v52 = 0;
  v49 = (v3 + 668);
  v50 = 1;
  memset(v51, 0, sizeof(v51));
  while (1)
  {
    if (pthread_mutex_lock((v2 + 80)))
    {
      v44 = "SharedArrayPush: pthread_mutex_lock failed\n";
      v45 = 117;
      goto LABEL_73;
    }

    v10 = *(v2 + 64);
    v11 = *(v2 + 68);
    v12 = v10;
    if (v10 < v11)
    {
      *(*(v2 + 72) + 4 * v10) = v6;
      v12 = *(v2 + 64);
    }

    *(v2 + 64) = v12 + 1;
    if (!v12 && pthread_cond_broadcast((v2 + 144)))
    {
      v44 = "SharedArrayPush: pthread_cond_broadcast failed\n";
      v45 = 122;
      goto LABEL_73;
    }

    if (pthread_mutex_unlock((v2 + 80)))
    {
      v44 = "SharedArrayPush: pthread_mutex_unlock failed\n";
      v45 = 124;
LABEL_73:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPush", v45, 0, v44, v7, v8, v9, v46);
      v41 = "SharedArrayPush";
      v42 = 76;
      goto LABEL_63;
    }

    if (v10 >= v11)
    {
      v44 = "SharedArrayPush: stack is full\n";
      v45 = 125;
      goto LABEL_73;
    }

    if (pthread_mutex_lock((a1 + 600)))
    {
      goto LABEL_62;
    }

    while (1)
    {
      v15 = *(a1 + 592);
      if (v15 > 0)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 664), (a1 + 600)))
      {
        goto LABEL_62;
      }
    }

    *(a1 + 592) = v15 - 1;
    if (pthread_mutex_unlock((a1 + 600)))
    {
LABEL_62:
      v41 = "SemAcquire";
      v42 = 77;
      goto LABEL_63;
    }

    if (*(a1 + 48) == -1)
    {
      if (!v50)
      {
LABEL_64:
        atomic_fetch_add((v2 + 40), 1u);
      }

      v43 = *MEMORY[0x29EDCA608];
      return a1;
    }

    v48 = v6;
    if ((aeaChecksum(a1 + 72, *(v3 + 12), *(a1 + 32), *(a1 + 52), v16, v17, v13, v14) & 0x80000000) != 0)
    {
      v21 = 83;
      v22 = "Segment checksum failed";
      goto LABEL_47;
    }

    *(a1 + 56) = 0;
    if (v5 != 774)
    {
      if (!v5)
      {
        v20 = *(a1 + 52);
LABEL_26:
        memcpy(*(a1 + 40), *(a1 + 32), v20);
        v24 = *(a1 + 52);
        *(a1 + 56) = v24;
        goto LABEL_27;
      }

      v25 = aeaEffectiveCompressionAlgorithm(v5);
      LODWORD(v23) = compression_encode_buffer(*(a1 + 40), v4, *(a1 + 32), *(a1 + 52), *(a1 + 24), v25);
LABEL_23:
      v24 = v23;
      *(a1 + 56) = v23;
      goto LABEL_24;
    }

    v23 = PCompressLZMA6Encode(*(a1 + 40), v4, *(a1 + 32), *(a1 + 52));
    if (v23 >= 1)
    {
      goto LABEL_23;
    }

    v24 = *(a1 + 56);
LABEL_24:
    v20 = *(a1 + 52);
    if (!v24 || v24 >= v20)
    {
      goto LABEL_26;
    }

LABEL_27:
    v26 = *(a1 + 32);
    if (v26)
    {
      memset_s(v26, v4, 0, v4);
      v24 = *(a1 + 56);
    }

    if (!v24)
    {
      v21 = 107;
      v22 = "Segment compression failed";
      goto LABEL_47;
    }

    v47 = v5;
    v27 = *(a1 + 48);
    v28 = *(v3 + 20);
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    memset(__s + 8, 0, 252);
    memset(v55, 0, 260);
    WORD4(__s[0]) = 19267;
    *&__s[0] = 0x5F41454100000006;
    result = memset_s(__s + 10, 0xFAuLL, 0, 0xFAuLL);
    v30 = LODWORD(__s[0]);
    if (LODWORD(__s[0]) >= 0xFD)
    {
      break;
    }

    v46 = v4;
    *(__s + LODWORD(__s[0]) + 4) = v27 / v28;
    LODWORD(__s[0]) = v30 + 4;
    memset_s(__s + v30 + 8, 252 - v30, 0, 252 - v30);
    v31 = *(v3 + 144);
    if (v31 && *v49)
    {
      v32 = v31(v53, *(v3 + 72), v49, __s, v55);
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      v33 = 0;
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v33 = 1;
LABEL_37:
    memset(v55 + 8, 0, 224);
    memset(&v55[14] + 8, 0, 28);
    WORD4(v55[0]) = 19283;
    *&v55[0] = 0x5F41454100000006;
    result = memset_s(v55 + 10, 0xFAuLL, 0, 0xFAuLL);
    v34 = LODWORD(v55[0]);
    if (LODWORD(v55[0]) >= 0xFD)
    {
      break;
    }

    *(v55 + LODWORD(v55[0]) + 4) = v27 % v28;
    LODWORD(v55[0]) = v34 + 4;
    memset_s(v55 + v34 + 8, 252 - v34, 0, 252 - v34);
    memset(__s, 0, 260);
    v35 = *(v3 + 144);
    if (!v35 || !LODWORD(v53[0]))
    {
      memset_s(v55, 0x104uLL, 0, 0x104uLL);
      v5 = v47;
LABEL_49:
      memset_s(v53, 0x104uLL, 0, 0x104uLL);
LABEL_50:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", 119, 41, 0, "Segment key derivation failed", v18, v19, v46);
      v4 = v46;
      goto LABEL_51;
    }

    v36 = v35(v51, *(v3 + 76), v53, v55, __s);
    memset_s(v55, 0x104uLL, 0, 0x104uLL);
    v5 = v47;
    if (v36 < 0)
    {
      goto LABEL_49;
    }

    memset_s(v53, 0x104uLL, 0, 0x104uLL);
    if (v33)
    {
      goto LABEL_50;
    }

    v37 = *(v3 + 160);
    v4 = v46;
    if (v37)
    {
      v38 = v37(*(a1 + 40), v24, a1 + 332, v51, 0, 0);
      if (*(a1 + 332) == *(v3 + 84) && (v38 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    v21 = 120;
    v22 = "Segment encryption failed";
LABEL_47:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", v21, 41, 0, v22, v18, v19, v46);
LABEL_51:
    memset_s((a1 + 48), 0x220uLL, 0, 0x220uLL);
    v50 = 0;
    *(a1 + 48) = -1;
LABEL_52:
    memset_s(v51, 0x104uLL, 0, 0x104uLL);
    if (pthread_mutex_lock((a1 + 720)) || (v39 = *(a1 + 712), *(a1 + 712) = v39 + 1, !v39) && pthread_cond_broadcast((a1 + 784)) || pthread_mutex_unlock((a1 + 720)))
    {
      v41 = "SemRelease";
      v42 = 133;
LABEL_63:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWorkerThreadProc", v42, 41, 0, v41, v13, v14, v46);
      goto LABEL_64;
    }

    v6 = v48;
    if (!pthread_mutex_lock((a1 + 840)))
    {
      while (1)
      {
        v40 = *(a1 + 832);
        if (v40 > 0)
        {
          break;
        }

        if (pthread_cond_wait((a1 + 904), (a1 + 840)))
        {
          goto LABEL_61;
        }
      }

      *(a1 + 832) = v40 - 1;
      if (!pthread_mutex_unlock((a1 + 840)))
      {
        continue;
      }
    }

LABEL_61:
    v41 = "SemAcquire";
    v42 = 135;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

uint64_t aeaOutputStreamWriterThreadProc(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v2 + 24) + 16);
  v4 = 1;
  while (1)
  {
    if (pthread_mutex_lock((v2 + 208)))
    {
      v21 = "SharedArrayPop: pthread_mutex_lock failed\n";
      v22 = 91;
      goto LABEL_23;
    }

    while (1)
    {
      v8 = *(v2 + 192);
      if (v8)
      {
        break;
      }

      if (pthread_cond_wait((v2 + 272), (v2 + 208)))
      {
        v21 = "SharedArrayPop: pthread_cond_wait failed\n";
        v22 = 94;
        goto LABEL_23;
      }
    }

    v9 = v8 - 1;
    *(v2 + 192) = v9;
    v10 = *(*(v2 + 200) + 4 * v9);
    if (pthread_mutex_unlock((v2 + 208)))
    {
      v21 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v22 = 98;
LABEL_23:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v22, 0, v21, v5, v6, v7, v24);
      v19 = "SharedArrayDequeue";
      v20 = 151;
LABEL_25:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", v20, 41, 0, v19, v6, v7, v24);
LABEL_26:
      atomic_fetch_add((v2 + 40), 1u);
      return a1;
    }

    if (v10 == -1)
    {
      break;
    }

    if (v10 >= *(v2 + 16))
    {
      v19 = "Invalid worker id";
      v20 = 155;
      goto LABEL_25;
    }

    v11 = *(v2 + 48) + 952 * v10;
    if (pthread_mutex_lock((v11 + 720)))
    {
      goto LABEL_24;
    }

    while (1)
    {
      v12 = *(v11 + 712);
      if (v12 > 0)
      {
        break;
      }

      if (pthread_cond_wait((v11 + 784), (v11 + 720)))
      {
        goto LABEL_24;
      }
    }

    *(v11 + 712) = v12 - 1;
    if (pthread_mutex_unlock((v11 + 720)))
    {
LABEL_24:
      v19 = "SemAcquire";
      v20 = 159;
      goto LABEL_25;
    }

    if ((aeaContainerAppendSegment(*(v2 + 24), *v2, (v11 + 48), *(v11 + 40), v13, v14, v6, v7) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWriterThreadProc", 164, 41, 0, "Segment insertion", v15, v16, v24);
      v4 = 0;
    }

    v17 = *(v11 + 40);
    if (v17)
    {
      memset_s(v17, v3, 0, v3);
    }

    memset_s((v11 + 48), 0x220uLL, 0, 0x220uLL);
    if (pthread_mutex_lock((v11 + 840)) || (v18 = *(v11 + 832), *(v11 + 832) = v18 + 1, !v18) && pthread_cond_broadcast((v11 + 904)) || pthread_mutex_unlock((v11 + 840)))
    {
      v19 = "SemRelease";
      v20 = 175;
      goto LABEL_25;
    }
  }

  if (!v4)
  {
    goto LABEL_26;
  }

  return a1;
}

AAByteStream AEAEncryptionOutputStreamOpen(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  v42 = *MEMORY[0x29EDCA608];
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(encrypted_stream + 5))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpen", 367, 41, 0, "Invalid encrypted stream", v4, v5, v26);
    v12 = 0;
    v10 = 0;
LABEL_23:
    free(v10);
    aeaOutputStreamCloseAndUpdateContext(v12, 0);
    v10 = 0;
    goto LABEL_24;
  }

  v10 = calloc(1uLL, 0x68uLL);
  v11 = malloc(0x148uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x148uLL, 0, 0x148uLL), !v10))
  {
    v22 = *__error();
    v23 = "malloc";
    v24 = 372;
LABEL_22:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpen", v24, 41, v22, v23, v14, v15, v26);
    goto LABEL_23;
  }

  *v12 = encrypted_stream;
  *(v12 + 8) = flags;
  *(v12 + 16) = DefaultNThreads;
  New = aeaContainerCreateNew(context);
  *(v12 + 24) = New;
  if (!New)
  {
    v23 = "Invalid encryption parameters";
    v24 = 379;
LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  result = aeaOutputStreamRunThreads(v12);
  if ((result & 0x80000000) != 0)
  {
    v23 = "Running stream threads";
    v24 = 380;
    goto LABEL_21;
  }

  v10[3] = aeaOutputStreamWrite;
  v10[7] = aeaOutputStreamAbort;
  *v10 = v12;
  v10[1] = aeaOutputStreamClose;
  v17 = *(v12 + 24);
  v18 = *(v17 + 668);
  if (v18 < 0x101)
  {
    memcpy(context + 1376, (v17 + 672), *(v17 + 668));
    *(context + 343) = v18;
    memset_s(context + v18 + 1376, 256 - v18, 0, 256 - v18);
    v19 = *(v12 + 24);
    if (*v19 <= 5u && ((1 << *v19) & 0x2B) != 0)
    {
      goto LABEL_24;
    }

    memset(v41, 0, sizeof(v41));
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    *&__s[1] = 0u;
    *(__s + 7) = 1262834527;
    __s[0] = 0x5F41454100000007;
    v26 = 0;
    memset_s(&__s[1] + 3, 0xF9uLL, 0, 0xF9uLL);
    v20 = *(v19 + 144);
    if (v20 && *(v19 + 668))
    {
      v21 = v20(context + 1632, *(v19 + 72));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_24:
        v25 = *MEMORY[0x29EDCA608];
        return v10;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v23 = "deriving signature encryption key";
    v24 = 398;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t aeaOutputStreamWrite(uint64_t a1, char *__src, unint64_t a3)
{
  if (*(a1 + 36))
  {
    return -1;
  }

  v3 = a3;
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(*(a1 + 24) + 16);
  while (1)
  {
    v8 = *(a1 + 56);
    if (v8 != -1)
    {
      v9 = *(a1 + 48) + 952 * v8;
      goto LABEL_13;
    }

    if (pthread_mutex_lock((a1 + 80)))
    {
      v20 = "SharedArrayPop: pthread_mutex_lock failed\n";
      v21 = 91;
LABEL_20:
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v21, 0, v20, v10, v11, v12, v25);
      v22 = "SharedArrayPop failed";
      v23 = 282;
      goto LABEL_21;
    }

    while (1)
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        break;
      }

      if (pthread_cond_wait((a1 + 144), (a1 + 80)))
      {
        v20 = "SharedArrayPop: pthread_cond_wait failed\n";
        v21 = 94;
        goto LABEL_20;
      }
    }

    v14 = v13 - 1;
    *(a1 + 64) = v14;
    *(a1 + 56) = *(*(a1 + 72) + 4 * v14);
    if (pthread_mutex_unlock((a1 + 80)))
    {
      v20 = "SharedArrayPop: pthread_mutex_unlock failed\n";
      v21 = 98;
      goto LABEL_20;
    }

    v15 = *(a1 + 56);
    if (v15 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(a1 + 48) + 952 * v15;
    memset_s((v9 + 48), 0x220uLL, 0, 0x220uLL);
    v16 = *(a1 + 32);
    *(a1 + 32) = v16 + 1;
    *(v9 + 48) = v16;
LABEL_13:
    v17 = *(v9 + 52);
    if ((v7 - v17) >= v3)
    {
      v18 = v3;
    }

    else
    {
      v18 = (v7 - v17);
    }

    memcpy((*(v9 + 32) + v17), __src, v18);
    v19 = *(v9 + 52) + v18;
    *(v9 + 52) = v19;
    if (v19 == v7 && (aeaOutputStreamRunCurrentWorker(a1) & 0x80000000) != 0)
    {
      v22 = "Sending task to worker failed";
      v23 = 305;
      goto LABEL_21;
    }

    __src += v18;
    v6 += v18;
    v3 -= v18;
    if (!v3)
    {
      return v6;
    }
  }

  v22 = "Invalid worker_id";
  v23 = 283;
LABEL_21:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamWrite", v23, 41, 0, v22, v11, v12, v25);
  return -1;
}

void aeaOutputStreamAbort(uint64_t a1)
{
  if (!*(a1 + 36))
  {
    *(a1 + 36) = 1;
    AAByteStreamCancel(*a1);
  }
}

AAByteStream AEAEncryptionOutputStreamOpenExisting(AAByteStream encrypted_stream, AEAContext context, AAFlagSet flags, int n_threads)
{
  DefaultNThreads = n_threads;
  v73 = *MEMORY[0x29EDCA608];
  if (n_threads <= 0)
  {
    DefaultNThreads = getDefaultNThreads();
  }

  if (!*(encrypted_stream + 5) || !*(encrypted_stream + 4))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 430, 41, 0, "Invalid encrypted stream", v4, v5, v56);
    v12 = 0;
    v10 = 0;
LABEL_40:
    free(v10);
    aeaOutputStreamCloseAndUpdateContext(v12, 0);
    v10 = 0;
LABEL_41:
    v41 = *MEMORY[0x29EDCA608];
    return v10;
  }

  v10 = calloc(1uLL, 0x68uLL);
  v11 = malloc(0x148uLL);
  v12 = v11;
  if (!v11 || (memset_s(v11, 0x148uLL, 0, 0x148uLL), !v10))
  {
    v30 = *__error();
    v31 = "malloc";
    v32 = 435;
LABEL_39:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", v32, 41, v30, v31, v14, v15, v56);
    goto LABEL_40;
  }

  *v12 = encrypted_stream;
  *(v12 + 8) = flags;
  *(v12 + 16) = DefaultNThreads;
  result = aeaContainerCreateExisting(context, encrypted_stream, 0, 1);
  *(v12 + 24) = result;
  if (!result)
  {
    v31 = "load container";
    v32 = 443;
    goto LABEL_38;
  }

  if ((flags & 0x4000000000000) == 0)
  {
    if ((aeaContainerReencrypt(result, encrypted_stream, context + 18, context + 538, context + 83, context + 213) & 0x80000000) != 0)
    {
      v31 = "re-encrypting container";
      v32 = 454;
      goto LABEL_38;
    }

    result = *(v12 + 24);
  }

  v16 = *(result + 167);
  if (v16 < 0x101)
  {
    memcpy(context + 1376, result + 672, v16);
    *(context + 343) = v16;
    memset_s(context + v16 + 1376, 256 - v16, 0, 256 - v16);
    v17 = *(v12 + 24);
    if (*v17 <= 5u && ((1 << *v17) & 0x2B) != 0)
    {
      goto LABEL_14;
    }

    memset(v72, 0, sizeof(v72));
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    *&__s[1] = 0u;
    *(__s + 7) = 1262834527;
    __s[0] = 0x5F41454100000007;
    memset_s(&__s[1] + 3, 0xF9uLL, 0, 0xF9uLL);
    v37 = *(v17 + 144);
    if (v37 && *(v17 + 668))
    {
      v38 = v37(context + 1632, *(v17 + 72));
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
      if ((v38 & 0x80000000) == 0)
      {
        v17 = *(v12 + 24);
LABEL_14:
        if ((aeaContainerRemovePadding(v17, encrypted_stream) & 0x80000000) == 0)
        {
          v18 = *(v12 + 24);
          v19 = *(v18 + 16);
          v20 = *(v18 + 400);
          if (!v20 || *(*(v18 + 392) + 544 * (v20 - 1) + 4) >= v19)
          {
            v29 = 0;
            v28 = 0;
            v22 = 0;
            v25 = 0;
            v33 = 0;
LABEL_25:
            *(v12 + 32) = v20;
            if ((aeaOutputStreamRunThreads(v12) & 0x80000000) != 0)
            {
              v39 = "Running stream threads";
              v40 = 499;
            }

            else
            {
              v10[3] = aeaOutputStreamWrite;
              v10[7] = aeaOutputStreamAbort;
              *v10 = v12;
              v10[1] = aeaOutputStreamClose;
              if (!v33 || aeaOutputStreamWrite(v12, v25, v33) == v33)
              {
                v36 = 1;
                goto LABEL_59;
              }

              v39 = "writing back last segment data";
              v40 = 511;
            }

            v42 = 0;
LABEL_58:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", v40, 41, v42, v39, v34, v35, v56);
            v36 = 0;
LABEL_59:
            if (!v22)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          v21 = *(v18 + 24);
          v22 = malloc(*(v18 + 16));
          v25 = malloc(v19);
          if (v21)
          {
            v26 = aeaEffectiveCompressionAlgorithm(v21);
            v27 = compression_decode_scratch_buffer_size(v26);
            v28 = v27;
            if (v27)
            {
              if (v27 < 0x2000000001)
              {
                v29 = malloc(v27);
              }

              else
              {
                v29 = 0;
                *__error() = 12;
              }

              v43 = 1;
LABEL_49:
              if (v29)
              {
                v43 = 0;
              }

              if (!v22 || !v25 || v43)
              {
                v42 = *__error();
                v39 = "malloc";
                v40 = 483;
                goto LABEL_58;
              }

              v57 = v28;
              v44 = *(v12 + 24);
              v45 = *(v44 + 400) - 1;
              v46 = *(v44 + 392);
              Segment = aeaContainerLoadSegment(v44, encrypted_stream, v45, v25, v22, v29, v23, v24);
              if (Segment == *(v46 + 544 * v45 + 4))
              {
                v33 = Segment;
                v28 = v57;
                if ((aeaContainerRemoveLastSegment(*(v12 + 24), encrypted_stream, v48, v49, v50, v51, v52, v53) & 0x80000000) == 0)
                {
                  v20 = *(*(v12 + 24) + 400);
                  goto LABEL_25;
                }

                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 493, 41, 0, "removing last segment", v54, v55, v56);
                v36 = 0;
              }

              else
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamOpenExisting", 489, 41, 0, "load and decrypt last segment", v52, v53, v56);
                v36 = 0;
                v28 = v57;
              }

LABEL_60:
              memset_s(v22, v19, 0, v19);
LABEL_61:
              free(v22);
              if (v25)
              {
                memset_s(v25, v19, 0, v19);
              }

              free(v25);
              if (v29)
              {
                memset_s(v29, v28, 0, v28);
              }

              free(v29);
              if (v36)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            }

            v43 = 0;
          }

          else
          {
            v43 = 0;
            v28 = 0;
          }

          v29 = 0;
          goto LABEL_49;
        }

        v31 = "removing padding";
        v32 = 471;
        goto LABEL_38;
      }
    }

    else
    {
      memset_s(__s, 0x104uLL, 0, 0x104uLL);
    }

    v31 = "deriving signature encryption key";
    v32 = 467;
LABEL_38:
    v30 = 0;
    goto LABEL_39;
  }

  __break(1u);
  return result;
}

int AEAEncryptionOutputStreamCloseAndUpdateContext(AAByteStream stream, AEAContext context)
{
  if (stream)
  {
    v4 = stream;
    if (*(stream + 1) == aeaOutputStreamClose)
    {
      v5 = *stream;
      *v4 = 0;
      updated = aeaOutputStreamCloseAndUpdateContext(v5, context);
      free(v4);
      LODWORD(stream) = updated;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "AEAEncryptionOutputStreamCloseAndUpdateContext", 534, 41, 0, "Invalid stream type", v2, v3, v8);
      LODWORD(stream) = -1;
    }
  }

  return stream;
}

uint64_t aeaOutputStreamCloseAndUpdateContext(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 48);
  if (v4 && (v5 = *(result + 16), v5))
  {
    v6 = 0;
    do
    {
      if (*v4)
      {
        ++v6;
      }

      v4 += 119;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ((aeaOutputStreamRunCurrentWorker(result) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 207, 41, 0, "Sending task to worker", v7, v8, v40);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v42 = a2;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (pthread_mutex_lock((v3 + 80)))
      {
        v14 = 91;
        v15 = "SharedArrayPop: pthread_mutex_lock failed\n";
LABEL_20:
        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", v14, 0, v15, v11, v12, v13, v40);
        v19 = -1;
      }

      else
      {
        while (1)
        {
          v16 = *(v3 + 64);
          if (v16)
          {
            break;
          }

          if (pthread_cond_wait((v3 + 144), (v3 + 80)))
          {
            v14 = 94;
            v15 = "SharedArrayPop: pthread_cond_wait failed\n";
            goto LABEL_20;
          }
        }

        v24 = v16 - 1;
        *(v3 + 64) = v24;
        v19 = *(*(v3 + 72) + 4 * v24);
        if (!pthread_mutex_unlock((v3 + 80)))
        {
          goto LABEL_22;
        }

        pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayPop", 98, 0, "SharedArrayPop: pthread_mutex_unlock failed\n", v25, v26, v27, v40);
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 213, 41, 0, "SharedArrayPop", v17, v18, v41);
      v9 = 0;
LABEL_22:
      v20 = *(v3 + 48) + 952 * v19;
      memset_s((v20 + 48), 0x220uLL, 0, 0x220uLL);
      *(v20 + 48) = -1;
      if (pthread_mutex_lock((v20 + 600)) || (v23 = *(v20 + 592), *(v20 + 592) = v23 + 1, !v23) && pthread_cond_broadcast((v20 + 664)) || pthread_mutex_unlock((v20 + 600)))
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 217, 41, 0, "SemRelease", v21, v22, v40);
        v9 = 0;
      }

      joinThread(*v20);
      free(*(v20 + 32));
      free(*(v20 + 40));
      free(*(v20 + 24));
      if (!pthread_mutex_destroy((v20 + 600)))
      {
        pthread_cond_destroy((v20 + 664));
      }

      if (!pthread_mutex_destroy((v20 + 720)))
      {
        pthread_cond_destroy((v20 + 784));
      }

      if (!pthread_mutex_destroy((v20 + 840)))
      {
        pthread_cond_destroy((v20 + 904));
      }
    }
  }

  v28 = *(v3 + 320);
  if (v28)
  {
    v29 = v42;
    if (*v28)
    {
      if ((SharedArrayEnqueue((v3 + 192), -1) & 0x80000000) != 0)
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 230, 41, 0, "SharedArrayEnqueue", v30, v31, v40);
        v9 = 0;
      }

      joinThread(**(v3 + 320));
    }
  }

  else
  {
    v29 = v42;
  }

  result = *(v3 + 24);
  if (result && (result = aeaContainerFinish(result, *v3), (result & 0x80000000) != 0))
  {
    result = pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamCloseAndUpdateContext", 235, 41, 0, "finishing container", v32, v33, v40);
    v9 = 0;
    if (v29)
    {
      goto LABEL_46;
    }
  }

  else if (v29)
  {
LABEL_46:
    v34 = *(v3 + 24);
    *v29 = *v34;
    v35 = *(v34 + 16);
    v36 = *(v34 + 32);
    v37 = *(v34 + 48);
    *(v29 + 64) = *(v34 + 64);
    *(v29 + 32) = v36;
    *(v29 + 48) = v37;
    *(v29 + 16) = v35;
    v38 = *(v3 + 24);
    v39 = *(v38 + 1448);
    if (v39 >= 0x101)
    {
      __break(1u);
      return result;
    }

    memcpy((v29 + 1896), (v38 + 1452), *(v38 + 1448));
    *(v29 + 1892) = v39;
    memset_s((v29 + 1896 + v39), 256 - v39, 0, 256 - v39);
  }

  if (!pthread_mutex_destroy((v3 + 80)) && !pthread_cond_destroy((v3 + 144)))
  {
    free(*(v3 + 72));
  }

  if (!pthread_mutex_destroy((v3 + 208)) && !pthread_cond_destroy((v3 + 272)))
  {
    free(*(v3 + 200));
  }

  free(*(v3 + 48));
  free(*(v3 + 320));
  aeaContainerDestroy(*(v3 + 24));
  memset_s(v3, 0x148uLL, 0, 0x148uLL);
  free(v3);
  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t aeaOutputStreamRunCurrentWorker(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == -1)
  {
    return 0;
  }

  v13 = v1;
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 + 952 * v2;
  if (pthread_mutex_lock((v5 + 600)) || (v8 = *(v5 + 592), *(v5 + 592) = v8 + 1, !v8) && pthread_cond_broadcast((v5 + 664)) || pthread_mutex_unlock((v5 + 600)))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunCurrentWorker", 188, 41, 0, "SemRelease", v6, v7, v13);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  if ((SharedArrayEnqueue((a1 + 192), *(a1 + 56)) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAEncryptionStream.c", "aeaOutputStreamRunCurrentWorker", 189, 41, 0, "SharedArrayEnqueue", v11, v12, v13);
    v9 = 0;
  }

  *(a1 + 56) = -1;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t SharedArrayEnqueue(unsigned int *a1, int a2)
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

  pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/../AppleArchive/../Common/SharedArray.h", "SharedArrayEnqueue", v8, 0, v7, v4, v5, v6, v13);
  return 0xFFFFFFFFLL;
}

ssize_t AAArchiveStreamProcess(AAArchiveStream istream, AAArchiveStream ostream, void *msg_data, AAEntryMessageProc msg_proc, AAFlagSet flags, int n_threads)
{
  v39 = *MEMORY[0x29EDCA608];
  v36 = 0;
  header = 0;
  __s = 0;
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v31 = *__error();
    v29 = "malloc";
    v30 = 24;
LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveStreamProcess.c", "AAArchiveStreamProcess", v30, 16, v31, v29, v19, v20, v34);
    v12 = -1;
    goto LABEL_33;
  }

  v11 = AAArchiveStreamReadHeader(istream, &header);
  if (v11 < 0)
  {
LABEL_27:
    AAArchiveStreamCancel(ostream);
    v29 = "archive stream read error (header)";
    v30 = 32;
LABEL_31:
    v31 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  while (v11)
  {
    if (!msg_proc)
    {
      goto LABEL_39;
    }

    v13 = header;
    v14.ikey = 5521744;
    KeyIndex = AAHeaderGetKeyIndex(header, v14);
    if ((KeyIndex & 0x80000000) != 0)
    {
      goto LABEL_39;
    }

    FieldString = AAHeaderGetFieldString(v13, KeyIndex, 0x400uLL, value, 0);
    v17 = FieldString <= 1 ? 1 : FieldString;
    if (v17 < 1)
    {
      goto LABEL_39;
    }

    v18 = (msg_proc)(msg_data, 50, value, header);
    if (v18 < 0)
    {
      v29 = "callback cancel";
      v30 = 45;
      goto LABEL_31;
    }

    if (!v18)
    {
LABEL_39:
      if ((aaHeaderBlobArrayInitWithHeader(&__s, header) & 0x80000000) != 0)
      {
        v29 = "capturing non-empty blobs";
        v30 = 55;
        goto LABEL_31;
      }

      if (AAArchiveStreamWriteHeader(ostream, header) < 0)
      {
        AAArchiveStreamCancel(istream);
        v29 = "archive stream write error (header)";
        v30 = 61;
        goto LABEL_31;
      }

      ++v12;
      v21 = __s;
      if (__s)
      {
        v22 = 0;
        while (1)
        {
          v23 = v36 + 24 * v22;
          v24 = *(v23 + 1);
          if (v24)
          {
            break;
          }

LABEL_25:
          if (++v22 >= v21)
          {
            goto LABEL_26;
          }
        }

        while (1)
        {
          if (v24 >= 0x40000)
          {
            v25 = 0x40000;
          }

          else
          {
            v25 = v24;
          }

          v26 = *v23;
          if (AAArchiveStreamReadBlob(istream, v26, v10, v25) < 0)
          {
            AAArchiveStreamCancel(ostream);
            v29 = "archive stream read error (blob)";
            v30 = 75;
            goto LABEL_31;
          }

          v27 = *v23;
          if (AAArchiveStreamWriteBlob(ostream, v27, v10, v25) < 0)
          {
            break;
          }

          v28 = *(v23 + 1);
          v24 = v28 - v25;
          *(v23 + 1) = v28 - v25;
          if (v28 == v25)
          {
            v21 = __s;
            goto LABEL_25;
          }
        }

        AAArchiveStreamCancel(istream);
        v29 = "archive stream write error (blob)";
        v30 = 80;
        goto LABEL_31;
      }
    }

LABEL_26:
    v11 = AAArchiveStreamReadHeader(istream, &header);
    if (v11 < 0)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  AAHeaderDestroy(header);
  free(v36);
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  free(v10);
  v32 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t treeDeleteRangeWithPoint(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2 < 0)
  {
    return 0;
  }

  v9 = a3;
  v12 = *(a1 + 8);
  v13 = (v12 + 56 * v8);
  if (*v13 > a3)
  {
    if ((treeDeleteRangeWithPoint(a1, v13 + 3, a3) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 456, 107, 0, "treeDelete: %zd", v18, v19, v9);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  if (v13[1] <= a3)
  {
    if ((treeDeleteRangeWithPoint(a1, v13 + 4, a3) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 463, 107, 0, "treeDelete: %zd", v18, v19, v9);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_30;
  }

  v20 = v13[3];
  v21 = v13[4];
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (v21 < 0)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v12 + 56 * v21 + 48);
    }

    v23 = *(v12 + 56 * v20 + 48);
LABEL_15:
    if (v22 >= v23)
    {
      v24 = v12 + 56 * v8 + 32;
      if ((v21 & 0x8000000000000000) == 0)
      {
        do
        {
          v25 = v21;
          v21 = *(v12 + 56 * v21 + 24);
        }

        while ((v21 & 0x8000000000000000) == 0);
LABEL_29:
        v29 = *(v12 + 56 * v25);
        *v13 = v29;
        if ((treeDeleteRangeWithPoint(a1, v24, v29) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 493, 107, 0, "treeDelete: %zd", v18, v19, v9);
          return 0xFFFFFFFFLL;
        }

LABEL_30:
        v30 = *(a1 + 8);
        v31 = (v30 + 56 * v8);
        v32 = v31[3];
        if (v32 < 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = *(v30 + 56 * v32 + 48);
        }

        v34 = v31[4];
        if (v34 < 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v30 + 56 * v34 + 48);
        }

        if (v35 > v33)
        {
          v33 = v35;
        }

        *(v31 + 12) = v33 + 1;
        v36 = *v31;
        if (v32 < 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = *(v30 + 56 * v32 + 40);
        }

        v38 = v31[1] - *v31 + v37;
        if (v34 < 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(v30 + 56 * v34 + 40);
        }

        v31[5] = v38 + v39;
        if ((treeRebalance(a1, a2, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 499, 107, 0, "treeRebalance: %zd", v40, v41, v8);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      v28 = v8;
      while (1)
      {
        v25 = *(v12 + 56 * v28 + 16);
        if (v25 < 0)
        {
          break;
        }

        v27 = *(v12 + 56 * v25 + 32) == v28;
        v28 = *(v12 + 56 * v28 + 16);
        if (!v27)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v24 = v12 + 56 * v8 + 24;
      if ((v20 & 0x8000000000000000) == 0)
      {
        do
        {
          v25 = v20;
          v20 = *(v12 + 56 * v20 + 32);
        }

        while ((v20 & 0x8000000000000000) == 0);
        goto LABEL_29;
      }

      v26 = v8;
      while (1)
      {
        v25 = *(v12 + 56 * v26 + 16);
        if (v25 < 0)
        {
          break;
        }

        v27 = *(v12 + 56 * v25 + 24) == v26;
        v26 = *(v12 + 56 * v26 + 16);
        if (!v27)
        {
          goto LABEL_29;
        }
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeDeleteRangeWithPoint", 490, 107, 0, "no nodePrev/Next: %zd", a7, a8, v8);
    return 0xFFFFFFFFLL;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v22 = *(v12 + 56 * v21 + 48);
    goto LABEL_15;
  }

  result = 0;
  *(v12 + 56 * v8 + 16) = *(a1 + 24);
  *(a1 + 24) = v8;
  *a2 = -1;
  return result;
}