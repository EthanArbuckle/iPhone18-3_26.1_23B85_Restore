uint64_t dcteg_hlp_FetchURLHashtag(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  __b = 0u;
  v16 = 0u;
  cstdlib_memset(&__b, 0, 0x28uLL);
  *&__b = ssftmap_ElemCopyString;
  *(&v16 + 1) = ssftmap_ElemCopyString;
  *(&__b + 1) = ssftmap_ElemFreeString;
  v17 = ssftmap_ElemFreeString;
  *&v16 = ssftmap_ElemCompareKeysString;
  v4 = *(a1 + 8);
  v13[0] = __b;
  v13[1] = v16;
  v14 = ssftmap_ElemFreeString;
  v5 = ssftmap_ObjOpen(v4, 0, v13, (a2 + 96));
  if ((v5 & 0x80000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    Dictionary_FetchKeys(*(a2 + 72), &v19, &v18);
    v7 = LH_ERROR_to_VERROR(v6);
    if ((v7 & 0x80000000) == 0 && v18)
    {
      for (i = 0; i < v18; ++i)
      {
        v9 = v19[i];
        if (*v9 == 35 || cstdlib_strchr(v19[i], 46) && !cstdlib_strchr(v9, 32))
        {
          v10 = ssftmap_Insert(*(a2 + 96), v9, "");
          v7 = v10;
          if ((v10 & 0x80000000) != 0)
          {
            if ((v10 & 0x1FFF) != 2)
            {
              break;
            }

            v7 = 0;
          }
        }
      }
    }
  }

  v11 = *(a2 + 72);
  if (v11)
  {
    Dictionary_ReturnKeys(v11, v19);
  }

  return v7;
}

uint64_t dctlist_ObjOpen(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  return 0;
}

uint64_t dctlist_ObjClose(uint64_t a1)
{
  for (i = *(a1 + 8); i; i = *(a1 + 8))
  {
    dctlist_Remove(a1, *(i + 8));
  }

  return 0;
}

uint64_t dctlist_Remove(uint64_t a1, uint64_t a2)
{
  result = 2231377940;
  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(v5 + 8) == a2)
    {
      v8 = *(v5 + 16);
      *(a1 + 8) = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
      }

      heap_Free(*a1, v5);
      return 0;
    }

    else
    {
      while (1)
      {
        v6 = v5;
        v5 = *(v5 + 16);
        if (!v5)
        {
          break;
        }

        if (*(v5 + 8) == a2)
        {
          v7 = *(v5 + 16);
          heap_Free(*a1, v5);
          *(v6 + 16) = v7;
          if (v7)
          {
            return 0;
          }

          result = 0;
          *(a1 + 16) = v6;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t dctlist_Add(uint64_t a1, uint64_t a2)
{
  v4 = heap_Calloc(*a1, 1, 24);
  if (v4)
  {
    *v4 = -1;
    *(v4 + 8) = a2;
    *(v4 + 16) = 0;
    v6 = (a1 + 8);
    v5 = *(a1 + 8);
    if (v5)
    {
      if (*v5 == -1)
      {
        *(v4 + 16) = v5;
        goto LABEL_10;
      }

      do
      {
        v7 = v5;
        v5 = *(v5 + 16);
      }

      while (v5);
      *(v7 + 16) = v4;
    }

    else
    {
      *(a1 + 8) = v4;
    }

    v6 = (a1 + 16);
LABEL_10:
    v8 = 0;
    *v6 = v4;
    return v8;
  }

  return 2231377930;
}

uint64_t dctlist_Move(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 2231377940;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 1);
      v11 = *v9;
      if (v10 == a2)
      {
        v6 = v8;
        if (v11 == a3)
        {
          return 0;
        }
      }

      if (a3 != -1 && v11 == a3)
      {
        return 2231378969;
      }

      if (v11 <= a3 && v10 != a2)
      {
        v7 = v9;
      }

      if (v6 && v7)
      {
        break;
      }

      v8 = v9;
      v9 = *(v9 + 2);
    }

    while (v9);
    if (a3 == -1 && v7 && *(v7 + 2) != *(a1 + 16))
    {
      v7 = *(a1 + 16);
    }

    if (v6 == v7)
    {
      if (v6)
      {
        v4 = *(v6 + 2);
      }

      goto LABEL_34;
    }

    if (v6)
    {
      v13 = *(v6 + 2);
      v14 = *(v13 + 16);
      *(v6 + 2) = v14;
      v15 = v4;
      v4 = v13;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v4 + 8) != a2)
      {
        return v3;
      }

      v15 = *(v4 + 16);
      *v5 = v15;
      if (v15)
      {
LABEL_28:
        if (v7)
        {
          *(v4 + 16) = *(v7 + 2);
          *(v7 + 2) = v4;
          if (*(v4 + 16))
          {
LABEL_34:
            v3 = 0;
            *v4 = a3;
            return v3;
          }

          v5 = (a1 + 16);
        }

        else
        {
          *(v4 + 16) = v15;
        }

        *v5 = v4;
        goto LABEL_34;
      }

      v6 = 0;
      v13 = v4;
    }

    *(a1 + 16) = v6;
    v4 = v13;
    goto LABEL_28;
  }

  return v3;
}

uint64_t dctlist_GetNext(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 16);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  *a2 = v2;
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OpenEDCTObj(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v7 = heap_Calloc(*(v17 + 8), 1, 128);
  *a3 = v7;
  if (!v7)
  {
    v13 = 2231377930;
    v14 = 4400;
    goto LABEL_7;
  }

  *v7 = a1;
  v7[1] = a2;
  *(*a3 + 16) = heap_Alloc;
  *(*a3 + 24) = heap_Calloc;
  *(*a3 + 32) = heap_Realloc;
  *(*a3 + 40) = heap_Free;
  *(*a3 + 88) = dcteg_fread;
  *(*a3 + 96) = dcteg_fseek;
  *(*a3 + 112) = dcteg_ffinished;
  *(*a3 + 104) = dcteg_ferror;
  cstdlib_memset((*a3 + 120), 0, 4uLL);
  v12 = OOCAllocator_Con(*a3 + 48, (*a3 + 16), *(v17 + 8));
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    v14 = 4477;
LABEL_7:
    log_OutPublic(*(v17 + 32), "DCTEG", v14, 0, v8, v9, v10, v11, v16);
  }

  return v13;
}

size_t dcteg_fread(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 68);
  if (a3 * a2 >= (*(a4 + 64) - v5))
  {
    v6 = (*(a4 + 64) - v5);
  }

  else
  {
    v6 = a3 * a2;
  }

  if (v6)
  {
    cstdlib_memcpy(a1, (*(a4 + 48) + v5), v6);
    *(a4 + 68) += v6;
  }

  return v6 / a2;
}

uint64_t dcteg_fseek(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 64);
LABEL_10:
    if (v3 >= -a2)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (a3 == 1)
  {
    v3 = *(a1 + 68);
    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_11:
      LODWORD(a2) = v3 + a2;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a3 || a2 < 0)
  {
    return 1;
  }

LABEL_12:
  if (a2 >= *(a1 + 64))
  {
    return 1;
  }

  v4 = 0;
  *(a1 + 68) = a2;
  return v4;
}

uint64_t dcteg_ffinished(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 44))
      {
        heap_Free(*a1, v2);
      }

      *(a1 + 48) = 0;
    }
  }

  return 0;
}

uint64_t CloseEDCTObj(uint64_t a1)
{
  v4 = 0;
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v4);
  if ((inited & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
  }

  return inited;
}

uint64_t hlp_TraceTuningData_UDctEntries(uint64_t a1, uint64_t a2)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = 0;
  v2 = *(*(a2 + 72) + 128);
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v23);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Info = edct_DctGetInfo(v2, &v29);
  v5 = LH_ERROR_to_VERROR(Info);
  if ((v5 & 0x80000000) == 0 && !v30)
  {
    edct_DctItOpen(*(v2 + 48), v2, &v28);
    v7 = LH_ERROR_to_VERROR(v6);
    if ((v7 & 0x80000000) != 0)
    {
LABEL_24:
      v5 = v7;
    }

    else
    {
      do
      {
        v8 = edct_DctItCurrent(v28, &v27, &v26, &v25 + 1, &v25);
        v5 = LH_ERROR_to_VERROR(v8);
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        if (!v27 || v26 == 0)
        {
          break;
        }

        if (HIDWORD(v25))
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = v26;
            if (!*(v26 + v15 + 56))
            {
              cstdlib_strlen(*(v26 + v15 + 48));
              v17 = v26;
            }

            v18 = *(v17 + v15);
            v19 = *(v23 + 32);
            if (v18 != 2 && v18)
            {
              log_OutTraceTuningData(v19, 102, "%s%s %s%s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            else
            {
              log_OutTraceTuningData(v19, 102, "%s%s %s%.*s %s%s", v9, v10, v11, v12, v13, "USERDCTKEY");
            }

            ++v16;
            v15 += 64;
          }

          while (v16 < HIDWORD(v25));
        }

        v20 = edct_DctItIncrement(v28);
        v7 = LH_ERROR_to_VERROR(v20);
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        HasEnded = edct_DctItHasEnded(v28, &v24);
        v5 = LH_ERROR_to_VERROR(HasEnded);
      }

      while ((v5 & 0x80000000) == 0 && !v24);
    }
  }

  if (v28)
  {
    edct_DctItClose(v28);
  }

  return v5;
}

uint64_t LoadUDct(uint64_t a1, uint64_t a2)
{
  v36 = 0;
  v4 = *(a2 + 16);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v36);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a2 + 68) = 0;
  if (cstdlib_strcmp(v4, "application/edct-bin-dictionary"))
  {
    if (cstdlib_strcmp(v4, "application/cdct-bin-dictionary"))
    {
      if (!cstdlib_strcmp(v4, "application/x-vocalizer-userdct-pointer"))
      {
        *(a2 + 112) = *(a2 + 48);
        return inited;
      }

      log_OutPublic(*(v36 + 32), "DCTEG", 4403, "%s%s", v6, v7, v8, v9, "contentType");
      inited = 2231378966;
      goto LABEL_20;
    }

    v22 = PNEW_CDSObject_Con(a1 + 48, a1 + 48, (a1 + 88), a2, 0, (a2 + 80));
    v23 = LH_ERROR_to_VERROR(v22);
    if ((v23 & 0x80000000) != 0)
    {
      inited = v23;
      log_OutPublic(*(v36 + 32), "DCTEG", 4481, "%s%s%s%x", v24, v25, v26, v27, "name");
      *(a2 + 112) = 0;
LABEL_20:
      if (*(a2 + 72) || *(a2 + 80))
      {
        UnloadUDct(a1, a2);
      }

      return inited;
    }

    Interface = CDSObject_QueryInterface(*(a2 + 80), 414531721, (a2 + 112));
    inited = LH_ERROR_to_VERROR(Interface);
    if ((inited & 0x80000000) == 0)
    {
      return inited;
    }

    log_OutPublic(*(v36 + 32), "DCTEG", 4482, "%s%s%s%x", v29, v30, v31, v32, "name");
LABEL_19:
    *(a2 + 112) = 0;
    goto LABEL_20;
  }

  v10 = PNEW_Dictionary_Con(a1 + 48, a1 + 48, v34, (a1 + 88), a2, (a1 + 120), 1, (a2 + 72));
  v11 = LH_ERROR_to_VERROR(v10);
  if ((v11 & 0x80000000) != 0)
  {
    inited = v11;
    log_OutPublic(*(v36 + 32), "DCTEG", 4478, "%s%s%s%x", v12, v13, v14, v15, "name");
    goto LABEL_19;
  }

  if (*(a2 + 48) && !*(a2 + 44))
  {
    inited = 2231377945;
    log_OutPublic(*(v36 + 32), "DCTEG", 4479, "%s%s", v12, v13, v14, v15, "name");
    goto LABEL_20;
  }

  v16 = Dictionary_QueryInterface(*(a2 + 72), 414531721, (a2 + 112));
  inited = LH_ERROR_to_VERROR(v16);
  v21 = *(v36 + 32);
  if ((inited & 0x80000000) != 0)
  {
    log_OutPublic(v21, "DCTEG", 4480, "%s%s%s%x", v17, v18, v19, v20, "name");
    goto LABEL_19;
  }

  if (log_HasTraceTuningDataSubscriber(v21))
  {
    hlp_TraceTuningData_UDctEntries(a1, a2);
  }

  return inited;
}

uint64_t UnloadUDct(uint64_t a1, void *a2)
{
  v12 = 0;
  v3 = a2[2];
  inited = InitRsrcFunction(*a1, *(a1 + 8), &v12);
  if ((inited & 0x80000000) == 0)
  {
    if (cstdlib_strcmp(v3, "application/edct-bin-dictionary"))
    {
      if (cstdlib_strcmp(v3, "application/cdct-bin-dictionary"))
      {
        if (cstdlib_strcmp(v3, "application/x-vocalizer-userdct-pointer"))
        {
          log_OutPublic(*(v12 + 32), "DCTEG", 4404, "%s%s", v5, v6, v7, v8, "contentType");
          return 2231378966;
        }
      }

      else
      {
        v10 = a2[10];
        if (v10)
        {
          CDSObject_Des(v10);
          heap_Free(*(v12 + 8), a2[10]);
          a2[10] = 0;
        }
      }
    }

    else
    {
      v9 = a2[9];
      if (v9)
      {
        Dictionary_Des(v9);
        heap_Free(*(v12 + 8), a2[9]);
        a2[9] = 0;
      }
    }
  }

  return inited;
}

uint64_t RetrieveUDctEntry(uint64_t a1, uint64_t a2, char *a3, char *__s, _BYTE *a5, char *a6, _WORD *a7, char *a8, _BYTE *a9, _DWORD *a10)
{
  v51 = a7;
  v52 = a6;
  v10 = *(a1 + 16);
  v50 = 0;
  v49 = 0;
  v11 = *(a2 + 16);
  v48 = 0;
  if (!__s)
  {
    return 2231377940;
  }

  v18 = *(a2 + 24);
  if (v18)
  {
    if (!strhelper_csv_HasElem(v18, __s))
    {
      return 2231377940;
    }
  }

  *a8 = 0;
  if (a9)
  {
    *a9 = 0;
  }

  v47 = 0;
  UInt = paramc_ParamGetUInt(*(v10 + 40), "numberoutputtranscriptions", &v49);
  v20 = v49;
  if (UInt < 0)
  {
    v20 = 1;
  }

  v45 = v20;
  if (paramc_ParamGetUInt(*(v10 + 40), "numberoutputorthsubstitutes", &v49) < 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = v49;
  }

  v22 = 2231377927;
  if (a5 && *(a1 + 48) && v11 && a7 && *a5)
  {
    v23 = v21;
    v24 = (*(**(a2 + 112) + 16))(*(a2 + 112) - *(**(a2 + 112) + 48), &v47);
    if ((LH_ERROR_to_VERROR(v24) & 0x80000000) == 0)
    {
      if (*v47)
      {
        for (i = 0; i != 3; ++i)
        {
          __s2[i] = cstdlib_tolower(*(*v47 + i));
        }

        __s2[3] = 0;
        v26 = 2231377940;
        if (!a3 || cstdlib_strstr(a3, __s2))
        {
          v27 = (***(a2 + 112))(*(a2 + 112) - *(**(a2 + 112) + 48), a5, &v48, &v50);
          v28 = LH_ERROR_to_VERROR(v27);
          v29 = v48;
          if (v28 < 0 || (v30 = v50) == 0 || !v48)
          {
            if (v28 < 0)
            {
              v22 = v28;
            }

            else
            {
              v22 = 2231377940;
            }

LABEL_47:
            if (v29)
            {
              v39 = (*(**(a2 + 112) + 8))(*(a2 + 112) - *(**(a2 + 112) + 48));
              v40 = LH_ERROR_to_VERROR(v39);
              if ((v40 & 0x80000000) != 0)
              {
                v44 = v40;
                log_OutText(*(v10 + 32), "DCTEG", 3, 0, "MSG_ITransLookUp_ReturnTranscriptions failed: %x", v41, v42, v43, v40);
                return v44;
              }
            }

            return v22;
          }

          *a10 = *v48;
          cstdlib_strcpy(a8, __s2);
          if (a9)
          {
            v35 = v47[1];
            if (v35)
            {
              if (cstdlib_strlen(v35) == 3)
              {
                for (j = 0; j != 3; ++j)
                {
                  a9[j] = cstdlib_tolower(*(v47[1] + j));
                }

                a9[3] = 0;
              }
            }
          }

          if (*v48 == 4)
          {
            if (v23 >= v30)
            {
              v37 = v30;
            }

            else
            {
              v37 = v23;
            }
          }

          else
          {
            if (*v48 != 1)
            {
              log_OutPublic(*(v10 + 32), "DCTEG", 4476, "%s%d", v31, v32, v33, v34, "contentType");
              goto LABEL_46;
            }

            if (v45 >= v30)
            {
              v37 = v30;
            }

            else
            {
              v37 = v45;
            }
          }

          v26 = GetnTranscriptions(&v48, &v52, &v51, v37);
LABEL_46:
          v29 = v48;
          v22 = v26;
          goto LABEL_47;
        }
      }
    }

    return 2231377940;
  }

  return v22;
}

uint64_t GetnTranscriptions(void *a1, char **a2, _WORD **a3, unsigned int a4)
{
  **a2 = 0;
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4;
    while (1)
    {
      v10 = *a1 + 24 * v7;
      v12 = *(v10 + 8);
      v11 = *(v10 + 16);
      if (v11)
      {
        v13 = 0;
        while (v12[v13])
        {
          if (v11 == ++v13)
          {
            goto LABEL_9;
          }
        }

        LODWORD(v11) = v13;
      }

LABEL_9:
      v14 = v8 + v11 + 1;
      if (v14 > **a3)
      {
        return 2231377929;
      }

      if (v7)
      {
        cstdlib_strcat(*a2, "\x12");
        v8 = v14;
      }

      else
      {
        v8 += v11;
      }

      cstdlib_strcat(*a2, v12);
      if (++v7 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_16:
    result = 0;
    (*a2)[v8] = 0;
    **a3 = v8;
  }

  return result;
}

uint64_t dctegdict_FetchInfo(uint64_t a1, char ***a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Info = Dictionary_FetchInfo(*(a1 + 72), a2);

    return LH_ERROR_to_VERROR(Info);
  }

  else
  {
    v6 = 2231377920;
    if (cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v7 = *(a1 + 48);
      v12 = 0;
      v8 = (*(*v7 + 24))(v7 - *(*v7 + 48));
      if (v8)
      {
        v9 = (**v8)(v8 - *(*v8 + 64), 414531107, &v12);
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v12 == 0;
        }

        if (!v10)
        {
          v9 = (**v12)(v12 - *(*v12 + 32), a2);
        }

        v11 = -2063589366;
        if (v9 != 1)
        {
          v11 = -2063589376;
        }

        if (v9)
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    return v6;
  }
}

char *dctegdict_ReturnInfo(uint64_t a1, uint64_t a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_ReturnInfo(*(a1 + 72), a2);
  }

  result = cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer");
  if (result)
  {
    v5 = *(a1 + 48);
    v7 = 0;
    result = (*(*v5 + 24))(v5 - *(*v5 + 48));
    if (result)
    {
      result = (**result)(&result[-*(*result + 64)], 414531107, &v7);
      if (result)
      {
        v6 = 1;
      }

      else
      {
        v6 = v7 == 0;
      }

      if (!v6)
      {
        return (*(*v7 + 8))(v7 - *(*v7 + 32), a2);
      }
    }
  }

  return result;
}

uint64_t dctegdict_FetchKeys(uint64_t a1, char ***a2, void *a3)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_FetchKeys(*(a1 + 72), a2, a3);

    return LH_ERROR_to_VERROR(v6);
  }

  else
  {
    v8 = 2231377920;
    if (cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer"))
    {
      v9 = *(a1 + 48);
      v14 = 0;
      v10 = (*(*v9 + 24))(v9 - *(*v9 + 48));
      if (v10)
      {
        v11 = (**v10)(v10 - *(*v10 + 64), 414531107, &v14);
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = v14 == 0;
        }

        if (!v12)
        {
          v11 = (*(*v14 + 16))(v14 - *(*v14 + 32), a2, a3);
        }

        v13 = -2063589366;
        if (v11 != 1)
        {
          v13 = -2063589376;
        }

        if (v11)
        {
          return v13;
        }

        else
        {
          return 0;
        }
      }
    }

    return v8;
  }
}

char *dctegdict_ReturnKeys(uint64_t a1, uint64_t a2)
{
  if (cstdlib_strstr(*(a1 + 16), "application/edct-bin-dictionary"))
  {
    Dictionary_ReturnKeys(*(a1 + 72), a2);
  }

  result = cstdlib_strstr(*(a1 + 16), "application/x-vocalizer-userdct-pointer");
  if (result)
  {
    v5 = *(a1 + 48);
    v7 = 0;
    result = (*(*v5 + 24))(v5 - *(*v5 + 48));
    if (result)
    {
      result = (**result)(&result[-*(*result + 64)], 414531107, &v7);
      if (result)
      {
        v6 = 1;
      }

      else
      {
        v6 = v7 == 0;
      }

      if (!v6)
      {
        return (*(*v7 + 24))(v7 - *(*v7 + 32), a2);
      }
    }
  }

  return result;
}

uint64_t LD_createChild(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  v28 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a4 && (v14 = *(*(a1 + 64) + 8 * a4)) != 0)
  {
    if (a3 > 1)
    {
      if (*(v14 + 2) == LD_ChildParentD[a3])
      {
        v15 = LD_createRec(a1, a3, &v28, v9, v10, v11, v12, v13);
        if ((v15 & 0x80000000) == 0)
        {
          v21 = 0;
          v22 = v28;
          *(v28 + 8) = v14;
          v23 = (v14 + 32);
          *(v22 + 24) = 0;
          *(v22 + 32) = 0;
          v24 = 1;
          do
          {
            v25 = v24;
            v26 = v23[v21];
            if (v26 && *(v26 + 2) == a3)
            {
              *(v22 + 16) = v26;
              *(v23[v21] + 24) = v22;
              v23[v21] = v22;
              goto LABEL_22;
            }

            v24 = 0;
            v21 = 1;
          }

          while ((v25 & 1) != 0);
          v27 = *v23;
          if (*v23)
          {
            if (*(v14 + 40))
            {
              log_OutPublic(*(*a1 + 32), "LINGDB", 20030, "%s%u%s%u", v17, v18, v19, v20, "childType");
              return 2300591643;
            }

            v27 = 1;
          }

          v23[v27] = v22;
          *(v22 + 16) = 0;
LABEL_22:
          *a5 = *v22;
          *(a1 + 72) = 1;
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20006, "%s%u%s%u", v10, v11, v12, v13, "childType");
        return 2300591619;
      }
    }

    else
    {
      v15 = 2300591618;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20005, "%s%u", v10, v11, v12, v13, "childType");
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v10, v11, v12, v13, "record");
    return 2300591633;
  }

  return v15;
}

uint64_t LD_createRec(uint64_t *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 - 7 <= 0xFFFFFFF9)
  {
    v10 = 2300591625;
    v11 = *(*a1 + 32);
    v31 = "method";
    v12 = "%s%s%s%u";
    v13 = 20012;
LABEL_3:
    log_OutPublic(v11, "LINGDB", v13, v12, a5, a6, a7, a8, v31);
    return v10;
  }

  v14 = *(a1 + 12);
  if (v14 - 1 >= *(a1 + 15))
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20019, 0, a5, a6, a7, a8, v31);
    return 2300591632;
  }

  v16 = *(a1 + 13);
  if (v14 >= v16)
  {
    v17 = *(a1 + 14) + v16;
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : Begin (from %u to %u)", a6, a7, a8, *(a1 + 13));
    v18 = heap_Realloc(*(*a1 + 8), a1[8], 8 * v17);
    if (!v18)
    {
      v10 = 2300583946;
      v11 = *(*a1 + 32);
      v13 = 20004;
      goto LABEL_22;
    }

    a1[8] = v18;
    *(a1 + 13) = v17;
    cstdlib_memset((v18 + 8 * *(a1 + 12)), 0, 8 * (v17 - *(a1 + 12)));
    log_OutText(*(*a1 + 32), "LINGDB", 5, 0, "LINGDB LD_reallocSentRecList : End (%x)", v19, v20, v21, 0);
  }

  v22 = LD_HeapAlloc((a1 + 1), LD_createRec_recordSizeLookup[a2]);
  *a3 = v22;
  if (!v22)
  {
    v10 = 2300583946;
    v11 = *(*a1 + 32);
    v13 = 20000;
LABEL_22:
    v12 = 0;
    goto LABEL_3;
  }

  v23 = *(a1 + 12);
  *(a1[8] + 8 * v23) = v22;
  v24 = *a3;
  *v24 = v23;
  *(v24 + 2) = a2;
  *(a1 + 12) = v23 + 1;
  if (v23 + 1 > v23 && (v25 = *(a1[8] + 8 * v23)) != 0)
  {
    v26 = &LD_FIELDOFFSETSD + 904 * *(v25 + 2);
    v27 = *(v26 + 4);
    if (*(v26 + 4))
    {
      v28 = 0;
      do
      {
        v29 = &v26[40 * v28 + 24];
        if (!*(v29 + 16))
        {
          *(v25 + *v29 - *v26) = 0;
        }

        ++v28;
      }

      while (v27 > v28);
    }

    v10 = 0;
    *(a1 + 18) = 1;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", a5, a6, a7, a8, "record");
    return 2300591633;
  }

  return v10;
}

