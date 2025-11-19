void sub_19C0EA354(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18258(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C0ED558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_19C0EE1D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C0F7120(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19C0FA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t PLGenericAlbumHashOfSingletonAlbumValues(void *a1)
{
  if (MEMORY[0x19EAEE520]())
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v3 = v2;
    if (v2)
    {
      [v2 addIndex:3999];
      [v3 addIndex:3998];
      [v3 addIndex:1600];
      [v3 addIndex:1605];
      [v3 addIndex:1639];
      [v3 addIndex:1607];
      [v3 addIndex:1608];
      [v3 addIndex:1606];
      [v3 addIndex:1609];
      [v3 addIndex:1615];
      [v3 addIndex:1610];
      [v3 addIndex:1617];
      [v3 addIndex:1618];
      [v3 addIndex:1616];
      [v3 addIndex:1613];
      [v3 addIndex:4004];
      [v3 addIndex:4005];
      [v3 addIndex:4006];
      [v3 addIndex:1620];
      [v3 addIndex:1621];
      [v3 addIndex:1614];
      [v3 addIndex:1611];
      [v3 addIndex:4001];
      [v3 addIndex:4003];
      [v3 addIndex:4002];
      [v3 addIndex:1602];
      [v3 addIndex:1552];
      [v3 addIndex:1612];
      [v3 addIndex:3571];
      [v3 addIndex:3572];
      [v3 addIndex:3573];
      [v3 addIndex:1619];
      [v3 addIndex:1622];
      [v3 addIndex:1623];
      [v3 addIndex:1624];
      [v3 addIndex:1636];
      [v3 addIndex:1625];
      [v3 addIndex:1626];
      [v3 addIndex:1627];
      [v3 addIndex:1634];
      [v3 addIndex:1630];
      [v3 addIndex:1631];
      [v3 addIndex:1637];
      [v3 addIndex:1632];
      [v3 addIndex:1640];
      [v3 addIndex:1628];
      [v3 addIndex:1641];
      [v3 addIndex:1642];
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x19EAEE520]();
  if (a1 && v4)
  {
    *a1 = [v3 copy];
  }

  return 3056;
}

_DWORD *SyncedAssetCreate()
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040A157B1CEuLL);
  *result = 1;
  return result;
}

const char *SyncedAssetCreateWithFileAtPath(char *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = open(a1, 2);
    if (v2 == -1)
    {
      v12 = *MEMORY[0x1E69E9848];
      v13 = __error();
      v14 = strerror(*v13);
      v15 = __error();
      fprintf(v12, "open(2) failed: %s (%d)\n", v14, *v15);
    }

    else
    {
      v3 = v2;
      if (fcntl(v2, 48) == -1)
      {
        v4 = *MEMORY[0x1E69E9848];
        v5 = __error();
        v6 = strerror(*v5);
        v7 = __error();
        fprintf(v4, "Failed to set F_NOCACHE. Ignoring: %s (%d)\n", v6, *v7);
      }

      v8 = fdopen(v3, "rw");
      if (v8)
      {
        v9 = v8;
        fseek(v8, 0, 2);
        v10 = MEMORY[0x19EAEF730](v9);
        __ptr = 0;
        fseek(v9, -4, 1);
        if (fread(&__ptr, 1uLL, 4uLL, v9) == 4)
        {
          fseek(v9, -4, 1);
          if (__ptr == 1768780904)
          {
            v11 = 0;
LABEL_13:
            v24 = 0;
            fseek(v9, -4, 1);
            if (fread(&v24, 1uLL, 4uLL, v9) != 4)
            {
              v1 = 0;
LABEL_28:
              fclose(v9);
              return v1;
            }

            fseek(v9, -4, 1);
            v20 = bswap32(v24);
            if (v11)
            {
              v21 = v20;
            }

            else
            {
              v21 = v24;
            }

            if (v21 != 2)
            {
              if (v21 == 1)
              {
                Version1SyncedAssetFromFile = _readVersion1SyncedAssetFromFile(v9, v1, v10, v11);
LABEL_27:
                v1 = Version1SyncedAssetFromFile;
                goto LABEL_28;
              }

              syslog(6, "Using _readVersion2SyncedAssetFromFile to parse a version %i file %s", v21, v1);
            }

            Version1SyncedAssetFromFile = _readVersion2SyncedAssetFromFile(v9, v1, v10, v11);
            goto LABEL_27;
          }

          if (__ptr == 1752460649)
          {
            v11 = 1;
            goto LABEL_13;
          }

          syslog(3, "Invalid image DB file header magic. Ignoring %s", v1);
        }

        fclose(v9);
      }

      else
      {
        v16 = *MEMORY[0x1E69E9848];
        v17 = __error();
        v18 = strerror(*v17);
        v19 = __error();
        fprintf(v16, "fdopen(2) failed: %s (%d)\n", v18, *v19);
        close(v3);
      }
    }

    return 0;
  }

  return v1;
}

unsigned int *_readVersion1SyncedAssetFromFile(FILE *a1, const char *a2, int a3, int a4)
{
  __ptr = 0;
  fseek(a1, -4, 1);
  if (fread(&__ptr, 1uLL, 4uLL, a1) != 4)
  {
    return 0;
  }

  fseek(a1, -4, 1);
  v8 = bswap32(__ptr);
  v9 = a4 ? v8 : __ptr;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v9, 2) > 0x1555555555555555uLL)
  {
    return 0;
  }

  v11 = v9 + 12;
  result = malloc_type_malloc((v9 + 12), 0x9043C979uLL);
  if (!result)
  {
    return result;
  }

  v12 = result;
  fseek(a1, -v9, 1);
  if (fread(v12, 1uLL, v9, a1) != v9)
  {
    free(v12);
    return 0;
  }

  fseek(a1, -v9, 1);
  v13 = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040A157B1CEuLL);
  *v13 = 1;
  v29 = v13;
  v13[16] = a4;
  *(v13 + 2) = a1;
  *(v13 + 3) = strdup(a2);
  v14 = &v12[3 * (v11 / 0xC)];
  *(v14 - 3) = -1;
  *(v14 - 2) = a3 - v9 - 8;
  *(v14 - 1) = 128;
  v15 = v11 / 0xC - 2;
  v16 = 0;
  *(v13 + 4) = malloc_type_malloc(40 * v15, 0x10F20404CD38F52uLL);
  v13[10] = v15;
  v13[11] = v15;
  v28 = v12;
  v17 = v12 + 2;
  while (1)
  {
    v18 = v17[1];
    if ((a4 & 1) == 0)
    {
      break;
    }

    v19 = vrev32_s8(*(v17 - 2));
    *(v17 - 1) = v19;
    v20 = bswap32(*v17);
    *v17 = v20;
    v18 = bswap32(v18);
    v21 = v19.i32[0];
    if (!v19.i32[0])
    {
      goto LABEL_21;
    }

LABEL_13:
    v22 = *(v13 + 4) + 40 * v16;
    if (v21 == 901)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    if ((v21 - 4035) >= 3)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    *v22 = v21;
    *(v22 + 4) = v24;
    v25 = *(v17 - 1);
    *(v22 + 24) = v20;
    *(v22 + 8) = 0;
    *(v22 + 16) = v25;
    ++v16;
LABEL_24:
    v17 += 3;
    if (v18 == -1)
    {
      v27 = v28;
LABEL_26:
      free(v27);
      return v29;
    }
  }

  v20 = *v17;
  v21 = *(v17 - 2);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_21:
  v26 = malloc_type_malloc(v20, 0x100004077774924uLL);
  fseek(a1, -v20, 1);
  if (fread(v26, 1uLL, v20, a1) == v20)
  {
    fseek(a1, -v20, 1);
    SyncedAssetSetAssetIdentifier(v13, v26);
    if (v26)
    {
      free(v26);
    }

    goto LABEL_24;
  }

  SyncedAssetDestroy(&v29);
  free(v28);
  if (v26)
  {
    v27 = v26;
    goto LABEL_26;
  }

  return v29;
}

_DWORD *_readVersion2SyncedAssetFromFile(FILE *a1, const char *a2, uint64_t a3, int a4)
{
  v57 = 0;
  if (_readIntField(&v57, a1, a4) == 4)
  {
    if (v57 == a3)
    {
      v8 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
      fseek(a1, -16, 1);
      if (fread(v8, 1uLL, 0x10uLL, a1) == 16)
      {
        fseek(a1, -16, 1);
        v56 = 0;
        if (_readIntField(&v56, a1, a4) == 4)
        {
          v55 = 0;
          if (_readIntField(&v55, a1, a4) == 4)
          {
            if (v55 == 12)
            {
              v54 = 0;
              if (_readIntField(&v54, a1, a4) == 4)
              {
                v9 = v54;
                if (v54 > 0)
                {
                  v53 = 0;
                  v52 = 0;
                  if (_readIntField(&v53 + 1, a1, a4) == 4)
                  {
                    if (HIDWORD(v53))
                    {
                      if (_readIntField(&v53, a1, a4) == 4)
                      {
                        v10 = v53;
                        if (v53 == 32)
                        {
                          v11 = _readIntField(&v52, a1, a4);
                          v12 = v11 == 4;
                          if (v11 != 4)
                          {
                            syslog(3, "error reading face table of contents number of entries at %s", a2);
                          }

                          v13 = v52;
                          if (v52 > 0)
                          {
                            v50 = v12;
LABEL_70:
                            v10 = 32;
LABEL_27:
                            v15 = 12 * v9;
                            v16 = malloc_type_malloc(12 * v9 + 12, 0xC8E72BAAuLL);
                            if (v16)
                            {
                              v17 = v16;
                              v49 = v10;
                              fseek(a1, v56, 0);
                              if (fread(v17, 1uLL, v15, a1) == v15)
                              {
                                fseek(a1, -12 * v9, 1);
                                v18 = malloc_type_calloc(1uLL, 0x48uLL, 0x1070040A157B1CEuLL);
                                *v18 = 1;
                                v51 = v18;
                                SyncedAssetSetAssetIdentifier(v18, v8);
                                free(v8);
                                v18[16] = a4;
                                *(v18 + 2) = a1;
                                *(v18 + 3) = strdup(a2);
                                v19 = &v17[3 * (v9 + 1)];
                                *(v19 - 3) = -1;
                                *(v19 - 2) = a3 - v15 - 8;
                                *(v19 - 1) = 128;
                                if (v50)
                                {
                                  v20 = v13;
                                }

                                else
                                {
                                  v20 = 0;
                                }

                                *(v18 + 4) = malloc_type_malloc(40 * (v20 + v9), 0x10F20404CD38F52uLL);
                                v18[10] = v20 + v9;
                                v18[11] = v20 + v9;
                                v21 = v17 + 2;
                                v22 = 32;
                                do
                                {
                                  v23 = v21[1];
                                  if (a4)
                                  {
                                    v24 = vrev32_s8(*(v21 - 2));
                                    *(v21 - 1) = v24;
                                    v25 = bswap32(*v21);
                                    *v21 = v25;
                                    v23 = bswap32(v23);
                                    v26 = v24.i32[0];
                                  }

                                  else
                                  {
                                    v25 = *v21;
                                    v26 = *(v21 - 2);
                                  }

                                  if (v26 == 901)
                                  {
                                    v27 = 2;
                                  }

                                  else
                                  {
                                    v27 = 1;
                                  }

                                  v28 = (*(v18 + 4) + v22);
                                  if ((v26 - 4035) < 3)
                                  {
                                    v27 = 0;
                                  }

                                  *(v28 - 8) = v26;
                                  *(v28 - 7) = v27;
                                  v29 = *(v21 - 1);
                                  *(v28 - 3) = 0;
                                  *(v28 - 2) = v29;
                                  *(v28 - 2) = v25;
                                  *(v28 - 1) = -1;
                                  *v28 = 0;
                                  v22 += 40;
                                  v21 += 3;
                                }

                                while (v23 != -1);
                                if (!v50)
                                {
                                  goto LABEL_60;
                                }

                                v30 = v49 * v20;
                                v31 = malloc_type_malloc((v49 * v20 + 32), 0x1000040E0EAB150uLL);
                                if (v31)
                                {
                                  v32 = v31;
                                  fseek(a1, SHIDWORD(v53), 0);
                                  if (fread(v32, 1uLL, v30, a1) == v30)
                                  {
                                    fseek(a1, -v30, 1);
                                    v33 = &v32[(v30 + 32) & 0xFFFFFFE0];
                                    *(v33 - 4) = 0xFFFFFFFFLL;
                                    *(v33 - 6) = 0;
                                    v34 = 40 * v9 + 32;
                                    v35 = v32;
                                    v36 = v32;
                                    do
                                    {
                                      v38 = *(v36 + 8);
                                      v36 += 32;
                                      v37 = v38;
                                      if (a4)
                                      {
                                        v39 = vrev32q_s8(*v35);
                                        *v35 = v39;
                                        v37 = bswap32(v37);
                                        v40 = v39.i32[2];
                                        v41 = v39.i32[0];
                                      }

                                      else
                                      {
                                        v40 = *(v35 + 2);
                                        v41 = *v35;
                                      }

                                      v42 = *(v51 + 4);
                                      if (v41 == 901)
                                      {
                                        v43 = 2;
                                      }

                                      else
                                      {
                                        v43 = 1;
                                      }

                                      v44 = (v42 + v34);
                                      if ((v41 - 4035) < 3)
                                      {
                                        v43 = 0;
                                      }

                                      *(v44 - 8) = v41;
                                      *(v44 - 7) = v43;
                                      v45 = *(v35 + 1);
                                      *(v44 - 3) = 0;
                                      *(v44 - 2) = v45;
                                      LODWORD(v45) = *(v35 + 3);
                                      *(v44 - 2) = v40;
                                      *(v44 - 1) = v45;
                                      *v44 = 0;
                                      v46 = CFUUIDCreateFromUUIDBytes(0, *(v35 + 1));
                                      if (v46)
                                      {
                                        v47 = v46;
                                        v48 = CFUUIDCreateString(0, v46);
                                        if (v48)
                                        {
                                          *(v42 + v34) = v48;
                                        }

                                        CFRelease(v47);
                                      }

                                      v34 += 40;
                                      v35 = v36;
                                    }

                                    while (v37 != -1);
                                    free(v32);
LABEL_60:
                                    free(v17);
                                    return v51;
                                  }

                                  free(v32);
                                }

                                free(v17);
                                SyncedAssetDestroy(&v51);
                                return v51;
                              }

                              free(v17);
                            }

                            goto LABEL_19;
                          }

                          syslog(3, "%s expected to have at least one Faces TOC entry", a2);
LABEL_69:
                          v50 = 0;
                          goto LABEL_70;
                        }
                      }

                      else
                      {
                        syslog(3, "error reading face table of content entry size at %s", a2);
                        v10 = v53;
                        if (v53 == 32)
                        {
                          v13 = 0;
                          goto LABEL_69;
                        }
                      }

                      syslog(3, "%s facesTocEntrySize %d different from sizeof(FacesTOCEntry) %d", a2, v10, 32);
LABEL_26:
                      v13 = 0;
                      v50 = 0;
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    syslog(3, "error reading face table of contents offset at %s", a2);
                  }

                  v10 = 0;
                  goto LABEL_26;
                }

                syslog(3, "%s should have at least one TOC entry");
              }
            }

            else
            {
              syslog(3, "%s tocEntrySize %d different from sizeof(DigestEntry) %d");
            }
          }
        }
      }

LABEL_19:
      if (v8)
      {
        free(v8);
      }

      return 0;
    }

    syslog(3, "%s mthmb actual size doesn't match encoded file size", a2);
  }

  return 0;
}

uint64_t _readIntField(_DWORD *a1, FILE *a2, int a3)
{
  fseek(a2, -4, 1);
  if (fread(a1, 1uLL, 4uLL, a2) != 4)
  {
    return 0;
  }

  fseek(a2, -4, 1);
  if (a3)
  {
    *a1 = bswap32(*a1);
  }

  return 4;
}

void SyncedAssetSetAssetIdentifier(uint64_t a1, CFUUIDBytes *a2)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 8) = 0;
    }

    v5 = CFUUIDCreateFromUUIDBytes(0, *a2);
    if (v5)
    {
      v6 = v5;
      v7 = CFUUIDCreateString(0, v5);
      if (v7)
      {
        *(a1 + 8) = v7;
      }

      CFRelease(v6);
    }
  }
}

