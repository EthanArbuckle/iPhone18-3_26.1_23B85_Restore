uint64_t pw_crf_alginWS(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned __int8 **a5, uint64_t **a6, unsigned __int16 **a7)
{
  v10 = a2;
  v11 = a1;
  v12 = *a6;
  v13 = 0;
  if (a2)
  {
    v14 = a2;
    v15 = a5;
    do
    {
      v16 = **v15;
      if (v16 == 83 || v16 == 69)
      {
        ++v13;
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  **a7 = v13;
  v17 = heap_Calloc(*(a1 + 8), v13 + 1, 16);
  *v12 = v17;
  if (v17)
  {
    if (v10)
    {
      v22 = v17;
      v46 = a3;
      v47 = v11;
      LODWORD(v23) = 0;
      v24 = 0;
      v25 = v10;
      v48 = v10;
      do
      {
        v26 = 0;
        v27 = v23;
        v23 = v23;
        do
        {
          v28 = v26;
          v29 = *a5[v23];
          if (v29 == 69)
          {
            break;
          }

          v30 = v29 == 83;
          v26 = v28 + 1;
          ++v23;
        }

        while (!v30 && v23 < v25);
        v49 = v27;
        if (v27 >= v10)
        {
          v39 = 0;
          v32 = 0;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v34 = *(a4 + 8 * v27);
            if (v34[cstdlib_strlen(v34) - 1] == 69 || (v38 = *(a4 + 8 * v27), v38[cstdlib_strlen(v38) - 1] == 83))
            {
              ++v32;
            }

            v39 = v33 + 1;
            if (v33 == v28)
            {
              break;
            }

            ++v27;
            ++v33;
            if (v25 == v27)
            {
              goto LABEL_30;
            }
          }

          if (!v32)
          {
            log_OutText(*(v47 + 32), "FE_PW", 0, 0, "No Lex Word Found in Current PW. Pos: %d", v35, v36, v37, v27);
            return 2584748047;
          }

          *(v22 + 8) = v32;
          v11 = v47;
          v40 = v32;
          v41 = heap_Alloc(*(v47 + 8), 2 * v32);
          *v22 = v41;
          if (!v41)
          {
            goto LABEL_32;
          }

          v42 = v24;
          do
          {
            *v41++ = *(v46 + 40 * v42++ + 24);
            --v40;
          }

          while (v40);
        }

LABEL_30:
        v24 += v32;
        LODWORD(v23) = v49 + v39;
        v22 += 16;
        v10 = v48;
      }

      while (v23 < v48);
    }

    return 0;
  }

  else
  {
LABEL_32:
    v43 = 2584748042;
    log_OutPublic(*(v11 + 32), "FE_PW", 37000, 0, v18, v19, v20, v21, v45);
  }

  return v43;
}

uint64_t fe_pw_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v39 = 0;
  *v40 = 0;
  __s1 = 0;
  v38 = 0;
  igtree = 2584748039;
  v36 = 0;
  v35 = -1;
  v34 = 0;
  memset(v41, 0, sizeof(v41));
  if (!a5)
  {
    return igtree;
  }

  v33 = 0;
  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, v40);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v12 = heap_Calloc(*(*v40 + 8), 1, 1192);
  if (!v12)
  {
    log_OutPublic(*(*v40 + 32), "FE_PW", 37000, 0, v13, v14, v15, v16, v28);
    igtree = 2584748042;
LABEL_38:
    fe_pw_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return igtree;
  }

  v17 = v12;
  inited = objc_GetObject(*(*v40 + 48), "LINGDB", &v39);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  *(v17 + 48) = *(v39 + 8);
  inited = objc_GetObject(*(*v40 + 48), "FE_DCTLKP", &v38);
  if ((inited & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v18 = v38;
  v19 = *(v38 + 8);
  *(v17 + 128) = v19;
  *(v17 + 136) = *(v18 + 16);
  v20 = *v40;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *v17 = a1;
  *(v17 + 8) = a1;
  *(v17 + 16) = a2;
  *(v17 + 24) = v20;
  *(v17 + 1180) = 0;
  *(v17 + 64) = 0;
  v21 = (v17 + 64);
  *(v17 + 1184) = 0;
  igtree = (*(v19 + 96))(*(v17 + 136), *(v17 + 144), "fecfg", "statbnd_enable_nnets", &v36, &v35, &v34);
  if (v35 && v36 && (v22 = *v36, v22[cstdlib_strlen(*v36) - 1] = 0, !cstdlib_strcmp(*v36, "yes")))
  {
    *(v17 + 1180) = 1;
    *a5 = v17;
    *(a5 + 8) = 62341;
  }

  else if (!*(v17 + 1180))
  {
    if (!com_enable_cscgroup(*(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 152)))
    {
      *(v17 + 152) = 1;
    }

    if (!com_cscgroup_stopwords(*(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 156)))
    {
      cstdlib_strcpy((v17 + 156), "");
    }

    v23 = (v17 + 112);
    if (!com_auxiliarywords(*(v17 + 24), *(v17 + 128), *(v17 + 136), *(v17 + 144), (v17 + 112), (v17 + 120)))
    {
      *v23 = 0;
    }

    inited = fw_pw_CreateVoiceBrokerString(*(v17 + 24), v41);
    if ((inited & 0x80000000) == 0)
    {
      if (((*(*(v17 + 128) + 256))(*(v17 + 136), *(v17 + 144), "fepw_enable_crf", "no", &__s1) & 0x80000000) != 0 || cstdlib_strcmp(__s1, "yes"))
      {
        if ((ssftriff_reader_ObjOpen(a3, a4, 2, v41, "PWDT", 1031, (v17 + 64)) & 0x80000000) == 0)
        {
          v32 = 0;
          v30 = 0;
          *v31 = 0;
          v29 = 0;
          for (i = ssftriff_reader_OpenChunk(*v21, v31, &v30, &v29); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v21, v31, &v30, &v29))
          {
            if (!cstdlib_strcmp(v31, "DSTR"))
            {
              ssftriff_reader_GetChunkData(*v21, v30, (v17 + 56), v25);
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }

              *v23 = 0;
              inited = GetRulesFromRiffData(*v40, *v21, *(v17 + 56), v30, (v17 + 72), (v17 + 80), (v17 + 96), (v17 + 100), (v17 + 104), (v17 + 112), (v17 + 120));
              if ((inited & 0x80000000) != 0)
              {
                goto LABEL_37;
              }
            }

            ssftriff_reader_CloseChunk(*v21);
          }

          igtree = i;
          if ((i & 0x1FFF) == 0xA)
          {
            *(v17 + 56) = 0;
            return igtree;
          }
        }

        goto LABEL_32;
      }

      inited = tryLoadingCrfModel(*(v17 + 32), *(v17 + 40), *(v17 + 8), *(v17 + 16), *(v17 + 24), (v17 + 88), v41, 1031);
      if ((inited & 0x80000000) == 0)
      {
LABEL_32:
        igtree = load_igtree_cfg(*(v17 + 136), *(v17 + 144), *(v17 + 128), &v33);
        if ((igtree & 0x80000000) == 0)
        {
          if (v33)
          {
            v26 = (v17 + 1184);
            igtree = load_igtree(*(v17 + 32), *(v17 + 40), *(v17 + 24), (v17 + 1184));
            if ((igtree & 0x80000000) != 0)
            {
              if (*v26)
              {
                igtree_Deinit(*(v17 + 24), *v26);
                igtree = 0;
                *(v17 + 1184) = 0;
              }

              else
              {
                igtree = 0;
              }
            }
          }

          *a5 = v17;
          *(a5 + 8) = 62341;
        }

        return igtree;
      }
    }

LABEL_37:
    igtree = inited;
    goto LABEL_38;
  }

  if ((igtree & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  return igtree;
}

uint64_t fw_pw_CreateVoiceBrokerString(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "prosodyword", 1, 1, v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_pw_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((v3 & 0x80000000) != 0)
  {
    return 2584748040;
  }

  Only_DereferenceCnt = v3;
  if (a1)
  {
    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "LINGDB");
    }

    if (*(a1 + 128))
    {
      objc_ReleaseObject(*(*(a1 + 24) + 48), "FE_DCTLKP");
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      ssftriff_reader_ObjClose(v12, v4, v5, v6, v7, v8, v9, v10);
    }

    v13 = *(a1 + 112);
    if (v13)
    {
      v14 = *(a1 + 120);
      if (*(a1 + 120))
      {
        v15 = 0;
        do
        {
          v16 = *(*(a1 + 112) + 8 * v15);
          if (v16)
          {
            heap_Free(*(*(a1 + 24) + 8), v16);
            v14 = *(a1 + 120);
          }

          ++v15;
        }

        while (v15 < v14);
        v13 = *(a1 + 112);
      }

      heap_Free(*(*(a1 + 24) + 8), v13);
    }

    if (*(a1 + 1180))
    {
      goto LABEL_31;
    }

    v17 = *(a1 + 88);
    if (!v17)
    {
LABEL_21:
      v18 = *(a1 + 72);
      if (v18)
      {
        v19 = *(a1 + 80);
        if (v19)
        {
          v20 = 0;
          v21 = 16;
          do
          {
            v22 = *(*(a1 + 72) + v21);
            if (v22)
            {
              heap_Free(*(*(a1 + 24) + 8), v22);
              v19 = *(a1 + 80);
            }

            ++v20;
            v21 += 32;
          }

          while (v20 < v19);
          v18 = *(a1 + 72);
        }

        heap_Free(*(*(a1 + 24) + 8), v18);
      }

      v23 = *(a1 + 1184);
      if (v23)
      {
        igtree_Deinit(*(a1 + 24), v23);
        heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
        *(a1 + 1184) = 0;
      }

LABEL_31:
      heap_Free(*(*(a1 + 24) + 8), a1);
      return Only_DereferenceCnt;
    }

    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v17);
    if ((Only_DereferenceCnt & 0x80000000) == 0)
    {
      *(a1 + 88) = 0;
      goto LABEL_21;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t fe_pw_ObjReopen(uint64_t a1, int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = 2584748038;
  memset(v35, 0, sizeof(v35));
  VoiceBrokerString = safeh_HandleCheck(a1, a2, 62341, 1192);
  if ((VoiceBrokerString & 0x80000000) != 0)
  {
    return 2584748040;
  }

  if (a1)
  {
    if (*(a1 + 1180))
    {
      return VoiceBrokerString;
    }

    v34 = 0;
    VoiceBrokerString = fw_pw_CreateVoiceBrokerString(*(a1 + 24), v35);
    if ((VoiceBrokerString & 0x80000000) != 0)
    {
      return VoiceBrokerString;
    }

    v14 = (a1 + 64);
    v13 = *(a1 + 64);
    if (v13)
    {
      ssftriff_reader_ObjClose(v13, v6, v7, v8, v9, v10, v11, v12);
      *v14 = 0;
    }

    v15 = *(a1 + 88);
    if (v15)
    {
      VoiceBrokerString = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 24), *a1, v15);
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        return VoiceBrokerString;
      }

      *(a1 + 88) = 0;
    }

    if ((tryLoadingCrfModel(*(a1 + 32), *(a1 + 40), *(a1 + 8), *(a1 + 16), *(a1 + 24), (a1 + 88), v35, 1031) & 0x80000000) != 0)
    {
      if ((ssftriff_reader_ObjOpen(*(a1 + 32), *(a1 + 40), 2, v35, "PWDT", 1031, (a1 + 64)) & 0x80000000) != 0)
      {
        *(a1 + 56) = 0;
      }

      else
      {
        v33 = 0;
        v31 = 0;
        *__s1 = 0;
        v19 = (a1 + 112);
        v18 = *(a1 + 112);
        if (v18)
        {
          v20 = *(a1 + 120);
          if (*(a1 + 120))
          {
            v21 = 0;
            do
            {
              v22 = *(*v19 + 8 * v21);
              if (v22)
              {
                heap_Free(*(*(a1 + 24) + 8), v22);
                v20 = *(a1 + 120);
              }

              ++v21;
            }

            while (v21 < v20);
            v18 = *v19;
          }

          heap_Free(*(*(a1 + 24) + 8), v18);
        }

        v24 = (a1 + 72);
        v23 = *(a1 + 72);
        if (v23)
        {
          v25 = *(a1 + 80);
          if (v25)
          {
            v26 = 0;
            v27 = 16;
            do
            {
              v28 = *(*v24 + v27);
              if (v28)
              {
                heap_Free(*(*(a1 + 24) + 8), v28);
                v25 = *(a1 + 80);
              }

              ++v26;
              v27 += 32;
            }

            while (v26 < v25);
            v23 = *v24;
          }

          heap_Free(*(*(a1 + 24) + 8), v23);
        }

        for (i = ssftriff_reader_OpenChunk(*v14, &__s1[4], __s1, &v31); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v14, &__s1[4], __s1, &v31))
        {
          if (!cstdlib_strcmp(&__s1[4], "DSTR"))
          {
            ssftriff_reader_GetChunkData(*v14, *__s1, (a1 + 56), v30);
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              return VoiceBrokerString;
            }

            *(a1 + 112) = 0;
            VoiceBrokerString = GetRulesFromRiffData(*(a1 + 24), *(a1 + 64), *(a1 + 56), *__s1, (a1 + 72), (a1 + 80), (a1 + 96), (a1 + 100), (a1 + 100), (a1 + 112), (a1 + 120));
            if ((VoiceBrokerString & 0x80000000) != 0)
            {
              return VoiceBrokerString;
            }
          }

          ssftriff_reader_CloseChunk(*v14);
        }

        v3 = i;
        if ((i & 0x1FFF) == 0xA)
        {
          return v3;
        }
      }
    }

    v16 = *(a1 + 1184);
    if (v16)
    {
      igtree_Deinit(*(a1 + 24), v16);
      heap_Free(*(*(a1 + 24) + 8), *(a1 + 1184));
      *(a1 + 1184) = 0;
    }

    v3 = load_igtree_cfg(*(a1 + 136), *(a1 + 144), *(a1 + 128), &v34);
    if ((v3 & 0x80000000) == 0 && v34)
    {
      v17 = (a1 + 1184);
      VoiceBrokerString = load_igtree(*(a1 + 32), *(a1 + 40), *(a1 + 24), (a1 + 1184));
      if ((VoiceBrokerString & 0x80000000) != 0)
      {
        if (!*v17)
        {
          return 0;
        }

        igtree_Deinit(*(a1 + 24), *v17);
        v3 = 0;
        *(a1 + 1184) = 0;
        return v3;
      }

      return VoiceBrokerString;
    }
  }

  return v3;
}

uint64_t fe_pw_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_PYT_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int *a7, unsigned int a8, uint64_t *a9, unsigned __int16 *a10)
{
  v117 = *a9;
  __s1 = 0;
  v11 = *a10;
  v120 = 0;
  v12 = a6;
  v119 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v112 = a8;
    v16 = (a5 + 24);
    v17 = 1;
    while (1)
    {
      v18 = (v117 + 16 * v14);
      if (*(v18 + 4) > 1u)
      {
        goto LABEL_9;
      }

      v19 = **v18;
      v119 = 0;
      v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 9, &v119);
      if ((v13 & 0x80000000) == 0 && v119 == 1)
      {
        v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 9, &v120, &v119);
        if ((v13 & 0x80000000) != 0)
        {
LABEL_67:
          heap_Free(*(a4 + 8), v117);
          return v13;
        }
      }

      if (v120 && cstdlib_strcmp(v120, "mnc!"))
      {
LABEL_9:
        v20 = 1;
        v17 = 1;
      }

      else
      {
        v21 = 0;
        if (v12)
        {
          v22 = v16;
          while (1)
          {
            v23 = *v22;
            v22 += 20;
            if (v23 == **v18)
            {
              break;
            }

            if (v12 == ++v21)
            {
              LODWORD(v21) = v12;
              goto LABEL_16;
            }
          }

          LODWORD(v21) = v21;
        }

LABEL_16:
        if (a8)
        {
          v24 = a7;
          v25 = *(a5 + 40 * v21 + 28);
          v26 = v112;
          while (1)
          {
            v27 = *v24++;
            if (v27 == v25)
            {
              break;
            }

            if (!--v26)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          if (v17 != 1)
          {
            v119 = 0;
            __s1 = 0;
            v13 = (*(*(a1 + 48) + 184))(a2, a3, v19, 19, &v119);
            v17 = 0;
            v20 = 1;
            if ((v13 & 0x80000000) == 0 && v119 == 1)
            {
              v13 = (*(*(a1 + 48) + 176))(a2, a3, v19, 19, &__s1, &v119);
              if ((v13 & 0x80000000) != 0)
              {
                return v13;
              }

              v17 = 0;
              v20 = cstdlib_strcmp(__s1, "left") == 0;
            }

            goto LABEL_26;
          }
        }

        v17 = 0;
        v20 = 1;
      }

LABEL_26:
      v15 += v20;
      if (v11 <= ++v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
  v13 = 0;
LABEL_29:
  v28 = heap_Calloc(*(a4 + 8), v15, 16);
  if (!v28)
  {
LABEL_68:
    v13 = 2584748042;
    log_OutPublic(*(a4 + 32), "FE_PW", 37000, 0, v29, v30, v31, v32, v104);
    return v13;
  }

  *a10 = v15;
  v113 = v28;
  *a9 = v28;
  if (v11)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
    while (1)
    {
      v37 = (v117 + 16 * v34);
      if (*(v37 + 4) < 2u)
      {
        v38 = **v37;
        v119 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v38, 9, &v119) & 0x80000000) == 0 && v119 == 1)
        {
          v39 = (*(*(a1 + 48) + 176))(a2, a3, v38, 9, &v120, &v119);
          if ((v39 & 0x80000000) != 0)
          {
            v13 = v39;
            goto LABEL_67;
          }
        }

        if (!v120 || !cstdlib_strcmp(v120, "mnc!"))
        {
          break;
        }
      }

      log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> Not a PYT PW. Skip by copying pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
      fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v40, v41, v42, v43, v44, v105);
      log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v45, v46, v47, v33);
      v13 = 0;
      ++v35;
      v36 = 1;
LABEL_63:
      v33 = ++v34;
      if (v33 >= v11)
      {
        goto LABEL_66;
      }
    }

    v48 = 0;
    if (v12)
    {
      v49 = (a5 + 24);
      while (1)
      {
        v50 = *v49;
        v49 += 20;
        if (v50 == **v37)
        {
          break;
        }

        if (v12 == ++v48)
        {
          LODWORD(v48) = v12;
          goto LABEL_45;
        }
      }

      LODWORD(v48) = v48;
    }

LABEL_45:
    if (a8)
    {
      v51 = a7;
      v52 = *(a5 + 40 * v48 + 28);
      v53 = a8;
      while (1)
      {
        v54 = *v51++;
        if (v54 == v52)
        {
          break;
        }

        if (!--v53)
        {
          goto LABEL_49;
        }
      }

      if (v36 != 1)
      {
        v80 = v35;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am a PYT PW start with Marker! Copy pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
LABEL_60:
        fe_pw_copy_pw(a4, v37, v113 + 16 * v80, v81, v82, v83, v84, v85, v106);
        v94 = *(a4 + 32);
        goto LABEL_61;
      }
    }

    else
    {
LABEL_49:
      if (v36 != 1)
      {
        v119 = 0;
        __s1 = 0;
        if (((*(*(a1 + 48) + 184))(a2, a3, v38, 19, &v119) & 0x80000000) == 0 && v119 == 1)
        {
          v13 = (*(*(a1 + 48) + 176))(a2, a3, v38, 19, &__s1, &v119);
          if ((v13 & 0x80000000) != 0)
          {
            return v13;
          }

          v61 = cstdlib_strcmp(__s1, "left");
          v62 = *(a4 + 32);
          if (v61)
          {
            v63 = v35 - 1;
            log_OutText(v62, "FE_PW", 5, 0, ">>> No space before this PYT unit. Merge pPWIn[%d] to pPWOut[%d] ...", v58, v59, v60, v33);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "pPWIn[%d] is: ", v64, v65, v66, v33);
            pw_show_pw_0(a4, v37);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Before merge, pPWOut[%d] is: ", v67, v68, v69, v63);
            v70 = v113 + 16 * v63;
            pw_show_pw_0(a4, v70);
            v71 = *(v70 + 8) + 1;
            *(v70 + 8) = v71;
            v72 = heap_Realloc(*(a4 + 8), *v70, 2 * v71);
            *v70 = v72;
            if (!v72)
            {
              goto LABEL_68;
            }

            v73 = *v37;
            *(v72 + 2 * *(v70 + 8) - 2) = **v37;
            heap_Free(*(a4 + 8), v73);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "After merge, pPWOut[%d] is: ", v74, v75, v76, v63);
            pw_show_pw_0(a4, v70);
            log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Merge pPWIn[%d] to pPWOut[%d] done!", v77, v78, v79, v33);
            v36 = 0;
            goto LABEL_63;
          }

          log_OutText(v62, "FE_PW", 5, 0, ">>> There is a space before this PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v58, v59, v60, v33);
          fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v95, v96, v97, v98, v99, v108);
          log_OutText(*(a4 + 32), "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v100, v101, v102, v33);
          goto LABEL_62;
        }

        v80 = v35;
        log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> The WORD_DCT record doesn't has field LD_W_INPUTSPACETAG. Copy pPWIn[%d] to pPWOut[%d].", v55, v56, v57, v33);
        goto LABEL_60;
      }
    }

    log_OutText(*(a4 + 32), "FE_PW", 5, 0, ">>> I am First PYT PW. Copy pPWIn[%d] to pPWOut[%d].", v30, v31, v32, v33);
    fe_pw_copy_pw(a4, v37, v113 + 16 * v35, v86, v87, v88, v89, v90, v107);
    v94 = *(a4 + 32);
LABEL_61:
    log_OutText(v94, "FE_PW", 5, 0, "Copy pPWIn[%d] to pPWOut[%d] done!", v91, v92, v93, v33);
LABEL_62:
    v36 = 0;
    v13 = 0;
    ++v35;
    goto LABEL_63;
  }

LABEL_66:
  if (v117)
  {
    goto LABEL_67;
  }

  return v13;
}

uint64_t fe_pw_copy_pw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "Copying PW ... ", a6, a7, a8, v20);
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pPWIn and pPWOut is: ", v12, v13, v14, v21);
  pw_show_pw_0(a1, a2);
  *(a3 + 8) = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 12) = *(a2 + 12);
  v18 = *(a1 + 32);

  return log_OutText(v18, "FE_PW", 5, 0, "Copy PW done!", v15, v16, v17, a9);
}

const char *pw_show_pw_0(uint64_t a1, uint64_t a2)
{
  result = heap_Calloc(*(a1 + 8), 1, 1000);
  if (result)
  {
    v8 = result;
    if (*(a2 + 8))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        sprintf(&v8[v10], "%d-", *(*a2 + 2 * v9));
        v10 = cstdlib_strlen(v8);
        ++v9;
      }

      while (v9 < *(a2 + 8));
    }

    log_OutText(*(a1 + 32), "FE_PW", 5, 0, "\tPW [tids:%s, ntok:%d]", v5, v6, v7, v8);
    v11 = *(a1 + 8);

    return heap_Free(v11, v8);
  }

  return result;
}

uint64_t fe_pw_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62341, 1192);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2584748040;
  }
}

uint64_t fe_pw_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2584748033;
  }

  result = 0;
  *a2 = &IFePw;
  return result;
}

uint64_t com_enable_cscgroup(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_enable_cscgroup", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    *a4 = cstdlib_strcmp(**&__c[3], "no") != 0;
    return 1;
  }

  return result;
}

uint64_t com_cscgroup_stopwords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v5 = (*(a1 + 96))(a2, a3, "fecfg", "fepw_cscgroup_stopwords", &__c[3], &__c[1], __c);
  result = 0;
  if ((v5 & 0x80000000) == 0 && *&__c[1])
  {
    v7 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    cstdlib_strcpy(a4, **&__c[3]);
    return 1;
  }

  return result;
}

uint64_t com_auxiliarywords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  v20 = 0;
  v19 = -1;
  v18 = 0;
  v9 = 0;
  if (((*(a2 + 96))(a3, a4, "fecfg", "fepw_auxiliarywords", &v20, &v19, &v18) & 0x80000000) == 0 && v19)
  {
    v10 = *v20;
    v11 = cstdlib_strlen(*v20);
    ChineseUTFCharNum = utf8_GetChineseUTFCharNum(v10, v11);
    *a6 = ChineseUTFCharNum;
    v13 = heap_Alloc(*(a1 + 8), 8 * ChineseUTFCharNum);
    *a5 = v13;
    if (v13 && *a6)
    {
      v14 = 0;
      v15 = *v20;
      while (1)
      {
        v16 = utf8_determineUTF8CharLength(*v15);
        v9 = 1;
        *(*a5 + 8 * v14) = heap_Calloc(*(a1 + 8), 1, v16 + 1);
        if (!*a5)
        {
          break;
        }

        cstdlib_memcpy(*(*a5 + 8 * v14), v15, v16);
        *(*(*a5 + 8 * v14) + v16) = 0;
        v15 += v16;
        if (++v14 >= *a6)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v9;
}

uint64_t fe_pw_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2584748039;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t fe_pw_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  __dst[1] = *MEMORY[0x277D85DE8];
  v213 = 0;
  v214 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v207 = 0;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 1024;
  v201 = 0;
  v202 = 64;
  v199 = 0;
  v200 = 64;
  v197 = 0;
  v198 = "";
  v196 = 0;
  v195 = 0;
  v194[6] = 0;
  strcpy(v194, "latin");
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  memset(__b, 0, 512);
  v186 = 0;
  cstdlib_memset(__b, 0, 0x404uLL);
  *a5 = 1;
  if (*(a1 + 1180))
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    goto LABEL_3;
  }

  if (!*(a1 + 56) && !*(a1 + 88))
  {
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: NO DATA,LEAVING", v9, v10, v11, v162);
    return 0;
  }

  v30 = *(a1 + 72);
  log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "[FE_PROSODY_WORD]: Entering", v9, v10, v11, v162);
  v31 = (*(*(a1 + 48) + 104))(a3, a4, 1, 0, &v214 + 2);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  v14 = (*(*(a1 + 48) + 184))(a3, a4, HIWORD(v214), 0, &v196);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (v196 != 1)
  {
    return v14;
  }

  v14 = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v214), 0, &v206, &v213);
  if ((v14 & 0x80000000) != 0 || v213 < 2u)
  {
    return v14;
  }

  LOWORD(__dst[0]) = 0;
  LODWORD(v185) = 0;
  *__s1 = 0;
  LOWORD(v182) = 0;
  LOWORD(v181) = 0;
  v32 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v214), __dst);
  LODWORD(v14) = v32;
  if ((v32 & 0x80000000) == 0)
  {
    v33 = __dst[0];
    if (LOWORD(__dst[0]))
    {
      v171 = v30;
      v34 = 0;
      while (1)
      {
        v35 = (*(*(a1 + 48) + 168))(a3, a4, v33, 0, 1, &v185, __s1);
        if (v35 < 0)
        {
          break;
        }

        if (v185 > 0xA || ((1 << v185) & 0x610) == 0)
        {
          v40 = 0;
          v39 = LOWORD(__dst[0]);
        }

        else
        {
          v35 = (*(*(a1 + 48) + 168))(a3, a4, LOWORD(__dst[0]), 1, 1, &v182, __s1);
          if (v35 < 0)
          {
            break;
          }

          v35 = (*(*(a1 + 48) + 168))(a3, a4, LOWORD(__dst[0]), 2, 1, &v181, __s1);
          if (v35 < 0)
          {
            break;
          }

          v38 = v182 > v34 || v34 < v181;
          v39 = LOWORD(__dst[0]);
          if (v38)
          {
            v34 = v181;
            v40 = 0;
          }

          else
          {
            v40 = LOWORD(__dst[0]);
          }
        }

        v35 = (*(*(a1 + 48) + 120))(a3, a4, v39, __dst);
        if (v35 < 0)
        {
          break;
        }

        if (v40)
        {
          log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "%s", v41, v42, v43, "Dropping nested word record");
          v35 = (*(*(a1 + 48) + 192))(a3, a4, v40);
          if (v35 < 0)
          {
            break;
          }
        }

        v33 = __dst[0];
        if (!LOWORD(__dst[0]))
        {
          v30 = v171;
          goto LABEL_80;
        }
      }

      LODWORD(v14) = v35;
LABEL_158:
      v12 = 0;
      v13 = 0;
      goto LABEL_3;
    }
  }

  if (v32 < 0)
  {
    goto LABEL_158;
  }