uint64_t LD_createNext(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v12 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    v13 = *(v12 + 2);
    if (v13 == 1)
    {
      v14 = 2300591620;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20007, 0, v8, v9, v10, v11, v19);
    }

    else
    {
      v16 = LD_createRec(a1, v13, &v20, v7, v8, v9, v10, v11);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      else
      {
        v17 = v20;
        *(v20 + 24) = v12;
        *(v17 + 8) = *(v12 + 8);
        *(v12 + 16) = v17;
        *(v17 + 32) = 0;
        v18 = *(v17 + 16);
        if (v18)
        {
          *(v18 + 24) = v17;
        }

        v14 = 0;
        *a4 = *v17;
        *(a1 + 72) = 1;
      }
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v8, v9, v10, v11, "record");
    return 2300591633;
  }

  return v14;
}

uint64_t LD_findChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    v13 = *(a1 + 64) != 0;
  }

  else
  {
    if (*(a1 + 48) <= a4 || (v15 = *(*(a1 + 64) + 8 * a4)) == 0)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
      return 2300591633;
    }

    if (*(v15 + 2) != LD_ChildParentD[a3])
    {
      v14 = 2300591623;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
      return v14;
    }

    v16 = 0;
    v13 = 0;
    v17 = v15 + 32;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(v17 + 8 * v16);
      if (v20)
      {
        v21 = v13 == 0;
      }

      else
      {
        v21 = 0;
      }

      if (!v21)
      {
        break;
      }

      v13 = *(v20 + 2) == a3 ? *v20 : 0;
      v18 = 0;
      v16 = 1;
    }

    while ((v19 & 1) != 0);
    if (!v13)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20011, "%s%u%s%u%s%u", v9, v10, v11, v12, "childKey");
      return 2300591624;
    }
  }

  v14 = 0;
  *a5 = v13;
  return v14;
}

uint64_t LD_findNextCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_nextInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  NextCommonParent = LD_findNextCommonParent(a1, a2, a3, &v16);
  if ((NextCommonParent & 0x80000000) != 0)
  {
    return NextCommonParent;
  }

  if (v16)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v14 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
    return 2300591633;
  }

  if ((*(v14 + 2) & 0xFE) == 2)
  {
LABEL_4:
    v13 = 0;
    *a4 = v16;
  }

  else
  {
    v13 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", v9, v10, v11, v12, "method");
  }

  return v13;
}

uint64_t LD_findDirect(void *a1, int a2, int a3, int a4, _WORD *a5)
{
  v10 = 2300583944;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0 && (safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    v15 = a1[8] != 0;
    v25 = a1[8] != 0;
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        v10 = 2300591625;
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", v11, v12, v13, v14, "recordType");
        return v10;
      }

      Child = LD_findChild(a1, a2, 2, v15, &v25);
      if ((Child & 0x80000000) != 0)
      {
        return Child;
      }

      LOWORD(v15) = v25;
      if (!v25)
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20013, "%s%u", v17, v18, v19, v20, "recordType");
        return 2300591626;
      }

      v24 = v25;
      v21 = a4 - 1;
      if (v21)
      {
        v22 = 1;
        while (1)
        {
          Child = LD_findNextCommonParent(a1, a2, v15, &v24);
          if ((Child & 0x80000000) != 0)
          {
            return Child;
          }

          LOWORD(v15) = v24;
          if (v22 < v21)
          {
            ++v22;
            if (v24)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    v10 = 0;
    *a5 = v15;
  }

  return v10;
}

uint64_t LD_writeField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, const char **a6, _WORD *a7)
{
  v13 = 2300583946;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v18 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v18 + 2) && (v19 = &LD_FIELDOFFSETSD + 904 * *(v18 + 2), *(v19 + 4) > a4))
    {
      v20 = &v19[40 * a4];
      v21 = *v19;
      v22 = *(v20 + 3);
      v23 = *(v20 + 4);
      v24 = &v22[-*v19];
      *(v18 + *(v19 + 2) - *v19 + a4) = 1;
      v25 = *(v20 + 20);
      v26 = *(v20 + 21);
      if (v25)
      {
        if (v25 < a5)
        {
          a5 = v25;
        }

        cstdlib_memcpy(&v24[v18], a6, v26 * a5);
      }

      else
      {
        v28 = v26 * a5;
        v39 = v24;
        v29 = LD_HeapAlloc(a1 + 8, v26 * a5);
        *&v39[v18] = v29;
        if (!v29)
        {
          return v13;
        }

        cstdlib_memcpy(v29, a6, v28);
        if (v22 == &unk_26ECDB8A8 && a5 != 0)
        {
          v37 = v23;
          v38 = v21;
          v31 = a5;
          v32 = a6 + 3;
          v33 = 24;
          do
          {
            if (marker_hasNonConstCharPtrArg(*(v32 - 6)))
            {
              if (*v32)
              {
                v34 = cstdlib_strlen(*v32);
              }

              else
              {
                v34 = 0;
              }

              v35 = LD_HeapAlloc(a1 + 8, v34 + 1);
              if (!v35)
              {
                return v13;
              }

              v36 = v35;
              if (v34)
              {
                cstdlib_strcpy(v35, *v32);
              }

              else
              {
                *v35 = 0;
              }

              *(*&v39[v18] + v33) = v36;
            }

            v32 += 4;
            v33 += 32;
            --v31;
          }

          while (v31);
          v23 = v37;
          v21 = v38;
        }
      }

      if (v23)
      {
        *(v18 + v23 - v21) = a5;
      }

      v13 = 0;
      *a7 = a5;
      *(a1 + 72) = 1;
    }

    else
    {
      v13 = 2300591629;
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v14, v15, v16, v17, "method");
    }
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v14, v15, v16, v17, "record");
    return 2300591633;
  }

  return v13;
}

uint64_t LD_readField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6, _WORD *a7)
{
  *a7 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v17 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v17 + 2) && (v18 = &LD_FIELDOFFSETSD + 904 * *(v17 + 2), *(v18 + 4) > a4))
    {
      v19 = *v18;
      if (*(v17 + *(v18 + 2) - *v18 + a4) == 1)
      {
        v20 = &v18[40 * a4];
        v22 = *(v20 + 3);
        v21 = v20 + 24;
        v23 = (v17 + v22 - v19);
        v24 = *(v21 + 1);
        v25 = (v17 + v24 - v19);
        if (!v24)
        {
          v25 = (v21 + 16);
        }

        v26 = *v25;
        if (v26 < a5)
        {
          a5 = v26;
        }

        if (*(v21 + 8) || (v23 = *v23) != 0)
        {
          cstdlib_memcpy(a6, v23, *(v21 + 9) * a5);
          v27 = 0;
          *a7 = a5;
        }

        else
        {
          v27 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%s%s%u%s%u%s%u", v13, v14, v15, v16, "method");
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", v13, v14, v15, v16, "recordType");
        return 2300591630;
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v13, v14, v15, v16, "method");
      return 2300591629;
    }
  }

  else
  {
    v27 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v13, v14, v15, v16, "record");
  }

  return v27;
}

uint64_t LD_readDirectField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, void *a5, _WORD *a6)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) > a3 && (v15 = *(*(a1 + 64) + 8 * a3)) != 0)
  {
    if (*(v15 + 2) && (v16 = &LD_FIELDOFFSETSD + 904 * *(v15 + 2), *(v16 + 4) > a4))
    {
      v17 = *v16;
      if (*(v15 + *(v16 + 2) - *v16 + a4) == 1)
      {
        v18 = &v16[40 * a4];
        v19 = *(v18 + 3);
        v18 += 24;
        v20 = (v15 + v19 - v17);
        LODWORD(v19) = *(v18 + 8);
        v21 = v18 + 16;
        v22 = v19;
        v23 = *(v21 - 1);
        v24 = (v15 + v23 - v17);
        if (!v23)
        {
          v24 = v21;
        }

        v25 = *v24;
        if (v22 || (v20 = *v20) != 0)
        {
          v26 = 0;
          *a5 = v20;
          *a6 = v25;
        }

        else
        {
          v26 = 2300591633;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u%s%u%s%u", v11, v12, v13, v14, "recordType");
        }
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20017, "%s%u%s%u%s%u", v11, v12, v13, v14, "recordType");
        return 2300591630;
      }
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v11, v12, v13, v14, "method");
      return 2300591629;
    }
  }

  else
  {
    v26 = 2300591633;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v11, v12, v13, v14, "record");
  }

  return v26;
}

uint64_t LD_enquireField(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v13 = 2300591633;
  if (*(a1 + 48) > a3)
  {
    v14 = *(*(a1 + 64) + 8 * a3);
    if (v14)
    {
      if (*(v14 + 2) && (v15 = &LD_FIELDOFFSETSD + 904 * *(v14 + 2), *(v15 + 4) > a4))
      {
        v13 = 0;
        *a5 = *(v14 + *(v15 + 2) - *v15 + a4);
      }

      else
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20016, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
        return 2300591629;
      }
    }
  }

  return v13;
}

uint64_t LD_enquireChild(uint64_t a1, int a2, int a3, unsigned int a4, _WORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (a3 == 1)
  {
    LOWORD(v13) = 1;
LABEL_4:
    v14 = 0;
    *a5 = v13;
    return v14;
  }

  v14 = 2300591633;
  if (*(a1 + 48) > a4)
  {
    v15 = *(*(a1 + 64) + 8 * a4);
    if (v15)
    {
      if (*(v15 + 2) != LD_ChildParentD[a3])
      {
        log_OutPublic(*(*a1 + 32), "LINGDB", 20010, "%s%s%s%u%s%u%s%u", v9, v10, v11, v12, "method");
        return 2300591623;
      }

      v16 = 0;
      v13 = 0;
      v17 = v15 + 32;
      v18 = 1;
      do
      {
        v19 = *(v17 + 8 * v16);
        if (v19)
        {
          v20 = v13 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (!v20)
        {
          break;
        }

        v21 = v18;
        v13 = *(v19 + 2) == a3 ? *v19 : 0;
        v18 = 0;
        v16 = 1;
      }

      while ((v21 & 1) != 0);
      goto LABEL_4;
    }
  }

  return v14;
}

uint64_t LD_getDBChangedStatus(uint64_t a1, int a2, _DWORD *a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *a3 = *(a1 + 72);
  }

  return 0;
}

uint64_t LD_resetDBChangedStatus(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    *(a1 + 72) = 0;
  }

  return 0;
}

uint64_t lingdb_RemoveAllSubstrOcc(char *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    LODWORD(v3) = 0;
    v4 = 0;
    do
    {
      v5 = *a2;
      if (*a2)
      {
        v6 = 0;
        v7 = v4;
        while (a1[v7] == v5)
        {
          v5 = a2[++v6];
          ++v7;
          if (!a2[v6])
          {
            goto LABEL_10;
          }
        }

        a1[v3] = v2;
        LODWORD(v3) = v3 + 1;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

LABEL_10:
      v4 += v6;
      v2 = a1[v4];
    }

    while (v2);
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

  a1[v3] = 0;
  return 0;
}

uint64_t LD_checkBEConsistency(void *a1, int a2, char a3, char a4, char *a5, char *__dst)
{
  v56 = 0;
  v54 = 0;
  __s = 0;
  v53 = 0;
  v51 = 0;
  if (a5 && __dst)
  {
    *a5 = 0;
    cstdlib_strcpy(__dst, "");
  }

  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v57 = 0;
  v49 = 0;
  v12 = a1[8] != 0;
  v13 = LD_enquireChild(a1, a2, 2, v12, &v57);
  if ((v13 & 0x80000000) == 0)
  {
    v46 = v12;
    v14 = v57;
    if (v57)
    {
      v45 = 0;
      v50 = 0;
      v48 = 0;
      v47 = a4;
      while (1)
      {
        Field = LD_readField(a1, a2, v14, 0, 1u, &v49, &v52);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if ((v49 - 9) >= 6)
        {
          if (v49 == 15)
          {
            v38 = v56;
            if ((a3 & 0x10) != 0)
            {
              Field = LD_checkPHR_TNTAG(a1, a2, a4, v56, v14, a5, __dst);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }
            }

            v45 = v38;
            v48 = 0;
            v56 = v14;
            goto LABEL_94;
          }

          if (v49 != 4)
          {
            goto LABEL_94;
          }
        }

        v52 = 0;
        Field = LD_enquireField(a1, a2, v14, 3u, &v50);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if (!v50)
        {
          goto LABEL_14;
        }

        Field = LD_readDirectField(a1, a2, v14, 3u, &__s, &v52);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        if (!v52)
        {
LABEL_14:
          __s = &v53;
        }

        Field = LD_enquireField(a1, a2, v14, 0xDu, &v51);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        v16 = v51;
        if (v51)
        {
          Field = LD_readDirectField(a1, a2, v14, 0xDu, &v54, &v52);
          if ((Field & 0x80000000) != 0)
          {
            return Field;
          }

          if (!v52)
          {
            v16 = 0;
            v51 = 0;
          }
        }

        if ((a3 & 7) != 0)
        {
          v17 = __s;
          strcpy(&v62 + 4, "1");
          __s2 = 0;
          if (v16)
          {
            v18 = 0;
          }

          else
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing PRM");
            v18 = 1;
          }

          v20 = (a3 & 2) == 0 || v16 != 0;
          if ((a3 & 4) == 0 && v20 || !cstdlib_strlen(v17) || cstdlib_strstr(v17, "'") || cstdlib_strstr(v17, "") || cstdlib_strstr(v17, "'2"))
          {
            a4 = v47;
          }

          else
          {
            cstdlib_strcpy(&v62 + 4, "0");
            a4 = v47;
            if ((a3 & 4) != 0 && v16)
            {
              Field = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, __src);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              if (cstdlib_strcmp(&v62 + 4, __s2))
              {
                LD_setErrorDescription(a5, __dst, 0, v14, "PRM != 0 without stress marker");
                v18 = 1;
              }
            }
          }

          if ((a4 & 1) != 0 && v18)
          {
            v21 = cstdlib_strlen(&v62 + 4);
            Field = LD_writeField(a1, a2, v14, 0xDu, (v21 + 1), (&v62 + 4), &v62 + 3);
            if ((Field & 0x80000000) != 0)
            {
              return Field;
            }

            v16 = 1;
            v51 = 1;
          }
        }

        if ((a3 & 8) != 0)
        {
          WORD1(v62) = 0;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          __s2 = 0;
          Field = LD_readDirectField(a1, a2, v14, 5u, &__s2, &v62 + 3);
          if ((Field & 0x80000000) != 0)
          {
            return Field;
          }

          if ((LD_enquireField(a1, a2, v14, 0xEu, &v62 + 1) & 0x80000000) == 0 && !WORD1(v62))
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing NLU field");
            if (a4)
            {
              strcpy(__src, "POS:");
              v32 = __s2;
              v33 = cstdlib_strlen(__s2);
              v34 = heap_Alloc(*(*a1 + 8), (v33 + 5));
              if (!v34)
              {
                goto LABEL_137;
              }

              v35 = v34;
              cstdlib_strcpy(v34, __src);
              cstdlib_strcat(v35, v32);
              v36 = cstdlib_strlen(v35);
              v13 = LD_writeField(a1, a2, v14, 0xEu, (v36 + 1), v35, &v62 + 2);
              heap_Free(*(*a1 + 8), v35);
              a4 = v47;
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }
            }
          }
        }

        if ((a3 & 0x60) != 0)
        {
          v22 = __s;
          if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
          {
            return 2300583944;
          }

          if (v16)
          {
            __s2 = 0;
            Field = LD_readDirectField(a1, a2, v14, 0xDu, &__s2, __src);
            if ((Field & 0x80000000) != 0)
            {
              return Field;
            }

            v23 = cstdlib_atoi(__s2);
            if ((a3 & 0x20) == 0 || v23)
            {
              if ((a3 & 0x40) == 0 || !v23 || !cstdlib_strlen(v22) || cstdlib_strstr(v22, "'") || cstdlib_strstr(v22, "") || cstdlib_strstr(v22, "*") || cstdlib_strstr(v22, "["))
              {
                goto LABEL_74;
              }

              if (cstdlib_strstr(v22, "-"))
              {
                LD_setErrorDescription(a5, __dst, 1, v14, "missing marker of primary stress (unsafe)");
                if ((a4 & 2) == 0)
                {
                  goto LABEL_74;
                }
              }

              else
              {
                LD_setErrorDescription(a5, __dst, 0, v14, "missing marker of primary stress (safe)");
                if ((a4 & 1) == 0)
                {
                  goto LABEL_74;
                }
              }

              if (cstdlib_strstr(v22, "'2") == v22)
              {
                v22 += cstdlib_strlen("'2");
              }

              {
              }

              v40 = cstdlib_strlen("'");
              v41 = cstdlib_strlen(v22);
              v42 = heap_Alloc(*(*a1 + 8), (v40 + v41 + 1));
              if (!v42)
              {
LABEL_137:
                log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0, v26, v27, v28, v29, v44);
                return 2300583946;
              }

              v30 = v42;
              cstdlib_strcpy(v42, "'");
              cstdlib_strcat(v30, v22);
            }

            else
            {
              if (!cstdlib_strstr(v22, "'") && !cstdlib_strstr(v22, "") && !cstdlib_strstr(v22, "'2"))
              {
                goto LABEL_74;
              }

              LD_setErrorDescription(a5, __dst, 0, v14, "spurious stress marker in unaccented word");
              if ((a4 & 1) == 0)
              {
                goto LABEL_74;
              }

              v24 = cstdlib_strlen(v22);
              v25 = heap_Alloc(*(*a1 + 8), (v24 + 1));
              if (!v25)
              {
                goto LABEL_137;
              }

              v30 = v25;
              cstdlib_strcpy(v25, v22);
              lingdb_RemoveAllSubstrOcc(v30, "'2");
              lingdb_RemoveAllSubstrOcc(v30, "'");
              lingdb_RemoveAllSubstrOcc(v30, "");
            }

            v31 = cstdlib_strlen(v30);
            v13 = LD_writeField(a1, a2, v14, 3u, (v31 + 1), v30, &v62 + 3);
            heap_Free(*(*a1 + 8), v30);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            v14 = v57;
            a4 = v47;
          }
        }

LABEL_74:
        if ((a3 & 0x10) != 0)
        {
          WORD1(v62) = 0;
          v37 = v56;
          if (!v56)
          {
            LD_setErrorDescription(a5, __dst, 0, v14, "missing initial phrase record");
            if (a4)
            {
              LODWORD(__s2) = 15;
              LOWORD(v62) = 0;
              v61 = 200;
              v60 = 0;
              Field = LD_createPrev(a1, a2, v14, &v56);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              WORD2(v62) = 0;
              Field = LD_enquireField(a1, a2, v14, 1u, &v62 + 1);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              if (WORD1(v62))
              {
                Field = LD_readField(a1, a2, v14, 1u, 1u, &v62 + 4, __src);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                v37 = v56;
                Field = LD_writeField(a1, a2, v56, 1u, 1u, (&v62 + 4), &v62 + 3);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                Field = LD_writeField(a1, a2, v37, 2u, 1u, (&v62 + 4), &v62 + 3);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }
              }

              else
              {
                v37 = v56;
              }

              Field = LD_writeField(a1, a2, v37, 0, 1u, &__s2, &v62 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              v39 = cstdlib_strlen(&v60);
              Field = LD_writeField(a1, a2, v37, 4u, (v39 + 1), &v60, &v62 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              Field = LD_writeField(a1, a2, v37, 7u, 1u, &v62, &v62 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }

              Field = LD_writeField(a1, a2, v37, 8u, 1u, &v61, &v62 + 3);
              if ((Field & 0x80000000) != 0)
              {
                return Field;
              }
            }
          }

          if (!v48)
          {
            WORD1(v62) = 0;
            if (v37)
            {
              if (v14)
              {
                HIDWORD(v62) = 0;
                v13 = LD_enquireField(a1, a2, v37, 1u, &v62 + 1);
                if ((v13 & 0x80000000) != 0)
                {
                  goto LABEL_108;
                }

                if (!WORD1(v62))
                {
                  goto LABEL_108;
                }

                v13 = LD_enquireField(a1, a2, v14, 1u, &v62 + 1);
                if ((v13 & 0x80000000) != 0 || !WORD1(v62))
                {
                  goto LABEL_108;
                }

                Field = LD_readField(a1, a2, v37, 1u, 1u, &v62 + 4, &__s2);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                Field = LD_readField(a1, a2, v14, 1u, 1u, &v62 + 6, &__s2);
                if ((Field & 0x80000000) != 0)
                {
                  return Field;
                }

                if (HIWORD(v62) != WORD2(v62))
                {
                  LD_setErrorDescription(a5, __dst, 0, v37, "inconsistent phrase FROMPOS");
                  if (a4)
                  {
                    v13 = LD_writeField(a1, a2, v37, 1u, 1u, (&v62 + 6), __src);
LABEL_108:
                    if ((v13 & 0x80000000) != 0)
                    {
                      return v13;
                    }
                  }
                }
              }
            }
          }

          v48 = 1;
        }

LABEL_94:
        Field = LD_nextInSent(a1, a2, v14, &v57);
        if ((Field & 0x80000000) != 0)
        {
          return Field;
        }

        v14 = v57;
        if (!v57)
        {
          if ((a3 & 0x10) == 0)
          {
            v13 = 0;
            goto LABEL_133;
          }

          if (v48)
          {
            Field = LD_checkPHR_TNTAG(a1, a2, a4, v56, 0, a5, __dst);
          }

          else
          {
            Field = LD_checkPHR_final(a1, a2, a4, v45, &v56, a5, __dst);
          }

          if ((Field & 0x80000000) == 0)
          {
            v13 = LD_checkPHR_TOPOS(a1, a2, a4, v46, a5, __dst);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

LABEL_133:
            if ((a3 & 0x80) == 0)
            {
              return v13;
            }

            return LD_checkRECPROMPT(a1, a2, a4, v46, a5, __dst);
          }

          return Field;
        }
      }
    }
  }

  return v13;
}

