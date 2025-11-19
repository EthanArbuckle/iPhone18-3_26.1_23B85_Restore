uint64_t textpar_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  if (v3)
  {
    datac_ObjClose(v3);
    a1[2] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    extdata_ObjClose(v4);
    a1[11] = 0;
  }

  v5 = a1[10];
  if (v5)
  {
    escseqs_ObjClose(v5);
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(a1[12], a1[13], NullHandle, v7))
  {
    nuance_pcre_DeInit(a1[12], a1[13]);
    nuance_pcre_ObjClose(a1[12], a1[13]);
    a1[12] = 0;
    *(a1 + 26) = 0;
  }

  ppParam_ClearAllPPParameters(v2);
  heap_Free(*(v2 + 8), a1);
  return 0;
}

uint64_t textpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2368741383;
  v12 = 0;
  __s1 = 0;
  if (a3)
  {
    v11 = 0;
    if ((InitRsrcFunction(a1, a2, &v12) & 0x80000000) == 0)
    {
      v7 = v12;
      *a3 = v12;
      if ((paramc_ParamGetStr(*(v7 + 40), "component_stop_not_reset", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
      {
        escseqs_SetPosInOut(a3[10], 0, 0);
        paramc_ParamSetStr(*(v12 + 40), "component_stop_not_reset", "");
      }

      v8 = extdata_FreeData(a3[11]);
      if ((v8 & 0x80000000) != 0 || (escseqs_GetPosInOut(a3[10], &v11 + 1, &v11), a3[10]) && (v8 = escseqs_ObjClose(a3[10]), (v8 & 0x80000000) != 0))
      {
        v3 = v8;
      }

      else
      {
        v3 = escseqs_ObjOpen(*(a3[1] + 8), a1, a2, a3[12], a3[13], a3 + 10);
        if ((v3 & 0x80000000) == 0)
        {
          escseqs_SetPosInOut(a3[10], SHIDWORD(v11), v11);
          return v3;
        }
      }

      textpar_ObjClose(a3);
    }
  }

  return v3;
}

uint64_t textpar_ProcessStart(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  if (!a1)
  {
    return 2368741383;
  }

  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 112) = log_GetLogLevel(*(*a1 + 32)) > 4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  result = escseqs_ProcessStart(*(a1 + 80), (a1 + 76));
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*a1 + 40), "ppspellpausevalue", *(a1 + 76));
    if ((result & 0x80000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        result = datac_RequestBlock(*(a1 + 16), aMETA[v5], 1u, &v7);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v5 += 3;
        v6 = v7;
        *(v7 + 16) = 0;
        *(v6 + 20) = 0;
        if (v5 == 12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t textpar_Process(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 116) || (*(a1 + 56) = 0, *(a1 + 64) = 0, *(a1 + 72) = 0, v2 = escseqs_ProcessStart(*(a1 + 80), (a1 + 76)), (v2 & 0x80000000) == 0))
    {
      v60 = 0;
      if (*(a1 + 56))
      {
        for (i = 0; i != 3; ++i)
        {
          v4 = datac_RequestBlock(*(a1 + 16), aTAG[i], 1u, &v60);
          if (i != 2 && (v4 & 0x80000000) == 0)
          {
            *(v60 + 16) = 0;
          }
        }

        goto LABEL_23;
      }

      v2 = datac_RequestBlock(*(a1 + 16), 1011, 1u, &v60);
      if ((v2 & 0x80000000) == 0)
      {
        v6 = v60;
        if (*(v60 + 16) >= 2u)
        {
          v7 = (*(v60 + 8) + 112);
          v8 = 1;
          do
          {
            if (*v7)
            {
              heap_Free(*(*a1 + 8), *v7);
              *v7 = 0;
              v6 = v60;
            }

            ++v8;
            v7 += 8;
          }

          while (v8 < *(v6 + 16));
        }

        for (j = 0; j != 4; ++j)
        {
          v10 = datac_RequestBlock(*(a1 + 16), aAllTAG[j], 1u, &v60);
          if (j != 3 && (v10 & 0x80000000) == 0)
          {
            *(v60 + 16) = 0;
          }
        }

LABEL_23:
        v2 = textpar_CheckForEOF(a1, 0, 0);
        if ((v2 & 0x80000000) == 0)
        {
          v14 = "entering textpar_loc_GetTextBlock(bBlockHasBeenRead=%d,bBlockMoreTextRequest=%d,bMoreTextRequest=%d)";
          v15 = "AFTER textpar_loc_GetTextBlock";
          v16 = "BEFORE escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          v17 = "BEFORE escseqs_Process TEXTPAR_OUT_TXT_BLOCK";
          v18 = "AFTER escseqs_Process TEXTPAR_OUT_MRK_BLOCK";
          while (1)
          {
            v60 = 0;
            log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, v14, v11, v12, v13, *(a1 + 56));
            if (!*(a1 + 56) || !*(a1 + 72) && *(a1 + 68) == 1)
            {
              __n = 0;
              v19 = *(a1 + 60);
              v2 = (*(*(a1 + 24) + 88))(*(a1 + 32), *(a1 + 40), a1 + 48, a1 + 60);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              *(a1 + 56) = 1;
              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfReadDirectStart returns cTextBytesInStream %u bytes", v20, v21, v22, *(a1 + 60));
              UInt = paramc_ParamGetUInt(*(*a1 + 40), "ppresetlen", &__n);
              if ((UInt & 0x1FFF) == 0x14)
              {
                v27 = 0;
                LODWORD(__n) = 0;
              }

              else
              {
                v5 = UInt;
                if ((UInt & 0x80000000) != 0)
                {
                  return v5;
                }

                v27 = __n;
              }

              log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "SSFT_PARAMC_PP_RESETLEN len is %u bytes", v24, v25, v26, v27);
              if (__n)
              {
                v2 = (*(*(a1 + 24) + 136))(*(a1 + 32), *(a1 + 40), &__n + 4);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "pfGetPosition is %u bytes - sync marker position", v28, v29, v30, HIDWORD(__n));
                if (!*(a1 + 68))
                {
                  v2 = escseqs_SetMarkerSyncPos(*(a1 + 80), SHIDWORD(__n));
                  if ((v2 & 0x80000000) != 0)
                  {
                    return v2;
                  }
                }
              }

              else
              {
                v2 = escseqs_SetReset(*(a1 + 80));
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }
              }

              if (*(a1 + 68) == 1 && v19 && v19 == *(a1 + 60))
              {
                *(a1 + 72) = 1;
              }

              else
              {
                *(a1 + 68) = 0;
              }
            }

            v2 = datac_RequestBlock(*(a1 + 16), 1000, 1u, &v60);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            v31 = *(a1 + 60);
            if (*(v60 + 20))
            {
              break;
            }

            v32 = *(a1 + 64);
            v33 = v31 - v32;
            if (v31 == v32)
            {
              if (!*(a1 + 72) && !*(a1 + 68))
              {
                *(a1 + 68) = 1;
                if (!v31)
                {
                  return 2368743424;
                }

                if (!*(a1 + 116))
                {
                  return 2368743424;
                }

                v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40));
                if ((v2 & 0x80000000) == 0)
                {
                  return 2368743424;
                }

                return v2;
              }

              *(v60 + 20) = 1;
            }

            else
            {
              v34 = v14;
              v35 = v18;
              v36 = v17;
              v37 = v16;
              v38 = v15;
              if (*(a1 + 116))
              {
                v39 = v31 - v32;
              }

              else
              {
                v39 = 128;
              }

              v2 = datac_RequestBlock(*(a1 + 16), 1000, v39, &v60);
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }

              v40 = v60;
              if (*(v60 + 16))
              {
                v2 = datac_RequestBlock(*(a1 + 16), 1000, (*(v60 + 16) + v39), &v60);
                if ((v2 & 0x80000000) != 0)
                {
                  return v2;
                }

                v40 = v60;
              }

              v41 = *(v40 + 8);
              if (v33 <= v39)
              {
                HIDWORD(__n) = v33;
              }

              else
              {
                HIDWORD(__n) = v39;
                utf8_GetPreviousValidUtf8Offset(*(a1 + 48) + *(a1 + 64), &__n + 1);
                log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "adjust bytes read to align with character boundary (IN=%d, OUT=%d)", v42, v43, v44, v39);
                v40 = v60;
                v33 = HIDWORD(__n);
              }

              v15 = v38;
              cstdlib_memcpy((v41 + *(v40 + 16)), (*(a1 + 48) + *(a1 + 64)), v33);
              if (!utf8_CheckValid(v41 + *(v60 + 16), HIDWORD(__n)))
              {
                log_OutPublic(*(*a1 + 32), "PP_TEXT_PARSER", 1933, "%s%s", v45, v46, v47, v48, "Invalid UTF-8 character sequence discovered");
                return 2368741637;
              }

              v16 = v37;
              v49 = WORD2(__n);
              *(a1 + 64) += HIDWORD(__n);
              *(v60 + 16) += v49;
              v17 = v36;
              v18 = v35;
              v14 = v34;
            }

            if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)) && !*(a1 + 68))
            {
              log_OutTraceTuningDataBinary(*(*a1 + 32), 32, "", "text/plain;charset=utf-8", *(a1 + 48), *(a1 + 60));
            }

            if (*(a1 + 116) == 1)
            {
              *(*(a1 + 48) + *(a1 + 64)) = 0;
              v2 = paramc_ParamSetStr(*(*a1 + 40), "rettt_rewritten_text", *(a1 + 48));
              if ((v2 & 0x80000000) != 0)
              {
                return v2;
              }
            }

            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1000, v15);
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v16, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, v17);
            v5 = escseqs_Process(*(a1 + 80), *(a1 + 16));
            marker_TraceMrk(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1011, v18, 0, 0, 0);
            marker_TraceTxt(211, "PP_TEXT_PARSER", *(a1 + 112), *a1, *(a1 + 16), 1010, "AFTER escseqs_Process TEXTPAR_OUT_TXT_BLOCK");
            if ((v5 & 0x1FFF) != 9)
            {
              if ((v5 & 0x80000000) != 0)
              {
                return v5;
              }

              v60 = 0;
              v2 = datac_RequestBlock(*(a1 + 16), 1010, 1u, &v60);
              if ((v2 & 0x80000000) == 0)
              {
                if (*(v60 + 16) && *(a1 + 112) == 1)
                {
                  if (*(v60 + 16) >= 0x400u)
                  {
                    v50 = 1024;
                  }

                  else
                  {
                    v50 = *(v60 + 16);
                  }

                  v51 = heap_Calloc(*(*a1 + 8), 1, (v50 + 1));
                  if (!v51)
                  {
                    return 2368741386;
                  }

                  v52 = v51;
                  cstdlib_strncpy(v51, *(v60 + 8), v50);
                  *(v52 + v50) = 0;
                  log_OutText(*(*a1 + 32), "PP_TEXT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", v53, v54, v55, 1010);
                  heap_Free(*(*a1 + 8), v52);
                }

                v56 = *(a1 + 16);
                v60 = 0;
                v2 = datac_RequestBlock(v56, 1011, 1u, &v60);
                if ((v2 & 0x80000000) == 0)
                {
                  v2 = marker_loc_FilterSyncMarkers(v60);
                  if ((v2 & 0x80000000) == 0)
                  {
                    if (!*(a1 + 116))
                    {
                      return 0;
                    }

                    v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40), *(a1 + 60));
                    if ((v2 & 0x80000000) == 0)
                    {
                      return 0;
                    }
                  }
                }
              }

              return v2;
            }
          }

          if (!v31 || (v2 = (*(*(a1 + 24) + 96))(*(a1 + 32), *(a1 + 40)), (v2 & 0x80000000) == 0))
          {
            v57 = ppParam_ClearAllPPParameters(*a1);
            if (v57 < 0)
            {
              return v57;
            }

            else
            {
              return 2368741399;
            }
          }
        }
      }
    }

    return v2;
  }

  return 2368741383;
}

uint64_t pp_text_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2368741377;
  }

  result = 0;
  *a2 = &IPPTextParser;
  return result;
}

uint64_t pp_text_parser_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2368741383;
  v11 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v8 = heap_Calloc(*(v11 + 8), 1, 16);
      if (v8)
      {
        v9 = v8;
        *v8 = v11;
        v3 = textpar_ClassOpen(a1, a2, (v8 + 8));
        if ((v3 & 0x80000000) != 0)
        {
          pp_text_parser_ClassClose(*a3, *(a3 + 8));
        }

        else
        {
          *a3 = v9;
          *(a3 + 8) = 29953;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ClassClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 29953, 16);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  v4 = *a1;
  v5 = textpar_ClassClose(*(a1 + 8));
  if ((v5 & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    safeh_GetNullHandle();
  }

  return v5;
}

uint64_t pp_text_parser_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2368741383;
  v21 = 0;
  if (a5 && a1)
  {
    v10 = safeh_HandleCheck(a1, a2, 29953, 16);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    else if ((InitRsrcFunction(a3, a4, &v23) & 0x80000000) == 0)
    {
      v14 = v23;
      v15 = v23[4];
      if (v15)
      {
        log_OutText(v15, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjOpen", v11, v12, v13, v20);
        v14 = v23;
      }

      *a5 = 0;
      *(a5 + 8) = 0;
      v16 = heap_Alloc(v14[1], 96);
      if (v16)
      {
        v17 = v16;
        cstdlib_memset(v16, 0, 0x60uLL);
        *v17 = a3;
        *(v17 + 8) = a4;
        *(v17 + 88) = 0;
        *(v17 + 16) = a1;
        Object = objc_GetObject(v23[6], "SYNTHSTREAM", &v22);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        *(v17 + 24) = *(v22 + 8);
        *(v17 + 88) = 0;
        if ((paramc_ParamGetStr(v23[5], "clcpppipelinemode", &v21) & 0x80000000) == 0 && v21 && *v21)
        {
          *(v17 + 88) = 1;
        }

        Object = textpar_ObjOpen(*(a1 + 8), a3, a4, *(v17 + 24), (v17 + 80), *(v17 + 88));
        if ((Object & 0x80000000) != 0)
        {
LABEL_16:
          v5 = Object;
          pp_text_parser_ObjClose(v17, 24357);
        }

        else
        {
          v5 = 0;
          *a5 = v17;
          *(a5 + 8) = 24357;
        }
      }

      else
      {
        return 2368741386;
      }
    }
  }

  return v5;
}

uint64_t pp_text_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      textpar_ObjClose(v8);
    }

    v9 = v12;
    if (*(a1 + 24))
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_text_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2368741383;
  v13 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v13);
    if ((inited & 0x80000000) == 0)
    {
      v8 = inited;
      v9 = *(v13 + 32);
      if (v9)
      {
        log_OutText(v9, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ObjReopen", v5, v6, v7, v12);
      }

      v10 = *(a1 + 80);
      if (v10)
      {
        v3 = textpar_ObjReopen(*a1, *(a1 + 8), v10);
        if ((v3 & 0x80000000) != 0)
        {
          *(a1 + 80) = 0;
        }
      }

      else
      {
        return v8;
      }
    }
  }

  return v3;
}

uint64_t pp_text_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = 0;
  v7 = 2368741383;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v35) & 0x80000000) == 0)
  {
    v11 = *(v35 + 32);
    if (v11)
    {
      log_OutText(v11, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStart", v8, v9, v10, v33);
    }

    v12 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 0, a1 + 32);
    if ((v12 & 0x80000000) != 0)
    {
      v28 = v12;
      v34 = 0;
      if ((paramc_ParamGetStr(*(v35 + 40), "inputmimetype", &v34) & 0x80000000) == 0 && v34 && *v34)
      {
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1903, "%s%s", v29, v30, v31, v32, "mimeContentType");
        return 2368741643;
      }

      else
      {
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1900, 0, v29, v30, v31, v32, v33);
        return v28;
      }
    }

    else
    {
      v13 = (*(*(a1 + 24) + 64))(a3, a4, 211, "text/plain;charset=utf-8", 0, 2, a1 + 48);
      if ((v13 & 0x80000000) != 0)
      {
        v7 = v13;
        log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1901, "%s%s", v14, v15, v16, v17, "mimeType");
      }

      else
      {
        v18 = *(a1 + 24);
        v19 = *(v18 + 64);
        v20 = (*(v18 + 168))();
        v21 = v19(a3, a4, 211, "application/x-realspeak-int-markers-pp;version=4.0", v20, 1, a1 + 64);
        if ((v21 & 0x80000000) != 0)
        {
          v7 = v21;
          log_OutPublic(*(v35 + 32), "PP_TEXT_PARSER", 1902, 0, v22, v23, v24, v25, v33);
        }

        else
        {
          v26 = textpar_ProcessStart(*(a1 + 80), *(a1 + 32), *(a1 + 40));
          return v26 & (v26 >> 31);
        }
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_Process(_WORD **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2368741383;
  v24 = 0;
  v23 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1)
  {
    if (!a1[4])
    {
      return 2368741393;
    }

    v22 = 0;
    if ((InitRsrcFunction(*a1, a1[1], &v24) & 0x80000000) == 0)
    {
      v11 = *(v24 + 32);
      if (v11)
      {
        log_OutText(v11, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_Process", v8, v9, v10, v21);
      }

      *a5 = 2;
      v12 = textpar_Process(a1[10]);
      v7 = v12;
      if ((v12 & 0x80000000) == 0)
      {
        v16 = a1[6];
        if (!v16 || (v7 = textpar_WriteTextAndMarkers(a1[10], v16, a1[7], a1[8], a1[9]), (v7 & 0x80000000) == 0))
        {
          if (*(a1 + 22) || textpar_AllTextProcessed(a1[10]))
          {
            *a5 = 1;
            if (!*(a1 + 22))
            {
              v17 = pp_text_parser_loc_CloseOutStreams(a1);
              if ((v17 & 0x80000000) != 0)
              {
                return v17;
              }

              v7 = 0;
            }
          }
        }

        goto LABEL_30;
      }

      if ((v12 & 0x1FFF) != 0x800)
      {
        if ((v12 & 0x1FFF) != 0x17)
        {
          if (!*(a1 + 22))
          {
            pp_text_parser_loc_CloseOutStreams(a1);
          }

          *a5 = 1;
          goto LABEL_30;
        }

        *a5 = 1;
        v18 = pp_text_parser_loc_CloseOutStreams(a1);
        goto LABEL_20;
      }

      *a5 = 0;
      textpar_CheckForEOF(a1[10], &v22, &v23);
      if (v23)
      {
        *a5 = 1;
        v18 = pp_text_parser_loc_CloseOutStreams(a1);
        if ((v18 & 0x80000000) != 0)
        {
LABEL_20:
          v7 = v18;
          goto LABEL_30;
        }

        LODWORD(v7) = 0;
      }

      if (*(a1 + 22))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

LABEL_30:
      v19 = *(v24 + 32);
      if (v19)
      {
        log_OutText(v19, "PP_TEXT_PARSER", 4, 0, "Leaving pp_text_parser_Process peResults=%d fRet=%d", v13, v14, v15, *a5);
      }
    }
  }

  return v7;
}

uint64_t pp_text_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2368741383;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 24357, 96) & 0x80000000) != 0)
  {
    return 2368741384;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_TEXT_PARSER", 4, 0, "Entering pp_text_parser_ProcessStop", v4, v5, v6, v11);
    }

    v8 = textpar_ProcessEnd();
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = pp_text_parser_loc_CloseOutStreams(a1);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v9 = a1[4];
    if (!v9)
    {
      return 0;
    }

    v8 = (*(a1[3] + 9))(v9, a1[5]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      v3 = 0;
      a1[4] = 0;
      *(a1 + 10) = 0;
    }
  }

  return v3;
}

uint64_t pp_text_parser_loc_CloseOutStreams(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    result = (*(a1[3] + 72))(v2, a1[9]);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    a1[8] = 0;
    *(a1 + 18) = 0;
  }

  result = a1[6];
  if (result)
  {
    result = (*(a1[3] + 72))(result, a1[7]);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      a1[6] = 0;
      *(a1 + 14) = 0;
    }
  }

  return result;
}