LABEL_80:
  v14 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v214), &v214);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_158;
  }

  v47 = v214;
  if (!v214)
  {
    goto LABEL_159;
  }

  v13 = 0;
  v175 = 0;
  v172 = 0;
  do
  {
    v48 = (*(*(a1 + 48) + 120))(a3, a4, v47, &v213 + 2);
    if (v48 < 0)
    {
      LODWORD(v14) = v48;
LABEL_161:
      v12 = 0;
      goto LABEL_3;
    }

    v14 = (*(*(a1 + 48) + 168))(a3, a4, v214, 0, 1, &v210, &v213);
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_161;
    }

    v49 = v210;
    if (v210 <= 0xA && ((1 << v210) & 0x610) != 0)
    {
      v31 = (*(*(a1 + 48) + 168))(a3, a4, v214, 1, 1, &v212, &v213);
      if ((v31 & 0x80000000) != 0)
      {
        return v31;
      }

      v14 = (*(*(a1 + 48) + 168))(a3, a4, v214, 2, 1, &v211, &v213);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (!v212 || v175 + 1 == v212 && v211 > v212)
      {
        ++v13;
        v175 = v211;
      }

      v49 = v210;
    }

    if (v49 == 5)
    {
      v14 = (*(*(a1 + 48) + 176))(a3, a4, v214, 4, &v189, &v213);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (v213)
      {
        if (!cstdlib_strncmp(v189, "prompt", v213))
        {
          ++v172;
          if (v188 <= 0x7F)
          {
            v31 = (*(*(a1 + 48) + 168))(a3, a4, v214, 1, 1, &v212, &v213);
            if ((v31 & 0x80000000) != 0)
            {
              return v31;
            }

            v14 = (*(*(a1 + 48) + 168))(a3, a4, v214, 2, 1, &v211, &v213);
            if ((v14 & 0x80000000) != 0)
            {
              return v14;
            }

            *(__b + v188) = v212;
            *(&__b[32] + v188++) = v211;
          }
        }
      }
    }

    v47 = HIWORD(v213);
    LOWORD(v214) = HIWORD(v213);
  }

  while (HIWORD(v213));
  if (v172 >= 0x81u)
  {
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: the prompt number %d is large than the threshold %d, so the last %d promp not used to guide grouping", v44, v45, v46, v172);
  }

  if (!v13)
  {
LABEL_159:
    log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Warning: no lexicon word", v44, v45, v46, v163);
    return v14;
  }

  v51 = v13;
  v52 = heap_Calloc(*(*(a1 + 24) + 8), v13, 40);
  if (!v52)
  {
    v14 = 2584748042;
    log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v53, v54, v55, v56, v163);
    return v14;
  }

  v12 = v52;
  v57 = (v52 + 8);
  do
  {
    v58 = heap_Calloc(*(*(a1 + 24) + 8), 128, 1);
    *(v57 - 1) = v58;
    v63 = *(a1 + 24);
    if (!v58)
    {
      LODWORD(v14) = -1710219254;
      goto LABEL_329;
    }

    v64 = heap_Calloc(*(v63 + 8), 64, 1);
    *v57 = v64;
    if (!v64)
    {
LABEL_327:
      LODWORD(v14) = -1710219254;
LABEL_328:
      v63 = *(a1 + 24);
LABEL_329:
      log_OutPublic(*(v63 + 32), "FE_PW", 37000, 0, v59, v60, v61, v62, v163);
      goto LABEL_3;
    }

    v57 += 5;
    --v51;
  }

  while (v51);
  word_separating_markers_0 = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v214), &v214);
  if (word_separating_markers_0 < 0)
  {
    goto LABEL_330;
  }

  v173 = v30;
  LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, HIWORD(v214), 0, &v206, &v213);
  if ((v14 & 0x80000000) != 0 || v213 < 2u)
  {
    goto LABEL_3;
  }

  v66 = v214;
  if (v214)
  {
    __s = 0;
    LODWORD(v14) = -1710219254;
    while (1)
    {
      word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v66, &v213 + 2);
      if (word_separating_markers_0 < 0)
      {
        break;
      }

      word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v214, 0, 1, &v210, &v213);
      if (word_separating_markers_0 < 0)
      {
        break;
      }

      if (v210 <= 0xA && ((1 << v210) & 0x610) != 0)
      {
        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v214, 1, 1, &v212, &v213);
        if (word_separating_markers_0 < 0)
        {
          break;
        }

        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v214, 2, 1, &v211, &v213);
        if (word_separating_markers_0 < 0)
        {
          break;
        }

        if (!v212 || v175 + 1 == v212 && v211 > v212)
        {
          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v214, 3, &v199, &v213);
          if (word_separating_markers_0 < 0)
          {
            break;
          }

          v68 = v12 + 40 * __s;
          if (cstdlib_strstr(v199, "comma"))
          {
            *(v68 + 26) = 11;
          }

          else
          {
            *(v68 + 26) = 1;
            v80 = v199;
            v195 = v199;
            while (1)
            {
              v81 = cstdlib_strstr(v80, ".");
              v195 = v81;
              if (!v81)
              {
                break;
              }

              v80 = v81 + 1;
              v195 = v80;
              ++*(v68 + 26);
            }
          }

          v69 = v212;
          if (v212 >= v211)
          {
            v71 = 1;
          }

          else
          {
            v70 = 0;
            do
            {
              if (!utf8_IsChineseLetter((v206 + v69)))
              {
                v70 = 1;
              }

              v69 += utf8_determineUTF8CharLength(*(v206 + v69));
            }

            while (v69 < v211);
            v71 = v70 == 0;
          }

          v72 = v12 + 40 * __s;
          *(v72 + 24) = v214;
          word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4);
          if (word_separating_markers_0 < 0)
          {
            break;
          }

          if (!hlp_NLUStrFind(v198, "POS", &v197, &v196 + 1))
          {
            LODWORD(v14) = -1710219264;
            goto LABEL_3;
          }

          **(v72 + 8) = 0;
          v73 = *(v72 + 8);
          if (v71)
          {
            cstdlib_strncat(v73, v197, HIWORD(v196));
          }

          else
          {
            cstdlib_strcat(v73, "non");
          }

          if (((*(*(a1 + 48) + 184))(a3, a4, v214, 9, &v213) & 0x80000000) == 0 && v213 == 1)
          {
            word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v214, 9, v72 + 16, &v213);
            if (word_separating_markers_0 < 0)
            {
              break;
            }
          }

          v74 = v211;
          v75 = v212;
          v76 = v211 - v212;
          v77 = *v72;
          if (v76 >= 128)
          {
            v78 = heap_Realloc(*(*(a1 + 24) + 8), *v72, (v76 + 1));
            *v72 = v78;
            if (!v78)
            {
              goto LABEL_328;
            }

            v77 = v78;
            v75 = v212;
            v74 = v211;
          }

          cstdlib_memcpy(v77, (v206 + v75), v74 - v75);
          *(*v72 - v212 + v211) = 0;
          v79 = v211;
          *(v72 + 28) = v212;
          *(v72 + 32) = v79;
          v175 = v79;
          ++__s;
        }
      }

      v66 = HIWORD(v213);
      LOWORD(v214) = HIWORD(v213);
      if (!HIWORD(v213))
      {
        goto LABEL_164;
      }
    }

LABEL_330:
    LODWORD(v14) = word_separating_markers_0;
    goto LABEL_3;
  }

LABEL_164:
  word_separating_markers_0 = pw_get_word_separating_markers_0(a1, a3, a4, HIWORD(v214), &v193, &v192);
  if (word_separating_markers_0 < 0)
  {
    goto LABEL_330;
  }

  v85 = v192;
  log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers Count:%d", v82, v83, v84, v192);
  if (v85)
  {
    v89 = 0;
    v90 = v193;
    do
    {
      log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Info: Valid Word Seperator Markers POS:%d", v86, v87, v88, v90[v89++]);
    }

    while (v85 > v89);
  }

  v91 = v85;
  v92 = *(a1 + 88);
  if (!v92)
  {
    v15 = v193;
    v93 = pw_dag_process(*(a1 + 24), v173, *(a1 + 80), *(a1 + 96), *(a1 + 100), *(a1 + 104), __b, v12, v13, v193, v91, &v208, &v207);
    if ((v93 & 0x80000000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_331;
  }

  LODWORD(v185) = 1;
  LODWORD(v14) = pw_crf_process(*(a1 + 24), v92, *(a1 + 128), *(a1 + 136), *(a1 + 144), v12, v13, &v208, &v207, &v185);
  if ((v14 & 0x80000000) != 0 || v185)
  {
    goto LABEL_3;
  }

LABEL_173:
  if ((paramc_ParamGetStr(*(*(a1 + 24) + 40), "spaceInPYT", &v191) & 0x80000000) == 0 && !LH_stricmp(v191, "yes"))
  {
    v15 = v193;
    v93 = fe_pw_PYT_process(a1, a3, a4, *(a1 + 24), v12, v13, v193, v91, &v208, &v207);
    if (v93 < 0)
    {
LABEL_331:
      LODWORD(v14) = v93;
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  if (*(a1 + 152) == 1)
  {
    word_separating_markers_0 = pw_group_csc_0(*(a1 + 24), __b, v12, v13, (a1 + 156), v208, v207, &v209, &v207 + 1);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }
  }

  else
  {
    HIWORD(v207) = v207;
    v94 = v208;
    v208 = 0;
    v209 = v94;
    LOWORD(v207) = 0;
  }

  v95 = *(a1 + 1184);
  if (v95)
  {
    word_separating_markers_0 = pw_igtree_process_0(*(a1 + 24), v12, &v209, &v207 + 1, v13, v95);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }
  }

  LODWORD(v14) = pw_respect_word_separating_markers_0(a1, a3, a4, HIWORD(v214), &v209, &v207 + 1);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v96 = heap_Calloc(*(*(a1 + 24) + 8), v204, 1);
  v205 = v96;
  if (!v96)
  {
    goto LABEL_3;
  }

  v97 = v96;
  v203 = heap_Calloc(*(*(a1 + 24) + 8), v202, 1);
  if (!v203)
  {
    goto LABEL_3;
  }

  v201 = heap_Calloc(*(*(a1 + 24) + 8), v200, 1);
  if (!v201)
  {
    goto LABEL_3;
  }

  v101 = HIWORD(v207);
  if (!HIWORD(v207))
  {
LABEL_239:
    LODWORD(v14) = (*(*(a1 + 48) + 104))(a3, a4, 2, HIWORD(v214), &v214);
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    cstdlib_memset(v97, 0, v204);
    cstdlib_memset(v203, 0, v202);
    cstdlib_memset(v201, 0, v200);
    HIWORD(v213) = 0;
    v124 = v214;
    if (!v214)
    {
      goto LABEL_3;
    }

    v125 = 0;
    LOWORD(v179) = 0;
    while (1)
    {
      word_separating_markers_0 = (*(*(a1 + 48) + 120))(a3, a4, v124, &v213 + 2);
      if (word_separating_markers_0 < 0)
      {
        goto LABEL_330;
      }

      LODWORD(v14) = (*(*(a1 + 48) + 168))(a3, a4, v214, 0, 1, &v210, &v213);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_3;
      }

      if (v210 <= 0xA && ((1 << v210) & 0x610) != 0)
      {
        word_separating_markers_0 = (*(*(a1 + 48) + 168))(a3, a4, v214, 1, 1, &v212, &v213);
        if (word_separating_markers_0 < 0)
        {
          goto LABEL_330;
        }

        LODWORD(v14) = (*(*(a1 + 48) + 168))(a3, a4, v214, 2, 1, &v211, &v213);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_3;
        }

        if (!v212 || v125 + 1 == v212 && v211 > v212)
        {
          break;
        }
      }

LABEL_316:
      v124 = HIWORD(v213);
      LOWORD(v214) = HIWORD(v213);
      if (!HIWORD(v213))
      {
        goto LABEL_3;
      }
    }

    v185 = 0;
    word_separating_markers_0 = (*(*(a1 + 48) + 176))(a3, a4, v214, 3, &v199, &v213);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v214, 14, &v198, &v213);
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    if (((*(*(a1 + 48) + 184))(a3, a4, v214, 10, &v196) & 0x80000000) == 0 && v196 == 1)
    {
      LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v214, 10, &v185, &v213);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_3;
      }
    }

    v127 = v211;
    if (v211 - v212 > 5)
    {
      v128 = 0;
      goto LABEL_278;
    }

    __dst[0] = 0;
    v184 = 0;
    *__s1 = 0;
    cstdlib_memcpy(__dst, (v206 + v212), v211 - v212);
    *(__dst + v211 - v212) = 0;
    if (!utf8_IsChineseLetter(__dst))
    {
      goto LABEL_275;
    }

    v129 = v192;
    if (v192)
    {
      v130 = v193;
      do
      {
        v131 = *v130++;
        if (v131 == v212)
        {
          goto LABEL_275;
        }
      }

      while (--v129);
    }

    if (!cstdlib_strstr(v199, "11") || !utf8_IsChineseLetter(&v190))
    {
      v182 = 0;
      v132 = cstdlib_strlen(__dst);
      v180 = 0;
      v181 = 0;
      utf8_Utf8ToUtf32_Tolerant(__dst, v132, &v182, 1u, &v181);
      v133 = v181;
      if (v132 <= 3)
      {
        v133 = 0;
      }

      utf8_Utf32ToUtf8(&v182, 1, __s1, v132 - v133, &v180);
      __s1[v180] = 0;
      if (!*(a1 + 120))
      {
LABEL_275:
        v128 = 0;
LABEL_276:
        v127 = v211;
        if (v211 - v212 <= 2)
        {
          cstdlib_memcpy(&v190, (v206 + v212), v211 - v212);
          v135 = &v190 + v211 - v212;
LABEL_279:
          *v135 = 0;
          if (v128)
          {
            if (v179)
            {
              LODWORD(__dst[0]) = 0;
              LODWORD(v14) = pw_check_if_glue_forbidden_0(a1, a3, a4, HIWORD(v214), v179, v214, __dst);
              v128 = LODWORD(__dst[0]) == 0;
              if ((v14 & 0x80000000) != 0)
              {
                goto LABEL_3;
              }
            }
          }

          hlp_NLUStrFind(v198, "POS", &v197, &v196 + 1);
          if (v185 && (v136 = cstdlib_strlen(v201), v137 = cstdlib_strlen(v185), v136 + v137 + 1 >= v200) || v197 && (v141 = cstdlib_strlen(v203), v142 = cstdlib_strlen(v197), v141 + v142 + 2 >= v202) || v199 && (v143 = cstdlib_strlen(v205), v144 = cstdlib_strlen(v199), v143 + v144 + 2 >= v204))
          {
            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "skip the merging due to the length limit of prosodic word", v138, v139, v140, v163);
          }

          else if (v128 && v179 && cstdlib_strcmp(v194, "latin"))
          {
            log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "merge special auxiliary word and neutral tone cases", v145, v146, v147, v163);
            *(v206 + v212 - 1) = 45;
            cstdlib_safe_strcat(*(a1 + 24), &v205, ".", &v204, 0x400uLL);
            if (v199)
            {
              cstdlib_safe_strcat(*(a1 + 24), &v205, v199, &v204, 0x400uLL);
            }

            if (HIWORD(v196))
            {
              cstdlib_safe_strcat(*(a1 + 24), &v203, "-", &v202, 0x40uLL);
              if (v197)
              {
                cstdlib_safe_strncat(*(a1 + 24), &v203, v197, HIWORD(v196), &v202);
              }
            }

            v148 = v201;
            if (v185 && cstdlib_strcmp(v201, ""))
            {
              cstdlib_safe_strcat(*(a1 + 24), &v201, v185, &v200, 0x40uLL);
            }

            else
            {
              cstdlib_strcpy(v148, "");
            }

            word_separating_markers_0 = (*(*(a1 + 48) + 192))(a3, a4, v214);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, v179, 2, 1, &v211, &v212 + 2);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            v151 = *(*(a1 + 48) + 160);
            v152 = v205;
            v153 = cstdlib_strlen(v205);
            word_separating_markers_0 = v151(a3, a4, v179, 3, (v153 + 1), v152, &v212 + 2);
            if (word_separating_markers_0 < 0)
            {
              goto LABEL_330;
            }

            v154 = v203;
            v155 = cstdlib_strlen(v203);
            v156 = cstdlib_strlen(v198);
            v157 = heap_Calloc(*(*(a1 + 24) + 8), 1, (v155 + v156 + 6));
            if (!v157)
            {
              goto LABEL_327;
            }

            v158 = v157;
            cstdlib_strcpy(v157, v198);
            v198 = v158;
            hlp_NLUStrSet(v158, "POS", v154);
            v14 = *(*(a1 + 48) + 160);
            v159 = cstdlib_strlen(v198);
            LODWORD(v14) = (v14)(a3, a4, v179, 14, (v159 + 1), v198, &v212 + 2);
            heap_Free(*(*(a1 + 24) + 8), v198);
            v198 = "";
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_3;
            }

            v160 = v201;
            if (cstdlib_strcmp(v201, ""))
            {
              v14 = *(*(a1 + 48) + 160);
              v161 = cstdlib_strlen(v160);
              LODWORD(v14) = (v14)(a3, a4, v179, 10, (v161 + 1), v160, &v212 + 2);
              if ((v14 & 0x80000000) != 0)
              {
                goto LABEL_3;
              }
            }

            goto LABEL_315;
          }

          if (v199)
          {
            cstdlib_safe_strcpy(*(a1 + 24), &v205, v199, &v204, 0x400uLL);
            LODWORD(v14) = 0;
          }

          cstdlib_strcpy(v203, "");
          if (HIWORD(v196) && v197)
          {
            cstdlib_safe_strncat(*(a1 + 24), &v203, v197, HIWORD(v196), &v202);
            LODWORD(v14) = 0;
          }

          if (v185)
          {
            cstdlib_safe_strcpy(*(a1 + 24), &v201, v185, &v200, 0x40uLL);
            LODWORD(v14) = 0;
          }

          else
          {
            cstdlib_strcpy(v201, "");
          }

          v179 = v214;
          if (((*(*(a1 + 48) + 184))(a3, a4) & 0x80000000) != 0 || v213 != 1)
          {
            v150 = "latin";
          }

          else
          {
            LODWORD(v14) = (*(*(a1 + 48) + 176))(a3, a4, v179, 9, &v195, &v213);
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_3;
            }

            v149 = cstdlib_strlen(v195);
            if (v149 > cstdlib_strlen("normal"))
            {
              goto LABEL_3;
            }

            v150 = v195;
          }

          cstdlib_strcpy(v194, v150);
LABEL_315:
          v125 = v211;
          goto LABEL_316;
        }

LABEL_278:
        cstdlib_memcpy(&v190, (v206 + v127 - 3), 3uLL);
        v135 = &v190 + 3;
        goto LABEL_279;
      }

      v134 = 0;
      while (cstdlib_strcmp(__s1, *(*(a1 + 112) + 8 * v134)) || !utf8_IsChineseLetter(&v190))
      {
        if (++v134 >= *(a1 + 120))
        {
          goto LABEL_275;
        }
      }
    }

    v128 = 1;
    goto LABEL_276;
  }

  v102 = 0;
  while (1)
  {
    v103 = v209;
    v165 = v102;
    v104 = LOWORD(v209[2 * v102 + 1]);
    if (v104 == 1)
    {
      goto LABEL_238;
    }

    if (!v104)
    {
      LODWORD(v14) = -1710219254;
      log_OutText(*(*(a1 + 24) + 32), "FE_PW", 5, 0, "Error: the prosody word should has at least one lexical word", v98, v99, v100, v163);
      goto LABEL_3;
    }

    v185 = 0;
    cstdlib_memset(v97, 0, v204);
    cstdlib_memset(v203, 0, v202);
    cstdlib_memset(v201, 0, v200);
    __sa = v186;
    v174 = (v103 + 16 * v165);
    if (*(v174 + 4))
    {
      break;
    }

    v164 = 0;
LABEL_227:
    v186 = __sa;
    word_separating_markers_0 = pw_merge_NLU_0(*(a1 + 24), &v186);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    if (*(a1 + 152) == 1)
    {
      pw_split_csc_pw_0(*(a1 + 24), v174, &v205, &v204);
    }

    word_separating_markers_0 = (*(*(a1 + 48) + 160))(a3, a4, **v174, 2, 1, &v211, &v212 + 2);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    v116 = *(*(a1 + 48) + 160);
    v117 = **v174;
    v97 = v205;
    v118 = cstdlib_strlen(v205);
    word_separating_markers_0 = v116(a3, a4, v117, 3, (v118 + 1), v97, &v212 + 2);
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    hlp_NLUStrRemoveKeyVal(__sa, "POS");
    hlp_NLUStrSet(__sa, "POS", v203);
    v177 = *(*(a1 + 48) + 160);
    v119 = **v174;
    v120 = cstdlib_strlen(__sa);
    word_separating_markers_0 = v177(a3, a4, v119, 14, (v120 + 1), __sa, &v212 + 2);
    v198 = "";
    if (word_separating_markers_0 < 0)
    {
      goto LABEL_330;
    }

    if (__sa)
    {
      heap_Free(*(*(a1 + 24) + 8), __sa);
      v186 = 0;
    }

    if ((v164 & 1) == 0)
    {
      v178 = *(*(a1 + 48) + 160);
      v121 = **v174;
      v122 = v201;
      v123 = cstdlib_strlen(v201);
      word_separating_markers_0 = v178(a3, a4, v121, 10, (v123 + 1), v122, &v212 + 2);
      if (word_separating_markers_0 < 0)
      {
        goto LABEL_330;
      }
    }

    v101 = HIWORD(v207);
LABEL_238:
    v102 = v165 + 1;
    if (v165 + 1 >= v101)
    {
      goto LABEL_239;
    }
  }

  v176 = 0;
  v105 = 0;
  v168 = 1;
  LODWORD(v14) = -1710219254;
  while (1)
  {
    v106 = (*(*(a1 + 48) + 168))(a3, a4, (*v174)[v176], 1, 1, &v212, &v213);
    if (v106 < 0 || (v106 = (*(*(a1 + 48) + 168))(a3, a4, (*v174)[v176], 2, 1, &v211, &v213), v106 < 0) || (v106 = (*(*(a1 + 48) + 176))(a3, a4, (*v174)[v176], 3, &v199, &v213), v106 < 0) || (v106 = (*(*(a1 + 48) + 176))(a3, a4, (*v174)[v176], 14, &v198, &v213), v106 < 0))
    {
LABEL_334:
      LODWORD(v14) = v106;
      goto LABEL_335;
    }

    v166 = *(*(a1 + 24) + 8);
    v107 = cstdlib_strlen(v198);
    v108 = v107;
    if (!__sa)
    {
      break;
    }

    v109 = cstdlib_strlen(__sa);
    v110 = heap_Realloc(v166, __sa, v108 + v109 + 2);
    if (!v110)
    {
      goto LABEL_335;
    }

    v111 = v110;
    cstdlib_strcat(v110, ";");
    cstdlib_strcat(v111, v198);
    __sa = v111;
LABEL_201:
    if (v168)
    {
      v168 = 0;
      v164 = 1;
      if (((*(*(a1 + 48) + 184))(a3, a4, (*v174)[v176], 10, &v196) & 0x80000000) == 0 && v196 == 1)
      {
        v106 = (*(*(a1 + 48) + 176))(a3, a4, (*v174)[v176], 10, &v185, &v213);
        if (v106 < 0)
        {
          goto LABEL_334;
        }

        v164 = 0;
        v168 = 1;
      }
    }

    else
    {
      v168 = 0;
      v164 = 1;
    }

    if (v176)
    {
      *(v206 + v212 - 1) = 45;
      cstdlib_safe_strcat(*(a1 + 24), &v205, ".", &v204, 0x400uLL);
      cstdlib_safe_strcat(*(a1 + 24), &v203, "-", &v202, 0x40uLL);
      v167 = (*v174)[v176];
      v195 = v199;
      v112 = cstdlib_strstr(v199, "{SEP");
      v195 = v112;
      if (v112)
      {
        v195 = v112 + 4;
        v112[4] += v105;
      }
    }

    else
    {
      v167 = 0;
    }

    cstdlib_safe_strcat(*(a1 + 24), &v205, v199, &v204, 0x400uLL);
    if (hlp_NLUStrFind(v198, "POS", &v197, &v196 + 1))
    {
      cstdlib_safe_strncat(*(a1 + 24), &v203, v197, HIWORD(v196), &v202);
    }

    v113 = v168;
    if (!v185)
    {
      v113 = 0;
    }

    if (v113 == 1)
    {
      cstdlib_safe_strcat(*(a1 + 24), &v201, v185, &v200, 0x40uLL);
    }

    for (i = v199; ; i = v115 + 1)
    {
      v115 = cstdlib_strstr(i, ".");
      v195 = v115;
      if (!v115)
      {
        if (!i)
        {
          break;
        }

        v115 = cstdlib_strstr(i, "{SEP");
        v195 = v115;
        if (!v115)
        {
          break;
        }
      }

      ++v105;
    }

    if (v167)
    {
      v106 = (*(*(a1 + 48) + 192))(a3, a4, v167);
      if (v106 < 0)
      {
        goto LABEL_334;
      }
    }

    ++v105;
    if (++v176 >= *(v174 + 4))
    {
      goto LABEL_227;
    }
  }

  __sa = heap_Alloc(v166, v107 + 1);
  if (__sa)
  {
    cstdlib_strcpy(__sa, v198);
    goto LABEL_201;
  }

  __sa = 0;
LABEL_335:
  v186 = __sa;
LABEL_3:
  v15 = v193;
  if (v193)
  {
LABEL_4:
    heap_Free(*(*(a1 + 24) + 8), v15);
  }