uint64_t LD_checkPHR_TNTAG(uint64_t a1, int a2, char a3, unsigned int a4, unsigned int a5, char *a6, char *a7)
{
  v25 = 0;
  __s1 = 0;
  if (!a4)
  {
    return 0;
  }

  HIWORD(__dst) = 0;
  result = LD_enquireField(a1, a2, a4, 4u, &__dst + 3);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(__dst))
  {
    goto LABEL_12;
  }

  WORD2(__dst) = 0;
  result = LD_readDirectField(a1, a2, a4, 4u, &__s1, &__dst + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!WORD2(__dst) || (v15 = __s1) == 0 || !cstdlib_strcmp(__s1, ""))
  {
LABEL_12:
    LD_setErrorDescription(a6, a7, 0, a4, "undefined phrase type");
    if (a3)
    {
      if (a5)
      {
        v17 = "P";
      }

      else
      {
        v17 = "T";
      }

      cstdlib_strcpy(&__dst, v17);
      v18 = (cstdlib_strlen(&__dst) + 1);
      p_dst = &__dst;
      v20 = a1;
      v21 = a2;
      v22 = a4;
      return LD_writeField(v20, v21, v22, 4u, v18, p_dst, &__dst + 1);
    }

    return 0;
  }

  if (!cstdlib_strcmp(v15, "T"))
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v16 = cstdlib_strcmp(v15, "Y");
  result = 0;
  if (a5 && !v16)
  {
LABEL_21:
    LD_setErrorDescription(a6, a7, 0, a4, "non-final phrase of final type");
    if (a3)
    {
      cstdlib_strcpy(&__dst, "P");
      v23 = cstdlib_strlen(&__dst);
      result = LD_writeField(a1, a2, a4, 4u, (v23 + 1), &__dst, &__dst + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = LD_enquireField(a1, a2, a5, 4u, &__dst + 3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (HIWORD(__dst))
      {
        result = LD_readDirectField(a1, a2, a5, 4u, &v25, &__dst + 2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (WORD2(__dst))
        {
          v24 = v25;
          if (v25)
          {
            result = cstdlib_strcmp(v25, "T");
            if (!result)
            {
              return result;
            }

            result = cstdlib_strcmp(v24, "Y");
            if (!result)
            {
              return result;
            }
          }
        }
      }

      v18 = (cstdlib_strlen(v15) + 1);
      v20 = a1;
      v21 = a2;
      v22 = a5;
      p_dst = v15;
      return LD_writeField(v20, v21, v22, 4u, v18, p_dst, &__dst + 1);
    }

    return 0;
  }

  return result;
}

uint64_t LD_checkPHR_final(uint64_t a1, int a2, char a3, unsigned int a4, __int16 *a5, char *a6, char *__s1)
{
  if (!*a5)
  {
    return 0;
  }

  LD_setErrorDescription(a6, __s1, 0, *a5, "dangling final phrase record");
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (!a4 || (__s = 0, result = LD_readDirectField(a1, a2, *a5, 4u, &__s, &v17), (result & 0x80000000) == 0) && (v13 = __s, v14 = cstdlib_strlen(__s), result = LD_writeField(a1, a2, a4, 4u, (v14 + 1), v13, &v16), (result & 0x80000000) == 0))
  {
    result = LD_deleteRec(a1, a2, *a5);
    if ((result & 0x80000000) == 0)
    {
      result = 0;
      *a5 = a4;
    }
  }

  return result;
}

uint64_t LD_checkPHR_TOPOS(uint64_t a1, int a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v19 = 0;
  v18 = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  result = LD_enquireChild(a1, a2, 2, a4, &v19);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v19;
      if (!v19)
      {
        break;
      }

      result = LD_readField(a1, a2, v19, 0, 1u, &v18, &v17 + 3);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((v18 - 9) < 6 || v18 == 4)
      {
        v12 = v14;
      }

      else if (v18 == 15)
      {
        if (!v13)
        {
          goto LABEL_23;
        }

        result = LD_enquireField(a1, a2, v13, 2u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v13, 2u, 1u, &v17, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_enquireField(a1, a2, v14, 1u, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        result = LD_readField(a1, a2, v14, 1u, 1u, &v17 + 2, &v17 + 3);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (v17 != WORD1(v17) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent phrase TOPOS"), (a3 & 1) != 0))
        {
          result = LD_writeField(a1, a2, v13, 2u, 1u, (&v17 + 2), &v17 + 2);
          v13 = v14;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_23:
          v13 = v14;
        }
      }

      result = LD_nextInSent(a1, a2, v14, &v19);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    result = 0;
    if (v13)
    {
      if (v12)
      {
        result = LD_enquireField(a1, a2, v12, 2u, &v16);
        if ((result & 0x80000000) == 0)
        {
          if (v16)
          {
            result = LD_readField(a1, a2, v12, 2u, 1u, &v17, &v17 + 3);
            if ((result & 0x80000000) == 0)
            {
              result = LD_enquireField(a1, a2, v13, 2u, &v16);
              if ((result & 0x80000000) == 0)
              {
                if (v16)
                {
                  result = LD_readField(a1, a2, v13, 2u, 1u, &v16 + 2, &v17 + 3);
                  if ((result & 0x80000000) == 0)
                  {
                    if (v17 != HIWORD(v16) && (LD_setErrorDescription(a5, a6, 0, v13, "inconsistent TOPOS of final phrase record"), (a3 & 1) != 0))
                    {
                      return LD_writeField(a1, a2, v13, 2u, 1u, &v17, &v17 + 2);
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
        }
      }
    }
  }

  return result;
}

uint64_t LD_checkRECPROMPT(uint64_t a1, int a2, char a3, unsigned int a4, char *a5, char *a6)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v21 = 0;
  *(&v20 + 2) = 11;
  LOWORD(v20) = 0;
  result = LD_findChild(a1, a2, 2, a4, &v21);
  if ((result & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = 4;
    while (1)
    {
      v14 = v21;
      if (!v21)
      {
        return 0;
      }

      result = LD_readField(a1, a2, v21, 0, 1u, &v20 + 2, &v23);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if ((*(&v20 + 2) - 9) < 6 || *(&v20 + 2) == 4)
      {
        break;
      }

LABEL_33:
      result = LD_nextInSent(a1, a2, v14, &v21);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    if (v12)
    {
      if ((v13 & 0xFFFFFFFD) == 0xC)
      {
        if ((*(&v20 + 2) | 2) != 0xE)
        {
LABEL_15:
          result = LD_readField(a1, a2, v12, 8u, 1u, &v20, &v23);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (!v20)
          {
            LD_setErrorDescription(a5, a6, 0, v12, "End of recorded prompt should coincide with phrase boundary: inserted short break");
            LOWORD(v20) = 1;
            if (a3)
            {
              strcpy(v24, "external");
              *(&v19 + 2) = 15;
              LOWORD(v19) = 0;
              HIBYTE(v18) = 0;
              *(&v18 + 2) = 0;
              LOWORD(v18) = 0;
              result = LD_writeField(a1, a2, v12, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v12, 0x12u, 9u, v24, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_createPrev(a1, a2, v14, &v18 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_enquireField(a1, a2, v14, 1u, &v18 + 1);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (WORD1(v18))
              {
                result = LD_readField(a1, a2, v14, 1u, 1u, &v18, &v23);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v16 = WORD2(v18);
                result = LD_writeField(a1, a2, WORD2(v18), 1u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = LD_writeField(a1, a2, v16, 2u, 1u, &v18, &v22);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }
              }

              else
              {
                v16 = WORD2(v18);
              }

              result = LD_writeField(a1, a2, v16, 0, 1u, (&v19 + 2), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = cstdlib_strlen(&v18 + 7);
              result = LD_writeField(a1, a2, v16, 4u, (v17 + 1), (&v18 + 7), &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v16, 7u, 1u, &v19, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = LD_writeField(a1, a2, v16, 8u, 1u, &v20, &v22);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }
          }
        }
      }

      else if (*(&v20 + 2) == 14)
      {
        goto LABEL_15;
      }
    }

    v13 = *(&v20 + 2);
    v12 = v14;
    goto LABEL_33;
  }

  return result;
}

uint64_t LD_traverseWordRecsFromTokenRec(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a5)
{
  while (1)
  {
    if (!*a3)
    {
      return 0;
    }

    result = a4(a1, a2, a3, a5);
    if ((result & 0x1FFF) == 0x1E1C)
    {
      break;
    }

    if ((result & 0x80000000) == 0)
    {
      result = LD_nextInSent(a1, a2, *a3, a3);
      if ((result & 0x80000000) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v11 = *a3;

  return LD_nextInSent(a1, a2, v11, a3);
}

uint64_t LD_traverseWordRecs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, unsigned __int16 *, uint64_t), uint64_t a8)
{
  v16 = 0;
  result = LD_findChild(a1, a2, 2, a3, &v16);
  if ((result & 0x80000000) == 0)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

    result = a4(a1, a2, &v16, a8);
    if ((result & 0x80000000) == 0)
    {
      while (v16)
      {
        result = a5(a1, a2, &v16, a8);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = LD_nextInSent(a1, a2, v16, &v16);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (a6)
        {
          result = a6(a1, a2, &v16, a8);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        else
        {
LABEL_5:
          result = 0;
        }
      }

      if (a7)
      {
        return a7(a1, a2, &v16, a8);
      }
    }
  }

  return result;
}

uint64_t lingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2300583937;
  }

  result = 0;
  *a2 = &iLingDB;
  return result;
}

char *LD_setErrorDescription(char *result, char *__s1, int a3, __int16 a4, const char *a5)
{
  if (result && (a3 || !*result))
  {
    *result = a4;
    if (!__s1)
    {
      return result;
    }
  }

  else if (!__s1)
  {
    return result;
  }

  result = cstdlib_strcmp(__s1, "");
  if (a3 || !result)
  {

    return cstdlib_strncpy(__s1, a5, 0x64uLL);
  }

  return result;
}

uint64_t LD_createPrev(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v20 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  if (*(a1 + 48) <= a3 || (v12 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v8, v9, v10, v11, "record");
    return 2300591633;
  }

  v13 = *(v12 + 2);
  if (v13 == 1)
  {
    v14 = 2300591621;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20008, 0, v8, v9, v10, v11, v19);
    return v14;
  }

  v16 = *(v12 + 24);
  if (v16)
  {
    v17 = LD_createNext(a1, a2, *v16, &v20);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    v14 = 0;
    goto LABEL_14;
  }

  v18 = *(v12 + 8);
  if (!v18)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20009, "%s%s%s%u%s%u", v8, v9, v10, v11, "method");
    return 2300591622;
  }

  v14 = LD_createChild(a1, a2, v13, *v18, &v20);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    *a4 = v20;
    *(a1 + 72) = 1;
  }

  return v14;
}

uint64_t LD_deleteRec(uint64_t a1, int a2, uint64_t a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  *(a1 + 72) = 1;

  return LD_deleteRecordRecursive(a1, a3, a3, v5, v6, v7, v8, v9);
}

uint64_t LD_deleteRecordRecursive(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 48) > a2 && (v10 = *(*(a1 + 64) + 8 * a2)) != 0)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v12 + 4];
      if (!v14)
      {
        break;
      }

      v15 = v13;
      v16 = LD_deleteRecordRecursive(a1, *v14, a3);
      if (v16)
      {
        return v16;
      }

      v13 = 0;
      v12 = 1;
    }

    while ((v15 & 1) != 0);
    if (a2 == a3)
    {
      v17 = v10[3];
      if (v17)
      {
        v18 = v10[2];
        if (v18)
        {
          *(v18 + 24) = v17;
          *(v10[3] + 16) = v18;
        }

        else
        {
          *(v17 + 16) = 0;
        }
      }

      else
      {
        v22 = 0;
        v23 = v10[1] + 32;
        v24 = 1;
        do
        {
          v25 = *(v23 + 8 * v22);
          if (!v25)
          {
            goto LABEL_20;
          }

          v26 = v22;
          v27 = v24;
          v24 = 0;
          v22 = 1;
        }

        while ((v27 & (v25 != v10)) != 0);
        if (v25 != v10)
        {
LABEL_20:
          v19 = 2300591631;
          log_OutPublic(*(*a1 + 32), "LINGDB", 20018, "%s%u%s%u", a5, a6, a7, a8, "recordType");
          return v19;
        }

        v28 = v10[2];
        if (v28)
        {
          *(v23 + 8 * v26) = v28;
          *(v10[2] + 24) = 0;
        }

        else
        {
          *(v23 + 8 * v26) = 0;
          if (v27)
          {
            v29 = v10[1];
            v30 = *(v29 + 40);
            if (v30)
            {
              *(v29 + 32) = v30;
              *(v10[1] + 40) = 0;
            }
          }
        }
      }
    }

    else
    {
      v21 = v10[2];
      if (v21)
      {
        v16 = LD_deleteRecordRecursive(a1, *v21, a3);
        if (v16)
        {
          return v16;
        }
      }
    }

    v19 = 0;
    *(*(a1 + 64) + 8 * a2) = 0;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", a5, a6, a7, a8, "record");
    return 2300591633;
  }

  return v19;
}

uint64_t LD_objOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v28 = 0;
  v27 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v27);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  log_OutText(*(v27 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: Begin", v7, v8, v9, v25);
  v10 = heap_Calloc(*(v27 + 8), 1, 80);
  v15 = v27;
  if (v10)
  {
    v16 = v10;
    *v10 = v27;
    *(v10 + 48) = 1;
    if ((paramc_ParamGetUInt(*(v15 + 40), "lingdbrecordinitialsize", (v10 + 52)) & 0x80000000) != 0)
    {
      *(v16 + 13) = 128;
    }

    if ((paramc_ParamGetUInt(*(v27 + 40), "lingdbrecordgrowbysize", v16 + 14) & 0x80000000) != 0)
    {
      *(v16 + 14) = 128;
    }

    if ((paramc_ParamGetUInt(*(v27 + 40), "lingdbmaxrecords", v16 + 15) & 0x80000000) != 0)
    {
      *(v16 + 15) = -1;
    }

    if ((paramc_ParamGetUInt(*(v27 + 40), "lingdbrecpoolinitialsize", &v28 + 1) & 0x80000000) != 0)
    {
      HIDWORD(v28) = 10240;
    }

    if ((paramc_ParamGetUInt(*(v27 + 40), "lingdbrecpoolgrowsize", &v28) & 0x80000000) != 0)
    {
      LODWORD(v28) = 4096;
    }

    log_OutText(*(*v16 + 32), "LINGDB", 5, 0, "endMallocdID=%u, growBySize=%u, maxRecords=%u, recPoolInitial=%u, recPoolGrow=%u, currentSentID=%u", v17, v18, v19, *(v16 + 13));
    LD_HeapInit(v16 + 1, v27, "records/fields", SHIDWORD(v28), v28);
    *a5 = v16;
    *(a5 + 8) = 45762;
    v20 = LD_reset(v16, *(a5 + 8));
    if ((v20 & 0x80000000) != 0)
    {
      LD_objClose(*a5, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    log_OutText(*(v27 + 32), "LINGDB", 4, 0, "LINGDB ObjOpen: End (%x)", v21, v22, v23, v20);
  }

  else
  {
    log_OutPublic(*(v27 + 32), "LINGDB", 20000, 0, v11, v12, v13, v14, v26);
    return 2300583946;
  }

  return v20;
}

uint64_t LD_objClose(uint64_t *a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v7 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : Begin", v4, v5, v6, v20);
  LD_HeapFreePool(a1 + 1, v8, v9, v10, v11, v12, v13, v14);
  LD_clear(a1, a2);
  v15 = a1[8];
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
  }

  heap_Free(*(*a1 + 8), a1);
  log_OutText(*(v7 + 32), "LINGDB", 4, 0, "LINGDB ObjClose : End (%x)", v16, v17, v18, 0);
  return 0;
}

uint64_t LD_objReopen(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v6 = *a1;
  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : Begin", v3, v4, v5, v11);
  log_OutText(*(v6 + 32), "LINGDB", 4, 0, "LINGDB ObjReopen : End (%x)", v7, v8, v9, 0);
  return 0;
}

uint64_t LD_reset(uint64_t *a1, int a2)
{
  v3 = 2300583944;
  v25 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : Begin", v4, v5, v6, v23);
    v14 = *(a1 + 12);
    if (v14 == 1)
    {
      if (!a1[8])
      {
        v15 = heap_Calloc(*(*a1 + 8), *(a1 + 13), 8);
        a1[8] = v15;
        if (!v15)
        {
          log_OutPublic(*(*a1 + 32), "LINGDB", 20000, 0, v10, v11, v12, v13, v24);
          return 2300583946;
        }
      }

      LD_HeapResetPool(a1 + 1, v7, v8, v9, v10, v11, v12, v13);
      v21 = LD_createRec(a1, 1u, &v25, v16, v17, v18, v19, v20);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }
    }

    else if (v14 != 2)
    {
      log_OutPublic(*(*a1 + 32), "LINGDB", 20003, 0, v10, v11, v12, v13, v24);
      return 2300591616;
    }

    a1[9] = 0;
    log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_reset : End (%x)", v11, v12, v13, 0);
    return 0;
  }

  return v3;
}

uint64_t LD_clear(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : Begin", v3, v4, v5, v14);
  *(a1 + 72) = 0;
  if (*(a1 + 64))
  {
    LD_HeapResetPool((a1 + 8), v6, v7, v8, v9, v10, v11, v12);
    *(a1 + 48) = 1;
  }

  log_OutText(*(*a1 + 32), "LINGDB", 4, 0, "LINGDB LD_clear : End (%x)", v10, v11, v12, 0);
  return 0;
}

uint64_t LD_findParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 8);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_findPrevCommonParent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    v14 = 8200;
    return v14 | 0x89200000;
  }

  if (*(a1 + 48) <= a3 || (v11 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v7, v8, v9, v10, "record");
    v14 = 15889;
    return v14 | 0x89200000;
  }

  v12 = *(v11 + 24);
  if (v12)
  {
    LOWORD(v12) = *v12;
  }

  result = 0;
  *a4 = v12;
  return result;
}

uint64_t LD_prevInSent(uint64_t a1, int a2, unsigned int a3, _WORD *a4)
{
  v16 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  PrevCommonParent = LD_findPrevCommonParent(a1, a2, a3, &v16);
  if ((PrevCommonParent & 0x80000000) != 0)
  {
    return PrevCommonParent;
  }

  if (v16)
  {
    goto LABEL_4;
  }

  if (*(a1 + 48) <= a3 || (v14 = *(*(a1 + 64) + 8 * a3)) == 0)
  {
    log_OutPublic(*(*a1 + 32), "LINGDB", 20020, "%s%u", v9, v10, v11, v12, "record");
    return 2300591633;
  }

  if ((*(v14 + 2) & 0xFE) == 2)
  {
LABEL_4:
    v13 = 0;
    *a4 = v16;
  }

  else
  {
    v13 = 2300591625;
    log_OutPublic(*(*a1 + 32), "LINGDB", 20012, "%s%s%s%u%s%u", v9, v10, v11, v12, "method");
  }

  return v13;
}

uint64_t LD_checkIfIsInPrompt(uint64_t a1, int a2, unsigned int a3, _DWORD *a4)
{
  v16 = 0;
  LODWORD(__n) = 0;
  v15 = 0;
  v14 = 11;
  __s1 = 0;
  *a4 = 0;
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v8 = *(a1 + 64) != 0;
  v9 = LD_enquireChild(a1, a2, 2, v8, &v15);
  result = 0;
  if ((v9 & 0x80000000) == 0)
  {
    if (v15)
    {
      result = LD_findChild(a1, a2, 2, v8, &__n + 1);
      if ((result & 0x80000000) == 0)
      {
        while (1)
        {
          v11 = WORD1(__n);
          v12 = !WORD1(__n) || HIWORD(v16) > a3;
          if (v12 || *a4)
          {
            break;
          }

          result = LD_readField(a1, a2, WORD1(__n), 1u, 1u, &v16 + 2, &__n);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (HIWORD(v16) <= a3)
          {
            result = LD_readField(a1, a2, v11, 0, 1u, &v14, &__n);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v14 == 5)
            {
              result = LD_readDirectField(a1, a2, v11, 4u, &__s1, &__n);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (__n && !cstdlib_strncmp(__s1, "prompt", __n))
              {
                result = LD_readField(a1, a2, v11, 2u, 1u, &v16, &__n);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v16 > a3)
                {
                  *a4 = 1;
                }
              }
            }
          }

          result = LD_nextInSent(a1, a2, v11, &__n + 1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t LD_setPhonInDepes(uint64_t a1, int a2, int a3)
{
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  result = 0;
  *(a1 + 76) = a3;
  return result;
}

uint64_t LD_dumpDBViaLogging(uint64_t *a1, uint64_t a2, int a3, const char *a4, int a5, unsigned int a6, int a7)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((safeh_HandleCheck(a1, a2, 45762, 80) & 0x80000000) != 0)
  {
    return 2300583944;
  }

  v17 = 0u;
  memset(v18, 0, 432);
  memset(v16, 0, sizeof(v16));
  if (log_GetLogLevel(*(*a1 + 32)) >= a6)
  {
    cstdlib_memset(v18, 0, 0x800uLL);
    cstdlib_memcpy(v16 + 8, "LINGDB", 0x42uLL);
    HIDWORD(v17) = a6;
    *&v16[0] = *(*a1 + 32);
    if (a3)
    {
      WORD4(v17) = a3;
    }

    if (a4)
    {
      LD_logOutputCB(v16, a4);
      LD_logOutputCB(v16, "\n");
    }

    if (a5 == 1)
    {
      v15 = 0;
      if (LD_getDBChangedStatus(a1, a2, &v15) || v15 != 1)
      {
        LD_logOutputCB(v16, "LingDB unchanged since last call\n");
        return 0;
      }

      LD_resetDBChangedStatus(a1, a2);
    }

    dumpSentenceRecord(a1, a2, LD_logOutputCB, v16, a7);
  }

  return 0;
}

uint64_t dumpSentenceRecord(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, int a5)
{
  v9 = a1;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  result = LD_findDirect(a1, a2, 1, 0, &v52);
  if (!result)
  {
    v11 = v52;
    if (v52)
    {
      v12 = word_287EED5E8;
      v55 = 0;
      if ((LD_enquireField(v9, a2, v52, 0, &v55 + 1) & 0x80000000) == 0 && HIWORD(v55) == 1 && (LD_readDirectField(v9, a2, v11, 0, &v50, &v55) & 0x80000000) == 0 && v55 <= 1u)
      {
        v50 = 0;
      }

      a3(a4, "<SentenceRecord>\n");
      if (v12)
      {
        v13 = 0;
        do
        {
          HIDWORD(v41) = a5;
          LOWORD(v41) = v52;
          (*(&LD_FIELDOFFSETSD + 5 * v13 + 120))(v9, a2, a3, a4, "  ", v13, *(&LD_FIELDOFFSETSD + 5 * v13 + 119), *(&LD_FIELDOFFSETSD + 20 * v13 + 472), v41);
          ++v13;
        }

        while (v12 > v13);
      }

      v14 = LD_enquireChild(v9, a2, 3, v52, &v51);
      v15 = v51;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v51 == 0;
      }

      if (!v16)
      {
        v17 = word_287EEDCF8;
        do
        {
          a3(a4, " <TokenRecord>\n");
          if (v17)
          {
            v18 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v15;
              (*(&LD_FIELDOFFSETSD + 5 * v18 + 346))(v9, a2, a3, a4, "    ", v18, *(&LD_FIELDOFFSETSD + 5 * v18 + 345), *(&LD_FIELDOFFSETSD + 20 * v18 + 1376), v41);
              ++v18;
            }

            while (v17 > v18);
          }

          a3(a4, " </TokenRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v15 = v51;
        }

        while (v51);
      }

      v19 = LD_enquireChild(v9, a2, 2, v52, &v51);
      v20 = v51;
      if (v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = v51 == 0;
      }

      if (!v21)
      {
        v45 = word_287EEE080;
        v46 = word_287EED970;
        v49 = a5;
        v48 = v9;
        v47 = word_287EEE408;
        do
        {
          v22 = v50;
          v44 = v20;
          v53 = v20;
          a3(a4, " <WordRecord>\n");
          if (v22)
          {
            v54 = 0;
            v55 = 0;
            if ((safeh_HandleCheck(v9, a2, 45762, 80) & 0x80000000) == 0)
            {
              v23 = *v9;
              if ((LD_enquireField(v9, a2, v44, 2u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_enquireField(v9, a2, v44, 1u, &v54) & 0x80000000) == 0 && v54 == 1 && (LD_readField(v9, a2, v44, 1u, 1u, &v55, &v55 + 1) & 0x80000000) == 0 && (LD_readField(v9, a2, v44, 2u, 1u, &v54 + 2, &v55 + 1) & 0x80000000) == 0)
              {
                v43 = v23;
                v24 = HIWORD(v54) - v55;
                v25 = a5 ? xmlaux_calculateExtraEscapeBytes(v22 + v55, HIWORD(v54) - v55) : 0;
                __n = v24;
                v26 = v25 + v24;
                v27 = heap_Alloc(*(v43 + 8), (v26 + 1));
                if (v27)
                {
                  v28 = (v22 + v55);
                  v29 = v27;
                  if (a5)
                  {
                    xmlaux_escape(v27, v28, __n);
                  }

                  else
                  {
                    cstdlib_strncpy(v27, v28, __n);
                  }

                  *(v29 + v26) = 0;
                  a3(a4, "    ");
                  a3(a4, "<");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, "> ");
                  a3(a4, v29);
                  a3(a4, " </");
                  a3(a4, "LD_W_ORTH");
                  a3(a4, ">\n");
                  heap_Free(*(v43 + 8), v29);
                }
              }
            }
          }

          if (v46)
          {
            v30 = 0;
            do
            {
              HIDWORD(v41) = a5;
              LOWORD(v41) = v44;
              (*(&LD_FIELDOFFSETSD + 5 * v30 + 233))(v9, a2, a3, a4, "    ", v30, *(&LD_FIELDOFFSETSD + 5 * v30 + 232), *(&LD_FIELDOFFSETSD + 20 * v30 + 924), v41);
              ++v30;
            }

            while (v46 > v30);
          }

          if (!LD_enquireChild(v9, a2, 4, v44, &v53))
          {
            for (i = v53; v53; a5 = v49)
            {
              HIWORD(v55) = i;
              a3(a4, "    <SI_LAYER>\n");
              v32 = &LD_FIELDOFFSETSD;
              v33 = v9;
              if (v45)
              {
                v34 = a5;
                v35 = 0;
                do
                {
                  v36 = v32;
                  HIDWORD(v41) = v34;
                  LOWORD(v41) = i;
                  (*&v32[20 * v35 + 1836])(v33, a2, a3, a4, "      ", v35, *&v32[20 * v35 + 1832], v32[20 * v35 + 1828], v41);
                  v32 = v36;
                  ++v35;
                }

                while (v45 > v35);
              }

              if (!LD_enquireChild(v33, a2, 5, i, &v55 + 1))
              {
                for (j = HIWORD(v55); HIWORD(v55); j = HIWORD(v55))
                {
                  a3(a4, "      <SI_W_TOKEN>\n");
                  v38 = &LD_FIELDOFFSETSD;
                  if (v47)
                  {
                    v39 = 0;
                    do
                    {
                      v40 = v38;
                      HIDWORD(v41) = v49;
                      LOWORD(v41) = j;
                      (*&v38[20 * v39 + 2288])(v48, a2, a3, a4, "        ", v39, *&v38[20 * v39 + 2284], v38[20 * v39 + 2280], v41);
                      v38 = v40;
                      ++v39;
                    }

                    while (v47 > v39);
                  }

                  a3(a4, "      </SI_W_TOKEN>\n");
                  LD_findNextCommonParent(v48, a2, HIWORD(v55), &v55 + 1);
                }
              }

              a3(a4, "    </SI_LAYER>\n");
              v9 = v48;
              LD_findNextCommonParent(v48, a2, v53, &v53);
              i = v53;
            }
          }

          a3(a4, " </WordRecord>\n");
          LD_nextInSent(v9, a2, v51, &v51);
          v20 = v51;
        }

        while (v51);
      }

      return (a3)(a4, "</SentenceRecord>\n");
    }
  }

  return result;
}

uint64_t loc_printLH_U8String(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, int a9, int a10)
{
  v27 = 0;
  v25 = 0;
  v26 = 0;
  result = LD_enquireField(a1, a2, a8, a6, &v26 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v26) == 1)
  {
    LD_readDirectField(a1, a2, a8, a6, &v27, &v26);
    v19 = v26;
    if (v26)
    {
      while (!v27[v19 - 1])
      {
        LOWORD(v26) = --v19;
        if (!v19)
        {
          v19 = 0;
          break;
        }
      }
    }

    if (a10)
    {
      v20 = Utf8_DepesLengthInBytesUtf8(v27, v19);
      result = heap_Alloc(*(*a1 + 8), v20 + 1);
      if (!result)
      {
        return result;
      }

      v21 = result;
      utf8_DepesToUtf8(v27, v26, 0, result, v20, &v25, 0);
      v19 = v25;
      v21[v25] = 0;
      LOWORD(v26) = v19;
      v27 = v21;
    }

    else
    {
      v21 = 0;
    }

    if (a9 && (v22 = xmlaux_calculateExtraEscapeBytes(v27, v19)) != 0)
    {
      v23 = v22;
      result = heap_Alloc(*(*a1 + 8), v22 + v26 + 1);
      if (!result)
      {
LABEL_18:
        if (v21)
        {
          return heap_Free(*(*a1 + 8), v21);
        }

        return result;
      }

      v24 = result;
      xmlaux_escape(result, v27, v26);
      v24[v23 + v26] = 0;
      v27 = v24;
    }

    else
    {
      v24 = 0;
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v27);
    a3(a4, " </");
    a3(a4, a7);
    result = (a3)(a4, ">\n");
    if (v24)
    {
      result = heap_Free(*(*a1 + 8), v24);
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t LD_printDummy(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, uint64_t a6, const char *a7)
{
  a3(a4, a5);
  a3(a4, "<");
  a3(a4, a7);
  a3(a4, "> ");
  a3(a4, "UNDEFINED");
  a3(a4, " </");
  a3(a4, a7);

  return (a3)(a4, ">\n");
}

uint64_t LD_printTokenType(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getTokenType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printWordType(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    LD_getWordType(a1, a2, v20, &v18);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_BOOL(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v19 = 0;
  v20 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v19 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v19) == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20, &v19);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    if (v20)
    {
      v18 = "true";
    }

    else
    {
      v18 = "false";
    }

    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, unsigned int a8, unsigned __int16 a9)
{
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v20 + 2, &v19);
    LH_utoa(HIWORD(v20), v18, 0xAu);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U8(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, unsigned __int16 a9)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, a8, &v21, &v19);
    LH_utoa(v21, v18, 0xAu);
    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, v18);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U32Array(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v18 + 1);
  if ((result & 0x80000000) == 0 && HIWORD(v18) == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x400u, v21, &v18);
    __s1[0] = 0;
    if (v18)
    {
      v17 = 0;
      do
      {
        LH_utoa(v21[v17], __s2, 0xAu);
        cstdlib_strcat(__s1, __s2);
        cstdlib_strcat(__s1, " ");
        ++v17;
      }

      while (v17 < v18);
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, __s1);
    a3(a4, "</");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t LD_printLH_U16String(uint64_t a1, int a2, void (*a3)(uint64_t, const char *), uint64_t a4, const char *a5, unsigned int a6, const char *a7, uint64_t a8, unsigned __int16 a9)
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19 = 0;
  result = LD_enquireField(a1, a2, a9, a6, &v20);
  if ((result & 0x80000000) == 0 && v20 == 1)
  {
    LD_readField(a1, a2, a9, a6, 0x20u, v21, &v19);
    __s1[0] = 0;
    if (v19)
    {
      for (i = 0; i < v19; ++i)
      {
        LH_itoa(v21[i], __s2, 0xAu);
        cstdlib_strcat(__s1, __s2);
        cstdlib_strcat(__s1, " ");
      }
    }

    a3(a4, a5);
    a3(a4, "<");
    a3(a4, a7);
    a3(a4, "> ");
    a3(a4, __s1);
    a3(a4, " </");
    a3(a4, a7);
    return (a3)(a4, ">\n");
  }

  return result;
}

uint64_t CB_appendString(void *a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v5 = a1[1];
  if (v5)
  {
    v6 = a1[2];
    v7 = cstdlib_strlen(v5);
    v8 = a1[1];
    if (v6 > v7 + v4)
    {
LABEL_9:
      cstdlib_strcat(v8, __s);
      return 0;
    }

    v9 = v4 + a1[2] + 50;
    a1[2] = v9;
    if (v8)
    {
      v10 = heap_Realloc(*(*a1 + 8), v8, v9);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = v4 + a1[2] + 50;
    a1[2] = v9;
  }

  v10 = heap_Calloc(*(*a1 + 8), 1, v9);
LABEL_7:
  v8 = v10;
  if (v10)
  {
    a1[1] = v10;
    goto LABEL_9;
  }

  return 10;
}

uint64_t LD_printMarkerT(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int a10)
{
  v39 = 0;
  v37 = 0;
  v38 = 0;
  __b = 0;
  __s = 0;
  cstdlib_memset(&__b, 0, 0x18uLL);
  __b = *a1;
  result = LD_enquireField(a1, a2, a9, a6, &v39 + 1);
  v17 = 0;
  if ((result & 0x80000000) == 0 && HIWORD(v39) == 1)
  {
    v31 = a1;
    LD_readDirectField(a1, a2, a9, a6, &v38, &v39);
    v18 = a5;
    a3(a4, a5);
    a3(a4, "<");
    v30 = a7;
    a3(a4, a7);
    a3(a4, ">\n");
    if (v39)
    {
      v19 = 0;
      v20 = 0;
      v33 = 0;
      v34 = 0;
      v21 = a10;
      v22 = "  <MARKER> ";
      while (1)
      {
        a3(a4, v18);
        a3(a4, v22);
        if (__s)
        {
          *__s = 0;
        }

        marker_serialize_tostring(CB_appendString, &__b, v38 + v19, 0);
        v23 = __s;
        if (v21)
        {
          v24 = cstdlib_strlen(__s);
          v25 = xmlaux_calculateExtraEscapeBytes(v23, v24);
          if (v25)
          {
            v26 = v22;
            v27 = v21;
            v28 = v25 + v24;
            if (v33 <= v25 + v24)
            {
              if (v34)
              {
                heap_Free(*(*v31 + 8), v34);
              }

              v33 = 2 * v28;
              result = heap_Alloc(*(*v31 + 8), (2 * v28) & 0xFFFFFFFE);
              v17 = result;
              if (!result)
              {
                a1 = v31;
                goto LABEL_23;
              }

              v18 = a5;
            }

            else
            {
              v17 = v34;
            }

            xmlaux_escape(v17, v23, v24 + 1);
            v34 = v17;
            v23 = v17;
            v21 = v27;
            v22 = v26;
          }
        }

        if (v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = "";
        }

        a3(a4, v29);
        a3(a4, " </MARKER>\n");
        ++v20;
        v19 += 32;
        if (v20 >= v39)
        {
          goto LABEL_22;
        }
      }
    }

    v34 = 0;
LABEL_22:
    a3(a4, v18);
    a3(a4, "</");
    a3(a4, v30);
    result = (a3)(a4, ">\n");
    a1 = v31;
    v17 = v34;
  }

LABEL_23:
  if (__s)
  {
    result = heap_Free(*(*a1 + 8), __s);
  }

  if (v17)
  {
    return heap_Free(*(*a1 + 8), v17);
  }

  return result;
}

uint64_t LD_logOutputCB(uint64_t a1, const char *a2)
{
  v4 = (a1 + 80);
  v5 = cstdlib_strlen((a1 + 80));
  if (cstdlib_strlen(a2) + v5 >= 0x800)
  {
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v6, v7, v8, v4);
    if (!result)
    {
      result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v10, v11, v12, a2);
    }

    goto LABEL_6;
  }

  cstdlib_strcat(v4, a2);
  if (v4[cstdlib_strlen(v4) - 1] == 10)
  {
    v4[cstdlib_strlen(v4) - 1] = 0;
    result = log_OutText(*a1, a1 + 8, *(a1 + 76), 0, "%s", v13, v14, v15, v4);
LABEL_6:
    *v4 = 0;
    return result;
  }

  return 0;
}

void *LD_HeapInit(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = cstdlib_memset(a1, 0, 0x28uLL);
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 6) = a4;
  *(a1 + 7) = a5;
  return result;
}