uint64_t sentpar_clearReadOutParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), *(&aSENTPARTAG2PARAM + v2 + 8));
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    v2 += 16;
    if (v2 == 64)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sentpar_clearPersistentParameters(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = paramc_ParamRemove(*(a1 + 40), off_279DADC10[v2]);
    if ((result & 0x80000000) != 0 && (result & 0x1FFF) != 0x14)
    {
      break;
    }

    if (++v2 == 5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sentpar_clearAllParameters(uint64_t a1)
{
  result = sentpar_clearReadOutParameters(a1);
  if ((result & 0x80000000) == 0)
  {

    return sentpar_clearPersistentParameters(a1);
  }

  return result;
}

uint64_t sentpar_loc_SetReadoutMarkersAsParameters(int *a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34[0] = 0;
  v34[1] = 0;
  if ((datac_RequestBlock(*(a1 + 1), 1012, 1u, &v33) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  v32 = *(v33 + 8);
  v2 = datac_RequestBlock(*(a1 + 1), 1021, 1u, &v33);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v33;
    LODWORD(v4) = *(v33 + 16);
    if (v4 >= 2)
    {
      v5 = *(v33 + 8);
      for (i = 1; i < v4; ++i)
      {
        v7 = v5 + (i << 6);
        v10 = *(v7 + 20);
        v9 = (v7 + 20);
        v8 = v10;
        v11 = (1 << v10) & 0x1080200080;
        if (v10 > 0x24 || v11 == 0)
        {
          goto LABEL_30;
        }

        v13 = 0;
        v14 = &off_279DADC40;
        while (*(v14 - 2) != v8)
        {
          v13 += 4;
          v14 += 2;
          if (v13 == 16)
          {
            goto LABEL_30;
          }
        }

        if (*(v34 + v13))
        {
          goto LABEL_30;
        }

        ArgOfLastOfType = marker_GetArgOfLastOfType(v5, i, v4, 0);
        if (marker_IsReadoutControlDefaultArg(*v9, ArgOfLastOfType, v32, a1[47]))
        {
          v16 = paramc_ParamRemove(*(*a1 + 40), *v14);
          v2 = 0;
          if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
          {
            return v16;
          }

          goto LABEL_29;
        }

        v17 = *v9;
        if (*v9 > 30)
        {
          if (v17 == 36)
          {
LABEL_26:
            v21 = (v32 + ArgOfLastOfType);
            v22 = cstdlib_strlen(v21);
            v23 = heap_Calloc(*(*a1 + 8), 1, v22 + 1);
            if (!v23)
            {
              return 2369789962;
            }

            v24 = v23;
            cstdlib_strncpy(v23, v21, v22);
            v24[v22] = 0;
            v2 = paramc_ParamSetStr(*(*a1 + 40), *v14, v24);
            v28 = *a1;
            if ((v2 & 0x80000000) != 0)
            {
              heap_Free(*(v28 + 8), v24);
              return v2;
            }

            log_OutText(*(v28 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%s", v25, v26, v27, v8);
            heap_Free(*(*a1 + 8), v24);
            goto LABEL_29;
          }

          if (v17 == 31)
          {
LABEL_24:
            v2 = paramc_ParamSetUInt(*(*a1 + 40), *v14, ArgOfLastOfType);
            if ((v2 & 0x80000000) != 0)
            {
              return v2;
            }

            log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "SET PARAM marker:%d param=%s val=%u", v18, v19, v20, v8);
          }
        }

        else
        {
          if (v17 == 7)
          {
            goto LABEL_24;
          }

          if (v17 == 21)
          {
            goto LABEL_26;
          }
        }

LABEL_29:
        *(v34 + v13) = 1;
        v3 = v33;
LABEL_30:
        v4 = *(v3 + 16);
      }
    }

    v29 = 0;
    for (j = &off_279DADC40; ; j += 2)
    {
      if (!*(v34 + v29))
      {
        v16 = paramc_ParamRemove(*(*a1 + 40), *j);
        v2 = 0;
        if ((v16 & 0x80000000) != 0 && (v16 & 0x1FFF) != 0x14)
        {
          break;
        }
      }

      v29 += 4;
      if (v29 == 16)
      {
        return v2;
      }
    }

    return v16;
  }

  return v2;
}

uint64_t sentpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v20 = 0;
  v19 = 0;
  v5 = 2369789959;
  if (a4 && (InitRsrcFunction(a1, a2, &v20) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v20 + 8), 256);
    if (v11)
    {
      v12 = v11;
      cstdlib_memset(v11, 0, 0x100uLL);
      *v12 = v20;
      v12[2] = a3;
      v12[28] = 0;
      *(v12 + 48) = 0;
      *(v12 + 98) = 0;
      *(v12 + 60) = a5;
      cstdlib_memset(v12 + 15, 0, 0x40uLL);
      *(v12 + 35) = 0;
      if (paramc_ParamGetUInt(*(v20 + 40), "ppmaxpcreframeblocks", &v19) < 0)
      {
        v13 = 30;
      }

      else
      {
        v13 = v19;
      }

      if (paramc_ParamGetUInt(*(v20 + 40), "ppnumframesinblock", &v19) < 0)
      {
        v14 = 50;
      }

      else
      {
        v14 = v19;
      }

      v15 = extdata_ObjOpen(a1, a2, v12 + 28, 212);
      if ((v15 & 0x80000000) == 0)
      {
        v12[26] = 0;
        *(v12 + 54) = 0;
        v15 = nuance_pcre_ObjOpen(a1, a2, (v12 + 26));
        if ((v15 & 0x80000000) == 0)
        {
          v15 = nuance_pcre_Init(v12[26], v12[27], v13, v14);
          if ((v15 & 0x80000000) == 0)
          {
            v15 = sentpar_loc_OpenParts(a1, a2, v12);
            if ((v15 & 0x80000000) == 0)
            {
              v15 = datac_ObjOpen(a1, a2, v12 + 1, 212);
              if ((v15 & 0x80000000) == 0)
              {
                v16 = &word_26ECDC04C;
                v17 = 6;
                while (1)
                {
                  v15 = datac_RegisterBlock(v12[1], *(v16 - 2), *(v16 - 1), *v16);
                  if ((v15 & 0x80000000) != 0)
                  {
                    break;
                  }

                  v16 += 3;
                  if (!--v17)
                  {
                    *a4 = v12;
                    return sentpar_clearAllParameters(v20);
                  }
                }
              }
            }
          }
        }
      }

      v5 = v15;
      sentpar_ObjClose(a1, a2, v12);
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t sentpar_ObjClose(_WORD *a1, int a2, void *a3)
{
  v3 = 2369789959;
  v11 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v11) & 0x80000000) == 0)
  {
    v5 = a3[1];
    if (v5)
    {
      datac_ObjClose(v5);
    }

    v6 = a3[28];
    if (v6)
    {
      extdata_ObjClose(v6);
      a3[28] = 0;
    }

    v7 = a3[25];
    if (v7)
    {
      sparser_ObjClose(v7);
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a3[26], a3[27], NullHandle, v9))
    {
      nuance_pcre_DeInit(a3[26], a3[27]);
      nuance_pcre_ObjClose(a3[26], a3[27]);
    }

    sentpar_clearAllParameters(v11);
    heap_Free(*(v11 + 8), a3);
    return 0;
  }

  return v3;
}

uint64_t sentpar_loc_OpenParts(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  result = extdata_LoadSpecificData(a3[28], "PPSE", "BRKD", "pp/sent/parser");
  if ((result & 0x80000000) == 0)
  {
    result = sparser_ObjOpen(a1, a2, a3[26], a3[27], a3 + 25, a3[28]);
    if ((result & 0x80000000) == 0)
    {
      v7 = a3[28];

      return extdata_LoadData(v7, "PPSE", "pp/sent/parser");
    }
  }

  return result;
}

uint64_t sentpar_ObjReopen(_WORD *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2369789959;
  __s1 = 0;
  v13 = 0;
  if (a3)
  {
    inited = InitRsrcFunction(a1, a2, &v13);
    if ((inited & 0x80000000) == 0)
    {
      v8 = inited;
      if ((paramc_ParamGetStr(*(v13 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) != 0 || !__s1 || (v3 = v8, !cstdlib_strcmp(__s1, "pp/sent_parser")))
      {
        v9 = extdata_FreeData(a3[28]);
        if ((v9 & 0x80000000) != 0 || (v10 = a3[25]) != 0 && (v9 = sparser_ObjClose(v10), (v9 & 0x80000000) != 0))
        {
          v3 = v9;
LABEL_12:
          sentpar_ObjClose(a1, a2, a3);
          return v3;
        }

        v3 = sentpar_loc_OpenParts(a1, a2, a3);
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return v3;
}

uint64_t sentpar_ProcessStart(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (!a2)
  {
    return 2369789959;
  }

  *(a2 + 24) = a3;
  *(a2 + 32) = a4;
  *(a2 + 40) = a5;
  *(a2 + 48) = a6;
  paramc_ParamSetUInt(*(*a2 + 40), "finalsentencefound", 0);
  v9 = paramc_ParamGetInt(*(a1 + 40), "eosdetection", &v15 + 1) < 0 || HIDWORD(v15) != 0;
  *(a2 + 232) = v9;
  if ((paramc_ParamGet(*(a1 + 40), "readmode", &v13, 0) & 0x80000000) == 0)
  {
    *(a2 + 196) = (*v13 - 48);
  }

  *(a2 + 236) = log_GetLogLevel(*(a1 + 32)) > 4;
  *(a2 + 184) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 192) = 1024;
  if ((paramc_ParamGetUInt(*(a1 + 40), "ppreaddirectsize", &v15) & 0x80000000) == 0 && v15 >= 0x100)
  {
    *(a2 + 192) = v15;
  }

  if ((paramc_ParamGetUInt(*(a1 + 40), "ppspellpausevalue", (a2 + 188)) & 0x80000000) != 0)
  {
    *(a2 + 188) = 0;
  }

  v10 = 0;
  while (1)
  {
    result = datac_RequestBlock(*(a2 + 8), aMETA_0[v10], 1u, &v14);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v10 += 3;
    v12 = v14;
    *(v14 + 16) = 0;
    *(v12 + 20) = 0;
    if (v10 == 18)
    {
      result = sparser_ProcessStart(*(a2 + 200), *(a2 + 188));
      if ((result & 0x80000000) == 0)
      {
        result = 0;
        *(a2 + 244) = 0;
        *(a2 + 248) = 0;
      }

      return result;
    }
  }

  return result;
}

uint64_t sentpar_ProcessEnd(uint64_t a1, _WORD *a2, int a3)
{
  __s1 = 0;
  v8 = 0;
  v6 = 0;
  if ((InitRsrcFunction(a2, a3, &v8) & 0x80000000) != 0)
  {
    return 2369789959;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "pipelineswitchcomponent", &__s1) & 0x80000000) == 0 && __s1 && cstdlib_strcmp(__s1, "pp/sent_parser"))
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
    *(a1 + 140) = 0;
  }

  if ((paramc_ParamGetStr(*(v8 + 40), "component_stop", &v6) & 0x80000000) == 0 && v6)
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
    *(a1 + 140) = 0;
    paramc_ParamSetStr(*(v8 + 40), "component_stop", "");
  }

  if (!__s1)
  {
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
    *(a1 + 140) = 0;
  }

  v4 = sentpar_loc_PrepareDataContainers(a1, 0);
  return v4 & (v4 >> 31);
}

uint64_t sentpar_loc_PrepareDataContainers(uint64_t *a1, int a2)
{
  v14 = 0;
  if (a2)
  {
    for (i = 0; i != 3; ++i)
    {
      v4 = datac_RequestBlock(a1[1], aTAG_0[i], 1u, &v14);
      if (i != 2 && (v4 & 0x80000000) == 0)
      {
        *(v14 + 16) = 0;
      }
    }

    return 0;
  }

  result = datac_RequestBlock(a1[1], 1011, 1u, &v14);
  if ((result & 0x80000000) == 0)
  {
    v6 = v14;
    if (*(v14 + 16) >= 2u)
    {
      v7 = (*(v14 + 8) + 112);
      v8 = 1;
      do
      {
        if (*v7)
        {
          heap_Free(*(*a1 + 8), *v7);
          *v7 = 0;
          v6 = v14;
        }

        ++v8;
        v7 += 8;
      }

      while (v8 < *(v6 + 16));
    }

    result = datac_RequestBlock(a1[1], 1021, 1u, &v14);
    if ((result & 0x80000000) == 0)
    {
      v9 = v14;
      if (*(v14 + 16) >= 2u)
      {
        v10 = (*(v14 + 8) + 112);
        v11 = 1;
        do
        {
          if (*v10)
          {
            heap_Free(*(*a1 + 8), *v10);
            *v10 = 0;
            v9 = v14;
          }

          ++v11;
          v10 += 8;
        }

        while (v11 < *(v9 + 16));
      }

      for (j = 0; j != 5; ++j)
      {
        v13 = datac_RequestBlock(a1[1], aAllTAG_0[j], 1u, &v14);
        if (j != 2 && (v13 & 0x80000000) == 0)
        {
          *(v14 + 16) = 0;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sentpar_Process(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v143 = 0;
  v144 = 1;
  v141 = 0;
  v142 = 0;
  v135 = 0;
  v136 = 0;
  v134 = 0;
  v133 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_Process()", a6, a7, a8, v122);
  DWORD1(v138) = 0;
  if (*(a1 + 240))
  {
    *(a1 + 64) = 0;
    *(a1 + 112) = 0;
    *(a1 + 184) = 0;
    *(a1 + 84) = 0;
    *(a1 + 76) = 0;
    cstdlib_memset((a1 + 120), 0, 0x40uLL);
  }

  InputStreams = sentpar_loc_PrepareDataContainers(a1, *(a1 + 64));
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_GetTextBlockAndMarkers(bHaveReadInputStreams=%d,bBlockMoreInputRequest=%d,bMoreInputRequest=%d)", v13, v14, v15, *(a1 + 64));
  if (!*(a1 + 64) || !*(a1 + 88) && *(a1 + 84) == 1)
  {
    InputStreams = sentpar_loc_ReadInputStreams(a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    *(a1 + 64) = 1;
    goto LABEL_10;
  }

  *&__src = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1010, 1u, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(__src + 20))
  {
    if (*(a1 + 68))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32));
      if ((InputStreams & 0x80000000) != 0)
      {
        return InputStreams;
      }
    }

    if (*(a1 + 104))
    {
      InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
      if ((InputStreams & 0x80000000) != 0)
      {
        return InputStreams;
      }
    }

    InputStreams = sentpar_clearAllParameters(*a1);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_CheckIfAllDataProcessed(return TTSEG_PROCESSING_COMP_RESULTS_FULL)", v71, v72, v73, v123);
    return 2369789975;
  }

  v74 = *(a1 + 68);
  if (v74 == *(a1 + 76))
  {
    v75 = *(a1 + 104);
    if (v75 == *(a1 + 108))
    {
      if (*(a1 + 88) || *(a1 + 84))
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "FINISHED PROCESSING INPUT STREAM", v31, v32, v33, v123);
        v30 = sentpar_loc_FlushStreamsAndReturn(a1, a3, a4);
        goto LABEL_12;
      }

      *(a1 + 84) = 1;
      if (*(a1 + 240))
      {
        if (!v74)
        {
LABEL_98:
          if (v75)
          {
            InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48));
            if ((InputStreams & 0x80000000) != 0)
            {
              return InputStreams;
            }
          }

          goto LABEL_100;
        }

        InputStreams = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v74);
        if ((InputStreams & 0x80000000) != 0)
        {
          return InputStreams;
        }

        if (*(a1 + 240))
        {
          v75 = *(a1 + 104);
          goto LABEL_98;
        }
      }

LABEL_100:
      v77 = *(*a1 + 32);
      v78 = "issue more text request (cTextBytesAvailable==0)- TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
      goto LABEL_122;
    }
  }

  InputStreams = sentpar_loc_ReadInputStreams(a1);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

LABEL_10:
  InputStreams = sentpar_loc_SetUpTextBlock(a1, v16, v17, v18, v19, v20, v21, v22);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v30 = sentpar_loc_SetUpMarkerBlocks(a1, v23, v24, v25, v26, v27, v28, v29);
LABEL_12:
  v34 = v30;
  if ((v30 & 0x80000000) != 0)
  {
    return v34;
  }

  if (!*(a1 + 240) && !*(a1 + 88))
  {
    v76 = *(a1 + 68);
    if (v76 <= 0x1FF && v76 > *(a1 + 72))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      *(a1 + 72) = v76;
      v77 = *(*a1 + 32);
      v78 = "issue more text request as text block received is less than SENTPAR_BLOCK_SIZE  - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
LABEL_122:
      log_OutText(v77, "PP_SENT_PARSER", 5, 0, v78, v31, v32, v33, v123);
      return 2369792000;
    }
  }

  *(a1 + 72) = *(a1 + 68);
  v152[0] = 0;
  v150 = 0u;
  v151 = 0u;
  __src = 0u;
  v149 = 0u;
  v146 = 0;
  v147 = 0;
  v145 = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v146);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v35 = *(v146 + 8);
  v34 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v145);
  if ((v34 & 0x80000000) != 0)
  {
    return v34;
  }

  v129 = a4;
  if (!*(a1 + 240))
  {
    v131 = v35;
    v132 = 0;
    v128 = a2;
    v36 = 0;
    v37 = &off_279DADC40;
    v130 = *(v145 + 16);
    v38 = 4;
    while (1)
    {
      v39 = *(v37 - 2);
      if (v39 > 30)
      {
        if (v39 != 36)
        {
          if (v39 != 31)
          {
            goto LABEL_48;
          }

LABEL_25:
          UInt = paramc_ParamGetUInt(*(*a1 + 40), *v37, v152);
          if ((UInt & 0x1FFF) == 0x14)
          {
            v34 = 0;
            goto LABEL_48;
          }

          v34 = UInt;
          if ((UInt & 0x80000000) != 0)
          {
            goto LABEL_49;
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%d", v41, v42, v43, v39);
          LODWORD(__src) = 1;
          DWORD1(v149) = v39;
          v49 = v146;
          v50 = *(v146 + 16);
          if (*(v146 + 16))
          {
            v50 = *(v131 + 24);
            v51 = *(v131 + 32);
          }

          else
          {
            v51 = 0;
          }

          *(&v149 + 1) = v50;
          *&v150 = v51;
          DWORD2(v150) = v152[0];
          DWORD2(v151) = 0;
          *&v151 = 0;
          goto LABEL_42;
        }
      }

      else
      {
        if (v39 == 7)
        {
          goto LABEL_25;
        }

        if (v39 != 21)
        {
          goto LABEL_48;
        }
      }

      Str = paramc_ParamGetStr(*(*a1 + 40), *v37, &v147);
      v48 = Str & 0x1FFF;
      if (v48 == 20)
      {
        v34 = 0;
      }

      else
      {
        v34 = Str;
        if ((Str & 0x80000000) != 0)
        {
          goto LABEL_49;
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 4, 0, "GET PARAM marker:%d param=%s val=%s", v45, v46, v47, v39);
        v52 = cstdlib_strlen(v147);
        v53 = heap_Calloc(*(*a1 + 8), 1, v52 + 1);
        if (!v53)
        {
          return 2369789962;
        }

        v36 = v53;
        cstdlib_strncpy(v53, v147, v52);
        v36[v52] = 0;
        LODWORD(__src) = 1;
        DWORD1(v149) = v39;
        v54 = *(v146 + 16);
        if (*(v146 + 16))
        {
          v54 = *(v131 + 24);
          v55 = *(v131 + 32);
        }

        else
        {
          v55 = 0;
        }

        *(&v149 + 1) = v54;
        *&v150 = v55;
      }

      paramc_ParamRelease(*(*a1 + 40));
      v147 = 0;
      if (v48 == 20)
      {
        goto LABEL_48;
      }

      v49 = v146;
LABEL_42:
      v34 = datac_RequestBlock(*(a1 + 8), 1011, (*(v49 + 16) + 1), &v146);
      if ((v34 & 0x80000000) != 0)
      {
        goto LABEL_49;
      }

      v56 = *(v146 + 8);
      v57 = *(v146 + 16);
      v131 = v56;
      v58 = (v56 + (++v132 << 6));
      if (v57 > v132)
      {
        cstdlib_memmove(v58 + 16, (v56 + (v132 << 6)), (v57 - v132) << 6);
      }

      cstdlib_memcpy(v58, &__src, 0x40uLL);
      ++*(v146 + 16);
      if (v36)
      {
        v59 = cstdlib_strlen(v36);
        v34 = datac_RequestBlock(*(a1 + 8), 1012, (v59 + *(v145 + 16) + 1), &v145);
        if ((v34 & 0x80000000) != 0)
        {
          a2 = v128;
LABEL_50:
          heap_Free(*(*a1 + 8), v36);
          break;
        }

        v60 = *(v145 + 8);
        v58[10] = v130;
        v61 = cstdlib_strlen(v36);
        cstdlib_memcpy((v60 + v130), v36, v61);
        *(v60 + cstdlib_strlen(v36) + v130) = 0;
        v62 = v130 + cstdlib_strlen(v36);
        v130 = v62 + 1;
        *(v145 + 16) = v62 + 1;
        heap_Free(*(*a1 + 8), v36);
        v36 = 0;
      }

LABEL_48:
      v37 += 2;
      if (!--v38)
      {
LABEL_49:
        a2 = v128;
        if (!v36)
        {
          break;
        }

        goto LABEL_50;
      }
    }
  }

  if (v147)
  {
    paramc_ParamRelease(*(*a1 + 40));
  }

  if ((v34 & 0x80000000) != 0)
  {
    return v34;
  }

  *&__src = 0;
  InputStreams = datac_RequestBlock(*(a1 + 8), 1039, 1u, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  v66 = *(__src + 16);
  if (*(__src + 16))
  {
    v67 = *(__src + 8);
    LODWORD(v68) = *(v67 + ((v66 - 1) << 6) + 32);
    if (*(a1 + 184) > v68)
    {
      LODWORD(v68) = *(a1 + 184);
    }

    v69 = (v67 + 36);
    do
    {
      v70 = *(v69 - 1);
      if (*v69 + v70 <= v68)
      {
        v68 = v68;
      }

      else
      {
        v68 = v70;
      }

      v69 += 16;
      --v66;
    }

    while (v66);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d", v63, v64, v65, v68);
  }

  else
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_GetStartScanPos -> %d", v63, v64, v65, *(a1 + 184));
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_ScanTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_ScanTextElement", 0, 0, 0);
  if (*(a1 + 64) != 1 || *(a1 + 88) != 1 || *(a1 + 84) != 1)
  {
    InputStreams = sparser_PreScanTextElement(*(a1 + 200), *(a1 + 8), &v133);
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    if (v133 == 1 && !*(a1 + 240))
    {
      *(a1 + 64) = 0;
      *(a1 + 84) = 1;
      v77 = *(*a1 + 32);
      v78 = "issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
      goto LABEL_122;
    }
  }

  InputStreams = sparser_ScanTextElement(*(a1 + 200), *(a1 + 8), *(a1 + 232), *(a1 + 196), v79, v31, v32, v33);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  *(a1 + 184) = sparser_GetScanPosition(*(a1 + 200));
  if (*(a1 + 240))
  {
    v83 = 1;
    v144 = 1;
  }

  else
  {
    InputStreams = sparser_HasTextElementLeft(*(a1 + 200), *(a1 + 8), &v144, (a1 + 196));
    if ((InputStreams & 0x80000000) != 0)
    {
      return InputStreams;
    }

    v83 = v144;
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_HasTextElementLeft bTextRemaining=%d pSentPar->startScanPos=%d", v80, v81, v82, v83);
  if (!v144)
  {
    v34 = sentpar_loc_Check2IssueMoreInputRequest(a1, &v135, v84, v85, v86, v87, v88, v89);
    if (v135 == 1)
    {
      LODWORD(__src) = 0;
      if ((paramc_ParamGetUInt(*(*a1 + 40), "disablefinalsentencesilence", &__src) & 0x80000000) == 0 && __src == 1)
      {
        paramc_ParamSetUInt(*(*a1 + 40), "finalsentencefound", 1u);
      }
    }

    if ((v34 & 0x80000000) != 0)
    {
      return v34;
    }
  }

  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "BEFORE sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "BEFORE sparser_GetTextElement", 0, 0, 0);
  InputStreams = sparser_GetTextElement(*(a1 + 200), *(a1 + 8), &v143, &v142 + 1, &v142, a2, (a1 + 196), &v141 + 1, &v141, &v137, &v136 + 1, &v136);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "AFTER sparser_GetTextElement", v90, v91, v92, v124);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "currentReadMode = %d, *bImmediateVoiceSwitch=%d, bEndOnVoiceSwitch=%d", v93, v94, v95, *(a1 + 196));
    v96 = *(*a1 + 32);
    v97 = HIDWORD(v141);
    marker_getString(SDWORD1(v138));
    log_OutText(v96, "PP_SENT_PARSER", 5, 0, "posRefOffset=%d, refReset=%d, pRefResetMrk.tag=%s, numBlanksTrimmed=%d u32AdjustedEscLen=%d", v98, v99, v100, v97);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "inputMarkersConsumed=%d", v101, v102, v103, HIWORD(v136));
  }

  if (log_HasTraceTuningDataSubscriber(*(*a1 + 32)))
  {
    log_OutTraceTuningData(*(*a1 + 32), 33, 0, v104, v105, v106, v107, v108, v124);
  }

  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "In Blocks", v106, v107, v108, v124);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1010, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "AFTER sparser_GetTextElement", 0, 0, 0);
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Out Blocks", v109, v110, v111, v125);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "AFTER sparser_GetTextElement");
  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "AFTER sparser_GetTextElement (out marker)", 0, 0, 0);
  v112 = v142;
  if (*a2 != 1 && v142 != 1)
  {
    InputStreams = sentpar_loc_CheckForEmptyOutput(a1, &v134 + 1, &v134);
    if ((InputStreams & 0x80000000) == 0)
    {
      if (v135 == 1 && v134 == 0x100000001)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bThereIsNoMoreInput && bEmptyText && bEmptyMarkers - flush and return", v113, v114, v115, v126);
        return sentpar_loc_FlushStreamsAndReturn(a1, a3, v129);
      }

      v112 = v142;
      goto LABEL_126;
    }

    return InputStreams;
  }

LABEL_126:
  v116 = *(a1 + 236);
  __src = v137;
  v149 = v138;
  v150 = v139;
  v151 = v140;
  InputStreams = sentpar_loc_UpdateTextAndMrkReadPosition(a1, SHIDWORD(v142), v116, v112, HIWORD(v136), v136, HIDWORD(v141), v141, &__src);
  if ((InputStreams & 0x80000000) != 0)
  {
    return InputStreams;
  }

  __src = v137;
  v149 = v138;
  v150 = v139;
  v151 = v140;
  v34 = sentpar_loc_SavePersistentData(a1, HIDWORD(v141), v141, &__src);
  if ((v34 & 0x80000000) == 0)
  {
    if (*a2 == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bImmediateVoiceSwitch - immediate return", v117, v118, v119, v127);
    }

    else
    {
      if (v142 == 1)
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "bEndOnVoiceSwitch - continue processing", v117, v118, v119, v127);
      }

      v121 = sentpar_loc_FilterSyncMarkers(*(a1 + 8));
      return v121 & (v121 >> 31);
    }
  }

  return v34;
}

uint64_t sentpar_loc_Check2IssueMoreInputRequest(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  *a2 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_Check2IssueMoreInputRequest()", a6, a7, a8, v22);
  v10 = datac_RequestBlock(*(a1 + 8), 1010, 1u, &v29);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v28);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 136))(*(a1 + 24), *(a1 + 32), &v27 + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v26 + 4, &v25 + 4);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(*(a1 + 16) + 136))(*(a1 + 40), *(a1 + 48), &v27);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v14 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v26, &v25);
  if ((v14 & 0x80000000) == 0)
  {
    if (HIDWORD(v25) == 1 && !HIDWORD(v26) && v25 == 1 && !v26)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no text and markers : return TTSEG_PROCESSING_COMP_RESULTS_FULL", v11, v12, v13, v23);
      v14 = 2369789975;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "have bytes in input stream, issue more text request?", v11, v12, v13, v23);
    if (HIDWORD(v26))
    {
      v18 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        v19 = "already issued more text request - there is no more input";
LABEL_20:
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v19, v15, v16, v17, v24);
        v21 = "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing";
LABEL_25:
        *v8 = 1;
        goto LABEL_26;
      }

      v14 = 2369792000;
      *(a1 + 64) = 0;
      v21 = "[1]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
    }

    else
    {
      if (!v26)
      {
        v21 = "leaving sentpar_loc_Check2IssueMoreInputRequest() - continue processing";
LABEL_26:
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v21, v15, v16, v17, v24);
        return v14;
      }

      v18 = (a1 + 84);
      if (*(a1 + 84) == 1)
      {
        v19 = "already issued more text request - still have some markers - return there is no more input";
        goto LABEL_20;
      }

      v14 = 2369792000;
      *(a1 + 64) = 0;
      v21 = "[2]issue more text request - TTSEG_PROCESSING_COMP_RESULTS_NONE_NEED_MORE_INPUT";
    }

    v8 = v18;
    goto LABEL_25;
  }

  return v14;
}

uint64_t sentpar_loc_CheckForEmptyOutput(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v7 = 0;
  *a2 = 0;
  *a3 = 0;
  result = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v7);
  if ((result & 0x80000000) == 0)
  {
    if (!*(v7 + 16))
    {
      *a2 = 1;
    }

    result = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v7);
    if ((result & 0x80000000) == 0 && !*(v7 + 16))
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sentpar_loc_FlushStreamsAndReturn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 68);
  v7 = *(a1 + 76);
  if (v6 != v7)
  {
    v8 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), (v6 - v7));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    *(a1 + 68) = 0;
    *(a1 + 76) = 0;
  }

  v9 = 2369789975;
  if (*(a1 + 104) == *(a1 + 108))
  {
    return v9;
  }

  v41 = 0;
  v8 = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v41);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v10 = *(v41 + 16);
  if (!*(v41 + 16))
  {
    v13 = 0;
    goto LABEL_44;
  }

  v11 = *(v41 + 8);
  v40 = 0;
  v12 = heap_Calloc(*(*a1 + 8), 1, (v10 << 6) | 1);
  if (!v12)
  {
    return 2369789962;
  }

  v13 = v12;
  v14 = datac_RequestBlock(*(a1 + 8), 1012, 1u, &v40);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v15 = v41;
  if (!*(v41 + 16))
  {
    goto LABEL_42;
  }

  v16 = 0;
  v17 = *(v40 + 8);
  v18 = (v11 + 40);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v18 - 5)))
    {
      v19 = *v18;
      if (v19 == -1)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 + v19;
      }

      *v18 = v20;
    }

    ++v16;
    v15 = v41;
    v18 += 8;
  }

  while (v16 < *(v41 + 16));
  if (!*(v41 + 16))
  {
LABEL_42:
    v25 = (v15 + 16);
LABEL_43:
    *v25 = 0;
    goto LABEL_44;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v23 = &v13[v21 / 4];
    *(v23 + 5) = *(v11 + v21 + 20);
    v23[9] = *(v11 + v21 + 36);
    *(v23 + 5) = *(v11 + v21 + 40);
    ++v22;
    v24 = *(v41 + 16);
    v21 += 64;
  }

  while (v22 < v24);
  v25 = (v41 + 16);
  if (!*(v41 + 16))
  {
    goto LABEL_43;
  }

  v26 = 0;
  v27 = 0;
  v28 = v13;
  do
  {
    if (v26)
    {
      v29 = v28[5];
      if (v29 == 0x4000)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = v13[5];
    }

    if (v29 != 3)
    {
      v24 = &v13[16 * v27];
      v30 = *v28;
      v31 = *(v28 + 1);
      v32 = *(v28 + 3);
      v24[2] = *(v28 + 2);
      v24[3] = v32;
      *v24 = v30;
      v24[1] = v31;
      ++v27;
      LOWORD(v24) = *v25;
    }

LABEL_28:
    ++v26;
    v28 += 16;
  }

  while (v26 < v24);
  *v25 = v27;
  if (v27 >= 2u)
  {
    v33 = 0;
    v34 = v13[9];
    v35 = v13 + 24;
    v36 = v27 - 1;
    do
    {
      v37 = *(v35 - 3);
      if (v37 != 999 && v37 != 0x4000 && *(v35 - 8) != 1)
      {
        v33 = 1;
      }

      *v35 = v34 + v13[8];
      v35 += 16;
      --v36;
    }

    while (v36);
    if (v33 == 1)
    {
      v14 = (*(*(a1 + 16) + 104))(a2, a3, v13, v27 << 6);
      if ((v14 & 0x80000000) != 0)
      {
LABEL_38:
        v9 = v14;
        goto LABEL_46;
      }
    }
  }