LABEL_5:
  if (v12)
  {
    if (v13)
    {
      v16 = v13;
      v17 = v13;
      v18 = v12;
      do
      {
        if (*v18)
        {
          heap_Free(*(*(a1 + 24) + 8), *v18);
        }

        v18 += 5;
        --v17;
      }

      while (v17);
      v19 = (v12 + 8);
      do
      {
        if (*v19)
        {
          heap_Free(*(*(a1 + 24) + 8), *v19);
        }

        v19 += 5;
        --v16;
      }

      while (v16);
    }

    heap_Free(*(*(a1 + 24) + 8), v12);
  }

  v20 = v209;
  if (v209)
  {
    v21 = HIWORD(v207);
    if (HIWORD(v207))
    {
      v22 = v209;
      do
      {
        if (*v22)
        {
          heap_Free(*(*(a1 + 24) + 8), *v22);
          *v22 = 0;
        }

        v22 += 2;
        --v21;
      }

      while (v21);
    }

    heap_Free(*(*(a1 + 24) + 8), v20);
  }

  v23 = v208;
  if (v208)
  {
    v24 = v207;
    if (v207)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(v208 + v25);
        if (v27)
        {
          heap_Free(*(*(a1 + 24) + 8), v27);
          *(v208 + v25) = 0;
          v24 = v207;
        }

        ++v26;
        v25 += 16;
      }

      while (v26 < v24);
      v23 = v208;
    }

    heap_Free(*(*(a1 + 24) + 8), v23);
    v208 = 0;
  }

  if (v186)
  {
    heap_Free(*(*(a1 + 24) + 8), v186);
  }

  if (v205)
  {
    heap_Free(*(*(a1 + 24) + 8), v205);
  }

  if (v203)
  {
    heap_Free(*(*(a1 + 24) + 8), v203);
  }

  if (v201)
  {
    heap_Free(*(*(a1 + 24) + 8), v201);
  }

  if (v207)
  {
    v28 = 0;
  }

  else
  {
    v28 = v14 == -1710219256;
  }

  if (v28)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t pw_get_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v27 = 0;
  v26 = 0;
  v9 = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v26, &v27);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_15:
    if (*a5)
    {
      heap_Free(*(*(a1 + 24) + 8), *a5);
      *a5 = 0;
    }

    return v9;
  }

  v10 = heap_Alloc(*(*(a1 + 24) + 8), 4 * v27);
  *a5 = v10;
  if (!v10)
  {
    goto LABEL_14;
  }

  *a6 = 0;
  v15 = v27;
  if (v27)
  {
    v16 = 0;
    v17 = v26;
    v18 = v26;
    v19 = v26;
    do
    {
      v20 = *v19;
      v19 += 8;
      v21 = (1 << v20) & 0x3C0010124001140;
      if (v20 <= 0x39 && v21 != 0)
      {
        *(v10 + 4 * v16) = v18[3] - v17[3];
        v16 = *a6 + 1;
        *a6 = v16;
      }

      v18 = v19;
      --v15;
    }

    while (v15);
    v23 = 4 * (v16 + 1);
  }

  else
  {
    v23 = 4;
  }

  v24 = heap_Realloc(*(*(a1 + 24) + 8), v10, v23);
  *a5 = v24;
  if (!v24)
  {
LABEL_14:
    log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v11, v12, v13, v14, v26);
    v9 = 2584748042;
    goto LABEL_15;
  }

  return v9;
}

uint64_t pw_group_csc_0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8, _WORD *a9)
{
  v10 = a7;
  v91 = *MEMORY[0x277D85DE8];
  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "pw_group_csc Begin", a6, a7, a8, v72);
  v13 = heap_Calloc(*(a1 + 8), v10, 16);
  *a8 = v13;
  if (!v13)
  {
    v69 = 2584748042;
    v70 = *(a1 + 32);
LABEL_72:
    log_OutPublic(v70, "FE_PW", 37000, 0, v14, v15, v16, v17, v73);
    return v69;
  }

  v74 = a8;
  v76 = a1;
  *a9 = 0;
  v90 = 0;
  v89 = 0;
  if (v10)
  {
    LOWORD(v18) = 0;
    v78 = 0;
    v19 = 0;
    v20 = a4;
    v21 = (v13 + 8);
    v80 = v10;
    while (1)
    {
      v82 = v21;
      v77 = v19;
      *v21 = 0;
      v22 = v10 <= (v18 + 1) ? v18 + 1 : v10;
      v75 = v22;
      v23 = v18;
      while (1)
      {
        v24 = (a6 + 16 * v23);
        if (v20)
        {
          v25 = 0;
          v26 = **v24;
          v27 = (a3 + 24);
          while (1)
          {
            v28 = *v27;
            v27 += 20;
            if (v28 == v26)
            {
              break;
            }

            if (v20 == ++v25)
            {
              v83 = v20;
              goto LABEL_15;
            }
          }

          v83 = v25;
LABEL_15:
          v30 = 0;
          v88 = 0;
          v31 = (a3 + 24);
          while (1)
          {
            v32 = *v31;
            v31 += 20;
            if (v32 == v26)
            {
              break;
            }

            if (v20 == ++v30)
            {
              v29 = v20;
              goto LABEL_20;
            }
          }

          v29 = v30;
        }

        else
        {
          v83 = 0;
          v29 = 0;
          v88 = 0;
        }

LABEL_20:
        v33 = *(a3 + 40 * v29);
        v34 = (Utf8_Utf8NbrOfSymbols(v33) - 1);
        v36 = 0;
        if (v34 == 2)
        {
          if (v33)
          {
            if (cstdlib_strlen(v33))
            {
              v35 = cstdlib_strlen(v33);
              if (cstdlib_strstr(",.:?!;()", &v33[v35 - 1]))
              {
                v36 = 1;
              }
            }
          }
        }

        v37 = 0;
        if (v20)
        {
          v38 = (a3 + 24);
          while (1)
          {
            v39 = *v38;
            v38 += 20;
            if (v39 == **v24)
            {
              break;
            }

            if (v20 == ++v37)
            {
              LODWORD(v37) = v20;
              goto LABEL_32;
            }
          }

          LODWORD(v37) = v37;
        }

LABEL_32:
        v40 = *(a3 + 40 * v37 + 16);
        utf8_getUTF8Char(v33, 0, &v89);
        IsChineseLetter = utf8_IsChineseLetter(&v89);
        pw_weather_word_in_prompt(a2, a3 + 40 * v83, &v88);
        v42 = a6 + 16 * v23;
        v45 = *(v42 + 8);
        v44 = (v42 + 8);
        v43 = v45;
        v46 = !v36;
        if (v34 == 1)
        {
          v46 = 0;
        }

        if (v46 || v43 != 1)
        {
          break;
        }

        v47 = cstdlib_strcmp(v40, "latin") && IsChineseLetter;
        if (!v47 || v88 != 0)
        {
          break;
        }

        if (cstdlib_strstr(a5, v33))
        {
          v49 = 1;
        }

        else
        {
          v49 = v36;
        }

        v50 = v82;
        if (v49)
        {
          v87 = v23 + 1;
          v23 = *v82;
          v10 = v80;
          goto LABEL_56;
        }

        v51 = ++*v82;
        v10 = v80;
        if (v51 > 2)
        {
          v87 = v23;
          goto LABEL_55;
        }

        if (v80 <= ++v23)
        {
          v87 = v75;
          goto LABEL_57;
        }
      }

      v87 = v23;
      v10 = v80;
      if (*v82)
      {
        goto LABEL_57;
      }

      *v82 = *v44;
LABEL_55:
      v50 = &v87;
LABEL_56:
      *v50 = v23 + 1;
LABEL_57:
      ++*a9;
      *(*v74 + 16 * v78) = heap_Calloc(*(v76 + 8), *(*v74 + 16 * v78 + 8), 2);
      v52 = *v74;
      v53 = *v74 + 16 * v78;
      v54 = *v53;
      if (!*v53)
      {
        break;
      }

      v18 = v87;
      v55 = a6 + 16 * v87;
      if (*(v53 + 8) <= *(v55 - 8))
      {
        if (*(v53 + 8))
        {
          v67 = 0;
          v68 = *(v55 - 16);
          do
          {
            *(v54 + 2 * v67) = *(v68 + 2 * v67);
            ++v67;
          }

          while (v67 < *(v53 + 8));
        }
      }

      else
      {
        v56 = heap_Calloc(*(v76 + 8), 1, 1024);
        if (!v56)
        {
          break;
        }

        v57 = v56;
        v58 = *v74 + 16 * v78;
        *(v58 + 12) = 1;
        v59 = *(v58 + 8);
        if (v59)
        {
          v60 = 0;
          v61 = -v59;
          v84 = v18;
          v62 = (a6 - 16 * v59 + 16 * v18);
          v63 = v59 - 1;
          do
          {
            v64 = *v62;
            v62 += 2;
            v65 = *v64;
            *(*(*v74 + 16 * v78) + 2 * (v61 + *(*v74 + 16 * v78 + 8))) = v65;
            sprintf(&v57[v60], "%d-", v65);
            v60 = cstdlib_strlen(v57);
            ++v61;
          }

          while (v63--);
          LODWORD(v18) = v84;
        }

        log_OutText(*(v76 + 32), "FE_PW", 5, 0, "\t group [tids:%s, ntok: %d]", v15, v16, v17, v57);
        heap_Free(*(v76 + 8), v57);
        v52 = *v74;
      }

      v19 = v77 + 1;
      v78 = (v77 + 1);
      v21 = (v52 + 16 * v78 + 8);
      v90 = 0;
      v89 = 0;
      if (v18 >= v10)
      {
        goto LABEL_69;
      }
    }

    v69 = 2584748042;
    v70 = *(v76 + 32);
    goto LABEL_72;
  }

LABEL_69:
  log_OutText(*(v76 + 32), "FE_PW", 5, 0, "pw_group_csc End", v15, v16, v17, v73);
  return 0;
}

uint64_t pw_igtree_process_0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4, unsigned int a5, uint64_t a6)
{
  v10 = a1;
  inited = 2584748042;
  v12 = *a4;
  __s1 = 0;
  v13 = *a3;
  v14 = heap_Calloc(*(a1 + 8), 1, 8 * *(a6 + 1296) - 8);
  if (!v14)
  {
    return inited;
  }

  v15 = v14;
  inited = igtree_initFeatureVector(v10, v14, (*(a6 + 1296) - 1));
  if ((inited & 0x80000000) != 0)
  {
    v17 = 0;
    goto LABEL_51;
  }

  v16 = heap_Calloc(*(v10 + 8), a5, 4);
  v17 = v16;
  if (!v16)
  {
    inited = 2584748042;
    goto LABEL_51;
  }

  v56 = v10;
  v47 = a4;
  v48 = a3;
  if (!v12)
  {
    v20 = v13;
LABEL_47:
    *v47 = v12;
    *v48 = v20;
    goto LABEL_50;
  }

  v18 = 0;
  v19 = 0;
  v54 = a5 - 1;
  v20 = v13;
  v52 = v16;
  v46 = a5;
  while (1)
  {
    LOWORD(v21) = *(v20 + 16 * v18 + 8);
    v53 = v12;
    if (v21)
    {
      if (v54 != v19)
      {
        break;
      }
    }

LABEL_42:
    ++v18;
    v12 = v53;
    if (v18 >= v53)
    {
      goto LABEL_47;
    }
  }

  v22 = 0;
  v23 = 0;
  v51 = (v18 + 2);
  v49 = (v18 + 1);
  v24 = 2;
  while (1)
  {
    v25 = v20;
    v26 = v19;
    *(v17 + 4 * v19) = v21 - 1 == v22;
    v27 = igtree_setFeatureVector(v56, v15, *(a6 + 1312), *(a6 + 1296), a2, a5, v19);
    if ((v27 & 0x80000000) != 0)
    {
      inited = v27;
      goto LABEL_50;
    }

    inited = igtree_Process(a6, v15, &__s1);
    if ((inited & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    if (!cstdlib_strcmp(__s1, "NOMATCH"))
    {
      goto LABEL_33;
    }

    v28 = *(v17 + 4 * v26);
    if (v28 == (cstdlib_strcmp(__s1, "1") == 0))
    {
      inited = 0;
      v17 = v52;
      goto LABEL_33;
    }

    v20 = v25;
    if (!v28)
    {
      break;
    }

    v29 = v25 + 16 * v18;
    v30 = *(v29 + 24) + *(v29 + 8);
    if (v30 > 4)
    {
      inited = 0;
LABEL_36:
      v17 = v52;
      goto LABEL_37;
    }

    *(v29 + 8) += *(v29 + 24);
    v40 = heap_Realloc(*(v56 + 8), *v29, 2 * v30);
    *v29 = v40;
    if (!v40)
    {
      goto LABEL_49;
    }

    LOWORD(v41) = *(v29 + 24);
    v42 = *(v29 + 16);
    if (v41)
    {
      v43 = 0;
      do
      {
        *(v40 - 2 * v41 + 2 * *(v29 + 8) + 2 * v43) = *(v42 + 2 * v43);
        ++v43;
        v41 = *(v29 + 24);
      }

      while (v43 < v41);
    }

    *(v29 + 12) |= *(v29 + 28);
    heap_Free(*(v56 + 8), v42);
    if (v51 < v53)
    {
      cstdlib_memmove((v29 + 16), (v25 + 16 * v51), 16 * (v53 - v18) - 32);
    }

    inited = 0;
    v53 = (v53 - 1);
    v17 = v52;
    a5 = v46;
LABEL_33:
    v20 = v25;
LABEL_37:
    v19 = v26 + 1;
    v22 = v23 + 1;
    v21 = *(v20 + 16 * v18 + 8);
    v24 += 2;
    if (++v23 >= v21 || v54 == (v26 + 1))
    {
      goto LABEL_42;
    }
  }

  v31 = heap_Realloc(*(v56 + 8), v25, 16 * v53 + 16);
  if (v31)
  {
    v32 = v31 + 16 * v18;
    v50 = v31;
    v33 = (v31 + 16 * v49);
    v34 = v32;
    if (v49 < v53)
    {
      cstdlib_memmove((v32 + 32), v33, 16 * (v53 + ~v18));
      v32 = v34;
    }

    v35 = *(v32 + 8) + ~v23;
    *(v33 + 4) = v35;
    v36 = heap_Alloc(*(v56 + 8), 2 * v35);
    *v33 = v36;
    if (v36)
    {
      if (*(v33 + 4))
      {
        v37 = 0;
        v38 = *v34 + v24;
        do
        {
          *(v36 + 2 * v37) = *(v38 + 2 * v37);
          ++v37;
        }

        while (v37 < *(v33 + 4));
      }

      v39 = *(v34 + 12);
      v20 = v50;
      if (v39 == 1)
      {
        *(v34 + 12) = 0;
      }

      else
      {
        v39 = 0;
      }

      inited = 0;
      *(v33 + 3) = v39;
      *(v34 + 8) = v23 + 1;
      v53 = (v53 + 1);
      goto LABEL_36;
    }
  }

LABEL_49:
  inited = 2584748042;
  v17 = v52;
LABEL_50:
  v10 = v56;
LABEL_51:
  igtree_freeFeatureVector(v10, v15, (*(a6 + 1296) - 1));
  heap_Free(*(v10 + 8), v15);
  if (v17)
  {
    heap_Free(*(v10 + 8), v17);
  }

  return inited;
}

uint64_t pw_respect_word_separating_markers_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned __int16 *a6)
{
  if (!*a6)
  {
    return 0;
  }

  v6 = a6;
  v12 = 0;
  v13 = 0;
  v32 = 0;
  v14 = *a5;
  while (1)
  {
    if (*(v14 + 16 * v12 + 8) >= 2u)
    {
      v32 = 0;
      v14 = *a5;
      v15 = *a5 + 16 * v12;
      if (*(v15 + 8) >= 2u)
      {
        break;
      }
    }

LABEL_17:
    if (++v12 >= *v6)
    {
      return v13;
    }
  }

  v16 = 1;
  while (1)
  {
    v13 = pw_check_if_glue_forbidden_0(a1, a2, a3, a4, *(*v15 + 2 * v16 - 2), *(*v15 + 2 * v16), &v32);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    if (v32)
    {
      v17 = heap_Realloc(*(*(a1 + 24) + 8), *a5, 16 * *v6 + 16);
      if (!v17)
      {
        goto LABEL_21;
      }

      *a5 = v17;
      v22 = *v6 + 1;
      v31 = v6;
      *v6 = v22;
      if (v12 + 2 < v22)
      {
        cstdlib_memmove((v17 + 16 * (v12 + 2)), (v17 + 16 * v12 + 16), (((v22 - v12) << 32) - 0x200000000) >> 28);
        v17 = *a5;
      }

      v23 = v17 + 16 * v12;
      v24 = *(v23 + 8) - v16;
      v25 = 16 * v12 + 16;
      *(v17 + v25 + 8) = v24;
      *(v23 + 8) = v16;
      *(*a5 + v25) = heap_Calloc(*(*(a1 + 24) + 8), 2, v24);
      v14 = *a5;
      v26 = *a5 + v25;
      v27 = *v26;
      v6 = v31;
      if (!*v26)
      {
LABEL_21:
        log_OutPublic(*(*(a1 + 24) + 32), "FE_PW", 37000, 0, v18, v19, v20, v21, v31);
        return 2584748042;
      }

      if (*(v26 + 8))
      {
        v28 = 0;
        v29 = *(v14 + 16 * v12) + 2 * v16;
        do
        {
          *(v27 + 2 * v28) = *(v29 + 2 * v28);
          ++v28;
        }

        while (v28 < *(v26 + 8));
      }

      goto LABEL_17;
    }

    ++v16;
    v14 = *a5;
    v15 = *a5 + 16 * v12;
    if (*(v15 + 8) <= v16)
    {
      goto LABEL_17;
    }
  }
}

char *cstdlib_safe_strcat(uint64_t a1, const char **a2, char *__s, void *a4, unint64_t a5)
{
  v10 = cstdlib_strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return cstdlib_strcat(v11, __s);
}

char *cstdlib_safe_strncat(uint64_t a1, const char **a2, const char *a3, size_t a4, void *a5)
{
  checksize_and_realloc(a1, a2, a4, a5, 0x40uLL);
  v8 = *a2;

  return cstdlib_strncat(v8, a3, a4);
}

uint64_t pw_merge_NLU_0(uint64_t a1, char **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (hlp_NLUStrKeyLen(v2) >= 3)
    {
      v6 = *v2 - 69;
      v7 = v6 > 0xE;
      v8 = (1 << v6) & 0x4011;
      v9 = v7 || v8 == 0;
      if (!v9 && v2[1] == 95)
      {
        ++v5;
      }
    }

    v2 = hlp_NLUStrNext(v2);
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  v10 = 2584748042;
  v11 = heap_Calloc(*(a1 + 8), 8, v5);
  if (v11)
  {
    v12 = v11;
    v13 = *a2;
    if (!*a2)
    {
      goto LABEL_158;
    }

    v106 = a2;
    v105 = -1710219254;
    v14 = 0;
    do
    {
      v15 = hlp_NLUStrKeyLen(v13);
      if (v15 >= 3)
      {
        v16 = *v13 - 69;
        v7 = v16 > 0xE;
        v17 = (1 << v16) & 0x4011;
        v18 = v7 || v17 == 0;
        if (!v18 && v13[1] == 95)
        {
          v19 = v15;
          v20 = heap_Calloc(*(a1 + 8), 1, v15 - 1);
          if (!v20)
          {
            v26 = v12;
            v10 = 2584748042;
            goto LABEL_180;
          }

          v21 = v20;
          cstdlib_strncpy(v20, v13 + 2, v19 - 2);
          if (v14)
          {
            v22 = v14;
            v23 = v12;
            v24 = v14;
            while (1)
            {
              if (!*v23)
              {
                goto LABEL_29;
              }

              if (!cstdlib_strcmp(*v23, v21))
              {
                break;
              }

              ++v23;
              if (!--v24)
              {
                goto LABEL_29;
              }
            }

            heap_Free(*(a1 + 8), v21);
          }

          else
          {
            v22 = 0;
LABEL_29:
            *(v12 + 8 * v22) = v21;
            ++v14;
          }
        }
      }

      v13 = hlp_NLUStrNext(v13);
    }

    while (v13);
    if (!v14)
    {
LABEL_158:
      v10 = 0;
      goto LABEL_186;
    }

    v25 = heap_Realloc(*(a1 + 8), v12, 8 * v14);
    if (v25)
    {
      v26 = v25;
      v27 = heap_Calloc(*(a1 + 8), 2, v14);
      if (v27)
      {
        v99 = v27;
        for (i = *v106; i; i = hlp_NLUStrNext(i))
        {
          v29 = hlp_NLUStrKeyLen(i);
          if (v29 >= 3)
          {
            v30 = *i - 69;
            v7 = v30 > 0xE;
            v31 = (1 << v30) & 0x4011;
            v32 = v7 || v31 == 0;
            if (!v32 && i[1] == 95)
            {
              v33 = 0;
              v34 = v29 - 2;
              while (1)
              {
                v35 = *(v26 + 8 * v33);
                if (!v35)
                {
                  goto LABEL_49;
                }

                if (!cstdlib_strncmp(v35, i + 2, v34))
                {
                  break;
                }

                if (v14 == ++v33)
                {
                  goto LABEL_49;
                }
              }

              if ((v33 & 0x8000) == 0)
              {
                ++*(v99 + 2 * (v33 & 0x7FFF));
              }
            }
          }

LABEL_49:
          ;
        }

        v36 = heap_Calloc(*(a1 + 8), 8, v14);
        if (!v36)
        {
          v10 = 2584748042;
          v88 = v99;
          goto LABEL_179;
        }

        v37 = v36;
        v38 = 0;
        v39 = v99;
        do
        {
          v40 = heap_Calloc(*(a1 + 8), 8, *(v99 + 2 * v38));
          *(v37 + 8 * v38) = v40;
          if (!v40)
          {
            v88 = v99;
            v41 = 0;
            goto LABEL_165;
          }

          ++v38;
        }

        while (v14 != v38);
        v41 = heap_Calloc(*(a1 + 8), 2, v14);
        if (!v41)
        {
LABEL_164:
          v88 = v39;
          goto LABEL_165;
        }

        for (j = *v106; j; j = hlp_NLUStrNext(j))
        {
          v43 = hlp_NLUStrKeyLen(j);
          if (v43 >= 3)
          {
            v44 = *j - 69;
            v7 = v44 > 0xE;
            v45 = (1 << v44) & 0x4011;
            if (!v7 && v45 != 0 && j[1] == 95)
            {
              KeyIdx = hlp_getKeyIdx(v26, v14, j + 2, (v43 - 2));
              if ((KeyIdx & 0x80000000) == 0)
              {
                v48 = KeyIdx;
                v103 = *(v37 + 8 * KeyIdx);
                v49 = hlp_NLUStrKeyValue(j);
                v50 = v49;
                v51 = v49 ? hlp_NLUStrLength(v49) : 0;
                v52 = v51;
                if (!hlp_checkValExist(v103, *(v41 + 2 * v48), v50, v51))
                {
                  v53 = heap_Calloc(*(a1 + 8), 1, v52 + 2);
                  if (!v53)
                  {
LABEL_188:
                    v88 = v99;
                    goto LABEL_165;
                  }

                  if (v50)
                  {
                    v54 = v50;
                    v55 = v53;
                    cstdlib_strncpy(v53, v54, v52);
                  }

                  else
                  {
                    v55 = v53;
                    cstdlib_strcpy(v53, " ");
                  }

                  v56 = *(v41 + 2 * v48);
                  *&v103[8 * v56] = v55;
                  *(v41 + 2 * v48) = v56 + 1;
                }
              }
            }
          }
        }

        v57 = 0;
        v39 = v99;
        do
        {
          v58 = heap_Realloc(*(a1 + 8), *(v37 + 8 * v57), 8 * *(v41 + 2 * v57));
          if (!v58)
          {
            goto LABEL_164;
          }

          *(v37 + 8 * v57++) = v58;
        }

        while (v14 != v57);
        v59 = 0;
        while (!*(v41 + 2 * v59))
        {
LABEL_155:
          if (++v59 == v14)
          {
            v88 = v99;
            v105 = 0;
LABEL_165:
            for (k = 0; k != v14; ++k)
            {
              v90 = *(v37 + 8 * k);
              if (v90)
              {
                if (v41)
                {
                  v91 = *(v41 + 2 * k);
                  if (v91)
                  {
                    for (m = 0; m < v91; ++m)
                    {
                      v93 = *(*(v37 + 8 * k) + 8 * m);
                      if (v93)
                      {
                        heap_Free(*(a1 + 8), v93);
                        v91 = *(v41 + 2 * k);
                      }
                    }

                    v90 = *(v37 + 8 * k);
                  }
                }

                heap_Free(*(a1 + 8), v90);
              }
            }

            heap_Free(*(a1 + 8), v37);
            if (v41)
            {
              heap_Free(*(a1 + 8), v41);
            }

            v10 = v105;
LABEL_179:
            heap_Free(*(a1 + 8), v88);
            v12 = v26;
LABEL_180:
            if (v14)
            {
LABEL_181:
              for (n = 0; n != v14; ++n)
              {
                v95 = *(v26 + 8 * n);
                if (v95)
                {
                  heap_Free(*(a1 + 8), v95);
                }
              }

              v12 = v26;
            }

LABEL_186:
            heap_Free(*(a1 + 8), v12);
            return v10;
          }
        }

        v60 = 0;
        while (1)
        {
          v61 = *(v26 + 8 * v59);
          v62 = *(*(v37 + 8 * v59) + 8 * v60);
          v63 = *v106;
          v108 = 0;
          __s2 = 0;
          v104 = v63;
          if (!v63)
          {
            goto LABEL_129;
          }

          __s1 = v62;
          if (v62)
          {
            v97 = cstdlib_strlen(v62);
          }

          else
          {
            v97 = 0;
          }

          v64 = *(a1 + 8);
          v65 = cstdlib_strlen(v61);
          v66 = heap_Calloc(v64, 1, v65 + 3);
          if (!v66)
          {
            goto LABEL_188;
          }

          v67 = v66;
          cstdlib_strcpy(v66, "S_");
          __s = v67;
          cstdlib_strcat(v67, v61);
          v68 = *(a1 + 8);
          v69 = cstdlib_strlen(v61);
          v70 = heap_Calloc(v68, 1, v69 + 3);
          if (!v70)
          {
            v101 = 0;
            v102 = 0;
LABEL_122:
            v82 = -1710219254;
            v80 = __s;
            goto LABEL_123;
          }

          v71 = v70;
          cstdlib_strcpy(v70, "I_");
          v101 = v71;
          cstdlib_strcat(v71, v61);
          v72 = *(a1 + 8);
          v73 = cstdlib_strlen(v61);
          v74 = heap_Calloc(v72, 1, v73 + 3);
          if (!v74)
          {
            v102 = 0;
            goto LABEL_122;
          }

          v75 = v74;
          cstdlib_strcpy(v74, "E_");
          v102 = v75;
          cstdlib_strcat(v75, v61);
          v76 = __s1;
          if (!hlp_NLUStrFind(v104, __s, &__s2, &v108))
          {
            goto LABEL_94;
          }

          v77 = v108;
          if (!__s1 || v108)
          {
            goto LABEL_91;
          }

          if (cstdlib_strcmp(__s1, " "))
          {
            break;
          }

LABEL_95:
          if (!hlp_NLUStrFind(v104, v101, &__s2, &v108))
          {
            goto LABEL_103;
          }

          v78 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_104;
            }

            v78 = v108;
          }

          if (!__s1 || v97 != v78 || cstdlib_strncmp(__s1, __s2, v78))
          {
LABEL_103:
            heap_Free(*(a1 + 8), v101);
            v101 = 0;
          }

LABEL_104:
          if (!hlp_NLUStrFind(v104, v102, &__s2, &v108))
          {
            goto LABEL_114;
          }

          v79 = v108;
          if (__s1 && !v108)
          {
            if (!cstdlib_strcmp(__s1, " "))
            {
              goto LABEL_115;
            }

            v79 = v108;
          }

          if (!__s1 || v97 != v79)
          {
LABEL_114:
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
            if (!__s1)
            {
              goto LABEL_117;
            }

            goto LABEL_115;
          }

          if (cstdlib_strncmp(__s1, __s2, v79))
          {
            heap_Free(*(a1 + 8), v102);
            v102 = 0;
          }

LABEL_115:
          if (!cstdlib_strcmp(__s1, " "))
          {
            v76 = 0;
          }

LABEL_117:
          hlp_NLUStrRemoveRangeKey(v104, v61, v76);
          v80 = __s;
          if (__s)
          {
            if (!v101)
            {
              v81 = __s;
              if (!v102)
              {
                goto LABEL_120;
              }
            }
          }

          if (__s)
          {
            v85 = 1;
          }

          else
          {
            v85 = v101 == 0;
          }

          v86 = !v85;
          if (!v85)
          {
            v87 = v101;
            if (!v102)
            {
              goto LABEL_139;
            }
          }

          if (__s || v101 || !v102)
          {
            if (__s && v102)
            {
              hlp_NLUStrAppendKeyVal(v104, __s, v76);
              v81 = v102;
              goto LABEL_120;
            }

            if (__s && v101 && (v81 = __s, !v102))
            {
LABEL_120:
              hlp_NLUStrAppendKeyVal(v104, v81, v76);
              v80 = __s;
              v82 = 0;
            }

            else
            {
              if (!v102)
              {
                v86 = 0;
              }

              v87 = v102;
              if (v86)
              {
LABEL_139:
                hlp_NLUStrAppendKeyVal(v104, v87, v76);
                v83 = v101;
                v82 = 0;
LABEL_125:
                heap_Free(*(a1 + 8), v83);
LABEL_126:
                v84 = v102;
                if (!v102)
                {
                  goto LABEL_128;
                }

                goto LABEL_127;
              }

              v82 = 0;
              if (!__s)
              {
LABEL_124:
                v83 = v101;
                if (v101)
                {
                  goto LABEL_125;
                }

                goto LABEL_126;
              }
            }

LABEL_123:
            heap_Free(*(a1 + 8), v80);
            goto LABEL_124;
          }

          hlp_NLUStrAppendKeyVal(v104, v102, v76);
          v84 = v102;
          v82 = 0;
LABEL_127:
          heap_Free(*(a1 + 8), v84);
LABEL_128:
          if (v82 < 0)
          {
            v88 = v99;
            v105 = v82;
            goto LABEL_165;
          }

LABEL_129:
          if (++v60 >= *(v41 + 2 * v59))
          {
            goto LABEL_155;
          }
        }

        v77 = v108;
LABEL_91:
        if (__s1 && v97 == v77 && !cstdlib_strncmp(__s1, __s2, v77))
        {
          goto LABEL_95;
        }

LABEL_94:
        heap_Free(*(a1 + 8), __s);
        __s = 0;
        goto LABEL_95;
      }
    }

    else
    {
      v26 = v12;
    }

    v10 = 2584748042;
    goto LABEL_181;
  }

  return v10;
}