void SyncedAssetDestroy(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 32);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = *(v2 + 40);
  if (v4 < 1)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v6 = 40 * v4;
  do
  {
    v7 = *(*a1 + 32) + v5;
    v8 = *(v7 + 4);
    v9 = *(v7 + 8);
    if (v8 == 2)
    {
      v11 = *(v7 + 32);
      if (v9)
      {
        free(v9);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      if (v8 == 1)
      {
        if (!v9)
        {
          goto LABEL_19;
        }

LABEL_14:
        free(v9);
        goto LABEL_19;
      }

      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (!v10)
      {
        goto LABEL_14;
      }
    }

LABEL_19:
    v5 += 40;
  }

  while (v6 != v5);
  v3 = *(*a1 + 32);
LABEL_21:
  free(v3);
  v2 = *a1;
LABEL_22:
  if (*(v2 + 16))
  {
    fclose(*(v2 + 16));
    v2 = *a1;
  }

  if (*(v2 + 24))
  {
    free(*(v2 + 24));
    v2 = *a1;
  }

  if (*(v2 + 8))
  {
    CFRelease(*(v2 + 8));
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
}

uint64_t SyncedAssetGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t SyncedAssetGetPartsCount(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

unsigned int *SyncedAssetGetVersion(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t SyncedAssetSyncedGetPartForFormatID(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 40);
    if (v2 < 1)
    {
      return 0;
    }

    else
    {
      for (result = *(result + 32); *result != a2; result += 40)
      {
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t SyncedAssetSetWorkDirectoryPath(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    if (*a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t SyncedAssetBeginPartExtraction(uint64_t result)
{
  if (result)
  {
    *(result + 52) = *(result + 52) & 0xFC | 1;
    *(result + 48) = *(result + 40) - 1;
  }

  return result;
}

uint64_t SyncedAssetExtractNextPart(uint64_t result)
{
  if (result)
  {
    if ((*(result + 52) & 3) != 1)
    {
      return 0;
    }

    v1 = *(result + 48);
    if ((v1 & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      v2 = *(result + 32) + 40 * v1 + 40;
      do
      {
        v4 = *(v2 - 40);
        v2 -= 40;
        v3 = v4;
        v5 = v1-- != 0;
      }

      while (v5 && v3 == -3);
      *(result + 48) = v1;
      if (v3 == -3)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t SyncedAssetEndPartExtraction(uint64_t result)
{
  if (result)
  {
    if (*(result + 52))
    {
      *(result + 52) = *(result + 52) & 0xFC | 2;
    }
  }

  return result;
}

uint64_t SyncedPartGetDataType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 3;
  }
}

uint64_t SyncedPartGetFaceIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t SyncedPartFaceAlbumUUID(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

unsigned int *SyncedPartGetFormatID(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t SyncedPartGetLength(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void *SyncedPartGetThumbnailData(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if ((*(a1 + 4) - 1) > 1)
    {
      return 0;
    }

    else
    {
      v2 = *(a1 + 8);
      if (!v2)
      {
        v2 = malloc_type_malloc(*(a1 + 24), 0x100004077774924uLL);
        fseek(*(a2 + 16), *(a1 + 16), 0);
        if (fread(v2, 1uLL, *(a1 + 24), *(a2 + 16)) != *(a1 + 24))
        {
          free(v2);
          v2 = 0;
        }

        *(a1 + 8) = v2;
      }
    }
  }

  return v2;
}

char *SyncedPartGetFilePath(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 4))
    {
      return 0;
    }

    v5 = *(a2 + 8);
    if (!v5)
    {
      return 0;
    }

    else
    {
      result = *(a1 + 8);
      if (!result)
      {
        v28 = 0;
        if (*(a2 + 32) == a1)
        {
          v17 = *(a2 + 16);
          if (v17)
          {
            fclose(v17);
            *(a2 + 16) = 0;
          }

          else if ((*(a2 + 52) & 1) == 0)
          {
            goto LABEL_26;
          }

          if (truncate(*(a2 + 24), *(a1 + 24)))
          {
            unlink(*(a2 + 24));
            goto LABEL_26;
          }

          v18 = *(a2 + 8);
          if (!v18)
          {
            goto LABEL_26;
          }

          Length = CFStringGetLength(v18);
          if (Length < 1)
          {
            goto LABEL_26;
          }

          v20 = Length;
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v22 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
          usedBufLen = 0;
          v30.location = 0;
          v30.length = v20;
          CFStringGetBytes(*(a2 + 8), v30, 0x8000100u, 0, 0, v22, MaximumSizeForEncoding, &usedBufLen);
          v22[v20] = 0;
          __filename = 0;
          asprintf(&__filename, "%s/%s.JPG", *(a2 + 56), v22);
          v24 = __filename;
          if (__filename)
          {
            if (!*__filename)
            {
              goto LABEL_34;
            }

            rename(*(a2 + 24), __filename, v23);
            if (!v25)
            {
              asprintf(&v28, "%s.JPG", v22);
            }

            v24 = __filename;
            if (__filename)
            {
LABEL_34:
              free(v24);
            }
          }

          v16 = v22;
          goto LABEL_20;
        }

        v6 = CFStringGetLength(v5);
        if (v6 < 1)
        {
LABEL_26:
          result = v28;
          *(a1 + 8) = v28;
          return result;
        }

        v7 = v6;
        v8 = CFStringGetMaximumSizeForEncoding(v6, 0x8000100u);
        v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
        usedBufLen = 0;
        v29.location = 0;
        v29.length = v7;
        CFStringGetBytes(*(a2 + 8), v29, 0x8000100u, 0, 0, v9, v8, &usedBufLen);
        v9[v7] = 0;
        asprintf(&v28, "%s-%d.JPG", v9, *a1);
        __filename = 0;
        asprintf(&__filename, "%s/%s", *(a2 + 56), v28);
        if (!*(a2 + 16))
        {
LABEL_19:
          free(v9);
          v16 = __filename;
          if (__filename)
          {
LABEL_20:
            free(v16);
            goto LABEL_26;
          }

          goto LABEL_26;
        }

        v10 = malloc_type_malloc(*(a1 + 24), 0x100004077774924uLL);
        fseek(*(a2 + 16), *(a1 + 16), 0);
        v11 = fread(v10, 1uLL, *(a1 + 24), *(a2 + 16));
        v12 = v28;
        if (v11 == *(a1 + 24))
        {
          if (!v28)
          {
            goto LABEL_17;
          }

          v13 = fopen(__filename, "w");
          if (!v13)
          {
            goto LABEL_17;
          }

          v14 = v13;
          v15 = fwrite(v10, 1uLL, v11, v13);
          fclose(v14);
          if (v15 == v11)
          {
            goto LABEL_17;
          }

          unlink(__filename);
          v12 = v28;
        }

        free(v12);
        v28 = 0;
LABEL_17:
        if (v10)
        {
          free(v10);
        }

        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_19C101BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C104BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C108A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10989C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10A380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_19C10AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10C9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10CDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10E0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10EAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10F85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C10FE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C110E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_19C111970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1122E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C113470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C114308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C115B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C118120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C118630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C118C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C11951C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C11A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C11AC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C11B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C11BBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C11C0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C11C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C11D20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C120420(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __CFString *a19, id a20, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v21 = objc_begin_catch(a1);
      v22 = PLMigrationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = a13;
        *(&buf + 4) = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Exception during context save: %@", &buf, 0xCu);
      }

      if (a11)
      {
        v23 = MEMORY[0x1E696ABC0];
        a19 = @"NSUnderlyingException";
        a20 = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a20 forKeys:&a19 count:1];
        *a11 = [v23 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v24];
      }

      objc_end_catch();
      JUMPOUT(0x19C1203BCLL);
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_19C121E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C122104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1222C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1230A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1233A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C123698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C123D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C123FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1249D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21558(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C124EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C125288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1257EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C125AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C125D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C125FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C126410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C1268C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C126CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C12733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C12864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C128C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1293F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C1299A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C12A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12A428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12AC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12B924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C12C524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_19C12CF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_19C12D5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12DAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12DE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C12E234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1312F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_19C1318D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1323B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  _Block_object_dispose(&a18, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C132824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C132E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1363DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C136FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C13A1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C13B538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x2A8]);
  _Unwind_Resume(a1);
}

void sub_19C13ED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C14E138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_19C14FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Unwind_Resume(a1);
}

void sub_19C151C34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x19C151BB4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C151EF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x19C151E84);
  }

  _Unwind_Resume(exception_object);
}

void sub_19C1535A4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Unwind_Resume(a1);
}

void sub_19C157138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLStringFromMigrationPolicyOptions(int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1 == 7)
  {
    v4 = @"all";
LABEL_10:
    [v3 addObject:v4];
    goto LABEL_11;
  }

  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    [v3 addObject:@"rebuild"];
    if ((a1 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  [v2 addObject:@"lightweight"];
  if ((a1 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((a1 & 4) != 0)
  {
LABEL_9:
    v4 = @"rebuild-recovery";
    goto LABEL_10;
  }

LABEL_11:
  if ([v3 count])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 componentsJoinedByString:{@", "}];
    v7 = [v5 stringWithFormat:@"allow(%@)", v6];
  }

  else
  {
    v7 = @"allow(none)";
  }

  return v7;
}

void sub_19C15AB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C15B994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_19C15C504(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Ignoring exception %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x19C15C4A4);
  }

  _Unwind_Resume(a1);
}

void sub_19C15CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C15CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDMIsMigrationNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary();
  result = dlsym(v2, "DMIsMigrationNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMIsMigrationNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *DataMigrationLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DataMigrationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E75698A0;
    v6 = 0;
    DataMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataMigrationLibraryCore_frameworkLibrary;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataMigrationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLModelMigrator.m" lineNumber:184 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getDMPerformMigrationIfNeededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary();
  result = dlsym(v2, "DMPerformMigrationIfNeeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMPerformMigrationIfNeededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataMigrationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C15D2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C15D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C160298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C160658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C160A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19C162098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1635A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLStringFromPLMigrationActionTypeAbbreviated(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"ps";
  }

  else
  {
    return off_1E75698E8[a1 - 1];
  }
}

__CFString *PLStringFromPLMigrationActionTypeShort(uint64_t a1)
{
  v2 = [@"PLMigrationActionType" length];
  if ((a1 - 1) > 5)
  {
    v3 = @"PLMigrationActionTypePreSchema";
  }

  else
  {
    v3 = off_1E75698B8[a1 - 1];
  }

  v4 = v3;
  if ([(__CFString *)v4 length]> v2)
  {
    v5 = [(__CFString *)v4 substringFromIndex:v2];

    v4 = v5;
  }

  return v4;
}

__CFString *PLStringFromPLMigrationActionType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"PLMigrationActionTypePreSchema";
  }

  else
  {
    return off_1E75698B8[a1 - 1];
  }
}

__CFString *PLStringFromPLMigrationActionTypeCategory(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"pre schema";
  }

  else
  {
    return off_1E7569918[a1 - 1];
  }
}

void sub_19C16626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23346(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SetPLPhotoLibraryBundleControllerCrashTracerMessage(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  os_unfair_lock_lock(&_library_bundle_controller_crashtracer_lock);
  if (v5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shutting down %@ reason code %td", objc_opt_class(), objc_msgSend(v3, "code")];
    [v4 UTF8String];
    __strlcpy_chk();
    qword_1EAFF9EC8 = &_library_bundle_controller_crashtracer_buffer;
  }

  else
  {
    qword_1EAFF9EC8 = 0;
  }

  os_unfair_lock_unlock(&_library_bundle_controller_crashtracer_lock);
}

void sub_19C1669E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C166F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1670B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C16853C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_19C16881C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23523(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1689D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C16A470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C16A798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPIPhotoEditHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPIPhotoEditHelperClass_softClass;
  v7 = getPIPhotoEditHelperClass_softClass;
  if (!getPIPhotoEditHelperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPIPhotoEditHelperClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPIPhotoEditHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C16B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPIPhotoEditHelperClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PIPhotoEditHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPIPhotoEditHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIPhotoEditHelperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:36 description:{@"Unable to find class %s", "PIPhotoEditHelper"}];

    __break(1u);
  }
}

void *PhotoImagingLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotoImagingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7569BB0;
    v6 = 0;
    PhotoImagingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PhotoImagingLibraryCore_frameworkLibrary;
  if (!PhotoImagingLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PhotoImagingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C16B5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNUOrientationConcatSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NeutrinoCoreLibrary();
  result = dlsym(v2, "NUOrientationConcat");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNUOrientationConcatSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *NeutrinoCoreLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NeutrinoCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7569BC8;
    v6 = 0;
    NeutrinoCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NeutrinoCoreLibraryCore_frameworkLibrary;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NeutrinoCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __NeutrinoCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NeutrinoCoreLibraryCore_frameworkLibrary = result;
  return result;
}

id getPICompositionControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPICompositionControllerClass_softClass;
  v7 = getPICompositionControllerClass_softClass;
  if (!getPICompositionControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPICompositionControllerClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPICompositionControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C16C868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNUNumberSettingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNUNumberSettingClass_softClass;
  v7 = getNUNumberSettingClass_softClass;
  if (!getNUNumberSettingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNUNumberSettingClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getNUNumberSettingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C16C948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNUNumberSettingClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NUNumberSetting");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUNumberSettingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUNumberSettingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:46 description:{@"Unable to find class %s", "NUNumberSetting"}];

    __break(1u);
  }
}

void __getPICompositionControllerClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:38 description:{@"Unable to find class %s", "PICompositionController"}];

    __break(1u);
  }
}

id getNUBoolSettingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNUBoolSettingClass_softClass;
  v7 = getNUBoolSettingClass_softClass;
  if (!getNUBoolSettingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNUBoolSettingClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getNUBoolSettingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C16CC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNUEnumSettingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNUEnumSettingClass_softClass;
  v7 = getNUEnumSettingClass_softClass;
  if (!getNUEnumSettingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNUEnumSettingClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getNUEnumSettingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C16CD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNUEnumSettingClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NUEnumSetting");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUEnumSettingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUEnumSettingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:44 description:{@"Unable to find class %s", "NUEnumSetting"}];

    __break(1u);
  }
}

void __getNUBoolSettingClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NUBoolSetting");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUBoolSettingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUBoolSettingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:42 description:{@"Unable to find class %s", "NUBoolSetting"}];

    __break(1u);
  }
}

void sub_19C16D3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v10 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPISemanticStyleAutoCalculatorClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISemanticStyleAutoCalculator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISemanticStyleAutoCalculatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPISemanticStyleAutoCalculatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLCompositionHelper.m" lineNumber:51 description:{@"Unable to find class %s", "PISemanticStyleAutoCalculator"}];

    __break(1u);
  }
}

void getPISemanticStyleAdjustmentKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPISemanticStyleAdjustmentKeySymbolLoc_ptr;
  v9 = getPISemanticStyleAdjustmentKeySymbolLoc_ptr;
  if (!getPISemanticStyleAdjustmentKeySymbolLoc_ptr)
  {
    v1 = PhotoImagingLibrary();
    v7[3] = dlsym(v1, "PISemanticStyleAdjustmentKey");
    getPISemanticStyleAdjustmentKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPISemanticStyleAdjustmentKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLCompositionHelper.m" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C16D848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPISemanticStyleAdjustmentKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary();
  result = dlsym(v2, "PISemanticStyleAdjustmentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPISemanticStyleAdjustmentKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C16EC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23792(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C16F8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19C1702A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C1710F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C17366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19C174880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_19C175924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19C176ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_19C1784D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_19C1799DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void PLModelMigrationActionRegistration_16000(void *a1)
{
  v15 = a1;
  v1 = [v15 migrationContext];
  v2 = [v1 previousStoreVersion];

  v3 = [v15 migrationContext];
  v4 = [v3 libraryIdentifier];

  v5 = objc_opt_class();
  v6 = v2 - 16000;
  v7 = v4 == 3 && v2 - 16000 < 5;
  v8 = v4 != 3 && v2 - 16000 < 0xD1;
  [v15 registerActionClass:v5 onCondition:v7];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 6];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xF];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x19];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3EC3];
  v9 = objc_opt_class();
  v11 = v6 < 0xCE && v4 == 1;
  [v15 registerActionClass:v9 onCondition:v11];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x4F];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x50];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3ED2];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3EDB];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x5F];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x6C];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x64];
  [v15 registerActionClass:objc_opt_class() onCondition:0];
  [v15 registerActionClass:objc_opt_class() onCondition:0];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x6B];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 - 16105 < 0x12E];
  [v15 registerActionClass:objc_opt_class() onCondition:0];
  [v15 registerActionClass:objc_opt_class() onCondition:v8];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x91];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3F12];
  [v15 registerActionClass:objc_opt_class() onCondition:0];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xA1];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xA2];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xA3];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xB6];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xBA];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 >> 2 < 0xFCF];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3F3D];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xC9];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xCA];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xCF];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xD0];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0xD2];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x12D];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 - 16041 < 0x105];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x3FB7];
  v12 = objc_opt_class();
  v14 = v6 < 0x14B || v2 - 16400 < 3;
  [v15 registerActionClass:v12 onCondition:v14];
  [v15 registerActionClass:objc_opt_class() onCondition:v6 < 0x14A];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x4011];
  [v15 registerActionClass:objc_opt_class() onCondition:v2 < 0x4014];
}

void sub_19C17BB0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24343(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C17C830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v61 - 176), 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