LABEL_44:
  v38 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), (*(a1 + 104) - *(a1 + 108)));
  if ((v38 & 0x80000000) != 0)
  {
    v9 = v38;
    if (v13)
    {
LABEL_46:
      heap_Free(*(*a1 + 8), v13);
    }
  }

  else
  {
    *(a1 + 104) = 0;
    if (v13)
    {
      goto LABEL_46;
    }
  }

  return v9;
}

uint64_t sentpar_loc_UpdateTextAndMrkReadPosition(uint64_t *a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v9 = a8;
  v10 = a7;
  v11 = a6;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_UpdateTextAndMrkReadPosition", a6, a7, a8, v61);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v75);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = *(v75 + 16);
  v17 = datac_RequestBlock(a1[1], 1020, 1u, &v76);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  __src = *(v76 + 8);
  v71 = *(v76 + 16);
  v17 = datac_RequestBlock(a1[1], 1011, 1u, &v74);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v22 = datac_RequestBlock(a1[1], 1039, 1u, &v73);
  if ((v22 & 0x80000000) == 0)
  {
    v65 = v18;
    v66 = v10;
    v63 = a2;
    v64 = a4;
    v68 = a5;
    v67 = v9;
    if (*(v74 + 16))
    {
      v23 = 0;
      v69 = 0;
      v24 = *(v74 + 8);
      v25 = *(v73 + 8);
      do
      {
        v26 = (v24 + (v23 << 6));
        if (*v26 == 1 && v26[5] == 2)
        {
          v27 = -1;
          v28 = v25;
          while (1)
          {
            v29 = *(v73 + 16);
            if (++v27 >= v29)
            {
              break;
            }

            v30 = v28 + 64;
            v31 = cstdlib_memcmp((v24 + (v23 << 6)), v28, 0x40uLL);
            v28 = v30;
            if (!v31)
            {
              goto LABEL_23;
            }
          }

          v22 = datac_RequestBlock(a1[1], 1039, (v29 + 1), &v73);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v25 = *(v73 + 8);
          v32 = *(v73 + 16);
          if (*(v73 + 16))
          {
            v33 = 0;
            v34 = v32 << 6;
            v35 = v25 + 64;
            while (*(v35 - 8) < v26[8])
            {
              ++v33;
              v35 += 16;
              v34 -= 64;
              if (!v34)
              {
                v33 = *(v73 + 16);
                v69 = *(v73 + 16);
                goto LABEL_22;
              }
            }

            v69 = v33;
            if (v32 != v33)
            {
              cstdlib_memcpy(v35, v35 - 16, v34);
            }
          }

          else
          {
            v33 = v69;
          }

LABEL_22:
          cstdlib_memcpy(&v25[64 * v33], (v24 + (v23 << 6)), 0x40uLL);
          ++*(v73 + 16);
        }

LABEL_23:
        ++v23;
      }

      while (v23 < *(v74 + 16));
    }

    if (a3 == 1 && v71)
    {
      if (v71 >= 0x400)
      {
        v36 = 1024;
      }

      else
      {
        v36 = v71;
      }

      v37 = heap_Calloc(*(*a1 + 8), 1, (v36 + 1));
      if (!v37)
      {
        return 2369789962;
      }

      v38 = v37;
      cstdlib_strncpy(v37, __src, v36);
      *(v38 + v36) = 0;
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Txt) (text processed) (tag=%d) len=%d (UTF8 *) %s", v39, v40, v41, 1011);
      heap_Free(*(*a1 + 8), v38);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "(Mrk) (%d markers processed)", v42, v43, v44, v68);
    }

    v45 = *(v76 + 2);
    v46 = (v11 + v45 * v65);
    if (v46)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "consume TXT Stream cTextBytesRead=%d", v19, v20, v21, (v11 + v45 * v65));
      v22 = (*(a1[2] + 96))(a1[3], a1[4], v46);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v47 = v11 + (v65 + v63) * v45 + *(a1 + 20);
      *(a1 + 19) += v46;
      *(a1 + 20) = v47;
    }

    if (!v68)
    {
      goto LABEL_40;
    }

    v48 = (v68 << 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK Stream cMarkerBytesProcessed=%d", v19, v20, v21, v48);
    if (*(a1 + 27) >= 0x40u)
    {
      v52 = 0;
      v53 = 0;
      do
      {
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "CONSUMED pInMrk[%d].tag %d %d,%d %d,%d", v49, v50, v51, v52);
        v52 = ++v53;
      }

      while (v53 < *(a1 + 27) >> 6);
    }

    v22 = (*(a1[2] + 96))(a1[5], a1[6], v48);
    if ((v22 & 0x80000000) == 0)
    {
      *(a1 + 108) = vadd_s32(*(a1 + 108), vdup_n_s32(v48));
LABEL_40:
      if (v64 == 1 || *(a1 + 20) > *(a1 + 48))
      {
        v54 = a9[1];
        v72[0] = *a9;
        v72[1] = v54;
        v55 = a9[3];
        v72[2] = a9[2];
        v72[3] = v55;
        v22 = sentpar_loc_SavePersistentData(a1, v66, v67, v72);
        if ((v22 & 0x80000000) == 0)
        {
          if (v64 == 1)
          {
            v59 = "!! bEndOnVoiceSwitch - RESET";
          }

          else
          {
            v59 = "!! cSTREAMTextBytesProcessed %d > pSentPar->cReadDirectSize %d - RESET";
            v62 = *(a1 + 20);
          }

          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, v59, v56, v57, v58, v62);
          *(a1 + 46) = 0;
          a1[7] = 0;
          a1[8] = 0;
          *(a1 + 84) = 0;
          *(a1 + 76) = 0;
          a1[12] = 0;
          a1[13] = 0;
          *(a1 + 28) = 0;
        }
      }
    }
  }

  return v22;
}

uint64_t sentpar_loc_SavePersistentData(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v17 = 0;
  v8 = sentpar_loc_SetReadoutMarkersAsParameters(a1);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_posrefoffset", a2);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset", a3);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = *(*a1 + 40);
  if (a3)
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", a4[5]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", a4[6]);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = a4[7];
  }

  else
  {
    v8 = paramc_ParamSetUInt(v9, "pp_sentpar_refreset_mrk_tag", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = paramc_ParamSetUInt(*(*a1 + 40), "pp_sentpar_refreset_mrk_posref", 0);
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v10 = *(*a1 + 40);
    v11 = 0;
  }

  v8 = paramc_ParamSetUInt(v10, "pp_sentpar_refreset_mrk_lenref", v11);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v12 = datac_RequestBlock(*(a1 + 8), 1011, 1u, &v17);
  if ((v12 & 0x80000000) == 0 && *(v17 + 16))
  {
    cstdlib_memcpy((a1 + 120), *(v17 + 8), 0x40uLL);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "STORE lastOutSyncMrk %d,%d %d,%d", v13, v14, v15, *(a1 + 144));
  }

  return v12;
}

uint64_t sentpar_loc_FilterSyncMarkers(uint64_t a1)
{
  v2 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v2);
  if ((result & 0x80000000) == 0)
  {
    return marker_loc_FilterSyncMarkers(v2);
  }

  return result;
}

uint64_t sentpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = 0;
  v33 = 0;
  v5 = 2369789952;
  if (!a1)
  {
    return 2369789959;
  }

  v34 = 0;
  Object = (*(*(a1 + 16) + 136))(a2, a3, &v34);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "start sentpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1020, "start sentpar_WriteTextAndMarkers()");
  Object = datac_RequestBlock(*(a1 + 8), 1020, 1u, &v33);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v12 = *(v33 + 16);
  if (*(v33 + 16))
  {
    Object = (*(*(a1 + 16) + 104))(a2, a3, *(v33 + 8), *(v33 + 2) * v12);
    if ((Object & 0x80000000) != 0)
    {
      return Object;
    }

    if (!*(a1 + 240))
    {
      v31 = 0;
      Object = objc_GetObject(*(*a1 + 48), "CHARCOUNT", &v31);
      if ((Object & 0x80000000) != 0)
      {
        return Object;
      }

      (*(v31[1] + 56))(v31[2], v31[3], *(v33 + 8), *(v33 + 2) * *(v33 + 16));
      objc_ReleaseObject(*(*a1 + 48), "CHARCOUNT");
    }

    *(v33 + 16) = 0;
  }

  if ((datac_RequestBlock(*(a1 + 8), 1012, 1u, &v33) & 0x80000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v33 + 8);
  }

  Object = datac_RequestBlock(*(a1 + 8), 1021, 1u, &v32);
  if ((Object & 0x80000000) != 0)
  {
    return Object;
  }

  v14 = *(v32 + 16);
  if (*(v32 + 16))
  {
    v15 = *(v32 + 8);
    if (*(v15 + 20) == 0x4000)
    {
      if (v12)
      {
        v16 = 0;
        v34 = *(v15 + 32) - v34;
      }

      else
      {
        v16 = marker_CheckForEmptyMarkers(v13, *(a1 + 188), v15, v14, *(a1 + 96), (*(a1 + 104) >> 6), (*(a1 + 108) >> 6));
        v17 = v32;
        v14 = *(v32 + 16);
        v34 = *(v15 + 32) - v34;
        if (!v14)
        {
LABEL_32:
          if (!*(a1 + 240))
          {
            sentpar_loc_Align(a1, v17);
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1011, "at end(internal only)", 0, 0, 0);
          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "at end()", 1, 0, 0);
          v25 = v32;
          log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "entering sentpar_loc_writeMarkersToOutputStream(bNoSignificantMarkers=%d bTextOut=%d)", v26, v27, v28, v16);
          v29 = *(v25 + 16);
          if (!v12)
          {
            if (v29 == 1)
            {
              if (v16 == 1 || *(v15 + 20) == 0x4000)
              {
                return 0;
              }

              LOWORD(v29) = 1;
            }

            else if (v16 == 1)
            {
              return 0;
            }
          }

          marker_TraceMrk(212, "PP_SENT_PARSER", *(a1 + 236), *a1, *(a1 + 8), 1021, "markers output()", 1, v15, v29);
          Object = (*(*(a1 + 16) + 104))(a4, a5, v15, *(v25 + 16) << 6);
          if ((Object & 0x80000000) == 0)
          {
            return 0;
          }

          return Object;
        }
      }

      v18 = v14;
      v19 = (v15 + 32);
      do
      {
        *v19 -= v34;
        v19 += 16;
        --v18;
      }

      while (v18);
      v20 = 0;
      v21 = (v15 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v21 - 5)))
        {
          v22 = *v21;
          if (v13)
          {
            v23 = v22 == 0xFFFFFFFFLL;
          }

          else
          {
            v23 = 1;
          }

          v24 = v13 + v22;
          if (v23)
          {
            v24 = 0;
          }

          *v21 = v24;
        }

        ++v20;
        v17 = v32;
        v21 += 8;
      }

      while (v20 < *(v32 + 16));
      goto LABEL_32;
    }
  }

  return v5;
}

uint64_t sentpar_loc_Align(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  v4 = *(v3 + 24);
  v5 = *(result + 244);
  v6 = v5 + v4;
  v7 = *(a2 + 16);
  if (v7 < 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = (v3 + 104);
    for (i = 1; i < v7; ++i)
    {
      if (*(v10 - 5) == 62)
      {
        result = cstdlib_atoi(*v10);
        v9 = result + v9 - *(v10 - 3);
        v7 = *(a2 + 16);
      }

      v10 += 8;
    }

    v5 = *(v2 + 244);
    v4 = *(v3 + 24);
  }

  v12 = v5 + v9;
  v13 = *(v2 + 248);
  v15 = v6 - v13;
  v14 = v6 < v13;
  if (v6 > v13)
  {
    v13 = v6;
  }

  if (!v14)
  {
    v15 = 0;
  }

  v16 = (*(v3 + 28) + v9 + v15) & ~((*(v3 + 28) + v9 + v15) >> 31);
  *(v3 + 24) = v13;
  *(v3 + 28) = v16;
  *(v2 + 244) = v12;
  *(v2 + 248) = v16 + v13;
  if (v7 >= 2)
  {
    v17 = v13 - v4;
    v18 = v7;
    v19 = (v3 + 88);
    v20 = v18 - 1;
    do
    {
      if (*(v19 - 1) != 999)
      {
        *v19 = (v17 + *v19) & ~((v17 + *v19) >> 31);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sentpar_IsTextElementAtEos(uint64_t a1)
{
  v3 = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  if ((datac_RequestBlock(*(a1 + 8), 1020, 1u, &v3) & 0x80000000) == 0)
  {
    return *(v3 + 20);
  }

  return v1;
}

uint64_t sentpar_ResetMarkerBlocks(uint64_t *a1)
{
  v11 = 0;
  if (!a1)
  {
    return 2369789959;
  }

  v2 = datac_RequestBlock(a1[1], 1021, 1u, &v11);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = v11;
  if (*(v11 + 16) >= 2u)
  {
    v4 = (*(v11 + 8) + 112);
    v5 = 1;
    do
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), *v4);
        *v4 = 0;
        v3 = v11;
      }

      ++v5;
      v4 += 8;
    }

    while (v5 < *(v3 + 16));
  }

  *(v3 + 16) = 0;
  v6 = datac_RequestBlock(a1[1], 1011, 1u, &v11);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v11;
    if (*(v11 + 16) >= 2u)
    {
      v8 = (*(v11 + 8) + 112);
      v9 = 1;
      do
      {
        if (*v8)
        {
          heap_Free(*(*a1 + 8), *v8);
          *v8 = 0;
          v7 = v11;
        }

        ++v9;
        v8 += 8;
      }

      while (v9 < *(v7 + 16));
    }

    *(v7 + 16) = 0;
  }

  return v6;
}

uint64_t sentpar_loc_ReadInputStreams(uint64_t a1)
{
  v2 = (a1 + 104);
  v3 = *(a1 + 104);
  v4 = (a1 + 68);
  v5 = *(a1 + 68);
  v6 = *(a1 + 76);
  v31 = 0;
  v32 = 0;
  v7 = (*(*(a1 + 16) + 144))(*(a1 + 24), *(a1 + 32), &v32 + 4, &v31 + 4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v32, &v31);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_ReadInputStreams()", v8, v9, v10, v30);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT State fTxtEos=%d cTxtBytesRemaining=%d", v11, v12, v13, HIDWORD(v31));
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "MRK State fMrkEos=%d cMrkBytesRemaining=%d", v14, v15, v16, v31);
  }

  v7 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), a1 + 56, v4);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  *(a1 + 76) = 0;
  v20 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), a1 + 96, v2);
  if ((v20 & 0x80000000) == 0)
  {
    *(a1 + 108) = 0;
    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "After stream reads", v17, v18, v19, v30);
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cTextBytesInStream=%d  (%u characters)", v21, v22, v23, *(a1 + 68));
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "TXT cMarkerBytesInStream=%d (%u markers)", v24, v25, v26, *(a1 + 104));
    }

    if (*(a1 + 84) == 1)
    {
      if (v31 == 0x100000001)
      {
        v27 = *(*a1 + 32);
        v28 = "!![1](fTxtEos==1) && (fMrkEos==1) && (bBlockMoreInputRequest) - NO MORE TEXT SO BLOCK REQUESTS";
      }

      else
      {
        if (v5 == v6 || v5 - v6 != *v4 || v3 && v3 != *v2)
        {
          *(a1 + 84) = 0;
          return v20;
        }

        v27 = *(*a1 + 32);
        v28 = "!![2](bBlockMoreInputRequest) - NO MORE TEXT & MARKERS SO BLOCK REQUESTS";
      }

      log_OutText(v27, "PP_SENT_PARSER", 5, 0, v28, v17, v18, v19, v30);
      *(a1 + 88) = 1;
    }
  }

  return v20;
}

uint64_t sentpar_loc_SetUpTextBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v9 = *(a1 + 68) - *(a1 + 76);
  if (*(a1 + 236) == 1)
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpTextBlock()", a6, a7, a8, v33);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :", v10, v11, v12, v34);
    v13 = v9;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "cTextBytesAvailable=%d cTextBytesInStream=%d cTextBytesRead=%d", v14, v15, v16, v9);
  }

  else
  {
    v13 = (*(a1 + 68) - *(a1 + 76));
  }

  v17 = *(a1 + 8);
  if (v13)
  {
    v18 = datac_RequestBlock(v17, 1010, v9, &v35);
    if ((v18 & 0x80000000) == 0)
    {
      v19 = *(v35 + 8);
      cstdlib_memcpy(v19, (*(a1 + 56) + *(a1 + 76)), v13);
      *(v35 + 16) = v9;
      v23 = *(a1 + 68);
      if (v23 < 0x400)
      {
        cstdlib_strncpy(__dst, *(a1 + 56), v23);
        __dst[*(a1 + 68)] = 0;
        v24 = *(*a1 + 32);
        v25 = "Input TXT Stream -%s-";
        v33 = __dst;
      }

      else
      {
        v24 = *(*a1 + 32);
        v25 = "Input TXT Stream > PP_MAX_LOG_MESSAGE, skip trace";
      }

      log_OutText(v24, "PP_SENT_PARSER", 5, 0, v25, v20, v21, v22, v33);
      v31 = *(v35 + 16);
      if (v31 < 0x400)
      {
        cstdlib_strncpy(__dst, v19, v31);
        __dst[*(v35 + 16)] = 0;
        v29 = *(*a1 + 32);
        v30 = "Input TXT        -%s-";
        v33 = __dst;
      }

      else
      {
        v29 = *(*a1 + 32);
        v30 = "Input TXT > PP_MAX_LOG_MESSAGE, skip trace";
      }

      goto LABEL_14;
    }
  }

  else
  {
    v18 = datac_RequestBlock(v17, 1010, 1u, &v35);
    if ((v18 & 0x80000000) == 0)
    {
      *(v35 + 16) = 0;
      v29 = *(*a1 + 32);
      v30 = "Empty text block";
LABEL_14:
      log_OutText(v29, "PP_SENT_PARSER", 5, 0, v30, v26, v27, v28, v33);
    }
  }

  return v18;
}

uint64_t sentpar_loc_SetUpMarkerBlocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x277D85DE8];
  v94 = 0;
  v95 = 0;
  v9 = *(a1 + 104);
  v10 = *(a1 + 108);
  v93 = 0;
  v11 = v9 - v10;
  v12 = (v9 - v10) >> 6;
  if (*(a1 + 236) == 1)
  {
    v91 = v9 - v10;
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "sentpar_loc_SetUpMarkerBlocks()", a6, a7, a8, v88);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Input Stream State :", v13, v14, v15, v89);
    v16 = (v9 >> 6);
    v92 = v10;
    v17 = (v10 >> 6);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "numMarkersAvailable=%d numMarkersInStream=%d numMarkersInStreamRead=%d", v18, v19, v20, v12);
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Markers in Input Stream", v21, v22, v23, v90);
    if (v16)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = *(*(a1 + 96) + v28 + 48);
        if (v29)
        {
          v30 = cstdlib_strlen(v29);
          if ((v30 & 0xFFE0) != 0)
          {
            v31 = 31;
          }

          else
          {
            v31 = v30;
          }

          cstdlib_strncpy(__dst, *(*(a1 + 96) + v28 + 48), v31);
          __dst[v31] = 0;
        }

        else
        {
          __dst[0] = 0;
        }

        v32 = "";
        if (v17 > v27)
        {
          v32 = "(CONSUMED)";
        }

        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "%spInMrk[%d] %d %d,%d %d,%d INT=%d Ext=%d %s", v24, v25, v26, v32);
        v28 += 64;
        ++v27;
      }

      while (v16 << 6 != v28);
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "lastOutSyncMrk %d,%d %d,%d", v24, v25, v26, *(a1 + 144));
    v10 = v92;
    v11 = v91;
  }

  if (v11 <= 0x3Fu)
  {
    if (!*(a1 + 140))
    {
      v59 = 2369792000;
      if (!*(a1 + 240))
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1931, 0, a5, a6, a7, a8, v88);
      }

      return v59;
    }

    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "no markers - use lastOutSyncMrk", a6, a7, a8, v88);
    v33 = datac_RequestBlock(*(a1 + 8), 1011, 0x40u, &v95);
    if ((v33 & 0x80000000) == 0)
    {
      v34 = *(v95 + 8);
      cstdlib_memcpy(v34, (a1 + 120), 0x40uLL);
      *v34 = 1;
      *(v95 + 16) = 1;
      goto LABEL_54;
    }

    return v33;
  }

  v33 = datac_RequestBlock(*(a1 + 8), 1011, v11 & 0xFFC0, &v95);
  if ((v33 & 0x80000000) != 0)
  {
    return v33;
  }

  v35 = 0;
  v36 = 0;
  v34 = *(v95 + 8);
  v37 = (v10 >> 6);
  if (v12 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v12;
  }

  v39 = v37 << 6;
  do
  {
    cstdlib_memcpy(&v34[v35 / 4], (*(a1 + 96) + v39 + v35), 0x40uLL);
    v34[v35 / 4] = 0;
    hasNonConstCharPtrArg = marker_hasNonConstCharPtrArg(v34[v35 / 4 + 5]);
    v45 = *(a1 + 96) + v39 + v35;
    if (hasNonConstCharPtrArg)
    {
      v46 = *(v45 + 40);
      if (v46)
      {
        v47 = cstdlib_strlen(v46);
        LODWORD(v46) = 0;
        v36 += v47 + 1;
      }
    }

    else
    {
      LODWORD(v46) = *(v45 + 40);
    }

    v34[v35 / 4 + 10] = v46;
    v48 = *(*(a1 + 96) + v39 + v35 + 48);
    if (v48)
    {
      v49 = cstdlib_strlen(v48);
      if (v49)
      {
        v50 = heap_Calloc(*(*a1 + 8), 1, (v49 + 1));
        *&v34[v35 / 4 + 12] = v50;
        if (!v50)
        {
          return 2369789962;
        }

        cstdlib_strcpy(v50, *(*(a1 + 96) + v39 + v35 + 48));
      }
    }

    v35 += 64;
  }

  while (v38 << 6 != v35);
  *(v95 + 16) = v12;
  if (v36)
  {
    v33 = datac_RequestBlock(*(a1 + 8), 1012, v36, &v94);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }

    v51 = 0;
    v52 = *(v94 + 8);
    v53 = v34 + 5;
    v54 = (v37 << 6) | 0x28;
    v55 = v34 + 5;
    do
    {
      v56 = *v55;
      v55 += 16;
      if (marker_hasNonConstCharPtrArg(v56) && *(*(a1 + 96) + v54))
      {
        v53[5] = v51;
        v57 = *(*(a1 + 96) + v54);
        v58 = cstdlib_strlen(v57);
        cstdlib_memcpy((v52 + v51), v57, v58);
        *(v52 + cstdlib_strlen(*(*(a1 + 96) + v54)) + v51) = 0;
        v51 += cstdlib_strlen(*(*(a1 + 96) + v54)) + 1;
      }

      v54 += 64;
      v53 = v55;
      --v38;
    }

    while (v38);
    *(v94 + 16) = v51;
  }

  if (v34[5] == 0x4000)
  {
    if (*(a1 + 140))
    {
      if (*(v95 + 16) >= 2u && v34[24] < *(a1 + 152))
      {
        log_OutPublic(*(*a1 + 32), "PP_SENT_PARSER", 1932, "%s%d%s%d", v41, v42, v43, v44, "pMrk[1].posCur");
      }

      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is a SYNC marker, but update using lastOutSyncMrk", v42, v43, v44, v88);
      cstdlib_memcpy(v34, (a1 + 120), 0x40uLL);
      *v34 = 0;
      v34[7] = 0;
      v34[9] = 0;
      *(v34 + 5) = 0;
    }
  }

  else
  {
    log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "First Input Stream is not a SYNC marker, so clone it an make it a SYNC marker", v42, v43, v44, v88);
    cstdlib_memmove(v34 + 16, v34, *(v95 + 16) << 6);
    if (*(a1 + 140))
    {
      v60 = (a1 + 120);
    }

    else
    {
      v60 = v34 + 16;
    }

    cstdlib_memcpy(v34, v60, 0x40uLL);
    v34[5] = 0x4000;
    *v34 = 1;
    v34[7] = 0;
    v34[9] = 0;
    *(v34 + 5) = 0;
    ++*(v95 + 16);
  }

LABEL_54:
  v59 = datac_RequestBlock(*(a1 + 8), 1039, 1u, &v93);
  if ((v59 & 0x80000000) == 0)
  {
    v64 = *(v93 + 8);
    v65 = *(v93 + 16);
    if (*(v93 + 16))
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 32;
      do
      {
        if (*(v64 + v69) < v34[8])
        {
          v68 = v66;
          v67 = 1;
        }

        ++v66;
        v69 += 64;
      }

      while (v65 != v66);
      if (v67 == 1)
      {
        v70 = v68 + 1;
        LODWORD(v65) = v65 - v70;
        if (v65)
        {
          cstdlib_memmove(*(v93 + 8), (v64 + (v70 << 6)), v65 << 6);
          LOWORD(v65) = *(v93 + 16) - v70;
          *(v93 + 16) = v65;
        }

        else
        {
          *(v93 + 16) = 0;
        }
      }
    }

    if (*(a1 + 236) == 1)
    {
      log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "Persistent Markers", v61, v62, v63, v88);
      if (!*(v93 + 16))
      {
        return v59;
      }

      v74 = 0;
      v75 = v64 + 36;
      do
      {
        v75 += 64;
        log_OutText(*(*a1 + 32), "PP_SENT_PARSER", 5, 0, "pPersistMrk[%d] %d %d,%d %d,%d", v71, v72, v73, v74++);
        v65 = *(v93 + 16);
      }

      while (v74 < v65);
    }

    if (v65)
    {
      v59 = datac_RequestBlock(*(a1 + 8), 1011, ((*(v95 + 16) + v65) & 0x3FF) << 6, &v95);
      if ((v59 & 0x80000000) == 0)
      {
        if (*(v93 + 16))
        {
          v76 = 0;
          v77 = v95;
          v78 = *(v95 + 8);
          do
          {
            v79 = *(v77 + 16);
            v80 = v64 + (v76 << 6);
            if (v79)
            {
              v81 = 0;
              v82 = 0;
              v83 = 0;
              v84 = (v78 + 40);
              while (*(v80 + 32) >= *(v84 - 2))
              {
                if (*(v84 - 5) == 7)
                {
                  v83 = !v83;
                  if (*v84 == 43)
                  {
                    v82 = v81;
                  }

                  else
                  {
                    v83 = 0;
                  }
                }

                ++v81;
                v84 += 16;
                if (v79 == v81)
                {
                  LOWORD(v81) = v79;
                  break;
                }
              }

              if (v83)
              {
                v85 = *(v78 + (v82 << 6) + 32);
                if (v79 - 1 != v82)
                {
                  v82 = v79;
                }

                if (*(v80 + 32) != v85)
                {
                  v82 = v81;
                }

                if (v79 == v81)
                {
                  LOWORD(v81) = v82;
                }
              }
            }

            else
            {
              LOWORD(v81) = 0;
            }

            if (v79 == v81)
            {
              v86 = v78 + (v79 << 6);
            }

            else
            {
              v86 = v78 + (v81 << 6);
              cstdlib_memmove((v86 + 64), v86, (v79 - v81) << 6);
            }

            cstdlib_memcpy(v86, (v64 + (v76 << 6)), 0x40uLL);
            v77 = v95;
            ++*(v95 + 16);
            ++v76;
          }

          while (v76 < *(v93 + 16));
        }
      }
    }
  }

  return v59;
}