char *pw_split_csc_pw_0(char *result, uint64_t a2, const char **a3, uint64_t *a4)
{
  if (*(a2 + 12) == 1 && (*(a2 + 8) & 0xFFFE) == 4)
  {
    v5 = *a3;
    if (*a3)
    {
      v7 = result;
      v8 = 1;
      do
      {
        v9 = v8;
        result = cstdlib_strstr(v5, ".");
        if (result)
        {
          v5 = result + 1;
        }

        else
        {
          v5 = 0;
        }

        if (!result)
        {
          break;
        }

        v8 = 0;
      }

      while ((v9 & 1) != 0);
      if (result)
      {
        v10 = cstdlib_strlen(*a3);
        v11 = v10 + cstdlib_strlen("{SEP2}") + 1;
        v12 = *a4;
        if (v11 > *a4)
        {
          result = heap_Realloc(*(v7 + 1), *a3, v11);
          if (!result)
          {
            return result;
          }

          *a3 = result;
          *a4 = v11;
          v12 = v11;
        }

        result = heap_Calloc(*(v7 + 1), 1, v12);
        if (result)
        {
          v13 = result;
          cstdlib_strncpy(result, *a3, (~*a3 + v5));
          cstdlib_strcat(v13, "{SEP2}");
          cstdlib_strcat(v13, v5);
          v14 = *a3;

          return cstdlib_strcpy(v14, v13);
        }
      }
    }
  }

  return result;
}

uint64_t pw_check_if_glue_forbidden_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  *a7 = 0;
  pw_check_if_word_in_prompt_0(a1, a2, a3, a5, a7);
  if (*a7)
  {
    return 0;
  }

  pw_check_if_word_in_prompt_0(a1, a2, a3, a6, a7);
  if (*a7)
  {
    return 0;
  }

  v24 = 0;
  v25 = 0;
  v23 = 0;
  result = (*(*(a1 + 48) + 176))(a2, a3, a4, 1, &v23, &v24);
  if ((result & 0x80000000) == 0)
  {
    (*(*(a1 + 48) + 168))(a2, a3, a5, 1, 1, &v25 + 2, &v24 + 2);
    result = (*(*(a1 + 48) + 168))(a2, a3, a6, 2, 1, &v25, &v24 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v24)
      {
        v15 = 0;
        v16 = (v23 + 12);
        while (1)
        {
          v17 = *v16;
          v16 += 8;
          if (v17 - *(v23 + 12) > HIWORD(v25))
          {
            break;
          }

          if (v24 == ++v15)
          {
            goto LABEL_23;
          }
        }

        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v24)
      {
        v19 = v24 - v18;
        v20 = (v23 + 32 * v18);
        while (v20[3] - *(v23 + 12) < v25)
        {
          if (*v20 <= 0x39u && ((1 << *v20) & 0x3C0010124001140) != 0)
          {
            v22 = 1;
            goto LABEL_24;
          }

          v20 += 8;
          if (!--v19)
          {
            break;
          }
        }
      }

LABEL_23:
      v22 = 0;
LABEL_24:
      *a7 = v22;
    }
  }

  return result;
}

char *cstdlib_safe_strcpy(uint64_t a1, const char **a2, char *__s, void *a4, unint64_t a5)
{
  v10 = cstdlib_strlen(__s);
  checksize_and_realloc(a1, a2, v10, a4, a5);
  v11 = *a2;

  return cstdlib_strcpy(v11, __s);
}

const char *checksize_and_realloc(uint64_t a1, const char **a2, uint64_t a3, void *a4, unint64_t a5)
{
  result = cstdlib_strlen(*a2);
  if (&result[a3 + 1] > *a4)
  {
    v11 = result;
    if (a3 + 1 > a5)
    {
      a5 = a3 + 1;
    }

    result = heap_Realloc(*(a1 + 8), *a2, *a4 + a5);
    if (result)
    {
      *a2 = result;
      v12 = *a4 + a5;
      *a4 = v12;
      v13 = &v11[result];

      return cstdlib_memset(v13, 0, v12 - v11);
    }
  }

  return result;
}

uint64_t pw_check_if_word_in_prompt_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = 0;
  *a5 = 0;
  result = (*(*(a1 + 48) + 168))(a2, a3, a4, 1, 1, &v10, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(*(a1 + 48) + 312))(a2, a3, v10, a5);
  }

  return result;
}

uint64_t load_igtree_cfg(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  v9 = -1;
  v8 = 0;
  *a4 = 0;
  v5 = (*(a3 + 96))(a1, a2, "fecfg", "statbnd_igtree", &v10, &v9, &v8);
  if ((v5 & 0x80000000) == 0 && v9 == 1)
  {
    v6 = *v10;
    v6[cstdlib_strlen(*v10) - 1] = 0;
    if (!cstdlib_strcmp(*v10, "yes"))
    {
      *a4 = 1;
    }
  }

  return v5;
}

uint64_t igtree_freeFeatureVector(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      if (*a2)
      {
        heap_Free(*(a1 + 8), *a2);
        *a2 = 0;
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t load_igtree(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v29, 0, 240);
  *v26 = 0;
  v27 = 0;
  *a4 = 0;
  __s2 = 0;
  memset(__s1, 0, sizeof(__s1));
  v29[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v27), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "pwigtree_"), cstdlib_strcat(__s1, __s2), cstdlib_strcat(__s1, "_"), cstdlib_strcat(__s1, v27), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, __s2, 0, 0, v29, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v29, "IGTR", 1031, v26), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v26, v16);
      ssftriff_reader_CloseChunk(*v26);
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_PW", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2584748042;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v21;
}

uint64_t igtree_initFeatureVector(uint64_t a1, char **a2, unsigned int a3)
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

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v7, v8, v9, v10, v12);
  return 2584748042;
}

uint64_t igtree_setFeatureVector(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v81 = 0;
  v14 = heap_Calloc(*(a1 + 8), 1, 2048);
  if (v14)
  {
    v19 = v14;
    v79 = a2;
    v80 = a7;
    if (a4 < 2)
    {
      v22 = 0;
    }

    else
    {
      v20 = 0;
      v21 = (a4 - 1);
      while (cstdlib_strcmp(*(a3 + 8 * v20), "word"))
      {
        if (v21 == ++v20)
        {
          goto LABEL_27;
        }
      }

      v81 = v20;
LABEL_27:
      v32 = 0;
      if (v21 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = (a4 - 1);
      }

      while (cstdlib_strcmp(*(a3 + 8 * v32), "word"))
      {
        if (v33 == ++v32)
        {
          v22 = 0;
          goto LABEL_37;
        }
      }

      v81 = v32;
      if (v80 >= a6)
      {
        v34 = "=";
      }

      else
      {
        v34 = *(a5 + 40 * v80);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 0, a2, v34);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_37:
      v35 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v35), "lword"))
      {
        if (v33 == ++v35)
        {
          goto LABEL_45;
        }
      }

      v81 = v35;
      if (v80 - 1 >= a6)
      {
        v36 = "=";
      }

      else
      {
        v36 = *(a5 + 40 * (v80 - 1));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 1, v79, v36);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_45:
      v37 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v37), "llword"))
      {
        if (v33 == ++v37)
        {
          goto LABEL_53;
        }
      }

      v81 = v37;
      if (v80 - 2 >= a6)
      {
        v38 = "=";
      }

      else
      {
        v38 = *(a5 + 40 * (v80 - 2));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 2, v79, v38);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_53:
      v39 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v39), "rword"))
      {
        if (v33 == ++v39)
        {
          goto LABEL_61;
        }
      }

      v81 = v39;
      if (v80 + 1 >= a6)
      {
        v40 = "=";
      }

      else
      {
        v40 = *(a5 + 40 * (v80 + 1));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 3, v79, v40);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_61:
      v41 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v41), "rrword"))
      {
        if (v33 == ++v41)
        {
          goto LABEL_69;
        }
      }

      v81 = v41;
      if (v80 + 2 >= a6)
      {
        v42 = "=";
      }

      else
      {
        v42 = *(a5 + 40 * (v80 + 2));
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 4, v79, v42);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_69:
      v43 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v43), "wordlen"))
      {
        if (v33 == ++v43)
        {
          goto LABEL_74;
        }
      }

      v81 = v43;
      feat_wordlength_0(a5, a6, v80, 0, v19);
      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 5, v79, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_74:
      v44 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v44), "lwordlen"))
      {
        if (v33 == ++v44)
        {
          goto LABEL_79;
        }
      }

      v81 = v44;
      feat_wordlength_0(a5, a6, v80, -1, v19);
      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 6, v79, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_79:
      v45 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v45), "rwordlen"))
      {
        if (v33 == ++v45)
        {
          goto LABEL_84;
        }
      }

      v81 = v45;
      feat_wordlength_0(a5, a6, v80, 1, v19);
      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 7, v79, v19);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_84:
      v46 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v46), "pos"))
      {
        if (v33 == ++v46)
        {
          goto LABEL_107;
        }
      }

      v81 = v46;
      if (v80 >= a6)
      {
        v47 = "=";
      }

      else
      {
        v47 = *(a5 + 40 * v80 + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 8, v79, v47);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_107:
      v53 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v53), "lpos"))
      {
        if (v33 == ++v53)
        {
          goto LABEL_123;
        }
      }

      v81 = v53;
      if (v80 - 1 >= a6)
      {
        v54 = "=";
      }

      else
      {
        v54 = *(a5 + 40 * (v80 - 1) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 9, v79, v54);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_123:
      v57 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v57), "llpos"))
      {
        if (v33 == ++v57)
        {
          goto LABEL_131;
        }
      }

      v81 = v57;
      if (v80 - 2 >= a6)
      {
        v58 = "=";
      }

      else
      {
        v58 = *(a5 + 40 * (v80 - 2) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 10, v79, v58);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_131:
      v59 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v59), "rpos"))
      {
        if (v33 == ++v59)
        {
          goto LABEL_147;
        }
      }

      v81 = v59;
      if (v80 + 1 >= a6)
      {
        v60 = "=";
      }

      else
      {
        v60 = *(a5 + 40 * (v80 + 1) + 8);
      }

      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 11, v79, v60);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }

LABEL_147:
      v63 = 0;
      while (cstdlib_strcmp(*(a3 + 8 * v63), "rrpos"))
      {
        if (v33 == ++v63)
        {
          a2 = v79;
          a7 = v80;
          goto LABEL_9;
        }
      }

      v81 = v63;
      a7 = v80;
      if (v80 + 2 >= a6)
      {
        v64 = "=";
      }

      else
      {
        v64 = *(a5 + 40 * (v80 + 2) + 8);
      }

      a2 = v79;
      v22 = hlp_igtree_setFeature_0(a1, a3, a4, 12, v79, v64);
      if ((v22 & 0x80000000) != 0)
      {
        goto LABEL_184;
      }
    }

LABEL_9:
    if (!hlp_igtree_isFeatureRequired_0(a3, a4, 13, &v81) || (v23 = feat_char(a5, a7, 0, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 13, a2, v23), (v22 & 0x80000000) == 0))
    {
      if (!hlp_igtree_isFeatureRequired_0(a3, a4, 15, &v81) || (v24 = feat_char(a5, a7, 1, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 15, a2, v24), (v22 & 0x80000000) == 0))
      {
        if (!hlp_igtree_isFeatureRequired_0(a3, a4, 14, &v81) || (v25 = feat_char(a5, a7, -1, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 14, a2, v25), (v22 & 0x80000000) == 0))
        {
          if (!hlp_igtree_isFeatureRequired_0(a3, a4, 16, &v81) || (v26 = feat_char(a5, a7, -2, v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 16, a2, v26), (v22 & 0x80000000) == 0))
          {
            if (!hlp_igtree_isFeatureRequired_0(a3, a4, 17, &v81) || (v27 = feat_matchprevpos_0(a5, a7, "n"), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 17, a2, v27), (v22 & 0x80000000) == 0))
            {
              if (!hlp_igtree_isFeatureRequired_0(a3, a4, 18, &v81) || (v28 = feat_matchprevpos_0(a5, a7, "v"), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 18, a2, v28), (v22 & 0x80000000) == 0))
              {
                if (!hlp_igtree_isFeatureRequired_0(a3, a4, 19, &v81))
                {
                  goto LABEL_188;
                }

                v29 = a7;
                while (a6 > ++v29)
                {
                  v30 = (a5 + 40 * v29);
                  if (!cstdlib_strncmp(v30[1], "n", 1uLL))
                  {
                    v31 = *v30;
                    goto LABEL_91;
                  }
                }

                v31 = "=";
LABEL_91:
                a2 = v79;
                v22 = hlp_igtree_setFeature_0(a1, a3, a4, 19, v79, v31);
                a7 = v80;
                if ((v22 & 0x80000000) == 0)
                {
LABEL_188:
                  if (!hlp_igtree_isFeatureRequired_0(a3, a4, 19, &v81))
                  {
                    goto LABEL_189;
                  }

                  v48 = a7;
                  while (a6 > ++v48)
                  {
                    v49 = (a5 + 40 * v48);
                    if (!cstdlib_strncmp(v49[1], "v", 1uLL))
                    {
                      v50 = *v49;
                      goto LABEL_98;
                    }
                  }

                  v50 = "=";
LABEL_98:
                  a2 = v79;
                  v22 = hlp_igtree_setFeature_0(a1, a3, a4, 20, v79, v50);
                  a7 = v80;
                  if ((v22 & 0x80000000) == 0)
                  {
LABEL_189:
                    if (!hlp_igtree_isFeatureRequired_0(a3, a4, 21, &v81) || (a7 >= a6 ? (v52 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) > 5u) ? (v51 = 48) : (v51 = 49), *v19 = v51, v52 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 21, a2, v52), (v22 & 0x80000000) == 0))
                    {
                      if (!hlp_igtree_isFeatureRequired_0(a3, a4, 22, &v81) || (a7 >= a6 ? (v56 = "=") : ((v19[1] = 0, *(a5 + 40 * a7 + 26) < 2u) ? (v55 = 48) : (v55 = 49), *v19 = v55, v56 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 22, a2, v56), (v22 & 0x80000000) == 0))
                      {
                        if (!hlp_igtree_isFeatureRequired_0(a3, a4, 23, &v81) || (a7 - 1 >= a6 ? (v62 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) > 5u) ? (v61 = 48) : (v61 = 49), *v19 = v61, v62 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 23, a2, v62), (v22 & 0x80000000) == 0))
                        {
                          if (!hlp_igtree_isFeatureRequired_0(a3, a4, 24, &v81) || (a7 - 1 >= a6 ? (v66 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 - 1) + 26) < 2u) ? (v65 = 48) : (v65 = 49), *v19 = v65, v66 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 24, a2, v66), (v22 & 0x80000000) == 0))
                          {
                            if (!hlp_igtree_isFeatureRequired_0(a3, a4, 25, &v81) || (a7 + 1 >= a6 ? (v68 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) > 5u) ? (v67 = 48) : (v67 = 49), *v19 = v67, v68 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 25, a2, v68), (v22 & 0x80000000) == 0))
                            {
                              if (!hlp_igtree_isFeatureRequired_0(a3, a4, 26, &v81) || (a7 + 1 >= a6 ? (v73 = "=") : ((v19[1] = 0, *(a5 + 40 * (a7 + 1) + 26) < 2u) ? (v72 = 48) : (v72 = 49), *v19 = v72, v73 = v19), v22 = hlp_igtree_setFeature_0(a1, a3, a4, 26, a2, v73), (v22 & 0x80000000) == 0))
                              {
                                v74 = 0;
                                v75 = a2;
                                v76 = v81;
                                do
                                {
                                  log_OutText(*(a1 + 32), "FE_PW", 5, 0, "igtree feature %s", v69, v70, v71, *(v75 + 8 * v74++));
                                }

                                while (v76 >= v74);
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

LABEL_184:
    heap_Free(*(a1 + 8), v19);
    return v22;
  }

  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v15, v16, v17, v18, v78);
  return 2584748042;
}

uint64_t hlp_igtree_isFeatureRequired_0(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_4[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t hlp_igtree_setFeature_0(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v20 = -1;
  result = hlp_igtree_isFeatureRequired_0(a2, a3, a4, &v20);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v20;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v20);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), (v12 + 1));
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v14, v15, v16, v17, v19);
          return 2584748042;
        }

        *(a5 + 8 * v11) = v13;
      }

      v18 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v20);
      v18 = "=";
    }

    cstdlib_strcpy(v13, v18);
    return 0;
  }

  return result;
}

char *feat_wordlength_0(uint64_t a1, unsigned int a2, int a3, int a4, char *a5)
{
  *a5 = 0;
  if (a4 + a3 < a2)
  {
    return sprintf(a5, "%d", *(a1 + 40 * (a4 + a3) + 26));
  }

  return cstdlib_strcpy(a5, "=");
}

uint64_t pw_dag_process(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned int *a10, unsigned int a11, uint64_t *a12, unsigned __int16 *a13)
{
  v17 = a1;
  v18 = heap_Alloc(*(a1 + 8), 24);
  if (!v18)
  {
    goto LABEL_73;
  }

  v23 = v18;
  *(v18 + 8) = a9 + 1;
  v24 = a6 - 1;
  if (a6 - 1 <= 1)
  {
    v24 = 1;
  }

  *(v18 + 12) = a5;
  *(v18 + 16) = v24;
  v25 = heap_Alloc(*(v17 + 8), 16 * (a9 + 1));
  *v23 = v25;
  if (!v25)
  {
    v85 = 2584748042;
    log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0, v26, v27, v28, v29, v154);
    v86 = *(v17 + 8);
    v87 = v23;
    goto LABEL_75;
  }

  v30 = v23[4];
  if (v23[4])
  {
    v31 = (v25 + 12);
    do
    {
      *(v31 - 6) = 0;
      *(v31 - 1) = -2147483647;
      *v31 = -1;
      v31 += 8;
      --v30;
    }

    while (v30);
  }

  v32 = heap_Alloc(*(v17 + 8), a4 + 11);
  if (!v32)
  {
LABEL_73:
    v85 = 2584748042;
    log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0, v19, v20, v21, v22, v154);
    return v85;
  }

  v33 = v32;
  if (!a9)
  {
    heap_Free(*(v17 + 8), v32);
LABEL_77:
    if (!*v23)
    {
      return 2584748039;
    }

    v88 = v23[4];
    v89 = v23[4];
    *(*v23 + 8) = 0;
    log_OutText(*(v17 + 32), "FE_PW", 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight", v82, v83, v84, v154);
    if (v88 >= 1)
    {
      v93 = 0;
      v94 = *v23;
      do
      {
        for (i = *(v94 + 16 * v93); i; i = *i)
        {
          v96 = *(i + 3);
          v97 = *(i + 4) + *(v94 + 16 * v93 + 8);
          log_OutText(*(v17 + 32), "FE_PW", 5, 0, "<%d: %d>: %d, %d", v90, v91, v92, v93);
          v94 = *v23;
          v98 = *v23 + 16 * v96;
          if (v97 > *(v98 + 8))
          {
            *(v98 + 8) = v97;
            *(v98 + 12) = v93;
          }
        }

        ++v93;
      }

      while (v93 != v89);
    }

    v99 = heap_Alloc(*(v17 + 8), 16);
    if (!v99)
    {
      goto LABEL_118;
    }

    v104 = v99;
    v105 = heap_Alloc(*(v17 + 8), 2 * v89);
    *v104 = v105;
    if (!v105)
    {
      log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0, v106, v107, v108, v109, v155);
      if (*v104)
      {
        heap_Free(*(v17 + 8), *v104);
        *v104 = 0;
      }

      heap_Free(*(v17 + 8), v104);
      return 2584748042;
    }

    v110 = a13;
    *(v104 + 8) = 0;
    v111 = (v89 - 1);
    *v105 = v89 - 1;
    v112 = *(v104 + 8);
    v113 = v112 + 1;
    *(v104 + 8) = v112 + 1;
    if (v111 >= 1)
    {
      v114 = *v23;
      do
      {
        v111 = *(v114 + 16 * v111 + 12);
        v105[v113] = v111;
        v112 = *(v104 + 8);
        v113 = v112 + 1;
        *(v104 + 8) = v112 + 1;
      }

      while (v111 > 0);
    }

    *a13 = v112;
    v115 = heap_Calloc(*(v17 + 8), v112, 16);
    *a12 = v115;
    if (!v115)
    {
LABEL_118:
      log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0, v100, v101, v102, v103, v155);
      return 2584748042;
    }

    v157 = v23;
    v116 = *a13;
    if (!*a13)
    {
LABEL_108:
      heap_Free(*(v17 + 8), *v104);
      heap_Free(*(v17 + 8), v104);
      v148 = *v157;
      if (*v157)
      {
        v149 = *(v157 + 8);
        if (*(v157 + 8))
        {
          v150 = 0;
          do
          {
            v151 = *(*v157 + 16 * v150);
            if (v151)
            {
              do
              {
                v152 = *v151;
                heap_Free(*(v17 + 8), v151);
                v151 = v152;
              }

              while (v152);
            }

            ++v150;
          }

          while (v150 != v149);
          v148 = *v157;
        }
      }

      heap_Free(*(v17 + 8), v148);
      heap_Free(*(v17 + 8), v157);
      return 0;
    }

    v117 = v115;
    v118 = 0;
    v119 = "FE_PW";
    while (1)
    {
      v166 = v118;
      v120 = (*v104 + 2 * (v116 - v118));
      v121 = *(v120 - 1);
      v122 = *v120;
      v123 = heap_Alloc(*(v17 + 8), 2 * (v121 - v122));
      if (!v123)
      {
        log_OutPublic(*(v17 + 32), "FE_PW", 37000, 0, v124, v125, v126, v127, v155);
        if (*a12)
        {
          heap_Free(*(v17 + 8), *a12);
          *a12 = 0;
        }

        return 2584748042;
      }

      v128 = v123;
      *(v117 + 4) = v121 - v122;
      *v117 = v123;
      log_OutText(*(v17 + 32), v119, 5, 0, "Orthography is: ", v125, v126, v127, v155);
      if (v121 == v122)
      {
        v135 = heap_Calloc(*(v17 + 8), 1, 1000);
        v136 = v166;
        if (!v135)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v164 = v117;
        v162 = (v121 - v122);
        if (v162 <= 1)
        {
          v137 = 1;
        }

        else
        {
          v137 = (v121 - v122);
        }

        v138 = a8;
        v139 = v104;
        v140 = v110;
        v141 = v119;
        v142 = v17;
        do
        {
          v143 = v138 + 40 * *(*v139 + 2 * (*v140 - v166));
          v144 = *(v143 + 24);
          log_OutText(*(v142 + 32), v141, 5, 0, "    %s [tid: %d, pos: %s]    ", v129, v130, v131, *v143);
          *v128++ = v144;
          v138 += 40;
          --v137;
        }

        while (v137);
        v145 = heap_Calloc(*(v142 + 8), 1, 1000);
        v17 = v142;
        v119 = v141;
        v110 = v140;
        v104 = v139;
        v117 = v164;
        v136 = v166;
        if (!v145)
        {
          goto LABEL_107;
        }

        v135 = v145;
        v146 = 0;
        v147 = 0;
        do
        {
          sprintf(&v135[v147], "%d-", *(*v164 + 2 * v146));
          v147 = cstdlib_strlen(v135);
          ++v146;
        }

        while (v162 > v146);
        v110 = a13;
      }

      log_OutText(*(v17 + 32), v119, 5, 0, "PW [tids:%s, ntok:%d]", v132, v133, v134, v135);
      heap_Free(*(v17 + 8), v135);
LABEL_107:
      v117 += 2;
      v118 = v136 + 1;
      v116 = *v110;
      if (v118 >= v116)
      {
        goto LABEL_108;
      }
    }
  }

  v156 = v23;
  v158 = v17;
  v34 = 0;
  v35 = 0;
  v36 = a7 + 512;
  while (1)
  {
    v37 = a8 + 40 * v35;
    if (cstdlib_strlen(*v37) > 5 || !cstdlib_strcmp(*(v37 + 16), "latin"))
    {
      goto LABEL_68;
    }

    v38 = *(a7 + 1024);
    if (v38)
    {
      v39 = 0;
      while (*(a7 + 4 * v39) > *(v37 + 28) || *(v37 + 32) > *(v36 + 4 * v39))
      {
        if (v38 <= ++v39)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_68;
    }

LABEL_18:
    rules = pw_get_rules(a2, a3, *v37);
    if (!rules)
    {
      log_OutText(*(v158 + 32), "FE_PW", 5, 0, "Warning: Can't find rules for the character %s", v41, v42, v43, *v37);
      goto LABEL_68;
    }

    v165 = *(rules + 8);
    if (*(rules + 8))
    {
      break;
    }

LABEL_68:
    v34 = ++v35;
    if (v35 >= a9)
    {
      v17 = v158;
      heap_Free(*(v158 + 8), v33);
      v80 = 0;
      v23 = v156;
      while (1)
      {
        inserted = dag_insert_edge(v158, v156, v80, v80 + 1, *(v156 + 4));
        if ((inserted & 0x80000000) != 0)
        {
          return inserted;
        }

        if (a9 <= ++v80)
        {
          goto LABEL_77;
        }
      }
    }
  }

  v44 = 0;
  v163 = *(rules + 16);
  while (1)
  {
    v45 = v163 + 40 * v44;
    *v33 = 0;
    v46 = *(v45 + 36);
    if (v34 >= v46 && a9 - v34 > *(v45 + 38))
    {
      if (*(v45 + 36))
      {
        v47 = 0;
        v48 = 0;
        v49 = a8;
        while (1)
        {
          v50 = v47 + v34;
          if (!cstdlib_strcmp(*(v49 + 40 * (v47 + v34 - v46) + 16), "latin"))
          {
            goto LABEL_35;
          }

          v51 = v50 - *(v45 + 36);
          v52 = *(a7 + 1024);
          if (v52)
          {
            v53 = 0;
            v54 = a8 + 40 * v51;
            while (*(a7 + 4 * v53) > *(v54 + 28) || *(v54 + 32) > *(v36 + 4 * v53))
            {
              if (v52 <= ++v53)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_35;
          }

LABEL_31:
          cstdlib_strcat(v33, *(a8 + 40 * v51 + 8));
          cstdlib_strcat(v33, "-");
          v49 = a8;
          v47 = ++v48;
          v46 = *(v45 + 36);
          if (v48 >= v46)
          {
            goto LABEL_34;
          }
        }
      }

      v49 = a8;
LABEL_34:
      v161 = *(v49 + 40 * (v34 - v46) + 28);
      v55 = cstdlib_strlen(v33);
      if (!cstdlib_strncmp(v33, v45, v55))
      {
        cstdlib_strcat(v33, *v37);
        if (*(v45 + 38))
        {
          v56 = 0;
          v57 = 0;
          v58 = a8;
          while (1)
          {
            v59 = v58 + 40 * (v56 + v34);
            if (!cstdlib_strcmp(*(v59 + 56), "latin"))
            {
              goto LABEL_35;
            }

            v60 = *(a7 + 1024);
            if (v60)
            {
              v61 = 0;
              while (*(a7 + 4 * v61) > *(v59 + 68) || *(v59 + 72) > *(v36 + 4 * v61))
              {
                if (v60 <= ++v61)
                {
                  goto LABEL_45;
                }
              }

              goto LABEL_35;
            }

LABEL_45:
            cstdlib_strcat(v33, "-");
            cstdlib_strcat(v33, *(v59 + 48));
            v56 = ++v57;
            v62 = *(v45 + 38);
            v58 = a8;
            if (v57 >= v62)
            {
              goto LABEL_48;
            }
          }
        }

        v62 = 0;
        v58 = a8;
LABEL_48:
        v63 = *(v58 + 40 * (v34 + v62) + 32);
        if (!cstdlib_strcmp(v33, v45))
        {
          v64 = a10;
          v65 = a11;
          if (a11)
          {
            do
            {
              v67 = *v64++;
              v66 = v67;
              if (v67 > v161 && v66 < v63)
              {
                goto LABEL_35;
              }
            }

            while (--v65);
          }

          v69 = *(v45 + 36);
          v70 = v35 - v69;
          v71 = *(v45 + 38);
          if (v34 + v71 < (v35 - v69))
          {
            break;
          }

          v72 = 0;
          v73 = 0;
          do
          {
            v74 = *(a8 + 40 * v70 + 26);
            v73 += v74;
            if (v74 > 1)
            {
              ++v72;
            }

            ++v70;
          }

          while (v34 + v71 >= v70);
          if (v72 <= 1u && v73 <= 5u)
          {
            break;
          }
        }
      }
    }

LABEL_35:
    if (v165 <= ++v44)
    {
      goto LABEL_68;
    }
  }

  v76 = dag_insert_edge(v158, v156, v35 - v69, v35 + 1 + *(v45 + 38), *(v45 + 32));
  if ((v76 & 0x80000000) == 0)
  {
    log_OutText(*(v158 + 32), "FE_PW", 5, 0, "%s Matches rule %s with weight %d, and insert edges between point %d and %d", v77, v78, v79, *v37);
    goto LABEL_35;
  }

  v85 = v76;
  v86 = *(v158 + 8);
  v87 = v33;
LABEL_75:
  heap_Free(v86, v87);
  return v85;
}

uint64_t pw_weather_word_in_prompt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a1 + 1024);
  if (v3)
  {
    v4 = 0;
    while (*(a1 + 4 * v4) > *(a2 + 28) || *(a2 + 32) > *(a1 + 512 + 4 * v4))
    {
      if (v3 <= ++v4)
      {
        return 0;
      }
    }

    *a3 = 1;
  }

  return 0;
}