void sub_19C17E2A8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void PLSearchIndexingShouldFetchEmbeddingsForAsset(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr;
  v12 = getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr;
  if (!getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr)
  {
    v3 = MediaAnalysisLibrary();
    v10[3] = dlsym(v3, "MediaAnalysisEmbeddingChangedVersion");
    getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr = v10[3];
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v2)
  {
    v4 = *v2;
    v5 = [v1 mediaAnalysisAttributes];
    if (v4 > [v5 imageEmbeddingVersion])
    {
      v6 = [v1 mediaAnalysisAttributes];
      [v6 videoEmbeddingVersion];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int32_t getMediaAnalysisEmbeddingChangedVersion(void)"];
    [v7 handleFailureInFunction:v8 file:@"PLSearchEmbeddingDefines.h" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C181A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMADEmbeddingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMADEmbeddingClass_softClass;
  v7 = getMADEmbeddingClass_softClass;
  if (!getMADEmbeddingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMADEmbeddingClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getMADEmbeddingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C181B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMADEmbeddingClass_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MADEmbedding");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMADEmbeddingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMADEmbeddingClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLSearchEmbeddingDefines.h" lineNumber:28 description:{@"Unable to find class %s", "MADEmbedding"}];

    __break(1u);
  }
}

void *MediaAnalysisLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaAnalysisLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7569E08;
    v6 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaAnalysisLibraryCore_frameworkLibrary;
  if (!MediaAnalysisLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLSearchEmbeddingDefines.h" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMediaAnalysisEmbeddingChangedVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "MediaAnalysisEmbeddingChangedVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMediaAnalysisEmbeddingChangedVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C183144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24891(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C183BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 216), 8);
  _Block_object_dispose((v12 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_19C184210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C189CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25199(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C18AB14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_19C18BF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C18C4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25473(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C190184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25722(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C190BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

void sub_19C191EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C192158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C194DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C197574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26785(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PLSearchIndexCategoryIsSynonym(uint64_t a1)
{
  result = 1;
  if (a1 <= 1499)
  {
    if (a1 <= 1099)
    {
      if (a1 >= 0xF)
      {
        v3 = a1 - 1000;
        if (v3 > 8 || ((1 << v3) & 0x1AB) == 0)
        {
          return result;
        }
      }

      return 0;
    }

    if (a1 > 1299)
    {
      if ((a1 - 1300) <= 0x1E && ((1 << (a1 - 20)) & 0x40100401) != 0 || (a1 - 1400) < 3)
      {
        return 0;
      }
    }

    else
    {
      if ((a1 - 1100) <= 7 && a1 != 1105)
      {
        return 0;
      }

      v4 = a1 - 1200;
      if (v4 <= 5 && v4 != 4)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a1 > 1899)
    {
      if (a1 > 2099)
      {
        if (a1 > 2499)
        {
          if (a1 <= 2699)
          {
            if (a1 != 2500 && a1 != 2600)
            {
              return result;
            }
          }

          else if (a1 != 2700 && a1 != 2900 && a1 != 2800)
          {
            return result;
          }
        }

        else if (a1 > 2399)
        {
          if ((a1 - 2400) >= 2)
          {
            return result;
          }
        }

        else if (a1 != 2100 && a1 != 2200 && a1 != 2300)
        {
          return result;
        }
      }

      else if (((a1 - 1900) > 0x14 || a1 == 1916) && a1 != 2000)
      {
        return result;
      }

      return 0;
    }

    if (a1 > 1609)
    {
      if ((a1 - 1800) >= 3 && (a1 - 1700) >= 2 && a1 != 1610)
      {
        return result;
      }

      return 0;
    }

    if ((a1 - 1500) <= 0x28 && ((1 << (a1 + 36)) & 0x10040100401) != 0 || a1 == 1600)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PLSearchIndexCategoryIsEligibleForSuggestion(uint64_t a1)
{
  result = 0;
  if (a1 > 1309)
  {
    if (a1 > 2699)
    {
      if (a1 != 2700 && a1 != 2800)
      {
        return 1;
      }
    }

    else if ((a1 - 1540) >= 2 && a1 != 1310)
    {
      return 1;
    }
  }

  else if ((a1 - 1003) >= 4 && a1)
  {
    return 1;
  }

  return result;
}

uint64_t PLSearchIndexCategoryIsEligibleForSpotlight(uint64_t a1)
{
  result = 1;
  if (a1 <= 2699)
  {
    if ((a1 - 1003) >= 4 && a1)
    {
      return result;
    }

    return 0;
  }

  if (a1 == 2800 || a1 == 2700)
  {
    return 0;
  }

  return result;
}

uint64_t PLSearchIndexParentCategoryForCategory(uint64_t result)
{
  if (result <= 1500)
  {
    if (result > 1107)
    {
      if (result <= 1300)
      {
        if (result == 1108)
        {
          return 1106;
        }

        else if (result == 1109)
        {
          return 1107;
        }
      }

      else
      {
        switch(result)
        {
          case 1301:
            return 1300;
          case 1321:
            return 1320;
          case 1331:
            return 1330;
        }
      }
    }

    else if (result <= 1008)
    {
      if (result == 1004)
      {
        return 1003;
      }

      else if (result == 1006)
      {
        return 1005;
      }
    }

    else
    {
      switch(result)
      {
        case 1009:
          return 1000;
        case 1010:
          return 12;
        case 1105:
          return 1104;
      }
    }
  }

  else if (result <= 1600)
  {
    if (result <= 1520)
    {
      if (result == 1501)
      {
        return 1500;
      }

      else if (result == 1511)
      {
        return 1510;
      }
    }

    else
    {
      switch(result)
      {
        case 1521:
          return 1520;
        case 1531:
          return 1530;
        case 1541:
          return 1540;
      }
    }
  }

  else if (result > 1915)
  {
    switch(result)
    {
      case 1916:
        return 1915;
      case 2501:
        return 2500;
      case 2601:
        return 2600;
    }
  }

  else
  {
    switch(result)
    {
      case 1601:
        return 1600;
      case 1611:
        return 1610;
      case 1803:
        return 1802;
    }
  }

  return result;
}

uint64_t PLSearchIndexSynonymCategoryForCategory(uint64_t a1)
{
  if (a1 > 1499)
  {
    if (a1 <= 1599)
    {
      if (a1 <= 1519)
      {
        if (a1 == 1500)
        {
          return 1501;
        }

        if (a1 == 1510)
        {
          return 1511;
        }
      }

      else
      {
        switch(a1)
        {
          case 1520:
            return 1521;
          case 1530:
            return 1531;
          case 1540:
            return 1541;
        }
      }
    }

    else if (a1 > 1914)
    {
      switch(a1)
      {
        case 1915:
          return 1916;
        case 2500:
          return 2501;
        case 2600:
          return 2601;
      }
    }

    else
    {
      switch(a1)
      {
        case 1600:
          return 1601;
        case 1610:
          return 1611;
        case 1802:
          return 1803;
      }
    }
  }

  else if (a1 <= 1105)
  {
    if (a1 <= 1002)
    {
      if (a1 == 13)
      {
        return 1010;
      }

      if (a1 == 1000)
      {
        return 1009;
      }
    }

    else
    {
      switch(a1)
      {
        case 1003:
          return 1004;
        case 1005:
          return 1006;
        case 1104:
          return 1105;
      }
    }
  }

  else if (a1 > 1299)
  {
    switch(a1)
    {
      case 1300:
        return 1301;
      case 1320:
        return 1321;
      case 1330:
        return 1331;
    }
  }

  else
  {
    switch(a1)
    {
      case 1106:
        return 1108;
      case 1107:
        return 1109;
      case 1203:
        return 1204;
    }
  }

  return 0;
}

__CFString *PLDebugStringForSearchIndexCategory(uint64_t a1)
{
  v1 = 0;
  if (a1 > 1509)
  {
    if (a1 <= 1899)
    {
      if (a1 > 1600)
      {
        if (a1 <= 1700)
        {
          v1 = @"PLSearchIndexCategoryTripSynonym";
          v48 = @"PLSearchIndexCategoryBusinessName";
          if (a1 != 1700)
          {
            v48 = 0;
          }

          if (a1 != 1611)
          {
            v1 = v48;
          }

          v5 = @"PLSearchIndexCategoryMeaningSynonym";
          v49 = @"PLSearchIndexCategoryTrip";
          if (a1 != 1610)
          {
            v49 = 0;
          }

          if (a1 != 1601)
          {
            v5 = v49;
          }

          v8 = a1 <= 1610;
        }

        else
        {
          v1 = @"PLSearchIndexCategoryPublicEventPerformer";
          v26 = @"PLSearchIndexCategoryPublicEventCategory";
          v27 = @"PLSearchIndexCategoryPublicEventCategorySynonym";
          if (a1 != 1803)
          {
            v27 = 0;
          }

          if (a1 != 1802)
          {
            v26 = v27;
          }

          if (a1 != 1801)
          {
            v1 = v26;
          }

          v5 = @"PLSearchIndexCategoryBusinessCategory";
          v28 = @"PLSearchIndexCategoryPublicEventName";
          if (a1 != 1800)
          {
            v28 = 0;
          }

          if (a1 != 1701)
          {
            v5 = v28;
          }

          v8 = a1 <= 1800;
        }
      }

      else if (a1 <= 1529)
      {
        v1 = @"PLSearchIndexCategoryPrivateEncryptedComputeKGID";
        v46 = @"PLSearchIndexCategoryPrivateEncryptedComputeKGIDSynonym";
        if (a1 != 1521)
        {
          v46 = 0;
        }

        if (a1 != 1520)
        {
          v1 = v46;
        }

        v5 = @"PLSearchIndexCategoryParseRichLabelKGID";
        v47 = @"PLSearchIndexCategoryParseRichLabelKGIDSynonym";
        if (a1 != 1511)
        {
          v47 = 0;
        }

        if (a1 != 1510)
        {
          v5 = v47;
        }

        v8 = a1 <= 1519;
      }

      else
      {
        v1 = @"PLSearchIndexCategoryPrivateEncryptedComputeAMP";
        v9 = @"PLSearchIndexCategoryPrivateEncryptedComputeAMPSynonym";
        v10 = @"PLSearchIndexCategoryMeaning";
        if (a1 != 1600)
        {
          v10 = 0;
        }

        if (a1 != 1541)
        {
          v9 = v10;
        }

        if (a1 != 1540)
        {
          v1 = v9;
        }

        v5 = @"PLSearchIndexCategoryPrivateEncryptedComputeMUID";
        v11 = @"PLSearchIndexCategoryPrivateEncryptedComputeMUIDSynonym";
        if (a1 != 1531)
        {
          v11 = 0;
        }

        if (a1 != 1530)
        {
          v5 = v11;
        }

        v8 = a1 <= 1539;
      }

      goto LABEL_180;
    }

    if (a1 > 1999)
    {
      if (a1 > 2500)
      {
        v1 = @"PLSearchIndexCategoryAdjustmentStyleCast";
        v34 = @"PLSearchIndexCategoryAdjustmentStyleCastSynonym";
        if (a1 != 2901)
        {
          v34 = 0;
        }

        if (a1 != 2900)
        {
          v1 = v34;
        }

        v35 = @"PLSearchIndexCategorySticker";
        v36 = @"PLSearchIndexCategoryUtility";
        if (a1 != 2800)
        {
          v36 = 0;
        }

        if (a1 != 2700)
        {
          v35 = v36;
        }

        if (a1 <= 2899)
        {
          v1 = v35;
        }

        v5 = @"PLSearchIndexCategoryAudioClassificationSynonym";
        v37 = @"PLSearchIndexCategoryHumanAction";
        v38 = @"PLSearchIndexCategoryHumanActionSynonym";
        if (a1 != 2601)
        {
          v38 = 0;
        }

        if (a1 != 2600)
        {
          v37 = v38;
        }

        if (a1 != 2501)
        {
          v5 = v37;
        }

        v8 = a1 <= 2699;
      }

      else
      {
        v1 = @"PLSearchIndexCategoryPersonalLibrary";
        v12 = @"PLSearchIndexCategoryAudioClassification";
        if (a1 != 2500)
        {
          v12 = 0;
        }

        if (a1 != 2401)
        {
          v1 = v12;
        }

        v13 = @"PLSearchIndexCategoryCameraMakeAndModel";
        v14 = @"PLSearchIndexCategorySharedLibrary";
        if (a1 != 2400)
        {
          v14 = 0;
        }

        if (a1 != 2300)
        {
          v13 = v14;
        }

        if (a1 <= 2400)
        {
          v1 = v13;
        }

        v5 = @"PLSearchIndexCategoryFavorite";
        v15 = @"PLSearchIndexCategoryFilename";
        v16 = @"PLSearchIndexCategoryImportedByAppName";
        if (a1 != 2200)
        {
          v16 = 0;
        }

        if (a1 != 2100)
        {
          v15 = v16;
        }

        if (a1 != 2000)
        {
          v5 = v15;
        }

        v8 = a1 <= 2299;
      }

      goto LABEL_180;
    }

    switch(a1)
    {
      case 1900:
        v1 = @"PLSearchIndexCategoryImage";
        break;
      case 1901:
        v1 = @"PLSearchIndexCategoryVideo";
        break;
      case 1902:
        v1 = @"PLSearchIndexCategoryRaw";
        break;
      case 1903:
        v1 = @"PLSearchIndexCategoryCinematicVideo";
        break;
      case 1904:
        v1 = @"PLSearchIndexCategoryProRes";
        break;
      case 1905:
        v1 = @"PLSearchIndexCategorySlomo";
        break;
      case 1906:
        v1 = @"PLSearchIndexCategoryLivePhoto";
        break;
      case 1907:
        v1 = @"PLSearchIndexCategoryScreenshot";
        break;
      case 1908:
        v1 = @"PLSearchIndexCategoryPanorama";
        break;
      case 1909:
        v1 = @"PLSearchIndexCategoryTimelapse";
        break;
      case 1910:
        v1 = @"PLSearchIndexCategoryScreenRecording";
        break;
      case 1911:
        v1 = @"PLSearchIndexCategoryLongExposure";
        break;
      case 1912:
        v1 = @"PLSearchIndexCategoryAnimated";
        break;
      case 1913:
        v1 = @"PLSearchIndexCategoryBurst";
        break;
      case 1914:
        v1 = @"PLSearchIndexCategoryPortrait";
        break;
      case 1915:
        v1 = @"PLSearchIndexCategorySelfie";
        break;
      case 1916:
        v1 = @"PLSearchIndexCategorySelfieSynonym";
        break;
      case 1917:
        v1 = @"PLSearchIndexCategoryActionCam";
        break;
      case 1918:
        v1 = @"PLSearchIndexCategoryLivePortrait";
        break;
      case 1919:
        v1 = @"PLSearchIndexCategorySpatial";
        break;
      case 1920:
        v1 = @"PLSearchIndexCategoryFrontBackCapture";
        break;
      default:
        return v1;
    }
  }

  else
  {
    if (a1 > 1100)
    {
      if (a1 <= 1203)
      {
        if (a1 <= 1106)
        {
          v1 = @"PLSearchIndexCategorySeason";
          v39 = @"PLSearchIndexCategorySeasonSynonym";
          v40 = @"PLSearchIndexCategoryPartOfDay";
          if (a1 != 1106)
          {
            v40 = 0;
          }

          if (a1 != 1105)
          {
            v39 = v40;
          }

          if (a1 != 1104)
          {
            v1 = v39;
          }

          v5 = @"PLSearchIndexCategoryYear";
          v41 = @"PLSearchIndexCategoryDateFilter";
          v42 = @"PLSearchIndexCategoryHoliday";
          if (a1 != 1103)
          {
            v42 = 0;
          }

          if (a1 != 1102)
          {
            v41 = v42;
          }

          if (a1 != 1101)
          {
            v5 = v41;
          }

          v8 = a1 <= 1103;
        }

        else
        {
          v1 = @"PLSearchIndexCategoryDescription";
          v17 = @"PLSearchIndexCategoryOCRText";
          if (a1 != 1203)
          {
            v17 = 0;
          }

          if (a1 != 1202)
          {
            v1 = v17;
          }

          v18 = @"PLSearchIndexCategoryKeyword";
          v19 = @"PLSearchIndexCategoryTitle";
          if (a1 != 1201)
          {
            v19 = 0;
          }

          if (a1 != 1200)
          {
            v18 = v19;
          }

          if (a1 <= 1201)
          {
            v1 = v18;
          }

          v5 = @"PLSearchIndexCategoryPartOfWeek";
          v20 = @"PLSearchIndexCategoryPartOfDaySynonym";
          v21 = @"PLSearchIndexCategoryPartOfWeekSynonym";
          if (a1 != 1109)
          {
            v21 = 0;
          }

          if (a1 != 1108)
          {
            v20 = v21;
          }

          if (a1 != 1107)
          {
            v5 = v20;
          }

          v8 = a1 <= 1199;
        }
      }

      else if (a1 > 1329)
      {
        v1 = @"PLSearchIndexCategoryScene";
        v29 = @"PLSearchIndexCategorySceneSynonym";
        if (a1 != 1501)
        {
          v29 = 0;
        }

        if (a1 != 1500)
        {
          v1 = v29;
        }

        v30 = @"PLSearchIndexCategoryMemoryTitle";
        v31 = @"PLSearchIndexCategoryCollectionShareTitle";
        if (a1 != 1402)
        {
          v31 = 0;
        }

        if (a1 != 1401)
        {
          v30 = v31;
        }

        if (a1 <= 1499)
        {
          v1 = v30;
        }

        v5 = @"PLSearchIndexCategoryPet";
        v32 = @"PLSearchIndexCategoryPetSynonym";
        v33 = @"PLSearchIndexCategoryAlbumTitle";
        if (a1 != 1400)
        {
          v33 = 0;
        }

        if (a1 != 1331)
        {
          v32 = v33;
        }

        if (a1 != 1330)
        {
          v5 = v32;
        }

        v8 = a1 <= 1400;
      }

      else
      {
        v1 = @"PLSearchIndexCategoryContributor";
        v2 = @"PLSearchIndexCategoryContributorSynonym";
        if (a1 != 1321)
        {
          v2 = 0;
        }

        if (a1 != 1320)
        {
          v1 = v2;
        }

        v3 = @"PLSearchIndexCategoryPersonSynonym";
        v4 = @"PLSearchIndexCategorySocialGroup";
        if (a1 != 1310)
        {
          v4 = 0;
        }

        if (a1 != 1301)
        {
          v3 = v4;
        }

        if (a1 <= 1319)
        {
          v1 = v3;
        }

        v5 = @"PLSearchIndexCategoryOCRTextSynonym";
        v6 = @"PLSearchIndexCategoryOCRTextFound";
        v7 = @"PLSearchIndexCategoryPerson";
        if (a1 != 1300)
        {
          v7 = 0;
        }

        if (a1 != 1205)
        {
          v6 = v7;
        }

        if (a1 != 1204)
        {
          v5 = v6;
        }

        v8 = a1 <= 1300;
      }

LABEL_180:
      if (v8)
      {
        return v5;
      }

      return v1;
    }

    if (a1 > 999)
    {
      if (a1 <= 1005)
      {
        v1 = @"PLSearchIndexCategoryPOI";
        v43 = @"PLSearchIndexCategoryPOISynonym";
        v44 = @"PLSearchIndexCategoryROI";
        if (a1 != 1005)
        {
          v44 = 0;
        }

        if (a1 != 1004)
        {
          v43 = v44;
        }

        if (a1 != 1003)
        {
          v1 = v43;
        }

        v5 = @"PLSearchIndexCategoryHome";
        v45 = @"PLSearchIndexCategoryWork";
        if (a1 != 1001)
        {
          v45 = 0;
        }

        if (a1 != 1000)
        {
          v5 = v45;
        }

        v8 = a1 <= 1002;
      }

      else
      {
        v1 = @"PLSearchIndexCategoryHomeSynonym";
        v22 = @"PLSearchIndexCategoryCountrySynonym";
        v23 = @"PLSearchIndexCategoryMonth";
        if (a1 != 1100)
        {
          v23 = 0;
        }

        if (a1 != 1010)
        {
          v22 = v23;
        }

        if (a1 != 1009)
        {
          v1 = v22;
        }

        v5 = @"PLSearchIndexCategoryROISynonym";
        v24 = @"PLSearchIndexCategoryContinent";
        v25 = @"PLSearchIndexCategorySubcontinent";
        if (a1 != 1008)
        {
          v25 = 0;
        }

        if (a1 != 1007)
        {
          v24 = v25;
        }

        if (a1 != 1006)
        {
          v5 = v24;
        }

        v8 = a1 <= 1008;
      }

      goto LABEL_180;
    }

    switch(a1)
    {
      case 0:
        v1 = @"PLSearchIndexCategoryNone";
        break;
      case 1:
        v1 = @"PLSearchIndexCategoryAOI";
        break;
      case 2:
        v1 = @"PLSearchIndexCategoryThoroughfare";
        break;
      case 3:
        v1 = @"PLSearchIndexCategorySubLocality";
        break;
      case 4:
        v1 = @"PLSearchIndexCategoryLargeAOI";
        break;
      case 5:
        v1 = @"PLSearchIndexCategoryLocality";
        break;
      case 6:
        v1 = @"PLSearchIndexCategorySuperLocality";
        break;
      case 7:
        v1 = @"PLSearchIndexCategorySubAdministrativeArea";
        break;
      case 8:
        v1 = @"PLSearchIndexCategorySubAdministrativeLocality";
        break;
      case 9:
        v1 = @"PLSearchIndexCategorySuperAOI";
        break;
      case 10:
        v1 = @"PLSearchIndexCategoryAdministrativeArea";
        break;
      case 11:
        v1 = @"PLSearchIndexCategoryAdministrativeAreaCode";
        break;
      case 12:
        v1 = @"PLSearchIndexCategoryCountry";
        break;
      case 13:
        v1 = @"PLSearchIndexCategoryCountryCode";
        break;
      case 14:
        v1 = @"PLSearchIndexCategoryMegaAOI";
        break;
      default:
        return v1;
    }
  }

  return v1;
}

id PLSearchIndexCategoriesForAssetPropertySet(char a1)
{
  if (PLSearchIndexCategoriesForAssetPropertySet_onceToken != -1)
  {
    dispatch_once(&PLSearchIndexCategoriesForAssetPropertySet_onceToken, &__block_literal_global_27124);
  }

  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v3 = v2;
  if (a1)
  {
    [v2 addIndexes:PLSearchIndexCategoriesForAssetPropertySet_coreCategories];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addIndexes:PLSearchIndexCategoriesForAssetPropertySet_ocrCategories];
  }

  return v3;
}

void __PLSearchIndexCategoriesForAssetPropertySet_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v1 = objc_alloc_init(MEMORY[0x1E696AD50]);
  for (i = 0; i != 2902; ++i)
  {
    if (i <= 1499)
    {
      if (i <= 1099)
      {
        v3 = v0;
        if ((i - 1) < 0xE)
        {
          goto LABEL_48;
        }

        if ((i - 1000) <= 0xA)
        {
          v3 = v0;
          if (i != 1002)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        if (i > 1202)
        {
          if ((i - 1300) <= 0x1F)
          {
            v3 = v0;
            if (((1 << (i - 20)) & 0xC0300403) != 0)
            {
              goto LABEL_48;
            }
          }

          if ((i - 1203) < 3)
          {
            v3 = v1;
LABEL_48:
            [v3 addIndex:i];
            continue;
          }

          v4 = i - 1400;
        }

        else
        {
          v3 = v0;
          if ((i - 1100) < 0xA)
          {
            goto LABEL_48;
          }

          v4 = i - 1200;
        }

        v3 = v0;
        if (v4 < 3)
        {
          goto LABEL_48;
        }
      }
    }

    else if (i <= 1899)
    {
      if (i > 1599)
      {
        if ((i - 1600) <= 0xB)
        {
          v3 = v0;
          if (((1 << (i - 64)) & 0xC03) != 0)
          {
            goto LABEL_48;
          }
        }

        v3 = v0;
        if ((i - 1800) < 4)
        {
          goto LABEL_48;
        }

        v5 = i - 1700;
        goto LABEL_47;
      }

      if ((i - 1500) <= 0x29)
      {
        v3 = v0;
        if (((1 << (i + 36)) & 0x300C0300C03) != 0)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (i <= 2199)
      {
        v3 = v0;
        if ((i - 1900) < 0x15)
        {
          goto LABEL_48;
        }

        v3 = v0;
        if (i == 2000)
        {
          goto LABEL_48;
        }

        v3 = v0;
        if (i == 2100)
        {
          goto LABEL_48;
        }

        continue;
      }

      if (i <= 2599)
      {
        if (i <= 2499)
        {
          v3 = v0;
          if ((i - 2400) < 2)
          {
            goto LABEL_48;
          }

          v3 = v0;
          if (i == 2200)
          {
            goto LABEL_48;
          }

          v3 = v0;
          if (i == 2300)
          {
            goto LABEL_48;
          }

          continue;
        }

        v5 = i - 2500;
LABEL_47:
        v3 = v0;
        if (v5 >= 2)
        {
          continue;
        }

        goto LABEL_48;
      }

      if (i > 2799)
      {
        v3 = v0;
        if ((i - 2900) < 2)
        {
          goto LABEL_48;
        }

        v3 = v0;
        if (i == 2800)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v3 = v0;
        if ((i - 2600) < 2)
        {
          goto LABEL_48;
        }

        v3 = v0;
        if (i == 2700)
        {
          goto LABEL_48;
        }
      }
    }
  }

  v6 = PLSearchIndexCategoriesForAssetPropertySet_coreCategories;
  PLSearchIndexCategoriesForAssetPropertySet_coreCategories = v0;
  v8 = v0;

  v7 = PLSearchIndexCategoriesForAssetPropertySet_ocrCategories;
  PLSearchIndexCategoriesForAssetPropertySet_ocrCategories = v1;
}

void sub_19C199228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27151(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MomentsFrameworkBundle()
{
  v0 = __MomentsFrameworkBundle;
  if (!__MomentsFrameworkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(&cfstr_Plmomentgenera.isa)];
    v2 = __MomentsFrameworkBundle;
    __MomentsFrameworkBundle = v1;

    v0 = __MomentsFrameworkBundle;
  }

  return v0;
}

id PLMomentsLocalizedFrameworkString(void *a1)
{
  v1 = a1;
  v2 = MomentsFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F0F06D80 table:@"Moments"];

  return v3;
}

void __forceFetchingAlbumReloadToken_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = notify_register_check("com.apple.assetsd.forceFetchingAlbumReload", &forceFetchingAlbumReloadToken_token);
  if (v0)
  {
    v1 = v0;
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3[0] = 67109120;
      v3[1] = v1;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "notify_register_check() failed for fetching album reload. (%u)", v3, 8u);
    }
  }
}

uint64_t entityKindOfObject(void *a1)
{
  v1 = a1;
  v2 = indexOfObjectEntity(v1);
  v3 = entityKindAtEntityIndex(v2, v1);

  return v3;
}

id _keysOfInterestForEntityKind(int a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (a1 > 4)
  {
    switch(a1)
    {
      case 5:
        v8 = xmmword_1E756A438;
        v9 = @"keyAsset";
        v1 = &v8;
        break;
      case 6:
        v7 = @"moments";
        v1 = &v7;
        v2 = 1;
        goto LABEL_16;
      case 7:
        v5 = xmmword_1E756A450;
        v6 = @"entryLikeComments";
        v1 = &v5;
        break;
      default:
        goto LABEL_13;
    }

    v2 = 3;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    v12[0] = @"albums";
    v12[1] = @"pendingItemsCount";
    v1 = v12;
    v2 = 2;
    goto LABEL_16;
  }

  if (a1 == 3)
  {
    v11[0] = xmmword_1E756A3B8;
    v11[1] = *&off_1E756A3C8;
    v11[2] = xmmword_1E756A3D8;
    v1 = v11;
    v2 = 6;
    goto LABEL_16;
  }

  if (a1 != 4)
  {
LABEL_13:
    v3 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_17;
  }

  v10[2] = xmmword_1E756A408;
  v10[3] = *&off_1E756A418;
  v10[4] = xmmword_1E756A428;
  v10[0] = xmmword_1E756A3E8;
  v10[1] = *&off_1E756A3F8;
  v1 = v10;
  v2 = 10;
LABEL_16:
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:v1 count:{v2, v5, v6, v7, v8, v9}];
LABEL_17:

  return v3;
}

uint64_t indexOfObjectEntity(void *a1)
{
  v1 = a1;
  v2 = entityMappingStrategy(v1);
  v3 = [v1 entity];

  v4 = [v3 name];
  v5 = [v2 fastIndexForKnownKey:v4];

  return v5;
}

uint64_t entityKindAtEntityIndex(int a1, void *a2)
{
  v3 = a2;
  pl_dispatch_once();
  v4 = entityKindAtEntityIndex_myKind[a1];

  return v4;
}

void __entityKindAtEntityIndex_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 persistentStoreCoordinator];
  v4 = [v3 managedObjectModel];

  v5 = [(PLManagedObject *)PLManagedAlbumList entityInManagedObjectContext:v2];
  v21 = [(PLManagedObject *)PLGenericAlbum entityInManagedObjectContext:v2];
  v20 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:v2];
  v19 = [(PLManagedObject *)PLMoment entityInManagedObjectContext:v2];
  v17 = v2;
  v18 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v2];
  v16 = v4;
  v6 = [v4 entitiesByName];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v6 allKeys];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = entityMappingStrategy(*(a1 + 32));
        v13 = [v12 fastIndexForKnownKey:v11];

        v14 = [v6 objectForKey:v11];
        if ([v14 isKindOfEntity:v5])
        {
          v15 = 2;
        }

        else if ([v14 isKindOfEntity:v21])
        {
          v15 = 3;
        }

        else if ([v14 isKindOfEntity:v20])
        {
          v15 = 4;
        }

        else if ([v14 isKindOfEntity:v19])
        {
          v15 = 5;
        }

        else if ([v14 isKindOfEntity:v18])
        {
          v15 = 7;
        }

        else
        {
          v15 = 1;
        }

        entityKindAtEntityIndex_myKind[v13] = v15;

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

uint64_t entityMappingStrategy(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSKnownKeysMappingStrategy *entityMappingStrategy(PLManagedObject *const __strong)"];
    [v5 handleFailureInFunction:v6 file:@"PLChangeNotificationCenter.m" lineNumber:1580 description:{@"Invalid parameter not satisfying: %@", @"anObject != nil"}];
  }

  pl_dispatch_once();
  v2 = entityMappingStrategy_myStrategy;
  v3 = entityMappingStrategy_myStrategy;

  return v2;
}