uint64_t pp_sent_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2369789953;
  }

  result = 0;
  *a2 = &IPPSentPar;
  return result;
}

uint64_t pp_sent_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  v21 = 0;
  v5 = 2369789959;
  v19 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
  {
    v12 = v21;
    v13 = v21[4];
    if (v13)
    {
      log_OutText(v13, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjOpen", v9, v10, v11, v18);
      v12 = v21;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = heap_Alloc(v12[1], 104);
    if (v14)
    {
      v15 = v14;
      cstdlib_memset(v14, 0, 0x68uLL);
      *v15 = a3;
      *(v15 + 1) = a4;
      Object = objc_GetObject(v21[6], "SYNTHSTREAM", &v20);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      *(v15 + 2) = *(v20 + 8);
      *(v15 + 24) = 0;
      if ((paramc_ParamGetStr(v21[5], "clcpppipelinemode", &v19) & 0x80000000) == 0 && v19 && *v19)
      {
        *(v15 + 24) = 1;
      }

      Object = sentpar_ObjOpen(a3, a4, *(v15 + 2), v15 + 11, *(v15 + 24));
      if ((Object & 0x80000000) != 0)
      {
LABEL_13:
        v5 = Object;
        pp_sent_parser_ObjClose(v15, 17557);
      }

      else
      {
        v5 = 0;
        *a5 = v15;
        *(a5 + 8) = 17557;
      }
    }

    else
    {
      return 2369789962;
    }
  }

  return v5;
}

uint64_t pp_sent_parser_ObjClose(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = a1[11];
    if (v8)
    {
      sentpar_ObjClose(*a1, a1[1], v8);
    }

    v9 = v12;
    if (a1[2])
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ObjReopen(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v11 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v11) & 0x80000000) == 0)
  {
    v7 = *(v11 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ObjReopen", v4, v5, v6, v10);
    }

    v8 = a1[11];
    if (v8)
    {
      sentpar_ObjReopen(*a1, a1[1], v8);
    }

    return 0;
  }

  return v3;
}

uint64_t pp_sent_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v7 = 2369789959;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v32) & 0x80000000) == 0)
  {
    v11 = *(v32 + 32);
    if (v11)
    {
      log_OutText(v11, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStart", v8, v9, v10, v31);
    }

    v12 = 0;
    v13 = a1 + 24;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = (*(*(a1 + 16) + 64))(a3, a4, 212, szOUTPUT_STREAMS[v12], 0, 0, v13 + 16 * v12);
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v14 = 0;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = *(a1 + 16);
      v20 = *(v19 + 64);
      if (v17)
      {
        break;
      }

      v17 = 1;
      v16 = v20(a3, a4, 212, szOUTPUT_STREAMS[v18], 0, 1, a1 + 56 + 16 * v18);
      v18 = 1;
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v21 = (*(v19 + 168))();
    v16 = v20(a3, a4, 212, "application/x-realspeak-int-markers-pp;version=4.0", v21, 1, a1 + 72);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_17:
      v7 = v16;
      goto LABEL_18;
    }

    v7 = sentpar_ProcessStart(v32, *(a1 + 88), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48));
    if ((v7 & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_18:
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = v23;
      v25 = (v13 + 16 * v22);
      if (*v25)
      {
        (*(*(a1 + 16) + 72))(*v25, v25[1]);
        *v25 = 0;
        *(v25 + 2) = 0;
      }

      v23 = 0;
      v22 = 1;
    }

    while ((v24 & 1) != 0);
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = (a1 + 56 + 16 * v26);
      if (*v29)
      {
        (*(*(a1 + 16) + 72))(*v29, v29[1]);
        *v29 = 0;
        *(v29 + 2) = 0;
      }

      v27 = 0;
      v26 = 1;
    }

    while ((v28 & 1) != 0);
  }

  return v7;
}

uint64_t pp_sent_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2369789959;
  v38 = 0;
  v37 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1)
  {
    if (!*(a1 + 24))
    {
      return 2369789969;
    }

    if ((InitRsrcFunction(*a1, *(a1 + 8), &v38) & 0x80000000) == 0)
    {
      v12 = *(v38 + 32);
      if (v12)
      {
        log_OutText(v12, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_Process", v9, v10, v11, v36);
      }

      *a5 = 2;
      v13 = a1 + 56;
      v14 = sentpar_Process(*(a1 + 88), &v37, *(a1 + 72), *(a1 + 80), v8, v9, v10, v11);
      if ((v14 & 0x80000000) == 0)
      {
        if (v37 == 1)
        {
          v7 = paramc_ParamSetStr(*(v38 + 40), "ppmarkersetlang", "normal");
          *a5 = 3;
          v18 = *(v38 + 32);
          if (v18)
          {
            log_OutText(v18, "PP_SENT_PARSER", 4, 0, "Immediate Voice Switch!", v15, v16, v17, v36);
          }
        }

        else
        {
          v24 = sentpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
          if ((v24 & 0x80000000) != 0)
          {
            v7 = v24;
          }

          else
          {
            v7 = sentpar_ResetMarkerBlocks(*(a1 + 88));
            if ((v7 & 0x80000000) == 0 && (*(a1 + 96) || sentpar_IsTextElementAtEos(*(a1 + 88))))
            {
              *a5 = 1;
              if (!*(a1 + 96))
              {
                v25 = 0;
                v26 = 1;
                do
                {
                  while (1)
                  {
                    v27 = v26;
                    v28 = (v13 + 16 * v25);
                    if (!*v28)
                    {
                      break;
                    }

                    v23 = (*(*(a1 + 16) + 72))(*v28, v28[1]);
                    v26 = 0;
                    *v28 = 0;
                    *(v28 + 2) = 0;
                    v25 = 1;
                    if ((v27 & (v23 >= 0)) == 0)
                    {
                      goto LABEL_41;
                    }
                  }

                  v26 = 0;
                  v25 = 1;
                }

                while ((v27 & 1) != 0);
LABEL_31:
                v7 = 0;
              }
            }
          }
        }

        goto LABEL_47;
      }

      v7 = v14;
      if ((v14 & 0x1FFF) == 0x800)
      {
        if (!*(a1 + 96))
        {
          *a5 = 0;
          if (*(a1 + 96))
          {
            v7 = v14;
          }

          else
          {
            v7 = 0;
          }

LABEL_47:
          v34 = *(v38 + 32);
          if (v34)
          {
            log_OutText(v34, "PP_SENT_PARSER", 4, 0, "Leaving pp_sent_parser_Process peResults=%d fRet=%d", v15, v16, v17, *a5);
          }

          return v7;
        }

        v7 = 0;
      }

      else
      {
        if ((v14 & 0x1FFF) == 0x17)
        {
          v19 = 0;
          v20 = 1;
          *a5 = 1;
          do
          {
            while (1)
            {
              v21 = v20;
              v22 = (v13 + 16 * v19);
              if (*v22)
              {
                break;
              }

              v20 = 0;
              v19 = 1;
              if ((v21 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            v23 = (*(*(a1 + 16) + 72))(*v22, v22[1]);
            v20 = 0;
            *v22 = 0;
            *(v22 + 2) = 0;
            v19 = 1;
          }

          while ((v21 & (v23 >= 0)) != 0);
LABEL_41:
          if (v23 < 0)
          {
            v7 = v23;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_47;
        }

        v29 = 0;
        v30 = 1;
        do
        {
          while (1)
          {
            v31 = v30;
            v32 = (v13 + 16 * v29);
            if (!*v32)
            {
              break;
            }

            v33 = (*(*(a1 + 16) + 72))(*v32, v32[1]);
            v30 = 0;
            *v32 = 0;
            *(v32 + 2) = 0;
            v29 = 1;
            if ((v31 & (v33 >= 0)) == 0)
            {
              goto LABEL_39;
            }
          }

          v30 = 0;
          v29 = 1;
        }

        while ((v31 & 1) != 0);
      }

LABEL_39:
      *a5 = 1;
      goto LABEL_47;
    }
  }

  return v7;
}

uint64_t pp_sent_parser_ProcessStop(_WORD **a1, int a2)
{
  v3 = 2369789959;
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 17557, 104) & 0x80000000) != 0)
  {
    return 2369789960;
  }

  if (a1 && (InitRsrcFunction(*a1, a1[1], &v20) & 0x80000000) == 0)
  {
    v7 = *(v20 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_SENT_PARSER", 4, 0, "Entering pp_sent_parser_ProcessStop", v4, v5, v6, v19);
    }

    v8 = sentpar_ProcessEnd(a1[11], *a1, a1[1]);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = &a1[2 * v9 + 7];
        if (*v12)
        {
          v8 = (*(a1[2] + 9))(*v12, v12[1]);
          *v12 = 0;
          *(v12 + 2) = 0;
          if ((v8 & 0x80000000) != 0)
          {
            break;
          }
        }

        v10 = 0;
        v9 = 1;
        if ((v11 & 1) == 0)
        {
          v13 = 0;
          v14 = 1;
          do
          {
            while (1)
            {
              v15 = v14;
              v16 = &a1[2 * v13 + 3];
              if (*v16)
              {
                break;
              }

              v14 = 0;
              v13 = 1;
              if ((v15 & 1) == 0)
              {
                return 0;
              }
            }

            v17 = (*(a1[2] + 9))(*v16, v16[1]);
            v14 = 0;
            *v16 = 0;
            *(v16 + 2) = 0;
            v13 = 1;
          }

          while ((v15 & (v17 >= 0)) != 0);
          if (v17 < 0)
          {
            return v17;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v8;
  }

  return v3;
}

uint64_t pp_word_parser_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  v5 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v5;
  }

  v6 = *(a1 + 88);

  return wordpar_ResourceTypes(v6, a3);
}

uint64_t pp_word_parser_ResourceUnload(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (!a1)
  {
    return v7;
  }

  v8 = *(a1 + 88);

  return wordpar_ResourceUnload(v8, a3, a4);
}

uint64_t pp_word_parser_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2370838529;
  }

  result = 0;
  *a2 = &IPPWordParser;
  return result;
}

uint64_t pp_word_parser_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  v5 = 2370838535;
  v20 = 0;
  if (a5 && (InitRsrcFunction(a3, a4, &v22) & 0x80000000) == 0)
  {
    v12 = v22;
    v13 = v22[4];
    if (v13)
    {
      log_OutText(v13, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjOpen", v9, v10, v11, v19);
      v12 = v22;
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = heap_Alloc(v12[1], 104);
    if (v14)
    {
      v15 = v14;
      cstdlib_memset(v14, 0, 0x68uLL);
      *v15 = a3;
      *(v15 + 8) = a4;
      *(v15 + 96) = 0;
      if ((paramc_ParamGetStr(v22[5], "clcpppipelinemode", &v20) & 0x80000000) == 0 && v20 && *v20)
      {
        *(v15 + 96) = 1;
      }

      Object = objc_GetObject(v22[6], "SYNTHSTREAM", &v21);
      if ((Object & 0x80000000) != 0 || (v17 = *(v21 + 8), *(v15 + 16) = v17, Object = wordpar_ObjOpen(a3, a4, v17, (v15 + 88), *(v15 + 96)), (Object & 0x80000000) != 0))
      {
        v5 = Object;
        pp_word_parser_ObjClose(v15, 87327);
      }

      else
      {
        v5 = 0;
        *a5 = v15;
        *(a5 + 8) = 87327;
      }
    }

    else
    {
      return 2370838538;
    }
  }

  return v5;
}

uint64_t pp_word_parser_ObjClose(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjClose", v4, v5, v6, v11);
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      wordpar_ObjClose(v8);
    }

    v9 = v12;
    if (*(a1 + 16))
    {
      objc_ReleaseObject(*(v12 + 48), "SYNTHSTREAM");
      v9 = v12;
    }

    heap_Free(*(v9 + 8), a1);
    return 0;
  }

  return v3;
}

uint64_t pp_word_parser_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v12 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v12) & 0x80000000) == 0)
  {
    v7 = *(v12 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ObjReopen", v4, v5, v6, v11);
    }

    v8 = *(a1 + 88);
    if (v8 && (v9 = wordpar_ObjReopen(v8), (v9 & 0x80001FFF) == 0x8000000A))
    {
      v3 = v9;
      *(a1 + 88) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t pp_word_parser_ResourceLoad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = 0;
  v13 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v20) & 0x80000000) == 0)
  {
    if (a3 && a7)
    {
      if (a4)
      {
        if (a5 || !a6)
        {
          return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
        }
      }

      else if (a5 && a6)
      {
        return wordpar_ResourceLoad(*(a1 + 88), a3, a4, a5, a6, a7);
      }
    }

    log_OutPublic(*(v20 + 32), "PP_WORD_PARSER", 1923, 0, v14, v15, v16, v17, v19);
  }

  return v13;
}

uint64_t pp_word_parser_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v7 = 2370838535;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1)
  {
    HIDWORD(v29) = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v30) & 0x80000000) == 0)
    {
      v11 = *(v30 + 32);
      if (v11)
      {
        log_OutText(v11, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStart", v8, v9, v10, v29);
      }

      WParserType = wordpar_GetWParserType(*(a1 + 88), &v29 + 1);
      if ((WParserType & 0x80000000) != 0)
      {
        return WParserType;
      }

      else
      {
        v13 = 0;
        v14 = a1 + 24;
        v15 = 1;
        do
        {
          v16 = v15;
          if (((*(*(a1 + 16) + 64))(a3, a4, 213, szINPUT_STREAMS[v13], 0, 0, v14 + 16 * v13) & 0x80000000) != 0)
          {
            goto LABEL_15;
          }

          v15 = 0;
          v13 = 1;
        }

        while ((v16 & 1) != 0);
        if (((*(*(a1 + 16) + 64))(a3, a4, 213, "text/plain;charset=utf-8", 0, 1, a1 + 56) & 0x80000000) != 0 || (v17 = *(a1 + 16), v18 = *(v17 + 64), v19 = (*(v17 + 152))(), (v18(a3, a4, 213, "application/x-realspeak-markers-pp;version=4.0", v19, 1, a1 + 72) & 0x80000000) != 0))
        {
LABEL_15:
          v20 = 0;
          v21 = 1;
          do
          {
            v22 = v21;
            v23 = (v14 + 16 * v20);
            if (*v23)
            {
              (*(*(a1 + 16) + 72))(*v23, v23[1]);
              *v23 = 0;
              *(v23 + 2) = 0;
            }

            v21 = 0;
            v20 = 1;
          }

          while ((v22 & 1) != 0);
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = (a1 + 56 + 16 * v24);
            if (*v27)
            {
              (*(*(a1 + 16) + 72))(*v27, v27[1]);
              *v27 = 0;
              *(v27 + 2) = 0;
            }

            v25 = 0;
            v24 = 1;
          }

          while ((v26 & 1) != 0);
          return 0;
        }

        WParserType = wordpar_ProcessStart(*(a1 + 88));
        if ((WParserType & 0x80000000) != 0)
        {
          return WParserType;
        }

        return 0;
      }
    }
  }

  return v7;
}

uint64_t pp_word_parser_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2370838535;
  v48 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v48) & 0x80000000) == 0)
  {
    v11 = v48;
    v12 = *(v48 + 32);
    if (v12)
    {
      log_OutText(v12, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_Process", v8, v9, v10, v45);
      v11 = v48;
    }

    *a5 = 1;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v47 = 0;
    v13 = (*(*(a1 + 16) + 88))(*(a1 + 24), *(a1 + 32), &v52, &v51 + 4);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v14 = HIDWORD(v51);
    v7 = (*(*(a1 + 16) + 144))(*(a1 + 40), *(a1 + 48), &v51, &v50);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    if (v51)
    {
      if (v51)
      {
        v13 = (*(*(a1 + 16) + 88))(*(a1 + 40), *(a1 + 48), &v47, &v50 + 4);
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

        v22 = HIDWORD(v50);
        v7 = wordpar_LoadFromStreamData(*(a1 + 88), v52, HIDWORD(v51), v47, HIDWORD(v50));
        LODWORD(v18) = 0;
LABEL_19:
        if ((v7 & 0x80000000) != 0)
        {
          return v7;
        }

        v23 = v48;
        v52 = 0;
        if ((v22 & 0x3FFFC0) != 0)
        {
          v46 = v22;
          v7 = 0;
          v24 = (v22 >> 6);
          v25 = (v47 + 40);
          while (1)
          {
            if (*(v25 - 5) == 200)
            {
              if (*v25 && cstdlib_strlen(*v25) && LH_stricmp(*v25, "unset"))
              {
                if (LH_stricmp(*v25, "reset"))
                {
                  v26 = *v25;
                }

                else
                {
                  Str = paramc_ParamGetStr(*(v23 + 40), "shortfragmentforceclm_value_pipeline", &v52);
                  if (v52)
                  {
                    v30 = Str < 0;
                  }

                  else
                  {
                    v30 = 1;
                  }

                  if (v30)
                  {
                    v26 = "";
                  }

                  else
                  {
                    v26 = v52;
                  }
                }
              }

              else
              {
                v26 = "";
              }

              v27 = paramc_ParamSetStr(*(v23 + 40), "shortfragmentforceclm", v26);
              v7 = v27;
              if ((v27 & 0x80000000) == 0)
              {
                v28 = "Parameter markup \\!\\%s=%s\\ => set %s=%s";
LABEL_33:
                log_OutText(*(v23 + 32), "PP_WORD_PARSER", 4, 0, v28, v15, v16, v17, "shortfragmentforceclm");
                goto LABEL_34;
              }

              if ((v27 & 0x1FFF) == 0xF)
              {
                v7 = 0;
                v28 = "Parameter markup \\!\\%s=%s\\ => set %s=%s : failed, invalid parameter value";
                goto LABEL_33;
              }
            }

LABEL_34:
            v25 += 8;
            if (!--v24)
            {
              v22 = v46;
              v14 = v14;
              if ((v7 & 0x80000000) != 0)
              {
                return v7;
              }

LABEL_52:
              if (v18 == 1)
              {
                LODWORD(v7) = 0;
                v31 = 0;
                goto LABEL_54;
              }

              v33 = wordpar_Process(*(a1 + 88));
              if ((v33 & 0x1FFF) == 0xA)
              {
                v7 = v7;
              }

              else
              {
                v7 = v33;
              }

              if ((v7 & 0x80000000) != 0)
              {
                if ((v7 & 0x1FFF) == 0x800)
                {
                  *a5 = 0;
                  if (*(a1 + 96))
                  {
                    return v7;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else if ((v7 & 0x1FFF) == 0x17)
                {
                  v35 = 0;
                  v36 = 1;
                  *a5 = 1;
                  do
                  {
                    while (1)
                    {
                      v37 = v36;
                      v38 = (a1 + 56 + 16 * v35);
                      if (*v38)
                      {
                        break;
                      }

                      v36 = 0;
                      v7 = 0;
                      v35 = 1;
                      if ((v37 & 1) == 0)
                      {
                        return v7;
                      }
                    }

                    v39 = (*(*(a1 + 16) + 72))(*v38, v38[1]);
                    v36 = 0;
                    *v38 = 0;
                    *(v38 + 2) = 0;
                    v35 = 1;
                  }

                  while ((v37 & (v39 >= 0)) != 0);
                  if (v39 < 0)
                  {
                    return v39;
                  }

                  else
                  {
                    return 0;
                  }
                }

                else
                {
                  v40 = 0;
                  v41 = 1;
                  do
                  {
                    while (1)
                    {
                      v42 = v41;
                      v43 = (a1 + 56 + 16 * v40);
                      if (!*v43)
                      {
                        break;
                      }

                      v44 = (*(*(a1 + 16) + 72))(*v43, v43[1]);
                      v41 = 0;
                      *v43 = 0;
                      *(v43 + 2) = 0;
                      v40 = 1;
                      if ((v42 & (v44 >= 0)) == 0)
                      {
                        goto LABEL_87;
                      }
                    }

                    v41 = 0;
                    v40 = 1;
                  }

                  while ((v42 & 1) != 0);
LABEL_87:
                  *a5 = 1;
                }

                return v7;
              }

              v31 = v33;
              if ((v33 & 0x1FFF) == 0xA || (v13 = wordpar_WriteTextAndMarkers(*(a1 + 88), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)), (v13 & 0x80000000) == 0))
              {
                v13 = wordpar_ResetData(*(a1 + 88));
                if ((v13 & 0x80000000) == 0)
                {
                  v13 = (*(*(a1 + 16) + 96))(*(a1 + 24), *(a1 + 32), v14);
                  if ((v13 & 0x80000000) == 0)
                  {
                    v7 = (*(*(a1 + 16) + 96))(*(a1 + 40), *(a1 + 48), v22);
                    if ((v7 & 0x80000000) != 0)
                    {
                      return v7;
                    }

LABEL_54:
                    v32 = *(v48 + 32);
                    if (v32)
                    {
                      log_OutText(v32, "PP_WORD_PARSER", 4, 0, "Leaving pp_word_parser_Process", v15, v16, v17, v45);
                    }

                    if ((v31 & 0x1FFF) == 0xA)
                    {
                      return v31;
                    }

                    else
                    {
                      return v7;
                    }
                  }
                }
              }

              return v13;
            }
          }
        }

LABEL_51:
        LODWORD(v7) = 0;
        goto LABEL_52;
      }

      LODWORD(v18) = 0;
    }

    else
    {
      if (v50)
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = v19;
          v21 = (a1 + 56 + 16 * v18);
          if (*v21)
          {
            v7 = (*(*(a1 + 16) + 72))(*v21, v21[1]);
            *v21 = 0;
            *(v21 + 2) = 0;
          }

          v19 = 0;
          v18 = 1;
        }

        while ((v20 & 1) != 0);
        v22 = 0;
        goto LABEL_19;
      }

      v49 = 0;
      if ((paramc_ParamGetStr(*(v11 + 40), "clcpppipelinemode", &v49) & 0x80000000) != 0 || !v49 || !*v49)
      {
        *a5 = 0;
      }

      LODWORD(v18) = 1;
    }

    v22 = 0;
    goto LABEL_51;
  }

  return v7;
}

uint64_t pp_word_parser_ProcessStop(uint64_t a1, int a2)
{
  v3 = 2370838535;
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 87327, 104) & 0x80000000) != 0)
  {
    return 2370838536;
  }

  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v20) & 0x80000000) == 0)
  {
    v7 = *(v20 + 32);
    if (v7)
    {
      log_OutText(v7, "PP_WORD_PARSER", 4, 0, "Entering pp_word_parser_ProcessStop", v4, v5, v6, v19);
    }

    v8 = wordpar_ProcessEnd(*(a1 + 88));
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v10;
        v12 = (a1 + 56 + 16 * v9);
        if (*v12)
        {
          v8 = (*(*(a1 + 16) + 72))(*v12, v12[1]);
          *v12 = 0;
          *(v12 + 2) = 0;
          if ((v8 & 0x80000000) != 0)
          {
            break;
          }
        }

        v10 = 0;
        v9 = 1;
        if ((v11 & 1) == 0)
        {
          v13 = 0;
          v14 = 1;
          do
          {
            while (1)
            {
              v15 = v14;
              v16 = (a1 + 24 + 16 * v13);
              if (*v16)
              {
                break;
              }

              v14 = 0;
              v13 = 1;
              if ((v15 & 1) == 0)
              {
                return 0;
              }
            }

            v17 = (*(*(a1 + 16) + 72))(*v16, v16[1]);
            v14 = 0;
            *v16 = 0;
            *(v16 + 2) = 0;
            v13 = 1;
          }

          while ((v15 & (v17 >= 0)) != 0);
          if (v17 < 0)
          {
            return v17;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return v8;
  }

  return v3;
}

uint64_t wordpar_freeBRKDefs(uint64_t a1)
{
  if (!*(a1 + 152))
  {
    return 0;
  }

  v5 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v5);
  if ((inited & 0x80000000) != 0)
  {
    return 2370838535;
  }

  v3 = inited;
  heap_Free(*(v5 + 8), *(a1 + 152));
  *(a1 + 152) = 0;
  return v3;
}

uint64_t wordpar_getBRKDefs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  v13 = 0;
  v14 = 0;
  if (!*(a1 + 152))
  {
    v4 = 2370838535;
    __dst = 0;
    if ((InitRsrcFunction(*a1, *(a1 + 8), &v13) & 0x80000000) == 0)
    {
      cstdlib_memcpy(&__dst, a4, 2uLL);
      *(a1 + 164) = __dst;
      cstdlib_memcpy(&v14, (a4 + 2), 4uLL);
      LODWORD(v14) = v14 + 1;
      v10 = heap_Calloc(*(v13 + 8), 1, v14);
      *(a1 + 152) = v10;
      if (v10)
      {
        cstdlib_memcpy(&v14 + 4, (a4 + 6), 4uLL);
        StringZ = ssftriff_reader_ReadStringZ(a2, a4, a3, HIDWORD(v14) + 10, *(a1 + 152), &v14);
        if ((StringZ & 0x80000000) == 0)
        {
          if (*(a1 + 152))
          {
            return StringZ;
          }

          else
          {
            return 2370838535;
          }
        }
      }

      else
      {
        wordpar_freeBRKDefs(a1);
        return 2370838538;
      }
    }
  }

  return v4;
}