uint64_t dag_insert_edge(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5)
{
  v10 = heap_Alloc(*(a1 + 8), 24);
  if (v10)
  {
    v15 = v10;
    *(v10 + 8) = a3;
    *(v10 + 12) = a4;
    v16 = uint32_log2(a5);
    v17 = uint32_log2(*(a2 + 3));
    result = 0;
    *(v15 + 16) = v16 - v17;
    v19 = *a2;
    v20 = 16 * a3;
    *v15 = *(*a2 + v20);
    *(v19 + v20) = v15;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v11, v12, v13, v14, v21);
    return 2584748042;
  }

  return result;
}

uint64_t BSCompareUtf8ChineseChar(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = utf8_determineUTF8CharLength(*a1);
  v5 = utf8_determineUTF8CharLength(*a2);
  if (v4 != v5)
  {
    return v4 - v5;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = a1[v6];
    v8 = a2[v6];
    result = (v7 - v8);
    if (v7 != v8)
    {
      break;
    }

    if (++v6 >= v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GetRulesFromRiffData(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5, unsigned int *a6, unsigned __int16 *a7, _DWORD *a8, unsigned int *a9, uint64_t *a10, unsigned __int8 *a11)
{
  v121 = *MEMORY[0x277D85DE8];
  memset(__dst, 0, 32);
  memset(v119, 0, sizeof(v119));
  v101 = 0;
  memset(v118, 0, sizeof(v118));
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  *__s1 = 0u;
  v103 = 0u;
  *a7 = 0;
  *a8 = 0;
  *a9 = 10000;
  *a11 = 0;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, 0, &v101);
  v99 = a3;
  v100 = a2;
  ssftriff_reader_ReadStringZ(a2, a3, a4, 0, __s1, &v101);
  v19 = v101;
  v20 = cstdlib_strstr(__s1, "\t");
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = cstdlib_strstr(v20 + 1, "\t");
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  v97 = a4;
  *v22 = 0;
  v24 = cstdlib_atoi(v21 + 1);
  *a11 = v24;
  v25 = heap_Calloc(*(a1 + 8), v24, 8);
  *a10 = v25;
  if (!v25)
  {
    v82 = 2584748042;
    log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v26, v27, v28, v29, v91);
    return v82;
  }

  v30 = v25;
  v94 = a5;
  v95 = a7;
  v93 = a8;
  v98 = a6;
  if (!*a11)
  {
LABEL_8:
    v42 = v99;
    v43 = v97;
    ssftriff_reader_ReadStringZ(v100, v99, v97, v19, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v99, v97, v19, __dst, &v101);
    v44 = v101 + v19;
    v101 = 0;
    ssftriff_reader_ReadStringZ(v100, v99, v97, v44, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v99, v97, v44, v119, &v101);
    v45 = v101;
    v46 = cstdlib_atoi(v119);
    v47 = v98;
    *v98 = v46;
    v48 = heap_Calloc(*(a1 + 8), v46, 32);
    if (!v48)
    {
      goto LABEL_45;
    }

    v96 = v48;
    if (!*v98)
    {
      goto LABEL_42;
    }

    v49 = v45 + v44;
    v50 = 0;
LABEL_11:
    v101 = 0;
    ssftriff_reader_ReadStringZ(v100, v42, v43, v49, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v42, v43, v49, v118, &v101);
    v51 = v101;
    v52 = cstdlib_atoi(v118);
    v92 = v50;
    v53 = v96 + 32 * v50;
    *(v53 + 8) = v52;
    v54 = heap_Calloc(*(a1 + 8), v52, 40);
    *(v53 + 16) = v54;
    if (!v54)
    {
      v82 = 2584748042;
      log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v55, v56, v57, v58, v91);
LABEL_47:
      v83 = a10;
      v84 = *v47;
      if (v84)
      {
        v85 = 0;
        v86 = (v96 + 16);
        do
        {
          if (*v86)
          {
            heap_Free(*(a1 + 8), *v86);
            *v86 = 0;
            v84 = *v47;
          }

          ++v85;
          v86 += 4;
        }

        while (v85 < v84);
      }

      heap_Free(*(a1 + 8), v96);
      goto LABEL_53;
    }

    v49 += v51;
    *(v53 + 24) = 0;
    cstdlib_memset(v53, 0, 5uLL);
    if (!*(v53 + 8))
    {
      goto LABEL_41;
    }

    v59 = 0;
LABEL_14:
    v101 = 0;
    ssftriff_reader_ReadStringZ(v100, v42, v43, v49, 0, &v101);
    ssftriff_reader_ReadStringZ(v100, v42, v43, v49, (*(v53 + 16) + 40 * v59), &v101);
    v60 = 0;
    v61 = 0;
    v49 += v101;
    v62 = *(v53 + 16);
    v47 = v98;
    *(v62 + 40 * v59 + 32) = 0;
    while (1)
    {
      v63 = v62 + 40 * v59;
      v64 = (v63 + v61);
      v65 = *v64;
      if (v65 == 45)
      {
        ++v60;
        v66 = 1;
      }

      else
      {
        if (!*v64)
        {
          v61 = 0;
          goto LABEL_32;
        }

        if (v65 == 9)
        {
          v74 = cstdlib_atoi(v64 + 1);
          v75 = *(v53 + 16) + 40 * v59;
          *(v75 + 32) = v74;
          *(v75 + v61) = 0;
          v62 = *(v53 + 16);
          v47 = v98;
LABEL_32:
          v76 = v62 + 40 * v59;
          *(v76 + 38) = v60;
          v77 = *(v76 + 36);
          if (*(v53 + 24) < v77)
          {
            *(v53 + 24) = v77;
          }

          if (*(v53 + 26) < v60)
          {
            *(v53 + 26) = v60;
          }

          if (*v95 < v61)
          {
            *v95 = v61;
          }

          v78 = v62 + 40 * v59;
          v81 = *(v78 + 32);
          v80 = (v78 + 32);
          v79 = v81;
          v43 = v97;
          if (*a9 > v81)
          {
            *a9 = v79;
            v79 = *v80;
          }

          v42 = v99;
          *v93 += v79;
          if (++v59 < *(v53 + 8))
          {
            goto LABEL_14;
          }

LABEL_41:
          v50 = v92 + 1;
          if (v92 + 1 >= *v47)
          {
LABEL_42:
            v82 = 0;
            *v94 = v96;
            return v82;
          }

          goto LABEL_11;
        }

        if ((v65 & 0xFFFFFFDF) - 65 >= 0x1A)
        {
          *(v63 + 36) = v60;
          v67 = utf8_determineUTF8CharLength(*v64);
          v66 = v67;
          if (v59)
          {
            v62 = *(v53 + 16);
            v47 = v98;
            if (v67)
            {
              v71 = 0;
              v72 = 0;
              while (1)
              {
                v73 = *(v53 + v72);
                if (v73 != *(v62 + 40 * v59 + v71 + v61))
                {
                  break;
                }

                v71 = ++v72;
                if (v67 <= v72)
                {
                  goto LABEL_28;
                }
              }

              log_OutText(*(a1 + 32), "FE_PW", 5, 0, "the Chinese Character %s in %d rule: %d is not same", v68, v69, v70, v73);
              v82 = 2584748060;
              goto LABEL_47;
            }
          }

          else
          {
            cstdlib_memcpy(v53, (*(v53 + 16) + v61), v67);
            v62 = *(v53 + 16);
            v47 = v98;
          }

LABEL_28:
          v60 = 0;
        }

        else
        {
          v66 = 1;
          v47 = v98;
        }
      }

      v61 += v66;
    }
  }

  v31 = 0;
  v32 = 0;
  v33 = v23 + 1;
  while (1)
  {
    v34 = heap_Calloc(*(a1 + 8), 8, 1);
    *(v30 + 8 * v31) = v34;
    if (!v34)
    {
      break;
    }

    v39 = v32;
    v40 = &v33[v32];
    v41 = utf8_determineUTF8CharLength(*v40);
    cstdlib_memcpy(*(v30 + 8 * v31), v40, v41);
    *(*(v30 + 8 * v31) + v41 + 1) = 0;
    v32 = v39 + v41;
    if (++v31 >= *a11)
    {
      goto LABEL_8;
    }
  }

LABEL_45:
  v82 = 2584748042;
  log_OutPublic(*(a1 + 32), "FE_PW", 37000, 0, v35, v36, v37, v38, v91);
  v83 = a10;
LABEL_53:
  v87 = *a11;
  if (*a11)
  {
    v88 = 0;
    do
    {
      v89 = *(v30 + 8 * v88);
      if (v89)
      {
        heap_Free(*(a1 + 8), v89);
        v87 = *a11;
      }

      ++v88;
    }

    while (v88 < v87);
  }

  heap_Free(*(a1 + 8), v30);
  *v83 = 0;
  return v82;
}

uint64_t fe_wmp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2587893761;
  }

  result = 0;
  *a2 = &IFeWmp;
  return result;
}

uint64_t fe_wmp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v5 = 2587893767;
  v22 = 0;
  memset(v25, 0, sizeof(v25));
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v24);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v24 + 8), 1, 168);
      if (v10)
      {
        v15 = v10;
        Object = objc_GetObject(*(v24 + 48), "LINGDB", &v23);
        if ((Object & 0x80000000) != 0 || (*(v15 + 24) = *(v23 + 8), Object = objc_GetObject(*(v24 + 48), "FE_DCTLKP", &v22), (Object & 0x80000000) != 0) || (v17 = v22, *(v15 + 56) = *(v22 + 8), *(v15 + 64) = *(v17 + 16), v18 = v24, *v15 = v24, *(v15 + 8) = a3, *(v15 + 16) = a4, Object = fe_wmp_CreateVoiceBrokerString(v18, v25), (Object & 0x80000000) != 0))
        {
          v5 = Object;
        }

        else
        {
          v5 = fe_wmp_tryLoadingWmpModel(*(v15 + 8), *(v15 + 16), *v15, (v15 + 32));
          if ((v5 & 0x80000000) == 0)
          {
            v19 = 62342;
LABEL_13:
            *a5 = v15;
            *(a5 + 8) = v19;
            return v5;
          }
        }
      }

      else
      {
        log_OutPublic(*(v24 + 32), "FE_WMP", 37000, 0, v11, v12, v13, v14, v21);
        v5 = 2587893770;
      }

      fe_wmp_ObjClose(*a5, *(a5 + 8));
      v15 = 0;
      v19 = 0;
      goto LABEL_13;
    }

    return inited;
  }

  return v5;
}

uint64_t fe_wmp_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62342, 168);
  if ((v3 & 0x80000000) != 0)
  {
    return 2587893768;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v5 = a1[4];
    if (v5)
    {
      igtree_Deinit(*a1, v5);
      heap_Free(*(*a1 + 8), a1[4]);
      a1[4] = 0;
    }

    heap_Free(*(*a1 + 8), a1);
  }

  return v4;
}

uint64_t fe_wmp_ObjReopen(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 2587893766;
  memset(v7, 0, sizeof(v7));
  if ((safeh_HandleCheck(a1, a2, 62342, 168) & 0x80000000) != 0)
  {
    return 2587893768;
  }

  if (a1)
  {
    VoiceBrokerString = fe_wmp_CreateVoiceBrokerString(*a1, v7);
    if ((VoiceBrokerString & 0x80000000) == 0)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        igtree_Deinit(*a1, v5);
        heap_Free(*(*a1 + 8), *(a1 + 32));
        *(a1 + 32) = 0;
      }

      return fe_wmp_tryLoadingWmpModel(*(a1 + 8), *(a1 + 16), *a1, (a1 + 32));
    }

    return VoiceBrokerString;
  }

  return v3;
}

uint64_t fe_wmp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_Process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = 0;
  v49 = 0;
  v50 = 0;
  *v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  __s1 = 0;
  *(a1 + 160) = 0;
  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_WMP", 5, 0, "[FE_WORD_MAP]: Entering", a6, a7, a8, v41);
  if (((*(*(a1 + 56) + 256))(*(a1 + 64), *(a1 + 72), "fewmp_act_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v11 = cstdlib_strcmp(__s1, "yes");
  *(a1 + 160) = v11 == 0;
  if (v11 || ((*(*(a1 + 56) + 256))(*(a1 + 64), *(a1 + 72), "fewmp_late_wmp", "no", &__s1) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  *(a1 + 164) = cstdlib_strcmp(__s1, "yes") == 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v43);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v29 = (*(*(a1 + 24) + 104))(a3, a4, 1, 0, &v50 + 2);
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v26 = v29;
  if (((*(*(a1 + 24) + 184))(a3, a4, HIWORD(v50), 0, &v47) & 0x80000000) != 0)
  {
    return v26;
  }

  if (v47 != 1)
  {
    return v26;
  }

  v26 = (*(*(a1 + 24) + 176))(a3, a4, HIWORD(v50), 0, &v51, &v49 + 2);
  if ((v26 & 0x80000000) != 0 || HIWORD(v49) < 2u || !cstdlib_strlen(v51))
  {
    return v26;
  }

  v30 = *(*a1 + 8);
  v31 = cstdlib_strlen(v51);
  v32 = heap_Alloc(v30, v31 + 1);
  *(a1 + 40) = v32;
  if (!v32)
  {
    log_OutPublic(*(*a1 + 32), "FE_WMP", 37000, 0, v33, v34, v35, v36, v42);
    return 2587893770;
  }

  cstdlib_strcpy(v32, v51);
  if (((*(*(a1 + 24) + 176))(a3, a4, HIWORD(v50), 1, v48, &v47 + 2) & 0x80000000) != 0)
  {
    goto LABEL_3;
  }

  v37 = *a1;
  *(a1 + 80) = *a1;
  if ((fe_wmp_getSent(a1, v37, a3, a4, HIWORD(v50), *(a1 + 40), *v48, HIWORD(v47), a1 + 88, v43, &v46) & 0x80000000) != 0 || (fe_wmp_mapEachWord(a1, &v45) & 0x80000000) != 0 || !v45)
  {
    goto LABEL_3;
  }

  if (*(a1 + 164) != 1)
  {
    if (((*(*(a1 + 24) + 104))(a3, a4, 3, HIWORD(v50), &v50) & 0x80000000) != 0 || (fe_wmp_userTNBoundaryAdjust(a1, a3, a4, v46, v50, SHIWORD(v49), v49) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }

    fe_wmp_AdjustMarkers(a1, *v48, HIWORD(v47), v43);
    goto LABEL_58;
  }

  v12 = v46;
  if ((fe_wmp_userTNBoundaryAdjustLateWMP(a1, a3, a4, v46, HIWORD(v50)) & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if ((fe_wmp_adjustWordRecords(a1, a3, a4) & 0x80000000) == 0)
  {
    fe_wmp_AdjustMarkersLateWMP(a1, *v48, HIWORD(v47), v43);
LABEL_58:
    v38 = *(*(a1 + 24) + 160);
    v39 = HIWORD(v50);
    v40 = cstdlib_strlen(*(a1 + 40));
    v38(a3, a4, v39, 0, (v40 + 1), *(a1 + 40), &v49);
  }

LABEL_3:
  v12 = v46;
LABEL_4:
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
    *(a1 + 96) = 0;
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
    *(a1 + 88) = 0;
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    v16 = *(a1 + 136);
    if (*(a1 + 136))
    {
      v17 = 0;
      do
      {
        v18 = *(*(a1 + 104) + 8 * v17);
        if (v18)
        {
          heap_Free(*(*a1 + 8), v18);
          *(*(a1 + 104) + 8 * v17) = 0;
          v16 = *(a1 + 136);
        }

        ++v17;
      }

      while (v17 < v16);
      v15 = *(a1 + 104);
    }

    heap_Free(*(*a1 + 8), v15);
    *(a1 + 104) = 0;
  }

  v19 = *(a1 + 112);
  if (v19)
  {
    heap_Free(*(*a1 + 8), v19);
    *(a1 + 112) = 0;
  }

  v20 = *(a1 + 120);
  if (v20)
  {
    heap_Free(*(*a1 + 8), v20);
    *(a1 + 120) = 0;
  }

  v21 = *(a1 + 128);
  if (v21)
  {
    heap_Free(*(*a1 + 8), v21);
    *(a1 + 128) = 0;
  }

  v22 = *(a1 + 144);
  if (v22)
  {
    heap_Free(*(*a1 + 8), v22);
    *(a1 + 144) = 0;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    heap_Free(*(*a1 + 8), v23);
    *(a1 + 40) = 0;
  }

  v24 = *(a1 + 152);
  if (!v24)
  {
    return 0;
  }

  if (*(a1 + 136))
  {
    v25 = 0;
    do
    {
      heap_Free(*(*a1 + 8), *(*(a1 + 152) + 8 * v25));
      *(*(a1 + 152) + 8 * v25++) = 0;
    }

    while (v25 < *(a1 + 136));
    v24 = *(a1 + 152);
  }

  heap_Free(*(*a1 + 8), v24);
  v26 = 0;
  *(a1 + 152) = 0;
  return v26;
}

uint64_t fe_wmp_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62342, 168);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2587893768;
  }
}

uint64_t fe_wmp_CreateVoiceBrokerString(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v5);
  if ((result & 0x80000000) == 0)
  {
    return brokeraux_ComposeBrokerString(a1, "wordmap", 1, 1, v5, 0, 0, a2, 0x100uLL);
  }

  return result;
}

uint64_t fe_wmp_tryLoadingWmpModel(_WORD *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(v29, 0, 240);
  *v26 = 0;
  v27 = 0;
  *a4 = 0;
  v28 = 0;
  memset(__s1, 0, sizeof(__s1));
  v29[15] = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", &v28);
  if ((Str & 0x80000000) != 0 || (Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v27), (Str & 0x80000000) != 0) || (cstdlib_strcat(__s1, "wordmap"), Str = brokeraux_ComposeBrokerString(a3, __s1, 1, 1, v28, 0, 0, v29, 0x100uLL), (Str & 0x80000000) != 0) || (Str = ssftriff_reader_ObjOpen(a1, a2, 2, v29, "IGTR", 1031, v26), (Str & 0x80000000) != 0))
  {
    v21 = Str;
  }

  else
  {
    v16 = heap_Calloc(*(a3 + 8), 1, 1600);
    *a4 = v16;
    if (v16)
    {
      v21 = igtree_Init(a1, a2, *v26, v16);
      ssftriff_reader_CloseChunk(*v26);
      if ((v21 & 0x80001FFF) == 0x14)
      {
        ssftriff_reader_CloseChunk(*v26);
        v21 = 0;
      }
    }

    else
    {
      log_OutPublic(*(a3 + 32), "FE_WMP", 37000, 0, v17, v18, v19, v20, v25);
      v21 = 2587893770;
    }
  }

  if (*v26)
  {
    v22 = ssftriff_reader_ObjClose(*v26, v9, v10, v11, v12, v13, v14, v15);
    if (v22 >= 0 || v21 <= -1)
    {
      return v21;
    }

    else
    {
      return v22;
    }
  }

  return v21;
}

uint64_t fe_wmp_getSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *__s, uint64_t a7, unsigned int a8, uint64_t a9, const char *a10, uint64_t *a11)
{
  v61 = 0;
  v62 = 0;
  *a9 = 0;
  v18 = *(a2 + 8);
  v19 = cstdlib_strlen(__s);
  v20 = heap_Alloc(v18, v19 + 1);
  *(a9 + 8) = v20;
  if (!v20)
  {
    return 2587893770;
  }

  v64 = 0;
  v63 = 0;
  v60 = 0;
  cstdlib_strcpy(v20, __s);
  if (*(a1 + 164) == 1)
  {
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, a5, &v65);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    v56 = __s;
    v57 = a2;
    v58 = a7;
    v22 = v65;
    if (v65)
    {
      v23 = 0;
      LOWORD(v24) = 0;
      v25 = 1;
      while (1)
      {
        v21 = (*(*(a1 + 24) + 168))(a3, a4, v22, 0, 1, &v68, &v67);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        if (v68 <= 0x11 && ((1 << v68) & 0x20210) != 0)
        {
          v21 = (*(*(a1 + 24) + 168))(a3, a4, v65, 1, 1, &v66 + 4, &v67);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          v21 = (*(*(a1 + 24) + 168))(a3, a4, v65, 2, 1, &v66, &v67);
          if ((v21 & 0x80000000) != 0)
          {
            return v21;
          }

          if (v25 == 1 || v23 != HIDWORD(v66))
          {
            LOWORD(v24) = v24 + 1;
          }

          v23 = HIDWORD(v66);
          v25 = 0;
        }

        v21 = (*(*(a1 + 24) + 120))(a3, a4, v65, &v65);
        if ((v21 & 0x80000000) != 0)
        {
          return v21;
        }

        v22 = v65;
        if (!v65)
        {
          goto LABEL_39;
        }
      }
    }

    LOWORD(v24) = 0;
LABEL_39:
    v55 = a5;
  }

  else
  {
    if (!a8)
    {
      return 2587893767;
    }

    v56 = __s;
    v57 = a2;
    v58 = a7;
    v55 = a5;
    v24 = 0;
    v28 = a8;
    v29 = (a7 + 24);
    v30 = 1;
    do
    {
      v31 = *(v29 - 6);
      if (v31 == 36)
      {
        v30 = !cstdlib_strcmp(*v29, "normal") || !cstdlib_strcmp(*v29, a10);
      }

      else
      {
        if (v31 == 1)
        {
          v32 = v24 + 1;
        }

        else
        {
          v32 = v24;
        }

        if (v30)
        {
          v24 = v32;
        }

        v30 = v30;
      }

      v29 += 4;
      --v28;
    }

    while (v28);
  }

  v33 = 2587893767;
  if (!v24)
  {
    return v33;
  }

  *(a9 + 48) = v24;
  v34 = heap_Calloc(*(v57 + 8), v24, 4);
  *a11 = v34;
  if (!v34)
  {
    return v33;
  }

  if (!*(a1 + 164))
  {
    if (!a8)
    {
      goto LABEL_71;
    }

    v39 = 0;
    v40 = a8;
    v41 = (v58 + 24);
    v42 = 1;
    while (1)
    {
      v43 = *(v41 - 6);
      if (v43 == 36)
      {
        if (cstdlib_strcmp(*v41, "normal") && cstdlib_strcmp(*v41, a10))
        {
LABEL_69:
          v42 = 0;
          goto LABEL_70;
        }
      }

      else
      {
        if (v42 != 1)
        {
          goto LABEL_69;
        }

        if (v43 == 1)
        {
          *(*a11 + 4 * v39++) = *(v41 - 3);
        }
      }

      v42 = 1;
LABEL_70:
      v41 += 4;
      if (!--v40)
      {
        goto LABEL_71;
      }
    }
  }

  v21 = (*(*(a1 + 24) + 104))(a3, a4, 2, v55, &v60);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v35 = 0;
  v36 = 0;
  v37 = 1;
  while (v60)
  {
    v21 = (*(*(a1 + 24) + 168))(a3, a4);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }

    if (v64 <= 0x11 && ((1 << v64) & 0x20210) != 0)
    {
      v21 = (*(*(a1 + 24) + 168))(a3, a4, v60, 1, 1, &v62, &v63);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      v21 = (*(*(a1 + 24) + 168))(a3, a4, v60, 2, 1, &v61, &v63);
      if ((v21 & 0x80000000) != 0)
      {
        return v21;
      }

      if (v37 == 1 || v36 != v62)
      {
        v37 = 0;
        *(*a11 + 4 * v35++) = *(v58 + 12) + v62;
        v36 = v62;
      }

      else
      {
        v37 = 0;
      }
    }

    v33 = (*(*(a1 + 24) + 120))(a3, a4, v60, &v60);
    if ((v33 & 0x80000000) != 0)
    {
      return v33;
    }
  }

