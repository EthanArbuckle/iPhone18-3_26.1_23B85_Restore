uint64_t xcoder_mrksync_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = 0;
  __n = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v6 = p_xcoder_mrksync_BeginFunction(a1, a2, &v55, &v56);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  *a5 = 1;
  v7 = v56;
  if (!v56[7])
  {
    return 0;
  }

  v12 = (*(v56[2] + 144))(v56[5], v56[6], &__n, &__n + 4);
  if ((v12 & 0x80000000) != 0)
  {
    log_OutPublic(*(v55 + 32), "XCODER", 15028, "%s%s%s%x", v8, v9, v10, v11, "stream");
    return v12;
  }

  if (__n)
  {
    v13 = (*(v7[2] + 88))(v7[5], v7[6], &v53, &__n);
    if ((v13 & 0x80000000) != 0)
    {
      v12 = v13;
      v35 = *(v55 + 32);
    }

    else
    {
      v18 = (*(v7[2] + 136))(v7[3], v7[4], &v51 + 4);
      if ((v18 & 0x80000000) != 0)
      {
        v12 = v18;
        log_OutPublic(*(v55 + 32), "XCODER", 15029, "%s%s%s%x", v19, v20, v21, v22, "stream");
        return v12;
      }

      v23 = (*(v7[2] + 88))(v7[3], v7[4], &v50, &v51);
      if ((v23 & 0x80000000) == 0)
      {
        v12 = (*(v7[2] + 112))(v7[7], v7[8], &v52, __n);
        if ((v12 & 0x80000000) != 0)
        {
          log_OutPublic(*(v55 + 32), "XCODER", 15031, "%s%s%s%x", v24, v25, v26, v27, "stream");
          (*(v7[2] + 96))(v7[5], v7[6], 0);
        }

        else
        {
          cstdlib_memcpy(v52, v53, __n);
          v30 = v51 >> 2;
          LODWORD(v51) = v51 >> 2;
          HIDWORD(v51) >>= 2;
          v31 = __n;
          if (__n >= 0x20)
          {
            v37 = 0;
            v38 = 0;
            v32 = 0;
            v39 = v53;
            do
            {
              v40 = *&v39[v37];
              v41 = v40 > 0x1D || ((1 << v40) & 0x215F0112) == 0;
              if (!v41 || v40 == 0x4000)
              {
                p_xcoder_GetRefPosition(v55, HIDWORD(v51), v50, v51, *&v39[v37 + 4], &v52[v37 + 4], v28, v29);
                p_xcoder_GetRefPosition(v55, HIDWORD(v51), v50, v51, (*&v53[v37 + 8] + *&v53[v37 + 4]), &v52[v37 + 8], v42, v43);
                LODWORD(v12) = 0;
                *&v52[v37 + 8] -= *&v52[v37 + 4];
                v39 = v53;
                if (*&v53[v37 + 4] > v32)
                {
                  v32 = *&v53[v37 + 4];
                }

                v31 = __n;
              }

              ++v38;
              v37 += 32;
            }

            while (v38 < v31 >> 5);
            v30 = v51;
          }

          else
          {
            v32 = 0;
          }

          if (v32 >= v30)
          {
            v32 = v30 - 1;
          }

          v44 = (*(v7[2] + 120))(v7[7], v7[8]);
          if (v44 < 0)
          {
            LODWORD(v12) = v44;
          }

          v45 = (*(v7[2] + 96))(v7[5], v7[6], __n);
          if (v45 < 0 && v12 > -1)
          {
            LODWORD(v12) = v45;
          }

          if (v32 <= HIDWORD(v51))
          {
            v47 = 0;
          }

          else
          {
            v47 = 4 * (v32 - HIDWORD(v51));
          }

          v48 = (*(v7[2] + 96))(v7[3], v7[4], v47);
          if (v48 >= 0 || v12 <= -1)
          {
            return v12;
          }

          else
          {
            return v48;
          }
        }

        return v12;
      }

      v12 = v23;
      v35 = *(v55 + 32);
    }

    log_OutPublic(v35, "XCODER", 15030, "%s%s%s%x", v14, v15, v16, v17, "stream");
    return v12;
  }

  if (HIDWORD(__n))
  {
    v33 = v7[7];
    if (v33)
    {
      v12 = (*(v7[2] + 72))(v33, v7[8]);
      v7[7] = safeh_GetNullHandle();
      v7[8] = v34;
    }
  }

  else
  {
    *a5 = 1;
  }

  return v12;
}

uint64_t xcoder_mrksync_ProcessEnd(void *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_mrksync_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[3];
    if (v4)
    {
      (*(v11[2] + 72))(v4, v11[4]);
      v3[3] = safeh_GetNullHandle();
      v3[4] = v5;
    }

    v6 = v3[5];
    if (v6)
    {
      (*(v3[2] + 72))(v6, v3[6]);
      v3[5] = safeh_GetNullHandle();
      v3[6] = v7;
    }

    v8 = v3[7];
    if (v8)
    {
      (*(v3[2] + 72))(v8, v3[8]);
      v3[7] = safeh_GetNullHandle();
      v3[8] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_mrksync_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 854, 72);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_GetRefPosition(uint64_t result, unsigned int a2, int *a3, int a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  if (a5 >= a2)
  {
    if (a4 + a2 >= a5)
    {
      if (a4 + a2 == a5)
      {
        v8 = a3[a4 - 1] + 2;
      }

      else
      {
        v8 = a3[a5 - a2];
      }

      *a6 = v8;
    }

    else
    {
      *a6 = a3[a4 - 1] + 2;
      return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is beyond the end of the sync object, charPos=%u, maxSyncPos=%u, return position=%u", a6, a7, a8, a5);
    }
  }

  else
  {
    *a6 = *a3;
    return log_OutText(*(result + 32), "XCODER", 3, 0, "Marker text position is before the synch object, charPos=%u, syncPos=%u, return position=%u", a6, a7, a8, a5);
  }

  return result;
}

uint64_t xcoder_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2282758145;
  }

  result = 0;
  *a2 = &IXCoder;
  return result;
}

uint64_t xcoder_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v8 = 2282758151;
  v23 = 0;
  v24 = 0;
  NullHandle = safeh_GetNullHandle();
  v11 = safeh_HandlesEqual(a3, a4, NullHandle, v10);
  if (a5)
  {
    if (!v11)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      if ((InitRsrcFunction(a3, a4, &v24) & 0x80000000) == 0)
      {
        v12 = heap_Calloc(*(v24 + 8), 1, 344);
        if (v12)
        {
          v17 = v12;
          *v12 = a3;
          *(v12 + 8) = a4;
          *(v12 + 272) = -2012209145;
          cstdlib_strcpy((v12 + 144), "UTF-8");
          if ((objc_GetObject(*(v24 + 48), "SYNTHSTREAM", &v23) & 0x80000000) != 0)
          {
            log_OutPublic(*(v24 + 32), "XCODER", 15024, 0, v18, v19, v20, v21, v23);
          }

          else
          {
            *(v17 + 288) = *(v23 + 8);
          }

          v8 = p_xcoder_ObjOpen(v17);
          if ((v8 & 0x80000000) != 0)
          {
            heap_Free(*(v24 + 8), v17);
            if (v23)
            {
              objc_ReleaseObject(*(v24 + 48), "SYNTHSTREAM");
            }
          }

          else
          {
            *a5 = v17;
            *(a5 + 8) = 852;
          }
        }

        else
        {
          log_OutPublic(*(v24 + 32), "XCODER", 15000, 0, v13, v14, v15, v16, v23);
          return 2282758154;
        }
      }
    }
  }

  return v8;
}

uint64_t xcoder_ObjClose(void *a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v7, &v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v6;
  v2 = p_xcoder_ObjClose(v6);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v4 = objc_ReleaseObject(*(v7 + 48), "SYNTHSTREAM");
  if ((v4 & 0x80000000) == 0)
  {
    heap_Free(*(v7 + 8), v3);
  }

  return v4;
}

uint64_t xcoder_ProcessStart(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  __s2 = 0;
  __s1 = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v30, &v29);
  if ((v6 & 0x80000000) == 0)
  {
    __dst[0] = 0;
    if ((paramc_ParamGetStr(*(v30 + 40), "inputmimetype", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
    {
      if (cstdlib_strcmp(__s1, "text/plain"))
      {
        if (cstdlib_strncmp(__s1, "text/plain;", 0xBuLL))
        {
          return 0;
        }

        v7 = cstdlib_strstr(__s1, ";charset=");
        if (!v7)
        {
          return 0;
        }

        v8 = v7[9];
        if (v7[9])
        {
          v9 = 0;
          while (v9 <= 0x7E && v8 != 59)
          {
            __dst[v9] = v8;
            v10 = v9 + 1;
            v8 = v7[v9++ + 10];
            if (!v8)
            {
              goto LABEL_43;
            }
          }

          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

LABEL_43:
        __dst[v10] = 0;
      }

      else
      {
        if ((paramc_ParamGetStr(*(v30 + 40), "nativetypeofchar", &__s2) & 0x80000000) != 0 || (v14 = __s2) == 0 || !*__s2)
        {
          __s2 = "UTF-8";
          v14 = "UTF-8";
        }

        cstdlib_strcpy(__dst, v14);
      }
    }

    else
    {
      if ((paramc_ParamGetStr(*(v30 + 40), "nativetypeofchar", &__s2) & 0x80000000) != 0 || (v11 = __s2) == 0 || !*__s2)
      {
        __s2 = "UTF-8";
        v11 = "UTF-8";
      }

      cstdlib_strcpy(__dst, v11);
      cstdlib_strcpy(v32, "text/plain;charset=");
      cstdlib_strcat(v32, __s2);
      __s1 = v32;
    }

    if (LH_stricmp(__dst, "UTF-8"))
    {
      v12 = v29;
      if (*(v29 + 272) || LH_stricmp(__dst, (v29 + 16)))
      {
        cstdlib_strcpy((v12 + 16), __dst);
        v13 = p_xcoder_OpenXCoder(v12);
        if ((v13 & 0x1FFF) == 1)
        {
          return 0;
        }

        v6 = v13;
        if ((v13 & 0x80000000) != 0)
        {
          return v6;
        }
      }

      else
      {
        v15 = p_xcoder_ResetXCoder();
        if ((v15 & 0x80000000) != 0)
        {
          return v15;
        }
      }

      v16 = (*(*(v12 + 288) + 64))(a3, a4, 129, __s1, 0, 0, v12 + 296);
      if ((v16 & 0x80000000) != 0)
      {
        v6 = v16;
        log_OutPublic(*(v30 + 32), "XCODER", 15026, "%s%s", v17, v18, v19, v20, "contentType");
        return v6;
      }

      v21 = (*(*(v12 + 288) + 64))(a3, a4, 129, "text/plain;charset=utf-8", 0, 1, v12 + 312);
      if ((v21 & 0x80000000) != 0)
      {
        v6 = v21;
      }

      else
      {
        v6 = (*(*(v12 + 288) + 64))(a3, a4, 129, "application/x-realspeak-xcoder-sync;version=5.0", 0, 1, v12 + 328);
        if ((v6 & 0x80000000) == 0)
        {
          return v6;
        }
      }

      log_OutPublic(*(v30 + 32), "XCODER", 15027, "%s%s", v22, v23, v24, v25, "contentType");
    }
  }

  return v6;
}

uint64_t xcoder_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  __b = 0;
  v6 = p_xcoder_BeginFunction(a1, a2, &v57, &v56);
  if ((v6 & 0x80000000) == 0)
  {
    *a5 = 1;
    v7 = v56;
    if (v56[39])
    {
      v6 = (*(v56[36] + 144))(v56[37], v56[38], &v54, &v55 + 4);
      if ((v6 & 0x80000000) != 0)
      {
        log_OutPublic(*(v57 + 32), "XCODER", 15028, "%s%s%s%x", v8, v9, v10, v11, "stream");
      }

      else if (v54)
      {
        v12 = (*(v7[36] + 136))(v7[37], v7[38], &v55);
        if ((v12 & 0x80000000) != 0)
        {
          v6 = v12;
          log_OutPublic(*(v57 + 32), "XCODER", 15029, "%s%s%s%x", v13, v14, v15, v16, "stream");
        }

        else
        {
          v17 = (*(v7[36] + 88))(v7[37], v7[38], &v52, &v54);
          if ((v17 & 0x80000000) != 0)
          {
            v6 = v17;
            log_OutPublic(*(v57 + 32), "XCODER", 15030, "%s%s%s%x", v18, v19, v20, v21, "stream");
          }

          else
          {
            v22 = (*(v7[36] + 112))(v7[39], v7[40], &v51, 4 * v54);
            if ((v22 & 0x80000000) != 0)
            {
              v6 = v22;
              log_OutPublic(*(v57 + 32), "XCODER", 15031, "%s%s%s%x", v23, v24, v25, v26, "stream");
            }

            else
            {
              v27 = (*(v7[36] + 112))(v7[41], v7[42], &__b, 16 * v54);
              if ((v27 & 0x80000000) != 0)
              {
                v6 = v27;
                log_OutPublic(*(v57 + 32), "XCODER", 15031, "%s%s%s%x", v28, v29, v30, v31, "stream");
                (*(v7[36] + 96))(v7[37], v7[38], 0);
              }

              else if (!v55 && p_xcoder_CheckBom(v7, v52, v54) && (v43 = p_xcoder_OpenXCoder(v7), (v43 & 0x80000000) != 0))
              {
                return v43;
              }

              else
              {
                v32 = 4 * v54;
                v53 = 4 * v54;
                cstdlib_memset(__b, 255, 16 * v54);
                v33 = p_xcoder_Convert(v7, v52, v54, &v54, v51, v32, &v53, __b);
                if (v33 < 0 && ((LODWORD(v6) = v33, (v33 & 0x1FFF) != 7) || HIDWORD(v55)))
                {
                  v34 = 0;
                  v53 = 0;
                  v54 = 0;
                }

                else
                {
                  LODWORD(v6) = 0;
                  v34 = v53;
                  if (v55 && v53)
                  {
                    v35 = 0;
                    v36 = __b;
                    do
                    {
                      v36[v35++] += v55;
                      v34 = v53;
                    }

                    while (v35 < v53);
                    LODWORD(v6) = 0;
                  }
                }

                v44 = (*(v7[36] + 120))(v7[41], v7[42], 4 * v34);
                if (v44 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v44;
                }

                v46 = (*(v7[36] + 120))(v7[39], v7[40], v53);
                if (v46 < 0 && v6 > -1)
                {
                  LODWORD(v6) = v46;
                }

                v48 = (*(v7[36] + 96))(v7[37], v7[38], v54);
                if (v48 >= 0 || v6 <= -1)
                {
                  return v6;
                }

                else
                {
                  return v48;
                }
              }
            }
          }
        }
      }

      else if (HIDWORD(v55))
      {
        v37 = v7[39];
        if (v37)
        {
          LODWORD(v6) = (*(v7[36] + 72))(v37, v7[40]);
          v7[39] = safeh_GetNullHandle();
          v7[40] = v38;
          v39 = (*(v7[36] + 72))(v7[41], v7[42]);
          v7[41] = safeh_GetNullHandle();
          v7[42] = v40;
          if (v39 >= 0 || v6 <= -1)
          {
            return v6;
          }

          else
          {
            return v39;
          }
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return v6;
}

uint64_t xcoder_ProcessEnd(void *a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v2 = p_xcoder_BeginFunction(a1, a2, &v12, &v11);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v11;
    v4 = v11[37];
    if (v4)
    {
      (*(v11[36] + 72))(v4, v11[38]);
      v3[37] = safeh_GetNullHandle();
      v3[38] = v5;
    }

    v6 = v3[39];
    if (v6)
    {
      (*(v3[36] + 72))(v6, v3[40]);
      v3[39] = safeh_GetNullHandle();
      v3[40] = v7;
    }

    v8 = v3[41];
    if (v8)
    {
      (*(v3[36] + 72))(v8, v3[42]);
      v3[41] = safeh_GetNullHandle();
      v3[42] = v9;
    }
  }

  return v2;
}

uint64_t p_xcoder_BeginFunction(void *a1, int a2, void *a3, void *a4)
{
  *a3 = 0;
  *a4 = 0;
  LODWORD(result) = safeh_HandleCheck(a1, a2, 852, 344);
  if ((result & 0x80000000) != 0)
  {
    if ((result & 0x1FFF) == 8)
    {
      return 2282758152;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = a1;
    v8 = *a1;
    v9 = a1[1];

    return InitRsrcFunction(v8, v9, a3);
  }
}

uint64_t p_xcoder_CheckBom(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 2 || LH_stricmp((a1 + 16), "UTF-16") && LH_stricmp((a1 + 16), "UCS-2"))
  {
    return 0;
  }

  if (*a2 == 254 && a2[1] == 255)
  {
    v5 = 1;
    v6 = "UTF-16BE";
  }

  else
  {
    v5 = 0;
    v6 = "UTF-16";
  }

  cstdlib_strcpy((a1 + 16), v6);
  return v5;
}

uint64_t synthstream_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2297438209;
  }

  result = 0;
  *a2 = &ISynthStream;
  return result;
}

uint64_t synthstream_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2297438214;
  v28 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: Begin", v10, v11, v12, v24);
      v13 = heap_Calloc(*(v28 + 8), 1, 48);
      if (v13)
      {
        v18 = v13;
        *v13 = a3;
        *(v13 + 8) = a4;
        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemalloc", (v13 + 32)) & 0x80000000) != 0 || !*(v18 + 32))
        {
          *(v18 + 32) = 1024;
        }

        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemmove", (v18 + 36)) & 0x80000000) != 0 || !*(v18 + 36))
        {
          *(v18 + 36) = 128;
        }

        if ((paramc_ParamGetUInt(*(v28 + 40), "synthstreamminmemfree", (v18 + 40)) & 0x80000000) != 0 || !*(v18 + 40))
        {
          *(v18 + 40) = 4097;
        }

        paramc_ParamGetInt(*(v28 + 40), "loginputtext", (v18 + 44));
        v19 = *(v28 + 8);
        v26[0] = xmmword_287EEF520;
        v26[1] = *&off_287EEF530;
        v27 = off_287EEF540;
        v5 = ssftmap_ObjOpen(v19, 0, v26, (v18 + 24));
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(*(v28 + 8), v18);
        }

        else
        {
          *a5 = v18;
          *(a5 + 8) = 18397;
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "SYNTHSTREAM", 22000, 0, v14, v15, v16, v17, v25);
        v5 = 2297438218;
      }

      log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjOpen: End (%x)", v20, v21, v22, v5);
    }
  }

  return v5;
}

uint64_t synthstream_ObjClose(uint64_t a1, int a2)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v2 = synthstream_loc_BeginFunction(a1, a2, &v28, &v29);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : Begin", v3, v4, v5, v23);
  v6 = v29;
  v10 = ssftmap_IteratorOpen(*(v29 + 24), 0, 1, &v27);
  if ((v10 & 0x80000000) == 0)
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    while ((ssftmap_IteratorNext(v27, &v26, &v25) & 0x80000000) == 0)
    {
      v15 = v25;
      if (!*(v25 + 108))
      {
        log_OutPublic(*(v28 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v11, v12, v13, v14, "writer");
        v15 = v25;
      }

      if (*(v15 + 16))
      {
        log_OutPublic(*(v28 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v11, v12, v13, v14, "module");
        heap_Free(*(v28 + 8), *(v25 + 16));
        v15 = v25;
        *(v25 + 16) = 0;
      }

      if (vector_GetElemAt(*(v15 + 24), 0, &v24) == 1)
      {
        v20 = 1;
        do
        {
          log_OutPublic(*(v28 + 32), "SYNTHSTREAM", 22001, "%s%u%s%s%s%u", v16, v17, v18, v19, "module");
          heap_Free(*(v28 + 8), *v24);
          ElemAt = vector_GetElemAt(*(v25 + 24), v20++, &v24);
        }

        while (ElemAt == 1);
      }

      if (*(v25 + 42) >= 2u)
      {
        *(v25 + 42) = 1;
      }
    }

    ssftmap_IteratorClose(v27);
  }

  if ((v10 & 0x80000000) == 0 || (v10 & 0x1FFF) == 0x14)
  {
    v10 = ssftmap_ObjClose(*(v6 + 24));
    if ((v10 & 0x80000000) == 0)
    {
      heap_Free(*(v28 + 8), v6);
    }
  }

  log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ObjClose : End (%x)", v7, v8, v9, v10);
  return v10;
}