uint64_t wordpar_loc_nonasian_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v238 = 0;
  v239 = 0;
  v5 = 2370838528;
  if (!a1)
  {
    return 2370838535;
  }

  v8 = a3;
  v10 = a1;
  v240 = 0;
  inserted = (*(*(a1 + 32) + 136))(a2, a3, &v240);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v227 = a2;
  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
  v242 = 0;
  v243[0] = 0;
  v241 = 0;
  v12 = cstdlib_strlen((v10 + 180));
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, v243);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v13 = *(v243[0] + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v242);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v14 = *(v242 + 8);
  inserted = datac_RequestBlock(*(v10 + 24), 1012, 1u, &v241);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v213 = a4;
  v214 = a5;
  v15 = v242;
  v16 = *(v242 + 16);
  v235 = v10;
  if (v16 >= 2)
  {
    v17 = 0;
    v215 = v12;
    __n = v12;
    v212 = -1;
    v18 = 1;
    v19 = 1;
    v219 = v8;
    v20 = v14;
    while (1)
    {
      v21 = v20 + (v18 << 6);
      v22 = *(v21 + 20);
      if (v22 == 21)
      {
        v17 = v18;
        goto LABEL_269;
      }

      if (v22 != 7 || *(v21 + 40) != 43)
      {
        goto LABEL_269;
      }

      v226 = v17;
      v23 = *(v21 + 48);
      if (!v23)
      {
        v17 = v226;
        goto LABEL_269;
      }

      v24 = *(v20 + 32);
      v223 = (v19 + 1);
      LODWORD(v25) = v19 + 1;
      if (v16 > (v19 + 1))
      {
        v25 = (v19 + 1);
        v26 = (v20 + (v25 << 6) + 20);
        while (1)
        {
          v27 = *v26;
          v26 += 16;
          if (v27 == 7)
          {
            break;
          }

          if (v16 == ++v25)
          {
            goto LABEL_19;
          }
        }
      }

      if (v25 == v16)
      {
LABEL_19:
        v225 = *(v20 + 36);
      }

      else
      {
        v225 = *(v20 + (v25 << 6) + 32) - v24;
        v16 = v25;
      }

      v28 = *(v21 + 32) - v24;
      v231 = (*(v21 + 32) - v24);
      v236 = v13;
      v221 = v18;
      v234 = v16;
      v218 = v19;
      v222 = v28;
      if (!*(v21 + 56))
      {
        goto LABEL_63;
      }

      v29 = v225 - v28;
      *(v21 + 48) = 0;
      v30 = (v225 - v28);
      if (v225 == v28)
      {
        goto LABEL_63;
      }

      v31 = v13 + v231;
      v32 = 0;
      while (utf8_BelongsToSet(0, v31, v32, v29))
      {
        if (v30 == ++v32)
        {
          v32 = v29;
          break;
        }
      }

      if (v29 == 1)
      {
LABEL_32:
        LOWORD(v29) = 1;
      }

      else
      {
        v33 = (v29 - 1);
        while (utf8_BelongsToSet(0, v31, v33, v30))
        {
          LOWORD(v29) = v29 - 1;
          if (!--v33)
          {
            goto LABEL_32;
          }
        }
      }

      if (v29 <= v32)
      {
        goto LABEL_63;
      }

      v232 = 0;
      v34 = 95;
      v35 = v32;
      v228 = v20;
      do
      {
        v36 = *(v31 + v35);
        if (v36 == 35 || v36 == 95)
        {
          if (v34 != 35 && v34 != 95)
          {
            ++v232;
          }
        }

        else
        {
          v87 = v36 == 92;
          v37 = v35 + 1;
          v38 = !v87 || v37 >= v29;
          if (!v38 && *(v31 + v37) == 84)
          {
            for (i = v35 + 2; i < v29; i += utf8_determineUTF8CharLength(v40))
            {
              v40 = *(v31 + i);
              if (v40 == 92)
              {
                break;
              }
            }

            if (*(v31 + i) == 92)
            {
              v35 = i;
            }

            v20 = v228;
          }
        }

        if (!utf8_BelongsToSet(0, v31, v35, v30))
        {
          v34 = *(v31 + v35);
        }

        ++v35;
      }

      while (v35 < v29);
      v10 = v235;
      if (v34 != 35 && v34 != 95)
      {
        ++v232;
      }

      if (v232)
      {
        v41 = v29 - v32;
        v42 = v241;
        v43 = *(v241 + 16);
        v44 = v29 - v32 + v43 + 1;
        if (*(v241 + 18) < v44)
        {
          inserted = datac_RequestBlock(*(v235 + 24), 1012, (v29 - v32 + v43 + 1), &v241);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v42 = v241;
          v43 = *(v241 + 16);
        }

        v45 = (*(v42 + 8) + *(v42 + 2) * v43);
        cstdlib_strncpy(v45, &v236[(v32 + v222)], v41);
        v45[v41] = 0;
        *(v21 + 20) = 34;
        *(v21 + 40) = *(v241 + 16);
        *(v241 + 16) = v44;
        v46 = v232;
      }

      else
      {
LABEL_63:
        v46 = 0;
      }

      v47 = cstdlib_strlen(v23);
      LOWORD(v48) = v47;
      v49 = v47;
      if (v47)
      {
        v50 = v20;
        v51 = 0;
        v52 = v47;
        while (utf8_BelongsToSet(1u, v23, v51, v49) == 1)
        {
          if (v52 == ++v51)
          {
            LOWORD(v51) = v48;
            v20 = v50;
LABEL_72:
            LOWORD(v48) = v48 - v51;
            v23[v48] = 0;
            goto LABEL_73;
          }
        }

        if (v51)
        {
          v20 = v50;
          if (!utf8_BelongsToSet(1u, v23, v51, v49))
          {
            cstdlib_memmove(v23, &v23[v51], v48 - v51);
          }

          goto LABEL_72;
        }

        v20 = v50;
      }

LABEL_73:
      v53 = v236;
      v54 = v48;
      v233 = v46;
      if (v48)
      {
        if (v48 != 1)
        {
          v55 = v20;
          v56 = (v48 - 1);
          v57 = v48 - 1;
          while (utf8_BelongsToSet(1u, v23, v56, v48) == 1)
          {
            v56 = --v57;
            if (!v57)
            {
              goto LABEL_83;
            }
          }

          if (v48 - 1 != v56 && !utf8_BelongsToSet(1u, v23, v56, v48))
          {
            v23[v57 + 1] = 0;
            LOWORD(v48) = cstdlib_strlen(v23);
          }

LABEL_83:
          if (!v48)
          {
            v48 = 0;
            v54 = 0;
            v58 = 0;
            v20 = v55;
            v53 = v236;
            v46 = v233;
            goto LABEL_98;
          }

          v54 = v48;
          v20 = v55;
          v46 = v233;
        }

        v59 = 0;
        LOWORD(v60) = 0;
        v58 = *v23 != 0;
        do
        {
          if (!v23[v60])
          {
            break;
          }

          v61 = utf8_BelongsToSet(1u, v23, v59, v54);
          if (v60 < v48 && v61 == 1)
          {
            v60 = v60;
            while (utf8_BelongsToSet(1u, v23, v60, v54) == 1)
            {
              if (v54 == ++v60)
              {
                LOWORD(v60) = v48;
                goto LABEL_95;
              }
            }

            if (v23[v60])
            {
              ++v58;
            }
          }

LABEL_95:
          LOWORD(v60) = v60 + 1;
          v59 = v60;
        }

        while (v60 < v48);
        v48 = v48;
        v53 = v236;
      }

      else
      {
        v48 = 0;
        v58 = 0;
      }

LABEL_98:
      v62 = 0;
      if (v46 && *(v21 + 56) && v46 != v58)
      {
        if (v46 > v58)
        {
          v224 = 0;
          v62 = ((v46 - v58) * v215);
          v63 = (v46 - v58);
        }

        else
        {
          v64 = *(v10 + 24);
          v65 = *(v242 + 16) + 1;
          *(v242 + 16) = v65;
          inserted = datac_RequestBlock(v64, 1021, v65, &v242);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v66 = *(v242 + 8);
          v67 = (v66 + (v223 << 6));
          cstdlib_memmove(v67 + 16, v67, (*(v242 + 16) - v218) << 6);
          v68 = *(v241 + 16);
          v69 = v68 + cstdlib_strlen(v23) + 1;
          v70 = v241;
          if (*(v241 + 18) < v69)
          {
            inserted = datac_RequestBlock(*(v10 + 24), 1012, v69, &v241);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v70 = v241;
          }

          v224 = v58 - v233;
          ++v234;
          cstdlib_strcpy((*(v70 + 8) + *(v70 + 2) * *(v70 + 16)), v23);
          v67[10] = *(v241 + 16);
          *(v241 + 16) = v69;
          v71 = v66 + (v18 << 6);
          v72 = *(v71 + 24);
          v67[5] = 100;
          v67[6] = v72;
          v67[8] = *(v71 + 32) + 1;
          *v67 = 1;
          v73 = cstdlib_strlen(v23);
          v62 = 0;
          v63 = 0;
          v67[7] = v73;
          v20 = v66;
          v53 = v236;
        }
      }

      else
      {
        v63 = 0;
        v224 = 0;
      }

      v229 = v20;
      v74 = v62 + v54;
      v75 = v225 - v231;
      v76 = v74 - (v225 - v231);
      v217 = v74;
      if (v74 <= v75)
      {
        v79 = v75 - v74;
        v220 = -v79;
        cstdlib_memmove(&v53[v225 - v79], &v53[v225], *(v243[0] + 16) - v225);
        v77 = v243[0];
        v78 = *(v243[0] + 16) - v79;
      }

      else
      {
        inserted = datac_RequestBlock(*(v10 + 24), 1020, (*(v243[0] + 16) + v76), v243);
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        v53 = *(v243[0] + 8);
        cstdlib_memmove(&v53[v225 + v76], &v53[v225], *(v243[0] + 16) - v225);
        v77 = v243[0];
        LOWORD(v220) = v74 - (v225 - v231);
        v78 = *(v243[0] + 16) + v76;
      }

      *(v77 + 16) = v78;
      cstdlib_strncpy(&v53[v231], v23, v48);
      v237 = v53;
      v80 = cstdlib_strlen(v53);
      if (v63)
      {
        v81 = v63;
        v82 = &v53[v54 + v231];
        do
        {
          cstdlib_strncpy(v82, (v10 + 180), __n);
          v82 += __n;
          --v81;
        }

        while (v81);
      }

      heap_Free(*(*(v10 + 16) + 8), v23);
      if (v224)
      {
        PreviousUtf8Offset = v54 + v222 + v63 * v215;
        v8 = v219;
        v17 = v226;
        v13 = v237;
        while (--PreviousUtf8Offset)
        {
          if (*(v243[0] + 16) <= PreviousUtf8Offset || utf8_BelongsToSet(1u, v237, PreviousUtf8Offset, v80) != 1)
          {
            while (1)
            {
              v84 = *(v243[0] + 16);
              if (PreviousUtf8Offset >= v84)
              {
                break;
              }

              v13 = v237;
              if (utf8_BelongsToSet(1u, v237, PreviousUtf8Offset, v80))
              {
                v84 = *(v243[0] + 16);
                break;
              }

              PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v237, PreviousUtf8Offset);
              if (!PreviousUtf8Offset)
              {
                goto LABEL_144;
              }
            }

            v13 = v237;
            if (v84 > PreviousUtf8Offset)
            {
              do
              {
                while (*(v243[0] + 16) > PreviousUtf8Offset && utf8_BelongsToSet(1u, v13, PreviousUtf8Offset, v80) == 1)
                {
                  *(v13 + PreviousUtf8Offset--) = 45;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                --v224;
                while (1)
                {
                  v86 = *(v243[0] + 16);
                  if (PreviousUtf8Offset >= v86)
                  {
                    break;
                  }

                  if (utf8_BelongsToSet(1u, v237, PreviousUtf8Offset, v80))
                  {
                    v86 = *(v243[0] + 16);
                    break;
                  }

                  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(v237, PreviousUtf8Offset);
                  v13 = v237;
                  if (!PreviousUtf8Offset)
                  {
                    goto LABEL_144;
                  }
                }

                v87 = v86 <= PreviousUtf8Offset || v224 == 0;
                v13 = v237;
              }

              while (!v87);
            }

            break;
          }
        }

LABEL_144:
        v85 = *(v242 + 16);
        if (v85 >= 2)
        {
          v88 = *(v229 + 32);
          v89 = v88 + v231;
          v90 = v88 + v225;
          v91 = v85 - 1;
          v92 = (v229 + 96);
          v93 = v223;
          v94 = v220;
          do
          {
            if (*v92 > v89 && *v92 < v90)
            {
              *v92 = v89;
            }

            v92 += 16;
            --v91;
          }

          while (v91);
          v96 = v222;
          goto LABEL_154;
        }
      }

      else
      {
        v85 = *(v242 + 16);
        v8 = v219;
        v17 = v226;
        v13 = v237;
      }

      v93 = v223;
      v96 = v222;
      v94 = v220;
LABEL_154:
      *(v229 + 36) = *(v243[0] + 16);
      wordpar_loc_adjustMarkerPositions(v85, v229, v93, v96, v225, v94);
      v97 = v18;
      v98 = (v229 + (v18 << 6));
      if (v233 && v98[14])
      {
        v20 = v229;
        v99 = v217 + v231 + *(v229 + 32);
        v15 = v242;
        v100 = *(v242 + 16);
        v101 = v234;
        if (v100 < 2)
        {
LABEL_165:
          inserted = datac_RequestBlock(*(v10 + 24), 1021, (v100 + 1), &v242);
          if ((inserted & 0x80000000) != 0)
          {
            return inserted;
          }

          v20 = *(v242 + 8);
          v106 = *(v242 + 16);
          v107 = v234;
          v108 = v20 + (v234 << 6);
          if (v106 == v234)
          {
            cstdlib_memcpy((v20 + (v234 << 6)), (v108 - 64), 0x40uLL);
            *(v108 + 24) += *(v108 + 28);
          }

          else
          {
            cstdlib_memmove((v108 + 64), (v20 + (v234 << 6)), (v106 - v234) << 6);
            cstdlib_memcpy((v20 + (v234 << 6)), (v108 + 64), 0x40uLL);
          }

          *(v108 + 20) = 21;
          *(v108 + 32) = v99;
          *(v108 + 36) = 0;
          *(v108 + 28) = 0;
          v97 = v221;
          if (*(v108 + 48))
          {
            *(v108 + 48) = 0;
          }

          v101 = v234;
          if (v17)
          {
            v112 = *(v20 + (v17 << 6) + 40);
          }

          else
          {
            v112 = v212;
            if (v212 == -1)
            {
              v113 = v20;
              v114 = *(v241 + 8);
              LOWORD(v20) = *(v241 + 16);
              if (v114 && *(v241 + 16))
              {
                v112 = 0;
                while (1)
                {
                  v115 = cstdlib_strlen(v114);
                  MarkerArgStr = marker_getMarkerArgStr(1u);
                  if (!cstdlib_strcmp(v114, MarkerArgStr))
                  {
                    break;
                  }

                  v117 = (v115 + 1);
                  v112 += v117;
                  v114 += v117;
                  LODWORD(v20) = *(v241 + 16);
                  if (v112 >= v20)
                  {
                    goto LABEL_186;
                  }
                }

                v212 = v112;
                v20 = v113;
              }

              else
              {
LABEL_186:
                v118 = marker_getMarkerArgStr(1u);
                v119 = v20 + cstdlib_strlen(v118) + 1;
                v120 = v241;
                v20 = v113;
                if (*(v241 + 18) < v119)
                {
                  inserted = datac_RequestBlock(*(v10 + 24), 1012, v119, &v241);
                  if ((inserted & 0x80000000) != 0)
                  {
                    return inserted;
                  }

                  v120 = v241;
                }

                v121 = (*(v120 + 8) + *(v120 + 2) * *(v120 + 16));
                v122 = marker_getMarkerArgStr(1u);
                cstdlib_strcpy(v121, v122);
                v123 = marker_getMarkerArgStr(1u);
                v121[cstdlib_strlen(v123)] = 0;
                v112 = *(v241 + 16);
                *(v241 + 16) = v119;
                v212 = v112;
              }

              v101 = v234;
              v97 = v221;
            }
          }

          *(v108 + 40) = v112;
          v15 = v242;
          ++*(v242 + 16);
        }

        else
        {
          v102 = (v229 + 84);
          v103 = 2;
          while (1)
          {
            v104 = v102[3];
            if (v104 == v99 && *v102 == 21)
            {
              break;
            }

            v102 += 16;
            if (v104 > v99 || v103++ >= v100)
            {
              goto LABEL_165;
            }
          }

          v107 = v234;
        }

        v129 = v20 + (v107 << 6);
        v130 = (v20 + 96);
        v131 = 1;
        v132 = v20 + (v97 << 6);
        while (2)
        {
          v133 = v131;
          v134 = *(v20 + 32);
          if (v133)
          {
            v135 = *(v132 + 32);
            v136 = v135 - v134;
            v137 = (v135 - v134);
            if (v137 && *(v237 + (v137 - 1)) != 32)
            {
              v138 = *(v15 + 16) + 1;
              LOWORD(v139) = *(v243[0] + 16);
              goto LABEL_217;
            }
          }

          else
          {
            v135 = *(v129 + 32);
            v136 = v135 - v134;
            v140 = (v135 - v134);
            if (v135 == v134 || (v139 = *(v243[0] + 16), v140 >= v139) || *(v237 + v140) == 32 || *(v237 + (v140 - 1)) == 32)
            {
LABEL_235:
              if (*(v132 + 20) == 34)
              {
                v150 = *(v15 + 16);
                v8 = v219;
                v17 = v226;
                if (v150 <= v101 || *(v129 + 20) != 21)
                {
                  goto LABEL_266;
                }

                if (v150 < 2)
                {
                  v152 = 1;
                }

                else
                {
                  v151 = 1;
                  while (*(v130 - 3) != 1 || *v130 != *(v132 + 32))
                  {
                    ++v151;
                    v130 += 16;
                    if (v150 == v151)
                    {
                      v152 = *(v15 + 16);
                      goto LABEL_247;
                    }
                  }

                  v152 = v151;
                }

                v153 = (v20 + (v152 << 6));
                if (v153[5] != 1)
                {
                  goto LABEL_266;
                }

                v154 = v153[8];
                if (v154 != *(v132 + 32))
                {
                  goto LABEL_266;
                }

LABEL_247:
                v155 = *(v20 + 36);
                v156 = (v154 - *(v20 + 32));
                if (v156 >= v155)
                {
                  v159 = 0;
                }

                else
                {
                  v230 = v20;
                  v157 = 0;
                  do
                  {
                    if (utf8_BelongsToSet(0, v237, v156, v80))
                    {
                      break;
                    }

                    v158 = utf8_determineUTF8CharLength(*(v237 + v156));
                    v157 += v158;
                    v156 = (v158 + v156);
                  }

                  while (v156 < v155);
                  v15 = v242;
                  LODWORD(v150) = *(v242 + 16);
                  v159 = v157;
                  v20 = v230;
                  v101 = v234;
                }

                v153[9] = v159;
                v160 = v152 + 1;
                v17 = v226;
                if (v150 > (v152 + 1))
                {
                  v5 = 2370838528;
                  do
                  {
                    v161 = (v20 + (v160 << 6));
                    if (v161[5] == 1 && (v162 = v161[8], v162 >= *(v132 + 32)) && v162 < *(v20 + (v101 << 6) + 32))
                    {
                      v163 = v160 + 1;
                      if (v163 != v150)
                      {
                        v164 = v101;
                        cstdlib_memmove(v161, (v20 + (v163 << 6)), (v150 - v160) << 6);
                        v101 = v164;
                        v15 = v242;
                      }

                      --*(v15 + 16);
                      --v101;
                    }

                    else
                    {
                      v152 = v160;
                    }

                    v160 = v152 + 1;
                    LODWORD(v150) = *(v15 + 16);
                  }

                  while (v150 > (v152 + 1));
                  LODWORD(v18) = v101;
                }

                else
                {
LABEL_266:
                  LODWORD(v18) = v101;
                  v5 = 2370838528;
                }
              }

              else
              {
                LODWORD(v18) = v101;
                v5 = 2370838528;
                v8 = v219;
                v17 = v226;
              }

              v13 = v237;
              goto LABEL_268;
            }

            v138 = v101;
LABEL_217:
            inserted = datac_RequestBlock(*(v235 + 24), 1020, (v139 + 1), v243);
            if ((inserted & 0x80000000) != 0)
            {
              return inserted;
            }

            v237 = *(v243[0] + 8);
            v141 = (v237 + v136);
            cstdlib_memmove(v141 + 1, v141, *(v243[0] + 16) - v136);
            *v141 = 32;
            v15 = v242;
            ++*(v243[0] + 16);
            v142 = *(v15 + 16);
            if (v142 >= 2)
            {
              v143 = v142 - 1;
              v144 = v138 - 1;
              v145 = (v20 + 96);
              v146 = 1;
              do
              {
                if (v133)
                {
                  v147 = *v145;
                  if (*v145 < v135)
                  {
                    goto LABEL_232;
                  }

                  v148 = v147 == v135 && *(v145 - 3) == 21;
                  v149 = v145;
                  if (v148)
                  {
                    goto LABEL_232;
                  }
                }

                else
                {
                  if (!v144)
                  {
                    goto LABEL_232;
                  }

                  v147 = *v145;
                  if (*v145 < v135)
                  {
                    goto LABEL_232;
                  }

                  v149 = (v20 + (v146 << 6) + 32);
                }

                *v149 = v147 + 1;
LABEL_232:
                ++v146;
                v145 += 16;
                --v144;
                --v143;
              }

              while (v143);
            }

            ++*(v20 + 36);
            v101 = v234;
            v10 = v235;
          }

          v131 = 0;
          if ((v133 & 1) == 0)
          {
            goto LABEL_235;
          }

          continue;
        }
      }

      v15 = v242;
      v109 = *(v242 + 16);
      if (v109 < 2)
      {
        v5 = 2370838528;
        v20 = v229;
      }

      else
      {
        v20 = v229;
        v110 = (v229 + 100);
        v111 = v109 - 1;
        while (*(v110 - 4) != 1 || *(v110 - 1) != v98[8])
        {
          v110 += 16;
          if (!--v111)
          {
            goto LABEL_197;
          }
        }

        if (*(v110 - 4) != 1)
        {
LABEL_197:
          v5 = 2370838528;
          goto LABEL_198;
        }

        v124 = *(v229 + 36);
        v125 = (*(v110 - 2) - *(v229 + 32));
        if (v125 >= v124)
        {
          v128 = 0;
          v13 = v237;
        }

        else
        {
          v126 = 0;
          do
          {
            if (utf8_BelongsToSet(0, v237, v125, v80))
            {
              break;
            }

            v127 = utf8_determineUTF8CharLength(*(v237 + v125));
            v126 += v127;
            v125 = (v127 + v125);
          }

          while (v125 < v124);
          v15 = v242;
          LODWORD(v109) = *(v242 + 16);
          v128 = v126;
          v20 = v229;
          v13 = v237;
          v93 = v223;
        }

        *v110 = v128;
        v5 = 2370838528;
        v17 = v226;
      }

LABEL_198:
      if (v93 != v109)
      {
        cstdlib_memmove(v98, (v20 + (v93 << 6)), (v109 - v218) << 6);
        v15 = v242;
        LOWORD(v109) = *(v242 + 16);
      }

      *(v15 + 16) = v109 - 1;
LABEL_268:
      LODWORD(v18) = v18 - 1;
LABEL_269:
      v18 = (v18 + 1);
      v19 = v18;
      v16 = *(v15 + 16);
      if (v18 >= v16)
      {
        goto LABEL_273;
      }
    }
  }

  v20 = v14;