uint64_t LD_HeapAlloc(uint64_t a1, int a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = (a2 + 7) & 0xFFFFFFF8;
  if (v3)
  {
    while (1)
    {
      v6 = v3;
      result = v3[2];
      if ((result + v5) <= v3[3])
      {
        goto LABEL_16;
      }

      v3 = *v3;
      if (!*v6)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = 0;
LABEL_6:
  if (*(a1 + 32) || (v8 = *(a1 + 24), v8 <= v5))
  {
    if (*(a1 + 28) <= v5)
    {
      v8 = (a2 + 7) & 0xFFFFFFF8;
    }

    else
    {
      v8 = *(a1 + 28);
    }
  }

  result = heap_Calloc(*(*a1 + 8), 1, v8 + 32);
  if (result)
  {
    v9 = result;
    result += 32;
    v9[2] = result;
    v9[3] = result + v8;
    *v9 = 0;
    v9[1] = result;
    *(a1 + 32) += v8;
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v4;
    }

    *v10 = v9;
    v6 = v9;
LABEL_16:
    *(a1 + 36) += v5;
    v6[2] = result + v5;
  }

  return result;
}

uint64_t *LD_HeapResetPool(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*result)
    {
      result = LD_HeapLogStats(result, "before ResetPool", a3, a4, a5, a6, a7, a8);
      for (i = v8[2]; i; i = *i)
      {
        v10 = *(i + 8);
        *(i + 16) = v10;
        result = cstdlib_memset(v10, 0, (*(i + 24) - v10));
      }

      *(v8 + 9) = 0;
    }
  }

  return result;
}

uint64_t *LD_HeapLogStats(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result && *result)
  {
    v8 = result + 2;
    v9 = -1;
    do
    {
      v8 = *v8;
      ++v9;
    }

    while (v8);
    return log_OutText(*(*result + 32), "LINGDB", 5, 0, "LD_Heap %s %s: alloc=%lu pool=%lu initial=%lu grow=%lu blocks=%lu", a6, a7, a8, result[1]);
  }

  return result;
}

uint64_t *LD_HeapFreePool(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*result)
    {
      result = LD_HeapLogStats(result, "before FreePool", a3, a4, a5, a6, a7, a8);
      v9 = v8[2];
      if (v9)
      {
        do
        {
          v10 = *v9;
          result = heap_Free(*(*v8 + 8), v9);
          v9 = v10;
        }

        while (v10);
      }

      v8[2] = 0;
      v8[4] = 0;
    }
  }

  return result;
}

unint64_t fix16_exp(uint64_t a1)
{
  if (!a1)
  {
    return 0x10000;
  }

  if (a1 == 0x10000)
  {
    return 178145;
  }

  if (a1 > 681391)
  {
    return 0x7FFFFFFFLL;
  }

  if (a1 < -726817)
  {
    return 0;
  }

  v3 = int64_from_int32(0x10000);
  v4 = int64_from_int32(a1);
  v5 = int64_add(v3, v4);
  v6 = int64_from_int32(a1);
  v7 = 2;
  for (i = 3; i != 13; ++i)
  {
    v9 = int64_mul_i64_i32(v6, a1);
    v6 = int64_shift(v9, -16);
    v10 = int64_div_i64_i32(v6, v7);
    v11 = int64_add(v5, v10);
    v5 = v11;
    v7 *= i;
  }

  return int64_lo(v11);
}

unint64_t fix16_exp_cache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0x10000;
  }

  if (a1 == 0x10000)
  {
    return 178145;
  }

  if (a1 > 681391)
  {
    return 0x7FFFFFFFLL;
  }

  if (a1 < -726817)
  {
    return 0;
  }

  v7 = (a1 ^ (a1 >> 4)) & 0xFFF;
  if (*(a2 + 4 * ((a1 ^ (a1 >> 4)) & 0xFFF)) == a1)
  {
    return *(a3 + 4 * ((a1 ^ (a1 >> 4)) & 0xFFF));
  }

  v8 = int64_from_int32(0x10000);
  v9 = int64_from_int32(a1);
  v10 = int64_add(v8, v9);
  v11 = int64_from_int32(a1);
  v12 = 2;
  for (i = 3; i != 13; ++i)
  {
    v14 = int64_mul_i64_i32(v11, a1);
    v11 = int64_shift(v14, -16);
    v15 = int64_div_i64_i32(v11, v12);
    v16 = int64_add(v10, v15);
    v10 = v16;
    v12 *= i;
  }

  *(a2 + 4 * v7) = a1;
  *(a3 + 4 * v7) = int64_lo(v16);

  return int64_lo(v10);
}

unint64_t int64_neg(unint64_t a1)
{
  v1 = ~a1;
  if (!HIDWORD(a1))
  {
    v1 = -a1;
  }

  return v1 - (a1 & 0xFFFFFFFF00000000);
}

unint64_t int64_sub(uint64_t a1, unint64_t a2)
{
  v2 = -a2;
  v3 = -(a2 & 0xFFFFFFFF00000000) >> 32;
  if (HIDWORD(a2))
  {
    v2 = ~a2;
  }

  v4 = v2 + a1;
  v5 = __CFADD__(v3, HIDWORD(a1));
  v6 = (v3 + HIDWORD(a1));
  v7 = v5 || a1 < 0;
  return (v4 + v7) | (v6 << 32);
}

uint64_t int64_shift(uint64_t a1, int a2)
{
  v2 = -a2;
  v3 = v2 <= 31;
  v4 = ((2 * a1) << (a2 - 1)) | (HIDWORD(a1) >> v2);
  LODWORD(v5) = a1 >> v2;
  if (!v3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
  }

  v6 = (a1 << a2) | (HIDWORD(a1) >> 1 >> ~a2);
  LODWORD(v7) = HIDWORD(a1) << a2;
  if (a2 > 0x1F)
  {
    LODWORD(v7) = 0;
    v6 = 0;
  }

  if (a2 >= 1)
  {
    v7 = v7;
  }

  else
  {
    v7 = v4;
  }

  if (a2 >= 1)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  return v5 | (v7 << 32);
}

uint64_t int64_mul_i64_i32(unint64_t a1, int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = (v3 >> 16) * HIWORD(v5);
  v7 = (v3 >> 16) * v5 + v3 * HIWORD(v5);
  v8 = v3 * v5 + HIWORD(v5) * HIWORD(v4);
  v9 = v6 + (v7 << 16);
  v10 = 65537 * v8 + HIWORD(v7);
  v11 = -v10;
  if (v9)
  {
    v11 = ~v10;
  }

  v12 = v2 >= 0;
  if (v2 < 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = -v9;
  }

  return v13 | (v14 << 32);
}

unint64_t int64_div_i64_i32(unint64_t a1, int a2)
{
  v2 = a1 ^ a2;
  v3 = -a1;
  if (HIDWORD(a1))
  {
    v3 = ~a1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    v4 = -(a1 & 0xFFFFFFFF00000000);
  }

  else
  {
    v3 = a1;
    v4 = a1;
  }

  v5 = HIDWORD(v4);
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v7 = v3 / v6;
  v8 = v3 % v6;
  v9 = v5 / v6;
  v10 = v5 % v6;
  v11 = v6 << 32;
  v12 = 0x100000000;
  while (v8 > v11 || v8 == v11 && HIDWORD(v11) < v10)
  {
    v11 = (__PAIR64__(v11, HIDWORD(v11)) >> 31) | (HIDWORD(v11) << 33);
    v12 = (__PAIR64__(v12, HIDWORD(v12)) >> 31) | (HIDWORD(v12) << 33);
  }

  for (; v8; v12 = v17 | (v18 << 32))
  {
    v13 = __ROR8__(v11, 33);
    v14 = v11 >> 1;
    v15 = v13;
    v16 = v8 <= v11 >> 1;
    v11 = (v11 >> 1) | (v13 << 32);
    v17 = (v12 >> 1);
    v18 = (v12 >> 33) | (v12 << 31);
    if (!v16 || v8 == v14 && v13 <= v10)
    {
      v19 = -v13;
      if (v15)
      {
        v20 = ~v11;
      }

      else
      {
        v20 = -v11;
      }

      v21 = v20 + v8;
      v22 = v8 < 0;
      v23 = __CFADD__(v10, v19);
      LODWORD(v10) = v10 + v19;
      if (v23)
      {
        v22 = 1;
      }

      v8 = v21 + v22;
      v24 = v7 + v17;
      v25 = v7 < 0;
      v23 = __CFADD__(v18, v9);
      v9 += v18;
      if (v23)
      {
        v25 = 1;
      }

      v7 = v24 + v25;
    }
  }

  v26 = v10 / v6;
  v27 = (v26 >> 31) + v7;
  v28 = v7 < 0;
  v23 = __CFADD__(v26, v9);
  v30 = v26 + v9;
  v29 = v30 == 0;
  v31 = v23 || v28;
  v32 = v27 + v31;
  v33 = v30 << 32;
  v34 = ~v32;
  if (v29)
  {
    v34 = -v32;
  }

  v35 = v34 - v33;
  v36 = v33 & 0xFFFFFFFF00000000 | v32;
  if (v2 < 0)
  {
    return v35;
  }

  else
  {
    return v36;
  }
}

uint64_t uint32_log2(uint64_t result)
{
  if (result)
  {
    v1 = WORD1(result);
    if (!WORD1(result))
    {
      v1 = result;
    }

    if (v1 <= 0xFF)
    {
      v2 = 16 * (WORD1(result) != 0);
    }

    else
    {
      v1 >>= 8;
      v2 = (16 * (WORD1(result) != 0)) | 8;
    }

    if (v1 > 0xF)
    {
      v1 >>= 4;
      v2 |= 4u;
    }

    if (v1 > 3)
    {
      v1 >>= 2;
      v2 |= 2u;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v2 + 1;
    }
  }

  return result;
}

uint64_t fix16_add(int a1, int a2)
{
  if (((a2 + a1) ^ a1) > -1 || (a2 ^ a1) < 0)
  {
    return (a2 + a1);
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_sub(int a1, int a2)
{
  if ((((a1 - a2) ^ a1) & (a2 ^ a1)) < 0 != v2)
  {
    return 0x80000000;
  }

  else
  {
    return (a1 - a2);
  }
}

uint64_t fix16_sadd(int a1, int a2)
{
  v2 = a2 + a1;
  if (((a2 + a1) ^ a1) <= -1 && (a2 ^ a1) >= 0)
  {
    v2 = 0x80000000;
  }

  if (a1 > 0)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v2 == 0x80000000)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t fix16_ssub(int a1, int a2)
{
  v3 = a1 - a2;
  if ((((a1 - a2) ^ a1) & (a2 ^ a1)) < 0 != v2)
  {
    v3 = 0x80000000;
  }

  if (a1 > 0)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = 0x80000000;
  }

  if (v3 == 0x80000000)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t fix16_mul(int a1, int a2)
{
  v2 = (a2 >> 16) * a1 + a2 * (a1 >> 16);
  v3 = __PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16);
  v4 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 16;
  if (SHIDWORD(v3) >> 31 == SHIDWORD(v3) >> 15)
  {
    return v4;
  }

  else
  {
    return 0x80000000;
  }
}

uint64_t fix16_smul(int a1, int a2)
{
  v2 = (a2 >> 16) * a1 + a2 * (a1 >> 16);
  v3 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 32;
  v4 = (__PAIR64__((a2 >> 16) * (a1 >> 16), a2 * a1) + __PAIR64__(v2 >> 16, v2 << 16)) >> 16;
  if (v3 >> 31 != v3 >> 15)
  {
    v4 = 0x80000000;
  }

  if (v4 == 0x80000000)
  {
    return ((a2 ^ a1) >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return v4;
  }
}

uint64_t fix16_div(int a1, int a2)
{
  if (!a2)
  {
    return 0x80000000;
  }

  if (a1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = -a1;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 >= 0x100000)
  {
    v4 = v2 / ((v3 >> 17) + 1);
    v2 -= (v4 * v3) >> 17;
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0xF) != 0)
  {
    v5 = 17;
  }

  else
  {
    v6 = 17;
    do
    {
      v7 = v3;
      v3 >>= 4;
      v5 = v6 - 4;
      if ((v7 & 0xF0) != 0)
      {
        break;
      }

      v8 = v6 > 7;
      v6 -= 4;
    }

    while (v8);
  }

  while (v2 && (v5 & 0x80000000) == 0)
  {
    v9 = v2 >> 28;
    if (v2 >> 28)
    {
      LOBYTE(v9) = 0;
      v11 = v2;
      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_22:
        LOBYTE(v9) = v9 + 1;
        v11 *= 2;
      }

      while ((v11 & 0x80000000) == 0);
      goto LABEL_23;
    }

    v10 = v2;
    do
    {
      LOBYTE(v9) = v9 + 4;
      v11 = 16 * v10;
      v12 = HIBYTE(v10);
      v10 *= 16;
    }

    while (!v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v5 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v5;
    }

    v13 = v2 << v9;
    v14 = v5 - v9;
    v15 = v13 / v3;
    v4 += (v13 / v3) << v14;
    v16 = 0xFFFFFFFF >> v14;
    v2 = 2 * (v13 % v3);
    v5 = v14 - 1;
    if (v15 > v16)
    {
      return 0x80000000;
    }
  }

  v18 = v4 >> 1;
  if ((a2 ^ a1) >= 0)
  {
    return v18;
  }

  else
  {
    return -v18;
  }
}

uint64_t fix16_sdiv(int a1, int a2)
{
  LODWORD(result) = fix16_div(a1, a2);
  if (result == 0x80000000)
  {
    return ((a2 ^ a1) >> 31) ^ 0x7FFFFFFFu;
  }

  else
  {
    return result;
  }
}

uint64_t igtree_Init(_WORD *a1, int a2, uint64_t a3, char *__b)
{
  v47 = 0;
  *v46 = 0;
  v45 = 0;
  v44 = 0;
  *__s1 = 0;
  v42 = 0;
  cstdlib_memset(__b, 0, 0x640uLL);
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_OpenChunk(a3, __s1, &v47, v46);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_56:
    if ((v9 & 0x1FFF) == 0xA)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  v10 = 2380275722;
  while (cstdlib_strcmp(__s1, "DSTR"))
  {
    if (cstdlib_strcmp(__s1, "FEAT"))
    {
      if (cstdlib_strcmp(__s1, "TABL"))
      {
        if (cstdlib_strcmp(__s1, "APOS"))
        {
          if (cstdlib_strcmp(__s1, "FNAM"))
          {
            if (!cstdlib_strcmp(__s1, "PARA"))
            {
              v11 = heap_Calloc(*(v42 + 8), v47 >> 2, 16);
              *(__b + 166) = v11;
              if (!v11)
              {
                return v10;
              }

              v12 = v47;
              if (v47)
              {
                v13 = 0;
                v14 = 0;
                while (1)
                {
                  v45 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v46, v12, v14, 0, &v45);
                  v15 = heap_Alloc(*(v42 + 8), v45);
                  *(*(__b + 166) + 16 * v13) = v15;
                  if (!v15)
                  {
                    return v10;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v14, v15, &v45);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  v16 = v45 + v14;
                  v45 = 0;
                  ssftriff_reader_ReadStringZ(a3, *v46, v47, v16, 0, &v45);
                  v17 = heap_Alloc(*(v42 + 8), v45);
                  *(*(__b + 166) + 16 * v13 + 8) = v17;
                  if (!v17)
                  {
                    return v10;
                  }

                  inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v16, v17, &v45);
                  if ((inited & 0x80000000) != 0)
                  {
                    return inited;
                  }

                  ++v13;
                  v14 = v45 + v16;
                  v12 = v47;
                  if (v14 >= v47)
                  {
                    goto LABEL_54;
                  }
                }
              }

              v13 = 0;
LABEL_54:
              *(__b + 334) = v13;
            }
          }

          else
          {
            v36 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
            *(__b + 164) = v36;
            if (!v36)
            {
              return v10;
            }

            v37 = v47;
            if (v47)
            {
              v38 = 0;
              v39 = 0;
              do
              {
                v45 = 0;
                ssftriff_reader_ReadStringZ(a3, *v46, v37, v39, 0, &v45);
                *(*(__b + 164) + 8 * v38) = heap_Alloc(*(v42 + 8), v45);
                v40 = *(*(__b + 164) + 8 * v38);
                if (!v40)
                {
                  return v10;
                }

                inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v39, v40, &v45);
                if ((inited & 0x80000000) != 0)
                {
                  return inited;
                }

                ++v38;
                v39 += v45;
                v37 = v47;
              }

              while (v39 < v47);
            }
          }
        }

        else
        {
          v45 = v47;
          v35 = heap_Alloc(*(v42 + 8), v47);
          *(__b + 163) = v35;
          if (!v35)
          {
            return v10;
          }

          inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, 0, v35, &v45);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }
        }
      }

      else
      {
        inited = ssftriff_reader_DetachChunkData(a3, __b, v46);
        if ((inited & 0x80001FFF) == 0x8000000A)
        {
          return inited;
        }

        __b[1296] = 0;
        if (v47 >= 2)
        {
          v26 = 0;
          LODWORD(v27) = 0;
          v28 = v47 >> 1;
          v29 = *v46;
          v30 = *v46 + 2;
          do
          {
            v31 = *(v29 + 2 * v27);
            if (v31 == 0xFFFF)
            {
              v32 = 0;
              do
              {
                v32 += 0xFFFF;
                v27 = (v27 + 1);
                v31 = *(v29 + 2 * v27);
              }

              while (v31 == 0xFFFF);
              v33 = v27;
            }

            else
            {
              v32 = 0;
              v33 = v27;
            }

            *&__b[8 * v26 + 272] = v30 + 2 * v33;
            v34 = v26 + 1;
            LODWORD(v27) = v27 + v32 + v31 + 1;
            ++v26;
          }

          while (v27 < v28);
          __b[1296] = v34;
        }
      }
    }

    else
    {
      v23 = v47;
      if (v47)
      {
        v24 = 0;
        v25 = *v46;
        do
        {
          *&__b[v24 + 16] = *(v25 + v24);
          v24 += 2;
        }

        while (v24 < v23);
      }
    }