void __entityMappingStrategy_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  v2 = [v1 persistentStoreCoordinator];
  v9 = [v2 managedObjectModel];

  [PLChangeNotificationCenter assertIsCompatibleWithObjectModel:v9];
  v3 = [v9 entitiesByName];
  v4 = [v3 allKeys];
  v5 = sEntityKeysArray;
  sEntityKeysArray = v4;

  v6 = objc_alloc(MEMORY[0x1E695D610]);
  v7 = [v6 initForKeys:sEntityKeysArray];
  v8 = entityMappingStrategy_myStrategy;
  entityMappingStrategy_myStrategy = v7;
}

uint64_t objectEntitiesCount(void *a1)
{
  v1 = entityMappingStrategy(a1);
  v2 = [v1 length];

  return v2;
}

id entityAtIndex(int a1, void *a2)
{
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v5 = [v4 persistentStoreCoordinator];
  v6 = [v5 managedObjectModel];

  v7 = [v6 entitiesByName];
  v8 = entityMappingStrategy(v3);

  if (v8 && ([sEntityKeysArray objectAtIndexedSubscript:a1], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v7 objectForKey:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_19C1A1CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27862(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLSyndicationAllEquivalentFileProviderLocalAndCloudBundleIDs()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69C0030];
  v7[0] = *MEMORY[0x1E69BFCF8];
  v7[1] = v1;
  v2 = *MEMORY[0x1E69BFF10];
  v7[2] = *MEMORY[0x1E69C0038];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = [v0 setWithArray:v3];

  if (MEMORY[0x19EAEE230]())
  {
    v5 = [v4 setByAddingObject:*MEMORY[0x1E69BFE90]];

    v4 = v5;
  }

  return v4;
}

__CFString *PLSyndicationQueryTypeDescription(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E756A5A8[a1 - 1];
  }
}

id PLSyndicationSearchAttributes()
{
  v8[19] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6963D40];
  v8[0] = *MEMORY[0x1E69642B8];
  v8[1] = v0;
  v1 = *MEMORY[0x1E6963EA0];
  v8[2] = *MEMORY[0x1E6963EB0];
  v8[3] = v1;
  v2 = *MEMORY[0x1E6963E78];
  v8[4] = *MEMORY[0x1E6963CB0];
  v8[5] = v2;
  v3 = *MEMORY[0x1E6964688];
  v8[6] = *MEMORY[0x1E6963BA8];
  v8[7] = v3;
  v4 = *MEMORY[0x1E6964B98];
  v8[8] = *MEMORY[0x1E6964510];
  v8[9] = v4;
  v5 = *MEMORY[0x1E6963FC0];
  v8[10] = *MEMORY[0x1E6964338];
  v8[11] = v5;
  v8[12] = *MEMORY[0x1E69644B8];
  v8[13] = @"com_apple_mobilesms_livePhotoComplementPath";
  v8[14] = @"com_apple_mobilesms_isChatAutoDonating";
  v8[15] = @"com_apple_mobilesms_chatUniqueIdentifier";
  v8[16] = @"com_apple_mobilesms_isSyndicatableMedia";
  v8[17] = @"_ICItemSearchResultType";
  v8[18] = *MEMORY[0x1E6964770];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:19];

  return v6;
}

id PLSyndicationSpotlightQueryStringWithDates(void *a1, void *a2, void *a3, void *a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v57 = a1;
  v56 = a2;
  v60 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
  v10 = 0x1E696A000uLL;
  if (v9)
  {
    v11 = v9;
    v12 = *v79;
    v68 = *MEMORY[0x1E6964510];
    v71 = *MEMORY[0x1E6963F88];
    v67 = *MEMORY[0x1E69BFF20];
    v73 = *MEMORY[0x1E69BFE80];
    v65 = *MEMORY[0x1E69BFFC8];
    v66 = *MEMORY[0x1E6963FC0];
    v64 = *MEMORY[0x1E6964338];
    v63 = *MEMORY[0x1E69644F0];
    v69 = *MEMORY[0x1E6963D40];
    v58 = *v79;
    v70 = *MEMORY[0x1E69BFF00];
    do
    {
      v13 = 0;
      v59 = v11;
      do
      {
        if (*v79 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v78 + 1) + 8 * v13);
        v15 = _PLSyndicationSupportedBundleIDs();
        v16 = [v15 containsObject:v14];

        if (v16)
        {
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = v60;
          v17 = [v72 countByEnumeratingWithState:&v74 objects:v84 count:16];
          if (!v17)
          {
            goto LABEL_42;
          }

          v18 = v17;
          v62 = v13;
          v19 = *v75;
          v20 = v70;
          v21 = v72;
          while (1)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v75 != v19)
              {
                objc_enumerationMutation(v21);
              }

              v23 = [*(*(&v74 + 1) + 8 * i) integerValue];
              v24 = v14;
              v25 = v24;
              if (v23 > 2)
              {
                if (v23 == 3)
                {
                  v28 = *(v10 + 3776);
                  v29 = v68;
LABEL_25:
                  [v28 stringWithFormat:@"%@ == 1", v29, v54, v55];
                  goto LABEL_26;
                }

                if (v23 != 4)
                {
                  goto LABEL_35;
                }
              }

              else if (v23 != 1)
              {
                if (v23 != 2 || ![v24 isEqualToString:v20])
                {
LABEL_35:
                  v30 = v25;
                  goto LABEL_36;
                }

                v26 = *(v10 + 3776);
                v27 = @"chatDomain";
                goto LABEL_21;
              }

              if (![v24 isEqualToString:v20])
              {
                if ([v25 isEqualToString:v67])
                {
                  v28 = *(v10 + 3776);
                  v29 = @"_ICItemSearchResultType";
                }

                else
                {
                  if ([v25 isEqualToString:v73])
                  {
                    [*(v10 + 3776) stringWithFormat:@"%@ == * && %@ == 0 && %@ == 1", v64, v63, v66];
                    goto LABEL_26;
                  }

                  if (![v25 isEqualToString:v65])
                  {
                    goto LABEL_35;
                  }

                  v28 = *(v10 + 3776);
                  v29 = v66;
                }

                goto LABEL_25;
              }

              v26 = *(v10 + 3776);
              v27 = @"attachmentDomain";
LABEL_21:
              [v26 stringWithFormat:@"%@ == %@", v71, v27, v55];
              v30 = LABEL_26:;

              if (!v30)
              {
                continue;
              }

              v31 = [v25 isEqualToString:v73];
              v32 = *(v10 + 3776);
              if (v31)
              {
                v33 = [v32 stringWithFormat:@"%@", v30];
              }

              else
              {
                [v32 stringWithFormat:@"%@ == %@", v69, v25];
                v34 = v10;
                v36 = v35 = v8;
                v54 = v30;
                v33 = [v32 stringWithFormat:@"(%@ && %@)", v36];

                v8 = v35;
                v10 = v34;
                v20 = v70;
              }

              [v8 addObject:v33];

              v21 = v72;
LABEL_36:
            }

            v18 = [v21 countByEnumeratingWithState:&v74 objects:v84 count:16];
            if (!v18)
            {
              v12 = v58;
              v11 = v59;
              v13 = v62;
              goto LABEL_42;
            }
          }
        }

        v37 = PLSyndicationGetLog();
        v72 = v37;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v83 = v14;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[sync] invalid bundleID for syndication sync query string: %{public}@", buf, 0xCu);
        }