LABEL_273:
  if (v16)
  {
    v165 = 0;
    v166 = (v20 + 48);
    do
    {
      if (*v166)
      {
        heap_Free(*(*(v10 + 16) + 8), *v166);
        *v166 = 0;
        v15 = v242;
      }

      ++v165;
      v166 += 8;
    }

    while (v165 < *(v15 + 16));
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "after wordpar_loc_nonasian_HandleExtendedToi()", 0, 0, 0);
  marker_TraceTxt(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1020, "after wordpar_loc_nonasian_HandleExtendedToi()");
  inserted = datac_RequestBlock(*(v10 + 24), 1020, 1u, &v239);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  if (*(v239 + 16))
  {
    inserted = (*(*(v10 + 32) + 104))(v227, v8, *(v239 + 8), *(v239 + 2) * *(v239 + 16));
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", *(v239 + 8), *(v239 + 2) * *(v239 + 16));
    }

    *(v239 + 16) = 0;
    v167 = 1;
  }

  else
  {
    if (log_HasTraceTuningDataSubscriber(*(*(v10 + 16) + 32)))
    {
      log_OutTraceTuningDataBinary(*(*(v10 + 16) + 32), 34, "", "text/plain;charset=utf-8", 0, 0);
    }

    v167 = 0;
  }

  if ((datac_RequestBlock(*(v10 + 24), 1012, 1u, &v239) & 0x80000000) != 0)
  {
    v168 = 0;
  }

  else
  {
    v168 = *(v239 + 8);
  }

  inserted = datac_RequestBlock(*(v10 + 24), 1021, 1u, &v238);
  if ((inserted & 0x80000000) != 0)
  {
    return inserted;
  }

  v172 = v238;
  v173 = *(v238 + 16);
  if (*(v238 + 16))
  {
    v174 = *(v238 + 8);
    if (*(v174 + 20) == 0x4000)
    {
      v175 = (v174 + 32);
      v240 = *(v174 + 32) - v240;
      v176 = v173;
      do
      {
        *v175 -= v240;
        v175 += 16;
        --v176;
      }

      while (v176);
      if (v168)
      {
        v177 = 0;
        v178 = (v174 + 40);
        do
        {
          if (marker_hasNonConstCharPtrArg(*(v178 - 5)))
          {
            v179 = *v178;
            if (v179 == -1)
            {
              v180 = 0;
            }

            else
            {
              v180 = v168 + v179;
            }

            *v178 = v180;
          }

          ++v177;
          v172 = v238;
          v173 = *(v238 + 16);
          v178 += 8;
        }

        while (v177 < v173);
      }

      if (v173 >= 3)
      {
        v181 = 1;
        do
        {
          v182 = (v174 + (v181 << 6));
          if (v182[5] == 1)
          {
            v183 = v182[9];
            if (v182[7] != v183 && (v182[8] + v183) > v182[24] && !v182[25])
            {
              log_OutText(*(*(v10 + 16) + 32), "PP_WORD_PARSER", 1, 0, "SEVERE: found control sequence embedded in a word (word marker pos %d, length %d; escape marker pos %d)", v169, v170, v171, v182[6]);
              v172 = v238;
            }
          }

          ++v181;
        }

        while (*(v172 + 16) - 1 > v181);
      }

      v184 = 1;
      marker_TraceMrk(211, "PP_WORD_PARSER", *(v10 + 168), *(v10 + 16), *(v10 + 24), 1021, "before wordpar_loc_Align()", 1, 0, 0);
      v185 = v238;
      v186 = *(v238 + 16);
      if (v186 >= 2)
      {
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = *(v238 + 8);
        v191 = v190 + 84;
        for (j = 1; j < v186; ++j)
        {
          if (*v191 == 1)
          {
            v188 = *(v191 + 8);
            v187 = v188 + *(v191 + 4);
            v189 = j;
          }

          else if (*v191 == 62 && v189 != 0)
          {
            v194 = *(v191 + 4);
            v195 = v190 + (v189 << 6);
            if (v194 >= *(v195 + 24) && v194 < v187)
            {
              v188 = cstdlib_atoi(*(v191 + 20)) + v188 - *(v191 + 8);
              *(v195 + 28) = v188 & ~(v188 >> 31);
              v186 = *(v185 + 16);
            }
          }

          v191 += 64;
        }

        if (v186 >= 2)
        {
          v197 = 0;
          v198 = *(v185 + 8);
          v199 = *(v198 + 24);
          v200 = *(v198 + 28) + v199;
          v201 = v198 + 104;
          v202 = 1;
          v184 = 1;
          while (1)
          {
            v203 = *(v201 - 20);
            if (v203 == 999)
            {
              goto LABEL_335;
            }

            if (v203 != 62)
            {
              break;
            }

            v197 = cstdlib_atoi(*v201) + v197 - *(v201 - 12);
LABEL_336:
            ++v202;
            v201 += 64;
            if (v202 >= *(v185 + 16))
            {
              goto LABEL_339;
            }
          }

          v204 = *(v201 - 16) + v197;
          if (v199 >= v204)
          {
            *(v201 - 16) = v199;
          }

          else if (v200 >= v204)
          {
            *(v201 - 16) = v204;
            v199 = v204;
          }

          else
          {
            *(v198 + (v184 << 6) + 24) = v200;
            v199 = v200;
          }

LABEL_335:
          v205 = (v198 + (v184 << 6));
          v206 = *(v201 - 40);
          v207 = *(v201 - 24);
          v208 = *(v201 + 8);
          v205[2] = *(v201 - 8);
          v205[3] = v208;
          *v205 = v206;
          v205[1] = v207;
          ++v184;
          goto LABEL_336;
        }

        v184 = 1;
      }

LABEL_339:
      *(v185 + 16) = v184;
      marker_TraceMrk(211, "PP_WORD_PARSER", *(v235 + 168), *(v235 + 16), *(v235 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
      inserted = wordpar_loc_MarkerPostProcessing(*(v235 + 24), v238);
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceMrk(211, "PP_WORD_PARSER", *(v235 + 168), *(v235 + 16), *(v235 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
        inserted = wordpar_loc_InsertNLUMarkers(v235, v238);
        if ((inserted & 0x80000000) == 0)
        {
          v209 = *(v238 + 8);
          marker_TraceMrk(211, "PP_WORD_PARSER", *(v235 + 168), *(v235 + 16), *(v235 + 24), 1021, "at end()", 1, 0, 0);
          v210 = wordpar_loc_writeMarkersToOutputStream(v235, v213, v214, v209, v238, v167);
          return v210 & (v210 >> 31);
        }
      }

      return inserted;
    }
  }

  return v5;
}

uint64_t wordpar_loc_MarkerPostProcessing(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  LODWORD(v2) = *(a2 + 16);
  if (v2 <= 1)
  {
    result = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v4 = *(a2 + 8);
  v5 = 1;
  v6 = 2;
  v7 = 148;
  LOWORD(v8) = 1;
  do
  {
    v9 = v2;
    v10 = v6;
    if (v2 > v6)
    {
      v10 = v2;
    }

    v11 = v7;
    v12 = v5;
    while (++v12 < v2)
    {
      v13 = *(v4 + v11);
      v11 += 64;
      if (v13 != 999)
      {
        v10 = v12;
        break;
      }
    }

    v14 = (v4 + (v5 << 6));
    v15 = *(v14 + 8);
    v16 = *(v14 + 5);
    if (v15 != *(v4 + 32))
    {
      goto LABEL_21;
    }

    if (v16 == 21)
    {
      if (v12 >= v2)
      {
        goto LABEL_22;
      }

      v17 = v4 + (v10 << 6);
      if (*(v17 + 32) != v15 || *(v17 + 20) != 21)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v12 < v2 && v16 == 7)
    {
      v18 = v4 + (v10 << 6);
      if (*(v18 + 32) != v15 || *(v18 + 20) != 7)
      {
        goto LABEL_22;
      }
    }

    else
    {
LABEL_21:
      if (v16 && v16 != 999)
      {
LABEL_22:
        v19 = v8;
        LOWORD(v8) = v8 + 1;
        v2 = (v4 + (v19 << 6));
        v20 = *v14;
        v21 = v14[1];
        v22 = v14[3];
        v2[2] = v14[2];
        v2[3] = v22;
        *v2 = v20;
        v2[1] = v21;
        v9 = *(a2 + 16);
        LOWORD(v2) = *(a2 + 16);
      }
    }

LABEL_23:
    ++v5;
    ++v6;
    v7 += 64;
  }

  while (v5 < v9);
  *(a2 + 16) = v8;
  if (v8 >= 2u)
  {
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v26 = 1;
    do
    {
      v27 = v4 + v23;
      v28 = *(v4 + v23 + 84);
      if (v28 != 36 && v28 != 7)
      {
        goto LABEL_45;
      }

      v30 = *(v27 + 96);
      v31 = *(v4 + 36) + *(v4 + 32);
      if (*(v27 + 100) + v30 > v31)
      {
        v32 = v31 >= v30;
        v33 = v31 - v30;
        if (!v32)
        {
          v33 = 0;
          *(v27 + 96) = v31;
        }

        *(v27 + 100) = v33;
      }

      if (v28 == 7)
      {
        v34 = *(v4 + v23 + 104);
        v35 = !v24 && v34 == 43;
        if (v34 == 43 || !v24)
        {
          v24 = v35;
        }

        else if (v34 == 15)
        {
          v24 = 0;
        }

        else
        {
          result = datac_RequestBlock(a1, 1021, (v8 + 1), &v39);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v4 = *(v39 + 8);
          v38 = (v4 + v23);
          cstdlib_memmove((v4 + v23 + 128), (v4 + v23 + 64), (v25 + *(v39 + 16)) << 6);
          cstdlib_memcpy(v38 + 16, v38 + 32, 0x40uLL);
          v24 = 0;
          v38[26] = 15;
          a2 = v39;
          ++*(v39 + 16);
        }
      }

      else
      {
LABEL_45:
        v24 = v24;
      }

      ++v26;
      v8 = *(a2 + 16);
      v23 += 64;
      --v25;
    }

    while (v26 < v8);
  }

  return 0;
}

uint64_t wordpar_loc_InsertNLUMarkers(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v40 = 0;
  v41 = a2;
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  result = datac_RequestBlock(v4, 1013, 1u, &v40);
  if ((result & 0x80000000) == 0)
  {
    v7 = *(v2 + 16);
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = 1;
      v10 = 1;
      do
      {
        v11 = *(v5 + (v10 << 6) + 20);
        if (v11 > 55)
        {
          if (v11 == 56)
          {
            v13 = "E_";
            if (v8)
            {
              goto LABEL_26;
            }

            v8 = 0;
            goto LABEL_44;
          }

          if (v11 != 57)
          {
LABEL_7:
            v12 = v11 != 54 || v8 == 0;
            v13 = "BND:";
            if (!v12)
            {
LABEL_26:
              LOWORD(v15) = v9 + 1;
              LOWORD(v21) = v8;
LABEL_36:
              result = datac_RequestBlock(v4, 1021, (*(v2 + 16) + 1), &v41);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v5 = *(v41 + 8);
              v26 = (v5 + (v21 << 6));
              cstdlib_memmove(v26 + 16, v26, (*(v41 + 16) - v21) << 6);
              v27 = v21 > v15;
              v28 = (v5 + (v15 << 6));
              if (v27)
              {
                cstdlib_memcpy((v5 + (v21 << 6)), v28, 0x40uLL);
              }

              *v26 = 1;
              v26[5] = 51;
              v29 = *(v40 + 16);
              v31 = v28[5];
              v30 = v28 + 5;
              v32 = cstdlib_strlen(v31);
              v33 = v29 + cstdlib_strlen(v13) + v32 + 1;
              v34 = v40;
              if (*(v40 + 18) < v33)
              {
                result = datac_RequestBlock(*(a1 + 24), 1013, v33, &v40);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v34 = v40;
              }

              v35 = (*(v34 + 8) + *(v34 + 2) * *(v34 + 16));
              cstdlib_strcpy(v35, v13);
              cstdlib_strcat(v35, *v30);
              v26[10] = *(v40 + 16);
              v2 = v41;
              *(v40 + 16) = v33;
              ++*(v2 + 16);
              ++v9;
              goto LABEL_44;
            }

            goto LABEL_44;
          }
        }

        else
        {
          if (v11 == 1)
          {
            v8 = v9;
            goto LABEL_44;
          }

          if (v11 != 55)
          {
            goto LABEL_7;
          }
        }

        if (v11 != 57 || v8 == 0)
        {
          v15 = v9;
        }

        else
        {
          result = datac_RequestBlock(v4, 1021, (v7 + 1), &v41);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v5 = *(v41 + 8);
          v16 = (v5 + (v8 << 6));
          cstdlib_memmove(v16 + 16, v16, (*(v41 + 16) - v8) << 6);
          *v16 = 1;
          v16[5] = 51;
          v17 = v5 + (v10 << 6);
          v18 = cstdlib_strchr(*(v17 + 104), 58);
          v19 = *(v17 + 104);
          if (v18)
          {
            v20 = v18 - v19;
          }

          else
          {
            v20 = cstdlib_strlen(v19);
          }

          v22 = v40;
          v23 = *(v40 + 16);
          v24 = v20 + v23 + 3;
          if (*(v40 + 18) < v24)
          {
            result = datac_RequestBlock(*(a1 + 24), 1013, (v20 + v23 + 3), &v40);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v22 = v40;
            v23 = *(v40 + 16);
          }

          v25 = (*(v22 + 8) + *(v22 + 2) * v23);
          cstdlib_strcpy(v25, "R_");
          cstdlib_strncat(v25, *(v17 + 104), v20);
          v16[10] = *(v40 + 16);
          v2 = v41;
          *(v40 + 16) = v24;
          ++*(v2 + 16);
          v15 = v9 + 1;
        }

        v21 = v15 + 1;
        if ((v21 & 0x10000) == 0)
        {
          v13 = "S_";
          v9 = v15;
          goto LABEL_36;
        }

        v9 = 0xFFFF;
LABEL_44:
        v10 = ++v9;
        v7 = *(v2 + 16);
      }

      while (v7 > v9);
    }

    if (v7)
    {
      v36 = 0;
      v37 = (v5 + 40);
      do
      {
        if (*(v37 - 5) == 51 && *(v37 - 10))
        {
          v38 = *v37;
          if (v38 == -1)
          {
            v39 = 0;
          }

          else
          {
            v39 = *(v40 + 8) + v38;
          }

          *v37 = v39;
          v2 = v41;
        }

        ++v36;
        v37 += 8;
      }

      while (v36 < *(v2 + 16));
    }

    return 0;
  }

  return result;
}

uint64_t wordpar_loc_writeMarkersToOutputStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a5 + 16);
  if (!a6 && v11 == 1)
  {
    if (*(a4 + 20) == 0x4000)
    {
      return 0;
    }

    v11 = 1;
  }

  v13 = heap_Calloc(*(*(a1 + 16) + 8), 1, (32 * v11) | 1);
  if (!v13)
  {
    return 2370838538;
  }

  v14 = v13;
  if (*(a5 + 16))
  {
    v15 = 0;
    v16 = (a4 + 40);
    v17 = (v13 + 24);
    do
    {
      *(v17 - 3) = *(v16 - 20);
      *(v17 - 2) = *(v16 - 1);
      v18 = *v16;
      v16 += 8;
      *v17 = v18;
      v17 += 4;
      ++v15;
      v19 = *(a5 + 16);
    }

    while (v15 < v19);
  }

  else
  {
    LOWORD(v19) = 0;
  }

  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, a4, v19);
  v12 = (*(*(a1 + 32) + 104))(a2, a3, v14, 32 * *(a5 + 16));
  if ((v12 & 0x80000000) == 0 && log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
  {
    log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "application/x-realspeak-markers-pp;version=4.0", v14, 32 * *(a5 + 16));
  }

  heap_Free(*(*(a1 + 16) + 8), v14);
  return v12;
}

uint64_t wordpar_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v20 = 0;
  v21 = 0;
  v5 = 2370838535;
  if (a4 && (InitRsrcFunction(a1, a2, &v21) & 0x80000000) == 0)
  {
    *a4 = 0;
    v11 = heap_Alloc(*(v21 + 8), 200);
    if (!v11)
    {
      return 2370838538;
    }

    v12 = v11;
    cstdlib_memset(v11, 0, 0xC8uLL);
    *v12 = a1;
    *(v12 + 8) = a2;
    v13 = v21;
    *(v12 + 16) = v21;
    *(v12 + 32) = a3;
    *(v12 + 164) = 0;
    *(v12 + 72) = 0;
    *(v12 + 152) = 0;
    *(v12 + 176) = 30;
    if ((paramc_ParamGetUInt(*(v13 + 40), "ppmaxpcreframeblocks", &v20 + 1) & 0x80000000) == 0)
    {
      *(v12 + 176) = WORD2(v20);
    }

    *(v12 + 178) = 50;
    if ((paramc_ParamGetUInt(*(v21 + 40), "ppnumframesinblock", &v20 + 1) & 0x80000000) == 0)
    {
      *(v12 + 178) = WORD2(v20);
    }

    *(v12 + 128) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 136) = safeh_GetNullHandle();
    *(v12 + 144) = v14;
    v15 = extdata_ObjOpen(a1, a2, (v12 + 72), 213);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    v15 = nuance_pcre_ObjOpen(a1, a2, v12 + 56);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v15 = nuance_pcre_Init(*(v12 + 56), *(v12 + 64), *(v12 + 176), *(v12 + 178));
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v16 = wordpar_loc_OpenParts(v12, &v20);
    if ((v16 & 0x80000000) != 0)
    {
      v5 = v16;
      if (v20)
      {
        return v5;
      }

      goto LABEL_18;
    }

    *(v12 + 172) = a5;
    v15 = datac_ObjOpen(a1, a2, (v12 + 24), 213);
    if ((v15 & 0x80000000) != 0)
    {
LABEL_17:
      v5 = v15;
    }

    else
    {
      v17 = &word_26ECDC15A;
      v18 = 5;
      while (1)
      {
        v5 = datac_RegisterBlock(*(v12 + 24), *(v17 - 2), *(v17 - 1), *v17);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        v17 += 3;
        if (!--v18)
        {
          *a4 = v12;
          return v5;
        }
      }
    }

LABEL_18:
    wordpar_ObjClose(v12);
  }

  return v5;
}

uint64_t wordpar_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v8 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      datac_ObjClose(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      extdata_ObjClose(v4);
      *(a1 + 72) = 0;
    }

    wordpar_loc_CloseParts(a1);
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 56), *(a1 + 64), NullHandle, v6))
    {
      nuance_pcre_DeInit(*(a1 + 56), *(a1 + 64));
      nuance_pcre_ObjClose(*(a1 + 56), *(a1 + 64));
    }

    heap_Free(*(v8 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wordpar_loc_OpenParts(_WORD **a1, _DWORD *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = "BRKD";
  v29 = wordpar_getBRKDefs;
  v30 = wordpar_freeBRKDefs;
  v31 = a1;
  SpecificData = extdata_RegisterData(a1[9], &v28, 1u);
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  SpecificData = extdata_LoadSpecificData(a1[9], "PPWO", "BRKD", "pp/word/parser");
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  v26 = 0;
  v27 = 0;
  if ((InitRsrcFunction(*a1, a1[1], &v27) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  v9 = a1[19];
  if (v9)
  {
    v28 = 0;
    v29 = 0;
    if (cstdlib_strlen(v9) >= 1)
    {
      v10 = 0;
      do
      {
        *(a1[19] + v10) = cstdlib_tolower(*(a1[19] + v10));
        ++v10;
      }

      while (cstdlib_strlen(a1[19]) > v10);
    }

    if ((brk_InterfaceQueryEx(*(a1[2] + 3), a1[19], 1, 1, &v28, (a1 + 16)) & 0x80000000) == 0)
    {
      SpecificData = (*(a1[16] + 4))(v28, v29, *a1, a1[1], a1 + 17);
      if ((SpecificData & 0x80000000) != 0)
      {
        return SpecificData;
      }
    }
  }

  else
  {
    log_OutPublic(*(a1[2] + 4), "PP_WORD_PARSER", 1811, 0, v5, v6, v7, v8, v25);
  }

  if (*(a1 + 41))
  {
    Object = objc_GetObject(*(v27 + 48), "FE_UDWL", &v26);
    if ((Object & 0x80000000) != 0)
    {
      v11 = Object;
LABEL_33:
      *a2 = 1;
      wordpar_ObjClose(a1);
      return v11;
    }

    v14 = v26;
    v13 = v27;
    a1[13] = *(v26 + 8);
    v15 = a1 + 13;
    *(a1 + 7) = *(v14 + 16);
    v16 = objc_GetObject(*(v13 + 48), "FE_DCTLKP", &v26);
    if ((v16 & 0x80000000) != 0)
    {
      v11 = v16;
      v20 = "FE_UDWL";
LABEL_32:
      objc_ReleaseObject(*(v27 + 48), v20);
      *v15 = 0;
      v15[1] = 0;
      *(v15 + 4) = 0;
      goto LABEL_33;
    }

    v17 = v26;
    v18 = *(v26 + 8);
    a1[10] = v18;
    *(a1 + 11) = *(v17 + 16);
    v19 = wparser_ObjOpen2(*a1, a1[1], a1[7], a1[8], a1 + 5, a1[13], a1[14], a1[15], v18, a1[11], a1[12], a1[9], a1[16], a1[17], a1[18]);
    if ((v19 & 0x80000000) != 0)
    {
      v11 = v19;
      if (*v15)
      {
        objc_ReleaseObject(*(v27 + 48), "FE_UDWL");
        *v15 = 0;
        a1[14] = 0;
        *(a1 + 30) = 0;
      }

      if (!a1[10])
      {
        goto LABEL_33;
      }

      v20 = "FE_DCTLKP";
      v15 = a1 + 10;
      goto LABEL_32;
    }
  }

  else
  {
    safeh_GetNullHandle();
    SpecificData = wparser_ObjOpen1(*a1, a1[1], a1 + 5);
    if ((SpecificData & 0x80000000) != 0)
    {
      return SpecificData;
    }
  }

  SpecificData = extdata_LoadData(a1[9], "PPWO", "pp/word/parser");
  if ((SpecificData & 0x80000000) != 0)
  {
    return SpecificData;
  }

  v11 = tolhp_ObjOpen(*a1, a1[1], a1 + 6);
  if ((v11 & 0x80000000) == 0)
  {
    v21 = *(a1[2] + 5);
    v28 = 0;
    Str = paramc_ParamGetStr(v21, "is_teng", &v28);
    v23 = 0;
    if ((Str & 0x80000000) == 0 && v28)
    {
      if (*v28)
      {
        v23 = cstdlib_strchr("yYtT1", *v28) != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    *(a1 + 49) = v23;
  }

  return v11;
}

uint64_t wordpar_ObjReopen(_WORD **a1)
{
  v1 = 2370838535;
  v6 = 0;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, a1[1], &v6) & 0x80000000) == 0)
  {
    v3 = extdata_FreeData(a1[9]);
    if ((v3 & 0x80000000) != 0 || (v3 = wordpar_loc_CloseParts(a1), (v3 & 0x80000000) != 0))
    {
      v1 = v3;
    }

    else
    {
      v1 = wordpar_loc_OpenParts(a1, &v5);
      if ((v1 & 0x80000000) == 0 || v5)
      {
        return v1;
      }
    }

    wordpar_ObjClose(a1);
  }

  return v1;
}

uint64_t wordpar_loc_CloseParts(uint64_t a1)
{
  v2 = tolhp_ObjClose(*(a1 + 48));
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  v3 = *(a1 + 40);
  if (*(a1 + 164))
  {
    if (v3)
    {
      v4 = wparser_ObjClose2(v3);
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    v4 = wparser_ObjClose1(v3);
LABEL_8:
    v5 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v5;
    }
  }

  v6 = wordpar_freeBRKDefs(a1);
  v7 = *(a1 + 128);
  if (v7 && (v6 = (*(v7 + 40))(*(a1 + 136), *(a1 + 144)), (v8 = *(a1 + 128)) != 0))
  {
    v5 = brk_InterfaceRelease(*(*(a1 + 16) + 24), v8);
    *(a1 + 128) = 0;
    *(a1 + 136) = safeh_GetNullHandle();
    *(a1 + 144) = v9;
  }

  else
  {
    v5 = v6;
  }

  if (*(a1 + 164))
  {
    if (*(a1 + 104))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_UDWL");
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    if (*(a1 + 80))
    {
      objc_ReleaseObject(*(*(a1 + 16) + 48), "FE_DCTLKP");
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }
  }

  return v5;
}

uint64_t wordpar_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v7 = 0;
  v8 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v8) & 0x80000000) == 0)
  {
    *(a1 + 168) = log_GetLogLevel(*(v8 + 32)) > 4;
    cstdlib_strcpy((a1 + 180), " ");
    cstdlib_strcat((a1 + 180), "§");
    v3 = 0;
    while (1)
    {
      v4 = datac_RequestBlock(*(a1 + 24), aMETA_1[v3], 1u, &v7);
      if ((v4 & 0x80000000) != 0)
      {
        break;
      }

      v3 += 3;
      v5 = v7;
      *(v7 + 16) = 0;
      *(v5 + 20) = 0;
      if (v3 == 15)
      {
        v4 = tolhp_ResetDcts(*(a1 + 48));
        if ((v4 & 0x80000000) == 0)
        {
          if (!*(a1 + 164))
          {
            return 0;
          }

          v4 = wparser_ProcessStart(*(a1 + 40));
          if ((v4 & 0x80000000) == 0)
          {
            return 0;
          }
        }

        return v4;
      }
    }

    return v4;
  }

  return v1;
}

uint64_t wordpar_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return wparser_ProcessEnd(*(a1 + 40));
  }

  return 0;
}

uint64_t wordpar_LoadFromStreamData(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v10 = *(a1 + 24);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  v12 = datac_RequestBlock(v10, 1020, v11, &v34);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  if (a2)
  {
    cstdlib_memcpy(*(v34 + 8), a2, a3);
  }

  *(v34 + 16) = a3;
  v13 = datac_RequestBlock(*(a1 + 24), 1021, a5 & 0xFFC0, &v35);
  if ((v13 & 0x80000000) == 0)
  {
    v32 = a3;
    v14 = a5 >> 6;
    v15 = v35;
    v16 = *(v35 + 8);
    v17 = (a5 >> 6);
    if (!(a5 >> 6))
    {
      goto LABEL_27;
    }

    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &v16[16 * v19];
      v21 = (a4 + (v19 << 6));
      cstdlib_memcpy(v20, v21, 0x40uLL);
      if (marker_hasNonConstCharPtrArg(v20[5]))
      {
        v22 = v21[5];
        if (v22)
        {
          v23 = cstdlib_strlen(v22);
          LODWORD(v22) = 0;
          v18 += v23 + 1;
        }
      }

      else
      {
        LODWORD(v22) = *(v21 + 10);
      }

      v20[10] = v22;
      v24 = v21[6];
      if (v24)
      {
        v25 = cstdlib_strlen(v24);
        if (v25)
        {
          v26 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v25 + 1));
          *(v20 + 6) = v26;
          if (!v26)
          {
            return 2370838538;
          }

          cstdlib_strcpy(v26, v21[6]);
        }
      }

      ++v19;
    }

    while (v19 < v14);
    *(v35 + 16) = v14;
    if (!v18)
    {
      goto LABEL_28;
    }

    v13 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v33);
    if ((v13 & 0x80000000) == 0)
    {
      LOWORD(v14) = 0;
      v27 = *(v33 + 8);
      v28 = v16 + 10;
      v29 = (a4 + 40);
      do
      {
        if (marker_hasNonConstCharPtrArg(*(v28 - 5)) && *v29)
        {
          v30 = cstdlib_strlen(*v29);
          *v28 = v14;
          cstdlib_memcpy((v27 + v14), *v29, v30);
          *(v27 + v30 + v14) = 0;
          LOWORD(v14) = v14 + v30 + 1;
        }

        v28 += 16;
        v29 += 8;
        --v17;
      }

      while (v17);
      v15 = v33;
LABEL_27:
      *(v15 + 16) = v14;
LABEL_28:
      if (v16[5] == 0x4000 && !v16[6] && !v16[7] && !wordpar_loc_existingSentParParams(a1))
      {
        v16[7] = v32;
        v16[9] = v32;
      }
    }
  }

  return v13;
}

uint64_t wordpar_ResetData(uint64_t a1)
{
  v4 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  for (i = 0; i != 4; ++i)
  {
    result = datac_RequestBlock(*(a1 + 24), aTAG_1[i], 1u, &v4);
    if (i != 2 && (result & 0x80000000) == 0)
    {
      *(v4 + 16) = 0;
    }
  }

  return result;
}