uint64_t synthstream_SetPipelinePos(uint64_t a1, int a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v7 = synthstream_loc_BeginFunction(a1, a2, &v13, &v14);
  if ((v7 & 0x80000000) == 0)
  {
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : Begin (%u)", v4, v5, v6, a3);
    v8 = v13;
    *(v14 + 16) = a3;
    log_OutText(*(v8 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM SetPipelinePos : End (%x)", v9, v10, v11, v7);
  }

  return v7;
}

uint64_t synthstream_StreamOpen(uint64_t a1, int a2, uint64_t a3, const char *a4, __int128 *a5, int a6, uint64_t a7)
{
  v73 = *MEMORY[0x277D85DE8];
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v12 = synthstream_loc_BeginFunction(a1, a2, &v69, &v71);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = v71;
  log_OutText(*(v69 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : Begin (%u, %s, %p, %d, %u)", v13, v14, v15, a3);
  if (a4 && a7 && *a4 && cstdlib_strlen(a4) < 0x80)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v22 = 0;
    if (cstdlib_strlen(a4))
    {
      v23 = 1;
      do
      {
        __s1[v22] = cstdlib_tolower(a4[v22]);
        v22 = v23;
      }

      while (cstdlib_strlen(a4) > v23++);
    }

    __s1[v22] = 0;
    v67 = __s1;
    LOWORD(v68) = 0;
    v21 = ssftmap_IteratorOpen(*(v16 + 24), &v67, 1, &v66);
    if ((v21 & 0x80000000) != 0)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      *&v63 = 0;
      v65 = 0;
      if ((ssftmap_IteratorNext(v66, &v63, &v65) & 0x80000000) != 0 || cstdlib_strcmp(__s1, *v63))
      {
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v33 = a6 == 0;
          v34 = *(v65 + 40);
          v35 = *(v16 + 16);
          if (v34 != v35)
          {
            v33 = 0;
          }

          if (v34 >= v35 && !v33)
          {
            break;
          }

          v30 = v65;
          v29 = v63;
          if ((ssftmap_IteratorNext(v66, &v63, &v65) & 0x80000000) != 0)
          {
            break;
          }
        }

        while (!cstdlib_strcmp(__s1, *v63));
      }

      ssftmap_IteratorClose(v66);
    }

    if ((v21 & 0x1FFF) == 0x14)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21;
    }

    if ((v31 & 0x80000000) != 0)
    {
      goto LABEL_82;
    }

    if ((a6 - 1) < 2)
    {
      if (v30 && *(v30 + 40) == *(v16 + 16))
      {
        log_OutText(*(v69 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for write failed for %s %u, already present", v26, v27, v28, __s1);
        v21 = 2297438210;
LABEL_82:
        log_OutText(*(v69 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamOpen : End (%x, %p, %p, %u)", v26, v27, v28, v21);
        return v21;
      }

      if (v29)
      {
        v32 = *(v29 + 8) + 1;
      }

      else
      {
        v32 = 0;
      }

      LOWORD(v68) = v32;
      v37 = heap_Calloc(*(v69 + 8), 1, 120);
      v39 = v69;
      if (!v37)
      {
        v21 = 2297438218;
LABEL_81:
        log_OutPublic(*(v39 + 32), "SYNTHSTREAM", 22000, 0, v38, v26, v27, v28, v62);
        goto LABEL_82;
      }

      v30 = v37;
      v40 = *(v69 + 8);
      v63 = xmmword_26ED34948;
      v64 = 0;
      if (vector_ObjOpen(v40, &v63, 1, (v30 + 24)) == 1)
      {
        v45 = *(v69 + 8);
        v46 = cstdlib_strlen(__s1);
        v47 = heap_Alloc(v45, (v46 + 1));
        *(v30 + 32) = v47;
        if (v47)
        {
          if (!a5)
          {
            if (cstdlib_strcmp(__s1, "application/x-realspeak-markers-pp;version=4.0"))
            {
              if (cstdlib_strcmp(__s1, "application/x-realspeak-int-markers-pp;version=4.0"))
              {
                if (cstdlib_strcmp(__s1, "application/x-tnplus-words;version=1.0"))
                {
                  a5 = 0;
                }

                else
                {
                  a5 = &IElemGeeneWordT;
                }
              }

              else
              {
                a5 = &IElemIntMarkerT;
              }
            }

            else
            {
              a5 = &IElemMarkerT;
            }
          }

          *v30 = v16;
          *(v30 + 8) = v69;
          cstdlib_strcpy(*(v30 + 32), __s1);
          *(v30 + 40) = *(v16 + 16);
          *(v30 + 42) = 1;
          *(v30 + 44) = a3;
          if (a5 && *a5)
          {
            v52 = *a5;
            *(v30 + 64) = *(a5 + 2);
            *(v30 + 48) = v52;
          }

          *(v30 + 72) = a6 == 2;
          if (cstdlib_strncmp(v67, "text/", 5uLL))
          {
            v53 = 0;
          }

          else
          {
            v53 = cstdlib_strstr(v67, "charset=wchar_t") == 0;
          }

          *(v30 + 73) = v53;
          if (*(v16 + 44) && (!cstdlib_strcmp(__s1, "text/plain;charset=utf-16") || !cstdlib_strcmp(__s1, "text/plain;charset=utf-8") || !cstdlib_strcmp(__s1, "application/synthesis+ssml") || !cstdlib_strcmp(__s1, "text/html") || !cstdlib_strcmp(__s1, "text/email") || !cstdlib_strcmp(__s1, "text/xml")))
          {
            *(v16 + 44) = 0;
            *(v30 + 72) = 1;
            *(v30 + 74) = 1;
          }

          v21 = ssftmap_Insert(*(v16 + 24), &v67, v30);
          if ((v21 & 0x80000000) != 0)
          {
            log_OutPublic(*(v69 + 32), "SYNTHSTREAM", 22002, "%s%u%s%s%s%u", v54, v55, v56, v57, "module");
          }

          synthstream_loc_ElemReleaseStreamImpl(v30);
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

LABEL_73:
          v58 = heap_Calloc(*(v69 + 8), 1, 24);
          v70 = v58;
          if (v58)
          {
            v59 = v58;
            if (a6 || (v60 = vector_Add(*(v30 + 24), &v70), v59 = v70, v60))
            {
              *v59 = a6;
              *(v59 + 4) = a3;
              *(v59 + 8) = v30;
              *(v59 + 16) = *(v30 + 80);
              ++*(v30 + 42);
              if ((a6 - 1) <= 1)
              {
                *(v30 + 16) = v59;
              }

              *a7 = v59;
              *(a7 + 8) = 18398;
              goto LABEL_82;
            }

            v21 = 2297438218;
            heap_Free(*(v69 + 8), v70);
            v70 = 0;
          }

          else
          {
            v21 = 2297438218;
          }

          v39 = v69;
          goto LABEL_81;
        }

        v21 = 2297438218;
        log_OutPublic(*(v69 + 32), "SYNTHSTREAM", 22000, 0, v48, v49, v50, v51, v62);
        vector_ObjClose(*(v30 + 24));
      }

      else
      {
        v21 = 2297438218;
        log_OutPublic(*(v69 + 32), "SYNTHSTREAM", 22000, 0, v41, v42, v43, v44, v62);
      }

      heap_Free(*(v69 + 8), v30);
      goto LABEL_82;
    }

    if (a6)
    {
      log_OutPublic(*(v69 + 32), "SYNTHSTREAM", 22007, "%s%d%s%u%s%s", v25, v26, v27, v28, "openMode");
      v21 = 2297438215;
      goto LABEL_82;
    }

    if (!v30)
    {
      log_OutText(*(v69 + 32), "SYNTHSTREAM", 3, 0, "SYNTHSTREAM ObjOpen for read failed for %s %u, not found", v26, v27, v28, __s1);
      v21 = 2297438228;
      goto LABEL_82;
    }

    v21 = v31;
    goto LABEL_73;
  }

  log_OutPublic(*(v69 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v17, v18, v19, v20, "function");
  return 2297438215;
}

uint64_t synthstream_StreamClose(uint64_t a1, int a2)
{
  v6 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(*(a1 + 8) + 8);
    log_OutText(*(v7 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : Begin (%u, %p, %d)", v3, v4, v5, *(a1 + 4));
    if (*a1)
    {
      v8 = *(a1 + 8);
      *(v8 + 16) = 0;
      *(v8 + 108) = 1;
      synthstream_loc_StreamImplDump(v8, 0, 0);
    }

    else
    {
      v19 = 0;
      v13 = 0;
      if (vector_GetElemAt(*(*(a1 + 8) + 24), 0, &v19) == 1)
      {
        v13 = 0;
        do
        {
          if (*v19 == a1)
          {
            break;
          }

          ++v13;
        }

        while (vector_GetElemAt(*(*(a1 + 8) + 24), v13, &v19) == 1);
      }

      if (*v19 == a1)
      {
        vector_Remove(*(*(a1 + 8) + 24), v13);
      }

      else
      {
        log_OutPublic(*(v7 + 32), "SYNTHSTREAM", 22003, 0, v9, v10, v11, v12, v18);
      }
    }

    synthstream_loc_ElemReleaseStreamImpl(*(a1 + 8));
    heap_Free(*(v7 + 8), a1);
    log_OutText(*(v7 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM StreamClose : End (%x)", v14, v15, v16, v6);
  }

  return v6;
}

uint64_t synthstream_Read(uint64_t a1, int a2, void *a3, unsigned int a4, _DWORD *a5)
{
  v12 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = *(*(a1 + 8) + 8);
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : Begin (%u, %p, %lu bytes)", v9, v10, v11, *(a1 + 4));
    if (a3 && a4 && a5)
    {
      if (*a1)
      {
        v12 = 2297438215;
        log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v14, v15, v16, v17, "function");
      }

      else
      {
        v18 = *(a1 + 16);
        v19 = *(a1 + 8);
        v20 = *(v19 + 88);
        v21 = v18 - v20;
        if (v18 >= v20)
        {
          v23 = *(v19 + 76);
          if (v23 - v18 >= a4)
          {
            v24 = a4;
          }

          else
          {
            v24 = v23 - v18;
          }

          *a5 = v24;
          if (v23 != v18)
          {
            cstdlib_memcpy(a3, (*(v19 + 96) + v21), v24);
            v29 = *(a1 + 16) + *a5;
            *(a1 + 16) = v29;
            v30 = *(a1 + 8);
            if (v29 > *(v30 + 80))
            {
              *(v30 + 80) = v29;
            }

            if (*(v30 + 56))
            {
              log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22014, "%s%s%s%u%s%s", v25, v26, v27, v28, "function");
            }

            else
            {
              synthstream_loc_StreamImplRecoverExcessBuffer(v30, 0);
            }
          }

          goto LABEL_12;
        }

        log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", v14, v15, v16, v17, "function");
        v12 = 2297438212;
      }
    }

    else
    {
      v12 = 2297438215;
      log_OutPublic(*(v13 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%d%s%p", v14, v15, v16, v17, "function");
      if (!a5)
      {
        return v12;
      }
    }

    *a5 = 0;
LABEL_12:
    log_OutText(*(v13 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Read : End (%x, %lu bytes)", v15, v16, v17, v12);
  }

  return v12;
}

uint64_t synthstream_ReadDirectStart(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  v10 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = 2297438215;
    v12 = *(*(a1 + 8) + 8);
    log_OutText(*(v12 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : Begin (%u, %p)", v7, v8, v9, *(a1 + 4));
    if (a3 && a4)
    {
      if (*a1)
      {
        log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v13, v14, v15, v16, "function");
      }

      else
      {
        v17 = *(a1 + 16);
        v18 = *(a1 + 8);
        v19 = *(v18 + 88);
        v20 = v17 - v19;
        if (v17 >= v19)
        {
          v21 = *(v18 + 76);
          v22 = *(v18 + 96);
          v23 = v22 + v20;
          if (v22)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = v21 - v17;
          *a4 = v25;
          *a3 = v24;
          if (v25)
          {
            v26 = v24 == 0;
          }

          else
          {
            v26 = 0;
          }

          if (!v26)
          {
            goto LABEL_9;
          }

          v11 = 2297438218;
        }

        else
        {
          log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22011, "%s%s%s%u%s%s%s%u%s%u", v13, v14, v15, v16, "function");
          v11 = 2297438212;
        }
      }
    }

    else
    {
      log_OutPublic(*(v12 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%p", v13, v14, v15, v16, "function");
      if (!a3)
      {
        if (!a4)
        {
          return v11;
        }

        goto LABEL_8;
      }
    }

    *a3 = 0;
    if (!a4)
    {
      return v11;
    }

LABEL_8:
    *a4 = 0;
    v10 = v11;
LABEL_9:
    log_OutText(*(v12 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectStart : End (%x, %lu bytes)", v14, v15, v16, v10);
  }

  return v10;
}

uint64_t synthstream_ReadDirectEnd(uint64_t a1, int a2, unsigned int a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : Begin (%u, %p, %lu bytes)", v5, v6, v7, *(a1 + 4));
    if (*a1)
    {
      v8 = 2297438215;
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v10, v11, v12, v13, "function");
    }

    else
    {
      v17 = *(a1 + 8);
      v18 = *(a1 + 16);
      v19 = *(v17 + 76) - v18;
      if (v19 >= a3)
      {
        v20 = v18 + a3;
      }

      else
      {
        v8 = 2297438215;
        log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22004, "%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "module");
        v20 = *(a1 + 16) + v19;
        v17 = *(a1 + 8);
      }

      *(a1 + 16) = v20;
      if (v20 > *(v17 + 80))
      {
        *(v17 + 80) = v20;
      }

      synthstream_loc_StreamImplRecoverExcessBuffer(v17, 0);
    }

    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM ReadDirectEnd : End (%x)", v14, v15, v16, v8);
  }

  return v8;
}

uint64_t synthstream_Write(uint64_t a1, int a2, char *a3, unsigned int a4)
{
  v31 = 1;
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : Begin (%u, %p, %lu bytes)", v8, v9, v10, *(a1 + 4));
    if (!a3 || !a4)
    {
      v20 = 2297438215;
      log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "%s%u%s%s%s%p%s%u", v13, v14, v15, "function=Write|module=");
      goto LABEL_22;
    }

    if ((*a1 - 1) >= 2)
    {
      v20 = 2297438215;
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      goto LABEL_22;
    }

    v16 = *(a1 + 8);
    if (*(v16 + 76) < *(v16 + 88))
    {
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v12, v13, v14, v15, "function");
      v20 = 2297438213;
LABEL_22:
      log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Write : End (%x)", v17, v18, v19, v20);
      return v20;
    }

    v21 = synthstream_loc_StreamImplGrowBuf(v16, a4, &v31);
    if ((v21 & 0x80000000) != 0)
    {
      v20 = v21;
      goto LABEL_22;
    }

    v22 = *(a1 + 8);
    if (v31 == 1)
    {
      v23 = *(v22 + 76);
      v24 = *(v22 + 88);
      v25 = v23 - v24;
      if (v23 >= v24)
      {
        cstdlib_memcpy((*(v22 + 96) + v25), a3, a4);
        v22 = *(a1 + 8);
        if (*(v22 + 56))
        {
          v26 = 0;
          while (1)
          {
            v27 = (*(v22 + 56))(&a3[v26], *(*(v22 + 8) + 8), *(v22 + 96) + v26 + v25);
            v22 = *(a1 + 8);
            if (!v27)
            {
              break;
            }

            v26 += *(v22 + 48);
            if (v26 >= a4)
            {
              goto LABEL_21;
            }
          }

          if (*(v22 + 64))
          {
            v29 = v26 == 0;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            v30 = 0;
            do
            {
              (*(v22 + 64))(*(v22 + 96) + v30 + v25, *(*(v22 + 8) + 8));
              v22 = *(a1 + 8);
              v30 += *(v22 + 48);
            }

            while (v30 < v26);
          }

          v20 = 2297438218;
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v24 = *(v22 + 88);
    }

    *(v22 + 88) = v24 + a4;
LABEL_21:
    *(v22 + 76) += a4;
    synthstream_loc_StreamImplDump(v22, a3, a4);
    v20 = 0;
    goto LABEL_22;
  }

  return v7;
}

uint64_t synthstream_WriteDirectStart(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : Begin (%u, %p, %lu bytes)", v8, v9, v10, *(a1 + 4));
    if (a3 && a4)
    {
      if ((*a1 - 1) >= 2)
      {
        v20 = 2297438215;
        log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      }

      else
      {
        v16 = *(a1 + 8);
        if (*(v16 + 76) >= *(v16 + 88))
        {
          v22 = synthstream_loc_StreamImplGrowBuf(v16, a4, 0);
          if ((v22 & 0x80000000) != 0)
          {
            v20 = v22;
          }

          else
          {
            v23 = *(a1 + 8);
            v24 = *(v23 + 96);
            if (v24)
            {
              v25 = (v24 + (*(v23 + 76) - *(v23 + 88)));
              *a3 = v25;
              cstdlib_memset(v25, 0, a4);
              v20 = 0;
              goto LABEL_12;
            }

            v20 = 0;
          }
        }

        else
        {
          log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v12, v13, v14, v15, "function");
          v20 = 2297438213;
        }
      }
    }

    else
    {
      v20 = 2297438215;
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p%s%u", v12, v13, v14, v15, "function");
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *a3 = 0;
LABEL_12:
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectStart : End (%x)", v17, v18, v19, v20);
    return v20;
  }

  return v7;
}

uint64_t synthstream_WriteDirectEnd(uint64_t a1, int a2, unsigned int a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : Begin (%u, %p, %lu bytes)", v5, v6, v7, *(a1 + 4));
    if ((*a1 - 1) >= 2)
    {
      v8 = 2297438215;
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v10, v11, v12, v13, "function");
      goto LABEL_6;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 76);
    v16 = *(v14 + 88);
    v17 = v15 - v16;
    if (v15 < v16)
    {
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22012, "%s%s%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "function");
      v8 = 2297438213;
LABEL_6:
      log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteDirectEnd : End (%x)", v18, v19, v20, v8);
      return v8;
    }

    v22 = v17 + a3;
    if (v17 + a3 > *(v14 + 104))
    {
      v8 = 2297438215;
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22005, "%s%u%s%s%s%u%s%u", v10, v11, v12, v13, "module");
      goto LABEL_6;
    }

    if (*(v14 + 56))
    {
      if (a3)
      {
        v23 = 0;
        while (1)
        {
          v24 = *(v14 + 96) + v23 + v17;
          v25 = (*(v14 + 56))(v24, *(*(v14 + 8) + 8), v24);
          v14 = *(a1 + 8);
          if (!v25)
          {
            break;
          }

          v23 += *(v14 + 48);
          if (v23 >= a3)
          {
            goto LABEL_15;
          }
        }

        if (*(v14 + 64))
        {
          v29 = v23 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = 0;
          do
          {
            (*(v14 + 64))(*(v14 + 96) + v30 + v17, *(*(v14 + 8) + 8));
            v14 = *(a1 + 8);
            v30 += *(v14 + 48);
          }

          while (v30 < v23);
        }

        v8 = 2297438218;
        goto LABEL_6;
      }

LABEL_15:
      v15 = *(v14 + 76);
    }

    *(v14 + 76) = v15 + a3;
    synthstream_loc_StreamImplDump(v14, *(v14 + 96) + v17, a3);
    v26 = *(a1 + 8);
    if (*(v26 + 104) - v22 >= *(*v26 + 40))
    {
      *(v26 + 104) = v22;
      v27 = *(v26 + 96);
      if (v22)
      {
        v28 = heap_Realloc(*(*(v26 + 8) + 8), v27, v22 + 1);
        v26 = *(a1 + 8);
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        heap_Free(*(*(v26 + 8) + 8), v27);
        v28 = 0;
        v26 = *(a1 + 8);
      }

      *(v26 + 96) = v28;
    }

LABEL_29:
    synthstream_loc_StreamImplRecoverExcessBuffer(v26, 0);
    goto LABEL_6;
  }

  return v8;
}

uint64_t synthstream_WriteCopy(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v12 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v12 & 0x80000000) == 0)
  {
    v16 = 2297438215;
    v17 = *(*(a1 + 8) + 8);
    log_OutText(*(v17 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : Begin (%u, %p, %p, %lu bytes)", v13, v14, v15, *(a1 + 4));
    if (a5 && a6)
    {
      if ((*a1 - 1) < 2)
      {
        v28 = 0;
        v27 = 0;
        *a6 = 0;
        v16 = synthstream_ReadDirectStart(a3, a4, &v28, &v27);
        if ((v16 & 0x80000000) == 0 && v27)
        {
          if (v27 < a5)
          {
            a5 = v27;
          }

          v25 = synthstream_Write(a1, a2, v28, a5);
          if ((v25 & 0x80000000) != 0)
          {
            v16 = v25;
            a5 = 0;
          }

          else
          {
            v16 = 0;
            *a6 = a5;
          }

          synthstream_ReadDirectEnd(a3, a4, a5);
        }

        goto LABEL_18;
      }

      log_OutPublic(*(v17 + 32), "SYNTHSTREAM", 22008, "%s%s%s%u%s%s", v18, v19, v20, v21, "function");
    }

    else
    {
      log_OutPublic(*(v17 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%u%s%p", v18, v19, v20, v21, "function");
      if (!a6)
      {
        return v16;
      }
    }

    *a6 = 0;
LABEL_18:
    log_OutText(*(v17 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM WriteCopy : End (%x, %lu bytes)", v22, v23, v24, v16);
    return v16;
  }

  return v12;
}

uint64_t synthstream_GetPosition(uint64_t a1, int a2, _DWORD *a3)
{
  v8 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(*(a1 + 8) + 8);
    log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : Begin (%u, %p)", v5, v6, v7, *(a1 + 4));
    if (a3)
    {
      if (*a1)
      {
        v14 = (*(a1 + 8) + 76);
      }

      else
      {
        v14 = (a1 + 16);
      }

      *a3 = *v14;
      log_OutText(*(v9 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetPosition : End (%x, %lu)", v11, v12, v13, v8);
    }

    else
    {
      log_OutPublic(*(v9 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v10, v11, v12, v13, "function");
      return 2297438215;
    }
  }

  return v8;
}

uint64_t synthstream_GetRemaining(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v10 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(*(a1 + 8) + 8);
    log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : Begin (%u, %p)", v7, v8, v9, *(a1 + 4));
    if (a3)
    {
      if (!*a1)
      {
        v16 = *(a1 + 8);
        *a3 = *(v16 + 76) - *(a1 + 16);
        if (a4)
        {
          *a4 = *(v16 + 108);
        }

LABEL_12:
        log_OutText(*(v11 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM GetRemaining : End (%x, %lu)", v13, v14, v15, v10);
        return v10;
      }

      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22009, "%s%s%s%u%s%s", v12, v13, v14, v15, "function");
      *a3 = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      log_OutPublic(*(v11 + 32), "SYNTHSTREAM", 22006, "%s%s%s%u%s%s%s%p", v12, v13, v14, v15, "function");
      if (a4)
      {
LABEL_5:
        *a4 = 1;
      }
    }

    v10 = 2297438215;
    if (!a3)
    {
      return v10;
    }

    goto LABEL_12;
  }

  return v10;
}

uint64_t synthstream_Reset(uint64_t a1, int a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v4 = synthstream_loc_BeginFunction(a1, a2, &v28, &v29);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : Begin (%u)", v5, v6, v7, a3);
  Str = paramc_ParamGetStr(*(v28 + 40), "clcpppipelinemode", &v26);
  v9 = ssftmap_IteratorOpen(*(v29 + 24), 0, 1, &v27);
  LODWORD(v13) = v9;
  if (Str < 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v23 = 0;
      v24 = 0;
      while ((ssftmap_IteratorNext(v27, &v24, &v23) & 0x80000000) == 0)
      {
        if (*(v23 + 42) == 1)
        {
          v20 = *(v23 + 40);
          if (v20 >= a3)
          {
            v21 = "Clear";
          }

          else
          {
            v21 = "Keep";
          }

          log_OutText(*(v28 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", v17, v18, v19, v21);
          if (v20 >= a3)
          {
            ssftmap_IteratorRemove(v27);
          }
        }

        else
        {
          log_OutText(*(v28 + 32), "SYNTHSTREAM", 3, 0, "%s stream %s %u", v17, v18, v19, "Keep");
        }
      }

      goto LABEL_21;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    while ((ssftmap_IteratorNext(v27, &v24, &v23) & 0x80000000) == 0)
    {
      v14 = v23;
      *(v23 + 84) = 0;
      *(v14 + 76) = 0;
      if (vector_GetElemAt(*(v14 + 24), 0, &v25) == 1)
      {
        v15 = 1;
        do
        {
          *(*v25 + 16) = 0;
          ElemAt = vector_GetElemAt(*(v23 + 24), v15++, &v25);
        }

        while (ElemAt == 1);
      }
    }

LABEL_21:
    ssftmap_IteratorClose(v27);
  }

  if ((v13 & 0x1FFF) == 0x14)
  {
    v13 = 0;
  }

  else
  {
    v13 = v13;
  }

  log_OutText(*(v28 + 32), "SYNTHSTREAM", 4, 0, "SYNTHSTREAM Reset : End (%x)", v10, v11, v12, v13);
  return v13;
}

uint64_t synthstream_SetRulRes(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v7 = safeh_HandleCheck(a1, a2, 18398, 24);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(v8 + 8);
    if (a4)
    {
      v10 = 0;
      v11 = a4;
      v12 = a3;
      do
      {
        v13 = *v12++;
        if ((v13 - 1) < 0x1F)
        {
          ++v10;
        }

        --v11;
      }

      while (v11);
      v14 = 4 * v10;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v8 + 112);
    if (v15)
    {
      heap_Free(*(v9 + 8), v15);
      v16 = *(a1 + 8);
      *(v16 + 112) = 0;
      v9 = *(v16 + 8);
    }

    v17 = heap_Alloc(*(v9 + 8), a4 + v14 + 1);
    *(*(a1 + 8) + 112) = v17;
    if (v17)
    {
      v18 = v7;
    }

    else
    {
      v18 = 2297438218;
    }

    if (v17)
    {
      v19 = a4 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v21 = v17;
      v22 = a4;
      while (1)
      {
        v24 = *a3++;
        v23 = v24;
        if ((v24 - 1) <= 0x1E)
        {
          break;
        }

        *v21 = v23;
        v27 = 1;
LABEL_41:
        v21 += v27;
        if (!--v22)
        {
          return v7;
        }
      }

      if (v23 > 10)
      {
        if (v23 <= 12)
        {
          if (v23 == 11)
          {
            cstdlib_strcpy(v21, "\\v");
            v28 = "\\v";
          }

          else
          {
            cstdlib_strcpy(v21, "\\f");
            v28 = "\\f";
          }

          goto LABEL_40;
        }

        if (v23 == 13)
        {
          cstdlib_strcpy(v21, "\\r");
          v28 = "\\r";
          goto LABEL_40;
        }

        if (v23 == 27)
        {
          cstdlib_strcpy(v21, "<ESC>");
          v28 = "<ESC>";
LABEL_40:
          v27 = cstdlib_strlen(v28);
          goto LABEL_41;
        }
      }

      else
      {
        if (v23 > 8)
        {
          v25 = v21;
          if (v23 == 9)
          {
            v26 = "\\t";
          }

          else
          {
            v26 = "\\n";
          }

          goto LABEL_39;
        }

        if (v23 == 7)
        {
          v25 = v21;
          v26 = "\\a";
          goto LABEL_39;
        }

        if (v23 == 8)
        {
          v25 = v21;
          v26 = "\\b";
LABEL_39:
          cstdlib_strcpy(v25, v26);
          v28 = v26;
          goto LABEL_40;
        }
      }

      cstdlib_strcpy(v21, "<SPC>");
      v28 = "<SPC>";
      goto LABEL_40;
    }

    return v18;
  }

  return v7;
}

uint64_t synthstream_loc_ElemCopyMapKey(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = 2297438215;
  if (a1 && a2 && a3)
  {
    v7 = heap_Calloc(a2, 1, 16);
    if (v7)
    {
      v8 = v7;
      *(v7 + 8) = *(a1 + 8);
      v3 = ssftmap_ElemCopyString(*a1, a2, v7);
      if ((v3 & 0x80000000) != 0)
      {
        heap_Free(a2, v8);
      }

      else
      {
        *a3 = v8;
      }
    }

    else
    {
      return 2297438218;
    }
  }

  return v3;
}

uint64_t *synthstream_loc_ElemFreeMapKey(uint64_t *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (*result)
    {
      heap_Free(a2, *result);
    }

    return heap_Free(a2, v3);
  }

  return result;
}

uint64_t synthstream_loc_ElemCompareKeysMapKey(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      if (!a2)
      {
        return 1;
      }

      v5 = *a2;
      if (!*a2)
      {
        return 1;
      }

LABEL_13:
      result = cstdlib_strcmp(v4, v5);
      if (!result)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 + 8);
        v9 = v7 >= v8;
        v10 = v7 > v8;
        if (v9)
        {
          return v10;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      return result;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  if (a1 && v5)
  {
    v4 = *a1;
    if (!*a1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t synthstream_loc_ElemCopyStreamImpl(uint64_t a1, uint64_t a2, void *a3)
{
  result = 2297438215;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      ++*(a1 + 42);
      *a3 = a1;
    }
  }

  return result;
}

void *synthstream_loc_ElemReleaseStreamImpl(void *result)
{
  v30 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = *(result + 21);
    if (v2 < 2)
    {
      v3 = result[1];
      if (*(result + 74))
      {
        v25 = 0;
        __s2 = 0;
        v4 = result[4];
        v27[0] = 0;
        cstdlib_strcpy(__dst, v4);
        if (cstdlib_strcmp(v4, "application/synthesis+ssml") && cstdlib_strcmp(v4, "text/html") && cstdlib_strcmp(v4, "text/email") && cstdlib_strcmp(v4, "text/xml"))
        {
          if ((paramc_ParamGetStr(*(*(v1 + 8) + 40), "inputmimetype", &__s2) & 0x80000000) != 0 || !__s2 || !*__s2)
          {
            __s2 = cstdlib_strstr(v4, ";charset=");
            if (__s2)
            {
              cstdlib_strcpy(v28, v4);
              v28[__s2 - v4] = 0;
            }
          }
        }

        else if ((paramc_ParamGetStr(*(*(v1 + 8) + 40), "ssmldocumentencoding", &__s2) & 0x80000000) == 0 && __s2 && *__s2)
        {
          cstdlib_strcat(__dst, ";charset=");
          cstdlib_strcat(__dst, __s2);
        }

        if ((ssftstring_ObjOpen(*(*(v1 + 8) + 8), &v25) & 0x80000000) == 0)
        {
          log_OutBinary(*(*(v1 + 8) + 32), "SYNTHSTREAM", 0, 0, "input text", __dst, *(v1 + 96), *(v1 + 76), v25);
          __s2 = ssftstring_CStr(v25);
          v10 = *(*(v1 + 8) + 32);
          if (__s2)
          {
            log_OutEvent(v10, 17, "%s%s%s%s%s%u", v5, v6, v7, v8, v9, "MIME");
            cstdlib_strcpy(v27, __s2);
          }

          else
          {
            log_OutEvent(v10, 17, "%s%s%s%u", v5, v6, v7, v8, v9, "MIME");
          }

          ssftstring_ObjClose(v25);
          if (v27[0])
          {
            if (*(v1 + 112))
            {
              log_OutEvent(*(*(v1 + 8) + 32), 20, "%s%s%s%s", v11, v12, v13, v14, v15, "TXID");
            }
          }
        }
      }

      v16 = *(v1 + 32);
      if (v16)
      {
        heap_Free(*(v3 + 8), v16);
      }

      v17 = *(v1 + 112);
      if (v17)
      {
        heap_Free(*(v3 + 8), v17);
        *(v1 + 112) = 0;
      }

      v18 = *(v1 + 24);
      if (v18)
      {
        vector_ObjClose(v18);
      }

      v19 = *(v1 + 96);
      if (v19)
      {
        if (*(v1 + 64))
        {
          v20 = *(v1 + 88);
          v21 = *(v1 + 84) - v20;
          if (v21 < *(v1 + 76) - v20)
          {
            v22 = v19 + v21;
            do
            {
              (*(v1 + 64))(v22, *(*(v1 + 8) + 8));
              v23 = *(v1 + 48);
              v24 = *(v1 + 88);
              *(v1 + 84) += v23;
              v22 += v23;
              v19 = *(v1 + 96);
            }

            while (v22 < v19 + (*(v1 + 76) - v24));
          }
        }

        heap_Free(*(v3 + 8), v19);
        *(v1 + 96) = 0;
      }

      return heap_Free(*(v3 + 8), v1);
    }

    else
    {
      *(result + 21) = v2 - 1;
    }
  }

  return result;
}

uint64_t synthstream_loc_BeginFunction(uint64_t a1, int a2, void *a3, uint64_t *a4)
{
  *a4 = 0;
  result = safeh_HandleCheck(a1, a2, 18397, 48);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(*a1, *(a1 + 8), a3);
    if ((result & 0x80000000) == 0)
    {
      *a4 = a1;
    }
  }

  return result;
}

uint64_t synthstream_loc_StreamImplDump(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  result = log_GetLogLevel(*(*(a1 + 8) + 32));
  if (result >= 6)
  {
    if (a2 && a3)
    {
      v10 = *(*(a1 + 8) + 32);
      v11 = *(a1 + 44);
      if (*(a1 + 73))
      {
        log_OutText(v10, "SYNTHSTREAM", 6, 0, "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes [%.*s]", v7, v8, v9, v11);
        LH_utoa(*(a1 + 44), v13, 0xAu);
        return log_OutBinary(*(*(a1 + 8) + 32), "SYNTHSTREAM", 99, 0, v13, *(a1 + 32), a2, a3, 0);
      }

      v12 = "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d, writing %u bytes";
    }

    else
    {
      v10 = *(*(a1 + 8) + 32);
      v11 = *(a1 + 44);
      v12 = "writerID=%u, szContentType=%s, pipelinePos=%u, refCount=%u, writePos=%u, bufPos=%u, eos=%d";
    }

    return log_OutText(v10, "SYNTHSTREAM", 6, 0, v12, v7, v8, v9, v11);
  }

  return result;
}

uint64_t synthstream_loc_StreamImplRecoverExcessBuffer(uint64_t result, unsigned int a2)
{
  v2 = *(result + 76);
  v17 = 0;
  if (!*(result + 96))
  {
    return result;
  }

  v3 = result;
  if (*(result + 72))
  {
    return result;
  }

  result = vector_GetElemAt(*(result + 24), 0, &v17);
  if (result == 1)
  {
    v5 = 1;
    do
    {
      if (*(*v17 + 16) < v2)
      {
        v2 = *(*v17 + 16);
      }

      result = vector_GetElemAt(*(v3 + 24), v5++, &v17);
    }

    while (result == 1);
  }

  v6 = *(v3 + 88);
  v7 = v2 - v6;
  v8 = *(v3 + 48);
  if (v8 >= 2)
  {
    v7 = v7 / v8 * v8;
  }

  if (*(v3 + 64))
  {
    if (v7)
    {
      v9 = *(v3 + 84) - v6;
      if (v9 < v7)
      {
        v10 = *(v3 + 96) + v9;
        do
        {
          result = (*(v3 + 64))(v10, *(*(v3 + 8) + 8));
          v11 = *(v3 + 48);
          *(v3 + 84) += v11;
          v10 += v11;
        }

        while (v10 < *(v3 + 96) + v7);
      }
    }
  }

  if (a2)
  {
    if (v7 >= a2)
    {
      goto LABEL_21;
    }

    v12 = *(*v3 + 36);
  }

  else
  {
    v12 = *(*v3 + 40);
  }

  if (v7 < v12)
  {
    return result;
  }

LABEL_21:
  v13 = *(v3 + 76);
  if (v13 != v2)
  {
    result = cstdlib_memmove(*(v3 + 96), (*(v3 + 96) + v7), v13 - v2);
  }

  *(v3 + 88) += v7;
  if (!a2)
  {
    v14 = *(v3 + 104);
    if (v14 == v7)
    {
      v15 = *(v3 + 96);
    }

    else
    {
      v15 = *(v3 + 96);
      if (v2 != *(v3 + 76))
      {
        result = heap_Realloc(*(*(v3 + 8) + 8), v15, v14 - v7);
        if (!result)
        {
          return result;
        }

        *(v3 + 96) = result;
        v16 = *(v3 + 104) - v7;
LABEL_28:
        *(v3 + 104) = v16;
        return result;
      }
    }

    result = heap_Free(*(*(v3 + 8) + 8), v15);
    v16 = 0;
    *(v3 + 96) = 0;
    goto LABEL_28;
  }

  return result;
}

uint64_t synthstream_loc_StreamImplGrowBuf(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    v6 = *(a1 + 76) - *(a1 + 88) + a2;
    v7 = *(a1 + 104);
    if (v6 > v7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  *a3 = 1;
  v6 = *(a1 + 76) - *(a1 + 88) + a2;
  v7 = *(a1 + 104);
  if (v6 <= v7)
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    result = vector_GetSize(*(a1 + 24));
    if (!result)
    {
      *a3 = 0;
      return result;
    }

    v7 = *(a1 + 104);
  }

LABEL_7:
  synthstream_loc_StreamImplRecoverExcessBuffer(a1, v6 - v7);
  v9 = *(a1 + 76) - *(a1 + 88) + a2;
  if (v9 <= *(a1 + 104))
  {
    return 0;
  }

  if (v9 <= *(*a1 + 32))
  {
    v10 = *(*a1 + 32);
  }

  else
  {
    v10 = *(a1 + 76) - *(a1 + 88) + a2;
  }

  v11 = *(a1 + 96);
  v12 = *(*(a1 + 8) + 8);
  v13 = (v10 + 1);
  if (v11)
  {
    v14 = heap_Realloc(v12, v11, v13);
  }

  else
  {
    v14 = heap_Calloc(v12, 1, v13);
  }

  v19 = v14;
  if (v14)
  {
    result = 0;
    *(a1 + 96) = v19;
    *(a1 + 104) = v10;
  }

  else
  {
    log_OutPublic(*(*(a1 + 8) + 32), "SYNTHSTREAM", 22000, 0, v15, v16, v17, v18, v20);
    return 2297438218;
  }

  return result;
}

uint64_t DecoAddr(void *a1, int a2)
{
  v3 = a1[2];
  v4 = *v3;
  v5 = *(*v3 + 19);
  v6 = v5 * a2;
  v7 = (v5 * a2) >> 3;
  v8 = a1[6];
  if (v8)
  {
    a1[1] = v8 + v3[34] + v7;
  }

  else
  {
    v15 = *(v4 + 54);
    v16 = *(v4 + 68);
    if (v7 + v15 <= v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16 - v7;
    }

    v18 = brk_DataMap(a1[3], a1[4], v3[34] + v7, v17, (a1 + 1));
    if ((v18 & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v18)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = (v6 & 7) + v5;
  v10 = a1[1];
  v11 = *v10;
  if (v9 < 9)
  {
    v19 = (v11 >> (8 - v9)) & (0xFFFFFFFF >> -v5);
  }

  else
  {
    v12 = ((0xFFu >> (v6 & 7)) & v11) << (v9 - 8);
    if (v9 < 0x11)
    {
      v14 = 16;
      v13 = 1;
    }

    else
    {
      LOBYTE(v13) = 1;
      v14 = 16;
      do
      {
        v12 += v10[v13] << (v9 - v14);
        LOBYTE(v13) = v13 + 1;
        v14 = 8 * v13 + 8;
      }

      while (v9 > (v14 & 0xF8u));
      v13 = v13;
    }

    v19 = (v10[v13] >> (v14 - v9)) + v12;
  }

  if (!a1[6])
  {
    brk_DataUnmap(a1[3], a1[4], v10);
  }

  return v19;
}

uint64_t WordToHashOpt(uint64_t a1, uint64_t a2, unsigned int a3, __int16 a4, int a5, uint64_t a6)
{
  v34 = 0;
  v12 = *a6;
  if (*a6)
  {
    v13 = 0;
    goto LABEL_3;
  }

  v23 = *(a1 + 16);
  v24 = v23[1];
  v25 = *(a2 + a3);
  if (a5)
  {
    LODWORD(v25) = depes_tolower(v25);
    v23 = *(a1 + 16);
  }

  v26 = *v23;
  v27 = *(v24 - *(*v23 + 4) + v25);
  v28 = *(*v23 + 46);
  if (*(*v23 + 46))
  {
    v29 = 0;
    v30 = 0;
    while (v27 > *(v23[3] + v29))
    {
      v30 += *(v23[5] + 4 * v29++);
      if (v28 == v29)
      {
        return 0xFFFFFFFFLL;
      }
    }

    LODWORD(v29) = v29;
  }

  else
  {
    v30 = 0;
    LODWORD(v29) = 0;
  }

  v34 = v30;
  if (v29 != v28 && v27 == *(v23[3] + v29))
  {
    *(a6 + 4) = v30;
    v12 = *(v23[4] + 4 * v29);
    if (v12 <= *(v26 + 18))
    {
      v32 = *(v26 + 56);
      *a1 = v32;
      v33 = *(v26 + 17);
      *(a1 + 4) = v33;
      v12 = v33 + 8 * v32;
    }

    *a6 = v12;
    v13 = 1;
LABEL_3:
    v14 = a4 - a3 + 1;
    v15 = a2 + a3;
    while (v13 != v14)
    {
      v16 = *(a1 + 16);
      v17 = v16[1];
      v18 = *(v15 + v13);
      if (a5)
      {
        v19 = depes_tolower(v18) - *(**(a1 + 16) + 4);
        v12 = *a6;
      }

      else
      {
        v19 = v18 - *(*v16 + 4);
      }

      v20 = *(v17 + v19);
      if ((SearchEntry(a1, v12, v20, (a6 + 8), &v34, a6) & 0x1FFF) == 0xA)
      {
        return 4294967294;
      }

      v12 = *a6;
      if (!*a6)
      {
        result = 0xFFFFFFFFLL;
        *(a6 + 4) = -1;
        return result;
      }

      v21 = *(a6 + 4) + v34;
      *(a6 + 4) = v21;
      ++v13;
      if (v20 == *(**(a1 + 16) + 16))
      {
        if (v12 == 1)
        {
          return v21;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    v36 = 0;
    v31 = *(**(a1 + 16) + 16);
    v35 = *(a6 + 8);
    if ((SearchEntry(a1, v12, v31, &v35, &v34, &v36) & 0x1FFF) == 0xA)
    {
      return 4294967294;
    }

    if (v36 == 1)
    {
      return (v34 + *(a6 + 4));
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t SearchEntry(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 *a4, _DWORD *a5, unsigned int *a6)
{
  v6 = a6;
  SourceAddress = a2;
  v12 = a2 >> 3;
  v13 = *(a1 + 48);
  if (v13)
  {
    v45 = a6;
    v14 = *(a1 + 16);
    *(a1 + 8) = v13 + *(v14 + 128) + v12;
  }

  else
  {
    result = brk_DataMap(*(a1 + 24), *(a1 + 32), *(*(a1 + 16) + 128) + v12, *(**(a1 + 16) + 50), a1 + 8);
    if (result)
    {
      SourceAddress = 0;
      goto LABEL_73;
    }

    v45 = v6;
    v14 = *(a1 + 16);
  }

  *a1 = 0;
  *(a1 + 4) = SourceAddress & 7;
  *a5 = 0;
  v15 = *(v14 + 88);
  v16 = *(v15 + 2 * HuffDecode(a1, *(v14 + 48), *(*v14 + 26)));
  v17 = *(a1 + 16);
  v18 = *(*v17 + 24);
  v19 = v16 - v18;
  if (v16 > v18)
  {
    v20 = 0;
    do
    {
      v21 = *(a1 + 16);
      v22 = v21[12];
      v23 = HuffDecode(a1, v21[7], *(*v21 + 28));
      ++v20;
      v24 = *a4;
    }

    while (v24 >= v20);
    if (*(v22 + v23) == a3)
    {
      *a5 = 0;
      v25 = v24 + 1;
      *a4 = v25;
      v6 = v45;
      if (v25 < v19)
      {
        goto LABEL_70;
      }

      *a4 = 0;
      if (*(**(a1 + 16) + 16) == a3)
      {
        SourceAddress = 1;
        if (!*(a1 + 48))
        {
          goto LABEL_71;
        }

LABEL_72:
        result = 0;
        goto LABEL_73;
      }

      v37 = DecodeSourceLink(a1);
      if (!v37)
      {
        SourceAddress = GetSourceAddress(a1);
        goto LABEL_70;
      }

      SourceAddress = v37;
      v38 = **(a1 + 16);
      if (v37 > *(v38 + 18))
      {
        goto LABEL_70;
      }

      v39 = *(a1 + 4);
      v40 = *(v38 + 15);
      if ((v40 & v39) == 0)
      {
LABEL_67:
        v44 = *a1;
        if (v39 == 8)
        {
          LOBYTE(v39) = 0;
          *(a1 + 4) = 0;
          *a1 = ++v44;
        }

        SourceAddress = 8 * (v44 + v12) + v39;
LABEL_70:
        if (*(a1 + 48))
        {
          goto LABEL_72;
        }

LABEL_71:
        brk_DataUnmap(*(a1 + 24), *(a1 + 32), *(a1 + 8));
        goto LABEL_72;
      }

      do
      {
        ++v39;
      }

      while ((v40 & v39) != 0);
LABEL_63:
      *(a1 + 4) = v39;
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v26 = v17[12];
  v27 = *(v26 + HuffDecode(a1, v17[7], *(*v17 + 28)));
  if (v27 == *(**(a1 + 16) + 16))
  {
    SourceAddress = 0;
    if (v27 == a3)
    {
      goto LABEL_21;
    }

    v28 = 1;
    goto LABEL_20;
  }

  SourceAddress = DecodeSourceLink(a1);
  if (!SourceAddress)
  {
    SourceAddress = GetSourceAddress(a1);
  }

  if (v27 != a3)
  {
    v28 = DecodeSourceHash(a1);
LABEL_20:
    *a5 += v28;
  }

LABEL_21:
  v30 = v16 > 1;
  v31 = 1;
  if (v27 < a3 && v16 >= 2)
  {
    do
    {
      v33 = *(a1 + 16);
      v34 = v33[13];
      LOBYTE(v27) = *(v34 + HuffDecode(a1, v33[8], *(*v33 + 30))) + v27;
      if (*(**(a1 + 16) + 16) == v27)
      {
        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = 1;
      }

      else
      {
        SourceAddress = DecodeSourceLink(a1);
        if (!SourceAddress)
        {
          SourceAddress = GetSourceAddress(a1);
        }

        if (a3 == v27)
        {
          goto LABEL_34;
        }

        v35 = DecodeSourceHash(a1);
      }

      *a5 += v35;
LABEL_34:
      v30 = v16 > ++v31;
    }

    while (a3 > v27 && v16 > v31);
  }

  if (a3 != v27)
  {
LABEL_40:
    SourceAddress = 0;
    result = 0;
    v6 = v45;
    if (!*(a1 + 48))
    {
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v36 = **(a1 + 16);
  if (*(v36 + 16) == a3)
  {
    SourceAddress = 1;
    v6 = v45;
    if (!*(a1 + 48))
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (SourceAddress <= *(v36 + 18))
  {
    if (v30)
    {
      DecodeSourceHash(a1);
    }

    while (v16 > v31)
    {
      v41 = *(a1 + 16);
      v42 = v41[13];
      LOBYTE(a3) = *(v42 + HuffDecode(a1, v41[8], *(*v41 + 30))) + a3;
      if (*(**(a1 + 16) + 16) != a3)
      {
        if (!DecodeSourceLink(a1))
        {
          GetSourceAddress(a1);
        }

        if (v31 < (v16 - 1))
        {
          DecodeSourceHash(a1);
        }
      }

      ++v31;
    }

    v39 = *(a1 + 4);
    v43 = *(**(a1 + 16) + 15);
    if ((v43 & v39) == 0)
    {
      v6 = v45;
      goto LABEL_67;
    }

    v6 = v45;
    do
    {
      ++v39;
    }

    while ((v43 & v39) != 0);
    goto LABEL_63;
  }

  if (!*(a1 + 48))
  {
    v6 = v45;
    goto LABEL_71;
  }

  result = 0;
  v6 = v45;
LABEL_73:
  *v6 = SourceAddress;
  return result;
}

uint64_t open_DctRom(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  v5 = a1[6];
  if (v5)
  {
    v11 = a1[6];
  }

  else
  {
    v8 = brk_DataOpenEx(a1[3], a2, 1, (a1 + 4));
    if (v8)
    {
      v6 = v8;
      a1[4] = 0;
      return v6;
    }

    v9 = brk_DataMap(a1[3], a1[4], 0, 40, &v11);
    if (v9)
    {
      v6 = v9;
      brk_DataClose(a1[3], a1[4]);
      a1[4] = 0;
      return v6;
    }

    v5 = v11;
  }

  v6 = 2306875417;
  if (*v5 == 65279 && !LH_strnicmp((v5 + 1), "SCANSOFT", 8uLL) && !LH_strnicmp((v11 + 3), "SYS_DCT", 7uLL))
  {
    v7 = v11[5];
    if (!a1[6])
    {
      brk_DataUnmap(a1[3], a1[4], v11);
    }

    v6 = 0;
    *a3 = v7 - 40;
  }

  return v6;
}

uint64_t close_DctRom(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    brk_DataClose(*(a1 + 24), v1);
    *(a1 + 32) = 0;
  }

  return 0;
}

uint64_t query_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = a3;
  v14 = 0;
  *a5 = 0;
  v9 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v14);
  if (v9)
  {
    v10 = v9;
    brk_DataClose(*(a1 + 24), *(a1 + 32));
    *(a1 + 32) = 0;
  }

  else
  {
    if (v6)
    {
      v11 = 0;
      while (LH_stricmp((v14 + v11), a2))
      {
        v12 = cstdlib_strlen((v14 + v11));
        v11 += v12 + ((~v12 - v11) & 3) + 5;
        if (v11 >= v6)
        {
          goto LABEL_9;
        }
      }

      *a5 = 1;
    }

LABEL_9:
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v14);
    return 0;
  }

  return v10;
}

uint64_t init_DctRom(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v35 = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    v35 = (v8 + 40);
  }

  else
  {
    v14 = brk_DataMap(*(a1 + 24), *(a1 + 32), 40, a3, &v35);
    if (v14)
    {
LABEL_10:
      v13 = v14;
      brk_DataClose(*(a1 + 24), *(a1 + 32));
      *(a1 + 32) = 0;
      return v13;
    }
  }

  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = LH_stricmp(&v35[v9], a2);
      v11 = cstdlib_strlen(&v35[v9]);
      v12 = (~v11 - v9) & 3;
      if (!v10)
      {
        break;
      }

      v9 += v12 + v11 + 5;
      if (v9 >= v5)
      {
        goto LABEL_7;
      }
    }

    v15 = *&v35[v11 + 1 + v9 + v12];
    v16 = *(a1 + 48);
    if (v16 || (brk_DataUnmap(*(a1 + 24), *(a1 + 32), v35), (v16 = *(a1 + 48)) != 0))
    {
      if (v15 > *(a1 + 56))
      {
        return 2306875412;
      }

      LODWORD(v17) = *(v16 + v15);
      goto LABEL_16;
    }

    v14 = brk_DataMap(*(a1 + 24), *(a1 + 32), v15, 4, &v35);
    if (!v14)
    {
      v16 = *(a1 + 48);
      v17 = *v35;
      if (!v16)
      {
        brk_DataUnmap(*(a1 + 24), *(a1 + 32), v35);
        v13 = brk_DataMap(*(a1 + 24), a4, v15, v17, *(a1 + 16));
        if (v13)
        {
          return v13;
        }

        v19 = *(a1 + 16);
        v18 = *v19;
        goto LABEL_17;
      }

LABEL_16:
      v18 = v16 + v15;
      v19 = *(a1 + 16);
      *v19 = v18;
LABEL_17:
      v13 = 0;
      v20 = v18 + 72 + ((*(v18 + 5) - *(v18 + 4) + 4) & 0xFFFFFFFC);
      v19[1] = v18 + 72;
      v19[2] = v20;
      v21 = v20 + ((2 * (*(v18 + 7) - *(v18 + 6)) + 5) & 0xFFFFFFFC);
      LODWORD(v20) = *(v18 + 46);
      v22 = v21 + ((v20 + 3) & 0x1FFFC);
      v19[3] = v21;
      v19[4] = v22;
      v23 = v22 + 4 * v20;
      v24 = v23 + 4 * v20;
      v19[5] = v23;
      v19[6] = v24;
      v25 = v24 + 4 * *(v18 + 26) + 4;
      v26 = v25 + 4 * *(v18 + 28) + 4;
      v19[7] = v25;
      v19[8] = v26;
      v27 = v26 + 4 * *(v18 + 30) + 4;
      v28 = v27 + 4 * *(v18 + 32) + 4;
      v19[9] = v27;
      v19[10] = v28;
      v29 = v28 + 4 * *(v18 + 34) + 4;
      v30 = v29 + ((2 * *(v18 + 36) + 3) & 0x3FFFC);
      v19[11] = v29;
      v19[12] = v30;
      v31 = v30 + ((*(v18 + 38) + 3) & 0x1FFFC);
      v32 = v31 + ((*(v18 + 40) + 3) & 0x1FFFC);
      v19[13] = v31;
      v19[14] = v32;
      v19[15] = v32 + ((2 * *(v18 + 42) + 3) & 0x3FFFC);
      LODWORD(v32) = *(v18 + 60);
      v33 = *(v18 + 64);
      LODWORD(v32) = ((v32 + 3) & 0xFFFFFFFC) + v17 + v15;
      *(v19 + 32) = v17 + v15;
      *(v19 + 33) = v32;
      *(v19 + 34) = ((v33 + 3) & 0xFFFFFFFC) + v32;
      return v13;
    }

    goto LABEL_10;
  }

LABEL_7:
  v13 = 2306875412;
  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), v35);
  }

  return v13;
}

uint64_t exit_DctRom(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    brk_DataUnmap(*(a1 + 24), a2, **(a1 + 16));
  }

  return 0;
}

BOOL test_DCT(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a3 > a4)
  {
    return a4 >= a3;
  }

  LOWORD(v10) = a3;
  while (1)
  {
    v11 = *(a2 + v10);
    if (a5)
    {
      LODWORD(v11) = depes_tolower(v11);
    }

    v12 = **(a1 + 16);
    if (v11 < *(v12 + 4) || v11 > *(v12 + 5))
    {
      break;
    }

    v10 = (v10 + 1);
    if (v10 > a4)
    {
      return a4 >= a3;
    }
  }

  return 0;
}

uint64_t DctLookup(uint64_t a1, uint64_t a2, unsigned __int16 *a3, __int16 *a4, int a5, _WORD *a6, uint64_t a7)
{
  v62 = *MEMORY[0x277D85DE8];
  memset(v61, 0, 41);
  v9 = *a4;
  v10 = *a3;
  if ((v9 - v10) > 0x7FFEu || *(**(a1 + 16) + 22) <= (v9 - v10) || !test_DCT(a1, a2, v10, v9, a5))
  {
    return 20;
  }

  v16 = WordToHashOpt(a1, a2, *a3, *a4, a5, a7);
  if (v16 == -2)
  {
    return 10;
  }

  if (v16 < 0)
  {
    return 20;
  }

  v17 = DecoAddr(a1, v16);
  if (v17 == -2)
  {
    return 10;
  }

  if ((v17 & 0x80000000) != 0)
  {
    return 20;
  }

  v19 = *(a1 + 48);
  if (v19)
  {
    v20 = (v19 + *(*(a1 + 16) + 132) + v17);
    *(a1 + 8) = v20;
  }

  else
  {
    result = brk_DataMap(*(a1 + 24), *(a1 + 32), *(*(a1 + 16) + 132) + v17, *(**(a1 + 16) + 52), a1 + 8);
    if (result)
    {
      return result;
    }

    v20 = *(a1 + 8);
  }

  v21 = 0;
  LOWORD(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = *v20;
  v25 = *(a1 + 40);
  do
  {
    v25[v23++] = v24;
    v26 = *(a1 + 16);
    v25 = *(a1 + 40);
    v27 = *v26;
    do
    {
      v22 = v22;
      v28 = v26[2][2 * (v25[v22] - v27[6])];
      if (v28)
      {
        v29 = v23 - 1;
        do
        {
          if (v22 < (v23 - 1))
          {
            v30 = v29;
            do
            {
              *(*(a1 + 40) + v30 + 1) = *(*(a1 + 40) + v30);
              --v30;
            }

            while (v30 > v22);
            v26 = *(a1 + 16);
            v25 = *(a1 + 40);
            v27 = *v26;
          }

          ++v23;
          v25[v22 + 1] = v26[2][2 * (v25[v22] - v27[6]) + 1];
          *(*(a1 + 40) + v22) = v28;
          v26 = *(a1 + 16);
          v25 = *(a1 + 40);
          v27 = *v26;
          v28 = v26[2][2 * (v25[v22] - (*v26)[6])];
          ++v29;
        }

        while (v28);
      }

      LODWORD(v22) = (v22 + 1);
    }

    while (v22 < v23);
    ++v21;
    v24 = *(*(a1 + 8) + v21);
    v31 = v27[10];
  }

  while (v24 != v27[8] && (v24 < v31 || v24 > v27[11]));
  v32 = *v25;
  if (v32 >= v31)
  {
    do
    {
      v33 = v32;
      v34 = v27[11];
      if (v32 > v34)
      {
        break;
      }

      v35 = *(a1 + 8);
      v36 = v27[8];
      v37 = *(v35 + v21);
      if (v37 == v36)
      {
        v38 = 1;
      }

      else
      {
        v39 = (v35 + v21 + 1);
        while (1)
        {
          v40 = v37 < v31 || v37 > v34;
          v38 = v40;
          if (v38 != 1)
          {
            break;
          }

          LODWORD(v21) = v21 + 1;
          v41 = *v39++;
          LOBYTE(v37) = v41;
          if (v41 == v36)
          {
            goto LABEL_42;
          }
        }

        LOBYTE(v36) = v37;
      }

LABEL_42:
      LODWORD(v21) = v21 + v38;
      v42 = v31;
      v43 = v31 - 1;
      if (v36 <= v34 && v36 >= v42)
      {
        v43 = v36;
      }

      if (v43 >= v32)
      {
        LODWORD(v21) = v21 + 1;
      }

      else
      {
        LOWORD(v45) = 0;
        v46 = 0;
        v47 = v26[2];
        v48 = v27[6];
        v21 = v21;
        do
        {
          v49 = v46++;
          *(v61 + v49) = *(v35 + v21);
          do
          {
            v45 = v45;
            v50 = *(v61 + v45);
            if (v47[2 * (v50 - v48)])
            {
              v51 = v46 - 1;
              do
              {
                if (v45 < (v46 - 1))
                {
                  v52 = v61 + v51 + 1;
                  v53 = v51;
                  v54 = v52;
                  do
                  {
                    v55 = *--v54;
                    *v52 = v55;
                    --v53;
                    v52 = v54;
                  }

                  while (v53 > v45);
                  v50 = *(v61 + v45);
                }

                v56 = &v47[2 * (v50 - v48)];
                *(v61 + v45 + 1) = v56[1];
                v50 = *v56;
                *(v61 + v45) = v50;
                ++v46;
                ++v51;
              }

              while (v47[2 * (v50 - v48)]);
            }

            LODWORD(v45) = (v45 + 1);
            LOBYTE(v32) = v32 - 1;
          }

          while (v45 < v46 && v32 >= v43);
          ++v21;
        }

        while (v32 >= v43);
        v57 = v33 - v43;
        if (v23 >= 2)
        {
          v58 = v23 - 1;
          v59 = (v23 + v33 - v43) - 1;
          do
          {
            *(*(a1 + 40) + v59--) = *(*(a1 + 40) + v58--);
          }

          while (v58);
        }

        if ((v57 & 0x80000000) == 0)
        {
          v60 = 0;
          do
          {
            *(*(a1 + 40) + v60) = *(v61 + v60);
            ++v60;
          }

          while (v57 >= v60);
        }

        LOWORD(v23) = v23 + v57;
        LOBYTE(v32) = v43;
      }

      v26 = *(a1 + 16);
      v27 = *v26;
      v31 = (*v26)[10];
    }

    while (v31 <= v32);
  }

  if (!*(a1 + 48))
  {
    brk_DataUnmap(*(a1 + 24), *(a1 + 32), *(a1 + 8));
  }

  result = 0;
  *a6 = v23;
  return result;
}

uint64_t HuffDecode(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a2 + 4 * a3);
  if (*v3 != -1)
  {
    v4 = *(a1 + 1);
    v5 = *a1;
    v6 = *(v4 + v5);
    v7 = *(a1 + 4);
    while (v7)
    {
      v8 = v3[(v6 & (1 << v7)) == 0];
      if (v7 <= 6)
      {
        goto LABEL_7;
      }

      v7 = 0;
      *(a1 + 4) = 0;
      LODWORD(v5) = v5 + 1;
      *a1 = v5;
LABEL_8:
      v3 = (a2 + 4 * v8);
      if (*v3 == -1)
      {
        return v8;
      }
    }

    v6 = *(v4 + v5);
    v8 = *(v3 + (~(2 * v6) & 2));
LABEL_7:
    *(a1 + 4) = ++v7;
    goto LABEL_8;
  }

  return a3;
}

uint64_t DecodeSourceLink(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 12);
  v4 = HuffDecode(a1, v2[10], *(*v2 + 34));
  v5 = (v4 * v3) & 0xF;
  v6 = 16 - v5;
  v7 = *(a1 + 16);
  v8 = (v7[15] + 2 * ((v4 * v3) >> 4));
  v9 = *v8 >> ((v4 * v3) & 0xF);
  if (16 - v5 >= v3)
  {
    result = v9 & (0xFFFFu >> (16 - v3));
  }

  else
  {
    v10 = v8[1];
    if (32 - v5 >= v3)
    {
      result = (((0xFFFFu >> (-v3 - v5)) & v10) << v6) + v9;
    }

    else
    {
      result = (v10 << v6) + v9 + (((0xFFFFu >> (48 - v3 - v5)) & v8[2]) << (32 - v5));
    }
  }

  v12 = *v7;
  if (result > *(v12 + 18))
  {
    return (result << *(v12 + 14));
  }

  return result;
}

uint64_t GetSourceAddress(unsigned int *a1)
{
  v1 = *(a1 + 1);
  v2 = **(a1 + 2);
  v3 = *(v2 + 12);
  v4 = *(a1 + 4);
  v5 = v4 + v3;
  v6 = *a1;
  v7 = *(v1 + v6) >> v4;
  if ((v4 + v3) < 9)
  {
    v12 = v7 & (0xFFu >> (8 - v3));
  }

  else
  {
    if (v5 < 0x11)
    {
      v11 = 16;
      LOBYTE(v9) = 8;
      v8 = 1;
    }

    else
    {
      v8 = 1;
      LOBYTE(v9) = 8;
      v10 = 1;
      do
      {
        v7 += *(v1 + (v8 + v6)) << (v9 - v4);
        v8 = ++v10;
        v9 = 8 * v10;
        v11 = 8 * v10 + 8;
      }

      while (v5 > v9 + 8);
    }

    v12 = (((0xFFu >> (v11 - v5)) & *(v1 + (v8 + v6))) << (v9 - v4)) + v7;
  }

  v13 = v4 + v3;
  *a1 = v6 + ((v13 >> 3) & 7);
  *(a1 + 4) = v13 & 7;
  return v12 << *(v2 + 14);
}

uint64_t DecodeSourceHash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*v2 + 13);
  v4 = HuffDecode(a1, v2[9], *(*v2 + 32));
  if (v3 <= 0x10)
  {
    return *(*(*(a1 + 16) + 112) + 2 * v4);
  }

  v6 = (v4 * v3) & 0xF;
  v7 = (*(*(a1 + 16) + 112) + 2 * ((v4 * v3) >> 4));
  v8 = *v7 >> ((v4 * v3) & 0xF);
  v9 = v7[1];
  if (32 - v6 >= v3)
  {
    return (((0xFFFFu >> (-v3 - v6)) & v9) << (16 - v6)) + v8;
  }

  else
  {
    return (v9 << (16 - v6)) + v8 + (((0xFFFFu >> (48 - v3 - v6)) & v7[2]) << (32 - v6));
  }
}

uint64_t nuance_pcre_copy_substring(uint64_t a1, uint64_t a2, int a3, int a4, void *__dst, int a6)
{
  v6 = 4294967289;
  if ((a4 & 0x80000000) == 0 && a4 < a3)
  {
    v7 = *(a2 + 4 * ((2 * (a4 & 0x3FFFFFFF)) | 1u));
    v8 = *(a2 + 4 * (2 * a4));
    v6 = v7 - v8;
    if (v7 - v8 >= a6)
    {
      return 4294967290;
    }

    else
    {
      cstdlib_memcpy(__dst, (a1 + v8), v7 - v8);
      *(__dst + v6) = 0;
    }
  }

  return v6;
}

uint64_t nuance_pcre_info(uint64_t a1, int *a2, int *a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  memset(v8, 0, sizeof(v8));
  if (*a1 != 1346589253)
  {
    a1 = try_flipped(a1, v8, 0, 0);
    if (!a1)
    {
      return 4294967292;
    }
  }

  if (a2)
  {
    *a2 = *(a1 + 8) & 0x7A7F;
  }

  if (a3)
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x40000000) != 0)
    {
      v6 = *(a1 + 20);
    }

    else if ((v5 & 0x10000000) != 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = -2;
    }

    *a3 = v6;
  }

  return *(a1 + 16);
}

uint64_t try_flipped(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != 1163019088)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[2];
  *(a2 + 16) = a1[1];
  *(a2 + 32) = v5;
  *a2 = v4;
  *(a2 + 4) = vrev32_s8(*(a1 + 4));
  *(a2 + 16) = vrev16_s8(a1[1]);
  *(a2 + 24) = bswap32(*(a1 + 12)) >> 16;
  *(a2 + 26) = bswap32(*(a1 + 13)) >> 16;
  *(a2 + 28) = bswap32(*(a1 + 14)) >> 16;
  if (a3)
  {
    v6 = *a3;
    v7 = a3[1];
    *(a4 + 32) = *(a3 + 4);
    *a4 = v6;
    *(a4 + 16) = v7;
    *a4 = vrev32_s8(*a3);
  }

  return a2;
}

uint64_t nuance_pcre_fullinfo(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 4294967294;
  if (a1 && a4)
  {
    if (a2 && (*a2 & 1) != 0)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    memset(v14, 0, sizeof(v14));
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    if (*a1 != 1346589253)
    {
      v10 = try_flipped(a1, v14, v9, v15);
      if (!v10)
      {
        return 4294967292;
      }

      a1 = v10;
      if (v9)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0;
      }
    }

    result = 4294967293;
    if (a3 > 5)
    {
      if (a3 > 8)
      {
        if (a3 == 9)
        {
          result = 0;
          v12 = a1 + *(a1 + 24);
          goto LABEL_47;
        }

        if (a3 != 10)
        {
          if (a3 != 11)
          {
            return result;
          }

          result = 0;
          v12 = &pcre_default_tables;
          goto LABEL_47;
        }

        if (v9)
        {
          v12 = *v9;
          goto LABEL_46;
        }

LABEL_45:
        v12 = 0;
        goto LABEL_46;
      }

      if (a3 != 6)
      {
        result = 0;
        if (a3 == 7)
        {
          v11 = *(a1 + 26);
        }

        else
        {
          v11 = *(a1 + 28);
        }

        goto LABEL_51;
      }

      if ((*(a1 + 11) & 0x20) != 0)
      {
        v11 = *(a1 + 22);
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      if (a3 <= 2)
      {
        if (a3)
        {
          if (a3 != 1)
          {
            if (a3 != 2)
            {
              return result;
            }

            result = 0;
            v11 = *(a1 + 16);
            goto LABEL_51;
          }

          result = 0;
          v12 = *(a1 + 4);
        }

        else
        {
          result = 0;
          v12 = *(a1 + 8) & 0x7A7FLL;
        }

LABEL_47:
        *a4 = v12;
        return result;
      }

      if (a3 == 3)
      {
        result = 0;
        v11 = *(a1 + 18);
LABEL_51:
        *a4 = v11;
        return result;
      }

      if (a3 != 4)
      {
        if (v9 && (*(v9 + 4) & 1) != 0)
        {
          v12 = *(a2 + 8) + 8;
LABEL_46:
          result = 0;
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v13 = *(a1 + 8);
      if ((v13 & 0x40000000) != 0)
      {
        v11 = *(a1 + 20);
      }

      else if ((v13 & 0x10000000) != 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = -2;
      }
    }

    result = 0;
    goto LABEL_51;
  }

  return result;
}

uint64_t nuance_pcre_config(unsigned int a1, _DWORD *a2)
{
  if (a1 > 6)
  {
    return 4294967293;
  }

  result = 0;
  *a2 = dword_26ED4B304[a1];
  return result;
}

uint64_t nuance_pcre_compile(uint64_t a1, int a2, char *a3, uint64_t a4, const char **a5, _DWORD *a6, char *a7)
{
  v195[126] = *MEMORY[0x277D85DE8];
  v195[0] = 0;
  v194 = 0;
  v193 = 0;
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0 || !a5)
  {
    return 0;
  }

  *a5 = 0;
  if (!a6)
  {
    v14 = 0;
    v15 = "erroffset passed as NULL";
    goto LABEL_11;
  }

  *a6 = 0;
  if ((a4 & 0x2800) == 0x800)
  {
    valid = valid_utf8(a3, -1);
    *a6 = valid;
    if ((valid & 0x80000000) == 0)
    {
      v14 = 0;
      v15 = "invalid UTF-8 string";
LABEL_11:
      *a5 = v15;
      return v14;
    }
  }

  if ((a4 & 0xFFFF8580) != 0)
  {
    v14 = 0;
    v15 = "unknown option bit(s) set";
    goto LABEL_11;
  }

  v176 = 0;
  v177 = 0;
  v17 = 0;
  v18 = 0;
  v190 = 0u;
  v191 = 0u;
  v189 = 0u;
  if (a7)
  {
    v19 = a7;
  }

  else
  {
    v19 = &pcre_default_tables;
  }

  v185 = v19;
  v186 = v19 + 256;
  v175 = v19;
  v178 = a3;
  v187 = v19 + 512;
  v188 = v19 + 832;
  *&v191 = 0;
  v192 = (a3 - 1);
  v20 = digitab;
  v21 = -1;
  v22 = 3;
  v23 = a4;
  while (1)
  {
    v24 = v192;
    v25 = v192 + 1;
    v26 = *++v192;
    if (!v26)
    {
LABEL_414:
      if ((v23 & 0x4000) != 0)
      {
        v151 = 10;
      }

      else
      {
        v151 = 4;
      }

      v152 = v151 + v22;
      if (v151 + v22 > 0x10000)
      {
        v14 = 0;
        v15 = "regular expression too large";
        goto LABEL_11;
      }

      v153 = v23;
      v154 = heap_Calloc(*(*a1 + 8), 1, (v152 + (v176 + 3) * HIDWORD(v176) + 48));
      v14 = v154;
      if (!v154)
      {
        v15 = "failed to get memory";
        goto LABEL_11;
      }

      *v154 = 1346589253;
      *(v154 + 4) = v152 + (v176 + 3) * HIDWORD(v176) + 48;
      *(v154 + 30) = 0;
      *(v154 + 8) = v153;
      *(v154 + 12) = 0;
      *(v154 + 24) = 48;
      *(v154 + 26) = v176 + 3;
      *(v154 + 28) = WORD2(v176);
      if (v175 == &pcre_default_tables)
      {
        v155 = 0;
      }

      else
      {
        v155 = v175;
      }

      *(v154 + 32) = v155;
      *(v154 + 40) = 0;
      DWORD2(v190) = 0;
      HIDWORD(v190) = v176 + 3;
      *&v190 = v154 + 48;
      v156 = (v154 + 48 + (v176 + 3) * WORD2(v176));
      *&v189 = v156;
      *(&v189 + 1) = v178;
      *(&v191 + 1) = 0;
      v192 = v178;
      v193 = v156;
      *v156 = 80;
      v194 = 0;
      compile_regex_0(v153, v153 & 7, &v194, &v193, &v192, a5, 0, 0, v195 + 1, v195, 0, &v185);
      *(v14 + 16) = v194;
      v157 = HIDWORD(v191);
      *(v14 + 18) = v191;
      if (v157)
      {
        *(v14 + 8) |= 0x4000000u;
      }

      if (!*a5 && *v192)
      {
        *a5 = "unmatched parentheses";
      }

      v158 = v193;
      *v193 = 0;
      if (v158 - v156 + 1 > v152)
      {
        *a5 = "internal error: code overflow";
      }

      if (*(v14 + 18) > *(v14 + 16))
      {
        *a5 = "reference to non-existent subpattern";
LABEL_434:
        heap_Free(*(*a1 + 8), v14);
        goto LABEL_437;
      }

      if (*a5)
      {
        goto LABEL_434;
      }

      if ((v153 & 0x10) == 0)
      {
        v183 = v153;
        v160 = DWORD1(v191);
        if (is_anchored_0(v14 + 48 + (v176 + 3) * WORD2(v176), &v183, 0, SDWORD1(v191)))
        {
          v161 = 16;
        }

        else
        {
          LOWORD(firstassertedchar) = WORD2(v195[0]);
          if ((v195[0] & 0x8000000000000000) != 0 && (firstassertedchar = find_firstassertedchar(v14 + 48 + (v176 + 3) * WORD2(v176), &v183, 0), firstassertedchar < 0))
          {
            if (!is_startline_0(v14 + 48 + (v176 + 3) * WORD2(v176), 0, v160))
            {
              goto LABEL_448;
            }

            v161 = 0x10000000;
          }

          else
          {
            if ((firstassertedchar & 0x100) == 0 || (v163 = firstassertedchar, v186[firstassertedchar] != firstassertedchar))
            {
              v163 = firstassertedchar;
            }

            *(v14 + 20) = v163;
            v161 = 0x40000000;
          }
        }

        *(v14 + 8) |= v161;
      }

LABEL_448:
      v164 = v195[0];
      if ((v195[0] & 0x80000000) == 0)
      {
        v165 = *(v14 + 8);
        if ((v195[0] & 0x200) != 0 || (v165 & 0x10) == 0)
        {
          if ((v195[0] & 0x100) != 0 && v186[LOBYTE(v195[0])] == LOBYTE(v195[0]))
          {
            v164 = v195[0] & 0xFEFF;
          }

          *(v14 + 22) = v164;
          *(v14 + 8) = v165 | 0x20000000;
        }
      }

      return v14;
    }

    v184 = 0;
    if (v18)
    {
      if ((v23 & 0x4000) != 0)
      {
        v22 += 6;
      }

      if (v26 == 92)
      {
        v28 = v24[2];
        v27 = v24 + 2;
        if (v28 != 69)
        {
          v22 += 2;
LABEL_70:
          v36 = 2;
          v17 = 1;
          goto LABEL_400;
        }

        v18 = 0;
        v192 = v27;
LABEL_67:
        v36 = 2;
        goto LABEL_400;
      }

      goto LABEL_71;
    }

    if ((v23 & 8) != 0)
    {
      if (v188[v26])
      {
        goto LABEL_60;
      }

      if (v26 == 35)
      {
        while (1)
        {
          v32 = *++v25;
          v31 = v32;
          if (v32 == 10)
          {
            break;
          }

          if (!v31)
          {
            goto LABEL_414;
          }
        }

        v18 = 0;
        goto LABEL_66;
      }
    }

    ++v21;
    v180 = v23;
    if ((v23 & 0x4000) != 0 && (v26 - 42) >= 2 && v26 != 63)
    {
      if (v26 == 123)
      {
        v174 = v21;
        v29 = is_counted_repeat(v24 + 2);
        v21 = v174;
        v20 = digitab;
        v23 = v180;
        if (v29)
        {
          goto LABEL_88;
        }
      }

      v22 += 6;
    }

    if (v26 > 62)
    {
      if (v26 > 93)
      {
        switch(v26)
        {
          case '^':
            goto LABEL_69;
          case '{':
            v174 = v21;
LABEL_88:
            if (!is_counted_repeat(v24 + 2))
            {
              v18 = 0;
              v22 += 2;
              v36 = 2;
              v17 = 1;
              goto LABEL_99;
            }

            repeat_counts_0 = read_repeat_counts_0(v24 + 2, &v184 + 1, &v184, a5);
            v192 = repeat_counts_0;
            if (*a5)
            {
              goto LABEL_437;
            }

            v25 = repeat_counts_0;
            if (HIDWORD(v184))
            {
              v49 = v184;
              v23 = v180;
              if (v184 != 0x1FFFFFFFFLL)
              {
                if (SHIDWORD(v184) <= 0)
                {
                  v50 = -v17;
                }

                else
                {
                  v50 = 3;
                }

                if (HIDWORD(v184) == 1)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v50;
                }

LABEL_262:
                v78 = v49 < 1;
                v103 = v22 + v17 + v51;
                if (v78)
                {
                  v22 = v103 + 1;
                }

                else
                {
                  v22 = v103 + 3;
                }

LABEL_265:
                v20 = digitab;
                v21 = v174;
                if (repeat_counts_0[1] == 63)
                {
                  v192 = repeat_counts_0 + 1;
                  v25 = repeat_counts_0 + 1;
                }

                goto LABEL_58;
              }
            }

            else
            {
              v49 = v184;
              v23 = v180;
              if (v184 != -1 && v184 != 1)
              {
                v51 = -v17;
                goto LABEL_262;
              }
            }

            ++v22;
            goto LABEL_265;
          case '|':
            v18 = 0;
            v22 += v177 + 3;
            goto LABEL_67;
        }
      }

      else
      {
        switch(v26)
        {
          case '?':
            goto LABEL_57;
          case '[':
            v45 = v24 + 2;
            v46 = v24[2];
            v192 = v24 + 2;
            if (v46 == 94)
            {
              v46 = v24[3];
              v192 = v24 + 3;
              v47 = 10;
              v45 = v24 + 3;
            }

            else
            {
              v47 = 0;
            }

            if (!v46)
            {
LABEL_435:
              v159 = "missing terminating ] for character class";
              goto LABEL_436;
            }

            v172 = v47;
            v174 = v21;
            v55 = 0;
            v167 = v188;
            v179 = v194;
            v168 = v23 & 1;
            if (v23)
            {
              v56 = 127;
            }

            else
            {
              v56 = 255;
            }

            v169 = v56;
            v170 = 0;
            v57 = 1;
LABEL_111:
            v58 = v55;
            while (v57)
            {
              if (v46 != 92)
              {
                if (v46 == 91)
                {
                  v60 = v45 + 2;
                  if (v45[2] == 94)
                  {
                    v60 = v45 + 3;
                  }

                  do
                  {
                    v62 = *v60++;
                    v61 = v62;
                  }

                  while ((v167[v62] & 2) != 0);
                  if (v61 == v45[1] && *v60 == 93)
                  {
                    v58 = 0;
                    v192 = v60;
                    goto LABEL_195;
                  }
                }

                goto LABEL_131;
              }

              v59 = check_escape(&v192, a5, v179, v23, 1);
              if (*a5)
              {
                goto LABEL_437;
              }

              v46 = v59;
              if (v59 != -19)
              {
                v23 = v180;
                if (v59 == -15)
                {
                  v46 = 88;
                }

                else
                {
                  if (v59 == -4)
                  {
                    v46 = 8;
                    goto LABEL_147;
                  }

                  if (v59 < 0)
                  {
                    if ((v59 & 0xFFFFFFFE) == 0xFFFFFFF2)
                    {
                      v58 = 0;
                      v68 = v22 + 4;
                      if (v170)
                      {
                        v68 = v22;
                      }

                      v22 = v68 + 2;
LABEL_193:
                      v170 = 1;
                      v172 = 10;
                      goto LABEL_196;
                    }

                    v58 = 0;
LABEL_195:
                    v172 = 10;
                    goto LABEL_196;
                  }
                }

LABEL_147:
                v69 = v192;
                if (v192[1] == 45)
                {
                  v70 = v192 + 2;
                  v71 = v192[2];
                  if (v192[2] && v71 != 93)
                  {
                    if (v71 == 92)
                    {
                      v192 += 2;
                      v72 = check_escape(&v192, a5, v179, v23, 1);
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      v71 = v72;
                      if (v72 == -15)
                      {
                        v71 = 88;
                        v23 = v180;
                        goto LABEL_170;
                      }

                      v23 = v180;
                      if (v72 == -4)
                      {
                        v71 = 8;
LABEL_170:
                        if (v71 >= v46)
                        {
                          if ((a4 & 0x800) != 0)
                          {
                            v78 = v168 && v71 > 0x7F;
                            v79 = v78;
                            if (v71 > 0xFF || v79)
                            {
                              if (!v170)
                              {
                                v22 += 4;
                              }

                              if (!v168)
                              {
LABEL_221:
                                v92 = ord2utf8(v46, &v183);
                                v22 += v92 + ord2utf8(v71, &v183) + 1;
                                v170 = 1;
                                v172 = 10;
                                v23 = v180;
                                goto LABEL_196;
                              }

                              v182 = 0;
                              v84 = v71;
                              v181 = v46;
LABEL_201:
                              v166 = v84 + 1;
                              v173 = v84;
                              while (1)
                              {
                                for (i = v22; ; i += v89 + v90 + 1)
                                {
                                  do
                                  {
                                    if (!get_othercase_range(&v181, v71, &v182 + 1, &v182))
                                    {
                                      v22 = i;
                                      v71 = v173;
                                      goto LABEL_221;
                                    }

                                    v86 = v182;
                                    v85 = HIDWORD(v182);
                                  }

                                  while (SHIDWORD(v182) >= v46 && v182 <= v173);
                                  if (SHIDWORD(v182) < v46 && v182 >= v46 - 1)
                                  {
                                    break;
                                  }

                                  if (v182 > v173 && SHIDWORD(v182) <= v166)
                                  {
                                    v84 = v182;
                                    v22 = i;
                                    goto LABEL_201;
                                  }

                                  v89 = ord2utf8(SHIDWORD(v182), &v183);
                                  if (v85 == v86)
                                  {
                                    v90 = 0;
                                  }

                                  else
                                  {
                                    v91 = v89;
                                    v90 = ord2utf8(v86, &v183);
                                    v89 = v91;
                                  }
                                }

                                v46 = HIDWORD(v182);
                                v22 = i;
                              }
                            }
                          }

                          goto LABEL_195;
                        }

LABEL_456:
                        v159 = "range out of order in character class";
                        goto LABEL_436;
                      }
                    }

                    else
                    {
                      v192 += 2;
                      if ((a4 & 0x800) == 0)
                      {
                        if (v46 <= v71)
                        {
                          goto LABEL_195;
                        }

                        goto LABEL_456;
                      }

                      if ((~v71 & 0xC0) != 0)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = utf8_table4[v71 & 0x3F];
                        v71 = (utf8_table3[v73] & v71) << (6 * v73);
                        v74 = (v69 + 3);
                        if (v73 <= 1)
                        {
                          v75 = 1;
                        }

                        else
                        {
                          v75 = v73;
                        }

                        v76 = 6 * v73 - 6;
                        do
                        {
                          v77 = *v74++;
                          v71 |= (v77 & 0x3F) << v76;
                          v76 -= 6;
                          --v75;
                        }

                        while (v75);
                      }

                      v192 = &v70[v73];
                    }

                    if ((v71 & 0x80000000) == 0)
                    {
                      goto LABEL_170;
                    }
                  }

                  v192 = v69;
                }

                if ((a4 & 0x800) != 0 && v46 > v169)
                {
                  if (v170)
                  {
                    v81 = v22;
                  }

                  else
                  {
                    v81 = v22 + 4;
                  }

                  v82 = ord2utf8(v46, &v183);
                  v23 = v180;
                  v22 = ((v82 + 1) << v168) + v81;
                  goto LABEL_193;
                }

                ++v172;
LABEL_196:
                v83 = v192;
                v45 = v192 + 1;
                v46 = *++v192;
                if (!v46)
                {
                  goto LABEL_435;
                }

                v57 = v58 == 0;
                v55 = 1;
                if (!v58)
                {
                  v55 = 0;
                  if (v46 == 93)
                  {
                    if (v172 == 1)
                    {
                      v18 = 0;
                      v22 += 3;
                      v36 = 2;
                      goto LABEL_100;
                    }

                    if (v83[2] == 123 && is_counted_repeat(v83 + 3))
                    {
                      v126 = read_repeat_counts_0(v83 + 3, &v184 + 1, &v184, a5);
                      v192 = v126;
                      if (*a5)
                      {
                        goto LABEL_437;
                      }

                      if (HIDWORD(v184))
                      {
                        v127 = HIDWORD(v184) == 1 && v184 == -1;
                      }

                      else
                      {
                        v127 = ((v184 + 1) & 0xFFFFFFFD) == 0;
                      }

                      if (v127)
                      {
                        v147 = 34;
                      }

                      else
                      {
                        v147 = 38;
                      }

                      v22 += v147;
                      v150 = v126[1];
                      v148 = v126 + 1;
                      v149 = v150;
                      if (v150 == 63)
                      {
                        v18 = 0;
                        v192 = v148;
                      }

                      else
                      {
                        v18 = 0;
                        if (v149 == 43)
                        {
                          v192 = v148;
                          v22 += 6;
                        }
                      }

                      v36 = 2;
                    }

                    else
                    {
                      v18 = 0;
                      v36 = 2;
                      v22 += 33;
                    }

LABEL_99:
                    v23 = v180;
LABEL_100:
                    v20 = digitab;
                    v21 = v174;
                    goto LABEL_400;
                  }
                }

                goto LABEL_111;
              }

              v57 = 0;
              v45 = v192 + 1;
              v46 = *++v192;
              v58 = 1;
              v23 = v180;
              if (!v46)
              {
                goto LABEL_435;
              }
            }

            if (v46 == 92 && v45[1] == 69)
            {
              v58 = 0;
              v192 = v45 + 1;
              goto LABEL_196;
            }

LABEL_131:
            if ((a4 & 0x800) != 0)
            {
              if ((~v46 & 0xC0) != 0)
              {
                v63 = 0;
              }

              else
              {
                v63 = utf8_table4[v46 & 0x3F];
                v46 = (utf8_table3[v63] & v46) << (6 * v63);
                v64 = (v45 + 1);
                if (v63 <= 1)
                {
                  v65 = 1;
                }

                else
                {
                  v65 = v63;
                }

                v66 = 6 * v63 - 6;
                do
                {
                  v67 = *v64++;
                  v46 |= (v67 & 0x3F) << v66;
                  v66 -= 6;
                  --v65;
                }

                while (v65);
              }

              v192 = &v45[v63];
            }

            goto LABEL_147;
          case '\\':
            v33 = v21;
            v34 = v20;
            v35 = check_escape(&v192, a5, v194, v23, 0);
            if (*a5)
            {
              goto LABEL_437;
            }

            if ((v35 & 0x80000000) == 0)
            {
              v18 = 0;
              v22 += 2;
              v36 = 2;
              v17 = 1;
              v23 = v180;
              if ((a4 & 0x800) != 0)
              {
                v20 = v34;
                v21 = v33;
                if (v35 < 0x80)
                {
                  goto LABEL_400;
                }

                for (j = 0; j != 6; ++j)
                {
                  if (v35 <= utf8_table1[j])
                  {
                    break;
                  }
                }

                v18 = 0;
                v22 += j;
                v17 = j + 1;
                goto LABEL_67;
              }

LABEL_244:
              v20 = v34;
              v21 = v33;
              goto LABEL_400;
            }

            if (v35 + 14 < 2)
            {
              if ((get_ucp_0(&v192, &v183, a5) & 0x80000000) != 0)
              {
                goto LABEL_437;
              }

              v18 = 0;
              v22 += 2;
              v17 = 2;
              goto LABEL_242;
            }

            v23 = v180;
            v20 = v34;
            v21 = v33;
            if (v35 == -19)
            {
              v36 = 2;
              v17 = 1;
              v18 = 1;
              goto LABEL_400;
            }

            v17 = 1;
            if (v35 > 0xFFFFFFEC)
            {
              v18 = 0;
              ++v22;
              goto LABEL_67;
            }

            v105 = -20 - v35;
            v106 = 1 << (-20 - v35);
            if (v35 <= 0xFFFFFFCC)
            {
              v106 = 1;
            }

            v107 = DWORD1(v191) | v106;
            if (v105 <= v191)
            {
              v105 = v191;
            }

            *&v191 = __PAIR64__(v107, v105);
            v108 = v192;
            if (v192[1] != 123)
            {
              v18 = 0;
              v36 = 2;
              v22 += 3;
              goto LABEL_244;
            }

            if (is_counted_repeat(v192 + 2))
            {
              v109 = read_repeat_counts_0(v108 + 2, &v184 + 1, &v184, a5);
              v192 = v109;
              if (*a5)
              {
                goto LABEL_437;
              }

              if (HIDWORD(v184))
              {
                v110 = HIDWORD(v184) == 1 && v184 == -1;
              }

              else
              {
                v110 = ((v184 + 1) & 0xFFFFFFFD) == 0;
              }

              if (v110)
              {
                v143 = 4;
              }

              else
              {
                v143 = 8;
              }

              v22 += v143;
              v145 = v109[1];
              v144 = v109 + 1;
              v18 = 0;
              if (v145 == 63)
              {
                v192 = v144;
              }

LABEL_242:
              v36 = 2;
            }

            else
            {
              v18 = 0;
              v36 = 2;
              v22 += 3;
            }

            v23 = v180;
            goto LABEL_244;
        }
      }

      goto LABEL_71;
    }

    if (v26 > 41)
    {
      if ((v26 - 42) < 2)
      {
LABEL_57:
        ++v22;
        goto LABEL_58;
      }

      if (v26 == 46)
      {
LABEL_69:
        v18 = 0;
        ++v22;
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (v26 == 36)
    {
      goto LABEL_69;
    }

    if (v26 == 40)
    {
      break;
    }

    if (v26 == 41)
    {
      v22 += 3;
      if (HIDWORD(v177))
      {
        v30 = v22 - *(&v195[26] + (HIDWORD(v177) - 1));
        LODWORD(v177) = *(&v195[1] + --HIDWORD(v177));
      }

      else
      {
        HIDWORD(v177) = 0;
        v30 = 0;
      }

LABEL_226:
      v93 = v25 + 1;
      v94 = v25[1];
      if (v94 <= 0x3E)
      {
        if (v94 == 42)
        {
          v184 = 0xFFFFFFFFLL;
          ++v22;
          goto LABEL_249;
        }

        if (v94 == 43)
        {
          v184 = 0x1FFFFFFFFLL;
LABEL_249:
          ++v25;
          v192 = v93;
          goto LABEL_58;
        }

LABEL_245:
        v184 = 0x100000001;
        goto LABEL_58;
      }

      if (v94 == 63)
      {
        v99 = 1;
        v184 = 1;
        v192 = v25 + 1;
        ++v22;
        ++v25;
      }

      else
      {
        if (v94 != 123)
        {
          goto LABEL_245;
        }

        v95 = v20;
        v96 = v21;
        v97 = is_counted_repeat(v25 + 2);
        v21 = v96;
        v20 = v95;
        v23 = v180;
        if (!v97)
        {
          goto LABEL_245;
        }

        v98 = read_repeat_counts_0(v25 + 2, &v184 + 1, &v184, a5);
        v192 = v98;
        if (*a5)
        {
          goto LABEL_437;
        }

        v25 = v98;
        v99 = v184;
        if (HIDWORD(v184))
        {
          if (v184 > SHIDWORD(v184))
          {
            v22 = v22 + (HIDWORD(v184) - 1) * v30 + (v184 - HIDWORD(v184)) * (v30 + 7) - 6;
          }

          else
          {
            v22 += (HIDWORD(v184) - 1) * v30;
          }

          v23 = v180;
          v20 = v95;
          v21 = v96;
          goto LABEL_58;
        }

        ++v22;
        v23 = v180;
        v20 = v95;
        v21 = v96;
        if (v184 < 1)
        {
LABEL_58:
          v39 = v25[1];
          v38 = v25 + 1;
          if (v39 == 43)
          {
            v18 = 0;
            v192 = v38;
            v22 += 6;
          }

          else
          {
LABEL_60:
            v18 = 0;
          }

          goto LABEL_67;
        }
      }

      v22 += (v99 - 1) * (v30 + 7);
      goto LABEL_58;
    }

LABEL_71:
    v22 += 2;
    v36 = 2;
    v17 = 1;
    if ((a4 & 0x800) != 0 && v26 >= 0xC0)
    {
      v40 = v24[2] & 0xC0;
      while (v40 == 128)
      {
        ++v17;
        ++v22;
        v40 = v25[2] & 0xC0;
        ++v25;
      }

LABEL_66:
      v192 = v25;
      goto LABEL_67;
    }

LABEL_400:
    if (v36 != 2)
    {
      goto LABEL_437;
    }
  }

  if (v24[2] != 63)
  {
    v52 = 0;
    if ((v23 & 0x1000) != 0)
    {
      v54 = 3;
    }

    else
    {
      v53 = v194++;
      if (v53 <= 99)
      {
        v54 = 3;
      }

      else
      {
        v54 = 6;
      }
    }

    v100 = HIDWORD(v177);
    goto LABEL_296;
  }

  HIDWORD(v182) = 0;
  v183 = 0;
  v25 = v24 + 3;
  v41 = v24[3];
  if (v41 > 0x39)
  {
    if (v24[3] <= 0x42u)
    {
      if (v41 - 61 < 2 || v41 == 58)
      {
LABEL_293:
        v52 = 0;
        v192 = v24 + 3;
        goto LABEL_294;
      }

      if (v41 == 60)
      {
        v102 = v24[4];
        v101 = v102;
        v192 = v24 + 4;
        if (v102 == 61 || v101 == 33)
        {
          v22 += 3;
          v52 = 3;
          goto LABEL_294;
        }

        v104 = "unrecognized character after (?<";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    if (v41 == 82)
    {
      v42 = v24[4];
      v25 = v24 + 4;
      goto LABEL_80;
    }

    if (v41 != 80)
    {
      if (v41 == 67)
      {
        do
        {
          v112 = *++v25;
          v111 = v112;
        }

        while ((v20[v112] & 4) != 0);
        v192 = v25;
        if (v111 == 41)
        {
          v22 += 6;
          goto LABEL_350;
        }

        v104 = "closing) for (?C expected";
        goto LABEL_268;
      }

      goto LABEL_314;
    }

    v119 = v24[4];
    v118 = v24 + 4;
    v117 = v119;
    v192 = v118;
    if ((v119 - 61) >= 2)
    {
      v128 = v21;
      if (v117 == 60)
      {
        v129 = -1;
        do
        {
          v131 = *++v118;
          v130 = v131;
          ++v129;
        }

        while ((v188[v131] & 0x10) != 0);
        v192 = v118;
        if (v130 == 62)
        {
          v52 = 0;
          v132 = v176;
          if (v129 > v176)
          {
            v132 = v129;
          }

          v176 = __PAIR64__(HIDWORD(v176), v132) + 0x100000000;
          goto LABEL_382;
        }

        v138 = "syntax error after (?P";
      }

      else
      {
        v138 = "unrecognized character after (?P";
      }

      goto LABEL_398;
    }

    do
    {
      v121 = *++v118;
      v120 = v121;
    }

    while ((v188[v121] & 0x10) != 0);
    v192 = v118;
    if (v120 == 41)
    {
      v52 = 0;
      v23 = v180;
      goto LABEL_294;
    }

    v137 = "syntax error after (?P";
LABEL_384:
    *a5 = v137;
    v36 = 8;
LABEL_385:
    v23 = v180;
    goto LABEL_399;
  }

  if (v24[3] > 0x2Fu)
  {
    do
    {
      v43 = *++v25;
      v42 = v43;
    }

    while ((v20[v43] & 4) != 0);
LABEL_80:
    v192 = v25;
    if (v42 == 41)
    {
      v44 = v25[1];
      if ((v44 - 42) < 2 || v44 == 63 || v44 == 123)
      {
        v22 += 9;
        v30 = 11;
        goto LABEL_226;
      }

      v22 += 3;
LABEL_350:
      v36 = 2;
LABEL_399:
      v18 = 0;
      goto LABEL_400;
    }

    v104 = "(?R or (?digits must be followed by)";
LABEL_268:
    *a5 = v104;
    v36 = 8;
    goto LABEL_399;
  }

  switch(v41)
  {
    case '!':
      goto LABEL_293;
    case '#':
      for (k = v24 + 4; *k; ++k)
      {
        if (*k == 41)
        {
          v192 = k;
          goto LABEL_350;
        }
      }

      v192 = k;
      v104 = "missing) after comment";
      goto LABEL_268;
    case '(':
      v113 = v24 + 4;
      v114 = v24[4];
      if (v114 == 82)
      {
        v116 = v24[5];
        v115 = v24 + 5;
        if (v116 == 41)
        {
          v52 = 0;
          v192 = v115;
          v22 += 3;
          goto LABEL_294;
        }

LABEL_366:
        v192 = v113;
        v104 = "assertion expected after (?(";
        goto LABEL_268;
      }

      v128 = v21;
      if ((v20[v24[4]] & 4) == 0)
      {
        v192 = v24 + 2;
        v23 = v180;
        if (v114 == 63)
        {
          v133 = v24[5];
          if (v133 <= 0x3D && ((1 << v133) & 0x3000000200000000) != 0)
          {
            v52 = 0;
            goto LABEL_294;
          }
        }

        goto LABEL_366;
      }

      v139 = v24 + 4;
      do
      {
        v141 = *++v139;
        v140 = v141;
      }

      while ((v20[v141] & 4) != 0);
      v22 += 3;
      v192 = v139;
      if (v140 == 41)
      {
        v52 = 0;
LABEL_382:
        v23 = v180;
        v100 = HIDWORD(v177);
        v21 = v128;
        goto LABEL_295;
      }

      v138 = "malformed number after (?(";
LABEL_398:
      *a5 = v138;
      v36 = 8;
      v23 = v180;
      v21 = v128;
      goto LABEL_399;
  }

LABEL_314:
  v183 = 0;
  v123 = &v183;
  while (2)
  {
    if (v41 > 0x68u)
    {
      if (v41 > 0x72u)
      {
        if (v41 == 115)
        {
          v124 = 4;
        }

        else
        {
          if (v41 != 120)
          {
            goto LABEL_383;
          }

          v124 = 8;
        }
      }

      else if (v41 == 105)
      {
        v124 = 1;
      }

      else
      {
        if (v41 != 109)
        {
          goto LABEL_383;
        }

        v124 = 2;
      }

LABEL_332:
      *v123 |= v124;
LABEL_333:
      v125 = *++v25;
      LOBYTE(v41) = v125;
      continue;
    }

    break;
  }

  if (v41 > 0x54u)
  {
    if (v41 == 85)
    {
      v124 = 512;
    }

    else
    {
      if (v41 != 88)
      {
        goto LABEL_383;
      }

      v124 = 64;
    }

    goto LABEL_332;
  }

  if (v41 == 45)
  {
    v123 = &v182 + 1;
    goto LABEL_333;
  }

  if (v41 == 41)
  {
    v192 = v25;
    v134 = BYTE4(v182);
    v135 = v183;
    if (!v21)
    {
      v180 = (v183 | v180) & ~HIDWORD(v182);
      HIDWORD(v182) = 0;
      v183 = 0;
      v21 = -1;
      v134 = 0;
      v135 = 0;
    }

    v136 = v134 | v135;
    if ((v136 & 7) != 0)
    {
      v22 += 4;
      v180 |= (v136 & 1) << 27;
      if (v177 == 3 || !v177)
      {
        LODWORD(v177) = v177 + 2;
      }
    }

    v36 = 2;
    goto LABEL_385;
  }

  if (v41 != 58)
  {
LABEL_383:
    v192 = v25;
    v137 = "unrecognized character after (?";
    goto LABEL_384;
  }

  v192 = v25;
  if (((BYTE4(v182) | v183) & 7) != 0)
  {
    v52 = 2;
  }

  else
  {
    v52 = 0;
  }

  if (((BYTE4(v182) | v183) & 7) != 0)
  {
    v22 += 4;
    v23 = (((BYTE4(v182) | v183) & 1) << 27) | v180;
  }

  else
  {
    v23 = v180;
  }

LABEL_294:
  v100 = HIDWORD(v177);
LABEL_295:
  v54 = 3;
LABEL_296:
  if (v100 <= 0xC7)
  {
    v18 = 0;
    *(&v195[1] + v100) = v177;
    *(&v195[26] + v100) = v22;
    v22 += v54;
    v36 = 2;
    LODWORD(v177) = v52;
    HIDWORD(v177) = v100 + 1;
    goto LABEL_400;
  }

  v159 = "parentheses nested too deeply";
LABEL_436:
  *a5 = v159;
LABEL_437:
  v14 = 0;
  *a6 = v192 - v178;
  return v14;
}

uint64_t valid_utf8(char *a1, int a2)
{
  if (a2 < 0)
  {
    a2 = -1;
    v2 = a1;
    do
    {
      v3 = *v2++;
      ++a2;
    }

    while (v3);
  }

  if (a2 >= 1)
  {
    v4 = a1;
    do
    {
      v5 = a2 - 1;
      if (*v4 < 0)
      {
        v7 = *v4;
        if ((~v7 & 0xC0) != 0)
        {
          return (v4 - a1);
        }

        v8 = utf8_table4[*v4 & 0x3F];
        if (a2 <= v8)
        {
          return (v4 - a1);
        }

        v6 = (v4 + 1);
        if ((v4[1] & 0xC0) != 0x80)
        {
          return (v6 - a1);
        }

        v5 -= v8;
        if (utf8_table4[*v4 & 0x3F] > 2u)
        {
          if (v8 == 3)
          {
            if (v7 == 240 && (v4[1] & 0x30) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 4)
          {
            if (v7 == 248 && (v4[1] & 0x38) == 0)
            {
              return (v6 - a1);
            }
          }

          else if (v8 == 5 && (v7 > 0xFD || v7 == 252 && (v4[1] & 0x3C) == 0))
          {
            return (v6 - a1);
          }

LABEL_31:
          LODWORD(v4) = 1 - a1 + v4;
          while (1)
          {
            v9 = __OFSUB__(v8--, 1);
            if ((v8 < 0) ^ v9 | (v8 == 0))
            {
              break;
            }

            v10 = *++v6;
            v4 = (v4 + 1);
            if ((v10 & 0xC0) != 0x80)
            {
              return v4;
            }
          }

          goto LABEL_8;
        }

        if (v8 != 1)
        {
          if (v8 == 2 && v7 == 224 && (v4[1] & 0x20) == 0)
          {
            return (v6 - a1);
          }

          goto LABEL_31;
        }

        if ((v7 & 0x3E) == 0)
        {
          return (v6 - a1);
        }
      }

      else
      {
        v6 = v4;
      }

LABEL_8:
      v4 = (v6 + 1);
      a2 = v5;
    }

    while (v5 >= 1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t is_counted_repeat(unsigned __int8 *a1)
{
  if ((digitab[*a1] & 4) == 0)
  {
    return 0;
  }

  do
  {
    v2 = a1;
    v4 = *++a1;
    v3 = v4;
  }

  while ((digitab[v4] & 4) != 0);
  if (v3 != 44)
  {
    return v3 == 125;
  }

  v5 = v2[2];
  if (v5 == 125)
  {
    return 1;
  }

  if ((digitab[v5] & 4) == 0)
  {
    return 0;
  }

  v6 = 2;
  do
  {
    v7 = a1[v6++];
  }

  while ((digitab[v7] & 4) != 0);
  return v7 == 125;
}

uint64_t check_escape(void *a1, const char **a2, int a3, __int16 a4, int a5)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
    v9 = "\\ at end of pattern";
    goto LABEL_6;
  }

  if ((v6 - 123) >= 0xFFFFFFB5)
  {
    v8 = v6 - 48;
    if (escapes_0[(v6 - 48)])
    {
      v6 = escapes_0[v8];
      goto LABEL_7;
    }

    if ((v6 - 49) < 9)
    {
      if (a5)
      {
        goto LABEL_24;
      }

      v11 = v5[2];
      v12 = *a1 + 1;
      v13 = v6 - 48;
      if ((digitab[v5[2]] & 4) != 0)
      {
        v12 = *a1 + 1;
        v13 = v6 - 48;
        do
        {
          v13 = v11 + 10 * v13 - 48;
          v11 = *(v12 + 2);
          v14 = digitab[*(v12 + 2)];
          ++v12;
        }

        while ((v14 & 4) != 0);
      }

      if (v13 >= 10 && v13 > a3)
      {
LABEL_24:
        if (v6 > 0x37)
        {
          v6 = 0;
LABEL_26:
          v7 = v5;
          goto LABEL_7;
        }

LABEL_34:
        v19 = v5 + 3;
        v20 = 2;
        v21 = *a1 + 1;
        while (1)
        {
          v23 = *++v21;
          v22 = v23;
          if ((v23 & 0xF8) != 0x30)
          {
            break;
          }

          LOBYTE(v8) = v22 + 8 * v8 - 48;
          v7 = v21;
          if (!--v20)
          {
            v7 = v19;
            break;
          }
        }

        v6 = v8;
        goto LABEL_7;
      }

      v6 = (-20 - v13);
LABEL_20:
      v7 = v12;
      goto LABEL_7;
    }

    v16 = (v6 - 76);
    if (v16 <= 0x2C)
    {
      if (((1 << (v6 - 76)) & 0x20100000205) != 0)
      {
        v9 = "PCRE does not support \\L, \\l, \\N, \\U, or \\u";
        goto LABEL_6;
      }

      if (v16 == 23)
      {
        v24 = v5[2];
        v5 += 2;
        v6 = v24;
        if (!v24)
        {
          *a2 = "\\c at end of pattern";
          return v6;
        }

        if ((v6 - 97) < 0x1A)
        {
          LODWORD(v6) = v6 - 32;
        }

        v6 = v6 ^ 0x40;
        goto LABEL_26;
      }

      if (v16 == 44)
      {
        if ((a4 & 0x800) == 0 || v5[2] != 123)
        {
          goto LABEL_57;
        }

        v12 = (v5 + 3);
        v17 = v5[3];
        if ((digitab[v5[3]] & 8) != 0)
        {
          LODWORD(v6) = 0;
          v25 = -1;
          do
          {
            if (v17 > 0x60)
            {
              v17 -= 32;
            }

            v27 = *++v12;
            v26 = v27;
            v28 = v17 + 16 * v6;
            if (v17 >= 65)
            {
              v29 = -55;
            }

            else
            {
              v29 = -48;
            }

            v6 = (v28 + v29);
            v17 = v26;
            ++v25;
          }

          while ((digitab[v26] & 8) != 0);
          v18 = v25 > 7;
        }

        else
        {
          v6 = 0;
          v18 = 0;
        }

        if (v17 != 125)
        {
LABEL_57:
          v6 = 0;
          v5 += 3;
          v30 = 2;
          v31 = *a1 + 1;
          while (1)
          {
            v33 = *++v31;
            v32 = v33;
            if ((digitab[v33] & 8) == 0)
            {
              goto LABEL_7;
            }

            v34 = v32 - 32;
            if (v32 <= 0x60)
            {
              v34 = v32;
            }

            v35 = v34 + 16 * v6;
            if (v34 >= 65)
            {
              v36 = -55;
            }

            else
            {
              v36 = -48;
            }

            v6 = (v35 + v36);
            v7 = v31;
            if (!--v30)
            {
              goto LABEL_26;
            }
          }
        }

        if (v6 < 0 || v18)
        {
          *a2 = "character value in \\x{...} sequence is too large";
        }

        goto LABEL_20;
      }
    }

    if (v6 == 48)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    v9 = "unrecognized character follows \";
LABEL_6:
    *a2 = v9;
  }

LABEL_7:
  *a1 = v7;
  return v6;
}

uint64_t get_ucp_0(void *a1, _DWORD *a2, const char **a3)
{
  v5 = *a1;
  v7 = (*a1 + 1);
  v6 = *v7;
  if (!*v7)
  {
LABEL_13:
    v15 = "malformed \\P or \\p sequence";
LABEL_22:
    *a3 = v15;
    *a1 = v7;
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (v6 == 123)
  {
    v9 = *(v5 + 2);
    v8 = (v5 + 2);
    if (v9 == 94)
    {
      *a2 = 1;
      v7 = v8;
    }

    ++v7;
    p_s1 = &__s1;
    v11 = 3;
    while (1)
    {
      v12 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }

      if (v12 == 125)
      {
        goto LABEL_15;
      }

      *p_s1++ = v12;
      ++v7;
      if (!--v11)
      {
        --v7;
        while (1)
        {
          v14 = *++v7;
          v13 = v14;
          if (!v14)
          {
            goto LABEL_13;
          }

          if (v13 == 125)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  __s1 = v6;
  p_s1 = v23;
LABEL_15:
  v16 = 0;
  *p_s1 = 0;
  *a1 = v7;
  v17 = 37;
  while (1)
  {
    v18 = (v17 + v16) / 2;
    v19 = &(&utt)[2 * v18];
    v20 = cstdlib_strcmp(&__s1, *v19);
    if (!v20)
    {
      return *(v19 + 2);
    }

    if (v20 <= 0)
    {
      v17 = (v17 + v16) / 2;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 >= v17)
    {
LABEL_21:
      v15 = "unknown property name after \\P or \\p";
      goto LABEL_22;
    }
  }
}

unsigned __int8 *read_repeat_counts_0(unsigned __int8 *result, int *a2, int *a3, const char **a4)
{
  v4 = *result;
  if ((digitab[*result] & 4) != 0)
  {
    v5 = 0;
    v6 = *result;
    do
    {
      v7 = *++result;
      v4 = v7;
      v5 = v6 + 10 * v5 - 48;
      v6 = v7;
    }

    while ((digitab[v7] & 4) != 0);
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 125)
  {
    v8 = v5;
  }

  else
  {
    v10 = *++result;
    v9 = v10;
    if (v10 == 125)
    {
      v8 = -1;
    }

    else
    {
      if ((digitab[v9] & 4) != 0)
      {
        v8 = 0;
        do
        {
          v11 = v9 + 10 * v8;
          v12 = *++result;
          v9 = v12;
          v8 = v11 - 48;
        }

        while ((digitab[v12] & 4) != 0);
      }

      else
      {
        v8 = 0;
      }

      if (v8 < v5)
      {
        v13 = "numbers out of order in {} quantifier";
        goto LABEL_19;
      }
    }
  }

  if (v5 < 0x10000 && v8 < 0x10000)
  {
    *a2 = v5;
    *a3 = v8;
    return result;
  }

  v13 = "number too big in {} quantifier";
LABEL_19:
  *a4 = v13;
  return result;
}

uint64_t get_othercase_range(int *a1, int a2, _DWORD *a3, unsigned int *a4)
{
  v16 = 0;
  v4 = *a1;
  if (*a1 > a2)
  {
    return 0;
  }

  v9 = a2 + 1;
  while (1)
  {
    v10 = ucp_findchar(v4, &v17, &v16);
    v11 = v16;
    if (v10 == 1 && v16 != 0)
    {
      break;
    }

    if (v9 == ++v4)
    {
      return 0;
    }
  }

  *a3 = v16;
  do
  {
    v14 = v11;
    v15 = v4 + 1;
    if (v4 >= a2)
    {
      break;
    }

    if (ucp_findchar(v4 + 1, &v17, &v16) != 1)
    {
      break;
    }

    v11 = v14 + 1;
    ++v4;
  }

  while (v14 + 1 == v16);
  *a4 = v14;
  *a1 = v15;
  return 1;
}

uint64_t ord2utf8(int a1, uint64_t a2)
{
  v2 = 0;
  v3 = &utf8_table1;
  while (1)
  {
    v4 = *v3++;
    if (v4 >= a1)
    {
      break;
    }

    if (--v2 == -6)
    {
      v5 = (a2 + 6);
      v6 = 6;
      LODWORD(v7) = 6;
      goto LABEL_7;
    }
  }

  v6 = -v2;
  v5 = (a2 - v2);
  if (!v2)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = -v2;
LABEL_7:
  v8 = v7 + 1;
  do
  {
    *v5-- = a1 & 0x3F | 0x80;
    a1 >>= 6;
    --v8;
  }

  while (v8 > 1);
LABEL_9:
  *v5 = utf8_table2[4 * v6] | a1;
  return (v7 + 1);
}

uint64_t compile_regex_0(uint64_t a1, int a2, int *a3, unsigned __int8 **a4, unsigned __int8 **a5, const char **a6, int a7, int a8, int *a9, int *a10, uint64_t a11, uint64_t a12)
{
  v12 = a7;
  v13 = a3;
  v14 = a2;
  v15 = 0;
  v348 = *MEMORY[0x277D85DE8];
  v16 = *a4;
  v17 = &(*a4)[a8];
  v18 = *a5;
  v334 = a11;
  v335 = v16;
  *(v16 + 1) = 0;
  v294 = v16;
  v306 = v16;
  v304 = -2;
  v305 = -2;
  while (2)
  {
    if ((a1 & 7) == v14)
    {
      v19 = v17 + 3;
    }

    else
    {
      v17[3] = 18;
      v19 = v17 + 5;
      v17[4] = a1 & 7;
    }

    if (v12)
    {
      v303 = v19 + 1;
      *v19 = 73;
      v19[2] = 0;
      v19 += 3;
    }

    else
    {
      v303 = v15;
    }

    v20 = 0;
    v21 = 0;
    v312 = 0;
    v332 = 0;
    v323 = 0;
    v342 = 0;
    v343 = 0;
    v22 = a1;
    v23 = a1 & 0x800;
    v311 = (a1 >> 11) & 1;
    v341 = v18;
    v340 = 0;
    v317 = 0;
    v318 = (a1 >> 9) & 1;
    v313 = (a1 & 0x200) == 0;
    v24 = 4294967294;
    __dst = 0;
    v25 = -2;
    v328 = (a1 & 1) << 8;
    v329 = -2;
    v331 = -2;
    v327 = v23;
    while (1)
    {
      v338 = 0;
      v26 = *v18;
      if (v332 && *v18)
      {
        if (v26 == 92 && v18[1] == 69)
        {
          v332 = 0;
          v341 = v18 + 1;
          goto LABEL_564;
        }

        if (v20)
        {
          *(v20 + 2) = bswap32(v18 - *(a12 + 40) - (bswap32(*(v20 + 1)) >> 16)) >> 16;
        }

        if ((v22 & 0x4000) != 0)
        {
          v31 = v341;
          *v19 = -192;
          v19[2] = (v31 - *(a12 + 40)) >> 8;
          v19[3] = v31 - *(a12 + 40);
          *(v19 + 2) = 0;
          v20 = v19;
          v19 += 6;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_24;
      }

      v27 = 1;
      if ((v26 - 42) >= 2 && v26 != 63)
      {
        if (v26 == 123)
        {
          v28 = v13;
          v29 = v24;
          v30 = is_counted_repeat(v18 + 1);
          v23 = v327;
          v24 = v29;
          v13 = v28;
          v27 = v30 != 0;
          if (v30)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v27 = 0;
        }

        if (v20)
        {
          if (v323 <= 0)
          {
            v27 = 0;
            *(v20 + 2) = bswap32(v18 - *(a12 + 40) - (bswap32(*(v20 + 1)) >> 16)) >> 16;
            --v323;
            v20 = 0;
            if ((v22 & 8) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_96;
          }

          v27 = 0;
          --v323;
        }
      }

LABEL_59:
      if ((v22 & 8) == 0)
      {
        goto LABEL_60;
      }

LABEL_96:
      if (*(*(a12 + 24) + v26))
      {
        goto LABEL_564;
      }

      if (v26 == 35)
      {
        v54 = v341;
        do
        {
          v56 = *++v54;
          v55 = v56;
          if (v56 == 10)
          {
            v341 = v54;
            goto LABEL_564;
          }
        }

        while (v55);
        v26 = 0;
        v341 = v54;
      }

LABEL_60:
      if ((v22 & 0x4000) == 0 || v27)
      {
        v330 = v20;
        v17 = v19;
      }

      else
      {
        v46 = v341;
        *v19 = -192;
        v19[2] = (v46 - *(a12 + 40)) >> 8;
        v19[3] = v46 - *(a12 + 40);
        *(v19 + 2) = 0;
        v17 = v19 + 6;
        v330 = v19;
      }

      if (v26 > 62)
      {
        break;
      }

      if (v26 > 41)
      {
        switch(v26)
        {
          case '*':
            HIDWORD(v343) = 0;
            break;
          case '+':
            HIDWORD(v343) = 1;
            break;
          case '.':
            if (v331 == -2)
            {
              v24 = 0xFFFFFFFFLL;
            }

            else
            {
              v24 = v331;
            }

            *v17 = 11;
            v19 = v17 + 1;
            goto LABEL_75;
          default:
            goto LABEL_418;
        }

        LODWORD(v343) = -1;
        goto LABEL_306;
      }

      if (v26 <= 39)
      {
        if (v26 == 36)
        {
          v21 = 0;
          v51 = 20;
LABEL_116:
          *v17++ = v51;
          goto LABEL_117;
        }

        if (v26)
        {
          goto LABEL_418;
        }

        goto LABEL_673;
      }

      if (v26 != 40)
      {
        goto LABEL_673;
      }

      v57 = v341;
      v58 = *++v341;
      if (v58 != 63)
      {
        if ((v22 & 0x1000) == 0)
        {
          goto LABEL_344;
        }

        v156 = 0;
        v157 = 80;
LABEL_387:
        v168 = v22;
        goto LABEL_446;
      }

      v337 = 0;
      v60 = v57 + 2;
      v59 = v57[2];
      v341 = v57 + 2;
      if (v59 <= 57)
      {
        if (v59 > 47)
        {
          goto LABEL_107;
        }

        switch(v59)
        {
          case '!':
            v156 = 0;
            v341 = v57 + 3;
            v157 = 70;
            goto LABEL_444;
          case '#':
            v245 = v57 + 2;
            do
            {
              v246 = *++v245;
            }

            while (v246 != 41);
            v341 = v245;
            v193 = 4;
            goto LABEL_489;
          case '(':
            v197 = v57 + 3;
            v198 = v57[3];
            if (v198 == 82)
            {
              *(v17 + 3) = -180;
              v17[5] = -1;
              v341 += 3;
              goto LABEL_649;
            }

            if (digitab[v198])
            {
              v262 = v198 - 48;
              v264 = v57 + 4;
              v263 = v57[4];
              if (v263 != 41)
              {
                v197 = v57 + 3;
                do
                {
                  v262 = v263 + 10 * v262 - 48;
                  v263 = v197[2];
                  ++v197;
                }

                while (v263 != 41);
                v264 = v197 + 1;
              }

              v341 = v264;
              if (!v262)
              {
                *a6 = "invalid condition (?(0)";
                v317 = 75;
                v193 = 9;
                goto LABEL_489;
              }

              v341 = v197 + 2;
              v17[3] = 76;
              v17[4] = BYTE1(v262);
              v17[5] = v262;
LABEL_649:
              v157 = 75;
              v156 = 3;
            }

            else
            {
              v156 = 0;
              v157 = 75;
            }

LABEL_444:
            v168 = v22;
LABEL_445:
            if (v157 < 74)
            {
              v21 = 0;
            }

            else
            {
LABEL_446:
              v21 = v17;
            }

            *v17 = v157;
            v342 = v17;
            v187 = *(a12 + 72);
            v317 = v157;
            v188 = compile_regex_0(v168, v22 & 7, v13, &v342, &v341, a6, (v157 - 71) < 2, v156, &v338, &v338 + 4, &v334, a12);
            v23 = v327;
            if (!v188)
            {
              goto LABEL_708;
            }

            if (v317 == 75)
            {
              v189 = 1;
              do
              {
                v17 += __rev16(*(v17 + 1));
                --v189;
              }

              while (*v17 != 66);
              if (-v189 != 1 && v189 != 0)
              {
                v287 = "conditional group contains more than two branches";
                goto LABEL_707;
              }

              if (!v189)
              {
                v338 = -1;
              }
            }

            if (v317 > 79 || (v317 & 0xFFFFFFFE) == 0x4A)
            {
              v50 = v338;
              v20 = v330;
              if (v331 == -2)
              {
                v312 = v338 >= 0;
                if (v338 < 0)
                {
                  v50 = -1;
                }

                v331 = -1;
                v191 = HIDWORD(v338);
              }

              else
              {
                v312 = 0;
                v191 = HIDWORD(v338);
                if ((v338 & 0x80000000) == 0 && v338 < 0)
                {
                  v312 = 0;
                  v191 = v338 | v187;
                  HIDWORD(v338) = v338 | v187;
                }

                v50 = v331;
              }

              if (v191 < 0)
              {
                v191 = v329;
              }
            }

            else
            {
              v312 = 0;
              v190 = SHIDWORD(v338) > -1 && v317 == 69;
              v191 = v329;
              if (v190)
              {
                v191 = HIDWORD(v338);
              }

              v50 = v331;
              v20 = v330;
            }

            if (*v341 != 41)
            {
              v287 = "missing)";
              goto LABEL_707;
            }

            v19 = v342;
            v24 = v331;
            v25 = v329;
            v329 = v191;
            goto LABEL_475;
        }

        goto LABEL_604;
      }

      v157 = v317;
      if (v59 <= 61)
      {
        switch(v59)
        {
          case ':':
            v156 = 0;
            v341 = v57 + 3;
            v157 = 80;
            goto LABEL_444;
          case '<':
            v244 = v57[3];
            v341 = v57 + 3;
            if (v244 == 33)
            {
              v156 = 0;
              v341 = v57 + 4;
              v157 = 72;
            }

            else
            {
              v156 = 0;
              if (v244 == 61)
              {
                v341 = v57 + 4;
                v157 = 71;
              }
            }

            goto LABEL_444;
          case '=':
            v156 = 0;
            v341 = v57 + 3;
            v157 = 69;
            goto LABEL_444;
        }

        goto LABEL_604;
      }

      if (v59 <= 79)
      {
        if (v59 == 62)
        {
          v156 = 0;
          v341 = v57 + 3;
          v157 = 74;
          goto LABEL_444;
        }

        if (v59 == 67)
        {
          *v17 = 64;
          v19 = v17 + 1;
          v174 = v341 + 1;
          v175 = v341[1];
          if ((digitab[v175] & 4) == 0)
          {
            LOBYTE(v176) = 0;
            ++v341;
            goto LABEL_641;
          }

          v176 = 0;
          do
          {
            v176 = v175 + 10 * v176 - 48;
            v261 = *++v174;
            LODWORD(v175) = v261;
          }

          while ((digitab[v261] & 4) != 0);
          v341 = v174;
          v23 = v327;
          if (v176 >= 256)
          {
            *a6 = "number after (?C is > 255";
            v323 = 1;
            v193 = 9;
          }

          else
          {
LABEL_641:
            v21 = 0;
            v17[1] = v176;
            v17[2] = (v341 - *(a12 + 40) + 1) >> 8;
            v17[3] = v341 - *(a12 + 40) + 1;
            *(v17 + 2) = 0;
            v19 = v17 + 6;
            v323 = 1;
            v193 = 4;
          }

          v20 = v17;
          goto LABEL_576;
        }

        goto LABEL_604;
      }

      if (v59 == 80)
      {
        v326 = v22;
        v235 = v57[3];
        v341 = v57 + 3;
        if ((v235 - 61) >= 2)
        {
          if (v235 != 60)
          {
            v156 = 0;
            v22 = v326;
            goto LABEL_444;
          }

          v315 = v25;
          v251 = *(a12 + 48);
          v252 = v57 + 4;
          v253 = 0x100000000;
          v254 = 0xFFFFFFFF00000000;
          v255 = v252;
          do
          {
            v256 = *v255++;
            v253 += 0x100000000;
            v254 += 0x100000000;
          }

          while (v256 != 62);
          v341 = v255;
          v257 = v254 >> 32;
          v258 = v253 >> 32;
          if (*(a12 + 56) >= 1)
          {
            v300 = v24;
            v259 = 0;
            while (1)
            {
              v260 = cstdlib_memcmp(v252, v251 + 2, v257);
              if (!v260)
              {
                break;
              }

              if (v260 < 0)
              {
                goto LABEL_670;
              }

              v251 += *(a12 + 60);
              if (++v259 >= *(a12 + 56))
              {
                goto LABEL_671;
              }
            }

            if (!v251[v258])
            {
              v267 = a6;
              v268 = "two named groups have the same name";
              goto LABEL_661;
            }

LABEL_670:
            cstdlib_memmove(&v251[*(a12 + 60)], v251, *(a12 + 60) * (*(a12 + 56) - v259));
          }

LABEL_671:
          *v251 = (*v13 + 1) >> 8;
          v251[1] = *v13 + 1;
          cstdlib_memcpy(v251 + 2, v252, v257);
          v251[v258] = 0;
          ++*(a12 + 56);
          v22 = v326;
LABEL_344:
          v155 = (*v13)++;
          if (v155 < 100)
          {
            v156 = 0;
            v157 = v155 + 81;
            goto LABEL_444;
          }

          v17[3] = 79;
          v17[4] = BYTE1(*v13);
          v17[5] = *v13;
          v156 = 3;
          v157 = 181;
          goto LABEL_387;
        }

        v315 = v25;
        v236 = *(a12 + 48);
        v237 = v57 + 3;
        v238 = 0xFFFFFFFF00000000;
        do
        {
          v239 = *++v237;
          v238 += 0x100000000;
        }

        while (v239 != 41);
        v300 = v24;
        v341 = v237;
        v240 = *(a12 + 56);
        if (v240 < 1)
        {
          v241 = 0;
        }

        else
        {
          v241 = 0;
          v242 = v238 >> 32;
          do
          {
            v243 = cstdlib_strncmp(v57 + 4, v236 + 2, v242);
            v240 = *(a12 + 56);
            if (!v243)
            {
              break;
            }

            v236 += *(a12 + 60);
            ++v241;
          }

          while (v241 < v240);
        }

        if (v241 < v240)
        {
          v265 = *v236;
          v266 = *(v236 + 1);
          v61 = v266 | (v265 << 8);
          v23 = v327;
          v24 = v300;
          if (v235 != 62)
          {
            *v17 = 62;
            v17[1] = v265;
            v17[2] = v266;
            v19 = v17 + 3;
            v269 = 1 << v266;
            if (v61 >= 0x20)
            {
              v269 = 1;
            }

            v270 = *(a12 + 64);
            *(a12 + 68) |= v269;
            v22 = v326;
            if (v61 > v270)
            {
              *(a12 + 64) = v61;
            }

            v193 = 4;
            v21 = v17;
            goto LABEL_490;
          }

          v22 = v326;
          goto LABEL_424;
        }

        v267 = a6;
        v268 = "reference to non-existent subpattern";
LABEL_661:
        *v267 = v268;
        v193 = 9;
        v19 = v17;
        v22 = v326;
        v23 = v327;
        v20 = v330;
        v24 = v300;
LABEL_575:
        v25 = v315;
        goto LABEL_576;
      }

      if (v59 == 82)
      {
        v59 = v57[3];
        v60 = v57 + 3;
LABEL_107:
        if ((digitab[v59] & 4) != 0)
        {
          v61 = 0;
          do
          {
            v179 = 10 * v61 + v59;
            v180 = *++v60;
            LOBYTE(v59) = v180;
            v61 = v179 - 48;
          }

          while ((digitab[v180] & 4) != 0);
        }

        else
        {
          v61 = 0;
        }

        v341 = v60;
        v23 = v327;
LABEL_424:
        *v17 = 0;
        v181 = *(a12 + 32);
        if (v61)
        {
          for (i = *v181; i; v181 = v185)
          {
            if (i < 0x51)
            {
              v184 = OP_lengths[i];
              v185 = &v181[v184];
              if (v23)
              {
                if (i - 24 < 9 || i - 21 < 2)
                {
                  v185 = &v181[v184 - 1];
                  do
                  {
                    v186 = *++v185;
                    i = v186;
                  }

                  while ((v186 & 0xC0) == 0x80);
                  continue;
                }

                if (i == 61)
                {
                  v185 += __rev16(*(v185 + 1)) + 1;
                }
              }
            }

            else
            {
              if (i < 0xB5)
              {
                v183 = i - 80;
              }

              else
              {
                v183 = __rev16(*(v181 + 2));
              }

              if (v183 == v61)
              {
                goto LABEL_486;
              }

              v185 = v181 + 3;
            }

            i = *v185;
          }
        }

        else if (v181)
        {
LABEL_486:
          v315 = v25;
          v192 = v24;
          if (__rev16(*(v181 + 1)))
          {
LABEL_487:
            *v17 = 63;
            v17[1] = (v181 - *(a12 + 32)) >> 8;
            v17[2] = v181 - *(a12 + 32);
            v19 = v17 + 3;
            v193 = 4;
            v21 = v17;
          }

          else
          {
            v232 = &v334;
            do
            {
              v233 = v232[1];
              if (v233 < v181)
              {
                break;
              }

              v234 = could_be_empty_branch(v233, v17, v311);
              v23 = v327;
              if (!v234)
              {
                goto LABEL_487;
              }

              v232 = *v232;
            }

            while (v232);
            *a6 = "recursive call could loop indefinitely";
            v193 = 9;
            v21 = v17;
            v19 = v17;
          }

          v20 = v330;
          v24 = v192;
          goto LABEL_575;
        }

        *a6 = "reference to non-existent subpattern";
        v193 = 9;
        v21 = v17;
        goto LABEL_489;
      }

LABEL_604:
      HIDWORD(v337) = 0;
      v247 = v57 + 3;
      v248 = &v337 + 1;
      while (v59 != 41 && v59 != 58)
      {
        if (v59 <= 104)
        {
          switch(v59)
          {
            case '-':
              v248 = &v337;
              goto LABEL_624;
            case 'U':
              v249 = *v248 | 0x200;
              break;
            case 'X':
              v249 = *v248 | 0x40;
              break;
            default:
              goto LABEL_624;
          }
        }

        else if (v59 > 114)
        {
          if (v59 == 115)
          {
            v249 = *v248 | 4;
          }

          else
          {
            if (v59 != 120)
            {
              goto LABEL_624;
            }

            v249 = *v248 | 8;
          }
        }

        else if (v59 == 105)
        {
          v249 = *v248 | 1;
        }

        else
        {
          if (v59 != 109)
          {
            goto LABEL_624;
          }

          v249 = *v248 | 2;
        }

        *v248 = v249;
LABEL_624:
        v250 = *v247++;
        v59 = v250;
      }

      v341 = v247 - 1;
      v168 = (HIDWORD(v337) | v22) & ~v337;
      if (v59 != 41)
      {
        v156 = 0;
        v341 = v247;
        v157 = 80;
        goto LABEL_445;
      }

      if ((v22 & 7) != ((BYTE4(v337) | v22) & ~v337 & 7))
      {
        *v17 = 18;
        v17[1] = v168 & 7;
        v17 += 2;
      }

      v21 = 0;
      v318 = (v168 >> 9) & 1;
      v313 = (v168 & 0x200) == 0;
      v328 = (v168 & 1) << 8;
      v193 = 4;
      v22 = v168;
LABEL_489:
      v19 = v17;
LABEL_490:
      v20 = v330;
LABEL_576:
      if (v193 != 4)
      {
LABEL_708:
        result = 0;
        *a5 = v341;
        return result;
      }

LABEL_564:
      v18 = ++v341;
    }

    if (v26 <= 93)
    {
      if (v26 != 63)
      {
        if (v26 != 91)
        {
          if (v26 == 92)
          {
            v47 = v24;
            v48 = check_escape(&v341, a6, *v13, v22, 0);
            v49 = v48;
            if ((v48 & 0x80000000) == 0)
            {
              v23 = v327;
              if (v327 && v48 >= 0x80)
              {
                v34 = ord2utf8(v48, &v344);
                v23 = v327;
                goto LABEL_85;
              }

              goto LABEL_533;
            }

            v23 = v327;
            if (v48 != -19)
            {
              if (v48 + 15 >= 0xB)
              {
                v173 = -2;
              }

              else
              {
                v173 = -1;
              }

              if (v331 == -2)
              {
                v24 = v173;
              }

              else
              {
                v24 = v331;
              }

              if (v48 <= 0xFFFFFFEC)
              {
                *v17 = 62;
                v17[1] = (-20 - v48) >> 8;
                v17[2] = -20 - v48;
                v19 = v17 + 3;
                goto LABEL_75;
              }

              if ((v48 & 0xFFFFFFFE) != 0xFFFFFFF2)
              {
                if (v48 + 15 >= 0xB)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = v17;
                }

                *v17 = -v48;
                v19 = v17 + 1;
                goto LABEL_76;
              }

              HIDWORD(v337) = 0;
              v194 = v24;
              ucp_0 = get_ucp_0(&v341, &v337 + 1, a6);
              v23 = v327;
              if (HIDWORD(v337) == (v49 == -14))
              {
                v196 = 13;
              }

              else
              {
                v196 = 14;
              }

              *v17 = v196;
              v19 = v17 + 2;
              v17[1] = ucp_0;
              v24 = v194;
              v21 = v17;
              v25 = v329;
              v331 = v194;
LABEL_118:
              v20 = v330;
              goto LABEL_564;
            }

            if (v341[1] != 92)
            {
              v332 = 1;
              v19 = v17;
              v20 = v330;
              v24 = v47;
              goto LABEL_564;
            }

            v24 = v47;
            if (v341[2] == 69)
            {
              v341 += 2;
            }

            else
            {
              v332 = 1;
            }

LABEL_117:
            v19 = v17;
            goto LABEL_118;
          }

LABEL_418:
          v19 = v17;
          v20 = v330;
LABEL_24:
          v344 = v26;
          if (v23 && (v26 & 0xC0) == 0xC0)
          {
            v32 = v341;
            v33 = v341[1];
            v34 = 1;
            if ((v33 & 0xC0) == 0x80)
            {
              v35 = v345;
              do
              {
                *v35++ = v33;
                v33 = v32[2];
                ++v34;
                ++v32;
              }

              while ((v33 & 0xC0) == 0x80);
            }

            v341 = v32;
            goto LABEL_30;
          }

          v330 = v20;
          v17 = v19;
          goto LABEL_36;
        }

        v64 = v341;
        v67 = v341[1];
        v66 = v341 + 1;
        v65 = v67;
        v68 = (1 << v67) & 0x2400400000000000;
        if (v67 <= 0x3D && v68 != 0)
        {
          v70 = v341 + 2;
          if (v341[2] == 94)
          {
            v70 = v341 + 3;
          }

          do
          {
            v72 = *v70++;
            v71 = v72;
          }

          while ((*(*(a12 + 24) + v72) & 2) != 0);
          if (v71 == v65 && *v70 == 93)
          {
            v287 = "POSIX collating elements are not supported";
            if (v65 == 58)
            {
              v287 = "POSIX named classes are supported only within a class";
            }

            goto LABEL_707;
          }
        }

        ++v341;
        LODWORD(v73) = v65;
        v314 = v65;
        if (v65 == 94)
        {
          LODWORD(v73) = v64[2];
          v341 = v64 + 2;
          v66 = v64 + 2;
        }

        v19 = v17 + 2;
        cstdlib_memset(&__b, 0, 0x20uLL);
        v320 = 0;
        v74 = 0;
        v49 = -1;
        __src = v17 + 36;
        v324 = v17 + 36;
        v23 = v327;
        while (2)
        {
          if (v23)
          {
            if (v73 < 0)
            {
              LODWORD(v73) = *v66;
              if ((~v73 & 0xC0) == 0)
              {
                v75 = utf8_table4[v73 & 0x3F];
                LODWORD(v73) = (utf8_table3[v75] & v73) << (6 * v75);
                v76 = (v66 + 1);
                if (v75 <= 1)
                {
                  v77 = 1;
                }

                else
                {
                  v77 = v75;
                }

                v78 = 6 * v75 - 6;
                do
                {
                  v79 = *v76++;
                  LODWORD(v73) = ((v79 & 0x3F) << v78) | v73;
                  v78 -= 6;
                  --v77;
                }

                while (v77);
                v66 += v75;
                v341 = v66;
              }
            }
          }

          if (v332)
          {
            if (v73 == 92)
            {
              v81 = v66[1];
              v80 = v66 + 1;
              if (v81 == 69)
              {
                v332 = 0;
                v341 = v80;
                goto LABEL_198;
              }

              LODWORD(v73) = 92;
LABEL_187:
              *(&__b + v73 / 8) |= 1 << (v73 & 7);
              if (v22)
              {
                v73 = *(*(a12 + 8) + v73);
                *(&__b + (v73 >> 3)) |= 1 << (v73 & 7);
              }

              ++v74;
              v49 = v73;
LABEL_198:
              v103 = v341[1];
              v66 = v341 + 1;
              LODWORD(v73) = v103;
              ++v341;
              if (v103 == 93 && v332 == 0)
              {
                if (v74 != 1 || v23 && (v314 == 94 ? (v153 = v49 < 128) : (v153 = 1), !v153 ? (v154 = 0) : (v154 = 1), v320 || !v154))
                {
                  if (v331 == -2)
                  {
                    v167 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v167 = v331;
                  }

                  if (v320)
                  {
                    *v324 = 0;
                    v19 = v324 + 1;
                    *v17 = 61;
                    v17[3] = v314 == 94;
                    if (v74 < 1)
                    {
                      cstdlib_memmove(v17 + 4, __src, (v19 - __src));
                      v19 = &v17[v19 - __src + 4];
                    }

                    else
                    {
                      v17[3] = (v314 == 94) | 2;
                      cstdlib_memcpy(v17 + 4, &__b, 0x20uLL);
                    }

                    v332 = 0;
                    *(v17 + 1) = bswap32(v19 - v17) >> 16;
                    v21 = v17;
                    v25 = v329;
                    v24 = v167;
                    v331 = v167;
                    v23 = v327;
                    v20 = v330;
                    v13 = a3;
                    goto LABEL_564;
                  }

                  v177 = v167;
                  v178 = v17 + 1;
                  if (v314 == 94)
                  {
                    v212 = 0;
                    *v17 = 60;
                    v13 = a3;
                    do
                    {
                      v178[v212] = ~*(&__b + v212);
                      ++v212;
                    }

                    while (v212 != 32);
                  }

                  else
                  {
                    *v17 = 59;
                    cstdlib_memcpy(v178, &__b, 0x20uLL);
                    v23 = v327;
                    v13 = a3;
                  }

                  v332 = 0;
                  v19 = v17 + 33;
                  v21 = v17;
                  v25 = v329;
                  v24 = v177;
                  v331 = v177;
                }

                else
                {
                  if (v314 != 94)
                  {
                    if (v23 && v49 >= 128)
                    {
                      v34 = ord2utf8(v49, &v344);
                      v23 = v327;
                      v332 = 0;
LABEL_85:
                      v19 = v17;
                      v20 = v330;
LABEL_30:
                      if (v22)
                      {
                        v36 = 22;
                      }

                      else
                      {
                        v36 = 21;
                      }

                      *v19 = v36;
                      v37 = (v19 + 1);
                      if (v34 < 1)
                      {
                        v38 = 0;
LABEL_43:
                        if (v328)
                        {
                          v43 = v38;
                        }

                        else
                        {
                          v43 = 1;
                        }

                        if (v331 != -2)
                        {
                          if (v43)
                          {
                            v25 = v329;
                            v44 = *(a12 + 72) | v328 | v36;
                            v21 = v19;
                            v19 = v37;
                            v24 = v331;
LABEL_49:
                            v329 = v44;
                            goto LABEL_564;
                          }

                          v21 = v19;
                          v19 = v37;
                          v24 = v331;
                          goto LABEL_51;
                        }

                        if (v43)
                        {
                          v331 = v328 | v344;
                          if (!v38)
                          {
                            v25 = v329;
                            v44 = *(a12 + 72) | v36;
                            v24 = 0xFFFFFFFFLL;
                            v21 = v19;
                            v19 = v37;
                            goto LABEL_49;
                          }

                          v24 = 0xFFFFFFFFLL;
                          v21 = v19;
                          v19 = v37;
LABEL_51:
                          v25 = v329;
                          goto LABEL_564;
                        }

                        v24 = 0xFFFFFFFFLL;
                        v21 = v19;
                        v19 = v37;
                        v25 = v329;
                        v50 = -1;
                        v329 = -1;
LABEL_475:
                        v331 = v50;
                        goto LABEL_564;
                      }

LABEL_40:
                      v40 = &v344;
                      v41 = v34;
                      do
                      {
                        v42 = *v40++;
                        v36 = v42;
                        *v37++ = v42;
                        --v41;
                      }

                      while (v41);
                      v38 = v34 == 1;
                      goto LABEL_43;
                    }

                    v332 = 0;
LABEL_533:
                    v344 = v49;
LABEL_36:
                    if (v22)
                    {
                      v39 = 22;
                    }

                    else
                    {
                      v39 = 21;
                    }

                    *v17 = v39;
                    v37 = (v17 + 1);
                    v34 = 1;
                    v19 = v17;
                    v20 = v330;
                    goto LABEL_40;
                  }

                  v332 = 0;
                  if (v331 == -2)
                  {
                    v24 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v24 = v331;
                  }

                  *v17 = 23;
                  v17[1] = v49;
LABEL_75:
                  v21 = v17;
LABEL_76:
                  v25 = v329;
                  v331 = v24;
                }

                goto LABEL_118;
              }

              continue;
            }

LABEL_184:
            if (!v23)
            {
              goto LABEL_187;
            }

LABEL_185:
            if (v73 > 255 || (v22 & (v73 > 127)) != 0)
            {
              *v324 = 1;
              v102 = &v324[ord2utf8(v73, (v324 + 1)) + 1];
              if ((v22 & 1) == 0)
              {
                v320 = 1;
                v324 = v102;
                goto LABEL_197;
              }

              LODWORD(v337) = 0;
              if ((ucp_findchar(v73, &v337 + 1, &v337) & 0x80000000) == 0 && v337 >= 1)
              {
                *v102 = 1;
                v102 += ord2utf8(v337, (v102 + 1)) + 1;
              }

              v324 = v102;
              goto LABEL_196;
            }

            goto LABEL_187;
          }

          break;
        }

        if (v73 != 92)
        {
          if (v73 == 91)
          {
            v82 = v66[1];
            LODWORD(v73) = 91;
            if (v82 <= 0x3D && ((1 << v82) & 0x2400400000000000) != 0)
            {
              v83 = v22;
              v84 = 0;
              v87 = v66[2];
              v85 = (v66 + 2);
              v86 = v87;
              if (v87 == 94)
              {
                ++v85;
              }

              do
              {
                v88 = v85[v84];
                v89 = *(*(a12 + 24) + v85[v84++]);
              }

              while ((v89 & 2) != 0);
              if (v88 == v82 && v85[v84] == 93)
              {
                if (v82 != 58)
                {
                  v287 = "POSIX collating elements are not supported";
                  goto LABEL_707;
                }

                v296 = &v85[v84];
                v90 = 0;
                v91 = 0;
                v333 = *(a12 + 16);
                v341 = v85;
                while (posix_name_lengths_0[v91] + 1 != v84 || cstdlib_strncmp(v85, posix_names_0[v91], (v84 - 1)))
                {
                  ++v91;
                  v90 += 3;
                  if (v91 == 14)
                  {
                    v287 = "unknown POSIX class name";
LABEL_707:
                    *a6 = v287;
                    goto LABEL_708;
                  }
                }

                v114 = 0;
                v22 = v83;
                if ((v83 & (v91 < 3)) != 0)
                {
                  v90 = 0;
                }

                v13 = a3;
                while (2)
                {
                  v115 = cstdlib_strncmp(v85, "blank", 5uLL);
                  if ((0x36DB6DB41B4uLL >> (v114 + v90)))
                  {
LABEL_250:
                    v332 = 0;
                    v341 = v296;
                    v74 = 10;
                    goto LABEL_197;
                  }

                  v116 = posix_class_maps_0[v114 + v90];
                  if (v86 == 94)
                  {
                    v117 = v333 + v116;
                    v118 = 0;
                    if (v114)
                    {
                      do
                      {
                        *(&__b + v118) &= ~*(v117 + v118);
                        ++v118;
                      }

                      while (v118 != 32);
                    }

                    else
                    {
                      do
                      {
                        *(&__b + v118) |= ~*(v117 + v118);
                        ++v118;
                      }

                      while (v118 != 32);
                    }

                    if (!v115)
                    {
                      v119 = v347 | 0x3C;
                      goto LABEL_248;
                    }
                  }

                  else
                  {
                    v120 = 0;
                    v121 = v333 + v116;
                    do
                    {
                      *(&__b + v120) |= *(v121 + v120);
                      ++v120;
                    }

                    while (v120 != 32);
                    if (!v115)
                    {
                      v119 = v347 & 0xC3;
LABEL_248:
                      v347 = v119;
                    }
                  }

                  if (++v114 == 3)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }
              }

              LODWORD(v73) = 91;
              v22 = v83;
              v13 = a3;
            }
          }

LABEL_171:
          v93 = v341;
          if (v341[1] != 45)
          {
            goto LABEL_184;
          }

          v95 = v341 + 2;
          v94 = v341[2];
          if (v94 == 93)
          {
            goto LABEL_184;
          }

          v341 += 2;
          if (v23 && (v94 & 0xC0) == 0xC0)
          {
            v96 = utf8_table4[v94 & 0x3F];
            LODWORD(v94) = (utf8_table3[v96] & v94) << (6 * v96);
            v97 = (v93 + 3);
            if (v96 <= 1)
            {
              v98 = 1;
            }

            else
            {
              v98 = v96;
            }

            v99 = 6 * v96 - 6;
            do
            {
              v100 = *v97++;
              v94 = ((v100 & 0x3F) << v99) | v94;
              v99 -= 6;
              --v98;
            }

            while (v98);
            v95 += v96;
            v341 = v95;
          }

          if (v94 == 92)
          {
            v101 = check_escape(&v341, a6, *v13, v22, 1);
            v23 = v327;
            v94 = v101;
            if ((v101 & 0x80000000) != 0)
            {
              if (v101 == -4)
              {
                v94 = 8;
              }

              else
              {
                if (v101 != -15)
                {
                  v341 = v95 - 2;
                  if (!v327)
                  {
                    goto LABEL_187;
                  }

                  goto LABEL_185;
                }

                v94 = 88;
              }
            }
          }

          if (v94 == v73)
          {
            goto LABEL_184;
          }

          if (v23)
          {
            if (v94 > 255 || (v22 & (v94 > 127)) != 0)
            {
              if ((v22 & 1) == 0)
              {
                LODWORD(v106) = v94;
LABEL_278:
                *v324 = 2;
                v128 = &v324[ord2utf8(v73, (v324 + 1)) + 1];
                v332 = 0;
                v324 = (v128 + ord2utf8(v106, v128));
LABEL_196:
                v320 = 1;
                goto LABEL_197;
              }

              v337 = 0;
              v106 = v94;
              v336 = v73;
              while (1)
              {
LABEL_260:
                v124 = v106;
                do
                {
                  v106 = v124;
                  do
                  {
                    if (!get_othercase_range(&v336, v94, &v337 + 1, &v337))
                    {
                      goto LABEL_278;
                    }

                    v124 = v337;
                  }

                  while (SHIDWORD(v337) >= v73 && v337 <= v106);
                  if (SHIDWORD(v337) < v73 && v337 >= v73 - 1)
                  {
                    LODWORD(v73) = HIDWORD(v337);
                    goto LABEL_260;
                  }
                }

                while (v337 > v106 && SHIDWORD(v337) <= v106 + 1);
                v127 = (v324 + 1);
                if (HIDWORD(v337) == v337)
                {
                  *v324 = 1;
                }

                else
                {
                  *v324 = 2;
                  v127 += ord2utf8(SHIDWORD(v337), v127);
                }

                v324 = (v127 + ord2utf8(v337, v127));
              }
            }
          }

          if (v73 > v94)
          {
            v332 = 0;
            goto LABEL_198;
          }

          v107 = v73;
          v49 = v73 - 1;
          do
          {
            v108 = v49++;
            if (v49 >= 0)
            {
              v109 = v108 + 1;
            }

            else
            {
              v109 = v108 + 8;
            }

            *(&__b + (v109 >> 3)) |= 1 << (v49 & 7);
            if (v22)
            {
              v110 = *(*(a12 + 8) + v107);
              *(&__b + (v110 >> 3)) |= 1 << (v110 & 7);
            }

            ++v107;
          }

          while (v94 != v49);
          v332 = 0;
          v74 = v94 + v74 + 1 - v73;
LABEL_197:
          v23 = v327;
          goto LABEL_198;
        }

        v92 = check_escape(&v341, a6, *v13, v22, 1);
        if (v92 == -19)
        {
          if (v341[1] != 92)
          {
            v332 = 1;
            goto LABEL_197;
          }

          v23 = v327;
          if (v341[2] == 69)
          {
            v332 = 0;
            v341 += 2;
          }

          else
          {
            v332 = 1;
          }

          goto LABEL_198;
        }

        LODWORD(v73) = v92;
        if (v92 == -4)
        {
          LODWORD(v73) = 8;
          goto LABEL_166;
        }

        v23 = v327;
        if (v92 == -15)
        {
          LODWORD(v73) = 88;
          goto LABEL_171;
        }

        if ((v92 & 0x80000000) == 0)
        {
          goto LABEL_171;
        }

        v111 = *(a12 + 16);
        if (v92 > -9)
        {
          if (v92 > -7)
          {
            if (v92 == -6)
            {
              v134 = 0;
              v135 = v111 + 64;
              do
              {
                *(&__b + v134) |= *(v135 + v134);
                ++v134;
              }

              while (v134 != 32);
            }

            else
            {
              if (v92 != -5)
              {
                goto LABEL_300;
              }

              v129 = 0;
              v130 = v111 + 64;
              do
              {
                *(&__b + v129) |= ~*(v130 + v129);
                ++v129;
              }

              while (v129 != 32);
            }

            goto LABEL_298;
          }

          if (v92 == -8)
          {
            for (j = 0; j != 32; ++j)
            {
              *(&__b + j) |= *(v111 + j);
            }

            v332 = 0;
            v123 = v347 & 0xF7;
          }

          else
          {
            for (k = 0; k != 32; ++k)
            {
              *(&__b + k) |= ~*(v111 + k);
            }

            v332 = 0;
            v123 = v347 | 8;
          }

          v347 = v123;
        }

        else
        {
          if ((v92 + 14) < 2)
          {
            HIDWORD(v337) = 0;
            v131 = get_ucp_0(&v341, &v337 + 1, a6);
            if (v131 < 0)
            {
              goto LABEL_708;
            }

            v332 = 0;
            if (HIDWORD(v337) == (v73 == -14))
            {
              v132 = 4;
            }

            else
            {
              v132 = 3;
            }

            *v324 = v132;
            v324[1] = v131;
            v320 = 1;
            v324 += 2;
            goto LABEL_197;
          }

          if (v92 != -10)
          {
            if (v92 == -9)
            {
              v112 = 0;
              v113 = v111 + 160;
              do
              {
                *(&__b + v112) |= ~*(v113 + v112);
                ++v112;
              }

              while (v112 != 32);
              goto LABEL_298;
            }

LABEL_300:
            if ((v22 & 0x40) != 0)
            {
              v287 = "invalid escape sequence in character class";
              goto LABEL_707;
            }

            LODWORD(v73) = *v341;
LABEL_166:
            v23 = v327;
            goto LABEL_171;
          }

          v136 = 0;
          v137 = v111 + 160;
          do
          {
            *(&__b + v136) |= *(v137 + v136);
            ++v136;
          }

          while (v136 != 32);
LABEL_298:
          v332 = 0;
        }

        v74 += 2;
        goto LABEL_197;
      }

      v343 = 1;
LABEL_306:
      if (!v21)
      {
        v287 = "nothing to repeat";
        goto LABEL_707;
      }

      v325 = v22;
      v321 = HIDWORD(v343) != v343;
      v138 = v329;
      if (!HIDWORD(v343))
      {
        v138 = v25;
      }

      v329 = v138;
      v139 = v331;
      if (!HIDWORD(v343))
      {
        v139 = v24;
      }

      v331 = v139;
      v342 = v21;
      v140 = v341[1];
      if (v140 == 43)
      {
        v141 = 0;
        ++v341;
      }

      else
      {
        v141 = v318;
        if (v140 == 63)
        {
          ++v341;
          v141 = v313;
        }
      }

      v142 = *v21;
      if (v142 == 63)
      {
        v143 = v24;
        cstdlib_memmove(v21 + 3, v21, 3uLL);
        v24 = v143;
        v23 = v327;
        *v21 = 80;
        v144 = v17 + 3 - v21;
        v21[1] = HIBYTE(v144);
        v21[2] = v144;
        v17[3] = 66;
        v17[4] = HIBYTE(v144);
        v17[5] = v144;
        v17 += 6;
        v142 = *v21;
      }

      if (v142 - 21 < 2)
      {
        if (v23 && *(v17 - 1) < 0)
        {
          v145 = v140;
          v146 = v24;
          v147 = 0;
          v148 = v17;
          do
          {
            v149 = *--v148;
            ++v147;
          }

          while ((v149 & 0xC0) == 0x80);
          cstdlib_memcpy(&__dst, v148, v147);
          v150 = 0;
          v151 = v147 | 0x80;
          v142 = *v21;
          v23 = v327;
          v24 = v146;
          v140 = v145;
        }

        else
        {
          v151 = *(v17 - 1);
          v150 = 0;
          if (SHIDWORD(v343) >= 2)
          {
            v329 = *(a12 + 72) | v151 | v328;
          }
        }

LABEL_347:
        if (v142 - 13 > 1)
        {
          v152 = -1;
        }

        else
        {
          v152 = v21[1];
        }

LABEL_350:
        v158 = v343;
        if (v343)
        {
          if (v343 != 1)
          {
            *(a12 + 76) = 1;
          }

          v159 = v150 + v141;
          if (HIDWORD(v343) != 1)
          {
            if (!HIDWORD(v343))
            {
              v160 = v21 + 1;
              if (v158 == 1)
              {
                v161 = v159 + 28;
LABEL_392:
                *v21 = v161;
              }

              else
              {
                if (v158 == -1)
                {
                  v161 = v159 + 24;
                  goto LABEL_392;
                }

                *v21 = v159 + 30;
                v21[1] = BYTE1(v343);
                v21[2] = v343;
                v160 = v21 + 3;
              }

LABEL_554:
              v22 = v325;
              if (v23 && v151 >= 128)
              {
                v222 = v24;
                cstdlib_memcpy(v160, &__dst, v151 & 7);
                v24 = v222;
                v23 = v327;
                v166 = &v160[v151 & 7];
                if (v152 < 0)
                {
                  goto LABEL_560;
                }

LABEL_559:
                *v166++ = v152;
              }

              else
              {
                *v160 = v151;
                v166 = v160 + 1;
                if ((v152 & 0x80000000) == 0)
                {
                  goto LABEL_559;
                }
              }

LABEL_560:
              if (v140 == 43)
              {
                v223 = v342;
                v224 = v166 - v342;
                v225 = v13;
                v226 = v24;
                cstdlib_memmove(v342 + 3, v342, v166 - v342);
                v24 = v226;
                v13 = v225;
                v23 = v327;
                *v223 = 74;
                v166[3] = 66;
                v166[4] = (v224 + 3) >> 8;
                v166[5] = v224 + 3;
                v21 = v166 + 6;
                *(v342 + 1) = bswap32(v224 + 3) >> 16;
              }

              else
              {
                v21 = v166;
              }

LABEL_563:
              v20 = v330;
              v19 = v21;
              *(a12 + 72) |= v321 << 9;
              v21 = 0;
              goto LABEL_564;
            }

            *v21 = v150 | 0x20;
            v21[1] = BYTE5(v343);
            v21[2] = BYTE4(v343);
            v160 = v21 + 3;
            if ((v343 & 0x80000000) != 0)
            {
              if (v23 && v151 >= 128)
              {
                v169 = v24;
                cstdlib_memcpy(v160, &__dst, v151 & 7);
                v24 = v169;
                v23 = v327;
                v170 = &v160[v151 & 7];
              }

              else
              {
                v21[3] = v151;
                if (v152 < 0)
                {
                  v170 = v21 + 4;
                }

                else
                {
                  v170 = v21 + 5;
                  v21[4] = v152;
                }
              }

              *v170 = v159 + 24;
              v160 = v170 + 1;
              goto LABEL_554;
            }

            if (v343 == HIDWORD(v343))
            {
              goto LABEL_554;
            }

            if (v23 && v151 >= 128)
            {
              v162 = v24;
              cstdlib_memcpy(v160, &__dst, v151 & 7);
              v24 = v162;
              v23 = v327;
              v163 = &v160[v151 & 7];
              if (v152 < 0)
              {
                goto LABEL_484;
              }

LABEL_483:
              *v163++ = v152;
            }

            else
            {
              v163 = v21 + 4;
              v21[3] = v151;
              if ((v152 & 0x80000000) == 0)
              {
                goto LABEL_483;
              }
            }

LABEL_484:
            LODWORD(v343) = v343 - HIDWORD(v343);
            *v163 = v159 + 30;
            v163[1] = BYTE1(v343);
            v163[2] = v343;
            v160 = v163 + 3;
            goto LABEL_554;
          }

          if (v158 != 1)
          {
            if (v158 == -1)
            {
              *v21 = v159 + 26;
              v160 = v21 + 1;
            }

            else
            {
              *v17 = v159 + 30;
              v17[1] = (v343 - 1) >> 8;
              v17[2] = v343 - 1;
              v160 = v17 + 3;
            }

            goto LABEL_554;
          }

          v21 = v17;
        }

LABEL_394:
        v22 = v325;
        goto LABEL_563;
      }

      if (v142 == 23)
      {
        v151 = v21[1];
        v152 = -1;
        v150 = 9;
        goto LABEL_350;
      }

      if (v142 <= 0xF)
      {
        v150 = 18;
        v151 = v142;
        goto LABEL_347;
      }

      if (v142 - 59 <= 3)
      {
        v164 = v343;
        if (!v343)
        {
          goto LABEL_394;
        }

        if (v343 == 1)
        {
          if (HIDWORD(v343))
          {
            goto LABEL_371;
          }

          v213 = v141 + 55;
LABEL_582:
          *v17 = v213;
          v166 = v17 + 1;
        }

        else
        {
          *(a12 + 76) = 1;
          if (v164 == -1 && !HIDWORD(v343))
          {
            v213 = v141 + 51;
            goto LABEL_582;
          }

          if (v164 == -1 && HIDWORD(v343) == 1)
          {
            v213 = v141 + 53;
            goto LABEL_582;
          }

LABEL_371:
          *v17 = v141 + 57;
          v17[1] = BYTE5(v343);
          v17[2] = BYTE4(v343);
          v165 = v343;
          if (v343 == -1)
          {
            v165 = 0;
          }

          LODWORD(v343) = v165;
          v17[3] = BYTE1(v165);
          v17[4] = v343;
          v166 = v17 + 5;
        }

        v22 = v325;
        goto LABEL_560;
      }

      if (v142 <= 0x4F && (v142 & 0xFE) != 0x4A)
      {
        v287 = "internal error: unexpected repeat";
        goto LABEL_707;
      }

      v171 = v343;
      if (v343 == -1)
      {
        v199 = v21;
        do
        {
          v199 += __rev16(*(v199 + 1));
        }

        while (*v199 != 66);
        v172 = v199 - v17;
      }

      else
      {
        v172 = 0;
      }

      v200 = v17 - v21;
      v201 = HIDWORD(v343);
      if (HIDWORD(v343))
      {
        v166 = v17;
        if (SHIDWORD(v343) > 1)
        {
          v297 = v172;
          __srca = v140;
          v202 = v13;
          v203 = v24;
          v204 = v329;
          if (v329 < 0 && v312)
          {
            v204 = v331;
          }

          v329 = v204;
          v206 = v200;
          v207 = 1;
          v166 = v17;
          do
          {
            cstdlib_memcpy(v166, v21, v206);
            v166 += v206;
            ++v207;
            v201 = HIDWORD(v343);
          }

          while (v207 < SHIDWORD(v343));
          v171 = v343;
          v23 = v327;
          v24 = v203;
          v13 = v202;
          v140 = __srca;
          v172 = v297;
          v200 = v17 - v21;
        }

        v208 = 0;
        if (v171 >= 1)
        {
          v171 -= v201;
          LODWORD(v343) = v171;
        }

        v214 = v21;
        if ((v171 & 0x80000000) == 0)
        {
          goto LABEL_538;
        }

LABEL_586:
        v166[v172] = v141 + 67;
        v22 = v325;
        goto LABEL_560;
      }

      if (!v343)
      {
        goto LABEL_394;
      }

      v298 = v172;
      __srcb = v140;
      v209 = v24;
      *v17 = 0;
      v210 = v200;
      if (v171 > 1)
      {
        adjust_recurse(v21, 4, v311, a12);
        v211 = (v21 + 4);
        cstdlib_memmove(v21 + 4, v21, v210);
        v166 = v17 + 4;
        v208 = (v21 + 2);
        *(v21 + 1) = 80;
        v21[3] = 0;
      }

      else
      {
        adjust_recurse(v21, 1, v311, a12);
        v211 = (v21 + 1);
        cstdlib_memmove(v21 + 1, v21, v210);
        v208 = 0;
        v166 = v17 + 1;
      }

      *v21 = v141 + 77;
      v171 = v343 - 1;
      LODWORD(v343) = v171;
      v23 = v327;
      v24 = v209;
      v140 = __srcb;
      v172 = v298;
      v200 = v17 - v21;
      v214 = v211;
      v13 = a3;
      if (v171 < 0)
      {
        goto LABEL_586;
      }

LABEL_538:
      if (v171)
      {
        v316 = v25;
        v299 = v24;
        v215 = v200;
        *v166 = v141 + 77;
        v216 = v166 + 1;
        v217 = v171 - 1;
        if (v171 != 1)
        {
          v218 = v166 + 2;
          v219 = v17 - v21 + 4;
          do
          {
            v220 = v218 - v208;
            if (!v208)
            {
              v220 = 0;
            }

            v216[1] = HIBYTE(v220);
            v208 = (v216 + 1);
            *v216 = 80;
            v216[2] = v220;
            v221 = v214;
            cstdlib_memcpy(v216 + 3, v214, v215);
            v214 = v221;
            v216 += v215 + 4;
            *(v216 - 1) = v141 + 77;
            v218 += v219;
            --v217;
          }

          while (v217);
          v208 = &v216[-v215 - 3];
          v13 = a3;
        }

        cstdlib_memcpy(v216, v214, v215);
        v166 = &v216[v215];
        v22 = v325;
        v24 = v299;
        v25 = v316;
        if (!v208)
        {
          goto LABEL_568;
        }

LABEL_566:
        v227 = v166 + 1;
        do
        {
          v228 = v227 - v208;
          v229 = &v166[-(v227 - v208)];
          v230 = *(v229 + 1);
          *v166 = 66;
          v231 = __rev16(v230);
          v166[1] = (v227 - v208) >> 8;
          v208 -= v231;
          v166[2] = v228;
          v166 += 3;
          v229[1] = HIBYTE(v228);
          v229[2] = v228;
          v227 += 3;
        }

        while (v231);
      }

      else
      {
        v22 = v325;
        if (v208)
        {
          goto LABEL_566;
        }
      }

LABEL_568:
      v23 = v327;
      goto LABEL_560;
    }

    if (v26 == 94)
    {
      v21 = 0;
      v62 = v331;
      if (v331 == -2)
      {
        v63 = -1;
      }

      else
      {
        v63 = v331;
      }

      if ((v22 & 2) != 0)
      {
        v62 = v63;
      }

      v331 = v62;
      v51 = 19;
      goto LABEL_116;
    }

    if (v26 == 123)
    {
      if (!v27)
      {
        v344 = 123;
        goto LABEL_36;
      }

      v52 = v24;
      repeat_counts_0 = read_repeat_counts_0(v341 + 1, &v343 + 1, &v343, a6);
      v23 = v327;
      v341 = repeat_counts_0;
      v24 = v52;
      if (*a6)
      {
        goto LABEL_708;
      }

      goto LABEL_306;
    }

    if (v26 != 124)
    {
      goto LABEL_418;
    }

LABEL_673:
    v271 = v22;
    v272 = v341;
    v273 = *v306;
    v275 = v304 < 0 || v304 == v331;
    if (v305 >= 0)
    {
      v276 = v305;
    }

    else
    {
      v276 = v304;
    }

    v277 = !v275;
    if (v275)
    {
      v278 = v304;
    }

    else
    {
      v278 = -1;
    }

    if (!v277)
    {
      v276 = v305;
    }

    if (v331 > -1 && (v278 & v329) < 0)
    {
      v280 = v331;
    }

    else
    {
      v280 = v329;
    }

    v281 = v280 ^ v276;
    v282 = v280 | v276;
    if ((v281 & 0xFFFFFDFF) != 0)
    {
      v282 = -1;
    }

    if (v273 == 65)
    {
      v283 = v278;
    }

    else
    {
      v283 = v331;
    }

    if (v273 == 65)
    {
      v284 = v282;
    }

    else
    {
      v284 = v329;
    }

    v304 = v283;
    v305 = v284;
    v12 = a7;
    v14 = a2;
    v15 = v303;
    if (!a7)
    {
LABEL_704:
      if (*v272 != 124)
      {
        v289 = v306;
        v290 = v17 - v306;
        do
        {
          v291 = __rev16(*(v289 + 1));
          *(v289 + 1) = bswap32(v290) >> 16;
          v289 -= v291;
          v290 = v291;
        }

        while (v291);
        *v17 = 66;
        v17[1] = (v17 - v294) >> 8;
        v17[2] = v17 - v294;
        v292 = (v17 + 3);
        if ((v271 & 7) != a2 && *v272 == 41)
        {
          v17[3] = 18;
          v292 = (v17 + 5);
          v17[4] = a2;
        }

        *a4 = v292;
        *a5 = v272;
        *a9 = v304;
        result = 1;
        *a10 = v305;
        return result;
      }

      *v17 = 65;
      v17[1] = (v17 - v306) >> 8;
      v17[2] = v17 - v306;
      v335 = v17;
      v18 = v272 + 1;
      v306 = v17;
      a1 = v271;
      continue;
    }

    break;
  }

  *v17 = 0;
  fixedlength = find_fixedlength(v306, v271);
  v286 = fixedlength;
  if ((fixedlength & 0x80000000) == 0)
  {
    *v303 = bswap32(fixedlength) >> 16;
    goto LABEL_704;
  }

  result = 0;
  if (v286 == -2)
  {
    v293 = "\\C not allowed in lookbehind assertion";
  }

  else
  {
    v293 = "lookbehind assertion is not fixed length";
  }

  *a6 = v293;
  *a5 = v272;
  return result;
}

uint64_t is_anchored_0(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v6 = a4 & a3;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 2, 0);
    if (*significant_code_0 < 0x51u)
    {
      v8 = *significant_code_0 & 0x7E;
      if (v8 != 74 && *significant_code_0 != 80 && *significant_code_0 != 69)
      {
        break;
      }
    }

    if (!is_anchored_0())
    {
      return 0;
    }

LABEL_7:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }

  if (v8 != 42)
  {
    if ((*significant_code_0 - 3) <= 0xFDu)
    {
      v9 = 0;
      if (*significant_code_0 != 19 || (*a2 & 2) != 0)
      {
        return v9;
      }
    }

    goto LABEL_7;
  }

  if ((*a2 & 4) != 0)
  {
    v9 = 0;
    if (v6 || significant_code_0[1] != 11)
    {
      return v9;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t find_firstassertedchar(uint64_t a1, _DWORD *a2, int a3)
{
  v6 = 0xFFFFFFFFLL;
  do
  {
    significant_code_0 = first_significant_code_0((a1 + 3), a2, 1, 1);
    v8 = *significant_code_0;
    v9 = v8 >= 0x50 ? 80 : *significant_code_0;
    result = 0xFFFFFFFFLL;
    v11 = (v9 - 21);
    if (v11 > 0x3B)
    {
      break;
    }

    if (((1 << v11) & 0x63) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v11) & 0x861000000000000) == 0)
    {
      if (v11 != 11)
      {
        return result;
      }

      significant_code_0 += 2;
LABEL_15:
      if (!a3)
      {
        return result;
      }

      v13 = significant_code_0[1];
      if ((v6 & 0x80000000) != 0)
      {
        v6 = v13 & 0xFFFFFEFF | ((*a2 & 1) << 8);
      }

      else if (v6 != v13)
      {
        return result;
      }

      goto LABEL_20;
    }

    firstassertedchar = find_firstassertedchar(significant_code_0, a2, v8 == 69);
    if ((firstassertedchar & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if ((v6 & 0x80000000) != 0)
    {
      v6 = firstassertedchar;
    }

    else if (v6 != firstassertedchar)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_20:
    a1 += __rev16(*(a1 + 1));
    result = v6;
  }

  while (*a1 == 65);
  return result;
}

uint64_t is_startline_0(uint64_t a1, int a2, int a3)
{
  v4 = a3 & a2;
  while (1)
  {
    significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 0);
    v6 = *significant_code_0;
    if (*significant_code_0 >= 0x51u || (v6 & 0x7E) == 0x4A || *significant_code_0 == 80 || *significant_code_0 == 69)
    {
      if (!is_startline_0())
      {
        return 0;
      }

      goto LABEL_7;
    }

    if ((v6 & 0x7E) == 0x2A)
    {
      v7 = 0;
      if (v4 || significant_code_0[1] != 11)
      {
        return v7;
      }

      goto LABEL_7;
    }

    if (*significant_code_0 != 19)
    {
      return 0;
    }

LABEL_7:
    a1 += __rev16(*(a1 + 1));
    if (*a1 != 65)
    {
      return 1;
    }
  }
}

uint64_t nuance_pcre_exec2(void *a1, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, unsigned int a8, _DWORD *a9, int a10, uint64_t a11)
{
  v93 = *MEMORY[0x277D85DE8];
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0)
  {
    return 4294967280;
  }

  pcre_clearMem(a1);
  if ((a8 & 0xFFFF5A6F) != 0)
  {
    return 4294967293;
  }

  result = 4294967294;
  if (a3 && a5 && (a9 || a10 <= 0))
  {
    if (a10 < 0)
    {
      return 4294967281;
    }

    v21 = 0uLL;
    v89 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v84 = 0u;
    memset(v85, 0, sizeof(v85));
    v81 = 0;
    *__b = 0u;
    v82 = 10000000;
    v90 = 0uLL;
    v22 = *(a3 + 32);
    if (!a4)
    {
      v24 = 0;
      goto LABEL_21;
    }

    v23 = *a4;
    if (*a4)
    {
      v24 = *(a4 + 1);
    }

    else
    {
      v24 = 0;
    }

    if ((v23 & 2) != 0)
    {
      v82 = *(a4 + 2);
      if ((v23 & 4) == 0)
      {
LABEL_19:
        if ((v23 & 8) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v23 & 4) == 0)
    {
      goto LABEL_19;
    }

    *&v90 = *(a4 + 3);
    if ((v23 & 8) == 0)
    {
LABEL_21:
      v92 = 0;
      memset(v91, 0, sizeof(v91));
      memset(v80, 0, sizeof(v80));
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v25 = &pcre_default_tables;
      }

      if (*a3 == 1346589253)
      {
        v26 = a3;
      }

      else
      {
        v75 = v25;
        v27 = v24;
        v28 = try_flipped(a3, v80, v24, v91);
        if (!v28)
        {
          return 4294967292;
        }

        v26 = v28;
        if (v27)
        {
          v24 = v91;
        }

        else
        {
          v24 = 0;
        }

        v25 = v75;
      }

      v29 = *(v26 + 8);
      *&v86 = a3 + *(v26 + 24) + *(v26 + 26) * *(v26 + 28);
      *(&v86 + 1) = a5;
      LODWORD(v89) = a7;
      v30 = &a5[a6];
      *&v87 = v30;
      v21.i64[0] = __PAIR64__(v29, a8);
      v31.i64[0] = 0x100000001;
      v31.i64[1] = 0x100000001;
      v32 = vandq_s8(vshlq_u32(vzip1q_s32(v21, v21), xmmword_26ED34960), v31);
      *(v85 + 4) = v32;
      DWORD1(v85[1]) = (a8 >> 10) & 1;
      *(&v85[1] + 1) = (a8 & 0xFFFF8000) != 0;
      *(&v89 + 1) = 0;
      *&v84 = v25;
      *(&v84 + 1) = v25 + 832;
      if (a8 >= 0x8000 && (v29 & 0x4000000) != 0)
      {
        return 4294967283;
      }

      v79 = v29;
      v33 = &a5[a7];
      if ((a8 & 0x2000) == 0 && v32.i32[2])
      {
        v72 = v24;
        v76 = v25;
        if ((valid_utf8(a5, a6) & 0x80000000) == 0)
        {
          return 4294967286;
        }

        v24 = v72;
        v25 = v76;
        if (a7 >= 1 && a7 < a6 && *v33 < -64)
        {
          return 4294967285;
        }
      }

      v34 = *(v26 + 18);
      v35 = a10 / 3u;
      if (*(v26 + 18))
      {
        v36 = v35 > v34;
      }

      else
      {
        v36 = 1;
      }

      v37 = v36;
      v66 = v37;
      if (v36)
      {
        LODWORD(v38) = 3 * v35;
        __b[0] = a9;
        v39 = a9;
      }

      else
      {
        v73 = v24;
        v77 = v25;
        v38 = 3 * v34 + 3;
        v39 = heap_Calloc(*(*a1 + 8), 1, 4 * v38);
        __b[0] = v39;
        if (!v39)
        {
          return 4294967290;
        }

        v24 = v73;
        v25 = v77;
      }

      v74 = v79 | a8;
      LODWORD(__b[1]) = v38;
      HIDWORD(__b[1]) = (1431655766 * (2 * v38)) >> 32;
      LODWORD(v85[0]) = 0;
      HIDWORD(v88) = -1;
      v40 = 2 * *(v26 + 16) + 2;
      if (v40 > a10)
      {
        v40 = v38;
      }

      v78 = v40;
      if (v39 && v40 >= 4)
      {
        v41 = &v39[4 * v38];
        v42 = &v41[-4 * (v40 >> 1) + 4];
        v43 = v41 - 4;
        do
        {
          *v43 = -1;
          v43 -= 4;
        }

        while (v43 >= v42);
      }

      v44 = *(v26 + 8);
      if (((v79 | a8) & 0x10) != 0)
      {
        v45 = 0;
      }

      else
      {
        if ((v44 & 0x40000000) != 0)
        {
          v46 = *(v26 + 20);
          if ((*(v26 + 20) & 0x100) != 0)
          {
            v71 = 0;
            v45 = 0;
            LODWORD(v46) = *(v84 + v46);
            goto LABEL_73;
          }

          v45 = 0;
          goto LABEL_72;
        }

        v45 = 0;
        LODWORD(v46) = -1;
        v71 = 1;
        if ((v79 & 0x10000000) != 0 || !v24)
        {
LABEL_73:
          v47 = v33 - 1;
          v48 = a6;
          if ((v44 & 0x20000000) != 0)
          {
            v51 = *(v26 + 22);
            v50 = v51;
            v49 = v25[v51 + 256];
            v67 = (v51 & 0x100) == 0;
          }

          else
          {
            v49 = -1;
            v67 = 1;
            v50 = -1;
          }

          v68 = a7;
          v69 = v46 >= 0;
          v52 = &a5[v48];
          v70 = 4 * v78;
          while (1)
          {
            if (__b[0])
            {
              v53 = v78 < 1;
            }

            else
            {
              v53 = 1;
            }

            if (!v53)
            {
              v54 = __b[0] + v70;
              if (__b[0] + v70 <= __b[0] + 4)
              {
                v54 = __b[0] + 4;
              }

              memset(__b[0], 255, (&v54[~__b[0]] & 0xFFFFFFFFFFFFFFFCLL) + 4);
            }

            if ((v46 & 0x80000000) == 0)
            {
              break;
            }

            if ((v79 & 0x10000000) != 0)
            {
              if (v33 > *(&v86 + 1) + v68 && v33 < v30)
              {
                v62 = v52 - v33;
                while (*(v33 - 1) != 10)
                {
                  ++v33;
                  if (!--v62)
                  {
LABEL_125:
                    v56 = v52;
                    if ((v50 & 0x80000000) == 0)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_126;
                  }
                }
              }

              goto LABEL_106;
            }

            if (!v45)
            {
              goto LABEL_106;
            }

            do
            {
              v56 = v33;
              if (v33 >= v30)
              {
                break;
              }

              ++v33;
            }

            while (((v45[*v56 >> 3] >> (*v56 & 7)) & 1) == 0);
LABEL_107:
            if ((v50 & 0x80000000) == 0)
            {
LABEL_108:
              if (v30 - v56 <= 999 && !DWORD2(v85[1]))
              {
                v59 = &v56[v69];
                if (&v56[v69] > v47)
                {
                  if (v67)
                  {
                    do
                    {
                      v47 = v59;
                      if (v59 >= v30)
                      {
                        break;
                      }

                      ++v59;
                    }

                    while (v50 != *v47);
                  }

                  else
                  {
                    do
                    {
                      v47 = v59;
                      if (v59 >= v30)
                      {
                        break;
                      }

                      ++v59;
                      v60 = *v47;
                    }

                    while (v50 != v60 && v49 != v60);
                  }

                  if (v47 >= v30)
                  {
                    goto LABEL_135;
                  }
                }
              }
            }

LABEL_126:
            *(&v87 + 1) = v56;
            v81 = 0;
            result = match_2(a1, v56, v86, &v81, v79 & 7, a11, v18, v19);
            if (result)
            {
              if (result == 1)
              {
                if ((v66 & 1) == 0)
                {
                  if (a10 >= 4)
                  {
                    cstdlib_memcpy(a9 + 2, __b[0] + 8, 4 * (a10 - 2));
                  }

                  if (SDWORD2(v88) > a10)
                  {
                    LODWORD(v85[0]) = 1;
                  }

                  heap_Free(*(*a1 + 8), __b[0]);
                }

                if (LODWORD(v85[0]))
                {
                  result = 0;
                }

                else
                {
                  result = (SDWORD2(v88) / 2);
                }

                if (a10 >= 2)
                {
                  v65 = v88 - DWORD2(v86);
                  *a9 = v56 - DWORD2(v86);
                  a9[1] = v65;
                }

                else
                {
                  return 0;
                }
              }

              return result;
            }

            v33 = v56 + 1;
            if (HIDWORD(v85[0]) && v33 < v30)
            {
              v63 = v52 - 1 - v56;
              while ((*v33 & 0xC0) == 0x80)
              {
                ++v33;
                if (!--v63)
                {
                  v33 = v30;
                  break;
                }
              }
            }

            if ((v74 & 0x10) != 0 || v33 > v30)
            {
LABEL_135:
              if ((v66 & 1) == 0)
              {
                heap_Free(*(*a1 + 8), __b[0]);
              }

              if (HIDWORD(v85[1]))
              {
                v64 = DWORD2(v85[1]) == 0;
              }

              else
              {
                v64 = 1;
              }

              if (v64)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return 4294967284;
              }
            }
          }

          if (v71)
          {
            if (v33 < v30)
            {
              v55 = v52 - v33;
              while (v46 != *v33)
              {
                ++v33;
                if (!--v55)
                {
                  goto LABEL_125;
                }
              }
            }
          }

          else if (v33 < v30)
          {
            v57 = v52 - v33;
            while (v46 != *(v84 + *v33))
            {
              ++v33;
              if (!--v57)
              {
                goto LABEL_125;
              }
            }
          }

LABEL_106:
          v56 = v33;
          goto LABEL_107;
        }

        if (*(v24 + 4))
        {
          v45 = v24 + 8;
        }

        else
        {
          v45 = 0;
        }
      }

      LODWORD(v46) = -1;
LABEL_72:
      v71 = 1;
      goto LABEL_73;
    }

LABEL_20:
    v22 = *(a4 + 4);
    goto LABEL_21;
  }

  return result;
}