LABEL_42:

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v38 = *(v10 + 3776);
    v39 = [v8 componentsJoinedByString:@" || "];
    v40 = [v38 stringWithFormat:@"(%@)", v39];

    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v41 addObject:v40];
    v42 = *(v10 + 3776);
    v43 = *MEMORY[0x1E6963CB0];
    v44 = v56;
    v45 = v56;
    v46 = v57;
    [v57 timeIntervalSinceReferenceDate];
    v48 = v47;
    [v45 timeIntervalSinceReferenceDate];
    v50 = v49;

    v51 = [v42 stringWithFormat:@"InRange(%@, %f, %f)", v43, v48, v50];
    [v41 addObject:v51];

    v52 = [v41 componentsJoinedByString:@" && "];
  }

  else
  {
    v40 = PLSyndicationGetLog();
    v44 = v56;
    v46 = v57;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "[sync] no valid bundleIDs for syndication sync query string", buf, 2u);
    }

    v52 = 0;
  }

  return v52;
}

id _PLSyndicationSupportedBundleIDs()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v0 addObject:*MEMORY[0x1E69BFF00]];
  [v0 addObject:*MEMORY[0x1E69BFF20]];
  [v0 addObject:*MEMORY[0x1E69BFE80]];
  [v0 addObject:*MEMORY[0x1E69BFFC8]];

  return v0;
}

id PLSyndicationSyncQueryWithDates(void *a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:a3];
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v10 = _PLSyndicationSupportedBundleIDs();
  v11 = PLSyndicationSpotlightQueryStringWithDates(v7, v6, v9, v10);

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v13 = PLSyndicationSearchAttributes();
    [v12 setFetchAttributes:v13];

    [v12 setReason:@"PhotosSyndication"];
    v14 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v11 queryContext:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id PLSyndicationCheckQueryWithDates(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 5; ++i)
  {
    if (i <= 2)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:i];
      [v5 addObject:v7];
    }
  }

  v8 = _PLSyndicationSupportedBundleIDs();
  v9 = PLSyndicationSpotlightQueryStringWithDates(v3, v4, v5, v8);

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v14[0] = *MEMORY[0x1E6963CB0];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v10 setFetchAttributes:v11];

    [v10 setReason:@"PhotosSyndication"];
    [v10 setMaxCount:1];
    v12 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v9 queryContext:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id PLMessagesSpotlightItemQueryForSyndicationAssetProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:*MEMORY[0x1E69BFF00]])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = *MEMORY[0x1E6963D40];
    v7 = *MEMORY[0x1E6964688];
    v8 = PLSearchableIdentifierFromMessagesSyndicationID(v4);
    v9 = [v5 stringWithFormat:@"%@ == %@ && %@ == %@", v6, v3, v7, v8];

    v10 = objc_alloc_init(MEMORY[0x1E6964E70]);
    v11 = PLSyndicationSearchAttributes();
    [v10 setFetchAttributes:v11];

    [v10 setReason:@"PhotosSyndication"];
    v12 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v9 queryContext:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id PLSearchableIdentifierFromMessagesSyndicationID(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"_"];
  v2 = [v1 lastObject];

  return v2;
}

unint64_t PLSearchableUniqueIdentifierHashFromSearchableIdentifier(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1 || (v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1]) == 0 || (v3 = v2, v6 = 0, v7 = 0, objc_msgSend(v2, "getUUIDBytes:", &v6), v4 = *(&v7 + 2) | (HIWORD(v7) << 32), v3, !v4))
  {
    v4 = [v1 hash];
  }

  return v4;
}

uint64_t PLAttachmentIndexFromMessagesSyndicationID(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"_"];
  if ([v1 count] < 2)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:1];
    v3 = [v2 integerValue];
  }

  return v3;
}

uint64_t PLCreateShortLivedWellKnownPhotoLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:a1];
  v6 = [PLPhotoLibraryOpener runningLibraryServicesManagerForPhotoLibraryURL:v5 error:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 databaseContext];
    v9 = [v8 newShortLivedLibraryWithName:a2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void PLUTIAndSizeFromCSSearchableItemIdentifier(void *a1, void *a2, void *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v9 = *MEMORY[0x1E6963EA0];
  v20[0] = @"byteCount";
  v20[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v19 = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __PLUTIAndSizeFromCSSearchableItemIdentifier_block_invoke;
  v15[3] = &unk_1E756AE90;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  [v8 slowFetchAttributes:v10 protectionClass:0 bundleID:v13 identifiers:v11 completionHandler:v15];
}

void __PLUTIAndSizeFromCSSearchableItemIdentifier_block_invoke(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 firstObject];
    v5 = [v4 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v10 = PLSyndicationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = a1[4];
        v12 = a1[5];
        *buf = 138543618;
        v43 = v11;
        v44 = 2114;
        v45 = v12;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to obtain size for CSSearchableItem %{public}@ bundleID %{public}@", buf, 0x16u);
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E69BFF48];
      v40 = *MEMORY[0x1E696A278];
      v15 = MEMORY[0x1E696AEC0];
      v16 = a1[4];
      v17 = a1[5];
      if (v5)
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
      }

      else
      {
        v19 = @"(null)";
      }

      v20 = [v15 stringWithFormat:@"Unable to obtain logical size for CSSearchableItem %@ bundleID %@ : %@", v16, v17, v19];
      v41 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v8 = [v13 errorWithDomain:v14 code:49503 userInfo:v21];

      if (v5)
      {
      }

      v6 = 0;
      v9 = 0;
      if (v8)
      {
        goto LABEL_30;
      }
    }

    if ([v4 count])
    {
      v22 = [v4 objectAtIndex:1];
    }

    else
    {
      v22 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = PLSyndicationGetLog();
    v25 = v24;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = a1[4];
        *buf = 138543618;
        v43 = v26;
        v44 = 2114;
        v45 = v22;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "UTI for item %{public}@ is %{public}@", buf, 0x16u);
      }

      v9 = v22;
      v8 = 0;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[4];
        if (v22)
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
        }

        else
        {
          v29 = @"(null)";
        }

        *buf = 138543618;
        v43 = v27;
        v44 = 2114;
        v45 = v29;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unexpected data type for UTI for item %{public}@ : %{public}@", buf, 0x16u);
        if (v22)
        {
        }
      }

      v37 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BFF48];
      v38 = *MEMORY[0x1E696A278];
      v31 = MEMORY[0x1E696AEC0];
      v32 = a1[4];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v31 stringWithFormat:@"Unexpected data type for UTI for item %@ : %@", v32, v34];
      v39 = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v8 = [v37 errorWithDomain:v30 code:49501 userInfo:v36];

      v9 = 0;
    }

LABEL_30:
    goto LABEL_31;
  }

  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = a1[4];
    *buf = 138412546;
    v43 = v3;
    v44 = 2114;
    v45 = v7;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "CSSearchableIndex attributes fetch returned an unexpected value (%@) for syndication identifier: %{public}@", buf, 0x16u);
  }

  v8 = 0;
  v6 = 0;
  v9 = 0;
LABEL_31:

  (*(a1[6] + 16))();
}

NSObject *PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(void *a1, uint64_t a2, void *a3, void *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id> * _Nonnull PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(NSArray<NSString *> *__strong _Nonnull, PLSyndicationQueryType, NSString *__strong _Nonnull, NSArray<NSString *> *__strong _Nonnull)"}];
    [v24 handleFailureInFunction:v25 file:@"PLSyndicationUtils.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"syndicationIdentifiers.count > 0"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id> * _Nonnull PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(NSArray<NSString *> *__strong _Nonnull, PLSyndicationQueryType, NSString *__strong _Nonnull, NSArray<NSString *> *__strong _Nonnull)"}];
  [v26 handleFailureInFunction:v27 file:@"PLSyndicationUtils.m" lineNumber:434 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  if (![v9 count])
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id> * _Nonnull PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers(NSArray<NSString *> *__strong _Nonnull, PLSyndicationQueryType, NSString *__strong _Nonnull, NSArray<NSString *> *__strong _Nonnull)"}];
    [v28 handleFailureInFunction:v29 file:@"PLSyndicationUtils.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"attributes.count > 0"}];
  }

  v10 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_28200);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__28201;
  v45 = __Block_byref_object_dispose__28202;
  v46 = 0;
  v11 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_122;
  v36[3] = &unk_1E756A4D8;
  v39 = &v41;
  v12 = v7;
  v37 = v12;
  v40 = a2;
  v13 = v10;
  v38 = v13;
  [v11 slowFetchAttributes:v9 protectionClass:0 bundleID:v8 identifiers:v12 completionHandler:v36];

  dispatch_block_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v42[5];
  if (v14)
  {
    v15 = [v14 count];
    if (v15 == [v12 count])
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_123;
      v30[3] = &unk_1E756A500;
      v34 = &v41;
      v31 = v9;
      v32 = v12;
      v35 = a2;
      v17 = v16;
      v33 = v17;
      [v32 enumerateObjectsUsingBlock:v30];
      v18 = v33;
      v19 = v17;

      v20 = v19;
    }

    else
    {
      v19 = PLSyndicationGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = v42[5];
        v22 = PLPublicDescriptionForSyndicationIdentifiers(v12, a2);
        *buf = 138412546;
        v48 = v21;
        v49 = 2114;
        v50 = v22;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Did not get back the requested number of CSSearchableIndex attributes (%@) for syndication identifiers: %{public}@", buf, 0x16u);
      }

      v20 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v41, 8);

  return v20;
}

uint64_t __Block_byref_object_copy__28201(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_122(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v5 = PLSyndicationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = PLPublicDescriptionForSyndicationIdentifiers(*(a1 + 32), *(a1 + 56));
      v7 = 138412546;
      v8 = v4;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "CSSearchableIndex attributes fetch return an unexpected value (%@) for syndication identifiers: %{public}@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

__CFString *PLPublicDescriptionForSyndicationIdentifiers(void *a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v4 = @"(redacted)";
  }

  else
  {
    v4 = [a1 description];
  }

  return v4;
}

void __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_123(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = PLPublicDescriptionForSyndicationIdentifiers(*(a1 + 40), *(a1 + 64));
      *buf = 138412546;
      v25 = v6;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "CSSearchableIndex attributes fetch return an unexpected value (%@) for syndication identifier: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v7 = [v6 count];
  if (v7 == [*(a1 + 32) count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E6964E90]);
    v9 = *(a1 + 32);
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_2;
    v21 = &unk_1E7572788;
    v22 = v6;
    v10 = v8;
    v23 = v10;
    [v9 enumerateObjectsUsingBlock:&v18];
    v11 = objc_alloc(MEMORY[0x1E6964E80]);
    v12 = [v11 initWithUniqueIdentifier:v5 domainIdentifier:@"attachmentDomain" attributeSet:{v10, v18, v19, v20, v21}];
    if (v12)
    {
      [*(a1 + 48) addObject:v12];
    }

    else
    {
      v14 = PLSyndicationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = PLPublicDescriptionForSyndicationIdentifiers(*(a1 + 40), *(a1 + 64));
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v10;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "CSSearchableItem init failed with syndication identifier: %{public}@ and attribute set: %{public}@", buf, 0x16u);
      }

      v16 = *(a1 + 48);
      v17 = [MEMORY[0x1E695DFB0] null];
      [v16 addObject:v17];
    }

LABEL_11:
  }
}

void __PLCoreSpotlightSearchableItemsFromSyndicationIdentifiers_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 != v6)
  {
    if ([v8 hasPrefix:@"com_"])
    {
      v7 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:v8];
      [*(a1 + 40) setValue:v5 forCustomKey:v7];
    }

    else
    {
      [*(a1 + 40) setAttribute:v5 forKey:v8];
    }
  }
}

uint64_t PLShouldConstructDisplayNameForAppBundle(void *a1, uint64_t a2)
{
  v33[16] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = *MEMORY[0x1E69BFF40];
    v33[0] = *MEMORY[0x1E69BFF18];
    v33[1] = v5;
    v6 = *MEMORY[0x1E69BFFC0];
    v33[2] = *MEMORY[0x1E69BFFA8];
    v33[3] = v6;
    v7 = *MEMORY[0x1E69BF428];
    v33[4] = *MEMORY[0x1E69BF420];
    v33[5] = v7;
    v8 = *MEMORY[0x1E69BFFA0];
    v33[6] = *MEMORY[0x1E69BF430];
    v33[7] = v8;
    v9 = *MEMORY[0x1E69BFF08];
    v33[8] = *MEMORY[0x1E69BFFB8];
    v33[9] = v9;
    v10 = *MEMORY[0x1E69BFFF8];
    v33[10] = *MEMORY[0x1E69BFF90];
    v33[11] = v10;
    v11 = *MEMORY[0x1E69BFF68];
    v33[12] = *MEMORY[0x1E69BF438];
    v33[13] = v11;
    v12 = *MEMORY[0x1E69BFEC0];
    v33[14] = *MEMORY[0x1E69BF440];
    v33[15] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:16];
    [v4 addObjectsFromArray:v13];

    v14 = [v4 containsObject:v3];
    v15 = v3;
    v16 = PLContainingBundleRecord(v15);
    v17 = v16;
    if (v16)
    {
      v18 = [v16 bundleIdentifier];

      v15 = v18;
    }

    v28 = 0;
    v19 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v15 allowPlaceholder:1 error:&v28];
    v20 = v28;
    if (v20 && (PLIsErrorEqualToCode() & 1) == 0)
    {
      v21 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v30 = v15;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "LSApplicationRecord init failed with bundle identifier %{public}@, error: %@", buf, 0x16u);
      }
    }

    if (v19)
    {
      v22 = v14;
    }

    else
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      if ([v15 hasPrefix:@"com.apple."])
      {
        v23 = [v19 executableURL];
        v24 = [v23 path];

        if ([v24 hasPrefix:@"/System/"] && (objc_msgSend(v24, "hasPrefix:", @"/System/Applications/") & 1) == 0)
        {
          v26 = PLSyndicationGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v30 = v15;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_FAULT, "missing exception for internal bundle ID %{public}@", buf, 0xCu);
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    v25 = ((a2 | v19) != 0) & ~v14;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id PLContainingBundleRecord(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v1 error:&v7];
  v3 = v7;
  if (v2 || (PLIsErrorEqualToCode() & 1) != 0)
  {
    v4 = [v2 containingBundleRecord];

    if (v4)
    {
      v4 = [v2 containingBundleRecord];
    }
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = v1;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Unable to get application record for bundleID: %@ with error: %@", buf, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

id PLSyndicatedDisplayNameForAppBundle(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = PLContainingBundleRecord(v5);
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    v8 = [v6 bundleIdentifier];
  }

  v16 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v16];
  v10 = v16;
  if (v10 && (PLIsErrorEqualToCode() & 1) == 0)
  {
    v11 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "LSApplicationRecord init failed with bundle identifier %{public}@, error: %@", buf, 0x16u);
    }
  }

  if (!v9 || ([v9 localizedName], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Didn't find an app name via bundle ID lookup for %{public}@. Fallback to the displayName %{public}@ recorded when the asset was imported into the library.", buf, 0x16u);
    }

    v12 = v4;
  }

  v14 = v12;

  return v12;
}

uint64_t PLRemoveSyndicationDirectories(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 photoDirectoryWithType:28];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [v5 removeItemAtPath:v4 error:&v12];
  v7 = v12;
  if (v6)
  {

LABEL_4:
    [v3 photoDirectoryCreationMaskResetWithType:28];
    v9 = 1;
    goto LABEL_5;
  }

  v8 = PLIsErrorFileNotFound();

  if (v8)
  {
    goto LABEL_4;
  }

  if (a2)
  {
    v11 = v7;
    v9 = 0;
    *a2 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  return v9;
}