LABEL_71:
  v44 = heap_Calloc(*(v57 + 8), v24, 8);
  *a9 = v44;
  if (!v44)
  {
    return 2587893770;
  }

  v45 = heap_Calloc(*(v57 + 8), v24, 8);
  *(a9 + 64) = v45;
  if (!v45)
  {
    return 2587893770;
  }

  v46 = heap_Calloc(*(v57 + 8), v24, 8);
  *(a9 + 16) = v46;
  if (!v46)
  {
    return 2587893770;
  }

  v47 = 0;
  do
  {
    *(*(a9 + 16) + 8 * v47++) = 0;
  }

  while (v24 != v47);
  v48 = heap_Calloc(*(v57 + 8), v24, 2);
  *(a9 + 32) = v48;
  if (!v48)
  {
    return 2587893770;
  }

  v49 = heap_Calloc(*(v57 + 8), v24, 2);
  *(a9 + 40) = v49;
  v33 = 2587893770;
  if (v49)
  {
    v50 = 0;
    do
    {
      v51 = *(*a11 + 4 * v50) - *(v58 + 12);
      *(*(a9 + 32) + 2 * v50) = v51;
      *(*a9 + 8 * v50) = *(a9 + 8) + v51;
      if (v50 + 1 >= v24)
      {
        *(*(a9 + 40) + 2 * v50) = cstdlib_strlen(v56);
      }

      else
      {
        v52 = *(*a11 + 4 * (v50 + 1));
        v53 = *(*a11 + 4 * v50);
        *(*(a9 + 40) + 2 * v50) = *(*(a9 + 32) + 2 * v50) + v52 + ~v53;
        *(~v53 + *(*a9 + 8 * v50) + v52) = 0;
      }

      ++v50;
    }

    while (v24 != v50);
    return fe_wmp_getPos(a1, a3, a4, a9, v55, v57);
  }

  return v33;
}

uint64_t fe_wmp_mapEachWord(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 136);
  __s1 = 0;
  if (2 * cstdlib_strlen(*(a1 + 40)) <= 8 * v5)
  {
    v6 = 9 * v5;
  }

  else
  {
    v6 = 2 * cstdlib_strlen(*(a1 + 40));
  }

  v7 = heap_Calloc(*(v4 + 8), 1, (v6 + 1));
  if (v7)
  {
    v12 = v7;
    cstdlib_strcpy(v7, "");
    v16 = *(a1 + 32);
    if (v16)
    {
      v17 = 2587893770;
      v66 = heap_Alloc(*(v4 + 8), 8 * *(v16 + 1296) - 8);
      if (v66)
      {
        v64 = a2;
        if (*(v16 + 1296) != 1)
        {
          v18 = (*(v16 + 1296) - 1);
          v19 = v66;
          do
          {
            v20 = heap_Calloc(*(v4 + 8), 1, 65);
            *v19 = v20;
            if (!v20)
            {
              goto LABEL_100;
            }

            cstdlib_strcpy(v20, "=");
            ++v19;
          }

          while (--v18);
        }

        v25 = heap_Calloc(*(v4 + 8), v5, 2);
        *(a1 + 112) = v25;
        if (v25)
        {
          *(a1 + 144) = heap_Calloc(*(v4 + 8), v5, 2);
          __s = v12;
          if (*(a1 + 136))
          {
            v26 = 0;
            LODWORD(v27) = 0;
            while (1)
            {
              v28 = *(v16 + 1312);
              v29 = *(v16 + 1296);
              v30 = heap_Calloc(*(v4 + 8), 1, 2048);
              if (!v30)
              {
                goto LABEL_100;
              }

              v31 = v30;
              v65 = v27;
              if (v29 <= 1)
              {
                heap_Free(*(v4 + 8), v30);
                v17 = 0;
              }

              else
              {
                v32 = 0;
                while (cstdlib_strcmp(*(v28 + v32), "word"))
                {
                  v32 += 8;
                  if (8 * (v29 - 1) == v32)
                  {
                    v17 = 0;
                    goto LABEL_24;
                  }
                }

                v33 = "=";
                if (v26 < *(a1 + 136))
                {
                  v33 = *(*(a1 + 88) + 8 * v26);
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 2, v66, v33);
                if ((v17 & 0x80000000) != 0)
                {
LABEL_104:
                  heap_Free(*(v4 + 8), v31);
                  v12 = __s;
                  goto LABEL_101;
                }

LABEL_24:
                v34 = 0;
                if (v29 - 1 <= 1)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = v29 - 1;
                }

                v36 = 8 * v35;
                while (cstdlib_strcmp(*(v28 + v34), "pos"))
                {
                  v34 += 8;
                  if (v36 == v34)
                  {
                    goto LABEL_34;
                  }
                }

                v37 = "=";
                if (v26 < *(a1 + 136))
                {
                  v37 = *(*(a1 + 152) + 8 * v26);
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 5, v66, v37);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_34:
                v38 = 0;
                while (cstdlib_strcmp(*(v28 + v38), "lpos"))
                {
                  v38 += 8;
                  if (v36 == v38)
                  {
                    goto LABEL_43;
                  }
                }

                if (v26 && v26 - 1 < *(a1 + 136))
                {
                  v39 = *(*(a1 + 152) + 8 * (v26 - 1));
                }

                else
                {
                  v39 = "=";
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 6, v66, v39);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_43:
                v40 = 0;
                while (cstdlib_strcmp(*(v28 + v40), "rpos"))
                {
                  v40 += 8;
                  if (v36 == v40)
                  {
                    goto LABEL_50;
                  }
                }

                v41 = "=";
                if (v26 + 1 < *(a1 + 136))
                {
                  v41 = *(*(a1 + 152) + 8 * (v26 + 1));
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 7, v66, v41);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_50:
                v42 = 0;
                while (cstdlib_strcmp(*(v28 + v42), "lword"))
                {
                  v42 += 8;
                  if (v36 == v42)
                  {
                    goto LABEL_59;
                  }
                }

                if (v26 && v26 - 1 < *(a1 + 136))
                {
                  v43 = *(*(a1 + 88) + 8 * (v26 - 1));
                }

                else
                {
                  v43 = "=";
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 1, v66, v43);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_59:
                v44 = 0;
                while (cstdlib_strcmp(*(v28 + v44), "llword"))
                {
                  v44 += 8;
                  if (v36 == v44)
                  {
                    goto LABEL_68;
                  }
                }

                if (v26 < 2 || v26 - 2 >= *(a1 + 136))
                {
                  v45 = "=";
                }

                else
                {
                  v45 = *(*(a1 + 88) + 8 * (v26 - 2));
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 0, v66, v45);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_68:
                v46 = 0;
                while (cstdlib_strcmp(*(v28 + v46), "rword"))
                {
                  v46 += 8;
                  if (v36 == v46)
                  {
                    goto LABEL_75;
                  }
                }

                v47 = "=";
                if (v26 + 1 < *(a1 + 136))
                {
                  v47 = *(*(a1 + 88) + 8 * (v26 + 1));
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 3, v66, v47);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_104;
                }

LABEL_75:
                v48 = 0;
                while (cstdlib_strcmp(*(v28 + v48), "rrword"))
                {
                  v48 += 8;
                  if (v36 == v48)
                  {
                    v12 = __s;
                    LODWORD(v27) = v65;
                    goto LABEL_82;
                  }
                }

                v49 = "=";
                LODWORD(v27) = v65;
                if (v26 + 2 < *(a1 + 136))
                {
                  v49 = *(*(a1 + 88) + 8 * (v26 + 2));
                }

                v17 = fe_wmp_setFeature(v4, v28, v29, 4, v66, v49);
                v12 = __s;
LABEL_82:
                heap_Free(*(v4 + 8), v31);
                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_101;
                }
              }

              igtree_Process(v16, v66, &__s1);
              v50 = *(*(a1 + 120) + 2 * v26);
              if (v27 < v50)
              {
                cstdlib_strncat(v12, (*(a1 + 40) + v27), v50 - v27);
              }

              if (cstdlib_strcmp(__s1, "NOMATCH"))
              {
                cstdlib_strcat(v12, __s1);
                v51 = cstdlib_strlen(__s1);
                *(*(a1 + 112) + 2 * v26) = v51 - cstdlib_strlen(*(*(a1 + 88) + 8 * v26));
                *(*(a1 + 144) + 2 * v26) = 1;
                v52 = *(v4 + 8);
                v53 = cstdlib_strlen(__s1);
                *(*(a1 + 104) + 8 * v26) = heap_Calloc(v52, 1, v53 + 1);
                cstdlib_strcpy(*(*(a1 + 104) + 8 * v26), __s1);
                *v64 = 1;
              }

              else
              {
                cstdlib_strcat(v12, *(*(a1 + 88) + 8 * v26));
              }

              v27 = *(*(a1 + 128) + 2 * v26++);
              if (v26 >= *(a1 + 136))
              {
                goto LABEL_93;
              }
            }
          }

          v27 = 0;
          v17 = 0;
LABEL_93:
          if (cstdlib_strlen(*(a1 + 40)) > v27)
          {
            cstdlib_strcat(v12, (*(a1 + 40) + v27));
          }

          if (*(v16 + 1296) != 1)
          {
            v54 = (*(v16 + 1296) - 1);
            v55 = v66;
            do
            {
              v56 = *v55++;
              heap_Free(*(v4 + 8), v56);
              --v54;
            }

            while (v54);
          }

          v57 = *(v4 + 8);
          v58 = *(a1 + 40);
          v12 = __s;
          v59 = cstdlib_strlen(__s);
          v60 = heap_Realloc(v57, v58, v59 + 1);
          *(a1 + 40) = v60;
          if (!v60)
          {
LABEL_100:
            log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0, v21, v22, v23, v24, v62);
            v17 = 2587893770;
            goto LABEL_101;
          }

          cstdlib_strcpy(v60, __s);
        }

LABEL_101:
        heap_Free(*(v4 + 8), v66);
      }
    }

    else
    {
      log_OutText(*(v4 + 32), "FE_WMP", 0, 0, "IGTree model for wordmap does not exist", v13, v14, v15, v62);
      v17 = 0;
    }

    heap_Free(*(v4 + 8), v12);
    return v17;
  }

  v17 = 2587893770;
  log_OutPublic(*(v4 + 32), "FE_WMP", 37000, 0, v8, v9, v10, v11, v62);
  return v17;
}

uint64_t fe_wmp_userTNBoundaryAdjustLateWMP(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v20 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v17);
  if ((result & 0x80000000) == 0)
  {
    while (v17)
    {
      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 0, 1, &v20 + 4, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v10 = v17;
      if ((HIDWORD(v20) - 5) > 1)
      {
        goto LABEL_24;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 1, 1, &v20, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 168))(a2, a3, v17, 2, 1, &v19, &v18 + 2);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      if (v19)
      {
        if (*(a1 + 136))
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = a4[v11];
            if (v14 >= *a4 + v19)
            {
              break;
            }

            v13 += *(*(a1 + 112) + 2 * v11);
            v15 = v14 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v11);
            v12 += v15;
            ++v11;
          }

          while (*(a1 + 136) != v11);
        }

        else
        {
          v13 = 0;
          v12 = 0;
        }

        v19 += v13;
        LODWORD(v20) = v12 + v20;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 1, 1, &v20, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (*(*(a1 + 24) + 160))(a2, a3, v17, 2, 1, &v19, &v18);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v10 = v17;
      if (HIDWORD(v20) == 5)
      {
        if (v20 == v19)
        {
          v16 = v17;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
LABEL_24:
        v16 = 0;
      }

      result = (*(*(a1 + 24) + 120))(a2, a3, v10, &v17);
      if ((result & 0x80000000) == 0)
      {
        if (!v16)
        {
          continue;
        }

        result = (*(*(a1 + 24) + 192))(a2, a3, v16);
        if ((result & 0x80000000) == 0)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t fe_wmp_adjustWordRecords(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  memset(__c, 0, sizeof(__c));
  v31 = 0;
  v29 = 0;
  __s = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  result = (*(a1[3] + 104))(a2, a3, 1, 0, &v31);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 104))(a2, a3, 2, v31, &v37 + 2);
    if ((result & 0x80000000) == 0)
    {
      v7 = HIWORD(v37);
      if (HIWORD(v37))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        do
        {
          result = (*(a1[3] + 168))(a2, a3, v7, 0, 1, &v34, &v37);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v34 == 9 || v34 == 4)
          {
            result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v36, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 2, 1, &v35, &v37);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            if (v36)
            {
              v13 = 0;
            }

            else
            {
              v13 = v11;
            }

            if (v36 > v10)
            {
              v11 = 1;
            }

            else
            {
              v11 = v13;
            }

            if (v36 > v10)
            {
              ++v9;
            }

            if (*(a1[18] + 2 * v9) == 1 && v11 == 1)
            {
              __s = 0;
              *&__c[1] = 0;
              LOWORD(v33) = 0;
              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 3, &__s, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[7] + 232))(a1[8], a1[9], "wmp_dct", *(a1[13] + 8 * v9), &__c[1], &v33, __c, 0);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v33)
              {
                __s = **&__c[1];
                v15 = cstdlib_strchr(__s, __c[0]);
                if (v15)
                {
                  *v15 = 0;
                }
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 5, &v29, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 7, 1, &v28, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 6, &v27, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 9, &v26, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 176))(a2, a3, HIWORD(v37), 14, &v25, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v16 = a1[14];
              LOWORD(v24) = *(a1[15] + 2 * v9) + v8;
              v23 = *(a1[16] + 2 * v9) + v8 + *(v16 + 2 * v9);
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 1, 1, &v24, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 2, 1, &v23, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v17 = *(a1[3] + 160);
              v18 = HIWORD(v37);
              v19 = cstdlib_strlen(__s);
              result = v17(a2, a3, v18, 3, (v19 + 1), __s, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v20 = *(a1[14] + 2 * v9);
              result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v8 += v20;
              if (HIWORD(v37))
              {
                result = (*(a1[3] + 168))(a2, a3);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v33 + 2, &v37);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                while (HIWORD(v33) == v36)
                {
                  v21 = HIWORD(v37);
                  if (!HIWORD(v37))
                  {
                    break;
                  }

                  if (v34 != 9 && v34 != 4)
                  {
                    break;
                  }

                  result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
                  if ((result & 0x80000000) == 0)
                  {
                    result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 0, 1, &v34, &v37);
                    if ((result & 0x80000000) == 0)
                    {
                      result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v33 + 2, &v37);
                      if ((result & 0x80000000) == 0)
                      {
                        result = (*(a1[3] + 192))(a2, a3, v21);
                        if ((result & 0x80000000) == 0)
                        {
                          continue;
                        }
                      }
                    }
                  }

                  return result;
                }
              }
            }

            else
            {
              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 1, 1, &v36, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 168))(a2, a3, HIWORD(v37), 2, 1, &v35, &v37);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              LOWORD(v24) = v36 + v8;
              v23 = v35 + v8;
              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 1, 1, &v24, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 160))(a2, a3, HIWORD(v37), 2, 1, &v23, &v24 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }
            }

            v10 = v36;
          }

          else
          {
            result = (*(a1[3] + 120))(a2, a3, HIWORD(v37), &v37 + 2);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          v7 = HIWORD(v37);
        }

        while (HIWORD(v37));
      }
    }
  }

  return result;
}

uint64_t fe_wmp_AdjustMarkersLateWMP(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  v22 = result;
  v5 = *(result + 136);
  if (*(result + 136))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (v7 + 1 >= v5)
      {
        v11 = (*(v22 + 128) + 2 * v5 - 2);
      }

      else
      {
        v11 = (*(v22 + 120) + 2 * (v7 + 1));
      }

      v12 = *v11;
      v13 = (a2 + 32 * v8);
      v15 = v13 + 3;
      v14 = v13[3];
      if (v14 < v12)
      {
        do
        {
          v16 = *v13;
          v13[1] += v9;
          v13[3] = v14 + v9;
          if (v16 == 36)
          {
            result = cstdlib_strcmp(*(v13 + 3), "normal");
            v10 = 1;
            if (result)
            {
              result = cstdlib_strcmp(*(v13 + 3), a4);
              if (result)
              {
                v10 = 0;
              }
            }
          }

          if (*v15 != v12 - 1 && *v13 == 1)
          {
            if (v10)
            {
              v17 = *(*(v22 + 112) + 2 * v7);
            }

            else
            {
              v17 = 0;
            }

            v13[2] += v17;
            v18 = v8 + 1;
            if (v18 < a3)
            {
              v19 = (a2 + 32 * v18);
              if (*v19 == 37)
              {
                v20 = v19[3];
                v21 = v19[4] + v17;
                v19[1] += v9;
                v19[3] = v20 + v9;
                v19[4] = v21;
                ++v8;
              }
            }

            v9 += v17;
          }

          v13 = (a2 + 32 * ++v8);
          v15 = v13 + 3;
          v14 = v13[3];
        }

        while (v14 < v12);
        v5 = *(v22 + 136);
      }

      ++v7;
    }

    while (v7 < v5);
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 8) += v9;
  *(a2 + 16) += v9;
  return result;
}

uint64_t fe_wmp_userTNBoundaryAdjust(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5, __int16 a6, __int16 a7)
{
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v19 = 0;
  v20 = 0;
  if (!a5)
  {
    return 0;
  }

  v21 = 0;
  while (1)
  {
    result = (*(*(a1 + 24) + 168))(a2, a3, a5, 0, 1, &v21, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if ((v21 - 4) > 2)
    {
      goto LABEL_24;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 1, 1, &v20, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 168))(a2, a3, v24, 2, 1, &v19, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v19)
    {
      if (*(a1 + 136))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = a4[v13];
          if (v16 >= *a4 + v19)
          {
            break;
          }

          v15 += *(*(a1 + 112) + 2 * v13);
          v17 = v16 >= v20 + *a4 ? 0 : *(*(a1 + 112) + 2 * v13);
          v14 += v17;
          ++v13;
        }

        while (*(a1 + 136) != v13);
      }

      else
      {
        v15 = 0;
        v14 = 0;
      }

      v19 += v15;
      v20 += v14;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 1, 1, &v20, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = (*(*(a1 + 24) + 160))(a2, a3, v24, 2, 1, &v19, &v22);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v12 = v24;
    if (v21 == 5)
    {
      if (v20 == v19)
      {
        v18 = v24;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
LABEL_24:
      v18 = 0;
    }

    result = (*(*(a1 + 24) + 120))(a2, a3, v12, &v24);
    if ((result & 0x80000000) == 0)
    {
      if (!v18 || (result = (*(*(a1 + 24) + 192))(a2, a3, v18), (result & 0x80000000) == 0))
      {
        LOWORD(a5) = v24;
        if (v24)
        {
          continue;
        }
      }
    }

    return result;
  }
}