uint64_t wordpar_Process(uint64_t a1)
{
  v46 = 0;
  if (!a1)
  {
    return 2370838535;
  }

  memset(v45, 0, sizeof(v45));
  LODWORD(v47) = 0;
  UInt = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_posrefoffset", &v46 + 1);
  if ((UInt & 0x1FFF) == 0x14)
  {
    HIDWORD(v46) = 0;
  }

  else
  {
    v3 = UInt;
    if ((UInt & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v4 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset", &v46);
  if ((v4 & 0x1FFF) == 0x14)
  {
    LODWORD(v46) = 0;
  }

  else
  {
    v3 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v5 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_tag", &v47);
  if ((v5 & 0x1FFF) == 0x14)
  {
    v6 = 0;
  }

  else
  {
    v3 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v3;
    }

    v6 = v47;
  }

  DWORD1(v45[1]) = v6;
  v7 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_posref", &v45[1] + 2);
  if ((v7 & 0x1FFF) == 0x14)
  {
    DWORD2(v45[1]) = 0;
  }

  else
  {
    v3 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  v8 = paramc_ParamGetUInt(*(*(a1 + 16) + 40), "pp_sentpar_refreset_mrk_lenref", &v45[1] + 3);
  if ((v8 & 0x1FFF) == 0x14)
  {
    HIDWORD(v45[1]) = 0;
  }

  else
  {
    v3 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "(from sentpar) posRefOffset=%d,refReset=%d pRefResetMrk->tag %d posRef %d lenRef %d", v9, v10, v11, HIDWORD(v46));
  if (!*(a1 + 164))
  {
    inserted = wparser_ScanWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v46), v46);
    if ((inserted & 0x80000000) != 0)
    {
      return inserted;
    }

    v12 = 0;
LABEL_31:
    marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE wordpar_loc_nonasian_PreProcessExtendedTOIWords", 0, 0, 0);
    v15 = *(a1 + 24);
    v47 = 0;
    inserted = datac_RequestBlock(v15, 1021, 1u, &v47);
    if ((inserted & 0x80000000) == 0)
    {
      v16 = v47;
      v17 = *(v47 + 16);
      if (v17 > 1)
      {
        v18 = *(v47 + 8);
        v19 = 1;
        do
        {
          while (1)
          {
            v20 = v19;
            v21 = (v18 + (v19 << 6));
            if (v21[5] == 7 && v21[10] >= 0x46u)
            {
              break;
            }

            ++v19;
LABEL_46:
            if (v17 <= v19)
            {
              goto LABEL_79;
            }
          }

          v22 = v21[8];
          if (v17 <= (v19 + 1))
          {
            ++v19;
          }

          else
          {
            v19 = v17;
          }

          v23 = (v18 + 84 + (v20 << 6));
          while (++v20 < v17)
          {
            v24 = *v23;
            v23 += 16;
            if (v24 == 7)
            {
              v19 = v20;
              break;
            }
          }

          if (v17 == v19)
          {
            v25 = (*(v18 + 36) + *(v18 + 32));
          }

          else
          {
            v25 = *(v18 + (v19 << 6) + 32);
          }

          if (v17 < 2u)
          {
            goto LABEL_46;
          }

          v26 = 0;
          v27 = 0;
          v28 = (v18 + 84);
          v29 = 1;
          do
          {
            v30 = v28[3];
            if (v30 > v25)
            {
              break;
            }

            v31 = *v28;
            v28 += 16;
            v32 = v31 == 1 && v30 >= v22;
            v33 = v32;
            v34 = v33 & (v30 < v25);
            if (v34)
            {
              v26 = v29;
            }

            if ((v34 & (v27 == 0)) != 0)
            {
              v27 = v29;
            }

            ++v29;
          }

          while (v17 != v29);
          if (!v27 || !v26 || v27 == v26)
          {
            goto LABEL_46;
          }

          v44 = v12;
          v35 = (v18 + (v26 << 6));
          v36 = (v18 + (v27 << 6));
          v36[9] = v35[9] + v35[8] - v36[8];
          v36[7] = v35[7] + v35[6] - v36[6];
          if (v26 > v27)
          {
            v37 = v26 - 1;
            v38 = ~v26 | 0xFFFF0000;
            do
            {
              if (v35[5] == 1)
              {
                v39 = v35[8];
                if (v39 >= v22 && v39 < v25)
                {
                  v41 = *(v16 + 16);
                  if (v37 + 2 != v41)
                  {
                    cstdlib_memmove(v35, (v18 + ((v37 + 2) << 6)), (v38 + v41) << 6);
                    v16 = v47;
                  }

                  --*(v16 + 16);
                }
              }

              v32 = v27 >= v37--;
              v35 -= 16;
              ++v38;
            }

            while (!v32);
          }

          v17 = *(v16 + 16);
          v12 = v44;
        }

        while (v17 > v19);
      }

LABEL_79:
      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "BEFORE tolhp_RewritePhonTextInLhp");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "BEFORE tolhp_RewritePhonTextInLhp", 0, 0, 0);
      inserted = tolhp_RewritePhonTextInLhp(*(a1 + 48), *(a1 + 24));
      if ((inserted & 0x80000000) == 0)
      {
        marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "AFTER tolhp_RewritePhonTextInLhp");
        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER tolhp_RewritePhonTextInLhp", 0, 0, 0);
        if (!*(a1 + 164) || (inserted = wparser_insertRegionTags(*(a1 + 40), *(a1 + 24)), (inserted & 0x80000000) == 0))
        {
          v42 = *(a1 + 24);
          v47 = 0;
          inserted = datac_RequestBlock(v42, 1021, 1u, &v47);
          if ((inserted & 0x80000000) == 0)
          {
            inserted = marker_loc_FilterSyncMarkers(v47);
            if ((inserted & 0x80000000) == 0)
            {
              if ((v12 & 0x1FFF) == 0xA)
              {
                return v12;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }

    return inserted;
  }

  v47 = 0;
  if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v47) & 0x80000000) == 0)
  {
    *(a1 + 160) = *(v47 + 16);
  }

  v3 = wordpar_loc_AlignInputMarkers(a1);
  if ((v3 & 0x80000000) == 0)
  {
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wordpar_loc_AlignInputMarkers", 0, 0, 0);
    v12 = 0;
    if (!*(a1 + 196))
    {
      v13 = wparser_NormalizeWords(*(a1 + 40), *(a1 + 24), SHIDWORD(v46), v46, v45);
      v12 = v13;
      if ((v13 & 0x1FFF) == 0xA)
      {
        v3 = v3;
      }

      else
      {
        v3 = v13;
      }
    }

    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "AFTER wparser_NormalizeWords", 0, 0, 0);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  return v3;
}

uint64_t wordpar_loc_AlignInputMarkers(uint64_t a1)
{
  memset(__dst, 0, sizeof(__dst));
  v11 = 0;
  v1 = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v11);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  result = 2370838528;
  v3 = *(v11 + 16);
  if (*(v11 + 16))
  {
    v4 = *(v11 + 8);
    if (*(v4 + 20) == 0x4000)
    {
      if (v3 != 1)
      {
        v5 = 1;
        do
        {
          v6 = v5 + 1;
          if (v6 >= v3 || (v7 = (v4 + (v6 << 6)), v8 = (v4 + (v5 << 6)), *(v7 + 8) >= *(v8 + 8)))
          {
            ++v5;
          }

          else
          {
            cstdlib_memcpy(__dst, (v4 + (v6 << 6)), 0x40uLL);
            v9 = v8[1];
            *v7 = *v8;
            v7[1] = v9;
            v10 = v8[3];
            v7[2] = v8[2];
            v7[3] = v10;
            cstdlib_memcpy(v8, __dst, 0x40uLL);
            v5 = 0;
          }
        }

        while (v5 < v3);
      }

      return v1;
    }
  }

  return result;
}

uint64_t wordpar_ResourceLoad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 2370838529;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    return (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t wordpar_ResourceTypes(uint64_t a1, void *a2)
{
  v2 = 2370838535;
  v7 = 0;
  if (a1)
  {
    inited = InitRsrcFunction(*a1, *(a1 + 8), &v7);
    if ((inited & 0x80000000) == 0)
    {
      if (*(a1 + 164))
      {
        return (*(*(a1 + 104) + 56))(*(a1 + 112), *(a1 + 120), a2);
      }

      *a2 = 0;
      return inited;
    }
  }

  return v2;
}

uint64_t wordpar_ResourceUnload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 2370838536;
  if (!a1)
  {
    return 2370838535;
  }

  if (*(a1 + 164))
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      return (*(v5 + 72))(*(a1 + 112), *(a1 + 120), a2, a3);
    }
  }

  return result;
}

uint64_t wordpar_WriteTextAndMarkers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 164))
  {
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    __s1 = 0;
    v55 = 0;
    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_act_lid", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 188) = cstdlib_strcmp(__s1, "yes") == 0;
    }

    if ((GetCfgParamVal(*(a1 + 88), *(a1 + 96), *(a1 + 80), "felid_remove_internal_lang", &__s1) & 0x80000000) == 0)
    {
      *(a1 + 192) = cstdlib_strcmp(__s1, "yes") == 0;
    }

    v10 = (*(*(a1 + 32) + 136))(a2, a3, &v55);
    if ((v10 & 0x80000000) == 0)
    {
      if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v53) & 0x80000000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v53 + 8);
      }

      inserted = datac_RequestBlock(*(a1 + 24), 1021, 1u, &v52);
      if ((inserted & 0x80000000) != 0)
      {
        goto LABEL_64;
      }

      v14 = 2370838528;
      v15 = *(v52 + 16);
      if (!*(v52 + 16))
      {
        return v14;
      }

      v16 = *(v52 + 8);
      if (v16[5] != 0x4000)
      {
        return v14;
      }

      if (!*(a1 + 196))
      {
        v17 = v16 + 8;
        v18 = v55 - v16[8];
        do
        {
          *v17 += v18;
          v17 += 16;
          --v15;
        }

        while (v15);
      }

      marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "start wordpar_WriteTextAndMarkers()");
      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "start wordpar_WriteTextAndMarkers()", 0, 0, 0);
      v10 = datac_RequestBlock(*(a1 + 24), 1020, 1u, &v54);
      if ((v10 & 0x80000000) == 0)
      {
        v19 = heap_Calloc(*(*(a1 + 16) + 8), 1, *(v54 + 16) + 1);
        v51 = v19;
        if (v19)
        {
          v20 = v19;
          cstdlib_strncpy(v19, *(v54 + 8), *(v54 + 16));
          v20[*(v54 + 16)] = 0;
          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 4, 0, "L0:%s", v21, v22, v23, v20);
          inserted = wordpar_loc_AlignInputMarkers(a1);
          if ((inserted & 0x80000000) == 0)
          {
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_AlignInputMarkers()", 0, 0, 0);
            wordpar_loc_asian_ProcessWparserMarkers(*(a1 + 16), v16, (v52 + 16), v20);
            marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "out wordpar_loc_asian_ProcessWparserMarkers()", 0, 0, 0);
            inserted = wordpar_loc_asian_TranslateMarkup(a1, &v51, v52, v53);
            if ((inserted & 0x80000000) == 0)
            {
              if ((datac_RequestBlock(*(a1 + 24), 1012, 1u, &v53) & 0x80000000) == 0)
              {
                v11 = *(v53 + 8);
              }

              v46 = *(v52 + 8);
              v47 = v11;
              if (v11 && *(v52 + 16))
              {
                v24 = 0;
                v25 = 0;
                v48 = 0;
                v26 = 0;
                v27 = (v46 + 10);
                do
                {
                  if (marker_hasNonConstCharPtrArg(*(v27 - 5)))
                  {
                    v28 = *v27;
                    if (v28 == -1)
                    {
                      v29 = 0;
                    }

                    else
                    {
                      v29 = (v47 + v28);
                    }

                    *v27 = v29;
                    if (*(v27 - 5) == 21)
                    {
                      v26 = v29;
                    }

                    if (!*(v27 - 10))
                    {
                      v48 = cstdlib_strcmp(v29, "enu") == 0;
                      v25 = cstdlib_strcmp(*v27, "eng") == 0;
                    }

                    if (!v26 || cstdlib_strcmp(v26, "normal"))
                    {
                      if (v48 && *(v27 - 5) == 36 && *(v27 - 10) == 1)
                      {
                        *v27 = "enu";
                      }

                      if (v25)
                      {
                        if (*(v27 - 5) == 36 && *(v27 - 10) == 1)
                        {
                          *v27 = "eng";
                        }

                        v25 = 1;
                      }

                      else
                      {
                        v25 = 0;
                      }
                    }
                  }

                  ++v24;
                  v27 += 8;
                }

                while (v24 < *(v52 + 16));
              }

              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_PostProcessMarkers()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_PostProcessMarkers()", 1, 0, 0);
              v30 = v51;
              wordpar_loc_asian_PostProcessMarkers(*(a1 + 16), *(a1 + 188), v46, (v52 + 16), v51);
              marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteMarkerForUnknown()");
              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteMarkerForUnknown()", 0, 0, 0);
              wordpar_loc_asian_deleteMarkerForUnknown(v46, (v52 + 16));
              if (*(a1 + 192))
              {
                marker_TraceTxt(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1020, "before wordpar_loc_asian_deleteConflictingLangMarker()");
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteConflictingLangMarker()", 0, 0, 0);
                if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v49) & 0x80000000) == 0)
                {
                  wordpar_loc_asian_deleteConflictingLangMarker(v46, (v52 + 16), v49);
                }
              }

              marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wparser_InsertWordMarkers()", 0, 0, 0);
              inserted = wparser_InsertWordMarkers(*(a1 + 40), *(a1 + 24), v30, (v52 + 16));
              if ((inserted & 0x80000000) == 0)
              {
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_RemoveBlankLatinRegions()", 1, 0, 0);
                wordpar_loc_asian_RemoveBlankLatinRegions(v46, (v52 + 16), v30);
                marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers()", 1, 0, 0);
                inserted = wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(*(a1 + 16), v46, *(v52 + 16), &v51);
                if ((inserted & 0x80000000) == 0)
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_InsertSpaceBeforeTNMarkers()", 1, 0, 0);
                  inserted = wordpar_loc_asian_InsertSpaceBeforeTNMarkers(*(a1 + 16), *(a1 + 24), &v51);
                  if ((inserted & 0x80000000) == 0)
                  {
                    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_HandleExtendedToi()", 0, 0, 0);
                    inserted = wordpar_loc_asian_HandleExtendedToi(*(a1 + 16), *(a1 + 24), v52, &v51);
                    if ((inserted & 0x80000000) == 0)
                    {
                      marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_MarkerPostProcessing()", 1, 0, 0);
                      inserted = wordpar_loc_MarkerPostProcessing(*(a1 + 24), v52);
                      if ((inserted & 0x80000000) == 0)
                      {
                        marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_InsertNLUMarkers()", 1, 0, 0);
                        inserted = wordpar_loc_InsertNLUMarkers(a1, v52);
                        if ((inserted & 0x80000000) == 0)
                        {
                          v34 = v51;
                          v35 = *(v52 + 8);
                          log_OutText(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 5, 0, "(Write2DB) %s", v31, v32, v33, v51);
                          marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "at end()", 1, 0, 0);
                          if (!cstdlib_strlen(v34))
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              log_OutTraceTuningDataBinary(*(*(a1 + 16) + 32), 34, "", "text/plain;charset=depes", 0, 0);
                            }

                            v40 = 0;
                            goto LABEL_73;
                          }

                          v36 = *(*(a1 + 32) + 104);
                          v37 = cstdlib_strlen(v34);
                          inserted = v36(a2, a3, v34, (v37 + 1));
                          if ((inserted & 0x80000000) == 0)
                          {
                            if (log_HasTraceTuningDataSubscriber(*(*(a1 + 16) + 32)))
                            {
                              v38 = *(*(a1 + 16) + 32);
                              v39 = cstdlib_strlen(v34);
                              log_OutTraceTuningDataBinary(v38, 34, "", "text/plain;charset=depes", v34, (v39 + 1));
                            }

                            v40 = 1;
LABEL_73:
                            *(v54 + 16) = 0;
                            v41 = wordpar_loc_writeMarkersToOutputStream(a1, a4, a5, v35, v52, v40);
                            if ((v41 & 0x80000000) == 0)
                            {
                              if (*(a1 + 160))
                              {
                                v42 = *(v53 + 8);
                                if (v42)
                                {
                                  v43 = heap_Realloc(*(*(a1 + 16) + 8), v42, *(v53 + 2) * *(a1 + 160));
                                  if (v43)
                                  {
                                    v44 = v53;
                                    *(v53 + 8) = v43;
                                    v45 = *(a1 + 160);
                                    *(v44 + 16) = v45;
                                    *(v44 + 18) = v45;
                                  }

                                  else
                                  {
                                    v41 = 2370838538;
                                  }
                                }
                              }
                            }

                            goto LABEL_65;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_64:
          v41 = inserted;
LABEL_65:
          if (v51)
          {
            heap_Free(*(*(a1 + 16) + 8), v51);
          }

          return v41;
        }

        return 2370838538;
      }
    }

    return v10;
  }

  return wordpar_loc_nonasian_WriteTextAndMarkers(a1, a2, a3, a4, a5);
}

uint64_t wordpar_GetWParserType(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    return 2370838535;
  }

  result = 0;
  *a2 = *(a1 + 164);
  return result;
}

uint64_t wordpar_loc_adjustMarkerPositions(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (a3 < result)
  {
    v6 = (a2 + (a3 << 6) + 36);
    v7 = result - a3;
    do
    {
      v8 = *(v6 - 1);
      v9 = *(a2 + 32);
      v10 = v9 + a5;
      if (v8 <= v9 + a4 || v8 >= v10)
      {
        if (v8 >= v10)
        {
          *(v6 - 1) = v8 + a6;
        }

        else if (*(v6 - 4) == 1)
        {
          v12 = *v6 + v8;
          if (v12 > *(a2 + 36) + v9 && v12 != -a6)
          {
            *v6 += a6;
          }
        }
      }

      else
      {
        *(v6 - 1) = v9 + a4;
      }

      v6 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t GetCfgParamVal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  *a5 = "no";
  __c_1 = -1;
  __c = 0;
  v9 = 0;
  v6 = (*(a3 + 96))(a1, a2, "fecfg", a4, &v9, &__c_1, &__c);
  if ((v6 & 0x80000000) == 0 && __c_1)
  {
    v7 = cstdlib_strchr(*v9, __c);
    if (v7)
    {
      *v7 = 0;
    }

    *a5 = *v9;
  }

  return v6;
}

uint64_t wordpar_loc_asian_ProcessWparserMarkers(uint64_t a1, _DWORD *a2, _WORD *a3, char *__s)
{
  result = cstdlib_strlen(__s);
  v79 = result;
  v8 = *a3;
  if (v8 < 2)
  {
    goto LABEL_109;
  }

  v9 = 1;
  do
  {
    v10 = &a2[16 * v9];
    if (v10[5] == 7)
    {
      v11 = v10[10];
      if ((v11 - 15) <= 1)
      {
        v12 = *(v10 + 8);
        v13 = *(v10 + 1);
        if (*(v10 + 8))
        {
          v14 = 0;
          do
          {
            if (!*(v13 + 8 * v14))
            {
              v15 = v13 + 8 * v14;
              if (v8 >= 2u)
              {
                v16 = v10[8];
                v17 = a2 + 21;
                v18 = 2;
                v19 = v8 - 1;
                do
                {
                  if (v17[3] > v16)
                  {
                    break;
                  }

                  if (*v17 == 998)
                  {
                    v20 = v17[1];
                    if (v20 == v10[6])
                    {
                      v21 = v17[5] != v11 || v18 >= v8;
                      if (!v21 && v17[16] == 41)
                      {
                        v22 = *(v15 + 4) + v20;
                        if (a2[7] + a2[6] < v22)
                        {
                          v22 = a2[7] + a2[6];
                        }

                        v23 = v17[2];
                        v17[17] = v22;
                        v17[18] = v23;
                        *v17 = 0;
                      }
                    }
                  }

                  ++v18;
                  v17 += 16;
                  --v19;
                }

                while (v19);
              }

              v24 = *(v15 + 4) + v10[6];
              if (a2[7] + a2[6] < v24)
              {
                v24 = a2[7] + a2[6];
              }

              v10[6] = v24;
            }

            ++v14;
          }

          while (v14 != v12);
LABEL_30:
          result = heap_Free(*(a1 + 8), v13);
          *(v10 + 1) = 0;
          *(v10 + 8) = 0;
          LOWORD(v8) = *a3;
          goto LABEL_31;
        }

        if (v13)
        {
          goto LABEL_30;
        }

        if (v8 >= 2u)
        {
          v25 = 0;
          v26 = v10[8];
          v27 = 1;
          v28 = a2 + 23;
          v29 = 1;
          do
          {
            v30 = &a2[16 * v29];
            if (v30[8] > v26)
            {
              break;
            }

            if (v30[5] == 998)
            {
              v31 = v30[6];
              if (v31 == v10[6] && v30[10] == v11)
              {
                v32 = (v27 + 1);
                if (v32 < v8 && (v33 = &a2[16 * v32], result = v33[5], result == 41) && (result = v33[6], result == v31))
                {
                  v33[7] = v30[7];
                  v30[5] = 0;
                }

                else if (v27 >= 2u)
                {
                  result = v25;
                  v34 = v28;
                  while (1)
                  {
                    if (*(v34 - 2) == 41)
                    {
                      v35 = *(v34 - 1);
                      if (v35 < v31)
                      {
                        goto LABEL_49;
                      }

                      if (v35 == v31)
                      {
                        break;
                      }
                    }

                    v34 -= 16;
                    if (!(result-- & 0xFFFE))
                    {
                      goto LABEL_49;
                    }
                  }

                  *v34 = v30[7];
                  v30[5] = 0;
                  break;
                }
              }
            }

LABEL_49:
            LOWORD(v27) = v27 + 1;
            v29 = v27;
            v27 = v27;
            v28 += 16;
            ++v25;
          }

          while (v27 < v8);
        }
      }
    }

LABEL_31:
    ++v9;
  }

  while (v9 < v8);
  if (v8 < 2u)
  {
    goto LABEL_109;
  }

  v37 = 1;
  do
  {
    v38 = &a2[16 * v37];
    if (v38[5] == 998)
    {
      v39 = 1;
      while (1)
      {
        v40 = &a2[16 * v39];
        v41 = v40[8];
        if (v41 > v38[8])
        {
          goto LABEL_60;
        }

        if (v40[5] == 41)
        {
          result = v38[6];
          if (v40[6] == result)
          {
            break;
          }
        }

        if (++v39 >= v8)
        {
          goto LABEL_60;
        }
      }

      v42 = v38[7];
      v40[7] = v42;
      v43 = v39 + 1;
      if (v43 < v8)
      {
        v44 = &a2[16 * v43];
        if (v44[5] == 39 && v44[8] == v41)
        {
          v45 = v44 + 7;
LABEL_70:
          *v45 = v42;
          goto LABEL_60;
        }
      }

      if (v39 >= 2u && *(v40 - 11) == 39 && *(v40 - 8) == v41)
      {
        v45 = v40 - 9;
        goto LABEL_70;
      }
    }

LABEL_60:
    ++v37;
  }

  while (v37 != v8);
  v46 = v79;
  v47 = 1;
  v48 = 1;
  v78 = a1;
  while (2)
  {
    v49 = &a2[16 * v47];
    if (v49[5] != 7)
    {
LABEL_72:
      v50 = &a2[16 * v48];
      v51 = *v49;
      v52 = *(v49 + 1);
      v53 = *(v49 + 3);
      v50[2] = *(v49 + 2);
      v50[3] = v53;
      *v50 = v51;
      v50[1] = v52;
      ++v48;
      goto LABEL_73;
    }

    v54 = v49[10];
    if (v54 != 43)
    {
      if ((v54 - 15) <= 1)
      {
        goto LABEL_72;
      }

      goto LABEL_89;
    }

    if (!v49[9])
    {
      v64 = *(v49 + 6);
      if (v64)
      {
        result = heap_Free(*(a1 + 8), v64);
        *(v49 + 6) = 0;
      }

LABEL_89:
      v65 = *(v49 + 1);
      if (v65)
      {
        result = heap_Free(*(a1 + 8), v65);
        *(v49 + 1) = 0;
        *(v49 + 8) = 0;
      }

      goto LABEL_73;
    }

    v55 = v49[8] - a2[8];
    result = cstdlib_strlen(szPHONMARKER_BEG);
    v56 = (v55 - result);
    if (v56 < v46)
    {
      v57 = cstdlib_strlen(szPHONMARKER_BEG);
      result = cstdlib_strncmp(&__s[v56], szPHONMARKER_BEG, v57);
      if (!result)
      {
        v58 = *(v49 + 1);
        if (v58)
        {
          result = heap_Free(*(v78 + 8), v58);
          *(v49 + 1) = 0;
          *(v49 + 8) = 0;
        }

        v59 = &a2[16 * v48];
        v60 = *v49;
        v61 = *(v49 + 1);
        v62 = *(v49 + 3);
        *(v59 + 2) = *(v49 + 2);
        *(v59 + 3) = v62;
        *v59 = v60;
        *(v59 + 1) = v61;
        v59[8] = a2[8] + v55;
        while (1)
        {
          LOWORD(v55) = v55 + 1;
          v63 = __s[v55];
          if (v55 >= v79)
          {
            break;
          }

          if (v63 == 31)
          {
            goto LABEL_92;
          }
        }

        if (v63 != 31)
        {
          goto LABEL_93;
        }

LABEL_92:
        result = cstdlib_strlen(szPHONMARKER_BEG);
        v59[9] = v55 - v56 - result;
LABEL_93:
        ++v48;
      }

      v46 = v79;
      a1 = v78;
    }

LABEL_73:
    if (++v47 < *a3)
    {
      continue;
    }

    break;
  }

  *a3 = v48;
  if (v48 < 2u)
  {
LABEL_109:
    *a3 = 1;
    return result;
  }

  v66 = 0;
  v67 = 1;
  do
  {
    v68 = &a2[16 * v67];
    if (v68[5] != 7 || v68[10] != 43)
    {
      v69 = v66;
      v70 = a2 + 26;
      v71 = 1;
      while (1)
      {
        if (v69)
        {
          if (*(v70 - 5) == 7 && *v70 == 43)
          {
            v72 = v68[8];
            v73 = *(v70 - 2);
            if (v72 >= v73 && v72 < *(v70 - 1) + v73)
            {
              break;
            }
          }
        }

        ++v71;
        v70 += 16;
        --v69;
        if (v71 >= v48)
        {
          goto LABEL_106;
        }
      }

      v68[8] = v73;
    }

LABEL_106:
    ++v67;
    ++v66;
  }

  while (v67 < v48);
  *a3 = v67;
  LOWORD(v74) = 1;
  do
  {
    v74 = v74;
    result = &a2[16 * v74];
    while (1)
    {
      v75 = *(result + 20);
      if (v75 == 998 || v75 == 0)
      {
        break;
      }

      ++v74;
      result += 64;
      if (v74 >= v67)
      {
        return result;
      }
    }

    v77 = v74 + 1;
    if (v67 > v77)
    {
      result = cstdlib_memmove(result, &a2[16 * v77], (v67 - v77) << 6);
      LOWORD(v67) = *a3;
    }

    LOWORD(v67) = v67 - 1;
    *a3 = v67;
  }

  while (v67 > v74);
  return result;
}

uint64_t wordpar_loc_asian_TranslateMarkup(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v190 = a4;
  v191[0] = a3;
  v7 = cstdlib_strlen((a1 + 180));
  v8 = *a2;
  v189 = 0;
  v188 = 30;
  v187 = 0;
  v9 = *(v4 + 16);
  MarkerArgStr = marker_getMarkerArgStr(2u);
  v11 = v9 + cstdlib_strlen(MarkerArgStr) + 1;
  if (*(v4 + 18) < v11)
  {
    v12 = datac_RequestBlock(*(a1 + 24), 1012, v11, &v190);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v4 = v190;
  }

  v13 = (*(v4 + 8) + *(v4 + 2) * *(v4 + 16));
  v14 = marker_getMarkerArgStr(2u);
  cstdlib_strcpy(v13, v14);
  v15 = marker_getMarkerArgStr(2u);
  v13[cstdlib_strlen(v15)] = 0;
  v16 = *(v190 + 16);
  *(v190 + 16) = v11;
  v17 = marker_getMarkerArgStr(1u);
  v18 = v11 + cstdlib_strlen(v17) + 1;
  v19 = v190;
  if (*(v190 + 18) < v18)
  {
    v12 = datac_RequestBlock(*(a1 + 24), 1012, v18, &v190);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v19 = v190;
  }

  v20 = (*(v19 + 8) + *(v19 + 2) * *(v19 + 16));
  v21 = marker_getMarkerArgStr(1u);
  cstdlib_strcpy(v20, v21);
  v22 = marker_getMarkerArgStr(1u);
  v20[cstdlib_strlen(v22)] = 0;
  v184 = *(v190 + 16);
  *(v190 + 16) = v18;
  HIBYTE(v188) = 76;
  v23 = *(*(a1 + 16) + 32);
  cstdlib_strlen(v8);
  log_OutText(v23, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v24, v25, v26, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)");
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eL)", 0, 0, 0);
  v12 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v188, v191[0], v16);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  HIBYTE(v188) = 68;
  v27 = *(*(a1 + 16) + 32);
  cstdlib_strlen(v8);
  log_OutText(v27, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v28, v29, v30, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)");
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eD)", 0, 0, 0);
  v12 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v188, v191[0], v16);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v31 = *(*(a1 + 16) + 32);
  cstdlib_strlen(v8);
  log_OutText(v31, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v32, v33, v34, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)");
  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStrAddMarker(\\x1eP)", 0, 0, 0);
  HIBYTE(v188) = 80;
  v35 = wordpar_loc_asian_deleteStrAddMarker(*(a1 + 24), v8, &v188, v191[0], v184);
  v36 = v35;
  if ((v35 & 0x80000000) == 0)
  {
    v37 = v35;
    v172 = a2;
    v38 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v38, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v39, v40, v41, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szPHONMARKER_BEG)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v191[0], v8, szPHONMARKER_BEG);
    v42 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v42, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v43, v44, v45, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szWORD_END)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v191[0], v8, szWORD_END);
    v46 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v46, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v47, v48, v49, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG, ), initial only", 0, 0, 0);
    v50 = 1;
    wordpar_loc_asian_replaceStrWithStr(v191[0], v8, "", 1);
    v51 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v51, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v52, v53, v54, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_replaceStrWithStr(szWORD_BEG,  )", 0, 0, 0);
    wordpar_loc_asian_replaceStrWithStr(v191[0], v8, " ", 0);
    v55 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v55, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v56, v57, v58, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "before wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
    wordpar_loc_asian_deleteStr(v191[0], v8, szMARKER_END);
    v59 = *(*(a1 + 16) + 32);
    cstdlib_strlen(v8);
    log_OutText(v59, "PP_WORD_PARSER", 5, 0, "(Txt) (%s) len=%d (UTF8) %s", v60, v61, v62, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)");
    marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "after wordpar_loc_asian_deleteStr(pBMarker, pStr, szMARKER_END)", 0, 0, 0);
    v63 = *(v191[0] + 16);
    v105 = v63 >= 2;
    v64 = v63 - 2;
    if (v105)
    {
      v65 = 0;
      v66 = *(v191[0] + 8);
      v67 = *(v66 + 32);
      v68 = (v66 + 104);
      do
      {
        v69 = *(v68 - 2);
        if (v69 == v67 && *(v68 - 5) == 7 && *v68 == 43)
        {
          v65 = 1;
        }

        v70 = v69 > v67 || v64-- == 0;
        v68 += 16;
      }

      while (!v70);
      v50 = v65 == 0;
    }

    v71 = cstdlib_strlen(v8);
    v36 = v37;
    if ((v71 & 0xFFFE) != 0 && *v8 == 32 && v50)
    {
      cstdlib_memmove(v8, v8 + 1, v71);
      v72 = *(v191[0] + 8);
      v73 = *(v191[0] + 16);
      if (v73 >= 2)
      {
        v74 = v72[8];
        v75 = v72 + 24;
        v76 = v73 - 1;
        do
        {
          if (*v75 != v74)
          {
            --*v75;
          }

          v75 += 16;
          --v76;
        }

        while (v76);
      }

      --v72[9];
    }

    v77 = v191[0];
    v78 = *(v191[0] + 8);
    if (*(v191[0] + 16) < 2u)
    {
      goto LABEL_148;
    }

    v174 = v7;
    v79 = -2;
    v80 = 160;
    v81 = 3;
    v82 = 128;
    v83 = 1;
    v171 = v7;