id PLManagedAssetSyndicationStateDescription(int a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"|FromMe"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"|SavedToLibrary"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    [v3 appendString:@"|NoAttachment"];
    if (a1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  [v3 appendString:@"|NoConversation"];
  if ((a1 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_15:
  [v3 appendString:@"|None"];
LABEL_6:
  [v3 appendString:@"|"];
  if ([v3 length] == 1)
  {
    [v3 appendString:@"|"];
  }

  return v3;
}

uint64_t PLAssetTypeForSearchableItem(void *a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 attributeSet];
  v7 = [v6 contentType];

  if (!v7)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A278];
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v5 uniqueIdentifier];
    v15 = [v13 stringWithFormat:@"Attachment CSSearchableItem missing content type syndicationID: %@", v14];
    v28 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v9 = [v11 errorWithDomain:v12 code:49501 userInfo:v16];
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:v7];
  if ([v8 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v9 = 0;
    v10 = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

LABEL_8:
    v17 = v8;
    *a2 = v8;
    goto LABEL_9;
  }

  if (([v8 conformsToType:*MEMORY[0x1E6982EE8]] & 1) == 0)
  {
    v20 = [v8 conformsToType:*MEMORY[0x1E6982CD0]];
    v26 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E69BFF48];
    if (v20)
    {
      v31 = *MEMORY[0x1E696A278];
      v22 = MEMORY[0x1E696AEC0];
      v14 = [v8 identifier];
      v15 = [v5 uniqueIdentifier];
      v16 = [v22 stringWithFormat:@"Unsupported syndication audio file with uti: %@, syndicationID: %@", v14, v15];
      v32[0] = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v9 = [v26 errorWithDomain:v21 code:49501 userInfo:v23];

      v10 = 2;
LABEL_7:

      if (!a2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v29 = *MEMORY[0x1E696A278];
    v24 = MEMORY[0x1E696AEC0];
    v14 = [v8 identifier];
    v15 = [v5 uniqueIdentifier];
    v16 = [v24 stringWithFormat:@"Unsupported syndication file type with uti: %@, syndicationID: %@", v14, v15];
    v30 = v16;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v9 = [v26 errorWithDomain:v21 code:49501 userInfo:v25];

LABEL_6:
    v10 = 3;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = 1;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a3)
  {
    v18 = v9;
    *a3 = v9;
  }

  return v10;
}

uint64_t PLSyndicationQueryTypeEnumerateAll(uint64_t a1)
{
  for (i = 1; i != 5; ++i)
  {
    result = (*(a1 + 16))(a1, i);
  }

  return result;
}

uint64_t PLSearchableItemMessageIsFromMe(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = [v1 attributeSet];
    v5 = [v4 attributeDictionary];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69644B8]];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PLSearchableItemMessagesLivePhotoVideoURL(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = PLSearchableItemMessagesValueForCustomKey(v1, @"com_apple_mobilesms_livePhotoComplementPath");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PLSearchableItemMessagesValueForCustomKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [v3 attributeSet];
    v6 = [v5 customAttributeDictionary];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (!v7)
    {
      v8 = [v3 attributeSet];
      v9 = [v8 attributeDictionary];
      v7 = [v9 objectForKeyedSubscript:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t PLSearchableItemMessagesIsChatAutoDonating(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = PLSearchableItemMessagesValueForCustomKey(v1, @"com_apple_mobilesms_isChatAutoDonating");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id PLSearchableItemMessagesChatUniqueIdentifier(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = PLSearchableItemMessagesValueForCustomKey(v1, @"com_apple_mobilesms_chatUniqueIdentifier");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PLSearchableItemMessagesIsSyndicatableMedia(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = PLSearchableItemMessagesValueForCustomKey(v1, @"com_apple_mobilesms_isSyndicatableMedia");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t PLSearchableItemMessagesIsHidden(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleID];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69BFF00]];

  if (v3)
  {
    v4 = [v1 attributeSet];
    v5 = [v4 syndicationStatus];
    v6 = [v5 integerValue];

    v7 = (v6 >> 2) & 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *PLUnderlyingErrorIsSyndicationMessagesNeedsDownload(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = getkIMMessagesIndexRequestHandlerErrorDomain();
    HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();

    return HasDomainAndCode;
  }

  return result;
}

void getkIMMessagesIndexRequestHandlerErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_ptr;
  v9 = getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_ptr;
  if (!getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_ptr)
  {
    v1 = IMSharedUtilitiesLibrary();
    v7[3] = dlsym(v1, "kIMMessagesIndexRequestHandlerErrorDomain");
    getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkIMMessagesIndexRequestHandlerErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"PLSyndicationUtils.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_19C1A7410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "kIMMessagesIndexRequestHandlerErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkIMMessagesIndexRequestHandlerErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *IMSharedUtilitiesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IMSharedUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E756A590;
    v6 = 0;
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = IMSharedUtilitiesLibraryCore_frameworkLibrary;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IMSharedUtilitiesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLSyndicationUtils.m" lineNumber:58 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void PLUnderlyingErrorIsSyndicationMessagesRetry(void *a1, void *a2)
{
  v3 = a1;
  v4 = getkIMMessagesIndexRequestHandlerErrorDomain();
  v5 = PLUnderlyingErrorThatHasDomainAndCode();

  if (!v5)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [v5 userInfo];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v7 = getIMCKErrorRetryAfterKeySymbolLoc_ptr;
  v17 = getIMCKErrorRetryAfterKeySymbolLoc_ptr;
  if (!getIMCKErrorRetryAfterKeySymbolLoc_ptr)
  {
    v8 = IMSharedUtilitiesLibrary();
    v15[3] = dlsym(v8, "IMCKErrorRetryAfterKey");
    getIMCKErrorRetryAfterKeySymbolLoc_ptr = v15[3];
    v7 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v7)
  {
    v9 = *v7;
    v10 = [v6 objectForKeyedSubscript:v9];

    if (!a2)
    {
LABEL_7:

      return;
    }

LABEL_6:
    v11 = v10;
    *a2 = v10;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIMCKErrorRetryAfterKey(void)"];
  [v12 handleFailureInFunction:v13 file:@"PLSyndicationUtils.m" lineNumber:60 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_19C1A782C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMCKErrorRetryAfterKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMSharedUtilitiesLibrary();
  result = dlsym(v2, "IMCKErrorRetryAfterKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMCKErrorRetryAfterKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PLUnderlyingErrorIsSyndicationMessagesDownloadTimeout(void *a1)
{
  v1 = a1;
  v2 = getkIMMessagesIndexRequestHandlerErrorDomain();
  HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();

  return HasDomainAndCode;
}

uint64_t PLResetSyndicationLibraryWithManagedObjectContext(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = PLSyndicationGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Resetting syndication library", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__28201;
  v21 = __Block_byref_object_dispose__28202;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke;
  v12[3] = &unk_1E7578898;
  v8 = v5;
  v13 = v8;
  v15 = buf;
  v16 = &v23;
  v9 = v6;
  v14 = v9;
  [v8 performBlockAndWait:v12];
  if (a3)
  {
    *a3 = *(v18 + 5);
  }

  v10 = *(v24 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void sub_19C1A7A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = [[PLGlobalValues alloc] initWithManagedObjectContext:*(a1 + 32)];
  [(PLGlobalValues *)v2 setLastAttachmentSyndicationSyncDate:0];
  [(PLGlobalValues *)v2 setLastChatSyndicationSyncDate:0];
  [(PLGlobalValues *)v2 setLastDeleteSyndicationSyncDate:0];
  [(PLGlobalValues *)v2 setLastFullIndexSyndicationSyncStartDate:0];
  [(PLGlobalValues *)v2 setInProgressFullIndexSyndicationSyncDate:0];
  [(PLGlobalValues *)v2 setSyndicationStartDate:0];
  SetPLSpotlightReceiverLastUpdate(0);
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"bundleScope", 3];
  [v5 setPredicate:v6];

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    v10 = MEMORY[0x1E695D5E0];
    v11 = +[PLConversation entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v13 = *(a1 + 32);
    v14 = *(*(a1 + 48) + 8);
    v66 = *(v14 + 40);
    v15 = [v13 executeFetchRequest:v12 error:&v66];
    objc_storeStrong((v14 + 40), v66);
    if (!v15)
    {
      v28 = PLSyndicationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v69 = v29;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Fetch conversations failed with error %@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
      goto LABEL_38;
    }

    v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(v15, "count") + objc_msgSend(v9, "count")}];
    v17 = *(a1 + 32);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke_192;
    v63[3] = &unk_1E75781C0;
    v64 = v17;
    v18 = v16;
    v65 = v18;
    v19 = [v64 enumerateWithIncrementalSaveUsingObjects:v9 withBlock:v63];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = *(*(*(a1 + 48) + 8) + 40);
    v23 = PLSyndicationGetLog();
    v24 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136446466;
        v69 = "BOOL PLResetSyndicationLibraryWithManagedObjectContext(NSManagedObjectContext *__strong _Nonnull, PLPhotoLibraryPathManager *__strong _Nonnull, NSError *__autoreleasing * _Nullable)_block_invoke_2";
        v70 = 2112;
        v71 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "%{public}s: enumerate assets with incremental save failed: %@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
      goto LABEL_37;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v9 count];
      *buf = 134217984;
      v69 = v30;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Deleted %tu syndication assets", buf, 0xCu);
    }

    v31 = *(a1 + 32);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke_194;
    v60[3] = &unk_1E756A528;
    v61 = v31;
    v62 = v18;
    v32 = [v61 enumerateWithIncrementalSaveUsingObjects:v15 withBlock:v60];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v35 = *(*(*(a1 + 48) + 8) + 40);
    v36 = PLSyndicationGetLog();
    v37 = v36;
    if (v35)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136446466;
        v69 = "BOOL PLResetSyndicationLibraryWithManagedObjectContext(NSManagedObjectContext *__strong _Nonnull, PLPhotoLibraryPathManager *__strong _Nonnull, NSError *__autoreleasing * _Nullable)_block_invoke_2";
        v70 = 2112;
        v71 = v38;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "%{public}s: enumerate conversations with incremental save failed: %@", buf, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_36:

LABEL_37:
LABEL_38:

      goto LABEL_39;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v15 count];
      *buf = 134217984;
      v69 = v39;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Deleted %tu conversations", buf, 0xCu);
    }

    v40 = PLSyndicationGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEFAULT, "Deleting syndication persistent history", buf, 2u);
    }

    v41 = *(a1 + 32);
    v42 = *(*(a1 + 48) + 8);
    v59 = *(v42 + 40);
    v43 = [PLPersistentHistoryUtilities deleteHistoryBeforeToken:0 withContext:v41 error:&v59];
    objc_storeStrong((v42 + 40), v59);
    *(*(*(a1 + 56) + 8) + 24) = v43;
    v44 = *(*(*(a1 + 56) + 8) + 24);
    v45 = PLSyndicationGetLog();
    v46 = v45;
    if (v44 == 1)
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v47 = "Deleted syndication persistent history";
      v48 = v46;
      v49 = OS_LOG_TYPE_DEFAULT;
      v50 = 2;
    }

    else
    {
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v51 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v69 = v51;
      v47 = "Deleting syndication persistent history failed with error: %@";
      v48 = v46;
      v49 = OS_LOG_TYPE_ERROR;
      v50 = 12;
    }

    _os_log_impl(&dword_19BF1F000, v48, v49, v47, buf, v50);
LABEL_29:

    _PLDeleteSyndicationBundleScopeDirectoryAndLogIfFailed(*(a1 + 40));
    v52 = [*(a1 + 32) hasChanges];
    v53 = *(a1 + 32);
    if (v52)
    {
      v58 = 0;
      v54 = [v53 save:&v58];
      v55 = v58;
      if ((v54 & 1) == 0)
      {
        v56 = PLSyndicationGetLog();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = [v55 userInfo];
          *buf = 136315650;
          v69 = "BOOL PLResetSyndicationLibraryWithManagedObjectContext(NSManagedObjectContext *__strong _Nonnull, PLPhotoLibraryPathManager *__strong _Nonnull, NSError *__autoreleasing * _Nullable)_block_invoke";
          v70 = 2112;
          v71 = v55;
          v72 = 2112;
          v73 = v57;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "%s: failed: %@ %@", buf, 0x20u);
        }
      }
    }

    else
    {
      [v53 reset];
    }

    goto LABEL_36;
  }

  v26 = PLSyndicationGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v69 = v27;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Fetch syndication scope assets failed with error %@", buf, 0xCu);
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_39:
}

void SetPLSpotlightReceiverLastUpdate(void *a1)
{
  v1 = a1;
  if ((PLIsReallyAssetsd() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void SetPLSpotlightReceiverLastUpdate(NSDate *__strong _Nullable)"];
    [v3 handleFailureInFunction:v4 file:@"PLSyndicationUtils.m" lineNumber:1183 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
  }

  v5 = v1;
  v2 = v1;
  PLRunWithUnfairLock();
}

uint64_t __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke_192(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) deleteObject:a2];
  v3 = *(a1 + 40);
  v4 = [v3 completedUnitCount] + 1;

  return [v3 setCompletedUnitCount:v4];
}

uint64_t __PLResetSyndicationLibraryWithManagedObjectContext_block_invoke_194(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) deleteObject:a2];
  v3 = *(a1 + 40);
  v4 = [v3 completedUnitCount] + 1;

  return [v3 setCompletedUnitCount:v4];
}

void _PLDeleteSyndicationBundleScopeDirectoryAndLogIfFailed(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 photoDirectoryWithType:{objc_msgSend(v1, "photoLibraryPathTypeForBundleScope:", 3)}];
  v3 = [v2 pathComponents];
  v4 = [v1 baseDirectory];
  if (![v2 hasPrefix:v4])
  {
    goto LABEL_13;
  }

  v5 = [v1 baseDirectory];
  if ((-[NSObject isEqualToString:](v2, "isEqualToString:", v5) & 1) != 0 || [v3 count] < 3)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v6 = [v3 lastObject];
  if (([v6 isEqualToString:*MEMORY[0x1E69BFF88]] & 1) == 0)
  {

    goto LABEL_12;
  }

  v7 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69BFF80]];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    v10 = [v9 removeItemAtPath:v2 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0 && (PLIsErrorFileNotFound() & 1) == 0)
    {
      v12 = PLSyndicationGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error removing syndication bundle scope directory: %@", buf, 0xCu);
      }
    }

    goto LABEL_16;
  }

LABEL_14:
  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v2;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unexpected syndication bundle scope directory, skipping removal: %@", buf, 0xCu);
  }

LABEL_16:
}

void __SetPLSpotlightReceiverLastUpdate_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 objectForKey:@"PLSyndicationLastUpdateDate"];

    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    if (v5 < v6 && ([*(a1 + 32) timeIntervalSinceNow], v7 <= 0.0))
    {
      v11 = PLSyndicationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Setting last spotlight receiver update to %@", &v13, 0xCu);
      }

      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v8 setObject:*(a1 + 32) forKey:@"PLSyndicationLastUpdateDate"];
    }

    else
    {
      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring request to set spotlight receiver date to %@, previousDate is %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Resetting last spotlight receiver update date", &v13, 2u);
    }

    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v3 removeObjectForKey:@"PLSyndicationLastUpdateDate"];
  }
}

BOOL PLDeleteGuestAssetsInLibraryWithManagedObjectContext(void *a1, void *a2, void *a3, char a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__28201;
  v30 = __Block_byref_object_dispose__28202;
  v31 = 0;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL PLDeleteGuestAssetsInLibraryWithManagedObjectContext(NSManagedObjectContext *__strong _Nonnull, PLPhotoLibraryPathManager *__strong _Nonnull, NSString *__strong _Nonnull, BOOL, NSError *__autoreleasing * _Nullable)"}];
    [v18 handleFailureInFunction:v19 file:@"PLSyndicationUtils.m" lineNumber:929 description:{@"Invalid parameter not satisfying: %@", @"moc"}];
  }

  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v33 = v11;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Deleting all guest assets, reason %{public}@, in moc %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PLDeleteGuestAssetsInLibraryWithManagedObjectContext_block_invoke;
  v20[3] = &unk_1E75765B8;
  v24 = &v26;
  v13 = v9;
  v21 = v13;
  v14 = v11;
  v22 = v14;
  v25 = a4;
  v15 = v10;
  v23 = v15;
  [v13 performBlockAndWait:v20];
  if (a5)
  {
    *a5 = v27[5];
  }

  v16 = v27[5] == 0;

  _Block_object_dispose(&v26, 8);
  return v16;
}

void sub_19C1A8B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PLDeleteGuestAssetsInLibraryWithManagedObjectContext_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  [v4 setPredicate:v5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PLDeleteGuestAssetsInLibraryWithManagedObjectContext_block_invoke_2;
  v20[3] = &unk_1E756A550;
  v6 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 64);
  v7 = [v6 enumerateObjectsFromFetchRequest:v4 usingDefaultBatchSizeWithBlock:v20];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    goto LABEL_5;
  }

  v10 = PLSyndicationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Delete all guest assets in SPL failed with fetch error %@", buf, 0xCu);
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_5:
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Resetting last guest asset sync status in %@", buf, 0xCu);
    }

    [PLGlobalKeyValue setGlobalValue:0 forKey:@"GuestAssetSyncStatus" managedObjectContext:*(a1 + 32)];
    _PLDeleteSyndicationBundleScopeDirectoryAndLogIfFailed(*(a1 + 48));
  }

  if ([*(a1 + 32) hasChanges])
  {
    v14 = *(a1 + 32);
    v19 = 0;
    v15 = [v14 save:&v19];
    v16 = v19;
    if ((v15 & 1) == 0)
    {
      v17 = PLSyndicationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v16 userInfo];
        *buf = 136315650;
        v24 = "BOOL PLDeleteGuestAssetsInLibraryWithManagedObjectContext(NSManagedObjectContext *__strong _Nonnull, PLPhotoLibraryPathManager *__strong _Nonnull, NSString *__strong _Nonnull, BOOL, NSError *__autoreleasing * _Nullable)_block_invoke";
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "%s: failed: %@ %@", buf, 0x20u);
      }
    }
  }
}

void __PLDeleteGuestAssetsInLibraryWithManagedObjectContext_block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 uuid];
    v6 = [v3 additionalAttributes];
    v7 = [v6 syndicationIdentifier];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Deleting guest asset %{public}@ / %{public}@", &v9, 0x16u);
  }

  v8 = [PLAssetTransactionReason transactionReason:*(a1 + 32)];
  [v3 deleteWithReason:v8];

  if (*(a1 + 40) == 1)
  {
    [v3 fixupMemoriesWithMissingKeyAsset];
    [v3 removeAssetFromRelatedSuggestionsAndFixupSuggestions];
  }
}