LABEL_44:
    ssftriff_reader_CloseChunk(a3);
    v9 = ssftriff_reader_OpenChunk(a3, __s1, &v47, v46);
    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }
  }

  v18 = heap_Calloc(*(v42 + 8), v47 >> 1, 8);
  *(__b + 1) = v18;
  if (!v18)
  {
    return v10;
  }

  v19 = v47;
  if (!v47)
  {
    v20 = 0;
LABEL_41:
    *(__b + 330) = v20;
    goto LABEL_44;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v45 = 0;
    ssftriff_reader_ReadStringZ(a3, *v46, v19, v21, 0, &v45);
    *(*(__b + 1) + 8 * v20) = heap_Alloc(*(v42 + 8), v45);
    v22 = *(*(__b + 1) + 8 * v20);
    if (!v22)
    {
      return v10;
    }

    inited = ssftriff_reader_ReadStringZ(a3, *v46, v47, v21, v22, &v45);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    ++v20;
    v21 += v45;
    v19 = v47;
    if (v21 >= v47)
    {
      goto LABEL_41;
    }
  }
}

uint64_t igtree_Process(uint64_t a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 272);
  __src = v3;
  v4 = *(a1 + 1296);
  if (v4 < 2)
  {
    goto LABEL_38;
  }

  v40 = a3;
  v6 = 0;
  v3 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = a1 + 272;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v75 = 0;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v8 = v4 - 1;
  v9 = a1 + 16;
  v39 = a1;
  v10 = (a1 + 8);
  v11 = 1;
  v12 = v8;
  memset(__dst, 0, 512);
  v41 = v8;
  do
  {
    if (v11 >= 1)
    {
      v13 = v11;
      memcpy(__dst, &__src, 8 * v11);
      v14 = 0;
      v15 = 0;
      v11 = 0;
      v16 = v6 + 1;
      while (1)
      {
        v17 = *(__dst + v14);
        v20 = *v17;
        v18 = (v17 + 1);
        v19 = v20;
        if (v20)
        {
          break;
        }

LABEL_28:
        v36 = v14 == 0;
        if (v15)
        {
          v36 = 0;
        }

        if (v36 && v3 == 0)
        {
          v3 = v18;
        }

        if (++v14 == v13)
        {
          v12 = v41;
          if (!v15)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      v21 = *(__dst + v14) + 4 * v19;
      while (1)
      {
        v22 = *v18;
        if (v22 == 0xFFFF)
        {
          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }
        }

        else
        {
          v23 = *(a2 + 8 * *(v9 + 2 * v6));
          v24 = *(*v10 + 8 * v22);
          if (*v23 != *v24)
          {
            goto LABEL_25;
          }

          v25 = v23 + 1;
          v26 = v24 + 1;
          do
          {
            v28 = *v25++;
            v27 = v28;
            v30 = *v26++;
            v29 = v30;
          }

          while (v27 == v30 && v29 != 0);
          if (v27 != v29)
          {
            goto LABEL_25;
          }

          v32 = *(v7 + 8 * v16);
          v33 = &(&__src)[v11];
          v34 = v18[1];
          while (v34 == 0xFFFF)
          {
            v32 += 131070;
            v21 += 2;
            v34 = v18[2];
            ++v18;
          }

          v15 = 1;
        }

        *v33 = (v32 + 2 * v34);
        ++v11;
LABEL_25:
        ++v18;
        v21 -= 2;
        do
        {
          v35 = *v18++;
          v21 += 2;
        }

        while (v35 == -1);
        if (v18 >= v21)
        {
          goto LABEL_28;
        }
      }
    }

    v11 = 0;
LABEL_34:
    if (!v11 && v3)
    {
      a3 = v40;
      goto LABEL_40;
    }

LABEL_36:
    v37 = v6 + 1;
    v6 = (v6 + 1);
  }

  while (v12 > v37);
  v3 = __src;
  a1 = v39;
  a3 = v40;
LABEL_38:
  v10 = (a1 + 8);
LABEL_40:
  *a3 = *(*v10 + 8 * *v3);
  return 0;
}

uint64_t igtree_Deinit(uint64_t a1, uint64_t a2)
{
  ssftriff_reader_ReleaseChunkData(*a2);
  if (*(a2 + 1320))
  {
    v4 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a2 + 8) + 8 * v4++));
    }

    while (*(a2 + 1320) > v4);
  }

  heap_Free(*(a1 + 8), *(a2 + 8));
  heap_Free(*(a1 + 8), *(a2 + 1304));
  v5 = *(a2 + 1312);
  if (v5)
  {
    v6 = *(a2 + 1296);
    if (*(a2 + 1296))
    {
      v7 = 0;
      do
      {
        v8 = *(*(a2 + 1312) + 8 * v7);
        if (v8)
        {
          heap_Free(*(a1 + 8), v8);
          v6 = *(a2 + 1296);
        }

        ++v7;
      }

      while (v7 < v6);
      v5 = *(a2 + 1312);
    }

    heap_Free(*(a1 + 8), v5);
  }

  v9 = *(a2 + 1328);
  if (v9)
  {
    if (*(a2 + 1336))
    {
      v10 = 0;
      do
      {
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v10));
        heap_Free(*(a1 + 8), *(*(a2 + 1328) + 16 * v10++ + 8));
      }

      while (*(a2 + 1336) > v10);
      v9 = *(a2 + 1328);
    }

    heap_Free(*(a1 + 8), v9);
  }

  return 0;
}

uint64_t igtree_Init_ReadOnly_ReferenceCnt(_WORD *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5, int a6, uint64_t a7, const char *a8, __int16 a9, char a10)
{
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  cstdlib_memset(&v21, 0, 0x30uLL);
  result = InitRsrcFunction(a1, a2, &v26);
  if ((result & 0x80000000) == 0)
  {
    result = InitRsrcFunction(a3, a4, &v25);
    if ((result & 0x80000000) == 0)
    {
      *&v21 = a1;
      *(&v21 + 1) = a2;
      *&v22 = a3;
      *(&v22 + 1) = a4;
      cstdlib_strcpy(&v23, a8);
      DWORD2(v23) = a6;
      BYTE14(v23) = a10;
      WORD6(v23) = a9;
      ObjcForThisApi = getObjcForThisApi(v26, v25);
      result = objc_GetAddRefCountedObject(ObjcForThisApi, a7, igtree_ObjcLoad, igtree_ObjcClose, &v21, &v24);
      if ((result & 0x80000000) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *(v24 + 32);
      }

      *a5 = v20;
    }
  }

  return result;
}

uint64_t igtree_ObjcLoad(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v66 = 0;
  v67 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(__dst, 0, sizeof(__dst));
  inited = InitRsrcFunction(a1, a2, &v66);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = InitRsrcFunction(*(a5 + 16), *(a5 + 24), &v67);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  cstdlib_memcpy(__dst, v66, 0x1A0uLL);
  v42 = *(v67 + 32);
  v11 = *(a5 + 40);
  v12 = *(a5 + 44) | (*(a5 + 46) << 16);
  v68 = 0;
  v13 = ssftriff_reader_ObjOpen(a1, a2, v11, a3, (a5 + 32), v12, &v68);
  if ((v13 & 0x80000000) != 0)
  {
    v32 = v13;
    log_OutText(v42, "IGTREE", 3, 0, "failed to read IGtree %s data - going on without", v14, v15, v16, a3);
  }

  else
  {
    v17 = heap_Calloc(*(&__dst[0] + 1), 1, 1600);
    *(a4 + 32) = v17;
    if (v17)
    {
      v21 = igtree_Init(a1, a2, v68, v17);
      if ((v21 & 0x80000000) != 0)
      {
        v32 = v21;
        v33 = v42;
        v34 = "error initializing IGtree  %s - going on without";
        goto LABEL_12;
      }

      cstdlib_strcpy((*(a4 + 32) + 1340), a3);
      v32 = ssftriff_reader_ObjClose(v68, v25, v26, v27, v28, v29, v30, v31);
      if ((v32 & 0x80000000) != 0)
      {
        v33 = v42;
        v34 = "cannot complete reading IGtree  %s - going on without";
LABEL_12:
        log_OutText(v33, "IGTREE", 0, 0, v34, v22, v23, v24, a3);
      }
    }

    else
    {
      log_OutText(v42, "IGTREE", 0, 0, "no memory for IGtree  %s", v18, v19, v20, a3);
      log_OutPublic(v42, "IGTREE", 37000, 0, v35, v36, v37, v38, v40);
      return 2380275722;
    }
  }

  return v32;
}

uint64_t igtree_ObjcClose(_WORD *a1, int a2, uint64_t a3)
{
  v7 = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a3 + 32);
    if (v5)
    {
      v6 = v7;
      igtree_Deinit(v7, v5);
      heap_Free(*(v6 + 8), v5);
    }

    return 0;
  }

  return result;
}

uint64_t igtree_Deinit_ReadOnly_DereferenceCnt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjcForThisApi = getObjcForThisApi(a1, a2);

  return objc_ReleaseObject(ObjcForThisApi, a3 + 1340);
}

uint64_t posparser_ExtractPunctuation(void *a1, char *__s, char **a3, size_t *a4, char **a5, size_t *a6)
{
  v12 = cstdlib_strlen(__s);
  v13 = v12;
  v29 = 0;
  if (*a3)
  {
    **a3 = 0;
    v14 = *a3;
  }

  else
  {
    v14 = 0;
  }

  *a4 = 0;
  if (*a5)
  {
    **a5 = 0;
    v15 = *a5;
  }

  else
  {
    v15 = 0;
  }

  *a6 = 0;
  if (v12)
  {
    v16 = 0;
    while ((*(a1[3] + 128))(a1[1], a1[2], &__s[v16]))
    {
      v16 += utf8_determineUTF8CharLength(__s[v16]);
      if (v16 >= v13)
      {
        goto LABEL_13;
      }
    }

    if (v16)
    {
LABEL_13:
      *a4 = v16;
      v17 = heap_Realloc(*(*a1 + 8), v14, v16 + 1);
      if (!v17)
      {
LABEL_31:
        v26 = 2687508490;
        log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v18, v19, v20, v21, v28);
        return v26;
      }

      v14 = v17;
      cstdlib_strncpy(v17, __s, *a4);
      v14[*a4] = 0;
    }

    v29 = v13 - 1;
    utf8_GetPreviousValidUtf8Offset(__s, &v29);
    if (v29 != -1)
    {
      v22 = v13;
      if ((*(a1[3] + 128))(a1[1], a1[2], &__s[v29]))
      {
        do
        {
          v22 = v29;
          PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v29);
          v29 = PreviousUtf8Offset;
        }

        while (PreviousUtf8Offset != -1 && (*(a1[3] + 128))(a1[1], a1[2], &__s[PreviousUtf8Offset]));
      }

      v24 = v13 - v22;
      if (v13 > v22)
      {
        *a6 = v24;
        v25 = heap_Realloc(*(*a1 + 8), v15, v24 + 1);
        if (v25)
        {
          v15 = v25;
          cstdlib_strncpy(v25, &__s[v22], *a6);
          v15[*a6] = 0;
          goto LABEL_22;
        }

        goto LABEL_31;
      }
    }
  }

LABEL_22:
  if (*a3)
  {
    *a3 = v14;
  }

  else if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
  }

  if (*a5)
  {
    v26 = 0;
    *a5 = v15;
  }

  else
  {
    if (v15)
    {
      heap_Free(*(*a1 + 8), v15);
    }

    return 0;
  }

  return v26;
}

uint64_t posparser_isFeatureRequired(uint64_t a1, int a2, _WORD *a3, unsigned int a4, int a5)
{
  LOWORD(v6) = a2;
  if (a5 == 1)
  {
LABEL_2:
    *a3 = v6;
    return 1;
  }

  if (a4)
  {
    v9 = g_posparser_FeatureNames[a2];
    v10 = a4;
    v6 = 0;
    while (cstdlib_strcmp(*(*(a1 + 1312) + 8 * v6), v9))
    {
      if (v10 == ++v6)
      {
        return 0;
      }
    }

    goto LABEL_2;
  }

  return 0;
}