uint64_t fe_wmp_AdjustMarkers(uint64_t result, uint64_t a2, unsigned int a3, const char *a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a3;
    v10 = a2 + 12;
    v11 = 1;
    do
    {
      v12 = *(v10 - 12);
      *(v10 - 8) += v7;
      *v10 += v7;
      if (v12 == 36)
      {
        result = cstdlib_strcmp(*(v10 + 12), "normal");
        v11 = 1;
        if (result)
        {
          result = cstdlib_strcmp(*(v10 + 12), a4);
          if (result)
          {
            v11 = 0;
          }
        }

        v12 = *(v10 - 12);
      }

      if (v12 == 1)
      {
        if (v11)
        {
          v13 = *(*(v6 + 112) + 2 * v8++);
        }

        else
        {
          v13 = 0;
        }

        *(v10 - 4) += v13;
        v7 += v13;
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) += v7;
  *(a2 + 16) += v7;
  return result;
}

uint64_t fe_wmp_getPos(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = 0;
  __s = 0;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  result = (*(*(a1 + 24) + 104))(a2, a3, 2, a5, &v22);
  if ((result & 0x80000000) == 0)
  {
    v12 = v22;
    if (v22)
    {
      v13 = 0;
      while (1)
      {
        result = (*(*(a1 + 24) + 168))(a2, a3, v12, 0, 1, &v19, &v20);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (v19 <= 0x11 && ((1 << v19) & 0x20210) != 0)
        {
          result = (*(*(a1 + 24) + 168))(a2, a3, v22, 1, 1, &v18 + 2, &v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          result = (*(*(a1 + 24) + 168))(a2, a3, v22, 2, 1, &v18, &v20);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (v13 < *(a4 + 48) && HIWORD(v18) == *(*(a4 + 32) + 2 * v13))
          {
            result = (*(*(a1 + 24) + 176))(a2, a3, v22, 5, &__s, &v20);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }

            v15 = *(a6 + 8);
            v16 = cstdlib_strlen(__s);
            *(*(a4 + 64) + 8 * v13) = heap_Calloc(v15, 1, v16 + 1);
            v17 = *(*(a4 + 64) + 8 * v13);
            if (!v17)
            {
              return 2587893770;
            }

            cstdlib_strcpy(v17, __s);
            ++v13;
          }
        }

        result = (*(*(a1 + 24) + 120))(a2, a3, v22, &v22);
        if ((result & 0x80000000) == 0)
        {
          v12 = v22;
          if (v22)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t fe_wmp_isFeatureRequired(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v6 = 0;
  v7 = g_featureNames_5[a3];
  v8 = (a2 - 1);
  while (cstdlib_strcmp(*(a1 + 8 * v6), v7))
  {
    if (v8 <= ++v6)
    {
      return 0;
    }
  }

  *a4 = v6;
  return 1;
}

uint64_t fe_wmp_setFeature(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, const char *a6)
{
  v20 = -1;
  result = fe_wmp_isFeatureRequired(a2, a3, a4, &v20);
  if (result)
  {
    if (cstdlib_strcmp(a6, ""))
    {
      v10 = cstdlib_strlen(a6);
      v11 = v20;
      if (v10 <= 0x40)
      {
        v13 = *(a5 + 8 * v20);
      }

      else
      {
        v12 = cstdlib_strlen(a6);
        v13 = heap_Realloc(*(a1 + 8), *(a5 + 8 * v11), v12 + 1);
        if (!v13)
        {
          log_OutPublic(*(a1 + 32), "FE_WMP", 37000, 0, v14, v15, v16, v17, v19);
          return 2587893770;
        }

        *(a5 + 8 * v11) = v13;
      }

      v18 = a6;
    }

    else
    {
      v13 = *(a5 + 8 * v20);
      v18 = "=";
    }

    cstdlib_strcpy(v13, v18);
    return 0;
  }

  return result;
}

uint64_t fe_text_analyzer_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2592088065;
  }

  result = 0;
  *a2 = &IFeTextAnalyzer;
  return result;
}

uint64_t fe_text_analyzer_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v150 = *MEMORY[0x277D85DE8];
  v140 = 0;
  v141 = 0;
  v5 = 2592088071;
  v139 = 0;
  memset(v149, 0, sizeof(v149));
  if (!a5)
  {
    return v5;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v141);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = heap_Calloc(*(v141 + 8), 1, 80);
  if (!v10)
  {
    log_OutPublic(*(v141 + 32), "FE_TEXT_ANALYZER", 37000, 0, v11, v12, v13, v14, v129);
    v5 = 2592088074;
    goto LABEL_13;
  }

  v15 = v10;
  *a5 = v10;
  *(a5 + 8) = 62347;
  *(v10 + 32) = 0;
  *(v10 + 72) = 0;
  Object = objc_GetObject(*(v141 + 48), "LINGDB", &v140);
  if ((Object & 0x80000000) != 0 || (*(v15 + 24) = *(v140 + 8), Object = objc_GetObject(*(v141 + 48), "FE_DCTLKP", &v139), (Object & 0x80000000) != 0) || (v17 = v139, *(v15 + 40) = *(v139 + 8), *(v15 + 48) = *(v17 + 16), v18 = v141, *v15 = v141, *(v15 + 8) = a3, *(v15 + 16) = a4, Object = fe_text_analyzer_CreateBrokerString(v18, v149), (Object & 0x80000000) != 0))
  {
    v5 = Object;
LABEL_13:
    fe_text_analyzer_ObjClose(*a5, *(a5 + 8));
    *a5 = 0;
    *(a5 + 8) = 0;
    return v5;
  }

  v20 = *v15;
  v19 = *(v15 + 8);
  v21 = *(v15 + 16);
  *v148 = 0;
  v147 = 0;
  *v146 = 0;
  v145 = 0;
  *__s1 = 0;
  v143 = 0;
  v142 = 0;
  v22 = ssftriff_reader_ObjOpen(v19, v21, 2, v149, "STLE", 5, v148);
  if (v22 < 0 && (v22 & 0x1FFF) != 0x14)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = 0;
    goto LABEL_102;
  }

  v33 = ssftriff_reader_OpenChunk(*v148, __s1, &v147, v146);
  if ((v33 & 0x80000000) == 0)
  {
    v34 = 0;
    v35 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    while (1)
    {
      if (cstdlib_strcmp(__s1, "LINE"))
      {
        if (!cstdlib_strcmp(__s1, "TOKN"))
        {
          ssftriff_reader_GetChunkData(*v148, v147, &v143, v37);
          v49 = heap_Calloc(*(v20 + 8), 1, 4 * v31);
          v29 = v49;
          if (!v49)
          {
            goto LABEL_90;
          }

          if (v35 >= v31)
          {
            goto LABEL_52;
          }

          v50 = v143;
          v51 = v35;
          do
          {
            *(v49 + 4 * v51) = v50[v51];
            ++v51;
          }

          while (v31 != v51);
LABEL_50:
          v35 = v31;
          goto LABEL_52;
        }

        if (!cstdlib_strcmp(__s1, "TLEN"))
        {
          ssftriff_reader_GetChunkData(*v148, v147, &v143, v38);
          v28 = heap_Calloc(*(v20 + 8), 1, 8 * *v143);
          if (!v28)
          {
LABEL_90:
            log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v39, v40, v41, v42, v129);
            goto LABEL_102;
          }

          ++v34;
          if (v29 && v31)
          {
            v136 = v30;
            v52 = v31;
            v53 = 0;
            v54 = v52;
            v55 = v52;
            do
            {
              v56 = heap_Calloc(*(v20 + 8), 1, 4 * *(v29 + 4 * v53));
              *(v28 + 8 * v53) = v56;
              if (!v56)
              {
                log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v57, v58, v59, v60, v129);
                LODWORD(v31) = v54;
                v30 = v136;
                goto LABEL_102;
              }

              if (*(v29 + 4 * v53))
              {
                v61 = 0;
                v62 = v143;
                do
                {
                  *(v56 + 4 * v61) = v62[(v34 + v61)];
                  ++v61;
                }

                while (v61 < *(v29 + 4 * v53));
                v34 += v61;
              }

              ++v53;
            }

            while (v53 != v55);
            v31 = v54;
            v35 = v54;
            v30 = v136;
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        if (!cstdlib_strcmp(__s1, "LLEN"))
        {
          v27 = heap_Calloc(*(v20 + 8), 1, 4 * v31);
          if (!v27)
          {
            v121 = *(*v15 + 32);
            goto LABEL_103;
          }

          ssftriff_reader_GetChunkData(*v148, v147, &v143, v63);
          if (!v31)
          {
            goto LABEL_51;
          }

          v64 = 0;
          v65 = v143;
          do
          {
            *(v27 + 4 * v64) = v65[v64];
            ++v64;
          }

          while (v31 != v64);
          goto LABEL_50;
        }

        if (!cstdlib_strcmp(__s1, "RULE"))
        {
          v30 = heap_Alloc(*(v20 + 8), 8 * v31);
          if (!v30)
          {
            goto LABEL_90;
          }

          v142 = 0;
          if (v27 && v147)
          {
            v132 = v31;
            v31 = v27;
            v43 = 0;
            v35 = 0;
            do
            {
              v142 = 0;
              v44 = heap_Alloc(*(v20 + 8), (*(v31 + 4 * v35) + 1));
              *(v30 + 8 * v35) = v44;
              if (!v44)
              {
                log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v45, v46, v47, v48, v129);
                v27 = v31;
                LODWORD(v31) = v132;
                goto LABEL_102;
              }

              ssftriff_reader_ReadStringZ(*v148, *v146, v147, v43, 0, &v142);
              ssftriff_reader_ReadStringZ(*v148, *v146, v147, v43, *(v30 + 8 * v35++), &v142);
              v43 += v142;
            }

            while (v43 < v147);
            v27 = v31;
            v31 = v132;
            goto LABEL_52;
          }

LABEL_51:
          v35 = 0;
        }
      }

      else
      {
        ssftriff_reader_GetChunkData(*v148, v147, &v143, v36);
        v31 = *v143;
      }

LABEL_52:
      ssftriff_reader_CloseChunk(*v148);
      v33 = ssftriff_reader_OpenChunk(*v148, __s1, &v147, v146);
      if (v33 < 0)
      {
        goto LABEL_55;
      }
    }
  }

  LODWORD(v31) = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
LABEL_55:
  if ((v33 & 0x1FFF) != 0x14)
  {
    goto LABEL_102;
  }

  v66 = heap_Calloc(*(v20 + 8), 1, 32);
  if (!v66)
  {
    log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v67, v68, v69, v70, v129);
    goto LABEL_101;
  }

  v71 = v66;
  *(v66 + 9) = 0;
  *(v66 + 16) = 0;
  v72 = heap_Calloc(*(v20 + 8), 1, 128);
  *v71 = v72;
  if (!v72)
  {
    log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v73, v74, v75, v76, v129);
    goto LABEL_98;
  }

  v137 = v30;
  cstdlib_memcpy(v72, "START", 6uLL);
  v77 = heap_Calloc(*(v20 + 8), 1, 128);
  if (!v77)
  {
    log_OutPublic(*(*v15 + 32), "FE_TEXT_ANALYZER", 37000, 0, v78, v79, v80, v81, v129);
    goto LABEL_97;
  }

  v82 = v77;
  v130 = v27;
  v133 = v31;
  if (!v31)
  {
LABEL_87:
    heap_Free(*(v20 + 8), v82);
    *(v15 + 32) = v71;
    v27 = v130;
    LODWORD(v31) = v133;
    v30 = v137;
    goto LABEL_104;
  }

  v83 = 0;
  v84 = v71;
  v138 = v28;
  v131 = v71;
  while (2)
  {
    cstdlib_memset(v82, 0, 0x80uLL);
    cstdlib_memcpy(v82, *(v137 + 8 * v83), **(v28 + 8 * v83));
    v85 = 0;
    v86 = 0;
    v134 = v83;
LABEL_62:
    v135 = v86;
    v88 = v84 + 9;
    v87 = *(v84 + 9);
    if (!*(v84 + 9))
    {
      goto LABEL_73;
    }

    v89 = v85;
    while (2)
    {
      v90 = 0;
      v91 = 0;
      while (1)
      {
        v92 = *(v84[2] + v90);
        if (v92)
        {
          break;
        }

LABEL_68:
        ++v91;
        v90 += 32;
        if (v91 >= v87)
        {
          v85 = v89;
          v28 = v138;
          v83 = v134;
          goto LABEL_73;
        }
      }

      if (cstdlib_strcmp(v92, v82))
      {
        v87 = *v88;
        goto LABEL_68;
      }

      if (v89 < (*(v29 + 4 * v134) - 1))
      {
        v84 = (v84[2] + v90);
        v93 = v135 + *(*(v138 + 8 * v134) + 4 * v89++) + 1;
        ++v85;
        cstdlib_memset(v82, 0, 0x80uLL);
        v135 = v93;
        cstdlib_memcpy(v82, (*(v137 + 8 * v134) + v93), *(*(v138 + 8 * v134) + 4 * v89));
        v88 = v84 + 9;
        v87 = *(v84 + 9);
        if (!*(v84 + 9))
        {
          v83 = v134;
          v88 = v84 + 9;
          v28 = v138;
          goto LABEL_73;
        }

        continue;
      }

      break;
    }

    v85 = v89;
    v83 = v134;
    v28 = v138;
LABEL_73:
    if (v85 == *(v29 + 4 * v83) - 1)
    {
      v112 = heap_Alloc(*(v20 + 8), 128);
      v84[3] = v112;
      if (!v112)
      {
        v120 = *(*v15 + 32);
        goto LABEL_95;
      }

      cstdlib_memcpy(v112, (*(v137 + 8 * v83) + v135), *(*(v28 + 8 * v83) + 4 * v85));
      *(v84[3] + *(*(v28 + 8 * v83) + 4 * v85)) = 0;
      v84 = v131;
LABEL_86:
      ++v83;
      v71 = v131;
      if (v83 == v133)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v94 = (*(*(v28 + 8 * v83) + 4 * v85) + 1);
  if (!*v88)
  {
    v103 = heap_Alloc(*(v20 + 8), 32);
    if (!v103)
    {
      goto LABEL_94;
    }

    v102 = v103;
    *(v103 + 9) = 0;
    *v103 = 0;
    *(v103 + 16) = 0;
    *(v103 + 24) = 0;
    v104 = heap_Alloc(*(v20 + 8), v94);
    *v102 = v104;
    if (!v104)
    {
      log_OutPublic(*(v20 + 32), "FE_TEXT_ANALYZER", 37000, 0, v105, v106, v107, v108, v129);
      heap_Free(*(v20 + 8), v102);
      goto LABEL_96;
    }

    cstdlib_memcpy(v104, v82, v94);
    v84[2] = v102;
LABEL_81:
    v109 = *v88;
    v84 = &v102[4 * v109];
    v83 = v134;
    v110 = *(v28 + 8 * v134);
    *v88 = v109 + 1;
    v111 = v135 + *(v110 + 4 * v85++) + 1;
    cstdlib_memset(v82, 0, 0x80uLL);
    cstdlib_memcpy(v82, (*(v137 + 8 * v83) + v111), *(*(v138 + 8 * v83) + 4 * v85));
    v86 = v111;
    v28 = v138;
    if (v85 >= *(v29 + 4 * v134))
    {
      goto LABEL_86;
    }

    goto LABEL_62;
  }

  v95 = heap_Realloc(*(v20 + 8), v84[2], 32 * *v88 + 32);
  if (v95)
  {
    v84[2] = v95;
    *(v95 + 32 * *v88 + 9) = 0;
    v100 = (v95 + 32 * *v88);
    *v100 = 0;
    v100[2] = 0;
    v100[3] = 0;
    v101 = heap_Alloc(*(v20 + 8), v94);
    *(v84[2] + 32 * *v88) = v101;
    if (v101)
    {
      cstdlib_memcpy(v101, v82, v94);
      v102 = v84[2];
      goto LABEL_81;
    }
  }

LABEL_94:
  v120 = *(v20 + 32);
LABEL_95:
  log_OutPublic(v120, "FE_TEXT_ANALYZER", 37000, 0, v96, v97, v98, v99, v129);
LABEL_96:
  heap_Free(*(v20 + 8), v82);
  v27 = v130;
  v71 = v131;
  LODWORD(v31) = v133;
LABEL_97:
  v30 = v137;
LABEL_98:
  if (*v71)
  {
    heap_Free(*(v20 + 8), *v71);
  }

  heap_Free(*(v20 + 8), v71);
LABEL_101:
  *(v15 + 32) = 0;
LABEL_102:
  v121 = *(v20 + 32);
LABEL_103:
  log_OutPublic(v121, "FE_TEXT_ANALYZER", 37000, 0, v23, v24, v25, v26, v129);
LABEL_104:
  if (*v148)
  {
    ssftriff_reader_ObjClose(*v148, v113, v114, v115, v116, v117, v118, v119);
  }

  if (v30)
  {
    v122 = v28;
    v123 = v31;
    if (v31)
    {
      v124 = v31;
      v125 = v30;
      do
      {
        if (*v125)
        {
          heap_Free(*(v20 + 8), *v125);
          *v125 = 0;
        }

        ++v125;
        --v124;
      }

      while (v124);
    }

    heap_Free(*(v20 + 8), v30);
    v28 = v122;
    LODWORD(v31) = v123;
  }

  if (v28)
  {
    v126 = v28;
    if (v31)
    {
      v127 = v31;
      v128 = v126;
      do
      {
        if (*v128)
        {
          heap_Free(*(v20 + 8), *v128);
          *v128 = 0;
        }

        ++v128;
        --v127;
      }

      while (v127);
    }

    heap_Free(*(v20 + 8), v126);
  }

  if (v27)
  {
    heap_Free(*(v20 + 8), v27);
  }

  if (v29)
  {
    heap_Free(*(v20 + 8), v29);
  }

  return 0;
}

uint64_t fe_text_analyzer_ObjClose(void **a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 62347, 80);
  if ((v3 & 0x80000000) != 0)
  {
    return 2592088072;
  }

  v4 = v3;
  if (a1)
  {
    if (a1[3])
    {
      objc_ReleaseObject((*a1)[6], "LINGDB");
    }

    if (a1[5])
    {
      objc_ReleaseObject((*a1)[6], "FE_DCTLKP");
    }

    v5 = a1[4];
    if (v5)
    {
      loc_text_analyzer_free_node(*a1, v5);
      v6 = a1[4];
      if (v6)
      {
        heap_Free((*a1)[1], v6);
      }

      a1[4] = 0;
    }

    heap_Free((*a1)[1], a1);
  }

  return v4;
}

uint64_t fe_text_analyzer_ObjReopen(uint64_t *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 2592088070;
  memset(v5, 0, sizeof(v5));
  if ((safeh_HandleCheck(a1, a2, 62347, 80) & 0x80000000) != 0)
  {
    return 2592088072;
  }

  if (a1)
  {
    return fe_text_analyzer_CreateBrokerString(*a1, v5);
  }

  return v3;
}

uint64_t fe_text_analyzer_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_Process(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = *MEMORY[0x277D85DE8];
  __s = 0;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v74 = 0;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  memset(__dst, 0, sizeof(__dst));
  *(a1 + 16) = 0;
  *a5 = 1;
  log_OutText((*a1)[4], "FE_TEXT_ANALYZER", 5, 0, "[FE_TEXT_ANALYZER]: Entering", a6, a7, a8, v61);
  *(a1 + 16) = 0;
  if (((a1[5][12])(a1[6], a1[7], "fecfg", "fetext_act_text_analyzer", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
  {
    v11 = cstdlib_strchr(*__c_3, __c);
    if (v11)
    {
      *v11 = 0;
    }

    if (!cstdlib_strcmp(*__c_3, "yes"))
    {
      *(a1 + 16) = 1;
    }
  }

  __c_1 = 0;
  v12 = (a1[5][12])(a1[6], a1[7], "fecfg", "fetext_trigger", &__c_3, &__c_1, &__c);
  v13 = 0;
  if ((v12 & 0x80000000) == 0 && __c_1)
  {
    v14 = v12;
    v15 = cstdlib_strchr(*__c_3, __c);
    if (v15)
    {
      *v15 = 0;
    }

    v16 = *__c_3;
    v17 = cstdlib_strlen(*__c_3);
    cstdlib_memcpy(__dst, v16, v17);
    v13 = v14;
  }

  if (!*(a1 + 16))
  {
    return v13;
  }

  v18 = a1[4];
  if (!v18)
  {
    return v13;
  }

  v13 = (a1[3][13])(a3, a4, 1, 0, &v77 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (((a1[3][23])(a3, a4, HIWORD(v77), 0, &v74) & 0x80000000) != 0)
  {
    return v13;
  }

  if (v74 != 1)
  {
    return v13;
  }

  v13 = (a1[3][22])(a3, a4, HIWORD(v77), 0, &__s, &v76 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (HIWORD(v76) < 2u)
  {
    return v13;
  }

  if (!cstdlib_strlen(__s))
  {
    return v13;
  }

  v13 = (a1[3][22])(a3, a4, HIWORD(v77), 1, &v75, &v74 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v19 = HIWORD(v74);
  if (!HIWORD(v74))
  {
    return v13;
  }

  v20 = 0;
  v21 = 0;
  while (*(v75 + v20) != 60)
  {
LABEL_26:
    ++v21;
    v20 += 32;
    if (v21 >= v19)
    {
      return v13;
    }
  }

  if (cstdlib_strcmp(*(v75 + v20 + 24), __dst))
  {
    v19 = HIWORD(v74);
    goto LABEL_26;
  }

  v13 = (a1[3][13])(a3, a4, 2, HIWORD(v77), &v77);
  if ((v13 & 0x80000000) == 0)
  {
    v65 = heap_Calloc((*a1)[1], 1, 32);
    if (v65)
    {
      v27 = v77;
      if (v77)
      {
        v28 = 0;
        v63 = 0;
        v29 = -1;
        v30 = v65;
        while (1)
        {
          v31 = (a1[3][21])(a3, a4, v27, 0, 1, &v69 + 4, &v76 + 2);
          if ((v31 & 0x80000000) != 0)
          {
            break;
          }

          v31 = (a1[3][21])(a3, a4, v77, 1, 1, &v69, &v76 + 2);
          if ((v31 & 0x80000000) != 0)
          {
            break;
          }

          v31 = (a1[3][21])(a3, a4, v77, 2, 1, &v68, &v76 + 2);
          if ((v31 & 0x80000000) != 0)
          {
            break;
          }

          if ((HIDWORD(v69) == 9 || HIDWORD(v69) == 4) && (v69 > v28 || v29 == -1))
          {
            v31 = (a1[3][22])(a3, a4, v77, 5, &v67, &v76 + 2);
            if ((v31 & 0x80000000) != 0)
            {
              break;
            }

            if (v29 == -1)
            {
              v29 = v77;
            }

            v32 = heap_Calloc((*a1)[1], 1, (v68 - v69 + 1));
            *v30 = v32;
            if (!v32)
            {
              goto LABEL_66;
            }

            cstdlib_memcpy(v32, &__s[v69], (v68 - v69));
            *(*v30 + (v68 - v69)) = 0;
            v37 = (*a1)[1];
            v38 = cstdlib_strlen(v67);
            v39 = heap_Calloc(v37, 1, v38 + 1);
            *(v30 + 8) = v39;
            if (!v39)
            {
              goto LABEL_66;
            }

            v40 = v39;
            v41 = v67;
            v42 = cstdlib_strlen(v67);
            cstdlib_memcpy(v40, v41, v42);
            v43 = *(v30 + 8);
            *(v43 + cstdlib_strlen(v67)) = 0;
            v44 = heap_Calloc((*a1)[1], 1, 32);
            *(v30 + 24) = v44;
            if (!v44)
            {
              goto LABEL_66;
            }

            *(v30 + 16) = v63;
            v28 = v69;
            ++v63;
            v30 = v44;
          }

          v13 = (a1[3][15])(a3, a4, v77, &v77);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_67;
          }

          v27 = v77;
          if (!v77)
          {
            goto LABEL_48;
          }
        }

        v13 = v31;
LABEL_67:
        v50 = 0;
      }

      else
      {
LABEL_48:
        v45 = heap_Calloc((*a1)[1], 1, 128);
        v66 = v45;
        if (!v45)
        {
LABEL_66:
          v13 = 2592088074;
          log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v33, v34, v35, v36, v62);
          goto LABEL_67;
        }

        v64 = v45;
        v46 = 0;
        v47 = 0;
        v48 = 1;
        v49 = v65;
        do
        {
          if (loc_match_against_rules(v49, &v70, v18, &v66, v48) && *(v70 + 16) - *(v49 + 16) > v46)
          {
            v46 = *(v70 + 16) - *(v49 + 16);
            v47 = 1;
          }

          v48 = 0;
          v49 = *(v49 + 24);
        }

        while (v49);
        v50 = 0;
        if (v20 && v47 == 1)
        {
          v51 = heap_Calloc((*a1)[1], 1, 32 * HIWORD(v74));
          v50 = v51;
          if (v51)
          {
            if (HIWORD(v74))
            {
              v56 = 0;
              v57 = v51 + v20;
              v58 = 32 * HIWORD(v74);
              do
              {
                if (v21)
                {
                  v59 = (v51 + v56);
                  v60 = *(v75 + v56 + 16);
                  *v59 = *(v75 + v56);
                  v59[1] = v60;
                }

                else
                {
                  *v57 = 60;
                  *(v57 + 4) = *(v75 + v20 + 4);
                  *(v57 + 24) = v64;
                }

                v56 += 32;
                --v21;
              }

              while (v58 != v56);
            }

            v13 = (a1[3][20])(a3, a4, HIWORD(v77), 1);
          }

          else
          {
            v13 = 2592088074;
            log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v52, v53, v54, v55, v62);
          }
        }
      }

      loc_text_analyzer_free_orth(*a1, v65);
      heap_Free((*a1)[1], v65);
      if (v66)
      {
        heap_Free((*a1)[1], v66);
      }

      if (v50)
      {
        heap_Free((*a1)[1], v50);
      }
    }

    else
    {
      v13 = 2592088074;
      log_OutPublic((*a1)[4], "FE_TEXT_ANALYZER", 37000, 0, v23, v24, v25, v26, v62);
    }
  }

  return v13;
}

uint64_t fe_text_analyzer_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62347, 80);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2592088072;
  }
}

uint64_t fe_text_analyzer_CreateBrokerString(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  __s2 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__s1 = 0u;
  v8 = 0u;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &__s2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "fecfg", &v5);
    if ((result & 0x80000000) == 0)
    {
      cstdlib_strcat(__s1, "text_analyzer_rules_");
      cstdlib_strcat(__s1, __s2);
      cstdlib_strcat(__s1, "_");
      cstdlib_strcat(__s1, v5);
      return brokeraux_ComposeBrokerString(a1, __s1, 1, 1, __s2, 0, 0, a2, 0x100uLL);
    }
  }

  return result;
}

void *loc_text_analyzer_free_node(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      result = heap_Free(result[1], v4);
      *a2 = 0;
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      result = heap_Free(v3[1], v5);
      *(a2 + 24) = 0;
    }

    if (*(a2 + 9))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = loc_text_analyzer_free_node(v3, *(a2 + 16) + v6);
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a2 + 9));
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      result = heap_Free(v3[1], v8);
    }

    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t loc_match_against_rules(uint64_t a1, void *a2, uint64_t a3, char **a4, int a5)
{
  v21 = 0;
  v7 = a5 == 1;
  while (*(a3 + 9))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_4:
    v22 = v11;
    v12 = 32 * v8;
    do
    {
      v13 = *(a3 + 16);
      v14 = cstdlib_strstr(*(v13 + v12), ":");
      if (v14)
      {
        v9 = v14 + 1;
        v10 = *(v13 + v12);
      }

      if (!v10)
      {
        v15 = *a1;
        if (!*a1)
        {
          goto LABEL_23;
        }

        v16 = *(*(a3 + 16) + v12);
        if (!v16)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      if (cstdlib_strstr(v10, "POS:") && (v15 = *(a1 + 8)) != 0 || v7 && cstdlib_strstr(v10, "BEG:") && (v15 = *a1) != 0)
      {
        v16 = v9;
LABEL_16:
        if (!cstdlib_strcmp(v16, v15))
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      if (cstdlib_strstr(v10, "NOT:") && *a1)
      {
        if (cstdlib_strcmp(v9, *a1))
        {
LABEL_29:
          v21 = *(a3 + 16) + v12;
          goto LABEL_30;
        }
      }

      else if (cstdlib_strstr(v10, "ELIP:"))
      {
        v11 = 0;
        v21 = *(a3 + 16) + v12;
        if (++v8 < *(a3 + 9))
        {
          goto LABEL_4;
        }

        goto LABEL_30;
      }

LABEL_23:
      ++v8;
      v12 += 32;
    }

    while (v8 < *(a3 + 9));
    if (v22)
    {
      return 0;
    }

LABEL_30:
    a1 = *(a1 + 24);
    if (!a1)
    {
      return 0;
    }

    v7 = 0;
    a3 = v21;
    v17 = *(v21 + 24);
    if (v17)
    {
      cstdlib_strcpy(*a4, v17);
      *a2 = a1;
      return 1;
    }
  }

  return 0;
}

void *loc_text_analyzer_free_orth(void *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      heap_Free(result[1], v4);
    }

    v5 = a2[1];
    if (v5)
    {
      heap_Free(v3[1], v5);
    }

    result = loc_text_analyzer_free_orth(v3, a2[3]);
    v6 = a2[3];
    if (v6)
    {
      result = heap_Free(v3[1], v6);
    }

    a2[3] = 0;
  }

  return result;
}