id PLSyndicationResourceLocalAvailabilityDescription(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1 < 0)
  {
    [v2 appendString:@"|None"];
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"|Available"];
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  [v3 appendString:@"|RequiresSanitization"];
  if ((a1 & 4) != 0)
  {
LABEL_5:
    [v3 appendString:@"|ConversionFailed"];
  }

LABEL_6:
  [v3 appendString:@"|"];
  if ([v3 length] == 1)
  {
    [v3 appendString:@"|"];
  }

  return v3;
}

void __PLHandleSpotlightAddedOrUpdatedItemsForSyndicationLibrary_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  IsChatAutoDonating = PLSearchableItemMessagesIsChatAutoDonating(*(a1 + 32));
  v3 = [*(a1 + 32) uniqueIdentifier];
  v4 = [PLConversation albumWithConversationID:v3 inLibrary:*(a1 + 40)];

  if (v4)
  {
    if (IsChatAutoDonating)
    {
      if (![v4 syndicate])
      {
        v5 = PLSyndicationGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [v4 uuid];
          v7 = [*(a1 + 40) pathManager];
          *buf = 138543618;
          v31 = v6;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] Chat was updated: %{public}@ autoDonating=1 (was off) in library %@", buf, 0x16u);
        }

        [v4 setSyndicate:1];
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 uuid];
        v10 = [*(a1 + 40) pathManager];
        *buf = 138543618;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[sync.spotlightReceiver] Chat was updated: %{public}@ autoDonating=0 (was on) in library %@", buf, 0x16u);
      }

      [v4 setSyndicate:0];
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = v4;
      v11 = [v4 assets];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            v18 = [v16 additionalAttributes];
            v19 = [v18 syndicationIdentifier];
            if (v19)
            {
              [*(a1 + 48) addObject:v19];
            }

            else
            {
              v20 = PLSyndicationGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = [v24 uuid];
                v22 = v21;
                *buf = 138543618;
                v23 = @"syndicationIdentifier";
                if (!v18)
                {
                  v23 = @"additionalAttributes";
                }

                v31 = v21;
                v32 = 2114;
                v33 = v23;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "conversation %{public}@ %{public}@ is nil", buf, 0x16u);
              }
            }

            objc_autoreleasePoolPop(v17);
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      v4 = v24;
    }
  }
}

void __PLDeleteAssetImmediatelyForSystemLibrary_block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 initWithEntityName:v4];

  v6 = [PLManagedAsset predicateForSyndicatedAssetIdentifiers:*(a1 + 40) includeRejected:1];
  v7 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 0}];
  v8 = MEMORY[0x1E696AB28];
  v23[0] = v6;
  v23[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v10 = [v8 andPredicateWithSubpredicates:v9];

  [v5 setPredicate:v10];
  v11 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v5];
  [v11 setResultType:2];
  v20 = 0;
  v12 = [v2 executeRequest:v11 error:&v20];
  v13 = v20;
  v14 = [v12 result];
  v15 = PLSyndicationGetLog();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v13;
      v17 = "[sync.spotlightReceiver] : Chat was updated, unable to delete SPL assets: %@";
      v18 = v16;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v22 = v14;
    v17 = "[sync.spotlightReceiver] : Chat was updated, deleted %{public}@ SPL assets";
    v18 = v16;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }
}

uint64_t PLSyndicationPreferencesEnabled(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.SocialLayer"];
  v3 = [v2 BOOLForKey:@"SharedWithYouEnabled"];
  v4 = [v2 dictionaryForKey:@"SharedWithYouApps"];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.mobileslideshow"];
  v6 = [v5 BOOLValue];

  if (a1)
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109634;
      v9[1] = v3 & v6;
      v10 = 1024;
      v11 = v3;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "syndication preferences enabled = %d, global = %d, apps = %{public}@", v9, 0x18u);
    }
  }

  return v3 & v6;
}

unint64_t PLSyndicationCSProvideOptionsFromRequestOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 downloadOptions];
  v6 = [v5 priority];

  if (v6 == 2)
  {
    v7 = [v4 isEqualToString:*MEMORY[0x1E69BFF00]];
    if (v7)
    {
      v8 = 10;
    }

    else
    {
      v8 = 2;
    }

    v9 = [v3 isNetworkAccessAllowed];
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  }

  else
  {
    v9 = [v3 isNetworkAccessAllowed];
    v10 = 7;
    v8 = 6;
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

uint64_t PLSyndicationAssetRequiresBlastDoorToAccessOriginals(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PADisablePhotosBlastDoorProcessing"];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 importedByBundleIdentifier];
    v4 = [v5 isEqualToString:*MEMORY[0x1E69BFF00]];
  }

  return v4;
}

uint64_t PLLibraryBundleSupportsSyndicationQueryType(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if ((a2 - 1) >= 2)
  {
    if (a2 == 3)
    {
      v5 = 1;
      goto LABEL_7;
    }

    if (a2 != 4)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  v5 = [v3 isSystemPhotoLibrary] ^ 1;
LABEL_7:

  return v5;
}

uint64_t PLSpotlightReceiverLastUpdate()
{
  if ((PLIsReallyAssetsd() & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDate * _Nullable PLSpotlightReceiverLastUpdate(void)"];
    [v1 handleFailureInFunction:v2 file:@"PLSyndicationUtils.m" lineNumber:1176 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];
  }

  return PLResultWithUnfairLock();
}

id __PLSpotlightReceiverLastUpdate_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"PLSyndicationLastUpdateDate"];

  return v1;
}

uint64_t __Block_byref_object_copy__28477(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1B3AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PLPersonNameSourceDescription(unsigned int a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported-%ld", a1];
  }

  else
  {
    v2 = off_1E756A798[a1];
  }

  return v2;
}

__CFString *PLFaceTrainingTypeDescription(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E756A7D0[a1];
  }
}

void sub_19C1B55F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29272(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1B5728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1B5980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1B5E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v33 - 136));
  _Unwind_Resume(a1);
}

void sub_19C1B65E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19C1B6784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1B8828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL infoVolumeMatchesLibrary(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69BF208];
  v4 = a2;
  v5 = [a1 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = [v3 mountPointForPath:v5];

  v7 = MEMORY[0x1E69BF208];
  v8 = [v4 pathManager];

  v9 = [v8 libraryURL];
  v10 = [v9 path];
  v11 = [v7 mountPointForPath:v10];

  v12 = v6 && v11 && ([v6 isEqualToString:v11] & 1) != 0;
  return v12;
}

uint64_t __Block_byref_object_copy__29935(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PLLogBlockExecutionTime_block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) managedObjectContext];
  v2 = [v5 name];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __PLLogBlockExecutionTime_block_invoke_146(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __PLLogBlockExecutionTime_block_invoke_2;
  v3[3] = &unk_1E7578848;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performBlockAndWait:v3];
}

void __PLLogBlockExecutionTime_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = +[PLManagedAsset fetchRequest];
  v7 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v7];
  v5 = v7;

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error fetching asset count: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"libraryAssetCount"];
  }
}

uint64_t fts5_api_from_db(sqlite3 *a1)
{
  *&v22[7] = *MEMORY[0x1E69E9840];
  pStmt = 0;
  v18 = 0;
  v2 = sqlite3_prepare_v2(a1, "SELECT fts5(?1)", -1, &pStmt, 0);
  if (v2)
  {
    v3 = v2;
    v4 = PLSearchBackendPSITokenizerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sqlite3_errmsg(a1);
      *buf = 67109378;
      v20 = v3;
      v21 = 2080;
      *v22 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to prepare SELECT FTS5 API statement (%d). Err: %s.", buf, 0x12u);
    }

    return 0;
  }

  v6 = sqlite3_bind_pointer(pStmt, 1, &v18, "fts5_api_ptr", 0);
  if (v6)
  {
    v7 = v6;
    v8 = PLSearchBackendPSITokenizerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sqlite3_errmsg(a1);
      *buf = 67109378;
      v20 = v7;
      v21 = 2080;
      *v22 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to bind pointer for FTS5 API (%d). Err: %s.", buf, 0x12u);
    }

    sqlite3_finalize(pStmt);
    return 0;
  }

  v11 = sqlite3_step(pStmt);
  if ((v11 - 102) > 0xFFFFFFFD)
  {
    if (!v18)
    {
      v16 = PLSearchBackendPSITokenizerGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "FTS5 API setup failed unexpectedly. API pointer is NULL.", buf, 2u);
      }
    }
  }

  else
  {
    v12 = v11;
    v13 = PLSearchBackendPSITokenizerGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sqlite3_extended_errcode(a1);
      v15 = sqlite3_errmsg(a1);
      *buf = 67109634;
      v20 = v12;
      v21 = 1024;
      *v22 = v14;
      v22[2] = 2080;
      *&v22[3] = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to step FTS5 API statement (%d / %d). Err: %s.", buf, 0x18u);
    }

    v18 = 0;
  }

  sqlite3_finalize(pStmt);
  return v18;
}

uint64_t PSITokenizerTokenize(id *a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5, unsigned int (*a6)(uint64_t, void, const char *, uint64_t, uint64_t, uint64_t))
{
  v55[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (a5)
  {
    if (!a4)
    {
      v11 = PLSearchBackendPSITokenizerGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_FAULT, "pText is NULL", buf, 2u);
      }

      goto LABEL_49;
    }

    if (a5 != 1 || *a4)
    {
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = a5 - 1;
      if (a4[v10])
      {
        LODWORD(v10) = a5;
      }

      v11 = [v9 initWithBytes:a4 length:v10 encoding:4];
      if (!v11)
      {
        v14 = PLSearchBackendPSITokenizerGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_FAULT, "Could not decode tokinizer text as utf8", buf, 2u);
        }

        goto LABEL_48;
      }

      v12 = [v8 newTokensFromString:v11 withOptions:0 outCopyRanges:0 error:0];
      if (![v12 count])
      {
        v55[0] = v11;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];

        v12 = v13;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (!v15)
      {
        goto LABEL_47;
      }

      v16 = v15;
      v17 = 0;
      v18 = *v46;
      v19 = a5;
      v42 = v14;
      v40 = v11;
      v41 = v8;
LABEL_12:
      v20 = 0;
      while (1)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v45 + 1) + 8 * v20);
        v22 = [v21 UTF8String];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 lengthOfBytesUsingEncoding:4];
          v25 = v19 - v17;
          if (v19 < v17)
          {
            v38 = PLSearchBackendPSITokenizerGetLog();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v34 = "Tokenizer offset has exceeded the length of the string";
            goto LABEL_43;
          }

          if (v25 <= 0)
          {
            v38 = PLSearchBackendPSITokenizerGetLog();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v34 = "Searching for token in empty text";
LABEL_43:
            v35 = v38;
            v36 = 2;
            goto LABEL_44;
          }

          v26 = v24;
          v27 = strnstr(&a4[v17], v23, v25);
          if (!v27)
          {
            v33 = PLSearchBackendPSITokenizerGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v50 = v21;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_FAULT, "Could not find token (%@) in text; strnstr function returned NULL", buf, 0xCu);
            }

            v14 = v42;
            if (a6(a2, 0, v23, v26, 0xFFFFFFFFLL, 0xFFFFFFFFLL))
            {
              v38 = PLSearchBackendPSITokenizerGetLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v50 = v21;
                v51 = 1024;
                *v52 = -1;
                *&v52[4] = 1024;
                *&v52[6] = -1;
                v34 = "Could not index token (%@), in UTF8 range %i ..< %i";
                v35 = v38;
                v36 = 24;
LABEL_44:
                _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_FAULT, v34, buf, v36);
              }

LABEL_45:
              v11 = v40;
              v8 = v41;
LABEL_46:

              goto LABEL_47;
            }

            goto LABEL_32;
          }

          if (*v23)
          {
            v28 = v27 - a4;
            v17 = v27 - a4 + v26;
            if (a6(a2, 0, v23, v26, v27 - a4, v17))
            {
              v38 = PLSearchBackendPSITokenizerGetLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v50 = v21;
                v51 = 2048;
                *v52 = v28;
                *&v52[8] = 2048;
                v53 = v17;
                _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_FAULT, "Could not index token (%@), in UTF8 range %ld ..< %ld", buf, 0x20u);
              }

              v11 = v40;
              v8 = v41;
              v14 = v42;
              goto LABEL_46;
            }

            v14 = v42;
            goto LABEL_32;
          }

          v29 = PLSearchBackendPSITokenizerGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v50 = v21;
            v30 = v29;
            v31 = "Could not find token (%@) in text; strnstr function returned the super/big string";
            v32 = 12;
            goto LABEL_30;
          }
        }

        else
        {
          v29 = PLSearchBackendPSITokenizerGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v30 = v29;
            v31 = "Result of [token UTF8String] is NULL";
            v32 = 2;
LABEL_30:
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_FAULT, v31, buf, v32);
          }
        }

LABEL_32:
        if (v16 == ++v20)
        {
          v16 = [v14 countByEnumeratingWithState:&v45 objects:v54 count:16];
          v11 = v40;
          v8 = v41;
          if (v16)
          {
            goto LABEL_12;
          }

LABEL_47:

LABEL_48:
LABEL_49:

          break;
        }
      }
    }
  }

  return 0;
}

uint64_t PSITokenizerCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sqlite3_malloc(8);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  result = 0;
  *v7 = a1;
  *a4 = v7;
  return result;
}

void *__getPIAutoLoopFlavorFromStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIAutoLoopFlavorFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIAutoLoopFlavorFromStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PhotoImagingLibrary_30459()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoImagingLibraryCore_frameworkLibrary_30483)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotoImagingLibraryCore_block_invoke_30484;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E756AAE8;
    v6 = 0;
    PhotoImagingLibraryCore_frameworkLibrary_30483 = _sl_dlopen();
  }

  v0 = PhotoImagingLibraryCore_frameworkLibrary_30483;
  if (!PhotoImagingLibraryCore_frameworkLibrary_30483)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoImagingLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:58 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIAutoLoopFlavorProducesOnlyVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getPISmartToneAutoCalculatorClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PISmartToneAutoCalculator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPISmartToneAutoCalculatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPISmartToneAutoCalculatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:70 description:{@"Unable to find class %s", "PISmartToneAutoCalculator"}];

    __break(1u);
  }
}

uint64_t __PhotoImagingLibraryCore_block_invoke_30484()
{
  result = _sl_dlopen();
  PhotoImagingLibraryCore_frameworkLibrary_30483 = result;
  return result;
}

id getPIPhotoEditHelperClass_30489()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPIPhotoEditHelperClass_softClass_30493;
  v7 = getPIPhotoEditHelperClass_softClass_30493;
  if (!getPIPhotoEditHelperClass_softClass_30493)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPIPhotoEditHelperClass_block_invoke_30494;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPIPhotoEditHelperClass_block_invoke_30494(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C1C2CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPIPhotoEditHelperClass_block_invoke_30494(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PIPhotoEditHelper");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPIPhotoEditHelperClass_softClass_30493 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIPhotoEditHelperClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:60 description:{@"Unable to find class %s", "PIPhotoEditHelper"}];

    __break(1u);
  }
}

void __getPILongExposureFusionAutoCalculatorClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PILongExposureFusionAutoCalculator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPILongExposureFusionAutoCalculatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPILongExposureFusionAutoCalculatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:72 description:{@"Unable to find class %s", "PILongExposureFusionAutoCalculator"}];

    __break(1u);
  }
}

void sub_19C1C5110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPICompositionExporterVideoOptionsClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionExporterVideoOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionExporterVideoOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionExporterVideoOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:64 description:{@"Unable to find class %s", "PICompositionExporterVideoOptions"}];

    __break(1u);
  }
}

void sub_19C1C52C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPICompositionExporterImageOptionsClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionExporterImageOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionExporterImageOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionExporterImageOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:66 description:{@"Unable to find class %s", "PICompositionExporterImageOptions"}];

    __break(1u);
  }
}

id getPICompositionExporterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPICompositionExporterClass_softClass;
  v7 = getPICompositionExporterClass_softClass;
  if (!getPICompositionExporterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPICompositionExporterClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getPICompositionExporterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C1C5490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPICompositionExporterClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PICompositionExporter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPICompositionExporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPICompositionExporterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:62 description:{@"Unable to find class %s", "PICompositionExporter"}];

    __break(1u);
  }
}

void sub_19C1C574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNURenderContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNURenderContextClass_softClass;
  v7 = getNURenderContextClass_softClass;
  if (!getNURenderContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNURenderContextClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getNURenderContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C1C582C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNUPriorityClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary_30538();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NUPriority");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUPriorityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUPriorityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:78 description:{@"Unable to find class %s", "NUPriority"}];

    __break(1u);
  }
}

void *NeutrinoCoreLibrary_30538()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary_30540)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NeutrinoCoreLibraryCore_block_invoke_30541;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E756AAD0;
    v6 = 0;
    NeutrinoCoreLibraryCore_frameworkLibrary_30540 = _sl_dlopen();
  }

  v0 = NeutrinoCoreLibraryCore_frameworkLibrary_30540;
  if (!NeutrinoCoreLibraryCore_frameworkLibrary_30540)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NeutrinoCoreLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:59 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __NeutrinoCoreLibraryCore_block_invoke_30541()
{
  result = _sl_dlopen();
  NeutrinoCoreLibraryCore_frameworkLibrary_30540 = result;
  return result;
}