uint64_t posparser_DumpFeatureVectorAndResult(uint64_t a1, char *a2, char **a3, char *a4, const char **a5, unsigned int *a6, unsigned int a7, int a8, unsigned __int16 a9, char *a10)
{
  __sprintf_chk(__s, 0, 6uLL, "%d", a9);
  result = posparser_add2Str(a1, a5, a6, __s);
  if ((result & 0x80000000) == 0)
  {
    result = posparser_add2Str(a1, a5, a6, " FEATUREVECTOR:");
    if ((result & 0x80000000) == 0)
    {
      result = posparser_add2Str(a1, a5, a6, a2);
      if ((result & 0x80000000) == 0)
      {
        result = posparser_add2Str(a1, a5, a6, ":");
        if ((result & 0x80000000) == 0)
        {
          __sprintf_chk(__s, 0, 6uLL, "%d", a7);
          result = posparser_add2Str(a1, a5, a6, __s);
          if ((result & 0x80000000) == 0)
          {
            result = posparser_add2Str(a1, a5, a6, ":");
            if ((result & 0x80000000) == 0)
            {
              result = posparser_add2Str(a1, a5, a6, a10);
              if ((result & 0x80000000) == 0)
              {
                if (a7)
                {
                  v19 = a7;
                  v20 = g_posparser_FeatureNames;
                  while (1)
                  {
                    if (a8 == 1)
                    {
                      result = posparser_add2Str(a1, a5, a6, *v20);
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }

                      result = posparser_add2Str(a1, a5, a6, " ");
                      if ((result & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    result = posparser_add2Str(a1, a5, a6, *a3);
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    result = posparser_add2Str(a1, a5, a6, " ");
                    if ((result & 0x80000000) != 0)
                    {
                      break;
                    }

                    ++v20;
                    ++a3;
                    if (!--v19)
                    {
                      goto LABEL_16;
                    }
                  }
                }

                else
                {
LABEL_16:
                  result = posparser_add2Str(a1, a5, a6, " PREDICTED:");
                  if ((result & 0x80000000) == 0)
                  {
                    result = posparser_add2Str(a1, a5, a6, a4);
                    if ((result & 0x80000000) == 0)
                    {
                      log_OutText(*(a1 + 32), "POSPARSER", 5, 0, "%s", v21, v22, v23, *a5);
                      cstdlib_strcpy(*a5, "");
                      return 0;
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

  return result;
}

uint64_t posparser_add2Str(uint64_t a1, const char **a2, unsigned int *a3, char *__s)
{
  v8 = cstdlib_strlen(__s);
  v9 = *a3;
  if (v8 >= v9 - cstdlib_strlen(*a2))
  {
    v11 = cstdlib_strlen(__s);
    v12 = *a3;
    v13 = v11 - v12 + cstdlib_strlen(*a2);
    if (v13 <= 0x80)
    {
      v14 = 128;
    }

    else
    {
      v14 = v13;
    }

    v10 = heap_Realloc(*(a1 + 8), *a2, *a3 + v14 + 1);
    if (!v10)
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v15, v16, v17, v18, v22);
      return 2687508490;
    }

    *a2 = v10;
    *a3 += v14;
  }

  else
  {
    v10 = *a2;
  }

  v19 = cstdlib_strlen(v10);
  v20 = *a2;
  if (v19)
  {
    cstdlib_strcat(v20, __s);
  }

  else
  {
    cstdlib_strcpy(v20, __s);
  }

  return 0;
}

uint64_t posparser_setFeature(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5, unsigned int a6, int a7)
{
  v36 = 0;
  result = posparser_isFeatureRequired(a1, a3, &v36, a6, a7);
  if (result)
  {
    if (cstdlib_strcmp(a5, ""))
    {
      v14 = cstdlib_strlen(a5);
      v15 = v36;
      if (v14 <= 0x40)
      {
        v17 = *(a4 + 8 * v36);
      }

      else
      {
        v16 = cstdlib_strlen(a5);
        v17 = heap_Realloc(*(a2 + 8), *(a4 + 8 * v15), (v16 + 1));
        if (!v17)
        {
          log_OutPublic(*(a2 + 32), "POSPARSER", 68000, 0, v18, v19, v20, v21, v35);
          return 2687508490;
        }

        *(a4 + 8 * v15) = v17;
      }

      cstdlib_strcpy(v17, a5);
      if (a7)
      {
        return 0;
      }

      v23 = *(a4 + 8 * v15);
      v24 = cstdlib_strlen(g_posparser_FeatureNames[a3]);
      if (!*(a1 + 1336))
      {
        return 0;
      }

      v25 = v24;
      v26 = 0;
      while (1)
      {
        v27 = v26;
        if (!cstdlib_strncmp(*(*(a1 + 1328) + 16 * v26), *(*(a1 + 1312) + 8 * v15), v25))
        {
          break;
        }

        v26 = v27 + 1;
        if (*(a1 + 1336) <= (v27 + 1))
        {
          return 0;
        }
      }

      v28 = cstdlib_strlen(*(*(a1 + 1328) + 16 * v27 + 8));
      v29 = cstdlib_strlen(v23);
      v30 = *(*(a1 + 1328) + 16 * v27 + 8);
      v31 = cstdlib_strstr(v30, v23);
      if (v31)
      {
        v32 = v28;
        v33 = &v30[v28];
        while (v31 != v30 || v32 != v29 && (v32 <= v29 + 1 || v31[v29] != 32))
        {
          if (v31 > v30)
          {
            v34 = &v31[v29];
            if (v33 > (v34 + 1) && *v34 == 32)
            {
              if (*(v31 - 1) == 32)
              {
                return 0;
              }
            }

            else if (v33 == v34)
            {
              return 0;
            }
          }

          v31 = cstdlib_strstr(&v31[v29], v23);
          if (!v31)
          {
            goto LABEL_31;
          }
        }

        return 0;
      }

LABEL_31:
      v22 = v23;
    }

    else
    {
      v22 = *(a4 + 8 * v36);
    }

    cstdlib_strcpy(v22, "=");
    return 0;
  }

  return result;
}

uint64_t posparser_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v6 = heap_Calloc(*(a1 + 8), 1, 65);
    *a2 = v6;
    if (!v6)
    {
      break;
    }

    cstdlib_strcpy(v6, "=");
    ++a2;
    if (!--v5)
    {
      return 0;
    }
  }

  log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v7, v8, v9, v10, v12);
  return 2687508490;
}

void *posparser_freeFeatureVector(void *result, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = heap_Free(v4[1], v6);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t posparser_getIgtreeBrkStrs(uint64_t a1, _BYTE *a2, _BYTE *a3, size_t a4)
{
  v9 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v9);
  if ((result & 0x80000000) == 0)
  {
    result = brokeraux_ComposeBrokerString(a1, "diacritizerOOVPOS_igtree", 1, 1, v9, 0, 0, a2, a4);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "diacritizerKNOWNPOS_igtree", 1, 1, v9, 0, 0, a3, a4);
    }
  }

  return result;
}

uint64_t getPosparserIGTreesAndDict(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t *a8, uint64_t *a9, _DWORD *a10, const char *a11, _DWORD *a12)
{
  v62 = *MEMORY[0x277D85DE8];
  v58 = 0;
  *v59 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a12 = 0;
  if ((paramc_ParamGetInt(*(a1 + 40), "araparsergetfv", &v57) & 0x80000000) == 0 && v57 == 1)
  {
    *a10 = 1;
  }

  v55 = -1;
  v18 = (*(a6 + 96))(a4, a5, "fecfg", "araparsermwspan", &v56, &v55, &v54);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v51 = v55;
  if (v55)
  {
    *a12 = 1;
  }

  v19 = (*(a6 + 72))(a4, a5, a11, &v58 + 4);
  if ((v19 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

  if (!HIDWORD(v58))
  {
    cstdlib_strcpy(__dst, a11);
    cstdlib_strcat(__dst, "0");
    v20 = (*(a6 + 72))(a4, a5, __dst, &v58);
    v19 = v20;
    if ((v20 & 0x80000000) != 0 || !v58)
    {
      if ((v20 & 0x80000000) == 0)
      {
        return v19;
      }

      goto LABEL_33;
    }
  }

  *a7 = 1;
  if (*a10 == 1)
  {
    *a9 = 0;
    *a8 = 0;
    *a7 = 1;
LABEL_13:
    *a12 = 1;
    return v19;
  }

  IgtreeBrkStrs = posparser_getIgtreeBrkStrs(a1, __dst, v60, 0x100uLL);
  if ((IgtreeBrkStrs & 0x80000000) != 0)
  {
    v19 = IgtreeBrkStrs;
    goto LABEL_33;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, v60, "IGTR", 1031, v59) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a9 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", v22, v23, v24, v25, "treename:");
    goto LABEL_33;
  }

  v26 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a9 = v26;
  if (!v26)
  {
    goto LABEL_38;
  }

  v18 = igtree_Init(a2, a3, *v59, v26);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  v18 = ssftriff_reader_ObjClose(*v59, v31, v32, v33, v34, v35, v36, v37);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  if ((ssftriff_reader_ObjOpen(a2, a3, 2, __dst, "IGTR", 1031, v59) & 0x80000000) != 0)
  {
    v19 = 2687508480;
    *a8 = 0;
    log_OutPublic(*(a1 + 32), "POSPARSER", 68005, "%s%s", v38, v39, v40, v41, "treename:");
    goto LABEL_33;
  }

  v26 = heap_Calloc(*(a1 + 8), 1, 1600);
  *a8 = v26;
  if (!v26)
  {
LABEL_38:
    log_OutPublic(*(a1 + 32), "POSPARSER", 68000, v26, v27, v28, v29, v30, v50);
    v19 = 2687508490;
    goto LABEL_33;
  }

  v18 = igtree_Init(a2, a3, *v59, v26);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_28:
    v19 = v18;
    goto LABEL_33;
  }

  v19 = ssftriff_reader_ObjClose(*v59, v42, v43, v44, v45, v46, v47, v48);
  if ((v19 & 0x80000000) != 0)
  {
LABEL_33:
    if (*a8)
    {
      heap_Free(*(a1 + 8), *a8);
      *a8 = 0;
    }

    if (*a9)
    {
      heap_Free(*(a1 + 8), *a9);
      *a9 = 0;
    }

    return v19;
  }

  if (v51 || HIDWORD(v58) == 1 || v58 == 1)
  {
    goto LABEL_13;
  }

  return v19;
}

uint64_t freePosparserIGTrees(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  if (v6)
  {
    v7 = igtree_Deinit(a1, v6);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }

    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  else
  {
    v7 = 0;
  }

  if (*a3)
  {
    v7 = igtree_Deinit(a1, *a3);
    if ((v7 & 0x80000000) == 0)
    {
      heap_Free(*(a1 + 8), *a3);
      *a3 = 0;
    }
  }

  return v7;
}

uint64_t posparser_doPatternMatching(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v202 = *MEMORY[0x277D85DE8];
  v197 = 0;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  if (!a5)
  {
    return 0;
  }

  v8 = a5;
  v186 = 0;
  v11 = 0;
  v184 = 0;
  v12 = 0;
  v13 = 0;
  v200 = 0;
  v199 = 0;
LABEL_3:
  v14 = v12;
  v15 = a4 + 104 * v12;
  if (*(v15 + 32))
  {
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d not sent to pattern matching since found in dict", a6, a7, a8, v11);
    v14 = *(v15 + 72);
    v12 = *(v15 + 72);
    goto LABEL_11;
  }

  if (*(v15 + 88) || *(v15 + 80) || *(v15 + 84) || *(v15 + 92) || *(v15 + 12) || *(v15 + 74))
  {
    goto LABEL_11;
  }

  if (*(a3 + 62))
  {
    v17 = *(v15 + 96);
    cstdlib_strncpy(a2, (a1 + *(v15 + 8)), *(v15 + 10) - *(v15 + 8));
    a2[*(v15 + 10) - *(v15 + 8)] = 0;
    if (v17)
    {
      v18 = posparser_ExtractPunctuation(a3, a2, &v198, &v197, &v196, &v195);
      if ((v18 & 0x80000000) != 0)
      {
        v13 = v18;
        goto LABEL_204;
      }

      cstdlib_strcpy(a2, *(v15 + 96));
    }
  }

  else
  {
    v170 = v13;
    v19 = *(v15 + 8);
    if (v19 >= *(v15 + 10))
    {
      v20 = 0;
      v21 = v184;
    }

    else
    {
      v20 = 0;
      v21 = v184;
      do
      {
        v22 = *(a3 + 104);
        if (v21 >= v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = 0;
          v24 = a3[25];
          v25 = v21;
          v187 = v19;
          do
          {
            v26 = *(v24 + 6 * v25);
            if (v26 > *(v15 + 10))
            {
              break;
            }

            v27 = v25;
            if (v19 == v26)
            {
              if (*(a3 + 49) > v20)
              {
                v185 = v21;
                v28 = 0;
                while (cstdlib_strlen((a3[25] + 6 * v27 + 2)) > v28)
                {
                  v29 = (v20 + 1);
                  a2[v20] = *(a3[25] + 6 * v27 + v28++ + 2);
                  v30 = v28 + (v20 + 1);
                  v20 = v29;
                  if (v30 >= *(a3 + 49))
                  {
                    goto LABEL_33;
                  }
                }

                v29 = v20;
LABEL_33:
                v24 = a3[25];
                v22 = *(a3 + 104);
                v20 = v29;
                v21 = v185;
                v19 = v187;
              }

              v23 = *(v24 + 6 * v27 + 2);
            }

            else if (*(v15 + 8) >= v26)
            {
              v21 = v25;
            }

            v25 = v27 + 1;
          }

          while (v27 + 1 < v22);
        }

        v31 = *(a1 + v19);
        if ((v31 != 65 || v23 - 66 > 0x16 || ((1 << (v23 - 66)) & 0x400081) == 0 || !*(a3 + 38)) && *(a3 + 49) > v20)
        {
          a2[v20] = v31;
          v20 = (v20 + 1);
        }

        ++v19;
      }

      while (v19 < *(v15 + 10));
      LODWORD(v19) = v19;
    }

    v184 = v21;
    v32 = *(a3 + 104);
    v33 = v21;
    v34 = v20;
    v35 = v20;
    v13 = v170;
    v188 = v19;
    if (v21 < v32)
    {
      while (1)
      {
        v36 = *(a3[25] + 6 * v33);
        if (v36 > *(v15 + 10))
        {
          break;
        }

        v37 = v33;
        if (v36 == v19 && *(a3 + 49) > v34)
        {
          v38 = 0;
          while (cstdlib_strlen((a3[25] + 6 * v37 + 2)) > v38)
          {
            v39 = (v34 + 1);
            a2[v34] = *(a3[25] + 6 * v37 + v38++ + 2);
            v40 = v38 + (v34 + 1);
            v34 = v39;
            if (v40 >= *(a3 + 49))
            {
              goto LABEL_56;
            }
          }

          v39 = v34;
LABEL_56:
          v32 = *(a3 + 104);
          v34 = v39;
          LODWORD(v19) = v188;
        }

        v33 = v37 + 1;
        v35 = v34;
        v13 = v170;
        if (v33 >= v32)
        {
          goto LABEL_60;
        }
      }

      v35 = v34;
    }

LABEL_60:
    v186 = v35;
    if (*(a3 + 49) == v35)
    {
      v8 = v8;
      goto LABEL_13;
    }

    a2[v35] = 0;
    v8 = v8;
  }

  log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "word %d (%s) sent to pattern matching", a6, a7, a8, v11);
  v41 = 1;
  while (1)
  {
    cstdlib_strcpy(__s1, "diac_decomp_");
    LH_itoa(v41, __s2, 0xAu);
    cstdlib_strcat(__s1, __s2);
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s L1: %s", v42, v43, v44, __s1);
    v45 = *(a3[7] + 120);
    v46 = cstdlib_strlen(a2);
    v47 = v45(a3[5], a3[6], 0, a2, v46);
    if ((v47 & 0x80000000) != 0)
    {
      return v47;
    }

    if (((*(a3[7] + 80))(a3[5], a3[6], __s1) & 0x80000000) != 0)
    {
      break;
    }

    v13 = (*(a3[7] + 128))(a3[5], a3[6], 0, &v200, &v199);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v200[v199] = 0;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%s O1: %s", v48, v49, v50, __s1);
    if (!*v200 || !cstdlib_strchr("[/", *v200) || !cstdlib_strchr("]/", v200[v199 - 1]))
    {
      goto LABEL_180;
    }

    v167 = v41;
    v193 = 0;
    if (v199)
    {
      v177 = 1;
      v51 = v200;
      v52 = 1;
      do
      {
        v53 = *v51;
        if ((v53 - 44) <= 0x31 && ((1 << (v53 - 44)) & 0x2800000000009) != 0)
        {
          v55 = v53 == 44;
          v56 = v53 == 44 ? 1 : v177;
          v52 = (v56 * v52);
          v57 = v55 ? v177 + 1 : 1;
          v177 = v57;
          v58 = cstdlib_strchr(v51, 58);
          if (v58)
          {
            v51 = v58 - 1;
            do
            {
              v59 = v51[2];
              ++v51;
              v59 -= 44;
              v60 = v59 > 0x31;
              v61 = (1 << v59) & 0x2800000000009;
            }

            while (v60 || v61 == 0);
          }
        }

        ++v51;
      }

      while (v51 < &v200[v199]);
    }

    else
    {
      v52 = 1;
      v177 = 1;
    }

    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) found", a6, a7, a8, v52);
    v66 = *a3;
    if (v52 > 0x2710)
    {
      log_OutText(*(v66 + 32), "POSPARSER", 5, 0, "More than 10000 decompositions found, invalidated the results of current depes grammar", v63, v64, v65, v166);
      goto LABEL_179;
    }

    v67 = heap_Realloc(*(v66 + 8), *(v15 + 24), 16 * (v52 + *(v15 + 32)));
    if (!v67)
    {
LABEL_200:
      log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0, v68, v69, v70, v71, v166);
      return 2687508490;
    }

    *(v15 + 24) = v67;
    v72 = *(v15 + 32);
    v171 = v13;
    if (!v52)
    {
      goto LABEL_99;
    }

    do
    {
      v73 = heap_Alloc(*(*a3 + 8), (v197 + v199 + v195));
      *(*(v15 + 24) + 16 * v72 + 8) = v73;
      if (!v73)
      {
        goto LABEL_200;
      }

      cstdlib_strcpy(v73, "");
      v74 = heap_Alloc(*(*a3 + 8), v199);
      *(*(v15 + 24) + 16 * v72) = v74;
      if (!v74)
      {
        log_OutPublic(*(*a3 + 32), "POSPARSER", 68000, 0, v75, v76, v77, v78, v166);
        heap_Free(*(*a3 + 8), *(*(v15 + 24) + 16 * v72 + 8));
        return 2687508490;
      }

      cstdlib_strcpy(v74, "");
      LOWORD(v72) = v72 + 1;
      v13 = v171;
    }

    while (v52 + *(v15 + 32) > v72);
    v72 = *(v15 + 32);
LABEL_99:
    v168 = v8;
    if (!v199)
    {
      v101 = 1;
      v79 = 1;
      goto LABEL_139;
    }

    v79 = 1;
    v80 = v200;
    do
    {
      v81 = *v80;
      if ((v81 - 44) <= 0x31 && ((1 << (v81 - 44)) & 0x2800000000009) != 0)
      {
        v83 = v81 == 44;
        if (v81 == 44)
        {
          v84 = v186;
        }

        else
        {
          v84 = 0;
        }

        v186 = v84;
        if (v83)
        {
          v85 = 1;
        }

        else
        {
          v85 = v177;
        }

        v173 = v85 * v79;
        if (v83)
        {
          v86 = v177 + 1;
        }

        else
        {
          v86 = 1;
        }

        v177 = v86;
        v87 = cstdlib_strchr(v80, 58);
        if (v87)
        {
          *v87 = 0;
          v178 = v87 + 1;
          v181 = v80;
          v88 = v186;
          while (1)
          {
            v89 = v87[1];
            if ((v89 - 44) <= 0x31 && ((1 << (v89 - 44)) & 0x2800000000009) != 0)
            {
              break;
            }

            ++v87;
          }

          v87[1] = 0;
          v91 = *(v15 + 32);
          v169 = v87;
          if (v89 == 44)
          {
            v92 = v91 + v186;
            v93 = v186 + v173;
            v94 = v93 + v91;
            if (v93 + v91 > (v91 + v186))
            {
              v95 = (v91 + v186);
              do
              {
                v96 = 16 * (v95 + v173);
                cstdlib_strcpy(*(*(v15 + 24) + v96 + 8), *(*(v15 + 24) + 16 * v92 + 8));
                cstdlib_strcpy(*(*(v15 + 24) + v96), *(*(v15 + 24) + 16 * v92++));
                v95 = v92;
                v91 = *(v15 + 32);
                v94 = v93 + v91;
              }

              while (v93 + v91 > v92);
              v88 = v186;
            }
          }

          else
          {
            v93 = v186 + v173;
            v94 = v93 + v91;
          }

          v97 = v91 + v88;
          while (v94 > v97)
          {
            v98 = v97;
            v99 = 16 * v97;
            cstdlib_strcat(*(*(v15 + 24) + v99 + 8), v181 + 1);
            v100 = *(*(v15 + 24) + v99);
            if (*v100)
            {
              cstdlib_strcat(v100, "+");
              v100 = *(*(v15 + 24) + v99);
            }

            cstdlib_strcat(v100, v178);
            v97 = v98 + 1;
            v94 = v93 + *(v15 + 32);
          }

          v79 = v173;
          v186 = (v173 + v186);
          v80 = v169;
          v169[1] = v89;
        }

        else
        {
          v79 = v173;
        }
      }

      ++v80;
    }

    while (v80 < &v200[v199]);
    v72 = *(v15 + 32);
    if (v79)
    {
      v101 = v79;
      v13 = v171;
LABEL_139:
      v102 = v72;
      v103 = v72;
      do
      {
        if (v103)
        {
          v174 = v79;
          v104 = 0;
          v105 = 0;
          v182 = v103;
          v106 = v103;
          while (cstdlib_strcmp(*(*(v15 + 24) + 16 * v106), *(*(v15 + 24) + v104)))
          {
            ++v105;
            v104 += 16;
            if (v105 >= v106)
            {
              v103 = (v182 + 1);
              v186 = v105;
              v13 = v171;
              v79 = v174;
              goto LABEL_153;
            }
          }

          if (cstdlib_strcmp(*(*(v15 + 24) + 16 * v106 + 8), *(*(v15 + 24) + v104 + 8)))
          {
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FEATUREVECTOR:DUPLICATE:%s POS %s, different DIA %s vs %s", v107, v108, v109, a2);
          }

          log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "removing duplicate %d %s,%s", v107, v108, v109, v102);
          v110 = v101 - 1;
          v111 = v101 - 1 + *(v15 + 32);
          v112 = v182;
          if (v111 > v182)
          {
            v179 = v101;
            LODWORD(v112) = v182;
            v113 = v182;
            do
            {
              v114 = 16 * v112;
              v115 = v112;
              v116 = 16 * (v113 + 1);
              cstdlib_strcpy(*(*(v15 + 24) + v114 + 8), *(*(v15 + 24) + v116 + 8));
              cstdlib_strcpy(*(*(v15 + 24) + v114), *(*(v15 + 24) + v116));
              v112 = (v115 + 1);
              v113 = (v115 + 1);
              v111 = v110 + *(v15 + 32);
            }

            while (v111 > v113);
            v101 = v179;
          }

          v186 = v112;
          heap_Free(*(*a3 + 8), *(*(v15 + 24) + 16 * v111 + 8));
          heap_Free(*(*a3 + 8), *(*(v15 + 24) + 16 * (v101 + *(v15 + 32)) - 16));
          v79 = v174 - 1;
          v13 = v171;
          v103 = v182;
        }

        else
        {
          v186 = 0;
          v103 = 1;
        }

LABEL_153:
        v102 = v103;
        v72 = *(v15 + 32);
        v101 = v79;
        v117 = v72 + v79;
      }

      while (v117 > v103);
      v180 = v79;
    }

    else
    {
      v180 = 0;
      v117 = v72 + v79;
      v79 = 0;
      v13 = v171;
    }

    v183 = v186;
    v8 = v168;
    if (v117 <= v72)
    {
      goto LABEL_178;
    }

    while (2)
    {
      v175 = v79;
      v191 = 0;
      __s = 0;
      v118 = 16 * v72;
      v189 = v72;
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "DIA %s", v69, v70, v71, *(*(v15 + 24) + v118 + 8));
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "POS %s", v119, v120, v121, *(*(v15 + 24) + v118));
      if ((ssftmap_IteratorOpen(a3[32], 0, 0, &v193) & 0x80000000) != 0)
      {
        goto LABEL_171;
      }

      if ((ssftmap_IteratorNext(v193, &v191, &__s) & 0x80000000) != 0)
      {
LABEL_169:
        LODWORD(v72) = v189;
        goto LABEL_170;
      }

      while (2)
      {
        v122 = cstdlib_strstr(*(*(v15 + 24) + v118), (v191 + 1));
        if (!v122)
        {
LABEL_164:
          if ((ssftmap_IteratorNext(v193, &v191, &__s) & 0x80000000) != 0)
          {
            goto LABEL_168;
          }

          continue;
        }

        break;
      }

      if (*v191 != 70)
      {
        v123 = v122;
        v124 = cstdlib_strlen(__s);
        v125 = cstdlib_strlen((v191 + 1));
        v126 = cstdlib_strlen(v123);
        v127 = cstdlib_strlen((v191 + 1));
        cstdlib_memmove(&v123[v124], &v123[v125], v126 - v127 + 1);
        v128 = __s;
        v129 = cstdlib_strlen(__s);
        cstdlib_strncpy(v123, v128, v129);
        log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", v130, v131, v132, *(*(v15 + 24) + v118));
        v133 = cstdlib_strstr(v123 + 1, (v191 + 1));
        if (v133)
        {
          v134 = v133;
          do
          {
            v135 = cstdlib_strlen(__s);
            v136 = cstdlib_strlen((v191 + 1));
            v137 = cstdlib_strlen(v134);
            v138 = cstdlib_strlen((v191 + 1));
            cstdlib_memmove(&v134[v135], &v134[v136], v137 - v138 + 1);
            v139 = __s;
            v140 = cstdlib_strlen(__s);
            cstdlib_strncpy(v134, v139, v140);
            log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "PARTIAL MAPPING POS %s", v141, v142, v143, *(*(v15 + 24) + v118));
            v134 = cstdlib_strstr(v134 + 1, (v191 + 1));
          }

          while (v134);
        }

        goto LABEL_164;
      }

      cstdlib_strcpy(*(*(v15 + 24) + v118), __s);
      log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "FULL MAPPING POS %s", v144, v145, v146, *(*(v15 + 24) + v118));
      if (cstdlib_strcmp(__s, "INVALID"))
      {
LABEL_168:
        v8 = v168;
        v13 = v171;
        goto LABEL_169;
      }

      v147 = (v180 - 1);
      v148 = v147 + *(v15 + 32);
      v149 = v189;
      v150 = v189;
      v13 = v171;
      if (v148 > v189)
      {
        v151 = v189;
        LODWORD(v150) = v189;
        do
        {
          v152 = 16 * (v151 + 1);
          v153 = v147;
          cstdlib_strcpy(*(*(v15 + 24) + 16 * v150 + 8), *(*(v15 + 24) + v152 + 8));
          cstdlib_strcpy(*(*(v15 + 24) + 16 * v150), *(*(v15 + 24) + v152));
          v147 = v153;
          v150 = (v150 + 1);
          v151 = v150;
          v148 = v153 + *(v15 + 32);
        }

        while (v148 > v150);
        v149 = v189;
        v13 = v171;
      }

      v183 = v150;
      heap_Free(*(*a3 + 8), *(*(v15 + 24) + 16 * v148 + 8));
      heap_Free(*(*a3 + 8), *(*(v15 + 24) + 16 * (v180 + *(v15 + 32)) - 16));
      --v175;
      LODWORD(v72) = v149 - 1;
      v8 = v168;
LABEL_170:
      ssftmap_IteratorClose(v193);
LABEL_171:
      v72 = (v72 + 1);
      v79 = v175;
      v180 = v175;
      v117 = *(v15 + 32) + v175;
      if (v117 > v72)
      {
        continue;
      }

      break;
    }

    v186 = v183;
LABEL_178:
    *(v15 + 32) = v117;
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) left after invalidation step", v69, v70, v71, v180);
    log_OutText(*(*a3 + 32), "POSPARSER", 5, 0, "%d decomposition(s) in total", v154, v155, v156, *(v15 + 32));
LABEL_179:
    v41 = v167;
LABEL_180:
    if (++v41 == 255)
    {
LABEL_183:
      if (!*(v15 + 32))
      {
        v157 = *(v15 + 24);
        if (v157)
        {
          heap_Free(*(*a3 + 8), v157);
          *(v15 + 24) = 0;
        }
      }

      if (*(a3 + 62) == 1 && *(v15 + 96) && v198 | v196)
      {
        if (*(v15 + 32))
        {
          v172 = v13;
          v158 = 0;
          v159 = 8;
          do
          {
            if (v198)
            {
              v160 = *(*(v15 + 24) + v159);
              v161 = v8;
              v162 = v197;
              v163 = cstdlib_strlen(v160);
              v164 = &v160[v162];
              v8 = v161;
              cstdlib_memmove(v164, v160, v163 + 1);
              cstdlib_memcpy(*(*(v15 + 24) + v159), v198, v197);
            }

            if (v196)
            {
              cstdlib_strcat(*(*(v15 + 24) + v159), v196);
            }

            ++v158;
            v159 += 16;
          }

          while (v158 < *(v15 + 32));
          v186 = v158;
          v13 = v172;
        }

        else
        {
          v186 = 0;
        }
      }

LABEL_11:
      v16 = a4 + 104 * v14;
      if (*(v16 + 32))
      {
        *(v16 + 72) = v12;
      }

LABEL_13:
      v11 = ++v12;
      if (v12 >= v8)
      {
LABEL_204:
        if (v198)
        {
          heap_Free(*(*a3 + 8), v198);
        }

        if (v196)
        {
          heap_Free(*(*a3 + 8), v196);
        }

        return v13;
      }

      goto LABEL_3;
    }
  }

  v13 = 0;
  if (v41 != 1)
  {
    goto LABEL_183;
  }

  return v13;
}

uint64_t posparser_getPosMap(void *a1)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v2 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", "araposmap", &v10, &v9, &v11);
  if ((v2 & 0x80000000) == 0 && v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v4 = *(v10 + 8 * i);
      v5 = cstdlib_strchr(v4, 124);
      if (v5)
      {
        *v5 = 0;
        v6 = (v5 + 1);
        v7 = cstdlib_strchr(v5 + 1, 124);
        if (v7)
        {
          *v7 = 0;
          v2 = ssftmap_Insert(a1[32], v4, v6);
          if ((v2 & 0x80000000) != 0)
          {
            break;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t posparser_loc_getDictCharString(void *a1, uint64_t a2, char **a3)
{
  LOBYTE(__c) = 0;
  v18 = 0;
  v17 = -1;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v18, &v17, &__c);
  if ((v5 & 0x80000000) == 0 && v17)
  {
    v6 = cstdlib_strchr(*v18, __c);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = *(*a1 + 8);
    v8 = cstdlib_strlen(*v18);
    v9 = heap_Calloc(v7, 1, (v8 + 1));
    if (v9)
    {
      v14 = v9;
      cstdlib_strcpy(v9, *v18);
      *a3 = v14;
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v10, v11, v12, v13, v16);
      return 2687508490;
    }
  }

  return v5;
}

uint64_t posparser_loc_getPostCorrRule(void *a1, uint64_t a2, uint64_t a3)
{
  LOBYTE(__c) = 0;
  v23 = 0;
  v22 = -1;
  *a3 = 0;
  v5 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v23, &v22, &__c);
  if ((v5 & 0x80000000) == 0 && v22)
  {
    v6 = *v23;
    v7 = cstdlib_strchr(*v23, __c);
    if (v7)
    {
      *v7 = 0;
    }

    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = cstdlib_strchr(v6, 95);
        v10 = v9;
        if (v9)
        {
          *v9 = 0;
        }

        v11 = *(*a1 + 8);
        v12 = cstdlib_strlen(v6);
        v13 = heap_Calloc(v11, 1, (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v14, v15, v16, v17, v21);
          return 2687508490;
        }

        v18 = v13;
        cstdlib_strcpy(v13, v6);
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            if (cstdlib_strcmp(v18, "ENDWORD"))
            {
              if (!cstdlib_strcmp(v18, "IFNOTFOLLOWEDBY"))
              {
                v19 = 2;
                goto LABEL_22;
              }
            }

            else
            {
              v19 = 1;
LABEL_22:
              *a3 = v19;
            }

LABEL_23:
            heap_Free(*(*a1 + 8), v18);
            goto LABEL_24;
          }

          if (v8 != 3)
          {
            goto LABEL_23;
          }

          *(a3 + 40) = v18;
          *(a3 + 48) = cstdlib_strlen(v18);
        }

        else if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_23;
          }

          *(a3 + 24) = v18;
          *(a3 + 32) = cstdlib_strlen(v18);
        }

        else
        {
          *(a3 + 8) = v18;
          *(a3 + 16) = cstdlib_strlen(v18);
        }

LABEL_24:
        ++v8;
        v6 = v10 + 1;
      }

      while (v10);
    }
  }

  return v5;
}

uint64_t posparser_loc_getEmbeddedCharRule(void *a1, uint64_t a2, char *a3)
{
  LOBYTE(__c) = 0;
  v12 = 0;
  v11 = -1;
  v4 = (*(a1[3] + 96))(a1[1], a1[2], "fecfg", a2, &v12, &v11, &__c);
  if ((v4 & 0x80000000) == 0 && v11)
  {
    v5 = *v12;
    v6 = cstdlib_strchr(*v12, __c);
    if (v6)
    {
      *v6 = 0;
    }

    if (v5)
    {
      for (i = 0; ; ++i)
      {
        v8 = cstdlib_strchr(v5, 95);
        if (v8)
        {
          *v8 = 0;
        }

        v9 = a3;
        if (!i)
        {
          goto LABEL_12;
        }

        if (i == 1)
        {
          break;
        }

LABEL_13:
        v5 = v8 + 1;
        if (!v8)
        {
          return v4;
        }
      }

      v9 = a3 + 1;
LABEL_12:
      *v9 = *v5;
      goto LABEL_13;
    }
  }

  return v4;
}

size_t posparser_GetHighestPriority(size_t result, _WORD *a2, int a3)
{
  if (*a2 >= 2u)
  {
    v6 = result;
    v7 = 0;
    v4 = 0;
    v8 = 0;
    do
    {
      result = cstdlib_strlen(*(v6 + 8 * v7));
      if (result)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          if (*(*(v6 + 8 * v7) + v10) == a3)
          {
            ++v9;
          }

          ++v10;
        }

        while (v9 <= 4u && result > v10);
        if (v9 == 5 && result > v10)
        {
          v13 = cstdlib_strchr((*(v6 + 8 * v7) + v10), a3);
          if (v13)
          {
            *v13 = 0;
          }

          result = cstdlib_atoi((*(v6 + 8 * v7) + v10));
          if (v8 < result)
          {
            result = cstdlib_atoi((*(v6 + 8 * v7) + v10));
            v8 = result;
            v4 = v7;
          }
        }
      }

      ++v7;
    }

    while (v7 < *a2);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t posparserGrowStr(uint64_t a1, uint64_t *a2, unsigned int a3, _WORD *a4, __int16 a5)
{
  if (*a4 >= a3)
  {
    return 0;
  }

  v15 = v5;
  *a4 = a5 + a3;
  v8 = heap_Realloc(*(*a1 + 8), *a2, (a5 + a3) + 2);
  if (v8)
  {
    v13 = v8;
    result = 0;
    *a2 = v13;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v9, v10, v11, v12, v15);
    return 2687508490;
  }

  return result;
}

void *posPInsertTOKMarker(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  v5 = *a2;
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v6 = (a1 + 44);
    v7 = 1;
    while (1)
    {
      v8 = *v6;
      v6 += 8;
      if (a3[3] < v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        LOWORD(v7) = *a2;
        break;
      }
    }

    v7 = v7;
  }

  v9 = a1 + 32 * v7;
  cstdlib_memmove((v9 + 32), v9, 32 * (v5 - v7));
  result = cstdlib_memcpy(v9, a3, 0x20uLL);
  ++*a2;
  return result;
}

uint64_t isMAPPINGXBI2A(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 152) == 1)
  {
    return isCharInStr(a2, "XBI");
  }

  else
  {
    return 0;
  }
}

uint64_t isCharInStr(unsigned __int8 *a1, const char *a2)
{
  v4 = Utf8_LengthInBytes(a1, 1);
  v5 = cstdlib_strlen(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = Utf8_LengthInBytes(&a2[v7], 1);
    v9 = v8;
    if (v8 == v4 && !cstdlib_strncmp(a1, &a2[v7], v8))
    {
      break;
    }

    v7 += v9;
    if (v7 >= v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t isDiacritic(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 120))
  {
    v3 = *(a1 + 120);
  }

  else
  {
    v3 = "^FNKauioR";
  }

  return isCharInStr(a2, v3);
}

uint64_t isSMSPunc(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t isPunc_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return isCharInStr(a2, v2);
  }

  else
  {
    return 0;
  }
}

uint64_t inSMSMode(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a2 + 12);
  do
  {
    v8 = a2 + 32 * v6;
    if (a1 < (*(v8 + 12) - *(a2 + 12)))
    {
      break;
    }

    if (*v8 == 21 && (v9 = *(v8 + 24)) != 0 && !LH_stricmp(v9, "sms"))
    {
      if (a3 <= (v6 + 1))
      {
        v10 = (v6 + 1);
      }

      else
      {
        v10 = a3;
      }

      while (a3 > ++v6)
      {
        if (*(a2 + 32 * v6) == 21)
        {
          v11 = v7[8 * v6] - *v7;
          goto LABEL_17;
        }
      }

      LOWORD(v11) = *(a2 + 16);
      v6 = v10;
LABEL_17:
      if (a1 >= (*(v8 + 12) - *v7) && v11 > a1)
      {
        return 1;
      }
    }

    else
    {
      ++v6;
    }
  }

  while (a3 > v6);
  return 0;
}

