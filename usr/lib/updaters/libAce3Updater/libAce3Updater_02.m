uint64_t FWImageCreate(void *a1)
{
  if (!a1)
  {
    return 30;
  }

  v2 = uarpZalloc(0x48uLL);
  *a1 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

uint64_t FWImageDestroy(void **a1)
{
  if (!a1)
  {
    return 30;
  }

  if (!*a1)
  {
    return 30;
  }

  for (i = 32; i != 64; i += 8)
  {
    v3 = *(*a1 + i);
    if (v3)
    {
      uarpFree(v3);
      *(*a1 + i) = 0;
    }
  }

  uarpFree(*a1);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t FWImageCreateImageBuffer(uint32x4_t *a1, void *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    for (i = 0; i != 4; ++i)
    {
      if (a1[1].i32[i] != a1->i32[i])
      {
        return 49;
      }
    }

    v8 = vaddlvq_u32(*a1);
    v9 = v8 + 64;
    v10 = (v8 + 64) >> 32;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 + 64;
    }

    if (v10)
    {
      return 54;
    }

    else
    {
      result = uarpZalloc(v8 + 64);
      if (result)
      {
        v12 = result;
        v13 = 0;
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *(result + 32) = v14;
        *(result + 48) = v14;
        *result = v14;
        *(result + 16) = v14;
        *result = -1394606077;
        *(result + 4) = a1[4].i32[0];
        *(result + 8) = 0x4000002800;
        *(result + 16) = a1->i32[0];
        *(result + 20) = a1->i32[1];
        *(result + 24) = a1->i32[0] + a1->i32[1] + 64;
        v15 = v9 - 64;
        *(result + 28) = a1->i32[3] + a1->i32[2];
        *(result + 32) = v15;
        v16 = 64;
        do
        {
          memcpy(v12 + v16, a1[2].i64[v13], a1->u32[v13]);
          v16 += a1->u32[v13++];
        }

        while (v13 != 4);
        if (v16 == v11)
        {
          v17 = CRCBuffer((v12 + 16), v15, 0xFFFFFFFFLL);
          result = 0;
          v12[9] = v17;
          *a2 = v12;
          *a3 = v11;
        }

        else
        {
          uarpFree(v12);
          return 39;
        }
      }
    }
  }

  return result;
}

uint64_t FWImageDestroyImageBuffer(void **a1)
{
  if (!a1)
  {
    return 30;
  }

  v2 = *a1;
  if (!v2)
  {
    return 30;
  }

  uarpFree(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t FWImageSetComponentSize(uint32x4_t *a1, unsigned int a2, unsigned __int32 a3)
{
  result = 30;
  if (a1 && a2 <= 3)
  {
    a1->i32[a2] = 0;
    v6 = a1 + 2;
    v7 = a1[2].i64[a2];
    v8 = a2;
    if (v7)
    {
      uarpFree(v7);
      v6->i64[v8] = 0;
    }

    v9 = vaddlvq_u32(*a1);
    if ((v9 + 64) >> 32)
    {
      v10 = 0;
    }

    else
    {
      v10 = (v9 + 64);
    }

    if (v10 + a3 > 0x7C000)
    {
      return 39;
    }

    else
    {
      v11 = uarpZalloc(a3);
      v6->i64[v8] = v11;
      if (v11)
      {
        result = 0;
        v12 = &a1->i32[v8];
        *v12 = a3;
        v12[4] = 0;
      }

      else
      {
        return 11;
      }
    }
  }

  return result;
}

uint64_t FWImageSetActiveComponent(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 30;
  }

  result = 0;
  *(a1 + 68) = a2;
  return result;
}

uint64_t FWImageAddBytes(uint64_t a1, const void *a2, size_t __n)
{
  result = 30;
  if (a1 && a2 && __n)
  {
    v5 = *(a1 + 68);
    v6 = *(a1 + 16 + 4 * v5);
    v7 = v6 + __n;
    if ((v6 + __n) > *(a1 + 4 * v5))
    {
      return 39;
    }

    else
    {
      memcpy((*(a1 + 8 * v5 + 32) + v6), a2, __n);
      result = 0;
      *(a1 + 16 + 4 * *(a1 + 68)) = v7;
    }
  }

  return result;
}

uint64_t FWImageSetFWVersion(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 30;
  }

  result = 0;
  *(a1 + 64) = a2;
  return result;
}

uint64_t set_nvram_variable(const char *a1, const UInt8 *a2, CFIndex a3)
{
  v6 = 3758097086;
  v7 = IORegistryEntryFromPath(*MEMORY[0x29EDBB118], "IODeviceTree:/options");
  if (!v7)
  {
    return 3758097136;
  }

  v8 = v7;
  v9 = *MEMORY[0x29EDB8ED8];
  v10 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a1, 0x600u);
  if (v10)
  {
    v11 = v10;
    v12 = CFDataCreateWithBytesNoCopy(v9, a2, a3, *MEMORY[0x29EDB8EE8]);
    if (v12)
    {
      v13 = v12;
      v14 = IORegistryEntrySetCFProperty(v8, v11, v12);
      if (v14)
      {
        if (inRestore == 1)
        {
          printf("Failed to set nvram variable %s: 0x%x\n", a1, v14);
        }

        else
        {
          uarpLogError(3u, "Failed to set nvram variable %s: 0x%x\n", a1, v14);
        }

        v6 = 3758097129;
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v13);
    }

    CFRelease(v11);
  }

  IOObjectRelease(v8);
  return v6;
}