LABEL_33:
    v84 = &v78[16 * v83];
    if (v84[5] != 7 || v84[10] != 43)
    {
      goto LABEL_87;
    }

    v179 = v81;
    v180 = v80;
    v175 = cstdlib_strlen(v8);
    if (v84[8] < v78[8] || !v84[9] || (v89 = cstdlib_strlen(v8), v90 = v84[9], v90 > v89))
    {
      v169 = *(v84 + 6);
      if (v169)
      {
        heap_Free(*(*(a1 + 16) + 8), v169);
        *(v84 + 6) = 0;
      }

      log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1922, 0, v85, v86, v87, v88, v170);
      return 0;
    }

    v186 = v83;
    v181 = v82;
    v182 = v78;
    v91 = &v8[v84[8] - v78[8]];
    v92 = 0;
    v93 = v84[9];
    if (v84[9])
    {
      do
      {
        if (!utf8_BelongsToSet(0, v91, v92, v90))
        {
          goto LABEL_42;
        }

        ++v92;
      }

      while (v93 != v92);
      v92 = v90;
LABEL_42:
      v98 = v90 - 1;
      if (v90 == 1)
      {
LABEL_48:
        LOWORD(v90) = 1;
LABEL_49:
        if (v90 <= v92)
        {
          goto LABEL_82;
        }

        v176 = v79;
        v173 = v36;
        v100 = 0;
        v101 = 95;
        v102 = v92;
        while (1)
        {
          v103 = *(v91 + v102);
          if (v103 <= 0x5B)
          {
            break;
          }

          if (v103 == 95)
          {
            goto LABEL_63;
          }

          v70 = v103 == 92;
          v104 = v102 + 1;
          v105 = !v70 || v104 >= v90;
          if (!v105 && *(v91 + v104) == 84)
          {
            v177 = v100;
            for (i = v102 + 2; i < v90; i += utf8_determineUTF8CharLength(v107))
            {
              v107 = *(v91 + i);
              if (v107 == 92)
              {
                break;
              }
            }

            if (*(v91 + i) == 92)
            {
              v102 = i;
            }

            v100 = v177;
          }

LABEL_71:
          if (!utf8_BelongsToSet(0, v91, v102, v93))
          {
            v101 = *(v91 + v102);
          }

          if (++v102 >= v90)
          {
LABEL_74:
            v108 = v101;
            if (v101 == 35)
            {
              v36 = v173;
              v79 = v176;
            }

            else
            {
              v36 = v173;
              v79 = v176;
              if (v108 != 95)
              {
                LOWORD(v100) = v100 + 1;
              }
            }

            v109 = v100;
            if (v100)
            {
              v84[5] = 34;
              v110 = v190;
              v111 = *(v190 + 16);
              v112 = v90 - v92 + v111 + 1;
              if (*(v190 + 18) < v112)
              {
                v12 = datac_RequestBlock(*(a1 + 24), 1012, (v90 - v92 + v111 + 1), &v190);
                if ((v12 & 0x80000000) == 0)
                {
                  v110 = v190;
                  v113 = *(v191[0] + 8);
                  v111 = *(v190 + 16);
                  goto LABEL_90;
                }

                return v12;
              }

              v113 = v182;
LABEL_90:
              v116 = &v113[16 * v186];
              v183 = v113;
              v117 = v116[8] - v113[8];
              v118 = (*(v110 + 8) + *(v110 + 2) * v111);
              cstdlib_strncpy(v118, &v8[v117 + v92], (v90 - v92));
              v118[v90 - v92] = 0;
              v116[10] = *(v190 + 16);
              *(v190 + 16) = v112;
              if (v174 * v109 > *(v116 + 18))
              {
                v119 = *(*(a1 + 16) + 8);
                v120 = cstdlib_strlen(v8);
                v121 = heap_Realloc(v119, v8, v174 * v109 + v120 - *(v116 + 18) + 1);
                if (v121)
                {
                  v8 = v121;
                  *v172 = v121;
                  goto LABEL_93;
                }

                return 2370838538;
              }

LABEL_93:
              v185 = v174 * v109;
              if (v117 >= v183[9])
              {
                v178 = 0;
              }

              else
              {
                v178 = *(v116 + 18);
                cstdlib_memmove(&v8[v117], &v8[(v178 + v117)], v175 - (v178 + v117) + 1);
              }

              v122 = 0;
              do
              {
                v123 = cstdlib_strlen(v8);
                cstdlib_memmove(&v8[v117 + v174], &v8[v117], (v123 - v117));
                v8[v123 + v174] = 0;
                cstdlib_memmove(&v8[v117], (a1 + 180), v171);
                ++v122;
              }

              while (v109 > v122);
              v124 = *(v191[0] + 16);
              v125 = v181;
              if (v186 + 1 < v124)
              {
                v126 = (v183 + v180);
                v127 = v179;
                do
                {
                  if (*v126 > v116[8])
                  {
                    *v126 += v185 - v178;
                  }

                  v126 += 16;
                  v70 = v124 == v127++;
                }

                while (!v70);
              }

              v128 = 0;
              v116[9] = 0;
              v129 = v176;
              do
              {
                v36 = datac_RequestBlock(*(a1 + 24), 1021, (v124 + 1), v191);
                if ((v36 & 0x80000000) != 0)
                {
                  return v36;
                }

                v130 = *(v191[0] + 8);
                cstdlib_memmove(v130 + v125 + 64, v130 + v125, (v129 + *(v191[0] + 16)) << 6);
                v131 = *(v191[0] + 8) + v125;
                *v131 = 1;
                *(v131 + 20) = 1;
                v132 = &v130[16 * v186];
                *(v131 + 24) = *(v132 + 3);
                *(v131 + 32) = v128 + v132[8];
                *(v131 + 36) = v174;
                *(v131 + 16) = 0;
                *(v131 + 8) = 0;
                *(v131 + 40) = 0;
                *(v131 + 48) = 0;
                v77 = v191[0];
                v133 = *(v191[0] + 16);
                LOWORD(v124) = v133 + 1;
                *(v191[0] + 16) = v133 + 1;
                v125 += 64;
                v128 += v174;
                --v129;
                --v109;
              }

              while (v109);
              v134 = v36;
              v135 = v132[8] + v185;
              v136 = (v133 + 1);
              if (((v133 + 1) & 0xFFFE) != 0)
              {
                v137 = (v133 + 1);
              }

              else
              {
                v137 = 1;
              }

              v79 = v176;
              v78 = v130;
              v83 = v186;
              if (v136 < 2)
              {
LABEL_115:
                if (v136 < 2)
                {
                  LOWORD(v141) = 1;
                  v142 = v184;
                }

                else
                {
                  v140 = (v130 + 26);
                  v141 = 1;
                  v142 = v184;
                  while (1)
                  {
                    v143 = *(v140 - 5);
                    if (v143 == 21)
                    {
                      v142 = *v140;
                    }

                    v144 = *(v140 - 2) - v130[8];
                    if (v135 <= v144 && (v143 == 7 || v135 != v144))
                    {
                      break;
                    }

                    ++v141;
                    v140 += 16;
                    if ((v133 + 1) == v141)
                    {
                      goto LABEL_130;
                    }
                  }
                }

                if (v141 == v124)
                {
LABEL_130:
                  v146 = datac_RequestBlock(*(a1 + 24), 1021, (v133 + 2), v191);
                  v147 = v146;
                  if ((v146 & 0x80000000) != 0)
                  {
                    return v146;
                  }

                  v148 = *(v191[0] + 8);
                  v149 = *(v191[0] + 16);
                  v150 = &v148[16 * v149];
                  *v150 = 1;
                  v150[5] = 21;
                  v151 = v148;
                  if (v133)
                  {
                    LastPosRef = wordpar_loc_asian_getLastPosRef(v148, v149, v135 - v148[8], v133, 0);
                  }

                  else
                  {
                    LastPosRef = v148[7] + v148[6];
                  }

                  v81 = v179;
                  v80 = v180;
                  v82 = v181;
                  v150[6] = LastPosRef;
                  v150[7] = 0;
                  v150[8] = v135;
                  v150[9] = 0;
                  *(v150 + 8) = 0;
                  *(v150 + 1) = 0;
                  v150[10] = v142;
                  *(v150 + 6) = 0;
                  v77 = v191[0];
                  ++*(v191[0] + 16);
                  v36 = v147;
                  v78 = v151;
                }

                else
                {
                  v153 = v141;
                  v154 = v130[8];
                  if (v141 < v124)
                  {
                    v155 = &v130[16 * v141 + 5];
                    v156 = v141 + 1;
                    while (v135 == v155[3] - v154)
                    {
                      v158 = *v155;
                      v155 += 16;
                      v157 = v158;
                      if (v156 < (v133 + 1))
                      {
                        ++v156;
                        if (v157 != 21)
                        {
                          continue;
                        }
                      }

                      if (v157 != 21)
                      {
                        break;
                      }

                      v36 = v134;
                      goto LABEL_141;
                    }
                  }

                  v159 = wordpar_loc_asian_getLastPosRef(v130, (v133 + 1), v135 - v154, v153, 0);
                  v160 = datac_RequestBlock(*(a1 + 24), 1021, (v133 + 2), v191);
                  v161 = v160;
                  if ((v160 & 0x80000000) != 0)
                  {
                    return v160;
                  }

                  v78 = *(v191[0] + 8);
                  cstdlib_memmove(&v78[16 * v153 + 16], &v78[16 * v153], (*(v191[0] + 16) - v153) << 6);
                  v162 = *(v191[0] + 8) + (v153 << 6);
                  *v162 = 1;
                  *(v162 + 20) = 21;
                  *(v162 + 24) = v159;
                  *(v162 + 28) = 0;
                  *(v162 + 32) = v135;
                  *(v162 + 16) = 0;
                  *(v162 + 8) = 0;
                  *(v162 + 36) = 0;
                  *(v162 + 40) = v142;
                  *(v162 + 48) = 0;
                  v77 = v191[0];
                  ++*(v191[0] + 16);
                  v36 = v161;
LABEL_141:
                  v81 = v179;
                  v80 = v180;
                  v82 = v181;
                }

                v83 = v186;
                goto LABEL_87;
              }

              v138 = v130 + 21;
              v139 = v137 - 1;
              while (v135 != v138[3] || *v138 != 21)
              {
                v138 += 16;
                if (!--v139)
                {
                  goto LABEL_115;
                }
              }

              v36 = v134;
              v81 = v179;
              v80 = v180;
              v82 = v181;
LABEL_87:
              ++v83;
              v80 += 64;
              ++v81;
              v82 += 64;
              --v79;
              if (v83 >= *(v77 + 16))
              {
LABEL_148:
                v78[9] = cstdlib_strlen(v8);
                if (*(a1 + 188) || (paramc_ParamGetStr(*(*(a1 + 16) + 40), "langcode", &v187) & 0x80000000) == 0 && (!LH_stricmp(v187, "MNC") || !LH_stricmp(v187, "MNT") || !LH_stricmp(v187, "SIC")))
                {
                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() before remove conflict internal LANG marker", 0, 0, 0);
                  v164 = v191[0];
                  LODWORD(v165) = *(v191[0] + 16);
                  if (v165 >= 2)
                  {
                    v166 = v78 + 16;
                    v167 = -1;
                    v168 = 1;
                    do
                    {
                      if (*(v166 - 11) == 36 && v166[5] == 36 && *(v166 - 8) == v166[8] && !*v166)
                      {
                        cstdlib_memmove(v166 - 16, v166, (v167 + v165) << 6);
                        v164 = v191[0];
                        --*(v191[0] + 16);
                      }

                      ++v168;
                      v165 = *(v164 + 16);
                      v166 += 16;
                      --v167;
                    }

                    while (v168 < v165);
                  }

                  marker_TraceMrk(211, "PP_WORD_PARSER", *(a1 + 168), *(a1 + 16), *(a1 + 24), 1021, "in wordpar_loc_asian_TranslateMarkup() after remove conflict internal LANG marker", 0, 0, 0);
                }

                return v36;
              }

              goto LABEL_33;
            }

LABEL_82:
            log_OutPublic(*(*(a1 + 16) + 32), "PP_WORD_PARSER", 1818, 0, v94, v95, v96, v97, v170);
            v114 = *(v84 + 6);
            if (v114)
            {
              heap_Free(*(*(a1 + 16) + 8), v114);
              *(v84 + 6) = 0;
            }

            v83 = v186;
            v77 = v191[0];
            v115 = *(v191[0] + 16);
            v82 = v181;
            v78 = v182;
            if (v186 + 1 != v115)
            {
              cstdlib_memmove(v84, &v182[16 * v186 + 16], (v115 - v186) << 6);
              v77 = v191[0];
              LOWORD(v115) = *(v191[0] + 16);
            }

            v81 = v179;
            v80 = v180;
            *(v77 + 16) = v115 - 1;
            goto LABEL_87;
          }
        }

        if (v103 != 35)
        {
          if (v103 == 18)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_63:
        if (v101 != 35 && v101 != 95)
        {
          ++v100;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v98 = -1;
    }

    v99 = v98;
    while (utf8_BelongsToSet(0, v91, v99, v93))
    {
      LOWORD(v90) = v90 - 1;
      if (!--v99)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

  return v36;
}

uint64_t wordpar_loc_asian_PostProcessMarkers(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  memset(__dst, 0, sizeof(__dst));
  result = marker_getMarkerArgStr(1u);
  v61 = 0;
  v11 = *a4;
  if (v11 >= 2)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = v13 + 1;
      if (v14 < v11)
      {
        v15 = (a3 + (v13 << 6));
        v16 = a3 + (v14 << 6);
        if (v15[8] == *(v16 + 32))
        {
          v17 = v15[5];
          if (v17 != 36 && v17 != 0x4000 && *(v16 + 20) == 36)
          {
            cstdlib_memcpy(__dst, (a3 + (v14 << 6)), 0x40uLL);
            v18 = *(v15 + 1);
            *v16 = *v15;
            *(v16 + 16) = v18;
            v19 = *(v15 + 3);
            *(v16 + 32) = *(v15 + 2);
            *(v16 + 48) = v19;
            result = cstdlib_memcpy(v15, __dst, 0x40uLL);
            v11 = *a4;
            LODWORD(v14) = 1;
          }
        }
      }

      v13 = v14;
    }

    while (v14 < v11);
    if (v11 >= 2)
    {
      v20 = (a3 + 84);
      for (i = 1; i < v11; ++i)
      {
        v22 = *v20;
        if (*v20 == 41)
        {
          MarkerArgStr = marker_getMarkerArgStr(1u);
          result = cstdlib_strcmp(v12, MarkerArgStr);
          if (!result)
          {
            v25 = v20[3];
            v26 = *(a3 + 32);
            if (v25 != v26 && *(a5 + (v25 + ~v26)) == 32)
            {
              v20[3] = v25 + 1;
            }
          }

          *v20 = 1;
          v11 = *a4;
        }

        else if (v22 == 39)
        {
          v23 = v20[3];
          if (v23 != *(a3 + 32))
          {
            v20[3] = v23 + 1;
          }

          *v20 = 37;
        }

        else if (v22 == 36)
        {
          v12 = *(v20 + 5);
        }

        v20 += 16;
      }

      if (v11 >= 2)
      {
        v27 = 1;
        do
        {
          v28 = v27 + 1;
          if (v28 >= v11 || (v29 = (a3 + (v28 << 6)), v30 = (a3 + (v27 << 6)), *(v29 + 8) >= *(v30 + 8)))
          {
            ++v27;
          }

          else
          {
            cstdlib_memcpy(__dst, (a3 + (v28 << 6)), 0x40uLL);
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            v32 = v30[3];
            v29[2] = v30[2];
            v29[3] = v32;
            result = cstdlib_memcpy(v30, __dst, 0x40uLL);
            v27 = 0;
            v11 = *a4;
          }
        }

        while (v27 < v11);
        if (v11 >= 2)
        {
          v33 = 1;
          do
          {
            v34 = v33 + 1;
            if (v34 < v11)
            {
              v35 = (a3 + (v33 << 6));
              v36 = a3 + (v34 << 6);
              if (v35[8] == *(v36 + 32))
              {
                v37 = v35[5];
                if (v37 != 36 && v37 != 0x4000 && *(v36 + 20) == 36)
                {
                  cstdlib_memcpy(__dst, (a3 + (v34 << 6)), 0x40uLL);
                  v38 = *(v35 + 1);
                  *v36 = *v35;
                  *(v36 + 16) = v38;
                  v39 = *(v35 + 3);
                  *(v36 + 32) = *(v35 + 2);
                  *(v36 + 48) = v39;
                  result = cstdlib_memcpy(v35, __dst, 0x40uLL);
                  v11 = *a4;
                  LODWORD(v34) = 1;
                }
              }
            }

            v33 = v34;
          }

          while (v34 < v11);
        }
      }
    }
  }

  if (!a2 && ((result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v61), (result & 0x80000000) != 0) || (result = LH_stricmp(v61, "MNC"), result) && (result = LH_stricmp(v61, "MNT"), result) && (result = LH_stricmp(v61, "SIC"), result)))
  {
    if (*a4 < 2u)
    {
      v40 = 1;
    }

    else
    {
      v55 = (a3 + 104);
      v56 = 1;
      do
      {
        if (*(v55 - 5) == 36)
        {
          v57 = *v55;
          v58 = marker_getMarkerArgStr(9u);
          result = cstdlib_strcmp(v57, v58);
          if (!result || (v59 = *v55, v60 = marker_getMarkerArgStr(0xAu), result = cstdlib_strcmp(v59, v60), !result))
          {
            *(v55 - 5) = 999;
          }
        }

        ++v56;
        v55 += 8;
      }

      while (v56 < *a4);
      v40 = v56;
    }

    *a4 = v40;
  }

  else
  {
    v40 = *a4;
  }

  if (v40 >= 2)
  {
    v41 = 1;
    v42 = 1;
    while (1)
    {
      v43 = (a3 + (v41 << 6));
      if (*(v43 + 5) != 36)
      {
        goto LABEL_57;
      }

      v44 = v41 - 1;
      if (v41 == 1)
      {
        break;
      }

      while (1)
      {
        v45 = a3 + (v44 << 6);
        if (*(v45 + 20) == 36)
        {
          break;
        }

        if (!--v44)
        {
          goto LABEL_58;
        }
      }

      result = cstdlib_strcmp(*(v43 + 5), *(v45 + 40));
      if (!result)
      {
        break;
      }

      v46 = *(v45 + 32);
      if (*(v43 + 8) != v46)
      {
        break;
      }

      if (*v45 && (*v45 != 1 || v46 != *(a3 + 32)))
      {
        v52 = *v43;
        v53 = v43[1];
        v54 = v43[3];
        *(v45 + 32) = v43[2];
        *(v45 + 48) = v54;
        *v45 = v52;
        *(v45 + 16) = v53;
        goto LABEL_60;
      }

      if (!*v43)
      {
        *(v45 + 20) = 999;
LABEL_57:
        v47 = v42;
LABEL_59:
        v48 = (a3 + (v47 << 6));
        v49 = *v43;
        v50 = v43[1];
        v51 = v43[3];
        v48[2] = v43[2];
        v48[3] = v51;
        *v48 = v49;
        v48[1] = v50;
        ++v42;
      }

LABEL_60:
      if (++v41 >= *a4)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    v47 = v42;
    goto LABEL_59;
  }

  v42 = 1;
LABEL_64:
  *a4 = v42;
  return result;
}

_DWORD *wordpar_loc_asian_deleteMarkerForUnknown(_DWORD *result, unsigned __int16 *a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = &v3[16 * v4];
      v6 = v5[1];
      v18 = *v5;
      v19 = v6;
      v7 = v5[3];
      v20 = v5[2];
      v21 = v7;
      result = wordpar_loc_asian_isMarkerUnknown(&v18);
      v8 = *a2;
      if (result)
      {
        if (!*a2)
        {
          return result;
        }

        v9 = 0;
        do
        {
          v10 = &v3[16 * v9];
          if (v10[5] == 36 && (v11 = *(v10 + 5), MarkerArgStr = marker_getMarkerArgStr(9u), result = cstdlib_strcmp(v11, MarkerArgStr), result) && *v10 == 1 && (result = &v3[16 * v4], result[8] == v10[8]))
          {
            result = cstdlib_memmove(result, result + 16, (*a2 - v4) << 6);
            v8 = *a2 - 1;
            *a2 = v8;
            v4 -= v9 <= v4;
          }

          else
          {
            ++v9;
            v8 = *a2;
          }
        }

        while (v9 < v8);
      }

      ++v4;
    }

    while (v4 < v8);
    if (v8)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = &v3[16 * v13];
        if (v15[5] != 36)
        {
          goto LABEL_24;
        }

        v16 = *(v15 + 1);
        v18 = *v15;
        v19 = v16;
        v17 = *(v15 + 3);
        v20 = *(v15 + 2);
        v21 = v17;
        result = wordpar_loc_asian_isMarkerUnknown(&v18);
        if (result)
        {
          ++v13;
        }

        else
        {
          if (!*v15)
          {
            v14 = 0;
LABEL_24:
            ++v13;
            continue;
          }

          if (!v14)
          {
            goto LABEL_24;
          }

          result = cstdlib_memmove(&v3[16 * v13], v15 + 16, (*a2 - v13) << 6);
          --*a2;
        }

        v14 = 1;
      }

      while (v13 < *a2);
    }
  }

  return result;
}