uint64_t posparserInsertWordMarker(uint64_t a1, uint64_t *a2, unsigned __int16 *a3, unsigned int a4, int a5, char *__s, _WORD *a7)
{
  v7 = __s;
  v12 = *a2;
  v13 = cstdlib_strlen(__s);
  __src = xmmword_26ECDBBB8;
  v44 = unk_26ECDBBC8;
  v17 = *a3;
  if (v17 >= 2)
  {
    v18 = (v12 + 44);
    v19 = 1;
    while (1)
    {
      v20 = *v18;
      v18 += 8;
      if (v20 - *(v12 + 12) > a4)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v21 = *a3;
        v19 = (v17 - 2) + 2;
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v21 = v19;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v21 = 1;
  v19 = 1;
  if (!a4)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

LABEL_8:
  v22 = a4;
  while (v7[v22 - 1] != 32)
  {
    if (!--v22)
    {
      v22 = 0;
      break;
    }
  }

  v23 = v22;
LABEL_15:
  if (v13 <= a4)
  {
    LOWORD(v7) = a4;
    v26 = a4;
  }

  else
  {
    v24 = v7 + 1;
    v25 = v7[a4 + 1];
    LOWORD(v7) = a4;
    v26 = a4;
    if (v25 != 32)
    {
      LOWORD(v7) = a4;
      do
      {
        v7 = (v7 + 1);
        v26 = v7;
      }

      while (v13 > v7 && v7[v24] != 32);
    }
  }

  if (v17 < 2)
  {
LABEL_27:
    log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004). Word start pos=%d. Word end pos=%d. This pos=%d", v14, v15, v16, v23);
    v27 = v21 - 1;
  }

  else
  {
    v27 = 1;
    while (1)
    {
      v28 = (v12 + 32 * v27);
      if (*v28 == 1 && v28[3] - *(v12 + 12) == v23)
      {
        break;
      }

      if (v17 <= ++v27)
      {
        goto LABEL_27;
      }
    }
  }

  *a7 = v27 + 1;
  v29 = (v12 + 32 * v27);
  if (a4 == v7)
  {
    v30 = 1;
  }

  else
  {
    v30 = v26 - a4;
  }

  DWORD1(__src) = v29[1] - (v26 - a4) + v29[2];
  DWORD2(__src) = v30;
  v29[2] = a4 - v23;
  v29[4] = a4 - v23;
  HIDWORD(__src) = a5 + a4 + *(v12 + 12);
  LODWORD(v44) = v26 - a4;
  v31 = heap_Realloc(*(*a1 + 8), v12, 32 * *a3 + 32);
  if (v31)
  {
    v36 = v31;
    v37 = *a3;
    v38 = v31 + 32 * v19;
    if (v37 != v21)
    {
      cstdlib_memmove((v38 + 32), v38, 32 * (v37 - v19));
    }

    cstdlib_memcpy(v38, &__src, 0x20uLL);
    result = 0;
    ++*a3;
    *a2 = v36;
  }

  else
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v32, v33, v34, v35, v40);
    return 2687508490;
  }

  return result;
}

uint64_t posparser_applyEmbeddedRules(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v6 = a2 + 104 * i;
      if (!*(v6 + 88) && !*(v6 + 80) && !*(v6 + 84) && !*(v6 + 92) && !*(v6 + 12))
      {
        v7 = *(v6 + 8);
        v8 = (v7 + 1);
        v9 = *(v6 + 10);
        v10 = v8 >= a5 || v8 == 0;
        if (!v10 && v9 - 1 > v8)
        {
          v12 = v7 + 1;
          v13 = *(a1 + 184);
          v14 = v13;
          do
          {
            if (v14)
            {
              v15 = 0;
              v16 = 0;
              v17 = *(a4 + v12);
              do
              {
                v18 = *(a1 + 176);
                if (v17 == *(v18 + v15))
                {
                  v17 = *(v18 + v15 + 1);
                  *(a4 + v12) = v17;
                  v13 = *(a1 + 184);
                }

                ++v16;
                v15 += 2;
              }

              while (v16 < v13);
              v9 = *(v6 + 10);
              v14 = v13;
            }

            ++v12;
          }

          while (v12 < a5 && v9 - 1 > v12);
        }
      }
    }
  }

  return 0;
}

uint64_t setPosparserFeatureVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v90 = 0;
  v15 = 0;
  if (posparser_isFeatureRequired(a3, 0, &v90, a8, *(a1 + 236)) == 1)
  {
    v15 = posparser_setFeature(a3, *a1, 0, a5, a2, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 1, &v90, a8, *(a1 + 236)) == 1)
  {
    if (!a4)
    {
      v21 = *a1;
      v22 = *(a1 + 236);
      v20 = "SB";
      goto LABEL_17;
    }

    v16 = a6 + 104 * (a4 - 1);
    v19 = *(v16 + 40);
    v18 = (v16 + 40);
    v17 = v19;
    if (v19)
    {
      if (!cstdlib_strcmp(v17, "MULTIWORD"))
      {
        LOWORD(v23) = a4;
        do
        {
          v24 = v23 - 1;
          v23 = (v23 - 1);
          if (v24 < 0)
          {
            break;
          }

          v25 = *(a6 + 104 * v23 + 40);
          if (!v25)
          {
            break;
          }
        }

        while (!cstdlib_strcmp(v25, "MULTIWORD"));
        v21 = *a1;
        v20 = *(a6 + 104 * v23 + 40);
        goto LABEL_16;
      }

      v20 = *v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = *a1;
LABEL_16:
    v22 = *(a1 + 236);
LABEL_17:
    v15 = posparser_setFeature(a3, v21, 1, a5, v20, a8, v22);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 2, &v90, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_35;
  }

  v26 = a4 - 2;
  if (a4 >= 2)
  {
    v27 = a6 + 104 * v26;
    v30 = *(v27 + 40);
    v29 = (v27 + 40);
    v28 = v30;
    if (v30)
    {
      if (!cstdlib_strcmp(v28, "MULTIWORD"))
      {
        v34 = a4 - 2;
        if ((v26 & 0x8000) == 0)
        {
          while (1)
          {
            v35 = *(a6 + 104 * v34 + 40);
            if (!v35 || cstdlib_strcmp(v35, "MULTIWORD"))
            {
              break;
            }

            v36 = v34--;
            if (v36 <= 0)
            {
              v34 = -1;
              break;
            }
          }
        }

        v32 = *a1;
        v31 = *(a6 + 104 * v34 + 40);
        goto LABEL_33;
      }

      v31 = *v29;
    }

    else
    {
      v31 = 0;
    }

    v32 = *a1;
LABEL_33:
    v33 = *(a1 + 236);
    goto LABEL_34;
  }

  if (a4 != 1)
  {
    goto LABEL_35;
  }

  v32 = *a1;
  v33 = *(a1 + 236);
  v31 = "SB";
LABEL_34:
  v15 = posparser_setFeature(a3, v32, 2, a5, v31, a8, v33);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

LABEL_35:
  if (posparser_isFeatureRequired(a3, 3, &v90, a8, *(a1 + 236)) == 1)
  {
    v37 = a6 + 104 * a4;
    v38 = *(v37 + 48);
    if (!v38)
    {
      v38 = *(v37 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 3, a5, v38, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  v88 = a4 + 1;
  if (a4 + 1 < a7 && posparser_isFeatureRequired(a3, 4, &v90, a8, *(a1 + 236)) == 1)
  {
    v39 = a6 + 104 * v88;
    v40 = *(v39 + 48);
    if (!v40)
    {
      v40 = *(v39 + 40);
    }

    v15 = posparser_setFeature(a3, *a1, 4, a5, v40, a8, *(a1 + 236));
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }
  }

  if (posparser_isFeatureRequired(a3, 9, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 10, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 11, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 12, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 13, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 14, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 15, &v90, a8, *(a1 + 236)) != 1 && posparser_isFeatureRequired(a3, 16, &v90, a8, *(a1 + 236)) != 1)
  {
    goto LABEL_102;
  }

  v41 = cstdlib_strlen(a2);
  v42 = Utf8_LengthInUtf8chars(a2, v41);
  v43 = posparser_setFeature(a3, *a1, 9, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 10, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 11, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 12, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 13, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 14, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v43 = posparser_setFeature(a3, *a1, 15, a5, "=", a8, *(a1 + 236));
  if ((v43 & 0x80000000) != 0)
  {
    return v43;
  }

  v15 = posparser_setFeature(a3, *a1, 16, a5, "=", a8, *(a1 + 236));
  if ((v15 & 0x80000000) == 0)
  {
    v44 = v42;
    if (v42)
    {
      v45 = 0;
      v46 = v42 - 2;
      v80 = v42 != 2;
      v81 = v42 != 3;
      v83 = v42 != 4;
      v84 = v42;
      v82 = v42;
      v47 = 0;
      do
      {
        v86 = v45;
        v87 = v46;
        v85 = v47;
        if (v44 == 1 || v47)
        {
          if (v44 != 2 && v47 == 1)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v52 = utf8_determineUTF8CharLength(a2[v45]);
            cstdlib_strncpy(__b, a2, v52 + v45);
            v15 = posparser_setFeature(a3, *a1, 10, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v51 = 1;
            v49 = v83;
            v50 = v81;
            goto LABEL_79;
          }

          if (v44 != 3 && v47 == 2)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v53 = utf8_determineUTF8CharLength(a2[v45]);
            cstdlib_strncpy(__b, a2, v53 + v45);
            v15 = posparser_setFeature(a3, *a1, 11, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v51 = 1;
            v49 = v83;
            goto LABEL_78;
          }

          if (v44 == 4)
          {
            v49 = v83;
            v51 = v80;
            v50 = v81;
            goto LABEL_80;
          }

          v49 = v83;
          v51 = v80;
          v50 = v81;
          if (v85 == 3)
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            v54 = utf8_determineUTF8CharLength(a2[v86]);
            cstdlib_strncpy(__b, a2, v54 + v86);
            v15 = posparser_setFeature(a3, *a1, 12, a5, __b, a8, *(a1 + 236));
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }

            v49 = 1;
            v51 = 1;
LABEL_78:
            v50 = 1;
LABEL_79:
            v46 = v87;
          }
        }

        else
        {
          cstdlib_memset(__b, 0, 0x10uLL);
          utf8_getUTF8Char(a2, 0, __b);
          v48 = posparser_setFeature(a3, *a1, 9, a5, __b, a8, *(a1 + 236));
          v46 = v87;
          v15 = v48;
          v49 = v83;
          v51 = v80;
          v50 = v81;
          if ((v48 & 0x80000000) != 0)
          {
            return v15;
          }
        }

LABEL_80:
        if (v84 != 1 && v46 == -1)
        {
          v55 = v49;
          cstdlib_memset(__b, 0, 0x10uLL);
          utf8_getUTF8Char(a2, v86, __b);
          v56 = posparser_setFeature(a3, *a1, 13, a5, __b, a8, *(a1 + 236));
          v49 = v55;
          v46 = v87;
          v15 = v56;
          if ((v56 & 0x80000000) != 0)
          {
            return v15;
          }
        }

        v57 = v51 ^ 1;
        if (v46)
        {
          v57 = 1;
        }

        if (v57)
        {
          v61 = v50 ^ 1;
          if (v46 != 1)
          {
            v61 = 1;
          }

          v58 = v86;
          if (v61)
          {
            if (v46 == 2)
            {
              v62 = v49;
            }

            else
            {
              v62 = 0;
            }

            v60 = v85;
            if (v62)
            {
              cstdlib_memset(__b, 0, 0x10uLL);
              cstdlib_strcpy(__b, &a2[v86]);
              v15 = posparser_setFeature(a3, *a1, 16, a5, __b, a8, *(a1 + 236));
              if ((v15 & 0x80000000) != 0)
              {
                return v15;
              }
            }
          }

          else
          {
            cstdlib_memset(__b, 0, 0x10uLL);
            cstdlib_strcpy(__b, &a2[v86]);
            v15 = posparser_setFeature(a3, *a1, 15, a5, __b, a8, *(a1 + 236));
            v60 = v85;
            if ((v15 & 0x80000000) != 0)
            {
              return v15;
            }
          }

          v59 = v86;
        }

        else
        {
          cstdlib_memset(__b, 0, 0x10uLL);
          v58 = v86;
          cstdlib_strcpy(__b, &a2[v86]);
          v15 = posparser_setFeature(a3, *a1, 14, a5, __b, a8, *(a1 + 236));
          if ((v15 & 0x80000000) != 0)
          {
            return v15;
          }

          v59 = v86;
          v60 = v85;
        }

        v45 = utf8_determineUTF8CharLength(a2[v59]) + v58;
        v47 = v60 + 1;
        v46 = v87 - 1;
        v44 = v84;
      }

      while (v47 < v82);
    }

LABEL_102:
    if (posparser_isFeatureRequired(a3, 5, &v90, a8, *(a1 + 236)) != 1 || (a4 && (v63 = a6 + 104 * (a4 - 1), *(v63 + 12) != 1) && !*(v63 + 74) ? (v64 = *a1, v66 = *(a6 + 104 * (a4 - 1) + 56), v65 = *(a1 + 236)) : (v64 = *a1, v65 = *(a1 + 236), v66 = "="), v15 = posparser_setFeature(a3, v64, 5, a5, v66, a8, v65), (v15 & 0x80000000) == 0))
    {
      if (posparser_isFeatureRequired(a3, 6, &v90, a8, *(a1 + 236)) != 1 || (a4 >= 2 && (v67 = a6 + 104 * (a4 - 2), *(v67 + 12) != 1) && !*(v67 + 74) ? (v68 = *a1, v70 = *(a6 + 104 * (a4 - 2) + 56), v69 = *(a1 + 236)) : (v68 = *a1, v69 = *(a1 + 236), v70 = "="), v15 = posparser_setFeature(a3, v68, 6, a5, v70, a8, v69), (v15 & 0x80000000) == 0))
      {
        if (posparser_isFeatureRequired(a3, 7, &v90, a8, *(a1 + 236)) != 1 || (v88 < a7 && (v71 = a6 + 104 * v88, *(v71 + 12) != 1) && !*(v71 + 74) ? (v72 = *a1, v74 = *(a6 + 104 * v88 + 56), v73 = *(a1 + 236)) : (v72 = *a1, v73 = *(a1 + 236), v74 = "="), v15 = posparser_setFeature(a3, v72, 7, a5, v74, a8, v73), (v15 & 0x80000000) == 0))
        {
          if (posparser_isFeatureRequired(a3, 8, &v90, a8, *(a1 + 236)) == 1)
          {
            if (a4 + 2 >= a7 || (v75 = a6 + 104 * (a4 + 2), *(v75 + 12) == 1) || *(v75 + 74))
            {
              v76 = *a1;
              v77 = *(a1 + 236);
              v78 = "=";
            }

            else
            {
              v76 = *a1;
              v78 = *(a6 + 104 * (a4 + 2) + 56);
              v77 = *(a1 + 236);
            }

            return posparser_setFeature(a3, v76, 8, a5, v78, a8, v77);
          }
        }
      }
    }
  }

  return v15;
}

uint64_t posparser_GetPOSAndDiacritics(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10, _DWORD *a11)
{
  v13 = a6;
  v87[0] = 0;
  v86 = 0;
  v85 = 0;
  __s2 = 0;
  v84 = 0;
  v82 = 0;
  *a11 = 0;
  v16 = a4 + 104 * a6;
  *(v16 + 32) = 0;
  if (a9)
  {
    for (i = 0; i != a9; ++i)
    {
      for (j = *(a8 + 8 * i); ; j = v19 + 1)
      {
        v19 = cstdlib_strchr(j, 32);
        if (!v19)
        {
          break;
        }

        ++*(v16 + 32);
      }
    }

    v20 = 16 * *(v16 + 32);
  }

  else
  {
    v20 = 0;
  }

  v21 = heap_Calloc(*(*a1 + 8), 1, v20);
  *(v16 + 24) = v21;
  if (!v21)
  {
LABEL_59:
    v70 = 2687508490;
    v71 = *a1;
LABEL_60:
    log_OutPublic(*(v71 + 32), "POSPARSER", 68000, 0, v22, v23, v24, v25, v73);
    return v70;
  }

  *(v16 + 32) = 0;
  if (!a9)
  {
    v70 = 0;
LABEL_62:
    heap_Free(*(*a1 + 8), *(v16 + 24));
    *(v16 + 24) = 0;
    goto LABEL_63;
  }

  v75 = v13;
  v26 = 0;
  isReconcilable = 0;
  v27 = 0;
  v74 = a7;
  v76 = v16 + 104 * a7;
  v77 = a8;
  v28 = "POSPARSER";
  do
  {
    v29 = cstdlib_strchr(*(a8 + 8 * v26), a10);
    if (v29)
    {
      *v29 = 0;
    }

    v79 = v26;
    v30 = *(a8 + 8 * v26);
    v31 = cstdlib_strchr(v30, 32);
    if (v30)
    {
      v35 = v31;
      do
      {
        if (v35)
        {
          *v35 = 0;
        }

        if (v27)
        {
          if (*(a1 + 248))
          {
            if (!v85 && (v85 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0 || !__s2 && (__s2 = heap_Calloc(*(*a1 + 8), 1, 1)) == 0)
            {
              v70 = 2687508490;
              log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v39, v40, v41, v42, v73);
              goto LABEL_63;
            }

            isReconcilable = posparser_ExtractPunctuation(a1, a5, &v85, &v84, &__s2, &v82);
            if ((isReconcilable & 0x80000000) != 0)
            {
              goto LABEL_58;
            }

            v43 = a1;
            v44 = v28;
            v45 = a5;
            v46 = v43;
            v47 = *(*v43 + 8);
            v48 = v84;
            v49 = cstdlib_strlen(v30);
            v50 = heap_Calloc(v47, 1, (v48 + v49 + v82 + 1));
            *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v50;
            if (!v50)
            {
              v70 = 2687508490;
              v71 = *v46;
              goto LABEL_60;
            }

            if (v85)
            {
              cstdlib_strcpy(v50, v85);
              v50 = *(*(v16 + 24) + 16 * *(v16 + 32) + 8);
            }

            a5 = v45;
            cstdlib_strcat(v50, v30);
            v28 = v44;
            if (__s2)
            {
              cstdlib_strcat(*(*(v16 + 24) + 16 * *(v16 + 32) + 8), __s2);
            }

            a1 = v46;
            log_OutText(*(*v46 + 32), v28, 5, 0, "word=%s FOUND in TAG[%d] POS=%s DIA=%s", v51, v52, v53, a5);
            goto LABEL_44;
          }

          v86 = 0;
          if (a2 != 1)
          {
            goto LABEL_41;
          }

          log_OutText(*(*a1 + 32), v28, 5, 0, "FOUND %s in dict as %s - try reconcile", v32, v33, v34, a5);
          isReconcilable = posparser_isReconcilable(a1, a3, v30, *(v16 + 8), *(v76 + 10), &v86, v87);
          if ((isReconcilable & 0x80000000) != 0)
          {
            goto LABEL_58;
          }

          if (v86)
          {
            if (v86 == 1 && v87[0])
            {
              posparser_PostProcess(a1, v87);
              v57 = *(*a1 + 8);
              v58 = v87[0];
              v59 = cstdlib_strlen(v87[0]);
              v60 = heap_Calloc(v57, 1, (v59 + 1));
              *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v60;
              if (!v60)
              {
                goto LABEL_59;
              }

              cstdlib_strcpy(v60, v58);
              heap_Free(*(*a1 + 8), v58);
              v87[0] = 0;
              v64 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s(RECONCILED)";
            }

            else
            {
LABEL_41:
              v65 = *(*a1 + 8);
              v66 = cstdlib_strlen(v30);
              v67 = heap_Calloc(v65, 1, (v66 + 1));
              *(*(v16 + 24) + 16 * *(v16 + 32) + 8) = v67;
              if (!v67)
              {
                goto LABEL_59;
              }

              cstdlib_strcpy(v67, v30);
              v64 = "word=%s FOUND in TAG[%d] POS=%s DIA=%s";
            }

            log_OutText(*(*a1 + 32), v28, 5, 0, v64, v61, v62, v63, a5);
LABEL_44:
            ++*(v16 + 32);
            if (!v35)
            {
              goto LABEL_54;
            }

            goto LABEL_45;
          }

          log_OutText(*(*a1 + 32), v28, 5, 0, "FOUND in %s in dict, but couldnt reconcile with partial diacritics - FAIL ; skip diacritic", v54, v55, v56, v30);
          heap_Free(*(*a1 + 8), *(*(v16 + 24) + 16 * *(v16 + 32)));
          *(*(v16 + 24) + 16 * *(v16 + 32)) = 0;
          if (!v35)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v36 = *(*a1 + 8);
          v37 = cstdlib_strlen(v30);
          v38 = heap_Calloc(v36, 1, (v37 + 1));
          *(*(v16 + 24) + 16 * *(v16 + 32)) = v38;
          if (!v38)
          {
            goto LABEL_59;
          }

          cstdlib_strcpy(v38, v30);
          if (!v35)
          {
LABEL_54:
            ++v27;
            break;
          }
        }

LABEL_45:
        v68 = cstdlib_strchr(v35 + 1, 32);
        if (v27)
        {
          v69 = 0;
        }

        else
        {
          v69 = v35 + 1;
        }

        if (v68)
        {
          v30 = v35 + 1;
        }

        else
        {
          v30 = v69;
        }

        ++v27;
        v35 = v68;
      }

      while (v30);
    }

    v26 = v79 + 1;
    a8 = v77;
  }

  while (v79 + 1 != a9);
  if (!*(v16 + 32))
  {
    v70 = isReconcilable;
    goto LABEL_62;
  }

  *(v16 + 72) = v74 + v75;
  log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "FOUND WORD %s%d,%d in  POS dict with %d POS tags", v32, v33, v34, a5);
  *a11 = 1;
LABEL_58:
  v70 = isReconcilable;
LABEL_63:
  if (v85)
  {
    heap_Free(*(*a1 + 8), v85);
  }

  if (__s2)
  {
    heap_Free(*(*a1 + 8), __s2);
  }

  return v70;
}