uint64_t get_number_of_uart_hpms(int a1, _BYTE *a2, int a3, _BYTE *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  *buffer = 0;
  v24 = 0;
  v8 = 3758097136;
  v26 = 0;
  v25 = 0;
  *a4 = 0;
  edt_matching_dict = get_edt_matching_dict();
  *bytes = a1;
  v10 = *MEMORY[0x29EDB8ED8];
  v11 = CFDataCreate(*MEMORY[0x29EDB8ED8], bytes, 4);
  add_property_match(edt_matching_dict, @"rid", v11);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], edt_matching_dict);
  if (MatchingService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"uart-hpm-rids", v10, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      if (Length >= 4)
      {
        v16 = Length;
        if (Length > 0x1C)
        {
          v8 = 3758096385;
          goto LABEL_19;
        }

        if ((Length & 3) == 0)
        {
          v28.length = CFDataGetLength(v14);
          v28.location = 0;
          CFDataGetBytes(v14, v28, buffer);
          if (!a3)
          {
            v8 = 0;
LABEL_18:
            CFRelease(v14);
            goto LABEL_19;
          }

          v17 = (v16 >> 2) - 1;
          if (v17 >= (a3 - 1))
          {
            v17 = (a3 - 1);
          }

          v8 = v17 + 1;
          v18 = buffer;
          while (1)
          {
            v19 = *v18;
            if (*v18 >= 0x100u)
            {
              if (inRestore == 1)
              {
                printf("Invalid UART RID 0x%x for SPI RID 0x%x\n", *v18, a1);
              }

              else
              {
                uarpLogError(3u, "Invalid UART RID 0x%x for SPI RID 0x%x\n", *v18, a1);
              }

              v19 = *v18;
              if (*v18 > 0xFFu)
              {
                break;
              }
            }

            *a2++ = v19;
            ++*a4;
            v18 += 4;
            if (!--v8)
            {
              goto LABEL_18;
            }
          }
        }
      }

      v8 = 3758096385;
      goto LABEL_18;
    }
  }

LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t USBCUpdateSendManifestRequest(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x29EDCA608];
  v76 = 0;
  result = DynamicAssetCreate(&v76);
  if (!result)
  {
    bzero(v70, 0xE0uLL);
    uarpZero(v70, 0xE0uLL);
    v71 = DynamicAssetUARPGetBytes;
    v72 = DynamicAssetUARPSetBytes;
    v73 = DynamicAssetUARPReleased;
    v74 = fAssetProcessingNotification2_2;
    v75 = fAssetProcessingNotificationAck_1;
    v5 = uarpAssetTagStructPersonalization();
    uarpPlatformEndpointPrepareDynamicAsset(a1, a1 + 1248, v76, v5, v70);
    v6 = v76;
    v85 = 0;
    result = uarpPersonalizationRequestAssetInitialize(a1, v76, 1);
    if (!result)
    {
      v84 = 0;
      result = uarpPlatformAssetQueryAssetID(*a2, &v84);
      if (!result)
      {
        result = uarpPersonalizationRequestAddRemoteAssetID(a1, v6, v84);
        if (!result)
        {
          v7 = OUTLINED_FUNCTION_0_0();
          result = uarpPersonalizationRequestPreparePayload(v7, v8, v9);
          if (!result)
          {
            uarpAssetTagStructPersonalization();
            v10 = OUTLINED_FUNCTION_0_0();
            result = uarpPersonalizationRequestAddPayloadTag(v10, v11, v12, v13);
            if (!result)
            {
              v14 = *(a2 + 16);
              v15 = OUTLINED_FUNCTION_0_0();
              result = uarpPersonalizationRequestAddRemoteAssetPayloadIndex(v15, v16, v17, v18);
              if (!result)
              {
                v19 = OUTLINED_FUNCTION_0_0();
                result = uarpPersonalizationRequestAddManifestPrefix(v19, v20, v21, v22, 0x11u);
                if (!result)
                {
                  v23 = OUTLINED_FUNCTION_0_0();
                  result = uarpPersonalizationRequestAddPrefixNeedsLUN(v23, v24, v25, 1);
                  if (!result)
                  {
                    v83 = 0;
                    BackendGetPersParam(*(a1 + 1536));
                    if (v83)
                    {
                      v26 = OUTLINED_FUNCTION_0_0();
                      result = uarpPersonalizationRequestAddLogicalUnitNumber(v26, v27, v28, v29);
                      if (!result)
                      {
                        v82 = 0;
                        result = BackendGetPersParam(*(a1 + 1536));
                        if (!result)
                        {
                          v30 = OUTLINED_FUNCTION_0_0();
                          result = uarpPersonalizationRequestAddChipID(v30, v31, v32, v33);
                          if (!result)
                          {
                            v81 = 0;
                            result = BackendGetPersParam(*(a1 + 1536));
                            if (!result)
                            {
                              v34 = OUTLINED_FUNCTION_0_0();
                              result = uarpPersonalizationRequestAddBoardID64(v34, v35, v36, v37);
                              if (!result)
                              {
                                v80 = 0;
                                result = BackendGetPersParam(*(a1 + 1536));
                                if (!result)
                                {
                                  v38 = OUTLINED_FUNCTION_0_0();
                                  result = uarpPersonalizationRequestAddECID(v38, v39, v40, v41);
                                  if (!result)
                                  {
                                    v79 = 0;
                                    result = BackendGetPersParam(*(a1 + 1536));
                                    if (!result)
                                    {
                                      v42 = OUTLINED_FUNCTION_0_0();
                                      result = uarpPersonalizationRequestAddSecurityDomain(v42, v43, v44, v45);
                                      if (!result)
                                      {
                                        v78 = 0;
                                        result = BackendGetPersParam(*(a1 + 1536));
                                        if (!result)
                                        {
                                          v46 = OUTLINED_FUNCTION_0_0();
                                          result = uarpPersonalizationRequestAddProductionMode(v46, v47, v48, v49);
                                          if (!result)
                                          {
                                            v77 = 0;
                                            result = BackendGetPersParam(*(a1 + 1536));
                                            if (!result)
                                            {
                                              v50 = OUTLINED_FUNCTION_0_0();
                                              result = uarpPersonalizationRequestAddSecurityMode(v50, v51, v52, v53);
                                              if (!result)
                                              {
                                                v86 = 0;
                                                v87 = 0;
                                                result = BackendGetPersParam(*(a1 + 1536));
                                                if (!result)
                                                {
                                                  v54 = OUTLINED_FUNCTION_0_0();
                                                  result = uarpPersonalizationRequestAddNonceHash(v54, v55, v56, v57, 0x10u);
                                                  if (!result)
                                                  {
                                                    BackendGetFlags(*(a1 + 1536));
                                                    v58 = OUTLINED_FUNCTION_0_0();
                                                    result = uarpPersonalizationRequestMoreRequestsToFollow(v58, v59, v60, v61);
                                                    if (!result)
                                                    {
                                                      v62 = *(a2 + 40);
                                                      v63 = *(a2 + 48);
                                                      v64 = OUTLINED_FUNCTION_0_0();
                                                      result = uarpPersonalizationRequestAddMeasurement(v64, v65, v66, v67, v68);
                                                      if (!result)
                                                      {
                                                        result = uarpPersonalizationRequestAssetFinalize(a1, v6);
                                                        if (!result)
                                                        {
                                                          if (inRestore == 1 && (logLevel & 2) != 0)
                                                          {
                                                            puts("Offering IM4M to controller");
                                                          }

                                                          else
                                                          {
                                                            uarpLogInfo(3u, "Offering IM4M to controller\n");
                                                          }

                                                          result = uarpPlatformEndpointOfferAsset(a1, a1 + 1248, v76);
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      result = 54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v69 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DynamicAssetSetBytesAtOffset(unsigned int *a1, const void *a2, unsigned int a3, unsigned int a4)
{
  v4 = *a1;
  if (v4 < a4)
  {
    return 43;
  }

  v10 = a3 - (v4 - a4);
  if (a3 < v4 - a4)
  {
    v10 = 0;
  }

  if (v4 == a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  v12 = a1[1];
  if (v11 + v4 <= v12)
  {
    v16 = *(a1 + 1);
  }

  else
  {
    v13 = v4 + v11;
    if (v13 > 0x773593FF)
    {
      return 39;
    }

    do
    {
      v14 = v12;
      v12 *= 2;
    }

    while (v13 > v14);
    if (v14 > 0x773593FF)
    {
      return 39;
    }

    v15 = uarpZalloc(v14);
    if (!v15)
    {
      return 11;
    }

    v16 = v15;
    memcpy(v15, *(a1 + 1), *a1);
    uarpFree(*(a1 + 1));
    *(a1 + 1) = v16;
    a1[1] = v14;
  }

  memcpy(&v16[a4], a2, a3);
  result = 0;
  *a1 += v11;
  return result;
}

uint64_t DynamicAssetUARPGetBytes(int a1, int a2, uint64_t a3, void *__dst, unsigned int a5, unsigned int a6, _WORD *a7)
{
  if (!a3)
  {
    return 30;
  }

  v8 = *a3 - a6;
  if (*a3 >= a6)
  {
    if (v8 >= a5)
    {
      v9 = a5;
    }

    else
    {
      v9 = v8;
    }

    memcpy(__dst, (*(a3 + 8) + a6), v9);
    result = 0;
  }

  else
  {
    LOWORD(v9) = 0;
    result = 43;
  }

  *a7 = v9;
  return result;
}

uint64_t DynamicAssetUARPSetBytes(uint64_t a1, uint64_t a2, unsigned int *a3, const void *a4, unsigned int a5, unsigned int a6)
{
  if (a3)
  {
    return DynamicAssetSetBytesAtOffset(a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t internalBackendCreate(uint64_t **a1, int a2, int a3, int a4, uint64_t a5, int a6, char a7, int a8)
{
  v13 = a2;
  v31 = a2;
  if (os_parse_boot_arg_string())
  {
    inRestore = 1;
  }

  if ((os_parse_boot_arg_int() & 1) == 0)
  {
    logLevel = 1;
  }

  if (inRestore == 1)
  {
    printf("-restore is %u\n", 1);
  }

  else
  {
    uarpLogError(3u, "-restore is %u\n", 0);
  }

  if (!a1)
  {
    return 30;
  }

  v15 = uarpZalloc(0x70uLL);
  *a1 = v15;
  if (!v15)
  {
    return 11;
  }

  v30 = 0;
  readBootArg();
  v16 = *a1;
  if (a6)
  {
    *(v16 + 82) = 1;
  }

  *(v16 + 83) = a4;
  v29 = 0;
  if (a4)
  {
    readBootArg();
  }

  v28 = 0;
  readBootArg();
  v17 = *a1;
  *(v17 + 85) = a7;
  *(v17 + 27) = a8;
  v27 = 0;
  readBootArg();
  if (a3 >= 1)
  {
    rid_for_lun = get_rid_for_lun(a3, &v31);
    if (rid_for_lun)
    {
      return rid_for_lun;
    }

    v13 = v31;
  }

  v19 = *a1;
  *(v19 + 102) = v13;
  rid_for_lun = get_tag_for_rid(v13, v19 + 3);
  if (rid_for_lun)
  {
    return rid_for_lun;
  }

  AHPMLibInterfaceForRID = getAHPMLibInterfaceForRID(v31, *a1);
  if (AHPMLibInterfaceForRID)
  {
    v23 = AHPMLibInterfaceForRID;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    OUTLINED_FUNCTION_3(**a1);
    OUTLINED_FUNCTION_9();
    v22 = v21();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      if (inRestore == 1)
      {
        printf("Error: Got unexpected VID 0x%x\n");
      }

      else
      {
        uarpLogError(3u, "Error: Got unexpected VID 0x%x\n");
      }

      v23 = 30;
    }

    destroyAHPMLibInterface(*a1);
  }

  uarpFree(*a1);
  *a1 = 0;
  return v23;
}

uint64_t internalBackendDestroy(uint64_t **a1)
{
  if (!a1)
  {
    return 30;
  }

  v2 = *a1;
  if (!v2)
  {
    return 30;
  }

  handle_shared_spi(v2, 0);
  v3 = *a1;
  if (**a1)
  {
    destroyAHPMLibInterface(v3);
    v3 = *a1;
  }

  uarpFree(v3);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t internalBackendGetPersParam(uint64_t a1, unsigned int a2, void *__dst, unsigned int a4, _DWORD *a5)
{
  result = 30;
  if (a1 && __dst)
  {
    if (*(a1 + 81))
    {
      return 26;
    }

    if (a2 <= 0xD)
    {
      v8 = dword_299E7E8E8[a2];
      if (v8 <= a4)
      {
        v10 = qword_299E7E878[a2];
        if ((*(a1 + 16) & 1) == 0)
        {
          result = get_pers_params(a1);
          if (result)
          {
            return result;
          }

          *(a1 + 16) = 1;
        }

        memcpy(__dst, (a1 + v10), v8);
        result = 0;
        if (a5)
        {
          *a5 = v8;
        }
      }
    }
  }

  return result;
}

uint64_t internalBackendFlash(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v60 = *MEMORY[0x29EDCA608];
  v4 = 30;
  if (a1 && a2)
  {
    if (*(a1 + 81))
    {
      v4 = 26;
    }

    else
    {
      mode = get_mode(*a1);
      if (mode)
      {
        goto LABEL_82;
      }

      if (a4)
      {
        v56 = 0;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_9();
        if (v8())
        {
          OUTLINED_FUNCTION_2();
          if (v33)
          {
            printf("Bad return value from boot flags register read: 0x%x\n");
          }

          else
          {
            uarpLogError(3u, "Bad return value from boot flags register read: 0x%x\n");
          }
        }

        else
        {
          OUTLINED_FUNCTION_13();
          if (v33)
          {
            printf("Unexpected boot flags register length %llu\n");
          }

          else
          {
            uarpLogError(3u, "Unexpected boot flags register length %llu\n");
          }
        }
      }

      if (inRestore == 1)
      {
        printf("Ace in mode 0x%08x, performing SFW flash\n", 0);
      }

      else
      {
        uarpLogError(3u, "Ace in mode 0x%08x, performing SFW flash\n", 0);
      }

      mode = flash();
      if (mode)
      {
LABEL_82:
        v4 = mode;
      }

      else
      {
        OUTLINED_FUNCTION_2();
        if (v33 && (logLevel & 2) != 0)
        {
          puts("Persistent flash successful");
        }

        else
        {
          uarpLogInfo(3u, "Persistent flash successful\n");
        }

        *(a1 + 80) = 1;
        if (a4)
        {
          *(a1 + 86) = *a4;
          v9 = *(a1 + 102);
          v54 = 0;
          LOWORD(v56) = 0;
          uarpVersionToAceVersion(a4, &v54, &v56);
          v10 = v54;
          LODWORD(v53) = v54;
          v11 = v56;
          WORD2(v53) = v56;
          *__str = 0u;
          v59 = 0u;
          snprintf(__str, 0x20uLL, "usbc,version,rid%d", v9);
          if (inRestore != 1)
          {
            goto LABEL_20;
          }

          if ((logLevel & 2) != 0)
          {
            printf("Writing NVRAM variable %s to {0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x}\n", __str, v10, BYTE1(v10), BYTE2(v10), HIBYTE(v10), v11, v11 >> 8);
          }

          else
          {
LABEL_20:
            uarpLogInfo(3u, "Writing NVRAM variable %s to {0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x}\n", __str, v10, BYTE1(v10), BYTE2(v10), HIBYTE(v10), v11, v11 >> 8);
          }

          if (set_nvram_variable(__str, &v53, 6))
          {
            OUTLINED_FUNCTION_2();
            if (v33)
            {
              printf("Failed to persist FW version: 0x%x, treating as non-fatal\n", v12);
            }

            else
            {
              uarpLogError(3u, "Failed to persist FW version: 0x%x, treating as non-fatal\n");
            }
          }
        }

        *(&v53 + 3) = 0;
        LODWORD(v53) = 0;
        v57 = 0;
        *__str = 0;
        number_of_uart_hpms = get_number_of_uart_hpms(*(a1 + 102), &v53, 7, &v57);
        if (number_of_uart_hpms)
        {
          v4 = number_of_uart_hpms;
        }

        else
        {
          if (!v57)
          {
LABEL_93:
            v4 = 0;
            goto LABEL_94;
          }

          for (i = 0; i < v57; ++i)
          {
            AHPMLibInterfaceForRID = getAHPMLibInterfaceForRID(*(&v53 + i), __str);
            if (AHPMLibInterfaceForRID)
            {
              v16 = AHPMLibInterfaceForRID;
              OUTLINED_FUNCTION_8();
              if (v33)
              {
                printf("Failed to get AHPMLibInterface for RID %d: 0x%x\n", v17, v16);
              }

              else
              {
                v19 = OUTLINED_FUNCTION_10();
                uarpLogError(v19, "Failed to get AHPMLibInterface for RID %d: 0x%x\n", v49, v52);
              }
            }

            else if (*__str)
            {
              v56 = 0;
              v16 = get_mode(*__str);
              if (v16)
              {
                OUTLINED_FUNCTION_8();
                if (v33)
                {
                  v52 = v16;
                  printf("Failed to get mode for RID %d: 0x%x\n");
                }

                else
                {
                  v35 = OUTLINED_FUNCTION_10();
                  uarpLogError(v35, "Failed to get mode for RID %d: 0x%x\n", v49, v52);
                }
              }

              else
              {
                OUTLINED_FUNCTION_7();
                if (v33)
                {
                  v54 = 1195460932;
                  v20 = *(**__str + 104);
                  OUTLINED_FUNCTION_6();
                  v29(v21, v22, v23, v24, v25, v26, v27, v28);
                  OUTLINED_FUNCTION_2();
                  if (v33 && (logLevel & 2) != 0)
                  {
                    v32 = *(&v53 + i);
                    v52 = v30;
                    printf("Return value from GAID on RID %d: 0x%x\n");
                  }

                  else
                  {
                    v31 = *(&v53 + i);
                    v52 = v30;
                    uarpLogInfo(3u, "Return value from GAID on RID %d: 0x%x\n");
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_13();
                  if (v33 && (logLevel & 2) != 0)
                  {
                    v51 = *(&v53 + i);
                    v52 = v34;
                    printf("Not resetting RID %d in mode 0x%x\n");
                  }

                  else
                  {
                    v50 = *(&v53 + i);
                    v52 = v34;
                    uarpLogInfo(3u, "Not resetting RID %d in mode 0x%x\n");
                  }
                }
              }

              destroyAHPMLibInterface(__str);
            }

            else
            {
              OUTLINED_FUNCTION_8();
              if (v33)
              {
                printf("UART HPM interface is NULL for RID %d\n", v18);
              }

              else
              {
                uarpLogError(3u, "UART HPM interface is NULL for RID %d\n", v18);
              }

              v16 = 0;
            }
          }

          v4 = v16;
          if (v57)
          {
            for (j = 0; j < v57; ++j)
            {
              v37 = getAHPMLibInterfaceForRID(*(&v53 + j), __str);
              if (v37)
              {
                v4 = v37;
                OUTLINED_FUNCTION_4();
                if (v33)
                {
                  printf("Failed to get AHPMLibInterface for RID %d: 0x%x\n", v38, v4);
                }

                else
                {
                  v40 = OUTLINED_FUNCTION_10();
                  uarpLogError(v40, "Failed to get AHPMLibInterface for RID %d: 0x%x\n", v49, v52);
                }
              }

              else if (*__str)
              {
                v54 = 0;
                v41 = get_mode(*__str);
                if (v41)
                {
                  v4 = v41;
                  OUTLINED_FUNCTION_4();
                  if (v33)
                  {
                    printf("Failed to get mode for RID %d: 0x%x\n", v45, v4);
                  }

                  else
                  {
                    v46 = OUTLINED_FUNCTION_10();
                    uarpLogError(v46, "Failed to get mode for RID %d: 0x%x\n", v49, v52);
                  }
                }

                else if (v54 == 1448039764)
                {
                  OUTLINED_FUNCTION_4();
                  if (v33)
                  {
                    printf("UART HPM RID%d in VOUT, GAID skipped and APP mode check will be skipped\n", v42);
                  }

                  else
                  {
                    uarpLogError(3u, "UART HPM RID%d in VOUT, GAID skipped and APP mode check will be skipped\n", v42);
                  }

                  v4 = 0;
                }

                else
                {
                  v43 = OUTLINED_FUNCTION_14(*__str);
                  v4 = 0;
                  if (v43)
                  {
                    v44 = v43;
                    print_fw_update_regs(*__str);
                    v4 = v44;
                  }
                }

                destroyAHPMLibInterface(__str);
              }

              else
              {
                OUTLINED_FUNCTION_4();
                if (v33)
                {
                  printf("UART HPM interface is NULL for RID %d\n", v39);
                }

                else
                {
                  uarpLogError(3u, "UART HPM interface is NULL for RID %d\n", v39);
                }

                v4 = 0;
              }
            }
          }
        }

        if (v4)
        {
          if (v4 == -536870160)
          {
            OUTLINED_FUNCTION_2();
            if (v33)
            {
              puts("UART HPMs not found, treating as non-fatal");
            }

            else
            {
              uarpLogError(3u, "UART HPMs not found, treating as non-fatal\n");
            }
          }

          else
          {
            OUTLINED_FUNCTION_2();
            if (v33)
            {
              printf("UART HPMs reset failed, status=0x%X, treating as non-fatal\n", v4);
            }

            else
            {
              uarpLogError(3u, "UART HPMs reset failed, status=0x%X, treating as non-fatal\n");
            }
          }

          goto LABEL_93;
        }
      }
    }
  }

LABEL_94:
  v47 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t internalBackendGetFlags(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(a1 + 81);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (get_pers_params(a1))
    {
      return v3;
    }

    *(a1 + 16) = 1;
  }

  if ((*(a1 + 85) & 1) == 0 && ((*(a1 + 49) & 1) != 0 || *(a1 + 82) == 1))
  {
    LODWORD(v3) = v3 | 4;
  }

  get_mode(*a1);
  OUTLINED_FUNCTION_7();
  v5 = v5 && v4 == 0;
  if (v5)
  {
    return v3 | 0x10;
  }

  else
  {
    return v3;
  }
}

uint64_t internalBackendGetActiveVersion(uint64_t *a1, _DWORD *a2, _WORD *a3)
{
  v11[1] = *MEMORY[0x29EDCA608];
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    v11[0] = 0;
    v7 = OUTLINED_FUNCTION_3(*a1);
    result = v8(v7, 0, 15, v11, 8, 0, &v10);
    if (v10 == 8)
    {
      *a2 = v11[0];
      *a3 = WORD2(v11[0]);
    }

    else if (v10 == 4)
    {
      *a2 = 0;
      *a3 = 0;
    }

    else
    {
      result = 54;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 internalBackendGetStagedVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 86);
      *a2 = result;
    }
  }

  return result;
}

uint64_t internalBackendApply(uint64_t *a1, _WORD *a2)
{
  result = 30;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_0_1(*a1);
    OUTLINED_FUNCTION_6();
    v7 = v6(v5);
    if (v7)
    {
      if (inRestore == 1)
      {
        printf("Received error 0x%x from GAID, silencing\n", v7);
      }

      else
      {
        uarpLogError(3u, "Received error 0x%x from GAID, silencing\n", v7);
      }
    }

    result = 0;
    *a2 |= 1u;
  }

  return result;
}

uint64_t USBCUpdateManifestPrefix(uint64_t a1, int a2, char *__dst, size_t __n, _DWORD *a5)
{
  result = 30;
  if (__n >= 0x12 && a1)
  {
    if (a5)
    {
      strncpy(__dst, "USBPortController", __n);
      result = 0;
      *a5 = 18;
    }
  }

  return result;
}

uint64_t USBCUpdateLongName(uint64_t a1, int a2, char *__dst, size_t __n, _DWORD *a5)
{
  result = 30;
  if (__n >= 0xC && a1)
  {
    if (a5)
    {
      strncpy(__dst, "USBFirmware", __n);
      result = 0;
      *a5 = 12;
    }
  }

  return result;
}

uint64_t externalBackendCreate(void *a1, char *a2, uint64_t a3, char a4)
{
  v8 = uarpZalloc(0x50uLL);
  if (!v8)
  {
    return 11;
  }

  v14 = v8;
  result = OUTLINED_FUNCTION_3_0(v8, "SDOM", v9, v10, v11, v12, v13);
  if (result)
  {
    return result;
  }

  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    v16 = printf("SDOM=0x%llX [8b]\n", v58);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "SDOM=0x%llX [8b]\n", v58);
  }

  *(v14 + 42) = 0;
  result = OUTLINED_FUNCTION_3_0(v16, "CPID", v17, v18, v19, v20, v21);
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_2();
  if (v22 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    v23 = printf("CPID=0x%llX [16b]\n", v59);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "CPID=0x%llX [16b]\n", v59);
  }

  *(v14 + 4) = 0;
  result = OUTLINED_FUNCTION_3_0(v23, "BDID", v24, v25, v26, v27, v28);
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_2();
  if (v22 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    v29 = printf("BDID=0x%llX\n", v60);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "BDID=0x%llX\n", v60);
  }

  *v14 = 0;
  result = OUTLINED_FUNCTION_3_0(v29, "ECID", v30, v31, v32, v33, v34);
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_2();
  if (v22 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    v35 = printf("ECID=0x%llX\n", v61);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "ECID=0x%llX\n", v61);
  }

  v14[2] = 0;
  result = OUTLINED_FUNCTION_3_0(v35, "CPFM", v36, v37, v38, v39, v40);
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_2();
  if (v22 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    v41 = printf("CPFM=0x%llX [8b]\n", v62);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "CPFM=0x%llX [8b]\n", v62);
  }

  *(v14 + 41) = 0;
  *(v14 + 40) = 0;
  result = OUTLINED_FUNCTION_3_0(v41, "PREV", v42, v43, v44, v45, v46);
  if (result)
  {
    return result;
  }

  OUTLINED_FUNCTION_2();
  if (v22 && (logLevel & 2) != 0)
  {
    OUTLINED_FUNCTION_0_2();
    printf("PREV=0x%llX [8b]\n", v63);
  }

  else
  {
    OUTLINED_FUNCTION_0_2();
    uarpLogInfo(3u, "PREV=0x%llX [8b]\n", v63);
  }

  *(v14 + 43) = 0;
  v47 = uarpZalloc(0x10uLL);
  v14[3] = v47;
  if (!v47)
  {
    return 11;
  }

  v14[4] = 16;
  result = parse_serial_string_buffer(a2, "NONC", v47, 16);
  if (!result)
  {
    result = OUTLINED_FUNCTION_3_0(result, "CPRV", v48, v49, v50, v51, v52);
    if (!result)
    {
      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        OUTLINED_FUNCTION_0_2();
        printf("CRPV=0x%llX [16b]\n", v64);
      }

      else
      {
        OUTLINED_FUNCTION_0_2();
        uarpLogInfo(3u, "CRPV=0x%llX [16b]\n", v64);
      }

      v53 = v14[3];
      v54 = (v53 + v14[4] - 1);
      if (v53 < v54)
      {
        v55 = v53 + 1;
        do
        {
          v56 = *(v55 - 1);
          *(v55 - 1) = *v54;
          *v54-- = v56;
        }

        while (v55++ < v54);
      }

      *(v14 + 60) = (*(v14 + 41) | a4) & 1;
      *(v14 + 13) = apBoardForAceBoard(*v14);
      *(v14 + 14) = apChipForAceBoard(*v14);
      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        puts("Final params, after accounting for any endianness quirks:");
      }

      else
      {
        uarpLogInfo(3u, "Final params, after accounting for any endianness quirks:\n");
      }

      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        printf("boardID=0x%llX\n", *v14);
      }

      else
      {
        uarpLogInfo(3u, "boardID=0x%llX\n", *v14);
      }

      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        printf("ECID=0x%llX\n", v14[2]);
      }

      else
      {
        uarpLogInfo(3u, "ECID=0x%llX\n", v14[2]);
      }

      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        printf("chipID=0x%X\n", *(v14 + 4));
      }

      else
      {
        uarpLogInfo(3u, "chipID=0x%X\n", *(v14 + 4));
      }

      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        OUTLINED_FUNCTION_2_0();
        printf("pStatus=%d, secMode=%d, SDOM=0x%X, PREV=0x%X\n", v65, v66, v67, v68);
      }

      else
      {
        OUTLINED_FUNCTION_2_0();
        uarpLogInfo(3u, "pStatus=%d, secMode=%d, SDOM=0x%X, PREV=0x%X\n", v65, v66, v67, v68);
      }

      OUTLINED_FUNCTION_2();
      if (v22 && (logLevel & 2) != 0)
      {
        printf("apBORD=0x%X, apChip=0x%X\n", *(v14 + 13), *(v14 + 14));
      }

      else
      {
        uarpLogInfo(3u, "apBORD=0x%X, apChip=0x%X\n", *(v14 + 13), *(v14 + 14));
      }

      result = 0;
      *(v14 + 12) = 1;
      v14[8] = a3;
      *a1 = v14;
    }
  }

  return result;
}

uint64_t externalBackendDestroy(void ***a1)
{
  if (!a1)
  {
    return 30;
  }

  v2 = *a1;
  if (!v2)
  {
    return 30;
  }

  if (v2[3])
  {
    uarpFree(v2[3]);
    (*a1)[3] = 0;
    v2 = *a1;
  }

  uarpFree(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t externalBackendGetPersParam(_DWORD *__src, int a2, void *__dst, unsigned int a4, unsigned int *a5)
{
  result = 30;
  if (__src && __dst)
  {
    result = 26;
    v8 = 8;
    switch(a2)
    {
      case 0:
        __src = (__src + 43);
        goto LABEL_12;
      case 1:
        __src += 2;
        v8 = 2;
        goto LABEL_16;
      case 2:
        goto LABEL_16;
      case 3:
        __src += 4;
        goto LABEL_16;
      case 4:
        __src += 10;
        goto LABEL_12;
      case 5:
        __src = (__src + 41);
        goto LABEL_12;
      case 6:
        v8 = __src[8];
        __src = *(__src + 3);
        goto LABEL_16;
      case 8:
        __src = (__src + 42);
LABEL_12:
        v8 = 1;
        goto LABEL_16;
      case 10:
        __src += 12;
        goto LABEL_15;
      case 11:
        __src += 13;
        goto LABEL_15;
      case 12:
        __src += 14;
LABEL_15:
        v8 = 4;
LABEL_16:
        result = 30;
        if (__src && v8 <= a4)
        {
          memcpy(__dst, __src, v8);
          result = 0;
          if (a5)
          {
            *a5 = v8;
          }
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t externalBackendFlash(uint64_t a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  v8 = *(a1 + 64);
  v9 = *(v8 + 1520);
  v18 = 0;
  result = DynamicAssetCreate(&v18);
  if (!result)
  {
    bzero(v14, 0xE0uLL);
    uarpZero(v14, 0xE0uLL);
    v15 = DynamicAssetUARPGetBytes;
    v16 = DynamicAssetUARPSetBytes;
    v17 = fAssetProcessingNotification2_3;
    v13 = 1297238342;
    uarpPlatformEndpointPrepareDynamicAsset(v8, v8 + 1248, v18, &v13, v14);
    result = uarpPersonalizationRequestAssetInitialize(v8, v18, 1);
    if (!result)
    {
      v12 = 0;
      result = uarpPlatformAssetQueryAssetID(*v9, &v12);
      if (!result)
      {
        result = uarpPersonalizationRequestAddRemoteAssetID(v8, v18, v12);
        if (!result)
        {
          v11 = 1297238342;
          result = UARPSuperBinaryPreparePayload(v8, v18, 0, &v11, a4);
          if (!result)
          {
            result = UARPSuperBinaryAddPayloadMetaData(v8, v18, 0, 0xCCD28111, 4u, &v11);
            if (!result)
            {
              result = UARPSuperBinaryAddPayloadDataLarge(v8, v18, 0, a2, a3);
              if (!result)
              {
                result = UARPSuperBinaryFinalizeHeader(v8, v18);
                if (!result)
                {
                  result = uarpPlatformEndpointOfferAsset(v8, v8 + 1248, v18);
                  if (!result)
                  {
                    *(a1 + 72) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t externalBackendTagHint(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 30;
  }

  if (inRestore == 1 && (logLevel & 2) != 0)
  {
    printf("Overriding tag value to 0x%x (was 0x%x) based on metadata hint\n", a2, *(a1 + 48));
  }

  else
  {
    uarpLogInfo(3u, "Overriding tag value to 0x%x (was 0x%x) based on metadata hint\n", a2, *(a1 + 48));
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t USBCUpdateEndpointInitialize(const void *a1, uint64_t a2, _OWORD *a3, uint64_t (**a4)(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4))
{
  v4 = 0;
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        if (a4)
        {
          v9 = uarpZalloc(0x6F0uLL);
          v4 = v9;
          if (v9)
          {
            *(v9 + 1416) = *a3;
            *(v9 + 179) = a2;
            memcpy(v9 + 1440, a1, 0x50uLL);
            v20 = 4;
            v21 = 0u;
            v22 = 0;
            v18 = 0x800000008000;
            v19 = 0x8000;
            bzero(v11, 0x230uLL);
            v12 = fSendMessage;
            v13 = fSuperBinaryOffered;
            v14 = fDynamicAssetOffered;
            v15 = fApplyStagedAssets;
            v16 = fActiveFirmwareVersion2;
            v17 = fStagedFirmwareVersion2;
            *(v4 + 712) = 1;
            *(v4 + 715) = 0;
            *(v4 + 720) = USBCUpdateInfoUnsupported;
            *(v4 + 736) = USBCUpdateInfoUnsupported;
            *(v4 + 912) = USBCUpdateInfoUnsupported;
            *(v4 + 928) = USBCUpdateInfoUnsupported;
            *(v4 + 1072) = USBCUpdateInfoUnsupported;
            *(v4 + 1056) = USBCUpdateInfoUnsupported;
            *(v4 + 752) = USBCUpdateManifestPrefix;
            *(v4 + 768) = USBCUpdateBoardID;
            *(v4 + 784) = USBCUpdateChipID;
            *(v4 + 1024) = USBCUpdateAPBoardID;
            *(v4 + 1040) = USBCUpdateAPChipID;
            *(v4 + 800) = USBCUpdateChipRevision;
            *(v4 + 816) = USBCUpdateECID;
            *(v4 + 848) = USBCUpdateSecurityDomain;
            *(v4 + 864) = USBCUpdateSecurityMode;
            *(v4 + 880) = USBCUpdateProductionMode;
            *(v4 + 896) = USBCUpdateChipEpoch;
            *(v4 + 944) = USBCUpdatePrefixNeedsLUN;
            *(v4 + 960) = USBCUpdateSuffixNeedsLUN;
            *(v4 + 976) = USBCUpdateTag;
            *(v4 + 992) = USBCUpdateLongName;
            *(v4 + 1008) = USBCUpdateRequiresPersonalization;
            if (uarpPlatformEndpointInit(v4, v4, 0, &v18, v11, v4 + 712, uarpPlatformEndpointCallbackAppleSpecific) || uarpPlatformRemoteEndpointAdd(v4, v4 + 1248, &v18, v4) || (*a4 = _sendMsgToAccessory, a4[1] = _USBCUpdateFinalize, BackendCreate((v4 + 1536), (v4 + 1440), v4)))
            {
              uarpFree(v4);
              return 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

void IM4MData(uint64_t a1, int a2, const void *a3, size_t __n)
{
  v4 = __n;
  if (!FWImageAddBytes(*(*(a1 + 1520) + 24), a3, __n))
  {
    OUTLINED_FUNCTION_0_3();
    if (v5 && (logLevel & 2) != 0)
    {
      printf("Received %d bytes of IM4M\n", v4);
    }

    else
    {
      uarpLogInfo(3u, "Received %d bytes of IM4M\n", v4);
    }
  }
}

uint64_t parse_serial_string_u64(char *a1, const char *a2, unint64_t *a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v9 = 0;
        v10 = 0;
        result = parse_serial_string(a1, a2, &v10, 8, &v9);
        if (!result)
        {
          switch(v9)
          {
            case 1:
              result = 0;
              v7 = v10;
              goto LABEL_11;
            case 2:
              v8 = uarpNtohs(v10);
              goto LABEL_9;
            case 4:
              v8 = uarpNtohl(v10);
LABEL_9:
              LODWORD(v7) = v8;
              result = 0;
              v7 = v7;
              goto LABEL_11;
            case 8:
              v7 = uarpNtohll(v10);
              result = 0;
LABEL_11:
              *a3 = v7;
              break;
            default:
              if (inRestore == 1)
              {
                printf("Unexpected length of field %s in USB string: 0x%lx bytes\n", a2, v9);
              }

              else
              {
                uarpLogError(3u, "Unexpected length of field %s in USB string: 0x%lx bytes\n", a2, v9);
              }

              result = 39;
              break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t parse_serial_string_buffer(char *a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      return parse_serial_string(a1, a2, a3, a4, &v6);
    }
  }

  return result;
}

uint64_t uarpVersionToAceVersion(unsigned int *a1, unsigned int *a2, _WORD *a3)
{
  if (!a1)
  {
    return 30;
  }

  if (*a1 <= 0xDFF)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 - 3584;
  }

  if (v3 > 0x63)
  {
    return 0;
  }

  v4 = *a1 <= 0xDFF ? 0 : 3584;
  v5 = a1[1];
  if (v5 > 0x3E7)
  {
    return 0;
  }

  v6 = a1[2];
  if (v6 > 0x63)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = ((((v5 / 0x64u) << 8) | (16 * ((v5 / 0xAu) % 0xAu)) | (v5 % 0xAu)) << 8) | ((v4 & 0xFFFFFF00 | (v3 % 0xAu) | (16 * (v3 / 0xAu))) << 20) | (v6 % 0xAu) | (16 * (v6 / 0xAu));
  }

  if (!a3)
  {
    return 0;
  }

  v7 = 0;
  *a3 = a1[3];
  return v7;
}

uint64_t aceVersionToUARPVersion(unsigned int a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 30;
  }

  result = 0;
  *a3 = ((a1 >> 20) & 0xFFFFFF0F) + 10 * (HIBYTE(a1) & 0xF);
  a3[1] = ((a1 >> 8) & 0xF) + 10 * (a1 >> 12) + 100 * (HIWORD(a1) & 0xF);
  a3[2] = (a1 & 0xF) + 10 * (a1 >> 4);
  a3[3] = a2;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}