uint64_t lidword_Identify(uint64_t a1, const void *a2, unsigned int a3, uint64_t *a4, unsigned int *a5, unsigned int *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9)
{
  v316[64] = *MEMORY[0x277D85DE8];
  inserted = 2345672714;
  v303 = 0;
  v301 = 0;
  if (!a1)
  {
    return 2345672711;
  }

  if (!*(a1 + 1924))
  {
    return 0;
  }

  v18 = *(a1 + 2044);
  v19 = *(*(a1 + 16) + 8);
  if (v18 == 1)
  {
    v20 = (2 * a3) | 1;
  }

  else
  {
    v20 = a3 + 1;
  }

  v21 = heap_Calloc(v19, 1, v20);
  if (!v21)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v22, v23, v24, v25, v267);
    return inserted;
  }

  v26 = v21;
  cstdlib_memcpy(v21, a2, a3);
  v26[a3] = 0;
  if (*(*a4 + 16) < cstdlib_strlen(v26))
  {
    goto LABEL_8;
  }

  if (*a6 < 2)
  {
LABEL_23:
    v294 = a5;
    v288 = a7;
    v289 = a8;
    v286 = a2;
    if (*(a1 + 2044) != 1 || cstdlib_strlen(v26) == 1)
    {
LABEL_25:
      memset(v300, 0, 30);
      v32 = cstdlib_strlen(v26);
      v27 = lidword_normalizedDup(a1, v26, v32, v300, 1);
      if (!v27)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v33, v34, v35, v36, v267);
        goto LABEL_9;
      }

      v37 = cstdlib_strlen(v26);
      v28 = lidword_normalizedDup(a1, v26, v37, v300, 0);
      if (!v28)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "FE_LID", 48000, 0, v38, v39, v40, v41, v267);
        goto LABEL_10;
      }

      lidword_InitStruct(a1);
      v283 = v26;
      lidword_CheckTags(a1, v26, a4, a6);
      v285 = v27;
      v304 = v27;
      lidword_AdvanceSkippingSpacesInNormSW(&v304, &v303);
      v302 = v28;
      lidword_AdvanceSkippingSpacesInNormSW(&v302, &v301);
      v42 = v303;
      v43 = v304;
      v284 = a6;
      v282 = a4;
      v287 = v28;
      v44 = 0;
      if (v303 == v304)
      {
LABEL_253:
        v44 = v44;
        v26 = v283;
        lidword_ExtractFeats(a1, v283, v44);
        v302 = v28;
        lidword_AdvanceSkippingSpacesInNormSW(&v302, &v301);
        v187 = v301;
        v188 = v302;
        v189 = v294;
        v27 = v285;
        if (v301 != v302)
        {
          v190 = 0;
          v191 = a1 + 134160;
          __sa = (a1 + 3088);
          v281 = v44;
          do
          {
            if (!*v188 || v190 > 0xFF)
            {
              break;
            }

            if (*(v191 + 4 * v190) == -1)
            {
              if (*(a1 + 2050))
              {
                *(v191 + 4 * v190) = *(a1 + 1932);
              }

              else
              {
                v192 = *(a1 + 2026) + *(a1 + 2030) * *(a1 + 1928) + 3;
                v193 = *v187;
                *v187 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID NN fallback: %s", v184, v185, v186, v188);
                *v187 = v193;
                v194 = *(a1 + 2024) * v192;
                v195 = heap_Alloc(*(*(a1 + 16) + 8), 4 * v194);
                v316[0] = v195;
                if (!v195)
                {
                  v213 = *(a1 + 16);
                  goto LABEL_367;
                }

                v200 = v195;
                v279 = v192;
                if (v194)
                {
                  memset_pattern16(v195, &unk_26ECDA830, 4 * v194);
                }

                v313[0] = 0;
                v296 = *(a1 + 2024);
                a6 = v284;
                v201 = __sa;
                if (*(a1 + 2016))
                {
LABEL_264:
                  v202 = 0;
                  v203 = (v187 - v188);
                  v204 = a1 + 135168;
                  if (v187 != v188 && v296)
                  {
                    v205 = 0;
                    v206 = 0;
                    do
                    {
                      v207 = &v188[v206];
                      v208 = v188;
                      v209 = v203;
                      v210 = Utf8_LengthInBytes(v207, 1);
                      cstdlib_strncpy(*(*(a1 + 2016) + 8 * v205), v207, v210);
                      v203 = v209;
                      v188 = v208;
                      v211 = *(*(a1 + 2016) + 8 * v205++);
                      *(v211 + v210) = 0;
                      v206 += v210;
                    }

                    while (v203 > v206 && v205 < v296);
                    v202 = v205;
                    a6 = v284;
                    v204 = a1 + 135168;
                    v201 = __sa;
                  }
                }

                else
                {
                  v213 = *(a1 + 16);
                  v214 = heap_Calloc(*(v213 + 8), 1, (8 * v296) | 1);
                  *(a1 + 2016) = v214;
                  if (!v214)
                  {
                    goto LABEL_367;
                  }

                  if (v296)
                  {
                    v215 = 0;
                    while (1)
                    {
                      *(*(a1 + 2016) + v215) = heap_Calloc(*(v213 + 8), 1, 5);
                      if (!*(*(a1 + 2016) + v215))
                      {
                        break;
                      }

                      v215 += 8;
                      if (8 * v296 == v215)
                      {
                        goto LABEL_264;
                      }
                    }

LABEL_367:
                    log_OutPublic(*(v213 + 32), "FE_LID", 48000, 0, v196, v197, v198, v199, v274);
                    v219 = 2345672714;
LABEL_368:
                    inserted = v219;
                    goto LABEL_369;
                  }

                  v202 = 0;
                  v204 = a1 + 135168;
                }

                if (!*(a1 + 1960) || (v216 = *(v204 + 784)) == 0)
                {
LABEL_362:
                  v219 = 2345672704;
                  goto LABEL_368;
                }

                if (v202)
                {
                  v217 = 0;
                  v218 = v202;
                  v44 = v281;
                  do
                  {
                    v219 = (*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), *(*(a1 + 2016) + 8 * v217), *(a1 + 2008));
                    if ((v219 & 0x1FFF) == 0x14)
                    {
                      if (((*(*(a1 + 1960) + 56))(*(a1 + 1984), *(a1 + 1992), "$MEANC2V$", *(a1 + 2008)) & 0x1FFF) == 0x14)
                      {
                        goto LABEL_362;
                      }
                    }

                    else if ((v219 & 0x80000000) != 0)
                    {
                      goto LABEL_368;
                    }

                    cstdlib_memcpy(&v200[v217 * v279], *(a1 + 2008), 4 * *(a1 + 2026));
                    v221 = v217 * v279 + *(a1 + 2026);
                    v222 = *(a1 + 2030);
                    if (*(a1 + 2030))
                    {
                      v223 = 0;
                      v224 = *(a1 + 1928);
                      v225 = v201;
                      do
                      {
                        if (v224)
                        {
                          v226 = *(a1 + 2028);
                          v228 = v223 + v190 < v226 || v223 + v190 >= v226 + v281;
                          v229 = &v225[-512 * v226];
                          v230 = v221;
                          v231 = v224;
                          do
                          {
                            v220 = -1.0;
                            if (!v228)
                            {
                              v220 = *v229;
                            }

                            v200[v230++] = v220;
                            ++v229;
                            --v231;
                          }

                          while (v231);
                        }

                        v221 += v224;
                        ++v223;
                        v225 += 512;
                      }

                      while (v223 != v222);
                    }

                    LOBYTE(v220) = *(a1 + 135440 + v190);
                    v232 = LODWORD(v220);
                    v200[v221] = v232;
                    LOBYTE(v232) = *(a1 + 135696 + v190);
                    v233 = LODWORD(v232);
                    v200[v221 + 1] = v233;
                    LOBYTE(v233) = *(a1 + 135184 + v190);
                    v200[v221 + 2] = LODWORD(v233);
                    ++v217;
                  }

                  while (v217 != v218);
                  v216 = *(a1 + 135952);
                  a6 = v284;
                }

                else
                {
                  v44 = v281;
                }

                v219 = fi_predict(v216, v316, *(a1 + 2024), v313, v196, v197, v198, v199);
                v189 = v294;
                if ((v219 & 0x80000000) != 0)
                {
                  goto LABEL_368;
                }

                v237 = *(a1 + 1928);
                if (*(a1 + 1928))
                {
                  v238 = 0;
                  do
                  {
                    v239 = *&__sa[v238];
                    if (v239)
                    {
                      v240 = 1;
                    }

                    else
                    {
                      v240 = 4 * v237 - 4 == v238;
                    }

                    v238 += 4;
                  }

                  while (!v240);
                  v241 = 0;
                  v242 = 0;
                  v243 = 0.0;
                  v26 = v283;
                  v27 = v285;
                  do
                  {
                    v244 = v243;
                    v245 = v242;
                    v243 = *(v313[0] + 4 * v241);
                    if (v244 < v243)
                    {
                      v246 = *(v313[0] + 4 * v241);
                    }

                    else
                    {
                      v246 = v244;
                    }

                    if (v244 < v243)
                    {
                      v242 = v241;
                    }

                    else
                    {
                      v242 = v242;
                    }

                    if (v239 && v244 < v243)
                    {
                      v242 = v241;
                      if (!*&__sa[4 * v241])
                      {
                        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID prune out NN predictions if languages not in the LID1.0 destination field", v234, v235, v236, v274);
                        LODWORD(v237) = *(a1 + 1928);
                        v243 = v244;
                        v242 = v245;
                      }
                    }

                    else
                    {
                      v243 = v246;
                    }

                    ++v241;
                  }

                  while (v241 < v237);
                  v247 = v242;
                  if (v237)
                  {
                    v297 = v242;
                    v248 = 0;
                    v249 = 0;
                    do
                    {
                      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID [%3d] %1.5lf : %s %s", v234, v235, v236, v249++);
                      v248 += 8;
                    }

                    while (v249 < *(a1 + 1928));
                    v189 = v294;
                    v27 = v285;
                    v44 = v281;
                    v247 = v297;
                  }

                  else
                  {
                    v189 = v294;
                    v44 = v281;
                  }
                }

                else
                {
                  v247 = 0;
                  v243 = 0.0;
                  v26 = v283;
                  v27 = v285;
                }

                v250 = *(a1 + 2036);
                if (v243 <= v250 && v247 != *(a1 + 1930))
                {
                  v251 = *(a1 + 2032);
                  v252 = *(*(a1 + 16) + 32);
                  if (v243 <= v251)
                  {
                    log_OutText(v252, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on main language", v234, v235, v236, COERCE__INT64(v251));
                    v247 = *(a1 + 1930);
                  }

                  else
                  {
                    log_OutText(v252, "FE_LID", 5, 0, "ML2 LID NN thresholding set to %f triggered: falling back on language smoothing", v234, v235, v236, COERCE__INT64(v250));
                    v247 = -3;
                  }
                }

                *(a1 + 134160 + 4 * v190) = v247;
                v191 = a1 + 134160;
              }
            }

            lidword_AdvanceSkippingSpacesInNormEW(&v302, &v301);
            ++v190;
            v187 = v301;
            v188 = v302;
            __sa += 512;
          }

          while (v301 != v302);
        }

        lidword_Smoothing(a1, v44, v181, v182, v183, v184, v185, v186);
        inserted = lidword_InsertLangTags(a1, v26, v282, v189, a6, v44, v288, v289, a9);
        if (*(a1 + 2044) == 1)
        {
          lidword_AdjustMarkersAtSpacesAroundAscii(v26, v286, v282, a6);
        }

LABEL_370:
        v28 = v287;
        goto LABEL_10;
      }

      v45 = a1 + 134160;
      v280 = a1 + 3088;
      v295 = a1 + 134160;
      while (1)
      {
        if (!*v43 || v44 > 0xFFu)
        {
          goto LABEL_253;
        }

        if (*(v45 + 4 * v44) == -4)
        {
          v46 = 1;
          goto LABEL_252;
        }

        v293 = v44;
        v48 = v301;
        v47 = v302;
        v309[0] = 0;
        v309[1] = 0;
        *(v310 + 6) = 0;
        v310[0] = 0;
        v290 = *(a1 + 1088);
        v308 = 0;
        v307 = 0;
        v306 = 0;
        v305 = 0;
        v313[0] = 0;
        *&__c[1] = 0;
        __c[0] = 0;
        v49 = *v301;
        *v301 = 0;
        LOWORD(v311) = 1;
        __s = v47;
        Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw");
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_364;
        }

        v292 = v44;
        if (v311)
        {
          v51 = 0;
          do
          {
            *(v316 + v51) = LH_atou(*(v313[0] + 8 * v51));
            ++v51;
          }

          while (v51 < v311);
          ssft_qsort(v316, v311, 1, compare_2);
          if (v311)
          {
            v55 = 0;
            while (1)
            {
              *v301 = v49;
              v56 = __s;
              if (*__s)
              {
                v56 = __s;
                do
                {
                  v57 = cstdlib_strlen(v56);
                  if (utf8_BelongsToSet(0, v56, 0, v57))
                  {
                    break;
                  }

                  v56 += Utf8_LengthInBytes(v56, 1);
                }

                while (*v56);
              }

              *&__c[3] = v56;
              v58 = *v56;
              v59 = *(v316 + v55);
              if (*v56 && v59 >= 2)
              {
                v60 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&__c[3]);
                  ++v60;
                  v56 = *&__c[3];
                  v58 = **&__c[3];
                  v59 = *(v316 + v55);
                }

                while (**&__c[3] && v59 > v60);
              }

              else
              {
                v60 = 1;
              }

              if (v59 == v60)
              {
                *v56 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word case-sensitive lookup : %s", v52, v53, v54, __s);
                *&__c[1] = 1;
                Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, v313, &__c[1], __c, *(a1 + 2040));
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_364;
                }

                *v56 = v58;
                if (*&__c[1] == 1)
                {
                  break;
                }
              }

              if (++v55 >= v311)
              {
                v48 = v301;
                goto LABEL_55;
              }
            }

            if (cstdlib_strcmp(*v313[0], "all"))
            {
              if (*(a1 + 1928))
              {
                v108 = 0;
                do
                {
                  if (!cstdlib_strcmp((*(a1 + 1936) + 8 * v108), *v313[0]))
                  {
                    break;
                  }

                  ++v108;
                }

                while (*(a1 + 1928) > v108);
              }

              else
              {
                v108 = 0;
              }
            }

            else
            {
              v108 = -3;
            }

            v46 = *(v316 + v55);
            if (*(v316 + v55))
            {
              v125 = (v280 + (v293 << 9) + 4 * v108);
              v126 = (v295 + 4 * v293);
              v127 = *(v316 + v55);
              do
              {
                if ((v108 & 0x8000) == 0)
                {
                  *v125 = 1;
                }

                *v126++ = v108;
                v125 += 128;
                --v127;
              }

              while (v127);
            }

            v128 = *(*(a1 + 16) + 32);
            if (v108 < 0)
            {
              log_OutText(v128, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v105, v106, v107, v268);
            }

            else
            {
              log_OutText(v128, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v105, v106, v107, *(a1 + 1944) + 8 * v108);
            }

            v42 = v303;
            if (*v303 && *(v316 + v55) >= 2u)
            {
              v129 = 1;
              do
              {
                lidword_AdvanceToEndMultiword(&v303);
                v42 = v303;
                if (!*v303)
                {
                  break;
                }

                ++v129;
              }

              while (v129 < *(v316 + v55));
            }

            v301 = v56;
            v44 = v292;
            if (v46 > 1)
            {
LABEL_179:
              a6 = v284;
              v28 = v287;
              goto LABEL_252;
            }
          }

          else
          {
LABEL_55:
            *v48 = v49;
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_364;
            }

            v42 = v303;
          }
        }

        else
        {
          *v48 = v49;
        }

        v313[0] = 0;
        *&__c[1] = 0;
        __c[0] = 0;
        v61 = *v42;
        *v42 = 0;
        LOWORD(v311) = 1;
        Langs = (*(*(a1 + 64) + 96))(*(a1 + 48), *(a1 + 56), "ml2mw", v43, v313, &v311, __c);
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_364;
        }

        if (v311)
        {
          v62 = 0;
          do
          {
            *(v316 + v62) = LH_atou(*(v313[0] + 8 * v62));
            ++v62;
          }

          while (v62 < v311);
          ssft_qsort(v316, v311, 1, compare_2);
          if (v311)
          {
            v66 = 0;
            while (1)
            {
              *v303 = v61;
              v67 = v43;
              if (*v43)
              {
                v67 = v43;
                do
                {
                  v68 = cstdlib_strlen(v67);
                  if (utf8_BelongsToSet(0, v67, 0, v68))
                  {
                    break;
                  }

                  v67 += Utf8_LengthInBytes(v67, 1);
                }

                while (*v67);
              }

              *&__c[3] = v67;
              v69 = *v67;
              v70 = *(v316 + v66);
              if (*v67 && v70 >= 2)
              {
                v71 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&__c[3]);
                  ++v71;
                  v67 = *&__c[3];
                  v69 = **&__c[3];
                  v70 = *(v316 + v66);
                }

                while (**&__c[3] && v70 > v71);
              }

              else
              {
                v71 = 1;
              }

              if (v70 == v71)
              {
                *v67 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID multi word lookup : %s", v63, v64, v65, v43);
                *&__c[1] = 1;
                Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v43, v313, &__c[1], __c, *(a1 + 2040));
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_364;
                }

                *v67 = v69;
                if (*&__c[1] == 1)
                {
                  break;
                }
              }

              if (++v66 >= v311)
              {
                goto LABEL_79;
              }
            }

            if (cstdlib_strcmp(*v313[0], "all"))
            {
              if (*(a1 + 1928))
              {
                v112 = 0;
                do
                {
                  if (!cstdlib_strcmp((*(a1 + 1936) + 8 * v112), *v313[0]))
                  {
                    break;
                  }

                  ++v112;
                }

                while (*(a1 + 1928) > v112);
              }

              else
              {
                v112 = 0;
              }
            }

            else
            {
              v112 = -3;
            }

            v130 = *(v316 + v66);
            if (*(v316 + v66))
            {
              v131 = (v280 + (v293 << 9) + 4 * v112);
              v132 = (v295 + 4 * v293);
              v133 = *(v316 + v66);
              do
              {
                if ((v112 & 0x8000) == 0)
                {
                  *v131 = 1;
                }

                *v132++ = v112;
                v131 += 128;
                --v133;
              }

              while (v133);
            }

            v134 = *(*(a1 + 16) + 32);
            if (v112 < 0)
            {
              log_OutText(v134, "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v109, v110, v111, v269);
            }

            else
            {
              log_OutText(v134, "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v109, v110, v111, *(a1 + 1944) + 8 * v112);
            }

            if (*v301)
            {
              v135 = 1;
              do
              {
                if (v135 >= *(v316 + v66))
                {
                  break;
                }

                lidword_AdvanceToEndMultiword(&v301);
                ++v135;
              }

              while (*v301);
            }

            v303 = v67;
            v46 = v130;
            v44 = v292;
            if (v130 > 1)
            {
              goto LABEL_179;
            }
          }

          else
          {
LABEL_79:
            v67 = v303;
            *v303 = v61;
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_364;
            }
          }
        }

        else
        {
          v67 = v303;
          *v303 = v61;
        }

        v72 = *v67;
        *v67 = 0;
        HIWORD(v307) = 0;
        v73 = (*(*(a1 + 64) + 120))(*(a1 + 48), *(a1 + 56), v43, 20, "femwtn", "", &v308, &v307 + 2);
        if ((v73 & 0x80000000) != 0)
        {
          Langs = v73;
LABEL_364:
          inserted = Langs;
LABEL_369:
          v26 = v283;
          v27 = v285;
          goto LABEL_370;
        }

        if (HIWORD(v307))
        {
          v77 = 0;
          do
          {
            v315[v77] = LH_atou(*(v308 + 8 * v77));
            ++v77;
          }

          while (v77 < HIWORD(v307));
          ssft_qsort(v315, HIWORD(v307), 1, compare_2);
          if (HIWORD(v307))
          {
            v78 = 0;
            while (1)
            {
              *v303 = v72;
              v79 = v43;
              if (*v43)
              {
                v79 = v43;
                do
                {
                  v80 = cstdlib_strlen(v79);
                  if (utf8_BelongsToSet(0, v79, 0, v80))
                  {
                    break;
                  }

                  v79 += Utf8_LengthInBytes(v79, 1);
                }

                while (*v79);
              }

              v305 = v79;
              v81 = *v79;
              v82 = v315[v78];
              if (*v79 && v82 >= 2)
              {
                v83 = 1;
                do
                {
                  lidword_AdvanceToEndMultiword(&v305);
                  ++v83;
                  v79 = v305;
                  v81 = *v305;
                  v82 = v315[v78];
                }

                while (*v305 && v82 > v83);
              }

              else
              {
                v83 = 1;
              }

              if (v82 == v83)
              {
                *v79 = 0;
                log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word lookup : %s", v74, v75, v76, v43);
                LOWORD(v307) = 0;
                Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v43, &v308, &v307, &v306, *(a1 + 135960), 0);
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_364;
                }

                *v79 = v81;
                if (v307 == 1)
                {
                  break;
                }
              }

              if (++v78 >= HIWORD(v307))
              {
                goto LABEL_103;
              }
            }

            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN multi word : %s", v74, v75, v76, v43);
            if (v315[v78])
            {
              v113 = 0;
              v278 = v303;
              v114 = (v280 + (v293 << 9));
              while (1)
              {
                *(v295 + 4 * v293 + 4 * v113) = -3;
                Langs = calcWScore(a1, v43, "merwfrq_latn", 1, *(v290 + 8), v114, v309);
                if ((Langs & 0x80000000) != 0)
                {
                  goto LABEL_364;
                }

                *v278 = v72;
                calcWPenalties(a1, (v293 + v113++), 0, v115, v116, v117, v118, v119, v272);
                v114 += 512;
                if (v113 >= v315[v78])
                {
                  v120 = v315[v78];
                  goto LABEL_144;
                }
              }
            }

            v120 = 0;
LABEL_144:
            v44 = v292;
            if (*v301)
            {
              v124 = 1;
              do
              {
                if (v124 >= v315[v78])
                {
                  break;
                }

                lidword_AdvanceToEndMultiword(&v301);
                ++v124;
              }

              while (*v301);
            }

            v303 = v79;
            a6 = v284;
            v28 = v287;
            v46 = v120;
            goto LABEL_251;
          }
        }

LABEL_103:
        v84 = v303;
        *v303 = v72;
        v85 = v301;
        v313[0] = 0;
        v313[1] = 0;
        *(v314 + 6) = 0;
        v314[0] = 0;
        v86 = *(a1 + 1088);
        *&__c[3] = 0;
        __c[0] = 0;
        v87 = *v84;
        v88 = *v301;
        v311 = 0;
        *v84 = 0;
        *v85 = 0;
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID word lookup : %s", v74, v75, v76, v43);
        *&__c[1] = 1;
        Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", __s, &__c[3], &__c[1], __c, *(a1 + 2040));
        if ((Langs & 0x80000000) != 0)
        {
          goto LABEL_249;
        }

        v277 = v87;
        v291 = v88;
        a6 = v284;
        v28 = v287;
        if (!*&__c[1])
        {
          if (cstdlib_strcmp(v43, __s))
          {
            *&__c[1] = 1;
            Langs = (*(*(a1 + 64) + 152))(*(a1 + 48), *(a1 + 56), "ml2", v43, &__c[3], &__c[1], __c, *(a1 + 2040));
            if ((Langs & 0x80000000) != 0)
            {
              goto LABEL_250;
            }
          }

          if (!*&__c[1])
          {
            break;
          }
        }

        v89 = cstdlib_strchr(**&__c[3], __c[0]);
        if (v89)
        {
          *v89 = 0;
        }

        if (cstdlib_strcmp(**&__c[3], "all"))
        {
          v93 = *(a1 + 1928);
          if (*(a1 + 1928))
          {
            v94 = v84;
            v95 = 0;
            v96 = 0;
            do
            {
              if (!cstdlib_strcmp((*(a1 + 1936) + v95), **&__c[3]))
              {
                break;
              }

              ++v96;
              v95 += 8;
            }

            while (v96 < *(a1 + 1928));
            v93 = v96;
            v84 = v94;
          }

          *(v280 + (v293 << 9) + 4 * v93) = 1;
          *(v295 + 4 * v293) = v93;
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found unambiguously in ML2 lexicon: %s", v90, v91, v92, *(a1 + 1944) + 8 * v93);
          *v84 = v277;
          *v85 = v291;
          goto LABEL_250;
        }

        *(v295 + 4 * v293) = -3;
        Langs = calcWScore(a1, v43, "merwfrq_latn", 1, *(v86 + 8), (v280 + (v293 << 9)), v313);
        if ((Langs & 0x80000000) == 0)
        {
          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID found ambiguously in ML2 lexicon", v97, v98, v99, v270);
LABEL_119:
          *v84 = v277;
          *v85 = v291;
          calcWPenalties(a1, v292, 0, v100, v101, v102, v103, v104, v271);
        }

LABEL_250:
        v46 = 1;
        v44 = v292;
LABEL_251:
        if ((Langs & 0x80000000) != 0)
        {
          inserted = Langs;
          v26 = v283;
          v27 = v285;
          goto LABEL_10;
        }

LABEL_252:
        lidword_AdvanceSkippingSpacesInNormEW(&v304, &v303);
        lidword_AdvanceSkippingSpacesInNormEW(&v302, &v301);
        v44 += v46;
        v42 = v303;
        v43 = v304;
        v45 = a1 + 134160;
        if (v303 == v304)
        {
          goto LABEL_253;
        }
      }

      v273 = 0;
      Langs = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v43, &__c[3], &__c[1], __c, *(a1 + 135960));
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_250;
      }

      if (!*&__c[1])
      {
        v275 = v84;
        v276 = v85;
        if (*v43)
        {
          v136 = 1;
          v137 = v43;
          while (v136)
          {
            v138 = cstdlib_strlen(v137);
            v139 = utf8_BelongsToSet(6u, v137, 0, v138);
            v136 = v139 == 0;
            v137 += Utf8_LengthInBytes(v137, 1);
            if (!*v137)
            {
              if (!v139)
              {
                goto LABEL_186;
              }

              break;
            }
          }

          log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID digit word : %s", v121, v122, v123, v43);
          LOBYTE(v139) = 1;
LABEL_186:
          if (*v43)
          {
            v140 = 1;
            v141 = v43;
            while (v140)
            {
              v142 = utf8_strchr(*(a1 + 135968), v141);
              if (!v142)
              {
                v140 = 0;
              }

              v141 += Utf8_LengthInBytes(v141, 1);
              if (!*v141)
              {
                if (v142)
                {
                  goto LABEL_195;
                }

                break;
              }
            }

            v143 = 0;
LABEL_197:
            if (*__s)
            {
              v144 = __s;
              while (lidword_IsUppercase(v144) || utf8_strchr(*(a1 + 135984), v144))
              {
                v144 += Utf8_LengthInBytes(v144, 1);
                if (!*v144)
                {
                  goto LABEL_202;
                }
              }

              v145 = 1;
            }

            else
            {
LABEL_202:
              log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID acronym word : %s", v121, v122, v123, __s);
              v145 = 0;
            }

            if (*v43)
            {
              v146 = 0;
              v147 = v43;
              while (utf8_strchr(*(a1 + 135992), v147) || utf8_strchr(*(a1 + 135984), v147))
              {
                v147 += Utf8_LengthInBytes(v147, 1);
                ++v146;
                if (!*v147)
                {
                  if (v146 < 2u)
                  {
                    break;
                  }

                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID consonant word : %s", v148, v149, v150, v43);
                  v151 = 0;
                  goto LABEL_211;
                }
              }
            }

            v151 = 1;
LABEL_211:
            v152 = cstdlib_strchr(v43, 64);
            if (!v152 || !cstdlib_strchr(v152, 46))
            {
              v157 = 1u;
              v158 = "http";
              while (!cstdlib_strstr(v43, v158))
              {
                v158 = szURL[v157++];
                if (v157 == 16)
                {
                  v156 = 0;
                  goto LABEL_218;
                }
              }
            }

            log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID URL or EMail : %s", v153, v154, v155, v43);
            v156 = 1;
LABEL_218:
            v159 = v139 | v143;
            a6 = v284;
            v28 = v287;
            if ((v159 & 1) != 0 || (v145 & 1) == 0 && !*(a1 + 2046))
            {
LABEL_219:
              *(v295 + 4 * v293) = *(a1 + 1930);
              *v275 = v277;
              *v276 = v291;
              if (v292)
              {
                v160 = (v293 - 1);
                if (*(v295 + 4 * v160) == *(a1 + 1930))
                {
                  cstdlib_memcpy((v280 + (v293 << 9)), (v280 + (v160 << 9)), 0x200uLL);
                }
              }

              goto LABEL_250;
            }

            if (v151)
            {
              if (v156)
              {
                goto LABEL_219;
              }
            }

            else
            {
              if (!*(a1 + 2048))
              {
                LOBYTE(v156) = 1;
              }

              if (v156)
              {
                goto LABEL_219;
              }
            }

            v161 = (v280 + (v293 << 9));
            Langs = calcWScore(a1, v43, "merwfrq_latn", 1, *(v86 + 8), v161, v313);
            if ((Langs & 0x80000000) == 0)
            {
              if (lidword_OutOfLID2(a1, v292))
              {
                *(v295 + 4 * v293) = *(a1 + 1930);
                v167 = *(*(a1 + 16) + 32);
                v273 = v43;
                v168 = "ML2 LID fallback to the main language (language code is not in LID2 subset): %s";
                goto LABEL_233;
              }

              if (!*(a1 + 136016))
              {
LABEL_247:
                *v275 = v277;
                *v276 = v291;
                v169 = v292;
                v170 = a1;
                v171 = 1;
                goto LABEL_248;
              }

              v172 = *(v86 + 8);
              if (*(v86 + 8))
              {
                do
                {
                  if (*v161++)
                  {
                    goto LABEL_247;
                  }
                }

                while (--v172);
              }

              Langs = lidmde_FindLangs(a1, v43, v275, __s, v276, v316, &v311, v166);
              if ((Langs & 0x80000000) == 0)
              {
                if (v311)
                {
                  *(v295 + 4 * v293) = *(a1 + 1930);
                  log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) fallback to the main language (language code is not in LID2 subset): %s", v174, v175, v176, v43);
                }

                else
                {
                  v177 = lidmde_SingleLang(v316, *(a1 + 1928));
                  if (v177 < 0)
                  {
                    if (!lidmde_MainLangPlusSomeOtherLangs(v316, *(a1 + 1930), *(a1 + 1928)))
                    {
                      goto LABEL_247;
                    }

                    *(v295 + 4 * v293) = -3;
                    v167 = *(*(a1 + 16) + 32);
                    v168 = "ML2 LID (MDE) found ambiguously";
LABEL_233:
                    log_OutText(v167, "FE_LID", 5, 0, v168, v164, v165, v166, v273);
                  }

                  else
                  {
                    *(v295 + 4 * v293) = v177;
                    log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID (MDE) found unambiguously: %s", v178, v179, v180, *(a1 + 1944) + 8 * v177);
                  }
                }

                *v275 = v277;
                *v276 = v291;
                v169 = v292;
                v170 = a1;
                v171 = 0;
LABEL_248:
                calcWPenalties(v170, v169, v171, v162, v163, v164, v165, v166, v273);
              }
            }

LABEL_249:
            a6 = v284;
            v28 = v287;
            goto LABEL_250;
          }
        }

        else
        {
          LOBYTE(v139) = 0;
        }

LABEL_195:
        log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID punctuation word : %s", v121, v122, v123, v43);
        v143 = 1;
        goto LABEL_197;
      }

      log_OutText(*(*(a1 + 16) + 32), "FE_LID", 5, 0, "ML2 LID TN word : %s", v121, v122, v123, v43);
      *(v295 + 4 * v293) = -3;
      Langs = calcWScore(a1, v43, "merwfrq_latn", 1, *(v86 + 8), (v280 + (v293 << 9)), v313);
      if ((Langs & 0x80000000) != 0)
      {
        goto LABEL_250;
      }

      goto LABEL_119;
    }

    v253 = 0;
    v254 = 0;
    while (1)
    {
      v255 = &v26[v253];
      if (v26[v253] < 0)
      {
        v258 = v26[v253];
      }

      else
      {
        v256 = cstdlib_strlen(&v26[v253]);
        if (!utf8_BelongsToSet(0, &v26[v253], 0, v256) && v255[1] >= 0x81u)
        {
          v257 = cstdlib_strlen(v255 + 1);
          if (!utf8_BelongsToSet(0, (v255 + 1), 0, v257))
          {
LABEL_355:
            v261 = cstdlib_strlen(v255 + 1);
            cstdlib_memmove(v255 + 2, v255 + 1, v261 + 1);
            v262 = v254 + 1;
            v26[v262] = 32;
            v263 = *a6;
            if (*a6)
            {
              v264 = 0;
              v265 = *a4;
              do
              {
                v266 = (v265 + 12 + 32 * v264);
                if (*v266 - *(v265 + 12) > v262)
                {
                  ++*v266;
                  v263 = *a6;
                }

                ++v264;
              }

              while (v263 > v264);
            }

            goto LABEL_351;
          }
        }

        v258 = *v255;
      }

      if (v258 >= 0x81)
      {
        v259 = cstdlib_strlen(&v26[v253]);
        if (!utf8_BelongsToSet(0, &v26[v253], 0, v259) && (v255[1] & 0x80000000) == 0)
        {
          v260 = cstdlib_strlen(v255 + 1);
          if (!utf8_BelongsToSet(0, (v255 + 1), 0, v260))
          {
            goto LABEL_355;
          }
        }
      }

LABEL_351:
      v253 = ++v254;
      if (cstdlib_strlen(v26) - 1 <= v254)
      {
        goto LABEL_25;
      }
    }
  }

  v30 = 1;
  while (1)
  {
    v31 = *(*a4 + 32 * v30);
    if (v31 == 7 || v31 == 40)
    {
      break;
    }

    if (*a6 <= ++v30)
    {
      goto LABEL_23;
    }
  }

LABEL_8:
  inserted = 0;
  v27 = 0;
LABEL_9:
  v28 = 0;
LABEL_10:
  heap_Free(*(*(a1 + 16) + 8), v26);
  if (v27)
  {
    heap_Free(*(*(a1 + 16) + 8), v27);
  }

  if (v28)
  {
    heap_Free(*(*(a1 + 16) + 8), v28);
  }

  return inserted;
}