uint64_t posparser_isReconcilable(uint64_t a1, uint64_t a2, char *__s, unsigned int a4, int a5, _DWORD *a6, uint64_t *a7)
{
  LODWORD(v9) = a5;
  v13 = cstdlib_strlen(__s);
  v105 = 3 * v13;
  *a6 = 1;
  v14 = heap_Calloc(*(*a1 + 8), 1, (3 * v13) + 1);
  v106 = v14;
  if (!v14)
  {
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v15, v16, v17, v18, v87);
    return 2687508490;
  }

  v19 = v14;
  cstdlib_strcpy(v14, __s);
  v104 = v13;
  if (a4 >= v9 || !v13)
  {
    goto LABEL_128;
  }

  v20 = 0;
  v21 = 0;
  v22 = a4;
  v9 = v9;
  v23 = "^FNKauioR";
  v100 = a7;
  v101 = v9;
  while (1)
  {
    if (v20 >= v13)
    {
      goto LABEL_21;
    }

    v24 = v106;
    while (1)
    {
      v25 = *(a1 + 120) ? *(a1 + 120) : v23;
      if (!isCharInStr((v24 + v20), v25))
      {
        break;
      }

      v26 = Utf8_LengthInBytes((v24 + v20), 1);
LABEL_17:
      v20 += v26;
      if (v20 >= v13)
      {
        goto LABEL_20;
      }
    }

    v27 = v23;
    v28 = Utf8_LengthInBytes((a2 + v22), 1);
    if (Utf8_LengthInBytes((v24 + v20), 1) == v28 && !cstdlib_strncmp((a2 + v22), (v24 + v20), v28))
    {
      goto LABEL_30;
    }

    if (*(a1 + 152) != 1 || *(a2 + v22) != 65)
    {
      v26 = Utf8_LengthInBytes((v24 + v20), 1);
      v23 = v27;
      if ((v26 & 0xFFFE) != 0)
      {
        goto LABEL_17;
      }

      *a6 = 0;
LABEL_20:
      v9 = v101;
      goto LABEL_21;
    }

    v29 = *(a1 + 208);
    if (v29 <= v21)
    {
LABEL_30:
      v29 = v21;
LABEL_31:
      v9 = v101;
      goto LABEL_32;
    }

    v30 = v21;
    v31 = (*(a1 + 200) + 6 * v21);
    while (1)
    {
      v32 = *v31;
      v31 += 3;
      v33 = v22 == v32;
      if (v22 < v32)
      {
        goto LABEL_87;
      }

      if (v33)
      {
        break;
      }

      ++v30;
      LOWORD(v21) = v21 + 1;
      if (v29 == v30)
      {
        goto LABEL_31;
      }
    }

    v103 = v20;
    v95 = a6;
    if (v29 <= v30)
    {
      v42 = 0;
      v91 = v30;
    }

    else
    {
      v40 = v30;
      v41 = 3 * v21;
      v42 = 0;
      v43 = 2 * v41;
      do
      {
        v44 = *(a1 + 200);
        if (v22 != *(v44 + v43))
        {
          break;
        }

        v42 += cstdlib_strlen((v44 + v43 + 2));
        ++v40;
        v43 += 6;
      }

      while (v40 < *(a1 + 208));
      v91 = v40;
      a6 = v95;
    }

    v97 = v42;
    utf8_GetPreviousValidUtf8Offset(v24 + v20, &v103);
    v52 = v103 >= v20 ? v20 : v103;
    if (v52)
    {
      v53 = 1;
      while (1)
      {
        v54 = *(a1 + 120) ? *(a1 + 120) : v27;
        if (!isCharInStr((v24 + v52), v54))
        {
          break;
        }

        v53 += Utf8_LengthInBytes((v24 + v52), 1);
        v103 = v52;
        utf8_GetPreviousValidUtf8Offset(v24 + v52, &v103);
        if (v103 < v52)
        {
          v52 = v103;
        }

        if (!v52)
        {
          v52 = 0;
          break;
        }
      }

      a6 = v95;
    }

    else
    {
      v52 = 0;
      v53 = 1;
    }

    if (v97 > v53)
    {
      break;
    }

    if (v97 != v53)
    {
LABEL_87:
      v29 = v30;
      goto LABEL_31;
    }

    if (v97)
    {
      v56 = 0;
      do
      {
        if (cstdlib_strlen((*(a1 + 200) + 6 * v56 + 2)))
        {
          v57 = 0;
          v58 = 0;
          do
          {
            *(v24 + v52++) = *(*(a1 + 200) + 6 * v30 + 6 * v56 + v57 + 2);
            v57 = ++v58;
          }

          while (cstdlib_strlen((*(a1 + 200) + 6 * v56 + 2)) > v58);
        }

        ++v56;
      }

      while (v56 != v97);
      a6 = v95;
    }

    v9 = v101;
LABEL_86:
    v29 = v91;
LABEL_32:
    v23 = v27;
    if (*a6 == 1)
    {
      v34 = *(a1 + 208);
      if (v34 > v29)
      {
        v35 = (v22 + 1);
        v36 = *(a1 + 200);
        v21 = v29;
        v37 = (v36 + 6 * v29);
        while (1)
        {
          v38 = *v37;
          v37 += 3;
          v39 = v38 == v35;
          if (v38 > v35)
          {
            goto LABEL_21;
          }

          if (v39)
          {
            break;
          }

          ++v21;
          LOWORD(v29) = v29 + 1;
          if (v34 == v21)
          {
            v21 = *(a1 + 208);
            goto LABEL_21;
          }
        }

        v92 = v29;
        if (*(a1 + 120))
        {
          v45 = *(a1 + 120);
        }

        else
        {
          v45 = v27;
        }

        if (!isCharInStr((v36 + 6 * v21 + 2), v45))
        {
          goto LABEL_21;
        }

        v96 = a6;
        v46 = 0;
        if (*(a1 + 208) <= v21)
        {
          v47 = v21;
        }

        else
        {
          v47 = v21;
          v48 = 6 * v92;
          do
          {
            v49 = *(a1 + 200);
            if (v22 + 1 != *(v49 + v48))
            {
              break;
            }

            v50 = v49 + v48;
            v51 = *(a1 + 120) ? *(a1 + 120) : v27;
            if (!isCharInStr((v50 + 2), v51))
            {
              break;
            }

            v46 += cstdlib_strlen((*(a1 + 200) + v48 + 2));
            ++v47;
            v48 += 6;
          }

          while (v47 < *(a1 + 208));
        }

        v98 = v47;
        v59 = v20 + 1;
        v88 = v104;
        v60 = 0;
        if (v104 > (v20 + 1))
        {
          v61 = (v20 + 1);
          v62 = &v106[v61];
          v63 = v104 - v61;
          do
          {
            if (*(a1 + 120))
            {
              v64 = *(a1 + 120);
            }

            else
            {
              v64 = v27;
            }

            if (!isCharInStr(v62, v64))
            {
              break;
            }

            v60 += Utf8_LengthInBytes(v62++, 1);
            --v63;
          }

          while (v63);
        }

        if (v60 < v46)
        {
          v65 = v21;
          v21 = v98;
          result = posparser_GrowAndInsert(a1, &v106, v46, v60, (v20 + 1), v65, v98, &v104, &v105);
          a6 = v96;
          v9 = v101;
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v20 = v46 + v20 - v60;
          goto LABEL_125;
        }

        a6 = v96;
        v9 = v101;
        if (v60 != v46)
        {
          if (v60 > v46)
          {
            v71 = 0;
            v72 = 0;
            v73 = v60 - v46;
            v89 = v106;
            do
            {
              v74 = v71 + v21;
              if (v74 >= *(a1 + 208))
              {
                break;
              }

              v99 = v72;
              v93 = v71 + v59;
              v75 = *(a1 + 200) + 6 * v74;
              v72 = v71;
              v76 = cstdlib_strlen((v75 + 2));
              if (cstdlib_strncmp((v89 + v93), (v75 + 2), v76))
              {
                a6 = v96;
                v71 = v72;
                LOWORD(v72) = v99;
                break;
              }

              v77 = cstdlib_strlen((*(a1 + 200) + 6 * v74 + 2));
              v72 = v99 + v77;
              v71 = (v99 + v77);
              a6 = v96;
            }

            while (v71 < v73);
            if (v73 != v72)
            {
              v78 = v73 - v72;
              v79 = (v73 - v72);
              v80 = v106;
              v90 = v78;
              cstdlib_memmove(&v106[v71 + v59], &v106[v71 + v59 + v78], v88 - v78);
              if (v79 > v72)
              {
                do
                {
                  v81 = v21 + v72;
                  if (v81 >= *(a1 + 208))
                  {
                    break;
                  }

                  v94 = v72;
                  if (cstdlib_strlen((*(a1 + 200) + 6 * v81 + 2)))
                  {
                    v82 = 0;
                    v83 = 0;
                    do
                    {
                      *(v80 + (v59 + v94) + v83) = *(*(a1 + 200) + 6 * v81 + v82 + 2);
                      v84 = v80;
                      v85 = v83 + 1;
                      v82 = (v83 + 1);
                      v86 = cstdlib_strlen((*(a1 + 200) + 6 * v81 + 2)) > v82;
                      v83 = v85;
                      v80 = v84;
                    }

                    while (v86);
                  }

                  LOWORD(v72) = v94 + 1;
                }

                while ((v94 + 1) < v90);
              }

              v104 = v88 - v90;
              *(v80 + (v88 - v90)) = 0;
              a6 = v96;
            }

            v9 = v101;
          }

          goto LABEL_125;
        }

        if (v98 <= v21)
        {
          v21 = v98;
LABEL_125:
          v23 = v27;
          goto LABEL_21;
        }

        v66 = v106;
        v67 = v21;
        v23 = v27;
        do
        {
          if (*(a1 + 208) < v98)
          {
            break;
          }

          v68 = a6;
          if (cstdlib_strlen((*(a1 + 200) + 6 * v67 + 2)))
          {
            v69 = 0;
            v70 = 0;
            do
            {
              *(v66 + v59++) = *(*(a1 + 200) + 6 * v67 + v69 + 2);
              v69 = ++v70;
            }

            while (cstdlib_strlen((*(a1 + 200) + 6 * v67 + 2)) > v70);
          }

          ++v67;
          a6 = v68;
          v23 = v27;
        }

        while (v67 < v98);
        v21 = v98;
        goto LABEL_20;
      }
    }

    v21 = v29;
LABEL_21:
    if (++v22 < v9)
    {
      ++v20;
      v13 = v104;
      if (v104 > v20)
      {
        continue;
      }
    }

    v19 = v106;
    a7 = v100;
LABEL_128:
    if (!*a6)
    {
      heap_Free(*(*a1 + 8), v19);
      v19 = 0;
    }

    result = 0;
    *a7 = v19;
    return result;
  }

  result = posparser_GrowAndInsert(a1, &v106, v97, v53, v20, v30, v91, &v104, &v105);
  v9 = v101;
  if ((result & 0x80000000) == 0)
  {
    v20 = v97 + v20 - v53;
    goto LABEL_86;
  }

  return result;
}

uint64_t posparser_PostProcess(uint64_t a1, const char **a2)
{
  if (!*(a1 + 168))
  {
    if (LH_stricmp("arx", (a1 + 186)))
    {
      return 0;
    }

    v26 = *a2;
    v27 = cstdlib_strlen(*a2);
    if (!v27)
    {
LABEL_75:
      result = 0;
      *a2 = v26;
      return result;
    }

    v28 = v27;
    v29 = -2;
    v30 = 3;
    v31 = v27;
    while (1)
    {
      v32 = v30 - 2;
      v33 = v28;
      if (v30 - 2 < v28)
      {
        v34 = &v26[v30 - 3];
        v35 = *v34;
        if (v35 > 0x68)
        {
          if (v35 == 111)
          {
            if (v26[v30 - 2] == 111)
            {
              goto LABEL_43;
            }
          }

          else if (v35 == 105 && v26[v30 - 2] == 105)
          {
LABEL_43:
            v36 = &v26[v30 - 2];
            goto LABEL_44;
          }
        }

        else if (v35 == 94)
        {
          if (v26[v30 - 2] == 94)
          {
            goto LABEL_43;
          }
        }

        else if (v35 == 97 && v26[v30 - 2] == 97)
        {
          goto LABEL_43;
        }
      }

      if (v30 != v33 || (v37 = &v26[v30], v34 = &v26[v30 - 3], *v34 != 70) || (v38 = *(v37 - 2), v36 = (v37 - 2), v38 != 65) || v26[v30 - 1] != 70)
      {
        if (v32 < v33)
        {
          v39 = &v26[v30];
          if (v26[v30 - 3] == 73)
          {
            v41 = *(v39 - 2);
            v40 = v39 - 2;
            if (v41 == 97)
            {
              if (v30 - 1 < v33 && v26[v30 - 1] == 112)
              {
                goto LABEL_74;
              }

              cstdlib_memmove(&v26[v30 - 3], v40, v29 + v33 + 1);
              v26[v30 - 3] = 73;
              goto LABEL_58;
            }
          }
        }

        if (v30 - 1 >= v33)
        {
          goto LABEL_74;
        }

        v34 = &v26[v30 - 3];
        v42 = *v34;
        if (v42 == 82)
        {
          if (v26[v30 - 2] != 82 || v26[v30 - 1] != 82)
          {
            goto LABEL_74;
          }

          cstdlib_memmove(v34, &v26[v30 - 1], v29 + v33);
          v31 -= 2;
          goto LABEL_59;
        }

        if (v42 != 97)
        {
          goto LABEL_74;
        }

        v36 = &v26[v30 - 2];
        v43 = *v36;
        if (v43 == 65)
        {
          v44 = v26[v30 - 1];
          if (v44 == 97)
          {
            *v36 = 66;
            goto LABEL_74;
          }

          if (v44 != 70)
          {
            goto LABEL_74;
          }
        }

        else if (v43 != 97 || v26[v30 - 1] != 73)
        {
          goto LABEL_74;
        }
      }

LABEL_44:
      cstdlib_memmove(v34, v36, v29 + v33 + 1);
LABEL_58:
      --v31;
LABEL_59:
      v26[v31] = 0;
LABEL_74:
      v28 = v31;
      ++v30;
      --v29;
      if (v32 >= v31)
      {
        goto LABEL_75;
      }
    }
  }

  v4 = *a2;
  v5 = cstdlib_strlen(*a2);
  if (!v5)
  {
LABEL_29:
    result = 0;
    *a2 = v4;
    return result;
  }

  v6 = 0;
  v45 = v5 + 1;
  v7 = v5;
  while (!*(a1 + 168))
  {
LABEL_28:
    if (++v6 >= v7)
    {
      goto LABEL_29;
    }
  }

  v8 = 0;
  v9 = 24;
  while (1)
  {
    v10 = *(a1 + 160) + v9;
    v11 = *(v10 - 8);
    if (v11 + v6 > v7 || cstdlib_strncmp(&v4[v6], *(v10 - 16), v11))
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 160);
    v13 = *(v12 + v9 - 24);
    if (v13 != 1)
    {
      break;
    }

    if (*(v12 + v9 - 8) + v6 == v7)
    {
      goto LABEL_19;
    }

LABEL_8:
    ++v8;
    v9 += 56;
    if (v8 >= *(a1 + 168))
    {
      goto LABEL_28;
    }
  }

  if (v13 != 2)
  {
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v14 = *(v12 + v9 - 8) + v6;
  if (v14 > v7)
  {
    goto LABEL_8;
  }

  v15 = *(v12 + v9 + 24);
  if (v14 + v15 > v7 || !cstdlib_strncmp(&v4[v14], *(v12 + v9 + 16), v15))
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 160);
LABEL_19:
  v16 = *(v12 + v9 - 8);
  v17 = *(v12 + v9 + 8);
  if (v16 >= v17)
  {
LABEL_22:
    v23 = v16 - v17;
    if (v16 >= v17)
    {
      if (v16 > v17)
      {
        cstdlib_memmove(&v4[v6], &v4[v6 + v23], v7 - (v6 + v23));
        cstdlib_memcpy(&v4[v6], *(*(a1 + 160) + v9), *(*(a1 + 160) + v9 + 8));
        v7 -= v23;
      }

      else
      {
        cstdlib_memcpy(&v4[v6], *(v12 + v9), v17);
      }
    }

    else
    {
      v24 = v17 - v16;
      cstdlib_memmove(&v4[v6 + (v17 - v16)], &v4[v6], v7 - v6);
      cstdlib_memcpy(&v4[v6], *(*(a1 + 160) + v9), *(*(a1 + 160) + v9 + 8));
      v7 += v24;
      v6 += *(*(a1 + 160) + v9 + 8);
    }

    v4[v7] = 0;
    goto LABEL_28;
  }

  v18 = heap_Realloc(*(*a1 + 8), v4, v45 - v16 + v17);
  if (v18)
  {
    v4 = v18;
    v12 = *(a1 + 160);
    LODWORD(v16) = *(v12 + v9 - 8);
    LODWORD(v17) = *(v12 + v9 + 8);
    goto LABEL_22;
  }

  log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v19, v20, v21, v22, v45);
  return 2687508490;
}

uint64_t posparser_Open(uint64_t a1, uint64_t *a2)
{
  v2 = 2687508487;
  if (a2)
  {
    v5 = heap_Calloc(*(a1 + 8), 264, 1);
    *a2 = v5;
    if (v5)
    {
      *v5 = a1;
      *(*a2 + 80) = 0;
      v10 = *a2;
      *(v10 + 97) = 1;
      *(v10 + 98) = 250;
      *(v10 + 88) = 0;
      v11 = *a2;
      *(v11 + 64) = 0;
      *(v11 + 68) = 1;
      *(v11 + 72) = 1;
      *(v11 + 112) = 0;
      *(*a2 + 104) = 0;
      *(*a2 + 120) = 0;
      *(*a2 + 128) = 0;
      *(*a2 + 136) = 0;
      *(*a2 + 144) = 0;
      cstdlib_strncpy((*a2 + 186), "arx", 3uLL);
      v2 = 0;
      *(*a2 + 189) = 0;
      v12 = *a2;
      *(v12 + 152) = 0x100000001;
      *(v12 + 160) = 0;
      v13 = *a2;
      *(v13 + 192) = 1;
      *(v13 + 168) = 0;
      *(v13 + 200) = 0;
      v14 = *a2;
      *(v14 + 208) = 0;
      *(v14 + 176) = 0;
      v15 = *a2;
      *(v15 + 184) = 0;
      *(v15 + 232) = 0;
    }

    else
    {
      log_OutPublic(*(a1 + 32), "POSPARSER", 68000, 0, v6, v7, v8, v9, v17);
      return 2687508490;
    }
  }

  return v2;
}

void *posparser_Close(void *result)
{
  if (result)
  {
    return heap_Free(*(*result + 8), result);
  }

  return result;
}

uint64_t posparser_ExtractWords(_DWORD *a1, uint64_t a2, unsigned int a3, const char *a4, unsigned int a5, uint64_t *a6, unsigned __int16 *a7)
{
  v7 = a7;
  *a7 = 0;
  v14 = heap_Calloc(*(*a1 + 8), 1, 104 * a3 + 104);
  if (!v14)
  {
LABEL_143:
    log_OutPublic(*(*a1 + 32), "POSPARSER", 68000, 0, v15, v16, v17, v18, v87);
    return -1607458806;
  }

  v19 = v14;
  v88 = a6;
  v20 = a3;
  v92 = a3;
  v96 = a3;
  if (a5)
  {
    i = 0;
    if (a3 <= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = a3;
    }

    v90 = a3 - 1;
    v89 = v22 - 1;
    v91 = v7;
    do
    {
      if (a4[i] == 32)
      {
        ++i;
      }

      if (i < a5)
      {
        if (v96 < 2)
        {
          v28 = 0;
          v99 = 0;
          v95 = 9999;
          v97 = 9999;
        }

        else
        {
          v23 = 2;
          v24 = 9998;
          v25 = (a2 + 44);
          v26 = 1;
          while (1)
          {
            if (*(v25 - 3) == 34)
            {
              v27 = *v25;
              if (*v25 - *(a2 + 12) == i)
              {
                break;
              }
            }

            ++v26;
            v25 += 8;
            --v24;
            ++v23;
            if (v20 == v26)
            {
              v99 = 0;
              v93 = 1;
              v95 = 9999;
              v97 = 9999;
              goto LABEL_25;
            }
          }

          while (*(v25 - 3) != 21 || v27 >= *v25)
          {
            --v24;
            v29 = v96 == v23++;
            v25 += 8;
            if (v29)
            {
              v26 = v26;
LABEL_22:
              v93 = 0;
              v99 = 1;
              v97 = v26;
              v95 = v26;
              goto LABEL_25;
            }
          }

          v26 = v26;
          if (!v24)
          {
            goto LABEL_22;
          }

          v97 = v26;
          v93 = 0;
          v95 = (v23 - 1);
          v99 = 1;
LABEL_25:
          v28 = 0;
          v31 = (a2 + 56);
          v30 = v90;
          do
          {
            if (*(v31 - 6) == 36 && *(v31 - 3) - *(a2 + 12) <= i)
            {
              v28 = !cstdlib_strstr(*v31, "arw") && !cstdlib_strstr(*v31, "arg") && !cstdlib_strstr(*v31, "fai") && !cstdlib_strstr(*v31, "hei") && cstdlib_strcmp(*v31, "normal") != 0;
            }

            v31 += 4;
            --v30;
          }

          while (v30);
          v32 = v89;
          v33 = (a2 + 44);
          v7 = v91;
          do
          {
            if (*(v33 - 3) == 1 && *v33 - *(a2 + 12) == i)
            {
              v35 = *v91;
              v44 = *(v33 - 2);
              v34 = *(v33 - 1);
              *(v19 + 104 * *v91) = v44;
              v20 = v92;
              goto LABEL_42;
            }

            v33 += 8;
            --v32;
          }

          while (v32);
          v20 = v92;
          if (!v93)
          {
            goto LABEL_41;
          }
        }

        log_OutText(*(*a1 + 32), "POSPARSER", 5, 0, "Could not resolve references pos (previously logged as Public 68004), thispos=%d", v16, v17, v18, i);
LABEL_41:
        v34 = 0;
        v35 = *v7;
        *(v19 + 104 * *v7) = 0;
LABEL_42:
        v36 = v19 + 104 * v35;
        *(v36 + 4) = v34;
        *(v36 + 8) = i;
        *(v19 + 104 * *v7 + 74) = 0;
        *(v19 + 104 * *v7 + 76) = 0;
        *(v19 + 104 * *v7 + 72) = 9999;
        v37 = *v7;
        *(v19 + 104 * *v7 + 88) = v28;
        if (v99)
        {
          *(v19 + 104 * v37 + 74) = v97;
          *(v19 + 104 * *v7 + 76) = v95;
          v38 = (v19 + 104 * *v7);
          if (v38[37] == v38[38])
          {
            v38[5] = *(a2 + 16);
            i = a5;
          }

          else
          {
            for (i = *(a2 + 32 * v95 + 12) - *(a2 + 12); i; --i)
            {
              if (a4[i - 1] != 32)
              {
                goto LABEL_57;
              }
            }

            i = 0;
LABEL_57:
            *(v19 + 104 * *v7 + 10) = i;
          }
        }

        else
        {
          while (1)
          {
            v39 = a4[i];
            if ((v39 | 0x20) == 0x20)
            {
              break;
            }

            if (a5 < ++i)
            {
              v39 = a4[i];
              break;
            }
          }

          v40 = v39 ? i : i + 1;
          *(v19 + 104 * v37 + 10) = v40;
          i = v40 + 1;
        }

        if (*(v19 + 104 * *v7 + 8) != *(v19 + 104 * *v7 + 10))
        {
          v41 = *v7 + 1;
          *v7 = v41;
          if (v96 < v41)
          {
            v42 = heap_Realloc(*(*a1 + 8), v19, 104 * v41 + 104);
            if (!v42)
            {
              heap_Free(*(*a1 + 8), v19);
              goto LABEL_143;
            }

            v43 = v42;
            cstdlib_memset((v42 + 104 * *v7), 0, 0x68uLL);
            v19 = v43;
          }
        }
      }
    }

    while (a5 > i);
  }

  *v88 = v19;
  v45 = *v7;
  v46 = cstdlib_strlen(a4);
  v100 = v45;
  if (v45)
  {
    v47 = 0;
    v94 = 0;
    v98 = v46;
    while (1)
    {
      v48 = v19 + 104 * v47;
      *(v48 + 80) = 1;
      v49 = v46;
      if (v98 >= *(v48 + 10))
      {
        v50 = *(v48 + 10);
      }

      else
      {
        v50 = v46;
      }

      v51 = *(v48 + 8);
      if (v51 < v50)
      {
        do
        {
          if (*(v48 + 80) != 1)
          {
            break;
          }

          if (!cstdlib_isdigit(a4[v51]) && ((a4[v51] | 2) != 0x2E || v51 == *(v48 + 8)))
          {
            *(v48 + 80) = 0;
          }

          ++v51;
        }

        while (v50 != v51);
        LODWORD(v51) = *(v48 + 8);
      }

      *(v48 + 84) = 0;
      if (v51 < v50)
      {
        v52 = 0;
        v51 = v51;
        do
        {
          if (v52)
          {
            break;
          }

          if (isPuncClass(a1, &a4[v51]))
          {
            v53 = a1[39];
            if (v53 == 1 || !v53 && v51 == *(v48 + 8))
            {
              *(v48 + 84) = 1;
            }
          }

          ++v51;
          v52 = *(v48 + 84);
        }

        while (v50 != v51);
        if (v52 == 1 && a1[62] == 1 && v50 - *(v48 + 8) >= 2 && isPuncClass(a1, &a4[v50 - 1]))
        {
          *(v48 + 84) = 0;
          if (v50 - *(v48 + 8) <= 127)
          {
            v54 = heap_Calloc(*(*a1 + 8), 1, 128);
            *(v48 + 96) = v54;
            if (!v54)
            {
              goto LABEL_143;
            }

            cstdlib_strncpy(v54, &a4[*(v48 + 8)], v50 - *(v48 + 8));
            *(*(v48 + 96) + v50 - *(v48 + 8)) = 0;
            v94 = (*(*(a1 + 3) + 144))(*(a1 + 1), *(a1 + 2), "normal", *(v48 + 96), 128);
            if ((v94 & 0x80000000) != 0)
            {
              return v94;
            }
          }
        }
      }

      ++v47;
      v46 = v49;
      if (v47 == v100)
      {
        goto LABEL_97;
      }
    }
  }

  v94 = 0;
LABEL_97:
  if (v96)
  {
    v55 = 0;
    v56 = (a2 + 32);
    v57 = (v96 - 1) + 1;
    do
    {
      v58 = (a2 + 32 * v55);
      v59 = *v58;
      if (*v58 == 21)
      {
        v68 = *(v58 + 3);
        if (v68)
        {
          if (!LH_stricmp(v68, "spell"))
          {
            LOWORD(v78) = cstdlib_strlen(a4);
            v79 = v57;
            v80 = v56;
            while (--v79)
            {
              v81 = v80 + 8;
              v82 = *v80;
              v80 += 8;
              if (v82 == 21)
              {
                v78 = *(v81 - 5) - *(a2 + 12);
                break;
              }
            }

            if (v100)
            {
              v83 = v58[3] - *(a2 + 12);
              v84 = (v19 + 92);
              v85 = v100;
              do
              {
                if (v83 <= *(v84 - 42) && *(v84 - 41) <= v78)
                {
                  *v84 = 1;
                }

                v84 += 26;
                --v85;
              }

              while (v85);
            }

            goto LABEL_140;
          }

          v59 = *v58;
LABEL_116:
          if (v59 == 36)
          {
            v69 = *(v58 + 3);
            if (v69)
            {
              if (!LH_stricmp(v69, "latin"))
              {
                LOWORD(v70) = cstdlib_strlen(a4);
                v71 = v57;
                v72 = v56;
                while (--v71)
                {
                  v73 = v72 + 8;
                  v74 = *v72;
                  v72 += 8;
                  if (v74 == 36)
                  {
                    v70 = *(v73 - 5) - *(a2 + 12);
                    break;
                  }
                }

                if (v100)
                {
                  v75 = v58[3] - *(a2 + 12);
                  v76 = (v19 + 88);
                  v77 = v100;
                  do
                  {
                    if (v75 <= *(v76 - 40) && *(v76 - 39) <= v70)
                    {
                      *v76 = 1;
                    }

                    v76 += 26;
                    --v77;
                  }

                  while (v77);
                }
              }
            }
          }
        }
      }

      else
      {
        if (v59 != 7)
        {
          goto LABEL_116;
        }

        if (v58[6] == 60)
        {
          LOWORD(v60) = cstdlib_strlen(a4);
          v61 = v57;
          v62 = v56;
          while (--v61)
          {
            v63 = v62 + 8;
            v64 = *v62;
            v62 += 8;
            if (v64 == 7)
            {
              v60 = *(v63 - 5) - *(a2 + 12);
              break;
            }
          }

          if (v100)
          {
            v65 = v58[3] - *(a2 + 12);
            v66 = (v19 + 12);
            v67 = v100;
            do
            {
              if (v65 <= *(v66 - 2) && *(v66 - 1) <= v60)
              {
                *v66 = 1;
              }

              v66 += 26;
              --v67;
            }

            while (v67);
          }
        }
      }

LABEL_140:
      ++v55;
      v56 += 8;
      --v57;
    }

    while (v55 != v92);
  }

  return v94;
}