void __getNURenderContextClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary_30538();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NURenderContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNURenderContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNURenderContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:76 description:{@"Unable to find class %s", "NURenderContext"}];

    __break(1u);
  }
}

void __getPIPortraitAutoCalculatorClass_block_invoke(uint64_t a1)
{
  PhotoImagingLibrary_30459();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PIPortraitAutoCalculator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPIPortraitAutoCalculatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPIPortraitAutoCalculatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:68 description:{@"Unable to find class %s", "PIPortraitAutoCalculator"}];

    __break(1u);
  }
}

void sub_19C1C63AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1C67B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPIPortraitInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIPortraitInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIPortraitInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIPortraitStrengthKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIPortraitStrengthKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIPortraitStrengthKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIPortraitSpillMatteAllowedKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIPortraitSpillMatteAllowedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIPortraitSpillMatteAllowedKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIDepthInfoKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIDepthInfoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIDepthInfoKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIDepthApertureKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIDepthApertureKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIDepthApertureKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIDepthFocusRectKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIDepthFocusRectKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIDepthFocusRectKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getPIDepthGlassesMatteAllowedKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotoImagingLibrary_30459();
  result = dlsym(v2, "PIDepthGlassesMatteAllowedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPIDepthGlassesMatteAllowedKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C1C6B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MetalLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MetalLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E756AB00;
    v7 = 0;
    MetalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MetalLibraryCore_frameworkLibrary;
  if (!MetalLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MetalLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"PLPhotoEditRenderer.m" lineNumber:31 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MTLCreateSystemDefaultDevice");
  *(*(a1[4] + 8) + 24) = result;
  getMTLCreateSystemDefaultDeviceSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MetalLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MetalLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19C1C7564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNUOrientationIsValidSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NeutrinoCoreLibrary_30538();
  result = dlsym(v2, "NUOrientationIsValid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNUOrientationIsValidSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19C1C7724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNUGlobalSettingsClass_block_invoke(uint64_t a1)
{
  NeutrinoCoreLibrary_30538();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NUGlobalSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNUGlobalSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNUGlobalSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:74 description:{@"Unable to find class %s", "NUGlobalSettings"}];

    __break(1u);
  }
}

void sub_19C1C98EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, os_signpost_id_t a11, os_activity_scope_state_s a12, SEL sel, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 buf)
{
  if (a9 == 1)
  {
    os_activity_scope_leave(&a12);
  }

  if (a11)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    if (a11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, a11, "Cleanup for store demo mode [requested by SpringBoard]", "%{public}s", &buf, 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C1CA6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31054(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1CAB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1CC218(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__233(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1CE168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1CF808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__31517(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _networkReachabilityQueue()
{
  pl_dispatch_once();
  v0 = _networkReachabilityQueue_pl_once_object_3;

  return v0;
}

void ___networkReachabilityQueue_block_invoke()
{
  v0 = dispatch_queue_create("_networkReachabilityQueue", 0);
  v1 = _networkReachabilityQueue_pl_once_object_3;
  _networkReachabilityQueue_pl_once_object_3 = v0;
}

__CFString *PLMomentDescriptionForProcessedLocationType(unsigned int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 >= 0xB)
  {
    v3 = PLMomentsGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = a1;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Unknown moment processed location type (%lu)", buf, 0xCu);
    }

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%lu)", a1];
  }

  else
  {
    v2 = off_1E756AC50[a1];
  }

  return v2;
}

__CFString *PLPhotosHighlightDataVisibilityStateKeyForSharingConsideration(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E756ACA8[a1];
  }
}

__CFString *_PLToStringFromTypeAndValueWithDescriptionBlock(const char *a1, NSRect *a2, void *a3)
{
  v5 = a3;
  if (!strcmp(a1, "{CGPoint=dd}"))
  {
    v9 = NSStringFromPoint(a2->origin);
    goto LABEL_58;
  }

  if (!strcmp(a1, "{CGSize=dd}"))
  {
    v9 = NSStringFromSize(a2->origin);
    goto LABEL_58;
  }

  if (!strcmp(a1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    v9 = NSStringFromRect(*a2);
    goto LABEL_58;
  }

  if (!strcmp(a1, "{_NSRange=QQ}"))
  {
    v9 = NSStringFromRange(a2->origin);
    goto LABEL_58;
  }

  v6 = *a1;
  if (v6 <= 0x52)
  {
    if (*a1 <= 0x42u)
    {
      if (v6 == 58)
      {
        if (!a1[1])
        {
          v9 = NSStringFromSelector(*&a2->origin.x);
          goto LABEL_58;
        }
      }

      else if (v6 == 64)
      {
        if (!a1[1])
        {
          v9 = v5[2](v5, *&a2->origin.x);
          goto LABEL_58;
        }
      }

      else if (v6 == 66 && !a1[1])
      {
        if (LOBYTE(a2->origin.x))
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v9 = v10;
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (v6 == 67)
    {
      if (a1[1])
      {
        goto LABEL_56;
      }

      v13 = MEMORY[0x1E696AEC0];
      x_low = LOBYTE(a2->origin.x);
    }

    else
    {
      if (v6 != 73)
      {
        if (v6 != 81 || a1[1])
        {
          goto LABEL_56;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *&a2->origin.x, v17];
        goto LABEL_57;
      }

      if (a1[1])
      {
        goto LABEL_56;
      }

      v13 = MEMORY[0x1E696AEC0];
      x_low = LODWORD(a2->origin.x);
    }

LABEL_62:
    [v13 stringWithFormat:@"%u", x_low, v17];
    goto LABEL_57;
  }

  if (*a1 <= 0x65u)
  {
    if (v6 != 83)
    {
      if (v6 == 99)
      {
        if (!a1[1])
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = SLOBYTE(a2->origin.x);
          goto LABEL_48;
        }

        goto LABEL_56;
      }

      if (v6 != 100 || a1[1])
      {
        goto LABEL_56;
      }

      v11 = MEMORY[0x1E696AEC0];
      x = a2->origin.x;
      v12 = 15;
LABEL_41:
      [v11 stringWithFormat:@"%.*g", v12, *&x];
      goto LABEL_57;
    }

    if (a1[1])
    {
      goto LABEL_56;
    }

    v13 = MEMORY[0x1E696AEC0];
    x_low = LOWORD(a2->origin.x);
    goto LABEL_62;
  }

  if (*a1 <= 0x70u)
  {
    if (v6 != 102)
    {
      if (v6 == 105 && !a1[1])
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = LODWORD(a2->origin.x);
LABEL_48:
        [v7 stringWithFormat:@"%d", v8, v17];
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (a1[1])
    {
      goto LABEL_56;
    }

    v11 = MEMORY[0x1E696AEC0];
    x = *&a2->origin.x;
    v12 = 6;
    goto LABEL_41;
  }

  if (v6 != 113)
  {
    if (v6 == 115 && !a1[1])
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = SLOWORD(a2->origin.x);
      goto LABEL_48;
    }

LABEL_56:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown typeCode: %s, %p", a1, a2];
    goto LABEL_57;
  }

  if (a1[1])
  {
    goto LABEL_56;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", *&a2->origin.x, v17];
  v9 = LABEL_57:;
LABEL_58:
  v15 = v9;

  return v15;
}

void sub_19C1D3BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, os_signpost_id_t a19, os_activity_scope_state_s a20, SEL sel)
{
  if (a17 == 1)
  {
    os_activity_scope_leave(&a20);
  }

  if (a19)
  {
    v23 = PLRequestGetLog();
    v24 = v23;
    if (a19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      Name = sel_getName(sel);
      *(v21 - 96) = 136446210;
      *(v21 - 92) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v24, OS_SIGNPOST_INTERVAL_END, a19, "PLXPC Sync", "%{public}s", (v21 - 96), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C1D4468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, os_signpost_id_t a25, os_activity_scope_state_s a26, SEL sel)
{
  if (a23 == 1)
  {
    os_activity_scope_leave(&a26);
  }

  if (a25)
  {
    v29 = PLRequestGetLog();
    v30 = v29;
    if (a25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      Name = sel_getName(sel);
      *(v27 - 128) = 136446210;
      *(v27 - 124) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v30, OS_SIGNPOST_INTERVAL_END, a25, "PLXPC Sync", "%{public}s", (v27 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C1D4C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, os_signpost_id_t a23, os_activity_scope_state_s a24, SEL sel)
{
  if (a21 == 1)
  {
    os_activity_scope_leave(&a24);
  }

  if (a23)
  {
    v27 = PLRequestGetLog();
    v28 = v27;
    if (a23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      Name = sel_getName(sel);
      *(v25 - 128) = 136446210;
      *(v25 - 124) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, a23, "PLXPC Sync", "%{public}s", (v25 - 128), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19C1D54C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, os_signpost_id_t a21, os_activity_scope_state_s a22, SEL sel)
{
  if (a19 == 1)
  {
    os_activity_scope_leave(&a22);
  }

  if (a21)
  {
    v26 = PLRequestGetLog();
    v27 = v26;
    if (a21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      Name = sel_getName(sel);
      *(v24 - 112) = 136446210;
      *(v23 + 4) = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_END, a21, "PLXPC Sync", "%{public}s", (v24 - 112), 0xCu);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t PLGetGeohashCoordinates(uint64_t result)
{
  v1 = 16384.0;
  v2 = -16384.0;
  v3 = 32768.0;
  v4 = 32768.0;
  do
  {
    v5 = result >> 30;
    result = (4 * result);
    v4 = v4 * 0.5;
    v3 = v3 * 0.5;
    if (v5 == 2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v2 + v4;
    }

    if (v5)
    {
      v2 = v2 + v4;
    }

    if (v5 > 1)
    {
      v1 = v1 - v3;
      v2 = v6;
    }
  }

  while (v4 != 1.0 || v3 != 1.0);
  return result;
}

uint64_t PLGetCoordinatesGeohash(double a1, double a2)
{
  LODWORD(result) = 0;
  v3 = 30;
  v4 = 32768.0;
  v5 = 16384.0;
  v6 = -16384.0;
  v7 = 32768.0;
  do
  {
    v7 = v7 * 0.5;
    v4 = v4 * 0.5;
    v8 = a1 > v6 + v7;
    if (a1 <= v6 + v7)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (a2 < v5 - v4)
    {
      v8 = v9;
    }

    if (v8 == 2)
    {
      v10 = v6;
    }

    else
    {
      v10 = v6 + v7;
    }

    if (v8)
    {
      v6 = v6 + v7;
    }

    if (v8 > 1)
    {
      v5 = v5 - v4;
      v6 = v10;
    }

    v11 = v8 << v3;
    v3 -= 2;
    result = v11 | result;
  }

  while (v7 != 1.0 || v4 != 1.0);
  return result;
}

uint64_t PLCalculateAreaHashImpl(int a1, uint64_t a2, int a3, CLLocationDegrees a4, CLLocationDegrees a5, double a6, double a7, double a8, double a9)
{
  if (a3 <= a1)
  {
    v17 = a1;
  }

  else
  {
    v17 = a3;
  }

  v18 = 31 - 2 * a3;
  for (i = v17 - a3; ; --i)
  {
    v23.latitude = a4;
    v23.longitude = a5;
    if (!CLLocationCoordinate2DIsValid(v23))
    {
      break;
    }

    if (a1 >= 17)
    {
      __assert_rtn("PLCalculateAreaHashImpl", "CLLocation+PLLocationHash.m", 165, "hashResolution <= kMaxStepNumber");
    }

    if (!i)
    {
      return a2;
    }

    v20 = (a6 + a8) * 0.5;
    v21 = (a7 + a9) * 0.5;
    if (a4 <= v20)
    {
      a6 = (a6 + a8) * 0.5;
    }

    else
    {
      a8 = (a6 + a8) * 0.5;
    }

    if (a5 > v21)
    {
      a7 = (a7 + a9) * 0.5;
    }

    else
    {
      a9 = (a7 + a9) * 0.5;
    }

    a2 = (((a5 > v21) | (2 * (a4 <= v20))) << v18) | a2;
    v18 -= 2;
  }

  return 0;
}

double PLGetNextBounds(int a1, double result, double a3, double a4)
{
  v4 = a4 * 0.5;
  v5 = result + v4;
  if (a1 == 1)
  {
    v6 = result + v4;
  }

  else
  {
    v6 = result;
  }

  if (a1 != 2)
  {
    result = v6;
  }

  if (a1 == 3)
  {
    return v5;
  }

  return result;
}

uint64_t PLGetNextMoveDirection(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 + a3 * 0.5;
  v7 = a2 - a4 * 0.5;
  if (a5 <= v6)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (a6 >= v7)
  {
    return a5 > v6;
  }

  else
  {
    return v8;
  }
}

void sub_19C1D8E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1D9674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19C1DAA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLXPCStoreDeniedEntityNames()
{
  pl_dispatch_once();
  v0 = PLXPCStoreDeniedEntityNames_pl_once_object_16;

  return v0;
}

void __PLXPCStoreDeniedEntityNames_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AssetAnalysisState", @"BackgroundJobWorkItem", @"CharacterRecognitionAttributes", @"VisualSearchAttributes", @"CloudFeedAssetsEntry", @"CloudFeedCommentsEntry", @"CloudFeedEntry", @"CloudSharedAlbumInvitationRecord", @"CloudSharedComment", @"Codec", @"ComputedAssetAttributes", @"DeferredRebuildFace", @"DetectedFace", @"DetectedFaceGroup", @"DetectedFaceprint", @"EditedIPTCAttributes", @"FaceCrop", @"DetectionTrait", @"GlobalKeyValue", @"ImportSession", @"Conversation", @"InternalResourceCloudAttributes", @"LegacyFace", @"LibraryScope", @"LimitedLibraryFetchFilter", @"MediaAnalysisAssetAttributes", @"Memory", @"MigrationHistory", @"MomentShare", @"Person", @"PersonReference", @"Question", @"SceneClassification", @"Sceneprint", @"Share", @"ShareParticipant", @"Suggestion", @"UserFeedback", @"AssetContributor", @"GraphNode", @"GraphEdge", @"GraphLabel", @"GraphNodeValue", @"GraphEdgeValue", @"GraphNodeAdditionalLabelAssignment", @"GraphEdgeAdditionalLabelAssignment", @"ComputeSyncAttributes", @"TransientInternalResource", 0}];
  v1 = PLXPCStoreDeniedEntityNames_pl_once_object_16;
  PLXPCStoreDeniedEntityNames_pl_once_object_16 = v0;
}

void __PLXPCStoreAllowedEntityNames_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = +[PLGenericAlbum entityName];
  v1 = +[PLAssetResourceUploadJobConfiguration entityName];
  v2 = +[PLAssetResourceUploadJob entityName];
  v3 = +[PLAssetResourceUploadJobRequest entityName];
  v4 = [v0 initWithObjects:{@"AdditionalAssetAttributes", @"Album", @"AlbumList", @"Asset", @"AssetDescription", @"CloudMaster", @"CloudMasterMediaMetadata", @"CloudResource", @"CloudSharedAlbum", @"CollectionShare", @"ExtendedAttributes", @"FetchingAlbum", @"FileSystemBookmark", @"FileSystemVolume", @"Folder", v6, @"InternalResource", @"Keyword", @"LegacyFaceAlbum", @"Moment", @"MomentList", @"PhotoStreamAlbum", @"PhotosHighlight", @"ProjectAlbum", @"DuplicateAlbum", @"UnmanagedAdjustment", @"UniformTypeIdentifier", @"PhotoAnalysisAssetAttributes", v1, v2, v3, 0}];
  v5 = PLXPCStoreAllowedEntityNames_pl_once_object_15;
  PLXPCStoreAllowedEntityNames_pl_once_object_15 = v4;
}

void sub_19C1DB8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1DBB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1DC728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getVCPMediaAnalysisServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMediaAnalysisServiceClass_softClass;
  v7 = getVCPMediaAnalysisServiceClass_softClass;
  if (!getVCPMediaAnalysisServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVCPMediaAnalysisServiceClass_block_invoke;
    v3[3] = &unk_1E7577EA0;
    v3[4] = &v4;
    __getVCPMediaAnalysisServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19C1DCC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVCPMediaAnalysisServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MediaAnalysisLibraryCore_frameworkLibrary_33062)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MediaAnalysisLibraryCore_block_invoke_33063;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E756AF28;
    v8 = 0;
    MediaAnalysisLibraryCore_frameworkLibrary_33062 = _sl_dlopen();
  }

  if (!MediaAnalysisLibraryCore_frameworkLibrary_33062)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaAnalysisLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PLDeferredPhotoFinalizer.m" lineNumber:81 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VCPMediaAnalysisService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVCPMediaAnalysisServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PLDeferredPhotoFinalizer.m" lineNumber:82 description:{@"Unable to find class %s", "VCPMediaAnalysisService"}];

LABEL_10:
    __break(1u);
  }

  getVCPMediaAnalysisServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAnalysisLibraryCore_block_invoke_33063()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore_frameworkLibrary_33062 = result;
  return result;
}

void sub_19C1DD3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33087(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19C1DD9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1DE1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location, char a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v35 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a35);
  objc_destroyWeak((v36 - 152));
  _Unwind_Resume(a1);
}

void sub_19C1DF6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19C1E1888(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Unwind_Resume(a1);
}

void sub_19C1E39C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(a1);
    v28 = PLDeferredProcessingGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a22;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Finalization requested for asset with unknown deferredPhotoIdentifier: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x19C1E3318);
  }

  _Unwind_Resume(a1);
}

__CFString *PLDeferredPhotoFinalizerUseCaseToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@".Unknown(%zd)", a1];
  }

  else
  {
    v2 = off_1E756AF40[a1];
  }

  return v2;
}

void sub_19C1E5C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}