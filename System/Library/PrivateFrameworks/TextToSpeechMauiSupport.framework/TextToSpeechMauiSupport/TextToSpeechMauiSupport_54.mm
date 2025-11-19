uint64_t be_adapt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v27 = 0;
  v28 = 0;
  v5 = 2410684423;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v28);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v28 + 8), 1, 664);
      if (v10)
      {
        v15 = v10;
        Object = objc_GetObject(*(v28 + 48), "LINGDB", &v27);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        *(v15 + 8) = *(v27 + 8);
        Object = objc_GetObject(*(v28 + 48), "FE_DEPES", &v26);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v17 = v26;
        *(v15 + 32) = *(v26 + 8);
        *(v15 + 16) = *(v17 + 16);
        Object = objc_GetObject(*(v28 + 48), "FE_DCTLKP", &v25);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v18 = v25;
        *(v15 + 56) = *(v25 + 8);
        *(v15 + 40) = *(v18 + 16);
        *(v15 + 80) = 0;
        *(v15 + 64) = safeh_GetNullHandle();
        *(v15 + 72) = v19;
        if ((objc_GetObject(*(v28 + 48), "PHONMAP", &v24) & 0x80000000) == 0)
        {
          v20 = v24;
          *(v15 + 80) = *(v24 + 8);
          *(v15 + 64) = *(v20 + 16);
        }

        *v15 = v28;
        *(v15 + 88) = 0;
        *(v15 + 304) = a3;
        *(v15 + 312) = a4;
        Object = hlp_VoiceSetup_0(v15);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
        }

        else
        {
          v5 = globalbeadapt_SetFEBOOLKeyword(v15, "feGlobalmergemorphemes", (v15 + 280), 1);
          if ((v5 & 0x80000000) == 0)
          {
            v21 = 503;
LABEL_16:
            *a5 = v15;
            *(a5 + 8) = v21;
            return v5;
          }
        }
      }

      else
      {
        log_OutPublic(*(v28 + 32), "BE_ADAPT", 64000, 0, v11, v12, v13, v14, v23);
        v5 = 2410684426;
      }

      be_adapt_ObjClose(*a5, *(a5 + 8));
      v15 = 0;
      v21 = 0;
      goto LABEL_16;
    }

    return inited;
  }

  return v5;
}

uint64_t hlp_VoiceSetup_0(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v88 = 0;
  __s1 = 0;
  v86 = 0;
  *(a1 + 644) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicelexicontraining", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
  {
    *(a1 + 644) = 1;
  }

  *(a1 + 264) = 0;
  if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v88) & 0x80000000) == 0 && v88 == 1)
  {
    *(a1 + 264) = 1;
  }

  *(a1 + 248) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1 && __c_3 && **__c_3 == 49)
  {
    *(a1 + 248) = 1;
  }

  *(a1 + 252) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1 && __c_3 && !cstdlib_strncmp(*__c_3, "yes", 3uLL))
  {
    *(a1 + 252) = 1;
  }

  inited = com_depes_InitLayers(*a1, a1 + 96);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 224) = 0x3000200010000;
  *(a1 + 232) = 4;
  if (*(a1 + 264))
  {
    v3 = 8;
    v4 = 7;
    v5 = 6;
    v6 = 5;
  }

  else
  {
    v6 = 0;
    v3 = 7;
    v4 = 6;
    v5 = 5;
  }

  *(a1 + 234) = v6;
  *(a1 + 238) = v5;
  *(a1 + 240) = v4;
  v7 = v3 - (*(a1 + 248) == 0);
  *(a1 + 236) = v7;
  *(a1 + 106) = v7 + 1;
  inited = globalbeadapt_Init_SpecialSymbolsFromPhonmap(a1);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "pre_be_adapt");
  v9 = 1;
  if (!v8)
  {
    v9 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "post_be_adapt") != 0;
  }

  *(a1 + 328) = v9;
  *(a1 + 320) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlex", a1 + 320);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 488) = 1;
  *(a1 + 324) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlexmw", a1 + 324);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 640) = 513;
  v10 = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptcfg", &v86);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  *(a1 + 648) = 0u;
  if (v86)
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loo", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    if (__c_1 == 1)
    {
      v11 = cstdlib_strchr(*__c_3, __c);
      if (v11)
      {
        *v11 = 0;
      }

      v12 = *(*a1 + 8);
      v13 = cstdlib_strlen(*__c_3);
      v14 = heap_Alloc(v12, v13 + 1);
      *(a1 + 648) = v14;
      if (!v14)
      {
        goto LABEL_143;
      }

      cstdlib_strcpy(v14, *__c_3);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loodiff", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (__c_1 == 1)
    {
      v19 = cstdlib_strchr(*__c_3, __c);
      if (v19)
      {
        *v19 = 0;
      }

      v20 = *(*a1 + 8);
      v21 = cstdlib_strlen(*__c_3);
      v22 = heap_Alloc(v20, v21 + 1);
      *(a1 + 656) = v22;
      if (!v22)
      {
        goto LABEL_143;
      }

      cstdlib_strcpy(v22, *__c_3);
    }
  }

  if (*(a1 + 320))
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "nrdctpart", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    if (__c_1 == 1)
    {
      v23 = cstdlib_strchr(*__c_3, __c);
      if (v23)
      {
        *v23 = 0;
      }

      *(a1 + 488) = cstdlib_atoi(*__c_3);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "fn", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (__c_1 == 1)
    {
      v24 = *__c_3;
      v25 = cstdlib_strchr(*__c_3, 59);
      if (v25)
      {
        v26 = v25;
        do
        {
          *v26 = 0;
          v27 = *(a1 + 332);
          *(a1 + 332) = v27 + 1;
          cstdlib_strcpy((a1 + 333 + 10 * v27), v24);
          v24 = v26 + 1;
          v26 = cstdlib_strchr(v26 + 1, 59);
        }

        while (v26);
      }

      v28 = a1 + 333;
      v29 = *(a1 + 332);
      *(a1 + 332) = v29 + 1;
      cstdlib_strcpy((a1 + 333 + 10 * v29), v24);
      __c_1 = 2;
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "ft", &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      if (__c_1 == 1)
      {
        v30 = *__c_3;
        v31 = cstdlib_strchr(*__c_3, 59);
        *(a1 + 332) = 0;
        if (v31)
        {
          v32 = v31;
          while (1)
          {
            *v32 = 0;
            if (!cstdlib_strcmp(v30, "NLU"))
            {
              break;
            }

            if (!cstdlib_strcmp(v30, "PRM"))
            {
              v33 = 1;
              goto LABEL_64;
            }

            if (!cstdlib_strcmp(v30, "BND"))
            {
              v33 = 2;
              goto LABEL_64;
            }

            if (!cstdlib_strcmp(v30, "LNG"))
            {
              v33 = 3;
LABEL_64:
              v34 = *(a1 + 332);
              *(a1 + 332) = v34 + 1;
              *(a1 + 436 + 4 * v34) = v33;
            }

            v30 = v32 + 1;
            v32 = cstdlib_strchr(v32 + 1, 59);
            if (!v32)
            {
              goto LABEL_66;
            }
          }

          v33 = 0;
          goto LABEL_64;
        }

LABEL_66:
        if (cstdlib_strcmp(v30, "NLU"))
        {
          v28 = a1 + 333;
          if (!cstdlib_strcmp(v30, "PRM"))
          {
            v36 = *(a1 + 332);
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 332) = v36;
            v38 = 1;
            goto LABEL_75;
          }

          if (!cstdlib_strcmp(v30, "BND"))
          {
            v36 = *(a1 + 332);
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 332) = v36;
            v38 = 2;
            goto LABEL_75;
          }

          v35 = cstdlib_strcmp(v30, "LNG");
          v36 = *(a1 + 332);
          if (!v35)
          {
            v37 = a1 + 4 * v36;
            LOBYTE(v36) = v36 + 1;
            *(a1 + 332) = v36;
            v38 = 3;
LABEL_75:
            *(v37 + 436) = v38;
          }
        }

        else
        {
          v36 = *(a1 + 332);
          v39 = a1 + 4 * v36;
          LOBYTE(v36) = v36 + 1;
          *(a1 + 332) = v36;
          *(v39 + 436) = 0;
          v28 = a1 + 333;
        }
      }

      else
      {
        LOBYTE(v36) = *(a1 + 332);
      }

      v40 = heap_Calloc(*(*a1 + 8), 1, 8 * v36);
      *(a1 + 480) = v40;
      if (!v40)
      {
LABEL_143:
        v10 = 2410684426;
        log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v15, v16, v17, v18, v79);
        return v10;
      }

      if (*(a1 + 332))
      {
        v41 = 0;
        v42 = xmmword_287EEFA70;
        v43 = *off_287EEFA80;
        v44 = off_287EEFA90;
        v79 = *off_287EEFA80;
        v81 = xmmword_287EEFA70;
        do
        {
          v45 = *(*a1 + 8);
          v46 = (*(a1 + 480) + 8 * v41);
          v83 = v42;
          v84 = v43;
          v85 = v44;
          inited = ssftmap_ObjOpen(v45, 0, &v83, v46);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          __c_1 = 2;
          LH_itoa(1u, v92, 0xAu);
          v47 = v28;
          v48 = (v28 + 10 * v41);
          cstdlib_strcat(v92, v48);
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v92, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }

          if (__c_1)
          {
            v49 = 1;
            do
            {
              v50 = cstdlib_strchr(*__c_3, 59);
              if (v50)
              {
                *v50 = 0;
                inited = ssftmap_Insert(*(*(a1 + 480) + 8 * v41), *__c_3, (v50 + 1));
                if ((inited & 0x80000000) != 0)
                {
                  return inited;
                }
              }

              __c_1 = 2;
              LH_itoa(++v49, v92, 0xAu);
              cstdlib_strcat(v92, v48);
              v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v92, &__c_3, &__c_1, &__c);
              if ((v10 & 0x80000000) != 0)
              {
                return v10;
              }
            }

            while (__c_1);
          }

          ++v41;
          v28 = v47;
          v43 = v79;
          v42 = v81;
        }

        while (v41 < *(a1 + 332));
      }
    }
  }

  if (!*(a1 + 324))
  {
    return v10;
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "nrdctpart", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1)
  {
    v51 = cstdlib_strchr(*__c_3, __c);
    if (v51)
    {
      *v51 = 0;
    }

    *(a1 + 640) = cstdlib_atoi(*__c_3);
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "maxnrword", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1)
  {
    v52 = cstdlib_strchr(*__c_3, __c);
    if (v52)
    {
      *v52 = 0;
    }

    *(a1 + 641) = cstdlib_atoi(*__c_3);
  }

  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "fn", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0 || __c_1 != 1)
  {
    return v10;
  }

  v53 = *__c_3;
  v54 = cstdlib_strchr(*__c_3, 59);
  if (v54)
  {
    v55 = v54;
    do
    {
      *v55 = 0;
      v56 = *(a1 + 489);
      *(a1 + 489) = v56 + 1;
      cstdlib_strcpy((a1 + 490 + 10 * v56), v53);
      v53 = v55 + 1;
      v55 = cstdlib_strchr(v55 + 1, 59);
    }

    while (v55);
  }

  v57 = a1 + 490;
  v58 = *(a1 + 489);
  *(a1 + 489) = v58 + 1;
  cstdlib_strcpy((a1 + 490 + 10 * v58), v53);
  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "ft", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (__c_1 == 1)
  {
    v59 = *__c_3;
    v60 = cstdlib_strchr(*__c_3, 59);
    *(a1 + 489) = 0;
    if (v60)
    {
      v61 = v60;
      while (1)
      {
        *v61 = 0;
        if (!cstdlib_strcmp(v59, "NLU"))
        {
          break;
        }

        if (!cstdlib_strcmp(v59, "PRM"))
        {
          v62 = 1;
          goto LABEL_116;
        }

        if (!cstdlib_strcmp(v59, "BND"))
        {
          v62 = 2;
          goto LABEL_116;
        }

        if (!cstdlib_strcmp(v59, "LNG"))
        {
          v62 = 3;
LABEL_116:
          v63 = *(a1 + 489);
          *(a1 + 489) = v63 + 1;
          *(a1 + 592 + 4 * v63) = v62;
        }

        v59 = v61 + 1;
        v61 = cstdlib_strchr(v61 + 1, 59);
        if (!v61)
        {
          goto LABEL_118;
        }
      }

      v62 = 0;
      goto LABEL_116;
    }

LABEL_118:
    if (cstdlib_strcmp(v59, "NLU"))
    {
      if (cstdlib_strcmp(v59, "PRM"))
      {
        if (cstdlib_strcmp(v59, "BND"))
        {
          v64 = cstdlib_strcmp(v59, "LNG");
          v65 = *(a1 + 489);
          if (v64)
          {
            goto LABEL_128;
          }

          v66 = a1 + 4 * v65;
          LOBYTE(v65) = v65 + 1;
          *(a1 + 489) = v65;
          v67 = 3;
        }

        else
        {
          v65 = *(a1 + 489);
          v66 = a1 + 4 * v65;
          LOBYTE(v65) = v65 + 1;
          *(a1 + 489) = v65;
          v67 = 2;
        }
      }

      else
      {
        v65 = *(a1 + 489);
        v66 = a1 + 4 * v65;
        LOBYTE(v65) = v65 + 1;
        *(a1 + 489) = v65;
        v67 = 1;
      }

      *(v66 + 592) = v67;
    }

    else
    {
      v65 = *(a1 + 489);
      v68 = a1 + 4 * v65;
      LOBYTE(v65) = v65 + 1;
      *(a1 + 489) = v65;
      *(v68 + 592) = 0;
    }
  }

  else
  {
    LOBYTE(v65) = *(a1 + 489);
  }

LABEL_128:
  v69 = heap_Calloc(*(*a1 + 8), 1, 8 * v65);
  *(a1 + 632) = v69;
  if (!v69)
  {
    goto LABEL_143;
  }

  if (*(a1 + 489))
  {
    v70 = 0;
    v71 = xmmword_287EEFA70;
    v72 = *off_287EEFA80;
    v73 = off_287EEFA90;
    v80 = *off_287EEFA80;
    v82 = xmmword_287EEFA70;
    while (1)
    {
      v74 = *(*a1 + 8);
      v75 = (*(a1 + 632) + 8 * v70);
      v83 = v71;
      v84 = v72;
      v85 = v73;
      inited = ssftmap_ObjOpen(v74, 0, &v83, v75);
      if ((inited & 0x80000000) != 0)
      {
        return inited;
      }

      __c_1 = 2;
      LH_itoa(1u, v92, 0xAu);
      cstdlib_strcat(v92, (v57 + 10 * v70));
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v92, &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      if (__c_1)
      {
        v76 = 1;
        do
        {
          v77 = cstdlib_strchr(*__c_3, 59);
          if (v77)
          {
            *v77 = 0;
            inited = ssftmap_Insert(*(*(a1 + 632) + 8 * v70), *__c_3, (v77 + 1));
            if ((inited & 0x80000000) != 0)
            {
              return inited;
            }
          }

          __c_1 = 2;
          LH_itoa(++v76, v92, 0xAu);
          cstdlib_strcat(v92, (v57 + 10 * v70));
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v92, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }
        }

        while (__c_1);
      }

      ++v70;
      v72 = v80;
      v71 = v82;
      if (v70 >= *(a1 + 489))
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t be_adapt_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 664);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    globalbeadapt_DeInit_SpecialSymbolsFromPhonmap(a1);
    if (a1[1])
    {
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    }

    if (a1[4])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[7])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    if (a1[10])
    {
      objc_ReleaseObject(*(*a1 + 48), "PHONMAP");
    }

    FreeFeatureMaps(a1);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t be_adapt_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 503, 664);
  if ((result & 0x80000000) != 0)
  {
    return 2410684424;
  }

  if (a1)
  {
    FreeFeatureMaps(a1);

    return hlp_VoiceSetup_0(a1);
  }

  return result;
}

void *FreeFeatureMaps(void *result)
{
  v1 = result;
  v2 = result[60];
  if (v2)
  {
    v3 = *(result + 332);
    if (*(result + 332))
    {
      v4 = 0;
      do
      {
        v5 = v1[60];
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          ssftmap_ObjClose(v6);
          v5 = v1[60];
          v3 = *(v1 + 332);
        }

        *(v5 + 8 * v4++) = 0;
      }

      while (v4 < v3);
      v2 = v1[60];
    }

    result = heap_Free(*(*v1 + 8), v2);
    *(v1 + 332) = 0;
    v1[60] = 0;
  }

  v7 = v1[79];
  if (v7)
  {
    v8 = *(v1 + 489);
    if (*(v1 + 489))
    {
      v9 = 0;
      do
      {
        v10 = v1[79];
        v11 = *(v10 + 8 * v9);
        if (v11)
        {
          ssftmap_ObjClose(v11);
          v10 = v1[79];
          v8 = *(v1 + 489);
        }

        *(v10 + 8 * v9++) = 0;
      }

      while (v9 < v8);
      v7 = v1[79];
    }

    result = heap_Free(*(*v1 + 8), v7);
    *(v1 + 489) = 0;
    v1[79] = 0;
  }

  v12 = v1[81];
  if (v12)
  {
    result = heap_Free(*(*v1 + 8), v12);
    v1[81] = 0;
  }

  v13 = v1[82];
  if (v13)
  {
    result = heap_Free(*(*v1 + 8), v13);
    v1[82] = 0;
  }

  return result;
}

uint64_t be_adapt_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 664);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t hlp_CntNrPhonWord(_BYTE *a1)
{
  if (*a1)
  {
    v1 = a1 + 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = 1;
  while (*v1 == 95)
  {
    ++v2;
LABEL_9:
    ++v1;
  }

  if (*v1)
  {
    goto LABEL_9;
  }

  return v2;
}

uint64_t hlp_CntNrHyphen(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = (a1 + a2);
    do
    {
      v5 = *v4++;
      if (v5 == 45)
      {
        ++v3;
      }
    }

    while (v4 < a1 + a3);
  }

  return v3;
}

uint64_t be_adapt_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v40 = 2;
  if ((safeh_HandleCheck(a1, a2, 503, 664) & 0x80000000) != 0)
  {
    return 2410684424;
  }

  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  *a5 = 1;
  v9 = (*(*(a1 + 32) + 144))(*(a1 + 16), *(a1 + 24), a1 + 104);
  if ((v9 & 0x80000000) != 0)
  {
    goto LABEL_101;
  }

  updated = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v48 + 2);
  if ((updated & 0x80000000) == 0 && ((*(*(a1 + 8) + 184))(a3, a4, HIWORD(v48), 0, &v44) & 0x80000000) == 0 && v44 == 1)
  {
    updated = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v48), 0, &v49, &v48);
    if ((updated & 0x80000000) == 0 && v48 >= 2u)
    {
      updated = (*(*(a1 + 8) + 160))(a3, a4, HIWORD(v48), 2, 1, "", &v47);
      if ((updated & 0x80000000) != 0)
      {
        goto LABEL_102;
      }

      if (!*(a1 + 320) && !*(a1 + 328))
      {
LABEL_27:
        if (*(a1 + 648) && *(a1 + 656) && *(a1 + 80))
        {
          hlp_DifferentiatorLOO(a1, a3, a4, HIWORD(v48));
        }

        goto LABEL_102;
      }

      *(a1 + 268) = 0;
      cstdlib_strcpy(__dst, "pre_be_adapt");
      v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v48), __dst, 1);
      if ((v9 & 0x80000000) == 0)
      {
        if (((*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), __dst) & 0x80000000) != 0 || (v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v46, &v45), (v9 & 0x80000000) == 0) && (v46[v45] = 0, v9 = globalbeadapt_DoPostprocessing(a1, v49, &v46, 0), (v9 & 0x80000000) == 0) && (v9 = (*(*(a1 + 8) + 320))(a3, a4, 0), (v9 & 0x80000000) == 0) && (log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v11, v12, v13, __dst), v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v48), v49, v46), (v9 & 0x80000000) == 0))
        {
          com_depes_FreeLayers(*a1, a1 + 96);
          if (*(a1 + 320) && !*(a1 + 644))
          {
            v9 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v48), &v43);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            while (v43)
            {
              updated = (*(*(a1 + 8) + 168))(a3, a4);
              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_102;
              }

              if (v42 <= 0xA && ((1 << v42) & 0x610) != 0)
              {
                v38 = 0;
                v18 = *(a1 + 641);
                if (*(a1 + 641))
                {
                  while (1)
                  {
                    v19 = v43;
                    v20 = v49;
                    v53 = v43;
                    v52 = 0;
                    v50 = 0;
                    v51 = 0;
                    v9 = (*(*(a1 + 8) + 168))(a3, a4, v43, 1, 1, &v52, &v51);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_101;
                    }

                    updated = (*(*(a1 + 8) + 168))(a3, a4, v19, 2, 1, &v51 + 2, &v51);
                    if ((updated & 0x80000000) != 0)
                    {
                      goto LABEL_102;
                    }

                    v24 = HIWORD(v51) - v52;
                    if (v24 < 256)
                    {
                      cstdlib_strncpy(__s, &v20[v52], v24);
                      v26 = HIWORD(v51);
                      v27 = v52;
                      __s[HIWORD(v51) - v52] = 0;
                      v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", __s, (v26 - v27));
                      if ((v9 & 0x80000000) != 0)
                      {
                        goto LABEL_101;
                      }

                      v25 = 1;
                      if (v18 >= 2u && v19)
                      {
                        v28 = v19;
                        while (1)
                        {
                          v9 = (*(*(a1 + 8) + 120))(a3, a4, v28, &v53);
                          if ((v9 & 0x80000000) != 0)
                          {
                            goto LABEL_101;
                          }

                          if (v53)
                          {
                            v9 = (*(*(a1 + 8) + 168))(a3, a4);
                            if ((v9 & 0x80000000) != 0)
                            {
                              goto LABEL_101;
                            }

                            if (v50 - 11 < 5)
                            {
                              break;
                            }

                            if (v50 <= 0xA && ((1 << v50) & 0x610) != 0)
                            {
                              v9 = (*(*(a1 + 8) + 168))(a3, a4, v53, 1, 1, &v52, &v51);
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              v9 = (*(*(a1 + 8) + 168))(a3, a4, v53, 2, 1, &v51 + 2, &v51);
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              v29 = cstdlib_strlen(__s);
                              if (v29 + HIWORD(v51) - v52 - 255 < 0xFFFFFFFFFFFFFF00)
                              {
                                break;
                              }

                              cstdlib_strncpy(__s2, &v20[v52], HIWORD(v51) - v52);
                              v30 = HIWORD(v51);
                              v31 = v52;
                              __s2[HIWORD(v51) - v52] = 0;
                              v9 = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", __s2, (v30 - v31));
                              if ((v9 & 0x80000000) != 0)
                              {
                                goto LABEL_101;
                              }

                              cstdlib_strcat(__s, "_");
                              cstdlib_strcat(__s, __s2);
                              ++v25;
                            }
                          }

                          if (v25 < v18)
                          {
                            v28 = v53;
                            if (v53)
                            {
                              continue;
                            }
                          }

                          break;
                        }
                      }

                      v57 = v19;
                      v56 = 0;
                      v55 = 0;
                      v54 = 0;
                      updated = (*(*(a1 + 8) + 176))(a3, a4, v19, 3, &v55, &v56);
                      if ((updated & 0x80000000) != 0)
                      {
                        goto LABEL_102;
                      }

                      v32 = cstdlib_strlen(__s);
                      if (v32 + cstdlib_strlen(v55) - 255 >= 0xFFFFFFFFFFFFFF00)
                      {
                        cstdlib_strcat(__s, ":");
                        cstdlib_strcat(__s, v55);
                        if (v19 && v25 >= 2u)
                        {
                          v34 = 1;
                          while (1)
                          {
                            updated = (*(*(a1 + 8) + 120))(a3, a4, v19, &v57);
                            if ((updated & 0x80000000) != 0)
                            {
                              goto LABEL_102;
                            }

                            if (v57)
                            {
                              updated = (*(*(a1 + 8) + 168))(a3, a4);
                              if ((updated & 0x80000000) != 0)
                              {
                                goto LABEL_102;
                              }

                              if (v54 <= 0xA && ((1 << v54) & 0x610) != 0)
                              {
                                updated = (*(*(a1 + 8) + 176))(a3, a4, v57, 3, &v55, &v56);
                                if ((updated & 0x80000000) != 0)
                                {
                                  goto LABEL_102;
                                }

                                v36 = cstdlib_strlen(__s);
                                if (v36 + cstdlib_strlen(v55) - 255 < 0xFFFFFFFFFFFFFF00)
                                {
                                  goto LABEL_63;
                                }

                                ++v34;
                                cstdlib_strcat(__s, "_");
                                cstdlib_strcat(__s, v55);
                              }
                            }

                            if (v34 < v25)
                            {
                              LOWORD(v19) = v57;
                              if (v57)
                              {
                                continue;
                              }
                            }

                            break;
                          }
                        }
                      }

                      else
                      {
LABEL_63:
                        __s[0] = 0;
                      }
                    }

                    else
                    {
                      __s[0] = 0;
                      v25 = v18;
                    }

                    log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "voice lexicon key= %s", v21, v22, v23, __s);
                    v33 = 0;
                    if (v25 == 1 && __s[0])
                    {
                      v40 = 2;
                      updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlex", __s, &v41, &v40, &v39, *(a1 + 488));
                      if ((updated & 0x80000000) != 0)
                      {
                        goto LABEL_102;
                      }

                      if (v40 == 1)
                      {
                        v38 = 1;
                        updated = hlp_UpdateLdb(a1, a3, a4, &v43, *v41, 1u, 0, &v38, v49);
                        if ((updated & 0x80000000) != 0)
                        {
                          goto LABEL_102;
                        }

                        v33 = v38;
                      }

                      else
                      {
                        v33 = 0;
                      }
                    }

                    if (__s[0])
                    {
                      if (!v33)
                      {
                        v33 = *(a1 + 324);
                        if (v33)
                        {
                          v40 = 2;
                          updated = (*(*(a1 + 56) + 152))(*(a1 + 40), *(a1 + 48), "adaptlexmw", __s, &v41, &v40, &v39, *(a1 + 640));
                          if ((updated & 0x80000000) != 0)
                          {
                            goto LABEL_102;
                          }

                          if (v40 == 1)
                          {
                            v38 = 1;
                            updated = hlp_UpdateLdb(a1, a3, a4, &v43, *v41, v25, 1, &v38, v49);
                            if ((updated & 0x80000000) != 0)
                            {
                              goto LABEL_102;
                            }

                            v33 = v38;
                          }

                          else
                          {
                            v33 = 0;
                          }
                        }
                      }
                    }

                    v18 = v25 - 1;
                    if (v25 == 1 || v33)
                    {
                      break;
                    }
                  }
                }
              }

              if (v43)
              {
                updated = (*(*(a1 + 8) + 120))(a3, a4);
              }

              if ((updated & 0x80000000) != 0)
              {
                goto LABEL_102;
              }
            }
          }

          cstdlib_strcpy(__dst, "post_be_adapt");
          v9 = globalbeadapt_SetupDepesInput(a1, a3, a4, HIWORD(v48), __dst, 0);
          if ((v9 & 0x80000000) == 0)
          {
            if (!*(a1 + 644))
            {
              (*(*(a1 + 32) + 80))(*(a1 + 16), *(a1 + 24), __dst);
            }

            v9 = (*(*(a1 + 32) + 128))(*(a1 + 16), *(a1 + 24), 0, &v46, &v45);
            if ((v9 & 0x80000000) == 0)
            {
              v46[v45] = 0;
              log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "%s O1: %s", v14, v15, v16, __dst);
              v9 = globalbeadapt_DoPostprocessing(a1, v49, &v46, 1);
              if ((v9 & 0x80000000) == 0)
              {
                v9 = (*(*(a1 + 8) + 320))(a3, a4, 1);
                if ((v9 & 0x80000000) == 0)
                {
                  v9 = globalbeadapt_OutputToLingDB(a1, a3, a4, HIWORD(v48), v49, v46);
                  if ((v9 & 0x80000000) == 0)
                  {
                    updated = (*(*(a1 + 8) + 272))(a3, a4, 4, 1, 0, 0);
                    if ((updated & 0x80000000) == 0)
                    {
                      goto LABEL_27;
                    }

LABEL_102:
                    com_depes_FreeLayers(*a1, a1 + 96);
                    return updated;
                  }
                }
              }
            }
          }
        }
      }

LABEL_101:
      updated = v9;
      goto LABEL_102;
    }
  }

  return updated;
}

uint64_t hlp_UpdateLdb(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, char *a5, unsigned int a6, int a7, _DWORD *a8, uint64_t a9)
{
  v92 = *MEMORY[0x277D85DE8];
  v89 = 0;
  __s1 = 0;
  __s2 = 0;
  __s = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v17 = (*(a1[1] + 176))(a2, a3, *a4, 3, &__s, &v89);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v75 = a8;
  v76 = a6;
  v18 = 489;
  if (!a7)
  {
    v18 = 332;
  }

  v19 = 79;
  if (!a7)
  {
    v19 = 60;
  }

  v20 = a1[v19];
  v21 = *(a1 + v18);
  cstdlib_memset(__b, 0, 0x14uLL);
  cstdlib_strcpy(__dst, "|");
  if (v21)
  {
    v22 = 0;
    v23 = 592;
    if (!a7)
    {
      v23 = 436;
    }

    v24 = a1 + v23;
    do
    {
      if (v22)
      {
        cstdlib_strcat(__dst, ":");
        __b[v22] = cstdlib_strlen(__dst);
      }

      v25 = *&v24[4 * v22];
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v81 = 0;
          v80 = 0;
          v79 = 3;
          i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v80 + 2, &v89);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          LOWORD(v80) = *a4;
          for (i = (*(a1[1] + 120))(a2, a3); ; i = (*(a1[1] + 120))(a2, a3))
          {
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (!v80 || v81 > HIWORD(v80))
            {
              break;
            }

            i = (*(a1[1] + 168))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            i = (*(a1[1] + 168))(a2, a3, v80, 1, 1, &v81, &v89);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (v83 == 15)
            {
              i = (*(a1[1] + 168))(a2, a3, v80, 7, 1, &v79, &v89);
              if ((i & 0x80000000) != 0)
              {
                return i;
              }
            }
          }

          if (v80)
          {
            v29 = v79;
          }

          else
          {
            v29 = 0;
            v79 = 0;
          }

          LH_itoa(v29, &v82, 0xAu);
          v30 = ssftmap_Find(*(v20 + 8 * v22), &v82, &v86);
          v17 = v30;
          if (v86)
          {
            v31 = v30 <= -1;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            v27 = &v82;
          }

          else
          {
            v27 = v86;
          }

          goto LABEL_23;
        }

        if (v25 == 3)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 9, &__s2, &v89);
LABEL_19:
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          v17 = ssftmap_Find(*(v20 + 8 * v22), __s2, &v86);
          if ((v17 & 0x80000000) != 0 || (v27 = v86) == 0)
          {
            v27 = __s2;
          }

LABEL_23:
          cstdlib_strcat(__dst, v27);
        }
      }

      else
      {
        if (!v25)
        {
          v17 = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v89);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if ((ssftmap_IteratorOpen(*(v20 + 8 * v22), 0, 0, &v84) & 0x80000000) == 0)
          {
            while ((ssftmap_IteratorNext(v84, &__s2, &v86) & 0x80000000) == 0)
            {
              if (cstdlib_strstr(__s1, __s2))
              {
                cstdlib_strcat(__dst, v86);
              }
            }

            ssftmap_IteratorClose(v84);
          }

          goto LABEL_31;
        }

        if (v25 == 1)
        {
          i = (*(a1[1] + 176))(a2, a3, *a4, 13, &__s2, &v89);
          goto LABEL_19;
        }
      }

LABEL_31:
      ++v22;
    }

    while (v22 != v21);
  }

  cstdlib_strcat(__dst, ";");
  v32 = cstdlib_strstr(a5, __dst);
  if (!v32 && v21)
  {
    v33 = v21 - 1;
    v34 = v21 - 1;
    do
    {
      __dst[__b[v33]] = 0;
      v32 = cstdlib_strstr(a5, __dst);
      if (v32)
      {
        break;
      }

      --v33;
    }

    while (v34--);
  }

  if (!v32)
  {
    v32 = a5;
  }

  v36 = cstdlib_strchr(v32, 59);
  if (v36)
  {
    v37 = v36 + 1;
    v38 = cstdlib_strchr(v36 + 1, 124);
    if (v38)
    {
      *v38 = 0;
      __s = v37;
      log_OutText(*(*a1 + 32), "BE_ADAPT", 5, 0, "adapted transcription= %s", v39, v40, v41, v37);
    }
  }

  v42 = *__s != 0;
  v43 = 1;
  while (__s[v42] == 95)
  {
    ++v43;
LABEL_69:
    ++v42;
  }

  if (__s[v42])
  {
    goto LABEL_69;
  }

  if (v76 != 1)
  {
    if (v43 == 1)
    {
      v45 = *a4;
      v17 = (*(a1[1] + 176))(a2, a3, v45, 14, &__s1, &v89);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (!cstdlib_strstr(__s1, "E_") && !cstdlib_strstr(__s1, "e_"))
      {
        if (v76)
        {
          v46 = 1;
          v47 = 1;
          while (*a4)
          {
            i = (*(a1[1] + 120))(a2, a3);
            if ((i & 0x80000000) != 0)
            {
              return i;
            }

            if (*a4)
            {
              i = (*(a1[1] + 168))(a2, a3);
              if ((i & 0x80000000) != 0)
              {
                return i;
              }

              if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
              {
                v17 = (*(a1[1] + 176))(a2, a3, *a4, 14, &__s1, &v89);
                if ((v17 & 0x80000000) != 0)
                {
                  return v17;
                }

                if (v76 - 1 != v46 && (cstdlib_strstr(__s1, "E_") || cstdlib_strstr(__s1, "e_")) || cstdlib_strstr(__s1, "S_") || cstdlib_strstr(__s1, "s_") || cstdlib_strstr(__s1, "B-"))
                {
                  *a4 = v45;
                  goto LABEL_162;
                }

                ++v47;
              }
            }

            v46 = v47;
            if (v47 >= v76)
            {
              break;
            }
          }
        }

        v17 = hlp_AdjustWordRecord(a1, a2, a3, v45, __s);
        if ((v17 & 0x80000000) == 0)
        {
          *a4 = v45;
          if (v76)
          {
            if (v45)
            {
              v48 = 1;
              v49 = v45;
              do
              {
                v17 = (*(a1[1] + 120))(a2, a3, v49, a4);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                if (*a4)
                {
                  v17 = (*(a1[1] + 168))(a2, a3);
                  if ((v17 & 0x80000000) != 0)
                  {
                    return v17;
                  }

                  if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
                  {
                    v17 = hlp_DeleteWordRecord(a1, a2, a3, a4, v45, a9);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    ++v48;
                  }
                }

                if (v76 <= v48)
                {
                  break;
                }

                v49 = *a4;
              }

              while (*a4);
            }
          }
        }

        return v17;
      }
    }

    else if (v76 == v43)
    {
      v55 = cstdlib_strchr(__s, 95);
      v56 = v55;
      if (v55)
      {
        *v55 = 0;
      }

      v17 = hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
      if ((v17 & 0x80000000) == 0)
      {
        if (v76)
        {
          v57 = *a4;
          if (*a4)
          {
            if (v56)
            {
              v58 = 1;
              while (1)
              {
                v17 = (*(a1[1] + 120))(a2, a3, v57, a4);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                if (*a4)
                {
                  v17 = (*(a1[1] + 168))(a2, a3);
                  if ((v17 & 0x80000000) != 0)
                  {
                    return v17;
                  }

                  if (v83 <= 0xA && ((1 << v83) & 0x610) != 0)
                  {
                    __s = v56 + 1;
                    v60 = cstdlib_strchr(v56 + 1, 95);
                    v56 = v60;
                    if (v60)
                    {
                      *v60 = 0;
                    }

                    v17 = hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
                    if ((v17 & 0x80000000) != 0)
                    {
                      return v17;
                    }

                    ++v58;
                  }
                }

                if (v76 > v58)
                {
                  v57 = *a4;
                  if (*a4)
                  {
                    if (v56)
                    {
                      continue;
                    }
                  }
                }

                return v17;
              }
            }
          }
        }
      }

      return v17;
    }

    *v75 = 0;
    return v17;
  }

  v44 = v43 - 1;
  if (v43 == 1)
  {
    return hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
  }

  v82 = 0;
  HIWORD(v80) = 0;
  v51 = *a4;
  i = (*(a1[1] + 168))(a2, a3, *a4, 1, 1, &v82, &v89);
  if ((i & 0x80000000) != 0)
  {
    return i;
  }

  v17 = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v80 + 2, &v89);
  if ((v17 & 0x80000000) == 0)
  {
    if (v82 >= HIWORD(v80))
    {
      v52 = 0;
    }

    else
    {
      v52 = 0;
      v53 = (a9 + v82);
      do
      {
        v54 = *v53++;
        if (v54 == 45)
        {
          ++v52;
        }
      }

      while (v53 < a9 + HIWORD(v80));
    }

    if (v44 == v52)
    {
      v61 = cstdlib_strchr(__s, 95);
      v62 = v61;
      if (v61)
      {
        *v61 = 0;
      }

      i = hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      v63 = cstdlib_strchr((a9 + v82), 45);
      if (v63)
      {
        *v63 = 32;
        v77 = v63 - a9 + 1;
      }

      else
      {
        v77 = 0;
      }

      v81 = v82;
      v64 = *a4;
      if (*a4)
      {
        v65 = *a4;
        do
        {
          v51 = v65;
          i = (*(a1[1] + 120))(a2, a3, v65, a4);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          if (!*a4)
          {
            break;
          }

          i = (*(a1[1] + 168))(a2, a3);
          if ((i & 0x80000000) != 0)
          {
            return i;
          }

          v65 = *a4;
        }

        while (*a4 && v81 == v82);
      }

      i = (*(a1[1] + 80))(a2, a3, v51, a4);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      i = hlp_CopyWordRec_0(a1, a2, a3, v64, *a4, v77);
      if ((i & 0x80000000) != 0)
      {
        return i;
      }

      if (v62)
      {
        v66 = v62 + 1;
        __s = v62 + 1;
      }

      else
      {
        v66 = __s;
      }

      v67 = v77;
      v68 = cstdlib_strchr(v66, 95);
      if (v68)
      {
        *v68 = 0;
      }

      v78 = v68;
      v17 = hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
      if ((v17 & 0x80000000) == 0)
      {
        v82 = v67;
        if (v52 >= 2u)
        {
          v69 = 1;
          while (1)
          {
            v70 = cstdlib_strchr((a9 + v67), 45);
            if (v70)
            {
              *v70 = 32;
              v67 = v70 - a9 + 1;
            }

            v71 = *a4;
            i = (*(a1[1] + 80))(a2, a3, v71, a4);
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            i = hlp_CopyWordRec_0(a1, a2, a3, v71, *a4, v67);
            if ((i & 0x80000000) != 0)
            {
              break;
            }

            if (v78)
            {
              v72 = v78 + 1;
              __s = v78 + 1;
            }

            else
            {
              v72 = __s;
            }

            v73 = cstdlib_strchr(v72, 95);
            if (v73)
            {
              *v73 = 0;
            }

            v78 = v73;
            v17 = hlp_AdjustWordRecord(a1, a2, a3, *a4, __s);
            if ((v17 & 0x80000000) == 0)
            {
              v82 = v67;
              if (++v69 < v52)
              {
                continue;
              }
            }

            return v17;
          }

          return i;
        }
      }
    }

    else
    {
LABEL_162:
      *v75 = 0;
    }
  }

  return v17;
}

uint64_t hlp_DifferentiatorLOO(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v55 = *MEMORY[0x277D85DE8];
  v49 = 0;
  __s = 0;
  *__s2 = 0;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v51 = 0;
  memset(v53, 0, 512);
  while (1)
  {
    v9 = off_279DB6390[v8];
    if ((objc_GetObject(*(*a1 + 48), v9, &v51) & 0x80000000) == 0)
    {
      break;
    }

    if (++v8 == 3)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  v11 = v51;
  if (v51 && (NullHandle = safeh_GetNullHandle(), !safeh_HandlesEqual(v11[2], v11[3], NullHandle, v13)) && (v39 = v51[1]) != 0 && (v40 = *(v39 + 120)) != 0 && (v40(v51[2], v51[3], v53) & 0x80000000) == 0)
  {
    cstdlib_strcpy(__dst, v54);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_ReleaseObject(*(*a1 + 48), v9);
LABEL_9:
  result = (*(a1[1] + 104))(a2, a3, 2, a4, &v44 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetUInt(*(*a1 + 40), "disableloodifferentiator", &v43);
    v15 = result >= 0 && v43 == 1;
    v16 = !v15;
    v17 = HIWORD(v44);
    if (HIWORD(v44))
    {
      v42 = v10;
      v18 = 0;
      v41 = !v16;
      do
      {
        result = (*(a1[1] + 168))(a2, a3, v17, 0, 1, &v43 + 4, &v45 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (HIDWORD(v43) <= 0xA && ((1 << SBYTE4(v43)) & 0x610) != 0)
        {
          LOWORD(v44) = 0;
          result = (*(a1[1] + 184))(a2, a3, HIWORD(v44), 12, &v44);
          if ((result & 0x80000000) != 0)
          {
            break;
          }

          if (v44 == 1)
          {
            result = (*(a1[1] + 176))(a2, a3, HIWORD(v44), 12, &__s, &v45 + 2);
            if ((result & 0x80000000) != 0)
            {
              break;
            }

            v20 = __s;
            v21 = a1[81];
            v22 = a1[82];
            v23 = cstdlib_strlen(__s);
            if (v21)
            {
              v24 = v23;
              while (cstdlib_strcmp(v22, ""))
              {
                if (!cstdlib_strncmp(v20, v21, v24))
                {
                  if ((v42 & 1) == 0 && !cstdlib_strchr(__dst, *v22))
                  {
                    break;
                  }

                  v47 = *v22;
                  v26 = v41;
                  if (!v47)
                  {
                    v26 = 1;
                  }

                  if (v26)
                  {
                    goto LABEL_32;
                  }

                  result = (*(a1[1] + 176))(a2, a3, HIWORD(v44), 3, &v49, &v45 + 2);
                  if ((result & 0x80000000) != 0)
                  {
                    goto LABEL_58;
                  }

                  v27 = (2 * (cstdlib_strlen(v49) & 0x7FFF)) | 1;
                  v28 = heap_Realloc(*(*a1 + 8), v18, v27);
                  if (!v28)
                  {
                    result = log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v29, v30, v31, v32, v41);
                    goto LABEL_58;
                  }

                  v18 = v28;
                  cstdlib_memset(v28, 0, v27);
                  v46 = 0;
                  if (cstdlib_strlen(v49))
                  {
                    v33 = 0;
                    v34 = 0;
                    v35 = 1;
                    do
                    {
                      __s2[0] = v49[v33];
                      cstdlib_strcat(v18, __s2);
                      if (__s2[0] == 92)
                      {
                        v35 = !v35;
                      }

                      else if (v35)
                      {
                        v35 = 1;
                        if (((*(a1[10] + 64))(a1[8], a1[9], 0, __s2, &v46, 0) & 0x80000000) == 0)
                        {
                          if (v46)
                          {
                            v35 = 1;
                            cstdlib_strncat(v18, &v47, 1uLL);
                          }
                        }
                      }

                      v33 = ++v34;
                    }

                    while (cstdlib_strlen(v49) > v34);
                  }

                  v36 = *(a1[1] + 160);
                  v37 = HIWORD(v44);
                  v38 = cstdlib_strlen(v18);
                  result = v36(a2, a3, v37, 3, (v38 + 1), v18, &v45);
                  if ((result & 0x80000000) == 0)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_58;
                }

                v25 = cstdlib_strchr(v21, 44);
                v21 = v25 + 1;
                ++v22;
                if (!v25)
                {
                  break;
                }
              }
            }

            v47 = 0;
          }
        }

LABEL_32:
        result = (*(a1[1] + 120))(a2, a3, HIWORD(v44), &v44 + 2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v17 = HIWORD(v44);
      }

      while (HIWORD(v44));
LABEL_58:
      if (v18)
      {
        return heap_Free(*(*a1 + 8), v18);
      }
    }
  }

  return result;
}

uint64_t be_adapt_ProcessEnd(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 503, 664);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2410684424;
  }
}

uint64_t be_adapt_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2410684417;
  }

  result = 0;
  *a2 = &IFeBeadapt;
  return result;
}

uint64_t hlp_AdjustWordRecord(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__s)
{
  __sa = 0;
  __s1 = 0;
  v17 = 0;
  v18 = 0;
  v10 = !cstdlib_strchr(__s, 39) && !cstdlib_strchr(__s, 34);
  v19 = 0;
  v20 = 0;
  result = (*(a1[1] + 176))(a2, a3, a4, 3, &__sa, &v20 + 2);
  if ((result & 0x80000000) == 0)
  {
    v12 = cstdlib_strchr(__sa, 39) || cstdlib_strchr(__sa, 34);
    result = (*(a1[1] + 176))(a2, a3, a4, 13, &__s1, &v20 + 2);
    if ((result & 0x80000000) == 0)
    {
      if (v10 || v12 || cstdlib_strcmp(__s1, "0"))
      {
        if (!v10 || !cstdlib_strcmp(__s1, "0"))
        {
LABEL_18:
          v13 = *(a1[1] + 160);
          v14 = cstdlib_strlen(__s);
          result = v13(a2, a3, a4, 3, (v14 + 1), __s, &v20);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a1[1] + 168))(a2, a3, a4, 0, 1, &v19, &v20 + 2);
            if ((result & 0x80000000) == 0 && v19 == 10)
            {
              result = (*(a1[1] + 176))(a2, a3, a4, 9, &v18, &v20 + 2);
              if ((result & 0x80000000) == 0)
              {
                if (v18 && cstdlib_strlen(v18) || (result = paramc_ParamGetStr(*(*a1 + 40), "langcode", &v17), (result & 0x80000000) == 0) && (!v17 || (v15 = *(a1[1] + 160), v16 = cstdlib_strlen(v17), result = v15(a2, a3, a4, 9, (v16 + 1), v17, &v20), (result & 0x80000000) == 0)))
                {
                  v19 = 4;
                  return (*(a1[1] + 160))(a2, a3, a4, 0, 4, &v19, &v20);
                }
              }
            }
          }

          return result;
        }

        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "0", &v20);
      }

      else
      {
        result = (*(a1[1] + 160))(a2, a3, a4, 13, 2, "1", &v20);
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  return result;
}

uint64_t hlp_CopyWordRec_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v11 = 0;
  v12 = 0;
  v56 = a6;
  v55 = 0;
  v54 = 0;
  __s1 = 0;
  v52 = 0;
  do
  {
    v13 = (*(a1[1] + 184))(a2, a3, a4, v12, &v55);
    if ((v13 & 0x80000000) != 0)
    {
      break;
    }

    if (v55)
    {
      if (v12 <= 0x11u && ((1 << v12) & 0x20186) != 0)
      {
        v14 = (*(a1[1] + 168))(a2, a3, a4, v12, 1, &v54, &v52 + 2);
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(a1[1] + 160);
        if (v12 == 1)
        {
          v16 = a2;
          v17 = a3;
          v18 = a5;
          v19 = 1;
LABEL_12:
          v20 = v15(v16, v17, v18, v19, 1, &v56, &v52);
          goto LABEL_13;
        }

        v13 = v15(a2, a3, a5, v12, 1, &v54, &v52);
        if ((v13 & 0x80000000) != 0)
        {
          break;
        }

        if (v12 == 2)
        {
          --v56;
          v15 = *(a1[1] + 160);
          v16 = a2;
          v17 = a3;
          v18 = a4;
          v19 = 2;
          goto LABEL_12;
        }
      }

      else
      {
        v14 = (*(a1[1] + 176))(a2, a3, a4);
        if ((v14 & 0x80000000) != 0)
        {
LABEL_46:
          v13 = v14;
          break;
        }

        if (v12 != 14)
        {
          v46 = a5;
          v47 = *(a1[1] + 160);
          v48 = cstdlib_strlen(__s1);
          v20 = v47(a2, a3, v46, v12, (v48 + 1), __s1, &v52);
          a5 = v46;
LABEL_13:
          v13 = v20;
          if ((v20 & 0x80000000) != 0)
          {
            break;
          }

          goto LABEL_14;
        }

        for (i = cstdlib_strstr(__s1, "e_"); i; i = cstdlib_strstr(i + 1, "e_"))
        {
          *i = 69;
        }

        v51 = a5;
        for (j = cstdlib_strstr(__s1, "s_"); j; j = cstdlib_strstr(j + 1, "s_"))
        {
          *j = 83;
        }

        v24 = *(*a1 + 8);
        v25 = cstdlib_strlen(__s1);
        v26 = heap_Alloc(v24, (v25 + 1));
        if (!v26)
        {
          log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v27, v28, v29, v30, v50);
          return 2410684426;
        }

        v11 = v26;
        cstdlib_strcpy(v26, __s1);
        v31 = cstdlib_strstr(__s1, "E_");
        if (v31)
        {
          v32 = v31;
          do
          {
            *v32 = 83;
            v33 = cstdlib_strchr(v32, 59);
            if (v33)
            {
              v34 = v33;
              *v33 = 0;
              if (cstdlib_strstr(v11, v32))
              {
                v35 = cstdlib_strlen(v34 + 1);
                cstdlib_memmove(v32, v34 + 1, v35 + 1);
              }

              else
              {
                *v32 = 73;
                *v34 = 59;
              }
            }

            else if (cstdlib_strstr(v11, v32))
            {
              *v32 = 0;
            }

            else
            {
              *v32 = 73;
            }

            v32 = cstdlib_strstr(v32 + 1, "E_");
          }

          while (v32);
        }

        v36 = cstdlib_strstr(v11, "S_");
        if (v36)
        {
          v37 = v36;
          do
          {
            *v37 = 69;
            v38 = cstdlib_strchr(v37, 59);
            if (v38)
            {
              v39 = v38;
              *v38 = 0;
              v40 = v38 + 1;
              if (cstdlib_strstr(v38 + 1, v37))
              {
                v41 = cstdlib_strlen(v40);
                cstdlib_memmove(v37, v40, v41 + 1);
              }

              else
              {
                *v37 = 73;
                *v39 = 59;
              }
            }

            else
            {
              *v37 = 73;
            }

            v37 = cstdlib_strstr(v37 + 1, "S_");
          }

          while (v37);
        }

        for (k = cstdlib_strstr(v11, "PHR:B-"); k; k = cstdlib_strstr(k + 1, "PHR:B-"))
        {
          k[4] = 73;
        }

        v43 = *(a1[1] + 160);
        v44 = cstdlib_strlen(v11);
        v45 = v43(a2, a3, v51, 14, (v44 + 1), v11, &v52);
        a5 = v51;
        v13 = v45;
        if ((v45 & 0x80000000) != 0)
        {
          break;
        }
      }
    }

LABEL_14:
    v21 = v12++;
  }

  while (v21 < 0x15);
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
  }

  return v13;
}

uint64_t hlp_DeleteWordRecord(void *a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  __s = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v12 = (*(a1[1] + 168))(a2, a3, a5, 2, 1, &v36, &v37 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a6 + v36) = 45;
  v12 = (*(a1[1] + 168))(a2, a3, *a4, 2, 1, &v36, &v37 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 160))(a2, a3, a5, 2, 1, &v36, &v37);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v12 = (*(a1[1] + 176))(a2, a3, *a4, 14, &v39, &v37 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = (*(a1[1] + 176))(a2, a3, a5, 14, &__s, &v37 + 2);
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v39;
    if (v39)
    {
      v15 = 0;
      do
      {
        if ((*v14 | 0x20) == 0x65 && v14[1] == 95)
        {
          LODWORD(v16) = hlp_NLUStrLength(v14);
          v17 = *(*a1 + 8);
          if (v15)
          {
            v18 = cstdlib_strlen(v15);
            v19 = heap_Realloc(v17, v15, (v16 + v18 + 2));
            if (!v19)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v20, v21, v22, v23, v35);
              goto LABEL_27;
            }

            v16 = v16;
            v15 = v19;
          }

          else
          {
            v24 = cstdlib_strlen(__s);
            v25 = heap_Alloc(v17, (v16 + v24 + 2));
            if (!v25)
            {
              v13 = 2410684426;
              log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v26, v27, v28, v29, v35);
              return v13;
            }

            v15 = v25;
            v16 = v16;
            cstdlib_strcpy(v25, __s);
          }

          v30 = v39[v16];
          v39[v16] = 0;
          hlp_NLUStrJoin(v15, v39);
          v39[v16] = v30;
          v14 = v39;
        }

        v14 = hlp_NLUStrNext(v14);
        v39 = v14;
      }

      while (v14);
      v31 = v15 == 0;
      if (v15)
      {
        v32 = *(a1[1] + 160);
        v33 = cstdlib_strlen(v15);
        v13 = v32(a2, a3, a5, 14, (v33 + 1), v15, &v37);
      }

      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
      v31 = 1;
    }

    v13 = (*(a1[1] + 192))(a2, a3, *a4);
    if ((v13 & 0x80000000) == 0)
    {
      *a4 = a5;
    }

LABEL_26:
    if (!v31)
    {
LABEL_27:
      heap_Free(*(*a1 + 8), v15);
    }
  }

  return v13;
}

uint64_t prmfx_CommonProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  v7 = a5;
  v8 = a4;
  v116 = *MEMORY[0x277D85DE8];
  v113 = 0;
  v114 = 0;
  v112 = 0;
  v105 = "null";
  v9 = *(a1 + 32);
  v10 = *(a1 + 72);
  __s1 = *(*(a1 + 64) + 1304);
  v96 = *(a1 + 84);
  v111 = 0;
  v109 = "null";
  v110 = 0;
  v108 = 0;
  v107 = "null";
  v106 = 0;
  result = (*(v9 + 104))(a4, a5, 1, 0, &v114 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = (*(v9 + 104))(v8, v7, 2, HIWORD(v114), &v114);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v101 = 0;
  v102 = v7;
  v98 = v9;
  v99 = 0;
  v12 = 0;
  v13 = 0xFFFFLL;
  v91 = 0;
  v92 = v10;
  v103 = v8;
  while (1)
  {
    if (!v114)
    {
      goto LABEL_216;
    }

    result = (*(v9 + 168))(v8, v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (SHIDWORD(v112) > 8)
    {
      break;
    }

    if (HIDWORD(v112) != 4)
    {
      if (HIDWORD(v112) == 5)
      {
        result = (*(v9 + 168))(v8, v7, v114, 1, 1, &v108, &v113);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (((*(v9 + 176))(v8, v7, v114, 4, &v109, &v113) & 0x80000000) != 0)
        {
          v109 = "null";
        }

        if (v108 == v111 && v12)
        {
          prmfx_setFeature("domain", *(*(a6 + 1) + 8 * (v12 - 1)), v109);
        }

        if (((*(v9 + 168))(v8, v7, v114, 2, 1, &v108, &v113) & 0x80000000) != 0)
        {
          v108 = v111;
        }
      }

      else if (HIDWORD(v112) == 6)
      {
        result = (*(v9 + 168))(v8, v7, v114, 1, 1, &v106, &v113);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (((*(v9 + 176))(v8, v7, v114, 4, &v107, &v113) & 0x80000000) != 0)
        {
          v107 = "null";
        }

        if (v106 == v111 && v12)
        {
          prmfx_setFeature("tn", *(*(a6 + 1) + 8 * (v12 - 1)), v107);
        }

        if (((*(v9 + 168))(v8, v7, v114, 2, 1, &v106, &v113) & 0x80000000) != 0)
        {
          v106 = v111;
        }
      }

      goto LABEL_204;
    }

LABEL_8:
    memset(__n, 0, sizeof(__n));
    if (v12 >= *a6)
    {
      return 2382372873;
    }

    prmfx_setFeature("phrase_type", *(*(a6 + 1) + 8 * v12), v105);
    v93 = v13;
    if (((*(v9 + 176))(v8, v7, v114, 14, &v110, &v113) & 0x80000000) != 0)
    {
      v14 = "null";
      v110 = "null";
    }

    else
    {
      v14 = v110;
    }

    v15 = *(a2 + 8);
    v16 = cstdlib_strlen(v14);
    v17 = heap_Alloc(v15, (7 * v16 + 15));
    if (!v17)
    {
      return 2382372874;
    }

    v18 = v17;
    v19 = *(a6 + 2);
    v20 = a6[12];
    a6[12] = v20 + 1;
    *(v19 + 8 * v20) = v17;
    if (hlp_NLUStrFind(v110, "POS", &__n[1], __n))
    {
      cstdlib_strncpy(v18, *&__n[1], __n[0]);
      v21 = &v18[__n[0]];
      *v21 = 0;
      v22 = v21 + 1;
    }

    else
    {
      v22 = v18;
      v18 = "null";
    }

    if (v12)
    {
      prmfx_setFeature("pos_next_word", *(*(a6 + 1) + 8 * v12 - 8), v18);
    }

    prmfx_setFeature("pos_current_word", *(*(a6 + 1) + 8 * v12), v18);
    if (*a6 - 1 > v12)
    {
      prmfx_setFeature("pos_previous_word", *(*(a6 + 1) + 8 * v12 + 8), v18);
    }

    v23 = cstdlib_strstr(__s1, v18);
    if (!v23)
    {
      goto LABEL_40;
    }

    v24 = v23;
    do
    {
      while (*(v24 - 1) != 32)
      {
        v24 = cstdlib_strstr(v24 + 1, v18);
        if (!v24)
        {
          goto LABEL_40;
        }
      }

      v25 = v24[cstdlib_strlen(v18)];
      v26 = cstdlib_strstr(v24 + 1, v18);
      if (!v26)
      {
        break;
      }

      v24 = v26;
    }

    while (v25 != 32);
    v27 = "A";
    v28 = v12;
    if (v25 != 32)
    {
LABEL_40:
      v27 = "F";
      v28 = v93;
    }

    v94 = v28;
    prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v12), v27);
    if (hlp_NLUStrFind(v110, "PHR", &__n[1], __n))
    {
      cstdlib_strncpy(v22, *&__n[1], __n[0]);
      v29 = &v22[__n[0]];
      *v29 = 0;
      v30 = v29 + 1;
    }

    else
    {
      v30 = v22;
      v22 = "null";
    }

    if (v12)
    {
      prmfx_setFeature("phr_next_word", *(*(a6 + 1) + 8 * v12 - 8), v22);
    }

    prmfx_setFeature("phr_current_word", *(*(a6 + 1) + 8 * v12), v22);
    if (*a6 - 1 > v12)
    {
      prmfx_setFeature("phr_previous_word", *(*(a6 + 1) + 8 * v12 + 8), v22);
    }

    v31 = *(a6 + 4) + 56 * v12;
    v32 = *(v31 + 32);
    if (v32)
    {
      cstdlib_strncpy(v30, v32, *(v31 + 24));
      v33 = *(*(a6 + 4) + 56 * v12 + 24);
      v30[v33] = 0;
      v34 = &v30[v33 + 1];
    }

    else
    {
      v34 = v30;
      v30 = "null";
    }

    if (v12)
    {
      prmfx_setFeature("bndshape_next_word", *(*(a6 + 1) + 8 * v12 - 8), v30);
    }

    prmfx_setFeature("bndshape", *(*(a6 + 1) + 8 * v12), v30);
    if (*a6 - 1 > v12)
    {
      prmfx_setFeature("bndshape_previous_word", *(*(a6 + 1) + 8 * v12 + 8), v30);
    }

    if (v96)
    {
      if (hlp_NLUStrFind(v110, "S_COMP", &__n[1], __n))
      {
        v35 = v34;
        v36 = "B-";
        goto LABEL_63;
      }

      if (hlp_NLUStrFind(v110, "I_COMP", &__n[1], __n) || hlp_NLUStrFind(v110, "E_COMP", &__n[1], __n))
      {
        v35 = v34;
        v36 = "I-";
LABEL_63:
        cstdlib_strcpy(v35, v36);
        cstdlib_strncpy(v34 + 2, *&__n[1], __n[0] + 1);
        v37 = __n[0] + 2;
LABEL_64:
        v34[v37] = 0;
        v38 = &v34[v37 + 1];
        goto LABEL_65;
      }
    }

    else if (hlp_NLUStrFind(v110, "COMP", &__n[1], __n))
    {
      cstdlib_strncpy(v34, *&__n[1], __n[0] + 1);
      v37 = __n[0];
      goto LABEL_64;
    }

    v38 = v34;
    v34 = "null";
LABEL_65:
    prmfx_setFeature("compound", *(*(a6 + 1) + 8 * v12), v34);
    if (hlp_NLUStrFind(v110, "S_CLASS", &__n[1], __n) || hlp_NLUStrFind(v110, "I_CLASS", &__n[1], __n) || hlp_NLUStrFind(v110, "E_CLASS", &__n[1], __n))
    {
      cstdlib_strncpy(v38, *&__n[1], __n[0] + 1);
      v39 = &v38[__n[0]];
      *v39 = 0;
      v40 = v39 + 1;
    }

    else
    {
      v40 = v38;
      v38 = "null";
    }

    prmfx_setFeature("doc_class", *(*(a6 + 1) + 8 * v12), v38);
    cstdlib_strcpy(v40, "");
    if (hlp_NLUStrFind(v110, "S_PUNC", &__n[1], __n))
    {
      do
      {
        if (cstdlib_strlen(v40))
        {
          cstdlib_strcat(v40, ";");
        }

        cstdlib_strncat(v40, (*&__n[1] - 7), 7uLL);
        cstdlib_strncat(v40, *&__n[1], __n[0]);
      }

      while (hlp_NLUStrFind((*&__n[1] + __n[0]), "S_PUNC", &__n[1], __n));
    }

    for (i = v110; hlp_NLUStrFind(i, "I_PUNC", &__n[1], __n); i = (*&__n[1] + __n[0]))
    {
      if (cstdlib_strlen(v40))
      {
        cstdlib_strcat(v40, ";");
      }

      cstdlib_strncat(v40, (*&__n[1] - 7), 7uLL);
      cstdlib_strncat(v40, *&__n[1], __n[0]);
    }

    for (j = v110; hlp_NLUStrFind(j, "E_PUNC", &__n[1], __n); j = (*&__n[1] + __n[0]))
    {
      if (cstdlib_strlen(v40))
      {
        cstdlib_strcat(v40, ";");
      }

      cstdlib_strncat(v40, (*&__n[1] - 7), 7uLL);
      cstdlib_strncat(v40, *&__n[1], __n[0]);
    }

    if (cstdlib_strlen(v40))
    {
      v43 = cstdlib_strlen(v40);
      v40[v43] = 0;
      v44 = &v40[v43 + 1];
    }

    else
    {
      v44 = v40;
      v40 = "null";
    }

    if (v12)
    {
      prmfx_setFeature("doc_punc_next_word", *(*(a6 + 1) + 8 * v12 - 8), v40);
    }

    prmfx_setFeature("doc_punc", *(*(a6 + 1) + 8 * v12), v40);
    if (*a6 - 1 > v12)
    {
      prmfx_setFeature("doc_punc_previous_word", *(*(a6 + 1) + 8 * v12 + 8), v40);
    }

    if (hlp_NLUStrFind(v110, "S_NE", &__n[1], __n) || hlp_NLUStrFind(v110, "I_NE", &__n[1], __n) || hlp_NLUStrFind(v110, "E_NE", &__n[1], __n))
    {
      cstdlib_strncpy(v44, *&__n[1], __n[0] + 1);
      v45 = &v44[__n[0]];
      *v45 = 0;
      v46 = v45 + 1;
    }

    else
    {
      v46 = v44;
      v44 = "null";
    }

    if (v12)
    {
      prmfx_setFeature("ne_next_word", *(*(a6 + 1) + 8 * v12 - 8), v44);
    }

    prmfx_setFeature("ne_current_word", *(*(a6 + 1) + 8 * v12), v44);
    if (*a6 - 1 > v12)
    {
      prmfx_setFeature("ne_previous_word", *(*(a6 + 1) + 8 * v12 + 8), v44);
    }

    if (((*(v98 + 176))(v103, v102, v114, 9, &v110, &v113) & 0x80000000) != 0)
    {
      v110 = "null";
    }

    else
    {
      cstdlib_strcpy(v46, "");
      cstdlib_strncat(v46, v110, 2uLL);
    }

    prmfx_setFeature("language_tag", *(*(a6 + 1) + 8 * v12), v46);
    v47 = 0;
    if (((*(v98 + 176))(v103, v102, v114, 3, &v110, &v113) & 0x80000000) == 0)
    {
      v48 = v110;
      if (v110)
      {
        v49 = 0;
        do
        {
          ++v49;
          v50 = cstdlib_strstr(v48, ".");
          v48 = v50 + 1;
          if (v50)
          {
            v51 = v50 + 1;
          }

          else
          {
            v51 = 0;
          }

          v110 = v51;
        }

        while (v50);
        v47 = v49 >> 1;
      }
    }

    v52 = &v46[cstdlib_strlen(v46)];
    snprintf(v52 + 1, 4uLL, "%u", v47);
    prmfx_setFeature("word_length", *(*(a6 + 1) + 8 * v12), v52 + 1);
    if (WORD2(v99) == 1)
    {
      prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v12), "0");
    }

    else
    {
      if (WORD2(v99) < 6u)
      {
        v53 = "1";
      }

      else
      {
        v53 = "2";
      }

      prmfx_setFeature("phrase_length", *(*(a6 + 1) + 8 * v12), v53);
    }

    if (WORD2(v99) - 1 == WORD2(v101))
    {
      prmfx_setFeature("position", *(*(a6 + 1) + 8 * v12), "3");
      v54 = v101;
    }

    else
    {
      v54 = v101;
      if (WORD2(v101))
      {
        v55 = *(*(a6 + 1) + 8 * v12);
        if (WORD2(v99) - 2 == WORD2(v101))
        {
          v56 = "2";
        }

        else
        {
          v56 = "1";
        }
      }

      else
      {
        v55 = *(*(a6 + 1) + 8 * v12);
        v56 = "0";
      }

      prmfx_setFeature("position", v55, v56);
    }

    if (v99 - 1 == v54)
    {
      v66 = *(*(a6 + 1) + 8 * v12);
      v67 = "3";
    }

    else if (v54)
    {
      v66 = *(*(a6 + 1) + 8 * v12);
      if (v99 - 2 == v54)
      {
        v67 = "2";
      }

      else
      {
        v67 = "1";
      }
    }

    else
    {
      v66 = *(*(a6 + 1) + 8 * v12);
      v67 = "0";
    }

    prmfx_setFeature("position_major_ip", v66, v67);
    result = (*(v98 + 168))(v103, v102, v114, 1, 1, &v111, &v113);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v111 >= v108)
    {
      v109 = "null";
      v68 = "null";
    }

    else
    {
      v68 = v109;
    }

    prmfx_setFeature("domain", *(*(a6 + 1) + 8 * v12), v68);
    if (v111 >= v106)
    {
      v107 = "null";
      v69 = "null";
    }

    else
    {
      v69 = v107;
    }

    prmfx_setFeature("tn", *(*(a6 + 1) + 8 * v12), v69);
    v70 = (*(a6 + 4) + 56 * v12);
    v71 = v70[1];
    v72 = *v70;
    v73 = (v71 - v72);
    v74 = heap_Alloc(*(a2 + 8), v73 + 5);
    if (!v74)
    {
      return 2382372874;
    }

    v75 = v74;
    v76 = a6[12];
    *(*(a6 + 2) + 8 * v76) = v74;
    v77 = v76 + 1;
    v78 = *(a6 + 5);
    v79 = *(*(a6 + 4) + 56 * v12);
    a6[12] = v77;
    if (v71 == v72)
    {
      v80 = 0;
    }

    else
    {
      v81 = 0;
      v82 = (v78 + v79);
      v83 = v73;
      do
      {
        if (*(a1 + 88) || !cstdlib_strchr(__s, *v82))
        {
          v75[v81++] = *v82;
        }

        ++v82;
        --v83;
      }

      while (v83);
      v80 = v81;
    }

    v75[v80] = 0;
    if (*(a1 + 88))
    {
      result = (*(*(a1 + 56) + 112))(*(a1 + 40), *(a1 + 48), "normal", v75, v73);
      v84 = v92;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      v84 = v92;
    }

    v7 = v102;
    v8 = v103;
    if (!cstdlib_strlen(v75))
    {
      goto LABEL_194;
    }

    v85 = cstdlib_strstr(v84, v75);
    if (!v85)
    {
      goto LABEL_194;
    }

    v86 = v85;
    do
    {
      v87 = v86 != v84 && (v86 <= v84 || *(v86 - 1) != 32) || v86[cstdlib_strlen(v75)] != 32;
      v88 = cstdlib_strstr(v86 + 1, v75);
      if (!v88)
      {
        break;
      }

      v86 = v88;
    }

    while (v87);
    if (v87)
    {
LABEL_194:
      v75 = "null";
    }

    prmfx_setFeature("orth", *(*(a6 + 1) + 8 * v12++), v75);
    LOWORD(v101) = v101 + 1;
    ++WORD2(v101);
    v9 = v98;
    v89 = v94;
LABEL_205:
    result = (*(v9 + 120))(v8, v7, v114, &v114);
    v13 = v89;
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  if ((HIDWORD(v112) - 9) < 6)
  {
    goto LABEL_8;
  }

  if (HIDWORD(v112) != 15)
  {
LABEL_204:
    v89 = v13;
    goto LABEL_205;
  }

  if ((v13 & 0x8000) == 0)
  {
    prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v13), "L");
  }

  if (((*(v9 + 176))(v8, v7, v114, 4, &v105, &v113) & 0x80000000) != 0)
  {
    v105 = "null";
  }

  result = (*(v9 + 120))(v8, v7, v114, &v113 + 2);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!HIWORD(v113))
  {
    LOWORD(v13) = -1;
LABEL_216:
    if (*a6)
    {
      prmfx_setFeature("prm_previous_word", **(a6 + 1), "null");
      prmfx_setFeature("pos_previous_word", **(a6 + 1), "null");
      v90 = 8 * v12 - 8;
      prmfx_setFeature("pos_next_word", *(*(a6 + 1) + v90), "null");
      prmfx_setFeature("phr_previous_word", **(a6 + 1), "null");
      prmfx_setFeature("phr_next_word", *(*(a6 + 1) + v90), "null");
      prmfx_setFeature("ne_previous_word", **(a6 + 1), "null");
      prmfx_setFeature("ne_next_word", *(*(a6 + 1) + v90), "null");
      prmfx_setFeature("doc_punc_previous_word", **(a6 + 1), "null");
      prmfx_setFeature("doc_punc_next_word", *(*(a6 + 1) + v90), "null");
      prmfx_setFeature("bndshape_previous_word", **(a6 + 1), "null");
      prmfx_setFeature("bndshape_next_word", *(*(a6 + 1) + v90), "null");
    }

    if ((v13 & 0x8000) == 0)
    {
      prmfx_setFeature("accentable", *(*(a6 + 1) + 8 * v13), "L");
    }

    return 0;
  }

  result = (*(v9 + 168))(v8, v7);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  WORD2(v99) = 0;
  v57 = HIWORD(v113);
  if (!HIWORD(v113) || (v58 = v112, v112 == 15))
  {
LABEL_141:
    if (v12 && v91 != *(*(a6 + 4) + 56 * (v12 - 1) + 4))
    {
      WORD2(v101) = 0;
    }

    else
    {
      v61 = *a6;
      if (v61 - 1 <= v12)
      {
        LOWORD(v99) = 1;
        v62 = v12;
      }

      else
      {
        LOWORD(v99) = 1;
        v62 = v12;
        do
        {
          v63 = *(a6 + 4) + 56 * v62;
          if (*(v63 + 48))
          {
            break;
          }

          v64 = *(v63 + 32);
          if (v64)
          {
            v65 = *(v63 + 24);
            if (v65)
            {
              if (cstdlib_strncmp(v64, "%", v65))
              {
                break;
              }

              v61 = *a6;
            }
          }

          LOWORD(v99) = v99 + 1;
          ++v62;
        }

        while (v61 - 1 > v62);
      }

      v101 = 0;
      v91 = *(*(a6 + 4) + 56 * v62 + 4);
    }

    v89 = 0xFFFFLL;
    goto LABEL_205;
  }

  HIDWORD(v99) = 0;
  while (1)
  {
    v59 = (v58 - 9) < 6 || v58 == 4;
    v60 = HIDWORD(v99);
    if (v59)
    {
      v60 = HIDWORD(v99) + 1;
    }

    HIDWORD(v99) = v60;
    result = (*(v9 + 120))(v8, v7, v57, &v113 + 2);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!HIWORD(v113))
    {
      goto LABEL_141;
    }

    result = (*(v9 + 168))(v8, v7);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v57 = HIWORD(v113);
    if (HIWORD(v113))
    {
      v58 = v112;
      if (v112 != 15)
      {
        continue;
      }
    }

    goto LABEL_141;
  }
}

uint64_t prmfx_setFeature(char *__s1, uint64_t a2, const char *a3)
{
  v6 = 0;
  while (1)
  {
    result = cstdlib_strcmp(__s1, g_FeatureNames[v6]);
    if (!result)
    {
      break;
    }

    if (++v6 == 29)
    {
      return result;
    }
  }

  result = cstdlib_strcmp(a3, "");
  v8 = "null";
  if (result)
  {
    v8 = a3;
  }

  *(a2 + v6 * 8) = v8;
  return result;
}

unsigned __int8 *getNluStringValue(const char *a1, const char *a2, void *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = a1;
    v7 = cstdlib_strlen(a1);
    v8 = cstdlib_strlen(a2);
    if (v8 >= v7)
    {
      return 0;
    }

    else
    {
      v9 = v8;
      v10 = &v6[v7];
      v11 = &v6[v8];
      while (1)
      {
        v12 = cstdlib_strstr(v6, ";");
        v13 = v12 ? v12 : v10;
        if (!cstdlib_strncmp(a2, v6, v9))
        {
          v14 = *v11;
          v3 = (v11 + 1);
          if (v14 == 58 && v3 <= v13)
          {
            break;
          }
        }

        v6 = v13 + 1;
        v11 = &v13[v9 + 1];
        if (v11 >= v10)
        {
          return 0;
        }
      }

      *a3 = v13 - v3;
    }
  }

  return v3;
}

uint64_t fe_prmfx_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2382372865;
  }

  result = 0;
  *a2 = &IPrmFx;
  return result;
}

uint64_t prmfx_AllocateResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v9 = (*(a3 + 104))(a4, a5, 1, 0, &v13 + 2);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v9 = (*(a3 + 104))(a4, a5, 2, HIWORD(v13), &v13);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  while (v13)
  {
    v9 = (*(a3 + 168))(a4, a5);
    if ((v9 & 0x80000000) == 0)
    {
      v9 = (*(a3 + 120))(a4, a5, v13, &v13);
      if ((v9 & 0x80000000) == 0)
      {
        continue;
      }
    }

    return v9;
  }

  v10 = 2382372874;
  v12 = heap_Alloc(*(a1 + 8), 56);
  if (v12)
  {
    *v12 = 0;
    return 0;
  }

  return v10;
}

uint64_t fillWordInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v16);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, v16, 0, &v13 + 2);
    if ((result & 0x80000000) == 0 && HIWORD(v13) == 1)
    {
      result = (*(a1 + 176))(a2, a3, v16, 0, a4 + 40, &v15);
      if ((result & 0x80000000) == 0 && v15 >= 2u)
      {
        *(a4 + 48) = cstdlib_strlen(*(a4 + 40));
        result = (*(a1 + 104))(a2, a3, 2, v16, &v15 + 2);
        if ((result & 0x80000000) == 0)
        {
          v9 = HIWORD(v15);
          if (HIWORD(v15))
          {
            v10 = 0;
            while (1)
            {
              result = (*(a1 + 168))(a2, a3, v9, 0, 1, &v14, &v15);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if ((v14 - 9) < 6)
              {
                goto LABEL_11;
              }

              if (v14 == 15)
              {
                result = (*(a1 + 168))(a2, a3, HIWORD(v15), 7, 1, &v13, &v15);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                if (v10 && v13 <= 1u)
                {
                  *(*(a4 + 32) + 56 * (v10 - 1) + 48) = 1;
                }

                goto LABEL_15;
              }

              if (v14 == 4)
              {
LABEL_11:
                v11 = *(a4 + 32) + 56 * v10;
                v12 = HIWORD(v15);
                v17 = 0;
                *(v11 + 4) = HIWORD(v15);
                *(v11 + 48) = 0;
                result = (*(a1 + 168))(a2, a3, v12, 1, 1, v11, &v17);
                if ((result & 0x80000000) != 0 || (result = (*(a1 + 168))(a2, a3, v12, 2, 1, v11 + 2, &v17), (result & 0x80000000) != 0) || (*v20 = 0, v19 = 0, result = (*(a1 + 176))(a2, a3, v12, 14, v20, &v19), (result & 0x80000000) != 0))
                {
                  *(v11 + 44) = 0;
                  return result;
                }

                ++v10;
                v18 = 0;
                hlp_NLUStrFind(*v20, "PRM", (v11 + 16), &v18);
                *(v11 + 8) = v18;
                hlp_NLUStrFind(*v20, "BNDSHAPE", (v11 + 32), &v18);
                *(v11 + 24) = v18;
                *(v11 + 44) = 1;
              }

LABEL_15:
              result = (*(a1 + 120))(a2, a3, HIWORD(v15), &v15 + 2);
              if ((result & 0x80000000) == 0)
              {
                v9 = HIWORD(v15);
                if (HIWORD(v15))
                {
                  continue;
                }
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t prmfx_FreeResults(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (*a3)
  {
    v5 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 1) + 8 * v5++));
    }

    while (v5 < *a3);
  }

  heap_Free(*(a1 + 8), *(a3 + 1));
  if (a3[12])
  {
    v6 = 0;
    do
    {
      heap_Free(*(a1 + 8), *(*(a3 + 2) + 8 * v6++));
    }

    while (v6 < a3[12]);
  }

  heap_Free(*(a1 + 8), *(a3 + 2));
  heap_Free(*(a1 + 8), *(a3 + 4));
  heap_Free(*(a1 + 8), a3);
  return 0;
}

uint64_t prmfx_getFeature(char *__s1, uint64_t a2)
{
  v4 = 0;
  while (cstdlib_strcmp(__s1, g_FeatureNames[v4]))
  {
    if (++v4 == 29)
    {
      return 0;
    }
  }

  return *(a2 + v4 * 8);
}

uint64_t prmfx_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2382372871;
  if (a3)
  {
    v12 = 0;
    inited = InitRsrcFunction(a1, a2, &v12);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v8 = heap_Calloc(*(v12 + 8), 1, 32);
    if (!v8)
    {
      return 2382372874;
    }

    v9 = v8;
    v10 = v12;
    *v8 = v12;
    v8[1] = a1;
    v8[2] = a2;
    inited = critsec_ObjOpen(*(v10 + 16), *(v10 + 8), v8 + 3);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v3 = 0;
      *a3 = v9;
      *(a3 + 8) = 449;
    }
  }

  return v3;
}

uint64_t prmfx_ClassClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 32);
  if ((result & 0x80000000) == 0)
  {
    critsec_ObjClose(a1[3]);
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = 2382372871;
  v19 = 0;
  v18 = 0;
  if (!a5)
  {
    return v5;
  }

  v20 = 0;
  v21 = 0;
  inited = InitRsrcFunction(a3, a4, &v21);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(v21 + 8), 1, 96);
  if (!v12)
  {
    return 2382372874;
  }

  v13 = v12;
  *v12 = v21;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = 0;
  v14 = v12 + 3;
  v12[4] = 0;
  inited = safeh_HandleCheck(a1, a2, 449, 32);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *v14 = a1;
  inited = objc_GetObject(*(v21 + 48), "LINGDB", &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v13 + 32) = *(v20 + 8);
  inited = objc_GetObject(*(v21 + 48), "FE_DCTLKP", &v19);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v15 = v19;
  *(v13 + 56) = *(v19 + 8);
  *(v13 + 40) = *(v15 + 16);
  if ((paramc_ParamGetUInt(*(v21 + 40), "prmigactive", &v18) & 0x80000000) != 0 || v18 != 1)
  {
    *(v13 + 64) = 0;
    inited = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    if ((inited & 0x80000000) == 0)
    {
LABEL_20:
      v5 = 0;
      *a5 = v13;
      *(a5 + 8) = 449;
      return v5;
    }

    return inited;
  }

  inited = hlp_CreateVoiceBrokerString_1(*v13, v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  critsec_Enter(*(*(v13 + 24) + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(*(v13 + 8), *(v13 + 16), *(*(v13 + 24) + 8), *(*(v13 + 24) + 16), (v13 + 64), 2, v22, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    *(v13 + 64) = 0;
    paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 0);
    v5 = 0;
  }

  else
  {
    v16 = paramc_ParamSetUInt(*(*v13 + 40), "prmigexists", 1u);
    if ((v16 & 0x80000000) == 0)
    {
      v16 = processIgParams(v13);
    }

    v5 = v16;
  }

  critsec_Leave(*(*v14 + 24));
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t prmfx_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v4 = *a1;
    v5 = **(a1 + 24);
    if (*(a1 + 32))
    {
      objc_ReleaseObject(*(v4 + 48), "LINGDB");
    }

    if (*(a1 + 56))
    {
      objc_ReleaseObject(*(v4 + 48), "FE_DCTLKP");
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      igtree_Deinit_ReadOnly_DereferenceCnt(v4, v5, v6);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t prmfx_ObjReopen(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  VoiceBrokerString_1 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
    return VoiceBrokerString_1;
  }

  v4 = *a1;
  v5 = *(a1 + 64);
  if (v5)
  {
    igtree_Deinit_ReadOnly_DereferenceCnt(*a1, **(a1 + 24), v5);
  }

  if ((paramc_ParamGetUInt(*(v4 + 40), "prmigactive", &v9) & 0x80000000) != 0 || v9 != 1)
  {
    *(a1 + 64) = 0;
    VoiceBrokerString_1 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    if ((VoiceBrokerString_1 & 0x80000000) == 0)
    {
      return 0;
    }

    return VoiceBrokerString_1;
  }

  VoiceBrokerString_1 = hlp_CreateVoiceBrokerString_1(*a1, v10);
  if ((VoiceBrokerString_1 & 0x80000000) != 0)
  {
    return VoiceBrokerString_1;
  }

  critsec_Enter(*(*(a1 + 24) + 24));
  if ((igtree_Init_ReadOnly_ReferenceCnt(*(a1 + 8), *(a1 + 16), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), (a1 + 64), 2, v10, "IGTR", 5, 0) & 0x80000000) != 0)
  {
    *(a1 + 64) = 0;
    paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 0);
    v7 = 0;
  }

  else
  {
    v6 = paramc_ParamSetUInt(*(*a1 + 40), "prmigexists", 1u);
    if ((v6 & 0x80000000) == 0)
    {
      v6 = processIgParams(a1);
    }

    v7 = v6;
  }

  critsec_Leave(*(*(a1 + 24) + 24));
  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  return v7;
}

uint64_t prmfx_ProcessStart(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 449, 96);
  if ((result & 0x80000000) == 0)
  {
    v6 = 0;
    v4 = *a1;
    *(a1 + 84) = 1;
    Int = paramc_ParamGetInt(*(v4 + 40), "statcompwidescope", &v6);
    result = 0;
    if ((Int & 0x80000000) == 0 && !v6)
    {
      result = 0;
      *(a1 + 84) = 0;
    }
  }

  return result;
}

uint64_t prmfx_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v39 = 0;
  __s1 = 0;
  v9 = safeh_HandleCheck(a1, a2, 449, 96);
  if ((v9 & 0x80000000) == 0)
  {
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    *a5 = 1;
    v10 = *a1;
    if ((paramc_ParamGetStr(*(*a1 + 40), "basicclcprosody", &__s1) & 0x80000000) == 0 && __s1 && !cstdlib_strcmp(__s1, "yes"))
    {
      log_OutText(*(v10 + 32), "PRMFX", 5, 0, "<%s> disables voice-dependent igtree", v11, v12, v13, "basicclcprosody");
      return v9;
    }

    v9 = (*(*(a1 + 32) + 104))(a3, a4, 1, 0, &v44);
    if ((v9 & 0x80000000) == 0 && ((*(*(a1 + 32) + 184))(a3, a4, v44, 0, &v42 + 2) & 0x80000000) == 0 && HIWORD(v42) == 1)
    {
      v9 = (*(*(a1 + 32) + 176))(a3, a4, v44, 0, &v43, &v42);
      if ((v9 & 0x80000000) == 0 && v42 >= 2u)
      {
        Results = (*(*(a1 + 32) + 272))(a3, a4, 9, 1, 0, 0);
        if ((Results & 0x80000000) != 0)
        {
          return Results;
        }

        v9 = 0;
        if ((paramc_ParamGetUInt(*(v10 + 40), "prmigactive", &v39) & 0x80000000) == 0 && v39 == 1)
        {
          if (!*(a1 + 64))
          {
            return 0;
          }

          v45 = 0;
          Results = prmfx_AllocateResults(v10, v15, *(a1 + 32), a3, a4);
          if ((Results & 0x80000000) != 0)
          {
            return Results;
          }

          critsec_Enter(*(*(a1 + 24) + 24));
          v16 = v45;
          v9 = prmfx_CommonProcess(a1, v10, v17, a3, a4, v45);
          critsec_Leave(*(*(a1 + 24) + 24));
          if ((v9 & 0x80000000) == 0)
          {
            cstdlib_strcpy(__dst, "null");
            v41 = __dst;
            if (*v16)
            {
              v19 = 0;
              while (1)
              {
                v35 = *(*(v16 + 4) + 56 * v19 + 4);
                prmfx_setFeature("prm_previous_word", *(*(v16 + 1) + 8 * v19), v41);
                v20 = *(a1 + 64);
                if (*(v20 + 1296) >= 2u)
                {
                  v21 = 0;
                  while (2)
                  {
                    v22 = 0;
                    v23 = *(*(v20 + 1312) + 8 * v21);
                    v24 = *(*(v16 + 1) + 8 * v19);
                    while (cstdlib_strcmp(v23, g_FeatureNames[v22]))
                    {
                      if (++v22 == 29)
                      {
                        return 2382372889;
                      }
                    }

                    v25 = *(v24 + v22 * 8);
                    *(v46 + v21) = v25;
                    if (!v25)
                    {
                      return 2382372889;
                    }

                    ++v21;
                    v20 = *(a1 + 64);
                    if (*(v20 + 1296) - 1 > v21)
                    {
                      continue;
                    }

                    break;
                  }
                }

                Results = igtree_Process(v20, v46, &v43);
                if ((Results & 0x80000000) != 0)
                {
                  return Results;
                }

                traceFeatureVector_0(v10, *(a1 + 64), v46, v16, v19);
                *(*(v16 + 4) + 56 * v19 + 40) = *v43;
                if (((*(*(a1 + 32) + 176))(a3, a4, v35, 13, &v41, &v42) & 0x80000000) != 0)
                {
                  cstdlib_strcpy(__dst, "null");
                  v41 = __dst;
                }

                v29 = *(v16 + 4) + 56 * v19;
                v30 = *(v29 + 16);
                if (v30)
                {
                  *v41 = *v30;
                  v31 = *(v16 + 4);
                  v32 = v31 + 56 * v19;
                  if (*(v32 + 8) >= 2uLL)
                  {
                    log_OutText(*(v10 + 32), "PRMFX", 1, 0, "PRMFX: reference PRM %.*s truncated", v26, v27, v28, *(v32 + 8));
                    v31 = *(v16 + 4);
                  }

                  *(v31 + 56 * v19 + 40) = *v41;
                }

                else
                {
                  *v41 = *(v29 + 40);
                }

                if (*(a1 + 92))
                {
                  v36 = 0;
                  v37 = 0;
                  if (((*(*(a1 + 32) + 184))(a3, a4, v35, 8, &v37 + 2) & 0x80000000) == 0 && HIWORD(v37) == 1)
                  {
                    Results = (*(*(a1 + 32) + 168))(a3, a4, v35, 8, 1, &v37, &v42);
                    if ((Results & 0x80000000) != 0)
                    {
                      return Results;
                    }

                    if (v37 && *v41 == *(a1 + 92))
                    {
                      Results = (*(*(a1 + 32) + 160))(a3, a4, v35, 8, 1, a1 + 94, &v36);
                      if ((Results & 0x80000000) != 0)
                      {
                        return Results;
                      }

                      Results = (*(*(a1 + 32) + 120))(a3, a4, v35, &v36 + 2);
                      if ((Results & 0x80000000) != 0)
                      {
                        return Results;
                      }

                      while (HIWORD(v36))
                      {
                        Results = (*(*(a1 + 32) + 168))(a3, a4);
                        if ((Results & 0x80000000) == 0)
                        {
                          Results = (*(*(a1 + 32) + 120))(a3, a4, HIWORD(v36), &v36 + 2);
                          if ((Results & 0x80000000) == 0)
                          {
                            continue;
                          }
                        }

                        return Results;
                      }
                    }
                  }
                }

                if (++v19 >= *v16)
                {
                  break;
                }
              }
            }

            v33 = *(a1 + 80);
            if (v33 == 50)
            {
              Results = consistencyCheck2(*(a1 + 32), a3, a4, v16);
              if ((Results & 0x80000000) == 0)
              {
LABEL_50:
                prmfx_FreeResults(v10, v18, v16);
                return 0;
              }
            }

            else
            {
              if (v33 != 51)
              {
                goto LABEL_50;
              }

              Results = consistencyCheck3(*(a1 + 32), a3, a4, v16);
              if ((Results & 0x80000000) == 0)
              {
                goto LABEL_50;
              }
            }

            return Results;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t hlp_CreateVoiceBrokerString_1(uint64_t a1, _BYTE *a2)
{
  v5 = 0;
  v6 = 0;
  result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v6);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &v5);
    if ((result & 0x80000000) == 0)
    {
      return brokeraux_ComposeBrokerString(a1, "igtree", 1, 1, v6, v5, 0, a2, 0x100uLL);
    }
  }

  return result;
}

uint64_t processIgParams(uint64_t a1)
{
  v1 = 2382372871;
  if (a1)
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      *(a1 + 72) = "";
      *(a1 + 80) = 48;
      *(a1 + 88) = 0x50000000000000;
      if (*(v3 + 1336))
      {
        for (i = 0; *(v3 + 1336) > i; ++i)
        {
          v5 = *(v3 + 1328) + 16 * i;
          if (cstdlib_strcmp("accentable_pos", *v5))
          {
            if (cstdlib_strcmp("orth_top200", *v5))
            {
              if (cstdlib_strcmp("canonical_conversion", *v5) || cstdlib_strcmp("yes", *(v5 + 8)))
              {
                if (cstdlib_strcmp("consistency_check", *v5))
                {
                  if (cstdlib_strcmp("pause_prm_value", *v5))
                  {
                    if (!cstdlib_strcmp("pause_prm_length", *v5))
                    {
                      *(a1 + 94) = cstdlib_atoi(*(v5 + 8));
                    }
                  }

                  else
                  {
                    cstdlib_strncpy((a1 + 92), *(v5 + 8), 1uLL);
                  }
                }

                else
                {
                  v10 = cstdlib_strstr(*(v5 + 8), "prm");
                  if (v10)
                  {
                    *(a1 + 80) = v10[3];
                  }
                }
              }

              else
              {
                *(a1 + 88) = 1;
              }
            }

            else
            {
              *(a1 + 72) = *(v5 + 8);
            }
          }

          else
          {
            v6 = *(*a1 + 8);
            v7 = *(v3 + 1304);
            v8 = cstdlib_strlen(*(v5 + 8));
            v9 = heap_Realloc(v6, v7, (v8 + 1));
            *(v3 + 1304) = v9;
            if (!v9)
            {
              return 2382372874;
            }

            cstdlib_strcpy(v9, *(v5 + 8));
          }
        }
      }

      return 0;
    }
  }

  return v1;
}

void *traceFeatureVector_0(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = 1;
  v9 = (*(a2 + 1296) - 1);
  if (*(a2 + 1296) != 1)
  {
    v10 = (*(a2 + 1296) - 1);
    v11 = a3;
    do
    {
      v12 = *v11++;
      v8 += cstdlib_strlen(v12) + 1;
      --v10;
    }

    while (v10);
  }

  v13 = heap_Alloc(*(a1 + 8), v8);
  if (!v13)
  {
    return log_OutText(*(a1 + 32), "PRMFX", 0, 0, "in traceFeatureVector(): allocating %d bytes failed", v14, v15, v16, v8);
  }

  v17 = v13;
  *v13 = 0;
  if (v9)
  {
    v18 = v9;
    do
    {
      cstdlib_strcat(v17, " ");
      v19 = *v6++;
      cstdlib_strcat(v17, v19);
      --v18;
    }

    while (v18);
  }

  log_OutText(*(a1 + 32), "PRMFX", 5, 0, "traceFeatureVector igtree [%02d] %-16.*s | %-54s | %.*s %s", v14, v15, v16, a5);
  v21 = *(a1 + 8);

  return heap_Free(v21, v17);
}

uint64_t consistencyCheck3(uint64_t a1, uint64_t a2, uint64_t a3, signed __int16 *a4)
{
  if (!*a4)
  {
    return 0;
  }

  v7 = a1;
  v8 = 0;
  v9 = 0;
  v29 = 0;
  v10 = -1;
  do
  {
    v11 = *(a4 + 4);
    v12 = *(v11 + 56 * v9 + 40);
    switch(v12)
    {
      case '1':
        if ((v10 & 0x8000) != 0)
        {
          break;
        }

        v17 = *(v11 + 56 * v10 + 40) >= 0x32u;
        goto LABEL_14;
      case '2':
        if ((v10 & 0x8000) != 0)
        {
          break;
        }

        v17 = *(v11 + 56 * v10 + 40) >= 0x33u;
LABEL_14:
        if (!v17)
        {
          v10 = v9;
        }

        break;
      case '3':
        if ((v10 & 0x8000) != 0)
        {
          v10 = v9;
        }

        else
        {
          v13 = v11 + 56 * v10;
          v10 = v9;
          if (*(v13 + 40) == 51)
          {
            v14 = *(v7 + 160);
            v15 = *(v13 + 4);
            v16 = cstdlib_strlen("2");
            v8 = v14(a2, a3, v15, 13, (v16 + 1), "2", &v29);
            if ((v8 & 0x80000000) != 0)
            {
              return v8;
            }

            v11 = *(a4 + 4);
            v10 = v9;
            v7 = a1;
          }
        }

        break;
    }

    if ((v10 & 0x8000u) != 0)
    {
      v10 = v9;
    }

    v18 = v11 + 56 * v9;
    v19 = *(v18 + 32);
    if (v19)
    {
      v20 = *(v18 + 24);
      if (v20)
      {
        if (cstdlib_strncmp(v19, "%", v20))
        {
          v21 = *(v7 + 160);
          v22 = *(*(a4 + 4) + 56 * v10 + 4);
          v23 = cstdlib_strlen("3");
          v8 = v21(a2, a3, v22, 13, (v23 + 1), "3", &v29);
          if ((v8 & 0x80000000) != 0)
          {
            return v8;
          }

          v10 = -1;
        }
      }
    }

    ++v9;
  }

  while (*a4 > v9);
  if ((v10 & 0x8000) == 0)
  {
    v24 = *(v7 + 160);
    v25 = *(*(a4 + 4) + 56 * v10 + 4);
    v26 = cstdlib_strlen("3");
    return v24(a2, a3, v25, 13, (v26 + 1), "3", &v29);
  }

  return v8;
}

uint64_t consistencyCheck2(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return 0;
  }

  v9 = 0;
  result = 0;
  v20 = 0;
  v11 = -1;
  do
  {
    v12 = *(a4 + 4);
    v13 = *(v12 + 56 * v9 + 40);
    if (v13 == 49)
    {
      if ((v11 & 0x8000) == 0 && *(v12 + 56 * v11 + 40) < 0x32u)
      {
        v11 = v9;
      }
    }

    else if (v13 == 50)
    {
      v11 = v9;
    }

    if (v11 < 0)
    {
      v11 = v9;
    }

    if (*(v12 + 56 * v9 + 48))
    {
      v14 = *(a1 + 160);
      v15 = *(v12 + 56 * v11 + 4);
      v16 = cstdlib_strlen("2");
      result = v14(a2, a3, v15, 13, (v16 + 1), "2", &v20);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v4 = *a4;
      v11 = -1;
    }

    ++v9;
  }

  while (v4 > v9);
  if ((v11 & 0x8000) == 0)
  {
    v17 = *(a1 + 160);
    v18 = *(*(a4 + 4) + 56 * v11 + 4);
    v19 = cstdlib_strlen("2");
    return v17(a2, a3, v18, 13, (v19 + 1), "2", &v20);
  }

  return result;
}

uint64_t fe_msp_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v25 = 0;
  v5 = 2705334279;
  v23 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v25);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    Object = objc_GetObject(*(v25 + 48), "LINGDB", &v24);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    Object = objc_GetObject(*(v25 + 48), "FE_DCTLKP", &v23);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_11;
    }

    v11 = heap_Alloc(*(v25 + 8), 216);
    v16 = v25;
    if (v11)
    {
      v17 = v11;
      *v11 = v25;
      *(v11 + 8) = a3;
      *(v11 + 16) = a4;
      *(v11 + 200) = *(v24 + 8);
      v18 = v23;
      *(v11 + 40) = *(v23 + 8);
      *(v11 + 24) = *(v18 + 16);
      *(v11 + 120) = 0;
      *(v11 + 208) = 0;
      log_OutText(*(v16 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjOpen", v13, v14, v15, v22);
      Object = msp_check_dctlkp_version(v17);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

      *(v17 + 48) = heap_Alloc;
      *(v17 + 56) = heap_Calloc;
      *(v17 + 64) = heap_Realloc;
      *(v17 + 72) = heap_Free;
      v19 = OOCAllocator_Con(v17 + 80, (v17 + 48), *(*v17 + 8));
      v20 = LH_ERROR_to_VERROR(v19);
      if ((v20 & 0x80000000) == 0)
      {
        *(v17 + 192) = 0;
        cstdlib_memset((v17 + 160), 0, 0x20uLL);
        cstdlib_memset((v17 + 128), 0, 0x20uLL);
        Object = msp_prepare_voice_specific_msp_luavm(v17);
        if ((Object & 0x80000000) == 0)
        {
          v5 = msp_prepare_common_msp_luavm(v17);
          if ((v5 & 0x80000000) == 0)
          {
            *a5 = v17;
            *(a5 + 8) = 1065;
            return v5;
          }

LABEL_16:
          fe_msp_ObjClose(*a5, *(a5 + 8));
          return v5;
        }

LABEL_11:
        v5 = Object;
        goto LABEL_16;
      }

      v5 = v20;
      v16 = v25;
    }

    else
    {
      v5 = 2705334282;
    }

    log_OutPublic(*(v16 + 32), "FE_MSP", 78000, 0, v12, v13, v14, v15, v22);
    goto LABEL_16;
  }

  return v5;
}

uint64_t fe_msp_ObjClose(uint64_t *a1, int a2)
{
  v3 = 2705334280;
  v4 = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((v4 & 0x80000000) == 0)
  {
    if (a1)
    {
      v8 = v4;
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjClose", v5, v6, v7, v10);
      msp_deallocate_supported_styles(a1, (a1 + 20));
      msp_deallocate_supported_styles(a1, (a1 + 16));
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 20);
      luavmldoutil_destroy_lua_vm((a1 + 10), a1 + 16);
      OOCAllocator_Des();
      objc_ReleaseObject(*(*a1 + 48), "LINGDB");
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
      heap_Free(*(*a1 + 8), a1);
      return v8;
    }

    else
    {
      return 2705334282;
    }
  }

  return v3;
}

uint64_t fe_msp_ObjReopen(uint64_t a1, int a2)
{
  v3 = 2705334280;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2705334282;
  }

  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_ObjReopen", v4, v5, v6, v9);
  v7 = msp_check_dctlkp_version(a1);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  *(a1 + 192) = 0;
  v7 = msp_prepare_voice_specific_msp_luavm(a1);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  return msp_prepare_common_msp_luavm(a1);
}

uint64_t fe_msp_ProcessStart(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 1065, 216);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2705334280;
  }
}

uint64_t fe_msp_Process(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v31 = 0;
  v30 = 0;
  if ((safeh_HandleCheck(a1, a2, 1065, 216) & 0x80000000) != 0)
  {
    return 2705334280;
  }

  *a5 = 1;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering fe_msp_Process", v9, v10, v11, v29);
  has_set_style_marker = LingDBIsValid(a1[25], a3, a4, &v31);
  if ((has_set_style_marker & 0x80000000) == 0)
  {
    if (v31 == 1)
    {
      has_set_style_marker = LingDBHasSentence(a1[25], a3, a4, &v31 + 1);
      if ((has_set_style_marker & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (HIDWORD(v31) == 1)
      {
        v16 = msp_touch_lingdb_instance(a1[25], a3, a4);
        if ((v16 & 0x80000000) != 0)
        {
LABEL_19:
          has_set_style_marker = v16;
          goto LABEL_24;
        }

        has_set_style_marker = msp_lingDB_has_set_style_marker(a1[25], a3, a4, &v30);
        if ((has_set_style_marker & 0x80000000) != 0)
        {
          goto LABEL_24;
        }

        if (v30 == 1 || a1[26])
        {
          has_set_style_marker = initLDO((a1 + 10), a1 + 15);
          if ((has_set_style_marker & 0x80000000) != 0)
          {
            goto LABEL_24;
          }

          v17 = *a1;
          if (a1[15])
          {
            v16 = importFromLingDBWordRecord(v17, a1[25], a3, a4, a1 + 15, 1);
            if ((v16 & 0x80000000) == 0)
            {
              v16 = msp_prepare_ldo_for_lua_style_processing(a1, v18, v19, v20, v21, v22, v23, v24);
              if ((v16 & 0x80000000) == 0)
              {
                if (!a1[20] || (v16 = msp_execute_voice_specific_msp_entry_point(a1, "FE_MSP"), (v16 & 0x80000000) == 0))
                {
                  if (!a1[16] || (v16 = msp_execute_common_msp_entry_point(a1, "FE_MSP"), (v16 & 0x80000000) == 0))
                  {
                    v16 = exportToLingDBWordRecord(*a1, a1[25], a3, a4, (a1 + 10), a1[15], 1);
                  }
                }
              }
            }

            goto LABEL_19;
          }

          v25 = *(v17 + 32);
          v26 = "Init LDO is NULL, returning";
        }

        else
        {
          v25 = *(*a1 + 32);
          v26 = "Sentence does not contain <esc>style, returning";
        }
      }

      else
      {
        v25 = *(*a1 + 32);
        v26 = "LingDB has no sentence, returning";
      }
    }

    else
    {
      v25 = *(*a1 + 32);
      v26 = "Empty or Invalid LingDB, returning";
    }

    log_OutText(v25, "FE_MSP", 5, 0, v26, v12, v13, v14, 0);
  }

LABEL_24:
  v27 = a1[15];
  if (v27)
  {
    deinitLDO((a1 + 10), v27);
    a1[15] = 0;
  }

  return has_set_style_marker;
}

uint64_t fe_msp_ProcessEnd(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1065, 216);
  if ((result & 0x80000000) != 0)
  {
    return 2705334280;
  }

  v4 = *(a1 + 208);
  if (v4)
  {
    v5 = OOC_PlacementDeleteObject(a1 + 80, v4);
    result = LH_ERROR_to_VERROR(v5);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 208) = 0;
    }
  }

  return result;
}

uint64_t fe_msp_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2705334273;
  }

  result = 0;
  *a2 = &IFeMSP;
  return result;
}

uint64_t msp_check_dctlkp_version(void *a1)
{
  v3 = 0;
  v2 = 0;
  return (*(a1[5] + 88))(a1[3], a1[4], &v3, &v2);
}

uint64_t msp_deallocate_supported_styles(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result + 80, v3);
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t loc_process_ldo_with_lua(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a1[15];
  if (a4)
  {
    v10 = LuaVMLDO_RunFunctionWithLDOAndTableArguments(v8, a3, v9, a4);
  }

  else
  {
    v10 = LuaVMLDO_RunFunction(v8, a3, v9);
  }

  v15 = LH_ERROR_to_VERROR(v10);
  if ((v15 & 0x80000000) != 0)
  {
    log_OutPublic(*(*a1 + 32), a5, 78002, 0, v11, v12, v13, v14, v17);
  }

  return v15;
}

uint64_t msp_lingDB_has_set_style_marker(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  v12 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v13 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 176))(a2, a3, HIWORD(v13), 1, &v12, &v13);
    if ((result & 0x80000000) == 0)
    {
      v9 = v13;
      if (v13)
      {
        v10 = v12;
        while (1)
        {
          v11 = *v10;
          v10 += 8;
          if (v11 == 60)
          {
            break;
          }

          if (!--v9)
          {
            return result;
          }
        }

        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t msp_prepare_common_msp_luavm(uint64_t a1)
{
  *(a1 + 144) = "runMsp";
  *(a1 + 152) = "getSupportedStylesMsp";
  v5 = loc_prepare_luavm(a1, (a1 + 128), "msp");
  if ((v5 & 0x80000000) == 0)
  {
    if (*(a1 + 128))
    {
      *(a1 + 192) = 1;
      v6 = "Common MSP data available";
    }

    else
    {
      v6 = "No common MSP data available";
    }

    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v6, v2, v3, v4, v8);
  }

  return v5;
}

uint64_t loc_prepare_luavm(uint64_t a1, uint64_t *a2, char *a3)
{
  v7 = a2 + 1;
  v6 = a2[1];
  if (v6)
  {
    OOC_PlacementDeleteObject(a1 + 80, v6);
    *v7 = 0;
  }

  v8 = PNEW_LDOObject_Con(a1 + 80, a1 + 80, v7);
  v9 = LH_ERROR_to_VERROR(v8);
  if ((v9 & 0x80000000) != 0)
  {
    v14 = v9;
    v19 = *(*a1 + 32);
    v18 = "Error creating LDOObject for supported styles";
LABEL_17:
    log_OutText(v19, "FE_MSP", 4, 0, v18, v10, v11, v12, v21);
    return v14;
  }

  v13 = luavmldoutil_initialize_lua_vm(*(a1 + 8), *(a1 + 16), a1 + 80, a2[2], "FE_MSP", a2, a3);
  v14 = v13;
  if ((v13 & 0x80000000) != 0)
  {
    if ((v13 & 0x1FFF) != 0xA)
    {
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Ignoring error from LuaVM initialize", v10, v11, v12, v21);
      return 0;
    }

    return v14;
  }

  v15 = *a2;
  if (!*a2)
  {
    v19 = *(*a1 + 32);
    v18 = "No data to initialize LuaVM, returning";
    goto LABEL_17;
  }

  v22 = 0;
  IsLuaFunctionAvailable = LuaVMLDO_IsLuaFunctionAvailable(v15, a2[3], &v22);
  v14 = LH_ERROR_to_VERROR(IsLuaFunctionAvailable);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = "Ignoring error from LuaVM get supported styles";
    goto LABEL_16;
  }

  if (v22 != 1)
  {
    v18 = "No Lua function to get supported styles found";
    goto LABEL_16;
  }

  LuaVMLDO_RunFunctionReturningTable(*a2, a2[3], a2[1]);
  v14 = LH_ERROR_to_VERROR(v17);
  if ((v14 & 0x80000000) != 0)
  {
    v18 = "Error executing the Lua function to get supported styles";
LABEL_16:
    v19 = *(*a1 + 32);
    goto LABEL_17;
  }

  return v14;
}

uint64_t msp_prepare_ldo_for_lua_style_processing(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = 0;
  v80 = 0;
  v81 = 0;
  log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Entering prepare ldo for lua processing", a6, a7, a8, v77);
  v84 = 0;
  v85 = 0;
  __s1[0] = 0;
  v87 = 0;
  v88 = 0;
  __src = 0;
  v86 = 0;
  v9 = *(a1[15] + 32);
  v10 = *(v9 + 24);
  if (v10 < *(v9 + 32))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      __src = *v10;
      Type = LDOObject_GetType(__src, __s1);
      is_style_supported_by_lua = LH_ERROR_to_VERROR(Type);
      if ((is_style_supported_by_lua & 0x80000000) != 0)
      {
        goto LABEL_134;
      }

      if (!cstdlib_strcmp(__s1[0], "MARKER_SET_STYLE"))
      {
        StringAttribute = LDOObject_GetStringAttribute(__src, "STRARGS", &v84, &v88);
        is_style_supported_by_lua = LH_ERROR_to_VERROR(StringAttribute);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          goto LABEL_134;
        }

        if (v84 == 1)
        {
          v17 = v88;
          v83 = 0;
          if (cstdlib_strcmp(v88, "default"))
          {
            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, (a1 + 20), v17, &v83);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            is_style_supported_by_lua = loc_is_style_supported_by_lua(a1, (a1 + 16), v17, &v83);
            if ((is_style_supported_by_lua & 0x80000000) != 0)
            {
              goto LABEL_134;
            }

            if (!v83)
            {
              v18 = &v11[-v12];
              v19 = (&v11[-v12] >> 3) + 1;
              if (v19 > v13)
              {
                v20 = 2 * v13;
                if (2 * v13 >= v13 + 1000000)
                {
                  v20 = v13 + 1000000;
                }

                if (v20 > v19)
                {
                  v19 = v20;
                }

                if (v19 <= 8)
                {
                  v13 = 8;
                }

                else
                {
                  v13 = v19;
                }

                v21 = OOCAllocator_Realloc((a1 + 10), v12, 8 * v13, &v84 + 1);
                if (HIDWORD(v84))
                {
                  goto LABEL_27;
                }

                v12 = v21;
                v11 = (v21 + (v18 & 0x7FFFFFFF8));
              }

              cstdlib_memcpy(v11, &__src, 8uLL);
              v11 += 8;
            }
          }

          else
          {
            v83 = 1;
          }
        }
      }

      if (++v10 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
LABEL_26:
  v86 = v12;
  v87 = v11;
  LODWORD(v85) = v13;
  is_style_supported_by_lua = loc_delete_style_markers(a1, &v85);
  if ((is_style_supported_by_lua & 0x80000000) != 0)
  {
LABEL_134:
    v28 = is_style_supported_by_lua;
LABEL_135:
    v48 = v80;
    goto LABEL_136;
  }

LABEL_27:
  LODWORD(__src) = 0;
  __s1[0] = 0;
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v22 = *(a1[15] + 32);
  v23 = *(v22 + 24);
  if (v23 < *(v22 + 32))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      __s1[0] = *v23;
      v27 = LDOObject_GetType(__s1[0], &v88);
      v28 = LH_ERROR_to_VERROR(v27);
      if ((v28 & 0x80000000) != 0)
      {
        break;
      }

      if (!cstdlib_strcmp(v88, "MARKER_SET_STYLE") || (v29 = v88, !cstdlib_strcmp(v88, "MARKER_INSERT_PROMPT")) || !cstdlib_strcmp(v29, "MARKER_INSERT_AUDIO") || !cstdlib_strcmp(v29, "MARKER_SET_TYPE_OF_INPUT") || !cstdlib_strcmp(v29, "MARKER_SET_PINYIN"))
      {
        v30 = &v24[-v25];
        v31 = (&v24[-v25] >> 3) + 1;
        if (v31 > v26)
        {
          v32 = 2 * v26;
          if (2 * v26 >= v26 + 1000000)
          {
            v32 = v26 + 1000000;
          }

          if (v32 > v31)
          {
            v31 = v32;
          }

          if (v31 <= 8)
          {
            v26 = 8;
          }

          else
          {
            v26 = v31;
          }

          v33 = OOCAllocator_Realloc((a1 + 10), v25, 8 * v26, &__src);
          v25 = v33;
          if (__src)
          {
            break;
          }

          v24 = (v33 + (v30 & 0x7FFFFFFF8));
        }

        cstdlib_memcpy(v24, __s1, 8uLL);
        v24 += 8;
      }

      if (++v23 >= *(*(a1[15] + 32) + 32))
      {
        goto LABEL_49;
      }
    }

LABEL_70:
    if (v25)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v25 = 0;
  v24 = 0;
  v28 = 0;
LABEL_49:
  if ((&v24[-v25] & 0x7FFFFFFF0) == 0)
  {
    goto LABEL_70;
  }

  v34 = 0;
  v35 = v86;
  v36 = v87;
  v37 = (&v24[-v25] >> 3);
  v78 = v85;
  while (1)
  {
    __s1[0] = *(v25 + 8 * v34);
    LDOObject_GetType(__s1[0], &v88);
    v38 = v34 + 1;
    if (cstdlib_strcmp(v88, "MARKER_SET_STYLE"))
    {
      v39 = 1;
    }

    else
    {
      v39 = v38 >= v37;
    }

    if (v39)
    {
      goto LABEL_68;
    }

    v40 = *(v25 + 8 * v34 + 8);
    LDOObject_GetType(v40, &v88);
    if (cstdlib_strcmp(v88, "MARKER_SET_STYLE"))
    {
      goto LABEL_68;
    }

    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(__s1[0]);
    if (AbsoluteFrom != LDOLabel_GetAbsoluteFrom(v40))
    {
      goto LABEL_68;
    }

    v42 = (&v36[-v35] >> 3) + 1;
    if (v42 > v78)
    {
      break;
    }

LABEL_67:
    cstdlib_memcpy(v36, __s1, 8uLL);
    v36 += 8;
    v87 = v36;
LABEL_68:
    v34 = v38;
    if (v37 == v38)
    {
      LODWORD(v85) = v78;
      v28 = loc_delete_style_markers(a1, &v85);
      goto LABEL_71;
    }
  }

  v43 = 2 * v78;
  if (2 * v78 >= v78 + 1000000)
  {
    v43 = v78 + 1000000;
  }

  if (v43 > v42)
  {
    v42 = v43;
  }

  if (v42 <= 8)
  {
    v44 = 8;
  }

  else
  {
    v44 = v42;
  }

  v45 = OOCAllocator_Realloc((a1 + 10), v35, 8 * v44, &__src);
  v86 = v45;
  if (!__src)
  {
    v36 = (v45 + (&v36[-v35] & 0x7FFFFFFF8));
    v87 = v36;
    v78 = v44;
    v35 = v45;
    goto LABEL_67;
  }

  LODWORD(v85) = v78;
LABEL_71:
  OOCAllocator_Free((a1 + 10), v25);
LABEL_72:
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_135;
  }

  LODWORD(v88) = 0;
  v85 = 0;
  v46 = *(a1[15] + 32);
  v47 = *(v46 + 24);
  if (v47 >= *(v46 + 32))
  {
    v48 = v80;
    v49 = v81;
LABEL_91:
    v85 = 0;
    if (v49 > v48 && ((v49 - v48) & 0x7FFFFFFF8) != 0)
    {
      while (1)
      {
        v85 = *v48;
        if (!LDOLabel_GetAbsoluteFrom(v85))
        {
          break;
        }

        if (++v48 >= v49)
        {
          goto LABEL_100;
        }
      }
    }

    if (!a1[26] || (LODWORD(__s1[0]) = 0, LODWORD(v88) = 0, v58 = LDO_AddLabelOnSubstring(a1[15], "MARKER", "MARKER_SET_STYLE", __s1, &v88, &v85), is_style_supported_by_lua = LH_ERROR_to_VERROR(v58), (is_style_supported_by_lua & 0x80000000) == 0) && (LDOObject_SetU32Attribute(v85, "_MTYPE", 60), is_style_supported_by_lua = LH_ERROR_to_VERROR(v59), (is_style_supported_by_lua & 0x80000000) == 0) && (v60 = v85, v61 = LHString_BorrowCPtr(a1[26]), v62 = LDOObject_SetStringAttribute(v60, "STRARGS", v61), is_style_supported_by_lua = LH_ERROR_to_VERROR(v62), (is_style_supported_by_lua & 0x80000000) == 0))
    {
LABEL_100:
      v85 = 0;
      v86 = 0;
      __s1[0] = 0;
      __s1[1] = 0;
      v88 = 0;
      v89 = 0;
      v63 = *(a1[15] + 16);
      v64 = *(v63 + 80);
      v65 = *(v63 + 88);
      if (v64 >= v65)
      {
        v28 = 0;
        goto LABEL_135;
      }

      v66 = *(v63 + 80);
      v67 = v64;
      while (1)
      {
        v69 = *v67++;
        v68 = v69;
        v70 = v67 >= v65 ? 0 : *v67;
        v71 = v66 <= v64 ? 0 : *(v66 - 1);
        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v68, &v79, &v85);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v71, &v79, __s1);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        is_style_supported_by_lua = loc_find_style_suitable_for_given_node(v70, &v79, &v88);
        if ((is_style_supported_by_lua & 0x80000000) != 0)
        {
          break;
        }

        if (v85)
        {
          v72 = a1[26];
          v73 = v72 ? LHString_Erase(v72) : PNEW_LDOString_Con((a1 + 10), (a1 + 10), a1 + 26);
          is_style_supported_by_lua = LH_ERROR_to_VERROR(v73);
          if ((is_style_supported_by_lua & 0x80000000) != 0)
          {
            break;
          }

          v74 = LHString_Append(a1[26], v85);
          is_style_supported_by_lua = LH_ERROR_to_VERROR(v74);
          if ((is_style_supported_by_lua & 0x80000000) != 0)
          {
            break;
          }
        }

        if (a1[26])
        {
          v28 = 0;
          if (v89)
          {
            if (HIDWORD(v89))
            {
              v28 = loc_set_nlu_attribute(a1, v85, v68, 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }
          }

          if (!v86)
          {
            goto LABEL_128;
          }

          v28 = loc_set_nlu_attribute(a1, v85, v68, 0);
          if ((v28 & 0x80000000) != 0)
          {
            goto LABEL_135;
          }

          if (!HIDWORD(v86))
          {
            if (__s1[0])
            {
              v28 = loc_set_nlu_attribute(a1, __s1[0], v68, 2);
              if ((v28 & 0x80000000) != 0)
              {
                goto LABEL_135;
              }
            }
          }

          if (!v86)
          {
LABEL_128:
            if (!v89 || !HIDWORD(v89))
            {
              v75 = LHString_BorrowCPtr(a1[26]);
              v28 = loc_set_nlu_attribute(a1, v75, v68, 1);
            }
          }
        }

        else
        {
          v28 = 0;
        }

        if (v67 < v65)
        {
          v66 = v67;
          if ((v28 & 0x80000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_135;
      }
    }

    goto LABEL_134;
  }

  v48 = v80;
  v49 = v81;
  v50 = v79;
  while (1)
  {
    __s1[0] = *v47;
    v51 = LDOObject_GetType(__s1[0], &v85);
    v52 = LH_ERROR_to_VERROR(v51);
    if ((v52 & 0x80000000) != 0)
    {
      break;
    }

    if (!cstdlib_strcmp(v85, "MARKER_SET_STYLE"))
    {
      v53 = v49 - v48;
      v54 = ((v49 - v48) >> 3) + 1;
      if (v54 > v50)
      {
        v55 = 2 * v50;
        if (2 * v50 >= v50 + 1000000)
        {
          v55 = v50 + 1000000;
        }

        if (v55 > v54)
        {
          v54 = v55;
        }

        if (v54 <= 8)
        {
          v56 = 8;
        }

        else
        {
          v56 = v54;
        }

        v57 = OOCAllocator_Realloc((a1 + 10), v48, 8 * v56, &v88);
        v48 = v57;
        if (v88)
        {
LABEL_89:
          v80 = v48;
          v81 = v49;
          LODWORD(v79) = v50;
          goto LABEL_91;
        }

        v49 = (v57 + (v53 & 0x7FFFFFFF8));
        v50 = v56;
      }

      cstdlib_memcpy(v49++, __s1, 8uLL);
    }

    if (++v47 >= *(*(a1[15] + 32) + 32))
    {
      goto LABEL_89;
    }
  }

  v28 = v52;
  v80 = v48;
  v81 = v49;
LABEL_136:
  LODWORD(v79) = 0;
  if (v48)
  {
    OOCAllocator_Free((a1 + 10), v48);
  }

  return v28;
}

uint64_t msp_prepare_voice_specific_msp_luavm(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, sizeof(v9));
  *(a1 + 176) = "runVoiceMsp";
  *(a1 + 184) = "getSupportedStylesVoiceMsp";
  voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v9, 1);
  if ((voice_specific_broker_string & 0x80000000) != 0)
  {
    return voice_specific_broker_string;
  }

  v6 = loc_prepare_luavm(a1, (a1 + 160), v9);
  if ((v6 & 0x80000000) == 0)
  {
    if (*(a1 + 160))
    {
      v7 = "Voice-specific MSP data available in the package";
      goto LABEL_5;
    }

    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "No voice-specific MSP data available in the package", v3, v4, v5, *&v9[0]);
    voice_specific_broker_string = loc_generate_voice_specific_broker_string(a1, v9, 0);
    if ((voice_specific_broker_string & 0x80000000) == 0)
    {
      v6 = loc_prepare_luavm(a1, (a1 + 160), v9);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      if (!*(a1 + 160))
      {
        v7 = "No voice-specific MSP data available in the stage";
        goto LABEL_6;
      }

      v7 = "Voice-specific MSP data available in the stage";
LABEL_5:
      *(a1 + 192) = 1;
LABEL_6:
      log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, v7, v3, v4, v5, *&v9[0]);
      return v6;
    }

    return voice_specific_broker_string;
  }

  return v6;
}

uint64_t loc_generate_voice_specific_broker_string(uint64_t *a1, char *a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v17 = 0;
  __s2 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__s1 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  Str = paramc_ParamGetStr(*(*a1 + 40), "langcode", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v7 = paramc_ParamGetStr(*(*a1 + 40), "voice", &v17);
  if ((v7 & 0x80000000) == 0)
  {
    cstdlib_strncat(__s1, "msp/", 0x100uLL);
    v8 = 256 - cstdlib_strlen("msp/");
    cstdlib_strncat(__s1, __s2, v8);
    v9 = v8 - cstdlib_strlen(__s2);
    cstdlib_strncat(__s1, "/", v9);
    v10 = cstdlib_strlen("/");
    cstdlib_strncat(__s1, v17, (v9 - v10));
    v11 = __s1[0];
    if (__s1[0])
    {
      v12 = &__s1[1];
      do
      {
        *(v12 - 1) = cstdlib_tolower(v11);
        v13 = *v12++;
        v11 = v13;
      }

      while (v13);
    }

    if (a3 == 1)
    {
      v14 = *a1;
      v15 = v19;
      v7 = brokeraux_ComposeBrokerString(v14, __s1, 0, 0, 0, 0, 0, v19, 0x100uLL);
      if ((v7 & 0x80000000) != 0)
      {
        return v7;
      }
    }

    else
    {
      v15 = __s1;
    }

    cstdlib_strcpy(a2, v15);
  }

  return v7;
}

uint64_t msp_touch_lingdb_instance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v7 + 2);
  if ((result & 0x80000000) == 0)
  {
    return (*(a1 + 160))(a2, a3, HIWORD(v7), 2, 1, "", &v7);
  }

  return result;
}

uint64_t loc_delete_style_markers(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = LDO_RemoveLabel(*(a1 + 120), *v4);
      v6 = LH_ERROR_to_VERROR(v5);
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      ++v4;
    }

    while (v4 < *(a2 + 16));
    v4 = *(a2 + 8);
  }

  *a2 = 0;
  if (v4)
  {
    OOCAllocator_Free(a1 + 80, v4);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return v6;
}

uint64_t loc_is_style_supported_by_lua(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v14 = 0;
  if (!*a2)
  {
    return 0;
  }

  BoolAttribute = LDOObject_GetBoolAttribute(*(a2 + 8), a3, &v14 + 1, &v14);
  v10 = LH_ERROR_to_VERROR(BoolAttribute);
  if ((v10 & 0x80000000) != 0)
  {
    log_OutText(*(*a1 + 32), "FE_MSP", 4, 0, "Error getting LDOObject BOOLean attribute", v7, v8, v9, v13);
  }

  else if (HIDWORD(v14) == 1 && v14 == 1)
  {
    *a4 = 1;
  }

  return v10;
}

uint64_t loc_find_style_suitable_for_given_node(size_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  *(a3 + 8) = 0;
  *(a3 + 12) = 0;
  v3 = (a3 + 8);
  if (!a1)
  {
    return 0;
  }

  v7 = LDOTreeNode_ComputeAbsoluteFrom(a1, &v17 + 1);
  v8 = LH_ERROR_to_VERROR(v7);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  v9 = LDOTreeNode_ComputeAbsoluteTo(a1, &v17);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    for (i = *(a2 + 8); i < *(a2 + 16); ++i)
    {
      v12 = *i;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*i);
      LDOLabel_GetAbsoluteFrom(v12);
      if (HIDWORD(v17) == AbsoluteFrom)
      {
        *(a3 + 12) = 1;
      }

      else if (!*(a3 + 12) && (AbsoluteFrom < HIDWORD(v17) || AbsoluteFrom > v17))
      {
        continue;
      }

      StringAttribute = LDOObject_GetStringAttribute(v12, "STRARGS", v3, a3);
      v10 = LH_ERROR_to_VERROR(StringAttribute);
      if ((v10 & 0x80000000) != 0 || *v3)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t loc_set_nlu_attribute(uint64_t a1, const char *a2, uint64_t *a3, int a4)
{
  result = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  if (a2)
  {
    if (a3)
    {
      v9 = PNEW_LDOString_Con(a1 + 80, a1 + 80, &v20);
      result = LH_ERROR_to_VERROR(v9);
      if ((result & 0x80000000) == 0)
      {
        v10 = LHString_Append(v20, STYLE_KEYS[a4]);
        result = LH_ERROR_to_VERROR(v10);
        if ((result & 0x80000000) == 0)
        {
          v11 = LHString_Append(v20, a2);
          result = LH_ERROR_to_VERROR(v11);
          if ((result & 0x80000000) == 0)
          {
            v12 = LHString_Append(v20, ";");
            result = LH_ERROR_to_VERROR(v12);
            if ((result & 0x80000000) == 0)
            {
              StringAttribute = LDOObject_GetStringAttribute(a3, "NLU", &v18, &v19);
              result = LH_ERROR_to_VERROR(StringAttribute);
              if ((result & 0x80000000) == 0)
              {
                if (!v18 || (v14 = LHString_Append(v20, v19), result = LH_ERROR_to_VERROR(v14), (result & 0x80000000) == 0))
                {
                  v15 = LHString_BorrowCPtr(v20);
                  v16 = LDOObject_SetStringAttribute(a3, "NLU", v15);
                  result = LH_ERROR_to_VERROR(v16);
                }
              }
            }
          }
        }
      }
    }
  }

  do
  {
    if (!v20)
    {
      break;
    }

    v17 = OOC_PlacementDeleteObject(a1 + 80, v20);
    result = LH_ERROR_to_VERROR(v17);
  }

  while ((result & 0x80000000) != 0);
  return result;
}

uint64_t tbmeg_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2686459905;
  }

  result = 0;
  *a2 = &ITbmeg;
  return result;
}

uint64_t tbmeg_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2686459911;
  if (a5)
  {
    *a5 = safeh_GetNullHandle();
    a5[1] = v9;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v21) & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v21 + 8), 1, 136);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[4] = safeh_GetNullHandle();
        v11[5] = v12;
        v11[15] = safeh_GetNullHandle();
        v11[16] = v13;
        Object = objc_GetObject(*(v21 + 48), "SYNTHSTREAM", &v20);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v11[6] = *(v20 + 8);
        Object = nuance_pcre_ObjOpen(a3, a4, (v11 + 15));
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v15 = paramc_ParamGetUInt(*(v21 + 40), "ppmaxpcreframeblocks", &v19) < 0 ? 30 : v19;
        UInt = paramc_ParamGetUInt(*(v21 + 40), "ppnumframesinblock", &v19);
        v17 = v19;
        if (UInt < 0)
        {
          v17 = 50;
        }

        Object = nuance_pcre_Init(v11[15], v11[16], v15, v17);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
          tbmeg_pObjClose(v11);
        }

        else
        {
          v5 = 0;
          *a5 = v11;
          *(a5 + 2) = 1029;
        }
      }

      else
      {
        return 2686459914;
      }
    }
  }

  return v5;
}

uint64_t tbmeg_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    tbmeg_ProcessEnd(a1, a2);

    return tbmeg_pObjClose(a1);
  }

  return result;
}

uint64_t tbmeg_ResourceTypes(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((result & 0x80000000) == 0)
  {
    *a3 = tbmeg_ResourceTypes_SZ_TBMEG_CONTENT_TYPES;
  }

  return result;
}

uint64_t tbmeg_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, int a6, uint64_t a7)
{
  *&__n[1] = a5;
  __n[0] = a6;
  v7 = 2686459911;
  v33 = 0;
  v34 = 0;
  if (a3 && a7)
  {
    v11 = a4;
    if (a4)
    {
      if (!a5 && a6)
      {
        return v7;
      }
    }

    else if (!a5 || !a6)
    {
      return v7;
    }

    v15 = safeh_HandleCheck(a1, a2, 1029, 136);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    *a7 = 0;
    *(a7 + 8) = 0;
    inited = InitRsrcFunction(*a1, a1[1], &v34);
    if ((inited & 0x80000000) == 0)
    {
      BinaryDataBroker = inited;
      NullHandle = safeh_GetNullHandle();
      v19 = a1 + 4;
      if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v20))
      {
        log_OutPublic(v34[4], &modInfoTbm, 67001, 0, v21, v22, v23, v24, v33);
        return 2686459928;
      }

      if (!v11 || a5)
      {
        if (a5 && a6)
        {
          goto LABEL_26;
        }
      }

      else if (cstdlib_strstr(a3, "application/x-vocalizer-pt+bin") && cstdlib_strstr(a3, ";loader=broker"))
      {
        BinaryDataBroker = pts_ReadBinaryDataBroker(*a1, a1[1], v11, a1 + 4);
        if ((BinaryDataBroker & 0x80000000) == 0)
        {
          *a7 = *v19;
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v25 = brk_DataOpenEx(v34[3], v11, 0, &v33);
      if ((v25 & 0x80000000) != 0)
      {
        BinaryDataBroker = v25;
        goto LABEL_37;
      }

      BinaryDataBroker = brk_DataMapEx(v34[3], v33, 0, __n, &__n[1]);
      if ((BinaryDataBroker & 0x80000000) != 0)
      {
LABEL_37:
        v31 = v33;
        if (*&__n[1])
        {
          brk_DataUnmap(v34[3], v33, *&__n[1]);
          v31 = v33;
        }

        if (v31)
        {
          brk_DataClose(v34[3], v31);
        }

        if ((BinaryDataBroker & 0x80000000) != 0)
        {
          tbmeg_ResourceUnload(a1, a2, *a7, *(a7 + 8));
        }

        return BinaryDataBroker;
      }

      v26 = heap_Alloc(v34[1], __n[0]);
      a1[2] = v26;
      if (!v26)
      {
        return 2686459914;
      }

      cstdlib_memcpy(v26, *&__n[1], __n[0]);
      *&__n[1] = a1[2];
LABEL_26:
      if (cstdlib_strstr(a3, "application/x-vocalizer-pt+text"))
      {
        TextData = pts_ReadTextData(*a1, a1[1], *&__n[1], __n[0], a1 + 4, 0, 0);
      }

      else
      {
        if (!cstdlib_strstr(a3, "application/x-vocalizer-pt+bin"))
        {
          goto LABEL_32;
        }

        TextData = pts_ReadBinaryDataBuffer(*a1, a1[1], *&__n[1], __n[0], a1 + 4);
      }

      BinaryDataBroker = TextData;
      if ((TextData & 0x80000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_32:
      *a7 = *v19;
      if (!v11)
      {
LABEL_34:
        v11 = "in-memory PTS";
LABEL_35:
        v28 = v34[1];
        v29 = cstdlib_strlen(v11);
        v30 = heap_Alloc(v28, (v29 + 1));
        a1[3] = v30;
        if (v30)
        {
          cstdlib_strcpy(v30, v11);
          logLoadTemplateSet(v34);
          goto LABEL_37;
        }

        return 2686459914;
      }

LABEL_33:
      if (*v11)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  return v7;
}

uint64_t tbmeg_ResourceUnload(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v21 = 0;
  v6 = pts_HandleCheck(a3, a4);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v6 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  inited = InitRsrcFunction(*a1, *(a1 + 8), &v21);
  if ((inited & 0x80000000) != 0)
  {
    return 2686459911;
  }

  v8 = inited;
  v9 = v21;
  if (log_HasTraceTuningDataSubscriber(*(v21 + 32)))
  {
    log_OutTraceTuningData(*(v9 + 32), 701, "%s%s %s%s", v10, v11, v12, v13, v14, "BEG");
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v16))
  {
    pts_Free(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = safeh_GetNullHandle();
    *(a1 + 40) = v17;
  }

  v18 = *(a1 + 24);
  if (v18)
  {
    heap_Free(*(v21 + 8), v18);
    *(a1 + 24) = 0;
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    heap_Free(*(v21 + 8), v19);
    *(a1 + 16) = 0;
  }

  return v8;
}

uint64_t tbmeg_ProcessStart(_WORD **a1, int a2, _WORD *a3, _WORD *a4)
{
  v16 = 0;
  v8 = 2686459911;
  if ((safeh_HandleCheck(a1, a2, 1029, 136) & 0x80000000) != 0)
  {
    return 2686459912;
  }

  if ((InitRsrcFunction(*a1, a1[1], &v16) & 0x80000000) == 0)
  {
    a1[7] = a3;
    a1[8] = a4;
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[4], a1[5], NullHandle, v10))
    {
      v12 = 0;
      do
      {
        v13 = (*(a1[6] + 8))(a3, a4, 514, tbmeg_ProcessStart_szInput[v12], 0, 0, a1 + 13);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v12++ != 6);
      if (v13 < 0)
      {
        a1[13] = 0;
      }

      v15 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 0, a1 + 9);
      if ((v15 & 0x80000000) != 0)
      {
        v8 = v15;
      }

      else
      {
        v8 = (*(a1[6] + 8))(a3, a4, 514, "text/plain;charset=utf-8", 0, 1, a1 + 11);
        if ((v8 & 0x80000000) == 0)
        {
          return v8;
        }
      }

      tbmeg_ProcessEnd(a1, a2);
      return v8;
    }

    return 0;
  }

  return v8;
}

uint64_t tbmeg_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  __s1 = 0;
  v42 = 0;
  __dst = 0;
  __s = 0;
  __n = 0;
  v7 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  v8 = 2686459911;
  if ((InitRsrcFunction(*a1, *(a1 + 8), &v42) & 0x80000000) == 0)
  {
    if (!*(a1 + 72) || !*(a1 + 88))
    {
      v8 = 0;
LABEL_15:
      v9 = 1;
LABEL_16:
      *a5 = v9;
      return v8;
    }

    *a5 = 0;
    v7 = (*(*(a1 + 48) + 144))(*(a1 + 72), *(a1 + 80), &__n + 4, &__n);
    if ((v7 & 0x80000000) == 0)
    {
      v9 = __n;
      if (!__n)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v7 = (*(*(a1 + 48) + 88))(*(a1 + 72), *(a1 + 80), &__s1, &__n + 4);
      if ((v7 & 0x80000000) == 0)
      {
        v10 = __s1;
        v11 = v42;
        v12 = HIDWORD(__n);
        if (log_HasTraceTuningDataSubscriber(*(v42 + 32)))
        {
          log_OutTraceTuningData(*(v11 + 32), 702, "%s%s", v13, v14, v15, v16, v17, "BEG");
          log_OutTraceTuningDataBinary(*(v11 + 32), 703, "", "text/plain;charset=utf-8", v10, v12);
        }

        v18 = HIDWORD(__n);
        strcpy(__s2, "﻿");
        if (HIDWORD(__n) >= 3)
        {
          if (cstdlib_strncmp(__s1, __s2, 3uLL))
          {
            v18 = HIDWORD(__n);
          }

          else
          {
            v20 = (*(*(a1 + 48) + 96))(*(a1 + 72), *(a1 + 80), 3);
            if ((v20 & 0x80000000) != 0)
            {
              v35 = v20;
              v27 = 0;
              goto LABEL_39;
            }

            v18 = HIDWORD(__n) - 3;
            HIDWORD(__n) -= 3;
            __s1 += 3;
          }
        }

        v26 = heap_Alloc(*(v42 + 8), (v18 + 1));
        if (!v26)
        {
          return 2686459914;
        }

        v27 = v26;
        cstdlib_memcpy(v26, __s1, HIDWORD(__n));
        v27[HIDWORD(__n)] = 0;
        v28 = (*(*(a1 + 48) + 96))(*(a1 + 72), *(a1 + 80), HIDWORD(__n));
        if ((v28 & 0x80000000) != 0)
        {
          goto LABEL_38;
        }

        __s1 = 0;
        NullHandle = safeh_GetNullHandle();
        if (safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v30))
        {
          v31 = 0;
          __s = v27;
          v32 = v27;
        }

        else
        {
          pts_Apply(*(a1 + 32), *(a1 + 40), *a1, *(a1 + 8), *(a1 + 120), *(a1 + 128), v27, &__s);
          v32 = __s;
          v31 = v27;
          if (!__s)
          {
            goto LABEL_32;
          }
        }

        v33 = cstdlib_strlen(v32);
        if (v33)
        {
          v34 = (*(*(a1 + 48) + 112))(*(a1 + 88), *(a1 + 96), &__dst, v33);
          if ((v34 & 0x80000000) == 0)
          {
            if (__s)
            {
              cstdlib_memcpy(__dst, __s, v33);
            }

            logProcessOutput(v42, __dst, v33);
            v27 = v31;
            goto LABEL_37;
          }

          v35 = v34;
          v27 = v31;
LABEL_39:
          log_OutTraceTuningData(*(v42 + 32), 4, "%s%s %s%u", v21, v22, v23, v24, v25, "END");
          if (v27)
          {
            heap_Free(*(v42 + 8), v27);
          }

          if (__s)
          {
            heap_Free(*(v42 + 8), __s);
          }

          v36 = (*(*(a1 + 48) + 72))(*(a1 + 88), *(a1 + 96));
          if (v36 >= 0)
          {
            v8 = v35;
          }

          else
          {
            v8 = v36;
          }

          *(a1 + 88) = safeh_GetNullHandle();
          *(a1 + 96) = v37;
          goto LABEL_15;
        }

        v27 = v31;
LABEL_32:
        v28 = (*(*(a1 + 48) + 112))(*(a1 + 88), *(a1 + 96), &__dst, 1);
        if ((v28 & 0x80000000) != 0)
        {
LABEL_38:
          v35 = v28;
          goto LABEL_39;
        }

        *__dst = 0;
        v33 = 1;
LABEL_37:
        v28 = (*(*(a1 + 48) + 120))(*(a1 + 88), *(a1 + 96), v33);
        goto LABEL_38;
      }
    }

    return v7;
  }

  return v8;
}

uint64_t tbmeg_ProcessEnd(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1029, 136);
  if ((v3 & 0x80000000) == 0)
  {
    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[13], a1[14], NullHandle, v5))
    {
      v6 = (*(a1[6] + 72))(a1[13], a1[14]);
      if (v6 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }
    }

    a1[13] = safeh_GetNullHandle();
    a1[14] = v7;
    v8 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[9], a1[10], v8, v9))
    {
      v10 = (*(a1[6] + 72))(a1[9], a1[10]);
      if (v10 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v10;
      }
    }

    a1[9] = safeh_GetNullHandle();
    a1[10] = v11;
    v12 = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(a1[11], a1[12], v12, v13))
    {
      v14 = (*(a1[6] + 72))(a1[11], a1[12]);
      if (v14 >= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v14;
      }
    }

    a1[11] = safeh_GetNullHandle();
    a1[12] = v15;
  }

  return v3;
}

uint64_t tbmeg_pObjClose(uint64_t a1)
{
  v1 = 2686459911;
  v10 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v10) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      heap_Free(*(v10 + 8), v3);
      *(a1 + 24) = 0;
    }

    if (*(a1 + 48))
    {
      objc_ReleaseObject(*(v10 + 48), "SYNTHSTREAM");
    }

    NullHandle = safeh_GetNullHandle();
    if (!safeh_HandlesEqual(*(a1 + 32), *(a1 + 40), NullHandle, v5))
    {
      pts_Free(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = safeh_GetNullHandle();
      *(a1 + 40) = v6;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      heap_Free(*(v10 + 8), v7);
      *(a1 + 16) = 0;
    }

    v8 = nuance_pcre_DeInit(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    v8 = nuance_pcre_ObjClose(*(a1 + 120), *(a1 + 128));
    if ((v8 & 0x80000000) != 0)
    {
      return v8;
    }

    else
    {
      heap_Free(*(v10 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t logLoadTemplateSet(uint64_t a1)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    return log_OutTraceTuningData(*(a1 + 32), 700, "%s%s %s%s %s%s", v3, v4, v5, v6, v7, "BEG");
  }

  return result;
}

uint64_t logProcessOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = log_HasTraceTuningDataSubscriber(*(a1 + 32));
  if (result)
  {
    log_OutTraceTuningDataBinary(*(a1 + 32), 704, "", "text/plain;charset=utf-8", a2, a3);
    return log_OutTraceTuningData(*(a1 + 32), 702, "%s%s", v7, v8, v9, v10, v11, "END");
  }

  return result;
}

uint64_t pts_strclone(uint64_t a1, char **a2, char *__s)
{
  v3 = 2686459911;
  if (a2)
  {
    v7 = cstdlib_strlen(__s);
    v8 = heap_Alloc(a1, v7 + 1);
    *a2 = v8;
    if (v8)
    {
      cstdlib_strcpy(v8, __s);
      return 0;
    }

    else
    {
      return 2686459914;
    }
  }

  return v3;
}

uint64_t numberOfOccurrences(char *a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = cstdlib_strstr(a1, __s);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    ++v6;
    v5 = cstdlib_strstr(&v5[v4], __s);
  }

  while (v5);
  return v6;
}

uint64_t fillInSlots(uint64_t a1, char *a2, char *a3, unint64_t a4, int a5, char *a6, void *a7, const char **a8)
{
  v9 = a7;
  v54 = 0;
  v55 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  appended = ssftstring_ObjOpen(*(a1 + 8), &v55);
  if ((appended & 0x80000000) != 0)
  {
LABEL_75:
    v17 = appended;
  }

  else
  {
    v17 = ssftstring_ObjOpen(*(a1 + 8), &v54);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = cstdlib_strchr(a2, 36);
      if (v18)
      {
        v19 = v18;
        __s = a3;
        v48 = v9;
        v49 = a4;
        v20 = 0;
        v21 = (a6 | v9) != 0;
        v51 = v21;
        if (!a8)
        {
          v21 = 1;
        }

        v52 = v21;
        v53 = a8;
        while (1)
        {
          v22 = v19 + 1;
          if (!v19[1])
          {
            if (a8)
            {
              v46 = "use '$$' for literal dollar";
              goto LABEL_82;
            }

            goto LABEL_83;
          }

          v23 = v19 - a2;
          if (a6)
          {
            cstdlib_memcpy(&a6[v20], a2, v19 - a2);
            a6[v20 + v23] = 0;
            v20 += v23;
            if (*v22 != 36)
            {
              a8 = v53;
LABEL_18:
              v24 = v55;
              appended = ssftstring_Clear(v55);
              if ((appended & 0x80000000) != 0)
              {
                goto LABEL_75;
              }

              if (a8)
              {
                *a8 = 0;
              }

              v25 = *v22;
              v26 = v25;
              if (v25 == 123)
              {
                v26 = v19[2];
                v22 = v19 + 2;
              }

              if (v26)
              {
                v27 = 0;
                v28 = v22;
                while (cstdlib_strchr("0123456789", v26))
                {
                  v29 = *v28 + 10 * v27 - 48;
                  if (v29 < v27)
                  {
                    v29 = 0;
                    v31 = 0;
                    v32 = "slot number a lot too big";
                    a8 = v53;
                    goto LABEL_37;
                  }

                  v30 = *++v28;
                  LOBYTE(v26) = v30;
                  v27 = v29;
                  if (!v30)
                  {
                    goto LABEL_31;
                  }
                }

                v29 = v27;
LABEL_31:
                v31 = v28 - v22;
                if (v52)
                {
                  a8 = v53;
                  goto LABEL_42;
                }

                a8 = v53;
                v33 = "";
                *v53 = "";
                if (v29)
                {
                  v32 = "slot number too big";
                  if (v29 > v49)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_41;
                }

                v32 = "invalid slot number";
LABEL_40:
                *a8 = v32;
                v33 = v32;
LABEL_41:
                if (*v33)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v29 = 0;
                v31 = 0;
                v32 = "invalid slot number";
LABEL_37:
                if (!v52)
                {
                  goto LABEL_40;
                }
              }

LABEL_42:
              a2 = &v22[v31];
              if (v25 == 123)
              {
                if (*a2 != 58)
                {
                  if (a8)
                  {
                    v46 = "bad slot reference: ':' expected";
                    goto LABEL_82;
                  }

                  goto LABEL_83;
                }

                v34 = cstdlib_strstr(a2 + 1, "}");
                if (!v34)
                {
                  if (a8)
                  {
                    v46 = "bad slot reference: '}' expected";
                    goto LABEL_82;
                  }

LABEL_83:
                  v17 = 2686459908;
                  goto LABEL_84;
                }

                v35 = v34;
                appended = ssftstring_AppendCStrN(v24, a2 + 1, v34 - (a2 + 1));
                if ((appended & 0x80000000) != 0)
                {
                  goto LABEL_75;
                }

                a2 = v35 + 1;
              }

              if (!a5 && ssftstring_Size(v55))
              {
                if (a8)
                {
                  v46 = "slot type mapping not allowed";
LABEL_82:
                  *a8 = v46;
                }

                goto LABEL_83;
              }

              if (v51)
              {
                v36 = v54;
                v37 = v55;
                v56 = 0;
                v57 = 0;
                v38 = __s;
                if (v29 >= 2)
                {
                  v39 = v29 - 1;
                  v38 = __s;
                  do
                  {
                    v38 += cstdlib_strlen(v38) + 1;
                    if (a5)
                    {
                      v38 += cstdlib_strlen(v38) + 1;
                    }

                    --v39;
                  }

                  while (v39);
                }

                v17 = ssftstring_AssignCStr(v36, v38);
                if ((v17 & 0x80000000) == 0 && ssftstring_Size(v37))
                {
                  TnSequence = ssftstring_ObjOpen(*(a1 + 8), &v57);
                  if ((TnSequence & 0x80000000) == 0)
                  {
                    TnSequence = ssftstring_ObjOpen(*(a1 + 8), &v56);
                    if ((TnSequence & 0x80000000) == 0)
                    {
                      v41 = cstdlib_strlen(v38);
                      TnSequence = makeTnSequence(&v38[v41 + 1], v57);
                      if ((TnSequence & 0x80000000) == 0)
                      {
                        v42 = ssftstring_CStr(v37);
                        TnSequence = makeTnSequence(v42, v56);
                        if ((TnSequence & 0x80000000) == 0)
                        {
                          TnSequence = ssftstring_ReplaceAllBy(v36, v57, v56);
                        }
                      }
                    }
                  }

                  v17 = TnSequence;
                }

                if (v57)
                {
                  ssftstring_ObjClose(v57);
                }

                a8 = v53;
                if (v56)
                {
                  ssftstring_ObjClose(v56);
                }

                if ((v17 & 0x80000000) != 0)
                {
                  goto LABEL_84;
                }

                if (a6)
                {
                  v43 = ssftstring_CStr(v54);
                  cstdlib_strcat(a6, v43);
                }

                v20 += ssftstring_Size(v54);
              }

              else
              {
                v17 = 0;
              }

              goto LABEL_72;
            }

            cstdlib_strcat(a6, "$");
            a8 = v53;
          }

          else
          {
            v20 += v23;
            if (v19[1] != 36)
            {
              goto LABEL_18;
            }
          }

          ++v20;
          a2 = v19 + 2;
LABEL_72:
          v19 = cstdlib_strchr(a2, 36);
          if (!v19)
          {
            v44 = v20 + 1;
            v9 = v48;
            if (a6)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }
        }
      }

      v44 = 1;
      if (a6)
      {
LABEL_77:
        cstdlib_strcat(a6, a2);
      }

LABEL_78:
      v45 = cstdlib_strlen(a2);
      if (v9)
      {
        *v9 = v44 + v45;
      }
    }
  }

LABEL_84:
  if (v55)
  {
    ssftstring_ObjClose(v55);
  }

  if (v54)
  {
    ssftstring_ObjClose(v54);
  }

  return v17;
}

uint64_t pts_CheckDataConsistency(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 56))
    {
      if (*(a1 + 80))
      {
        v9 = *(a1 + 72);
        if (*(a1 + 64))
        {
          if (v9)
          {
            if (*(a1 + 88) || !*(a1 + 96))
            {
              v10 = 2686459922;
              v11 = *(*a1 + 32);
              v12 = "Suspiciously initialized inputs";
            }

            else
            {
              if (!*(a1 + 104) && *(a1 + 112))
              {
                if (!*(a1 + 120))
                {
                  v10 = 2686459922;
                  v11 = *(*a1 + 32);
                  v12 = "Uninitialized input cache";
                  goto LABEL_24;
                }

                return 0;
              }

              v10 = 2686459922;
              v11 = *(*a1 + 32);
              v12 = "Suspiciously initialized outputs";
            }
          }

          else
          {
            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "Missing handle on input offsets";
          }
        }

        else
        {
          if (v9)
          {
            log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously defined handle on input offsets", a6, a7, a8, v14);
          }

          if (*(a1 + 88) && !*(a1 + 96))
          {
            if (*(a1 + 104) && !*(a1 + 112))
            {
              if (*(a1 + 120) || *(a1 + 128))
              {
                log_OutText(*(*a1 + 32), &modInfoTBM, 1, 0, "Suspiciously configured input cache", a6, a7, a8, v14);
              }

              return 0;
            }

            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "uninitialized outputs";
          }

          else
          {
            v10 = 2686459922;
            v11 = *(*a1 + 32);
            v12 = "uninitialized inputs";
          }
        }
      }

      else
      {
        v10 = 2686459922;
        v11 = *(*a1 + 32);
        v12 = "uninitialized input offsets";
      }
    }

    else
    {
      v10 = 2686459922;
      v11 = *(*a1 + 32);
      v12 = "unknown number of bytes of output sizes";
    }
  }

  else
  {
    v10 = 2686459922;
    v11 = *(*a1 + 32);
    v12 = "unknown number of bytes per output offset";
  }

LABEL_24:
  log_OutText(v11, &modInfoTBM, 0, 0, v12, a6, a7, a8, v14);
  return v10;
}

uint64_t pts_SetFormat(char **a1, char *__s1)
{
  if (!a1)
  {
    return 2686459911;
  }

  a1[4] = 0;
  if (cstdlib_strcmp(__s1, "Binary Template 1.0"))
  {
    if (!cstdlib_strcmp(__s1, "Binary Template 2.0"))
    {
      *(a1 + 8) = 1;
      goto LABEL_8;
    }

    if (cstdlib_strcmp(__s1, "Binary Template 2.1"))
    {
      if (!cstdlib_strcmp(__s1, "Binary Template 2.2"))
      {
        a1[4] = 0x100000001;
        goto LABEL_8;
      }
    }

    else
    {
      log_OutText(*(*a1 + 4), &modInfoTBM, 0, 0, "'%s' not supported anymore", v4, v5, v6, "Binary Template 2.1");
    }

    return 2686459911;
  }

LABEL_8:
  v7 = *(*a1 + 1);

  return pts_strclone(v7, a1 + 1, __s1);
}

uint64_t pts_ReadBinaryDataBroker(_WORD *a1, uint64_t a2, const char *a3, uint64_t *a4)
{
  v26 = 0;
  v27 = 0;
  v4 = 2686459911;
  v25 = 0;
  if (a3 && a4 && (InitRsrcFunction(a1, a2, &v26) & 0x80000000) == 0)
  {
    *a4 = safeh_GetNullHandle();
    a4[1] = v9;
    v10 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PT10", 131846, &v25);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v10 = pts_ReadBinaryData(v26, v25, 0, &v27);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v18 = v27;
    v10 = brk_DataOpen(*(v26 + 24));
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    if (!*(v18 + 88))
    {
      v19 = *(v18 + 128);
      if (v19)
      {
        v20 = *(v18 + 40);
        while (!(v20 >> (v19 - 1)))
        {
          *(v18 + 128) = --v19;
          if (!v19)
          {
            v19 = 0;
            break;
          }
        }
      }

      v21 = heap_Calloc(*(v26 + 8), 1 << v19, 8);
      *(v18 + 120) = v21;
      if (!v21)
      {
        return 2686459914;
      }

      v10 = pts_PrefillInputCache(v18);
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    v10 = pts_CheckDataConsistency(v18, v11, v12, v13, v14, v15, v16, v17);
    if ((v10 & 0x80000000) != 0)
    {
LABEL_17:
      v4 = v10;
    }

    else
    {
      v4 = 0;
      *a4 = v18;
      *(a4 + 2) = 1060;
    }

    if (v25)
    {
      v22 = ssftriff_reader_ObjClose(v25, v11, v12, v13, v14, v15, v16, v17);
      if (v22 >= 0 || v4 <= -1)
      {
        return v4;
      }

      else
      {
        return v22;
      }
    }
  }

  return v4;
}

uint64_t pts_ReadBinaryData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v29 = 0;
  v27 = 0;
  *__s1 = 0;
  __s = 0;
  v8 = heap_Calloc(*(a1 + 8), 1, 144);
  *a4 = v8;
  if (!v8)
  {
    return 2686459914;
  }

  v9 = v8;
  *v8 = a1;
  *(v8 + 116) = 0;
  for (i = ssftriff_reader_OpenChunk(a2, __s1, &v27, 0); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(a2, __s1, &v27, 0))
  {
    if (cstdlib_strcmp(__s1, "PTHE"))
    {
      if (cstdlib_strcmp(__s1, "PTOF"))
      {
        if (cstdlib_strcmp(__s1, "PTIP"))
        {
          if (cstdlib_strcmp(__s1, "PTOP"))
          {
            log_OutText(*(a1 + 32), &modInfoTBM, 4, 0, "pts_ReadBinaryData unknown chunk type: '%s'", v12, v13, v14, __s1);
          }

          else
          {
            Position = ssftriff_reader_GetPosition(a2);
            if (a3)
            {
              *(v9 + 104) = a3 + Position;
            }

            else
            {
              *(v9 + 112) = Position;
            }
          }
        }

        else
        {
          v22 = ssftriff_reader_GetPosition(a2);
          if (a3)
          {
            *(v9 + 88) = a3 + v22;
          }

          else
          {
            *(v9 + 96) = v22;
          }
        }
      }

      else if (v27 >= 4)
      {
        *(v9 + 40) = (v27 >> 2) - 1;
        if (a3)
        {
          *(v9 + 80) = a3 + ssftriff_reader_GetPosition(a2);
        }

        else
        {
          v15 = ssftriff_reader_DetachChunkData(a2, (v9 + 72), (v9 + 80));
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      ssftriff_reader_GetChunkData(a2, v27, &__s, v11);
      if ((v15 & 0x80000000) != 0 || (v15 = pts_SetFormat(v9, __s), (v15 & 0x80000000) != 0) || (v16 = cstdlib_strlen(__s), __s += v16 + 1, v15 = pts_strclone(*(a1 + 8), (v9 + 16), __s), (v15 & 0x80000000) != 0))
      {
LABEL_34:
        v24 = v15;
        goto LABEL_35;
      }

      v17 = cstdlib_strlen(*(v9 + 16));
      v18 = &__s[v17 + 1];
      __s = v18;
      v19 = *(a1 + 8);
      v20 = (v9 + 24);
      if (*(v9 + 32))
      {
        v15 = pts_strclone(v19, v20, v18);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_34;
        }

        v21 = cstdlib_strlen(*(v9 + 24));
        __s += v21 + 1;
      }

      else
      {
        v15 = pts_strclone(v19, v20, "<>");
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      *(v9 + 48) = xmmword_26ED4B610;
      if (a3)
      {
        *(v9 + 128) = 0;
      }

      else
      {
        *(v9 + 128) = 8;
      }
    }

    v15 = ssftriff_reader_CloseChunk(a2);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_34;
    }
  }

  v24 = i;
  if ((i & 0x1FFF) == 0x14)
  {
    return 0;
  }

LABEL_35:
  if (*a4)
  {
    heap_Free(*(a1 + 8), *a4);
    *a4 = 0;
  }

  return v24;
}

uint64_t pts_PrefillInputCache(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v3 = 1 << v1;
  v6 = 0;
  v4 = (1 << v1) >> 1;
  do
  {
    result = pts_BinSearch(a1, 0, v4, &v8, &v7, &v6);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    ++v4;
  }

  while (v4 < v3);
  return result;
}

uint64_t pts_ReadBinaryDataBuffer(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v25 = 0;
  v26 = 0;
  v5 = 2686459911;
  v24 = 0;
  if (a4)
  {
    if (a3)
    {
      if (a5)
      {
        v8 = a4;
        if ((InitRsrcFunction(a1, a2, &v25) & 0x80000000) == 0)
        {
          *a5 = safeh_GetNullHandle();
          a5[1] = v11;
          v12 = ssftriff_reader_ObjOpenEx(a1, a2, 4, "PromptTemplate in RAM", a3, v8, "PT10", 131846, &v24);
          if ((v12 & 0x80000000) != 0 || (v12 = pts_ReadBinaryData(v25, v24, a3, &v26), (v12 & 0x80000000) != 0) || (v20 = v26, v12 = pts_CheckDataConsistency(v26, v13, v14, v15, v16, v17, v18, v19), (v12 & 0x80000000) != 0))
          {
            v5 = v12;
          }

          else
          {
            v5 = 0;
            *a5 = v20;
            *(a5 + 2) = 1060;
          }

          if (v24)
          {
            v21 = ssftriff_reader_ObjClose(v24, v13, v14, v15, v16, v17, v18, v19);
            if (v21 >= 0 || v5 <= -1)
            {
              return v5;
            }

            else
            {
              return v21;
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t pts_Free(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 8);
    v5 = *(*a1 + 8);
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      *(a1 + 8) = 0;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      heap_Free(v5, v6);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      heap_Free(v5, v7);
      *(a1 + 24) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v3 = ssftriff_reader_ReleaseChunkData(v8);
      *(a1 + 72) = 0;
    }

    else if (*(a1 + 116))
    {
      v14 = *(a1 + 80);
      if (v14)
      {
        heap_Free(v5, v14);
      }
    }

    *(a1 + 80) = 0;
    if (*(a1 + 116))
    {
      v9 = *(a1 + 88);
      if (v9)
      {
        heap_Free(v5, v9);
      }
    }

    *(a1 + 88) = 0;
    if (*(a1 + 120))
    {
      v10 = 0;
      do
      {
        heap_Free(v5, *(*(a1 + 120) + 8 * v10++));
      }

      while (!(v10 >> *(a1 + 128)));
      heap_Free(v5, *(a1 + 120));
      *(a1 + 120) = 0;
    }

    if (*(a1 + 116))
    {
      v11 = *(a1 + 104);
      if (v11)
      {
        heap_Free(v5, v11);
      }
    }

    *(a1 + 104) = 0;
    v12 = *(a1 + 64);
    if (v12)
    {
      brk_DataClose(*(*a1 + 24), v12);
      *(a1 + 64) = 0;
    }

    heap_Free(v5, a1);
  }

  return v3;
}

uint64_t pts_MatchSlots(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, void *a7)
{
  if (a4)
  {
    v7 = a5;
    v16 = a7;
    v17 = a6;
    v11 = 0;
    v12 = 0;
    while (v7)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        if (cstdlib_strcmp((a3 + v11), ""))
        {
          if (cstdlib_strcmp((a3 + v11), (a2 + v13)))
          {
            v14 = 0;
          }

          else
          {
            v14 = v14;
          }
        }

        v13 += cstdlib_strlen((a2 + v13)) + 1;
        v11 += cstdlib_strlen((a3 + v11)) + 1;
        if (*(a1 + 36))
        {
          if (cstdlib_strcmp((a3 + v11), "*"))
          {
            if (cstdlib_strcmp((a3 + v11), (a2 + v13)))
            {
              v14 = 0;
            }

            else
            {
              v14 = v14;
            }
          }

          v11 += cstdlib_strlen((a3 + v11)) + 1;
          v13 += cstdlib_strlen((a2 + v13)) + 1;
        }

        --v7;
      }

      while (v7);
      if (v14)
      {
        goto LABEL_22;
      }

      v11 += *(a1 + 48) + *(a1 + 56);
      ++v12;
      v7 = a5;
      if (v11 >= a4)
      {
        v14 = 0;
        goto LABEL_22;
      }
    }

    v14 = 1;
LABEL_22:
    a7 = v16;
    a6 = v17;
    if (v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v11 = 0;
    if (a7)
    {
LABEL_23:
      *a7 = v12;
    }
  }

  if (a6)
  {
    *a6 = v11;
  }

  return v14;
}

uint64_t pts_Apply(uint64_t a1, int a2, _WORD *a3, int a4, void *a5, int a6, char *a7, uint64_t *a8)
{
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v16 = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((v16 & 0x80000000) != 0)
  {
    return v16;
  }

  v17 = 2686459911;
  if (a7 && a8)
  {
    v67 = 0;
    matched = 0;
    v63 = 0;
    v18 = safeh_HandleCheck(a1, a2, 1060, 144);
    if ((v18 & 0x80000000) != 0)
    {
      v17 = v18;
      goto LABEL_40;
    }

    v54 = a8;
    __s = *(a1 + 24);
    v60 = *(a1 + 36);
    v75 = 0;
    v76[0] = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v68 = 0;
    v19 = 0;
    if ((InitRsrcFunction(a3, a4, &v68) & 0x80000000) != 0)
    {
      v20 = 0;
      goto LABEL_36;
    }

    v20 = 0;
    if (!v68)
    {
      goto LABEL_36;
    }

    v55 = a7;
    v56 = 0;
    v20 = 0;
    v59 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_8:
    v58 = v23;
    if (v23)
    {
      v19 = heap_Calloc(*(v68 + 8), v22, 1);
      if (!v19)
      {
        goto LABEL_71;
      }

      v20 = heap_Calloc(*(v68 + 8), v21 + 1, 1);
      if (!v20)
      {
        goto LABEL_71;
      }

      v56 = v19;
      v22 = 0;
      v21 = 0;
    }

    Markup = findMarkup("slotbegin", a3, a4, a5, a6, v55, v76, &v75, &v74, &v73);
    if ((Markup & 0x80000000) != 0)
    {
      v17 = Markup;
      v19 = v56;
      goto LABEL_36;
    }

    v57 = v20;
    v25 = v55;
    v26 = v58;
    while (1)
    {
      if (!v73)
      {
        v37 = cstdlib_strlen(v25) + 1;
        if ((v26 & 1) == 0)
        {
          v22 += v37;
          v23 = 1;
          v20 = v57;
          goto LABEL_8;
        }

        v39 = &v56[v22];
        cstdlib_memcpy(v39, v25, v37);
        v40 = &v39[v37];
        v19 = v56;
        *(v40 - 1) = 0;
        if (v59 != numberOfOccurrences(v56, __s))
        {
          *v56 = 0;
        }

        replaceSubstr(v56);
        v17 = pts_BinSearch(a1, v56, 0, &v64, &v62, &matched);
        v20 = v57;
        if ((v17 & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

        if (matched)
        {
          matched = pts_MatchSlots(a1, v57, v64, v62, v59, &v63, 0);
          if (matched)
          {
            v41 = *(a1 + 48);
            if (v41)
            {
              v42 = 0;
              v43 = *(a1 + 48);
              do
              {
                v42 = *(v64 + v63 - 1 + v43--) | (v42 << 8);
              }

              while (v43);
            }

            else
            {
              v42 = 0;
            }

            v44 = *(a1 + 104);
            if (v44)
            {
              v65 = (v44 + v42);
              goto LABEL_57;
            }

            v46 = *(a1 + 56);
            if (v46)
            {
              LODWORD(v47) = 0;
              v48 = -v46;
              v49 = (v41 + v46 + v63 + v64 - 1);
              do
              {
                v50 = *v49--;
                v47 = v50 | (v47 << 8);
              }

              while (!__CFADD__(v48++, 1));
            }

            else
            {
              v47 = 0;
            }

            v17 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 112) + v42), v47, &v65);
            if ((v17 & 0x80000000) == 0)
            {
              if (!matched)
              {
                goto LABEL_67;
              }

LABEL_57:
              v17 = fillInSlots(*a1, v65, v57, v59, *(a1 + 36), 0, &v67, 0);
              if ((v17 & 0x80000000) == 0)
              {
                v45 = v67;
                goto LABEL_68;
              }
            }

LABEL_36:
            if (v19)
            {
LABEL_37:
              heap_Free(*(*a1 + 8), v19);
            }

            if (v20)
            {
              heap_Free(*(*a1 + 8), v20);
            }

LABEL_40:
            if (!*(a1 + 104) && v65)
            {
              brk_DataUnmap(*(*a1 + 24), *(a1 + 64), v65);
            }

            return v17;
          }
        }

LABEL_67:
        v45 = cstdlib_strlen(v55) + 1;
        v67 = v45;
LABEL_68:
        v52 = heap_Realloc(*(*a1 + 8), *v54, v45);
        if (v52)
        {
          *v54 = v52;
          if (matched)
          {
            v17 = fillInSlots(*a1, v65, v57, v59, *(a1 + 36), v52, 0, 0);
          }

          else
          {
            cstdlib_strcpy(v52, v55);
          }

          goto LABEL_36;
        }

LABEL_71:
        v17 = 2686459914;
        goto LABEL_36;
      }

      v27 = findMarkup("slotend", a3, a4, a5, a6, v73, &v72, &v70, &v69, &v71);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_34;
      }

      if (v71)
      {
        break;
      }

      v36 = v73;
LABEL_28:
      v27 = findMarkup("slotbegin", a3, a4, a5, a6, v36, v76, &v75, &v74, &v73);
      if ((v27 & 0x80000000) != 0)
      {
LABEL_34:
        v17 = v27;
        v19 = v56;
        v20 = v57;
        goto LABEL_36;
      }
    }

    v28 = (v76[0] - v25);
    if (v26)
    {
      cstdlib_memcpy(&v56[v22], v25, v76[0] - v25);
      v29 = &v28[v22];
      v30 = cstdlib_strlen(__s);
      ++v59;
      cstdlib_memcpy(&v29[v56], __s, v30);
      v22 = &v29[v30];
      v31 = v72 - v73;
      cstdlib_memcpy(&v57[v21], v73, v72 - v73);
      v21 += v31 + 1;
      v35 = v74;
      if (!v60)
      {
        if (v74)
        {
          log_OutText(*(v68 + 32), &modInfoTBM, 1, 0, "Slot type is not supported by currently active Prompt Template Set", v32, v33, v34, v53);
        }

        v26 = v58;
        goto LABEL_27;
      }

      cstdlib_memcpy(&v57[v21], v75, v74);
      v26 = v58;
    }

    else
    {
      v22 += &v28[cstdlib_strlen(__s)];
      v21 = &v72[v21] - v73 + 1;
      if (!v60)
      {
LABEL_27:
        v25 = v71;
        v36 = v71;
        goto LABEL_28;
      }

      v35 = v74;
    }

    v21 += v35 + 1;
    goto LABEL_27;
  }

  return v17;
}

uint64_t pts_GetSlotPlaceholder(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 24);
  }

  return result;
}

uint64_t pts_BinSearch(uint64_t a1, char *__s1, unint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v6 = 2686459911;
  if (a4)
  {
    if (a1)
    {
      if (a5)
      {
        v8 = a6;
        if (a6)
        {
          if ((v10 = *(a1 + 40), __s1) && !a3 || !__s1 && a3 && !(a3 >> *(a1 + 128)))
          {
            *a4 = 0;
            *a6 = 0;
            *a5 = 0;
            *(a1 + 136) = 1;
            if (v10 >= 1)
            {
              v11 = 0;
              v12 = v10 - 1;
              v13 = 64 - __clz(a3);
              if (!a3)
              {
                v13 = 0;
              }

              v32 = v13;
              while (1)
              {
                v36 = v12;
                v14 = v11 + (v12 - v11) / 2;
                v16 = *(a1 + 80);
                v15 = *(a1 + 88);
                v17 = *(v16 + 4 * v14);
                v18 = *(v16 + 4 * (v14 + 1)) - v17;
                if (v15)
                {
                  v6 = 0;
                  v19 = (v15 + v17);
                  if (__s1)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_28;
                }

                __src = 0;
                v22 = *(a1 + 136);
                v23 = *(a1 + 120);
                if (v22 >> *(a1 + 128))
                {
                  v22 = 0;
                  v24 = *v23;
                }

                else
                {
                  v19 = v23[v22];
                  if (v19)
                  {
                    v6 = 0;
                    goto LABEL_27;
                  }

                  v24 = 0;
                }

                v25 = heap_Realloc(*(*a1 + 8), v24, v18);
                if (!v25)
                {
                  return 2686459914;
                }

                *(*(a1 + 120) + 8 * v22) = v25;
                v26 = brk_DataMap(*(*a1 + 24), *(a1 + 64), (*(a1 + 96) + v17), v18, &__src);
                if ((v26 & 0x80000000) != 0)
                {
                  return v26;
                }

                cstdlib_memcpy(*(*(a1 + 120) + 8 * v22), __src, v18);
                v6 = brk_DataUnmap(*(*a1 + 24), *(a1 + 64), __src);
                if ((v6 & 0x80000000) != 0)
                {
                  return v6;
                }

                v19 = *(*(a1 + 120) + 8 * v22);
LABEL_27:
                v8 = a6;
                if (__s1)
                {
LABEL_16:
                  v20 = cstdlib_strcmp(__s1, v19);
                  *(a1 + 136) = (v20 > 0) | (2 * *(a1 + 136));
                  if (v20 > 0)
                  {
                    goto LABEL_33;
                  }

                  if ((v20 & 0x80000000) == 0)
                  {
LABEL_18:
                    *v8 = 1;
                    v21 = cstdlib_strlen(v19);
                    *a5 = v18 - (v21 + 1);
                    *a4 = &v19[v21 + 1];
                    goto LABEL_34;
                  }

                  goto LABEL_41;
                }

LABEL_28:
                v27 = *(a1 + 136);
                v28 = 64 - __clz(v27);
                if (!v27)
                {
                  v28 = 0;
                }

                if (v28 >= v32)
                {
                  v29 = 0;
                }

                else
                {
                  if ((a3 >> (v32 + ~v28)))
                  {
                    *(a1 + 136) = (2 * v27) | 1;
LABEL_33:
                    v11 = v14 + 1;
LABEL_34:
                    v12 = v36;
                    goto LABEL_35;
                  }

                  v29 = -1;
                }

                *(a1 + 136) = 2 * v27;
                if ((v29 & 0x80000000) == 0)
                {
                  goto LABEL_18;
                }

LABEL_41:
                v12 = v14 - 1;
LABEL_35:
                if (*v8 || v11 > v12)
                {
                  return v6;
                }
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t pts_GetFormat(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 8);
  }

  return result;
}

uint64_t pts_GetVersion(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 16);
  }

  return result;
}

uint64_t pts_GetNumberOfTemplates(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 40);
  }

  return result;
}

uint64_t pts_GetInputOffsets(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 80);
  }

  return result;
}

uint64_t pts_GetInputs(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 88);
  }

  return result;
}

uint64_t pts_GetOutputs(uint64_t a1, int a2, void *a3)
{
  result = safeh_HandleCheck(a1, a2, 1060, 144);
  if ((result & 0x80000000) == 0)
  {
    *a3 = *(a1 + 104);
  }

  return result;
}

uint64_t makeTnSequence(char *a1, uint64_t a2)
{
  v4 = cstdlib_strlen(a1);
  result = ssftstring_Reserve(a2, v4 + 7);
  if ((result & 0x80000000) == 0)
  {
    result = ssftstring_Clear(a2);
    if ((result & 0x80000000) == 0)
    {
      result = ssftstring_AppendChar(a2, 27);
      if ((result & 0x80000000) == 0)
      {
        result = ssftstring_AppendCStr(a2, "\\tn=");
        if ((result & 0x80000000) == 0)
        {
          result = ssftstring_AppendCStr(a2, a1);
          if ((result & 0x80000000) == 0)
          {

            return ssftstring_AppendCStr(a2, "\");
          }
        }
      }
    }
  }

  return result;
}

uint64_t findMarkup(char *__s, _WORD *a2, int a3, void *a4, int a5, char *a6, char **a7, char **a8, void *a9, void *a10)
{
  v38 = 0;
  v10 = 2686459911;
  if (__s)
  {
    if (*__s)
    {
      v36 = cstdlib_strlen(__s);
      if (a7)
      {
        if (a8 && a9 && a10)
        {
          *a7 = 0;
          *a8 = 0;
          *a10 = 0;
          *a9 = 0;
          if (a6 && (v18 = cstdlib_strlen(a6), (v19 = esc_seq_strstr(a2, a3, a4, a5, a6, &v38)) != 0))
          {
            v35 = a8;
            v20 = &a6[v18];
            while (1)
            {
              *a7 = v19;
              v21 = &v19[v38];
              if (*v21 == 92)
              {
                v22 = v21 + 2;
                do
                {
                  v23 = v22;
                  if (v22 > v20)
                  {
                    break;
                  }

                  v24 = cstdlib_strchr("\r\n\t ", *(v22 - 1));
                  v22 = v23 + 1;
                }

                while (v24);
                v21 = v23 - 1;
                v25 = &v23[v36 - 1];
                if (v25 < v20 && !LH_strnicmp((v23 - 1), __s, v36))
                {
                  if (&v23[v36] <= v20)
                  {
                    while (cstdlib_strchr("\r\n\t ", *v25))
                    {
                      v21 = v25 + 1;
                      v26 = v25 + 2;
                      ++v25;
                      if (v26 > v20)
                      {
                        goto LABEL_20;
                      }
                    }
                  }

                  v21 = v25;
LABEL_20:
                  v27 = *v21;
                  if (v27 == 61)
                  {
                    v28 = v21 + 1;
                    do
                    {
                      if ((v28 + 1) > v20)
                      {
                        *v35 = v28;
                        v31 = v28;
                        goto LABEL_31;
                      }

                      v29 = *v28++;
                    }

                    while (cstdlib_strchr("\r\n\t ", v29));
                    v30 = v28 - 1;
                    *v35 = v30;
                    while (!cstdlib_strchr("\r\n\t \", *v30))
                    {
                      v31 = v30 + 1;
                      v32 = v30 + 2;
                      ++v30;
                      if (v32 > v20)
                      {
                        goto LABEL_30;
                      }
                    }

                    v31 = v30;
LABEL_30:
                    v28 = *v35;
LABEL_31:
                    *a9 = v31 - v28;
                    if ((v31 + 1) <= v20)
                    {
                      while (cstdlib_strchr("\r\n\t ", *v31))
                      {
                        v21 = v31 + 1;
                        v33 = v31 + 2;
                        ++v31;
                        if (v33 > v20)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    v21 = v31;
LABEL_35:
                    v27 = *v21;
                  }

                  if (v27 == 92)
                  {
                    break;
                  }
                }
              }

              v19 = esc_seq_strstr(a2, a3, a4, a5, v21, &v38);
              if (!v19)
              {
                return 0;
              }
            }

            v10 = 0;
            *a10 = v21 + 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v10;
}

char *replaceSubstr(char *result)
{
  if (result)
  {
    result = cstdlib_strstr(result, "\r\n");
    if (result)
    {
      v1 = result;
      v2 = cstdlib_strlen("\r\n");
      result = cstdlib_strlen("\n");
      if (v2 >= result)
      {
        v3 = result;
        do
        {
          v4 = cstdlib_strlen(&v1[v2]);
          cstdlib_memmove(&v1[v3], &v1[v2], v4 + 1);
          cstdlib_memcpy(v1, "\n", v3);
          result = cstdlib_strstr(&v1[v3], "\r\n");
          v1 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t get_cb(char *__s1, unsigned int a2)
{
  v4 = 5;
  for (i = &cbTable; cstdlib_strcmp(__s1, i) || a2 >= 3; i += 56)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  return *&i[qword_26ED4B6C8[a2]];
}

const char *get_parent(char *__s1)
{
  v2 = &cbTable;
  v3 = 5;
  v4 = "";
  while (cstdlib_strcmp(__s1, v2))
  {
    v2 += 56;
    if (!--v3)
    {
      return v4;
    }
  }

  return v2 + 16;
}

uint64_t pts_ReadTextData(_WORD *a1, int a2, const void *a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v109 = *MEMORY[0x277D85DE8];
  v7 = 2686459914;
  if (!a5)
  {
    return 2686459911;
  }

  v96 = 0;
  if ((InitRsrcFunction(a1, a2, &v96) & 0x80000000) != 0)
  {
    return 2686459911;
  }

  *a5 = safeh_GetNullHandle();
  a5[1] = v15;
  v16 = heap_Calloc(*(v96 + 8), 1, 64);
  if (v16)
  {
    v17 = v16;
    v98 = 0;
    v107 = 0u;
    v108 = 0u;
    memset(v106, 0, sizeof(v106));
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    memset(__b, 0, sizeof(__b));
    cstdlib_memset(__b, 0, 0x1C0uLL);
    if ((InitRsrcFunction(a1, a2, &v98) & 0x80000000) != 0)
    {
      v7 = 2686459911;
    }

    else
    {
      v87 = a7;
      v88 = a6;
      v86 = a5;
      cstdlib_memset(v17, 0, 0x40uLL);
      v18 = v98;
      *v17 = v98;
      v97[1] = builtin_Alloc;
      v97[2] = builtin_Realloc;
      v97[3] = builtin_Free;
      v97[0] = *(v18 + 8);
      cstdlib_strcpy(__dst, "<>");
      cstdlib_memset(__b, 0, 0x1C0uLL);
      *&v101 = __dst;
      *&v107 = v17;
      *(&v107 + 1) = *v17;
      *&v102 = heap_Calloc(*(*(&v107 + 1) + 8), 4, 8);
      if (v102)
      {
        v19 = 0;
        do
        {
          do
          {
            ssftstring_ObjOpen(*(*(&v107 + 1) + 8), (v102 + 8 * v19++));
          }

          while (v19 != 4);
          DWORD2(v102) = -1;
          v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), &v103 + 1);
          if ((v20 & 0x80000000) != 0 || (v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), &v104), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), &v104 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), &v105), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), &v105 + 1), (v20 & 0x80000000) != 0) || (v20 = ssftstring_ObjOpen(*(*(&v107 + 1) + 8), v106), (v20 & 0x80000000) != 0))
          {
            v7 = v20;
            break;
          }

          MM = crnc3rdprtyrnm_XML_ParserCreate_MM(0, v97, 0);
          if (!MM)
          {
            goto LABEL_30;
          }

          v22 = MM;
          *&v108 = MM;
          crnc3rdprtyrnm_XML_SetElementHandler(MM, CB_start, CB_end);
          crnc3rdprtyrnm_XML_SetCharacterDataHandler(v22, CB_char);
          crnc3rdprtyrnm_XML_SetUserData(v22, __b);
          v23 = crnc3rdprtyrnm_XML_Parse(v22, a3, a4 - 1, 0);
          v24 = DWORD2(v108);
          if (v23)
          {
            if (DWORD2(v108) != -1608507392)
            {
              if (DWORD2(v108) == 1)
              {
LABEL_39:
                v24 = 2686459908;
                goto LABEL_40;
              }

              if ((DWORD2(v108) & 0x80000000) == 0)
              {
                v42 = pts_strclone(*(v98 + 8), (v17 + 16), &__b[12] + 4);
                if ((v42 & 0x80000000) != 0)
                {
                  v24 = v42;
                }

                else
                {
                  v24 = pts_strclone(*(v98 + 8), (v17 + 24), __dst);
                  if ((v24 & 0x80000000) == 0)
                  {
                    ssft_qsort(*(v17 + 48), *(v17 + 32), 48, compare_4);
                  }
                }
              }

LABEL_40:
              crnc3rdprtyrnm_XML_ParserFree(v22);
              DeiniState(__b);
              if ((v24 & 0x80000000) == 0)
              {
                v85 = v96;
                v43 = heap_Calloc(*(*v17 + 8), 1, 144);
                if (!v43)
                {
                  goto LABEL_106;
                }

                v44 = v43;
                *v43 = *v17;
                *(v43 + 116) = 1;
                v45 = pts_SetFormat(v43, *(v17 + 8));
                if ((v45 & 0x80000000) != 0)
                {
                  v24 = v45;
                  goto LABEL_31;
                }

                v24 = pts_strclone(*(*v17 + 8), (v44 + 16), *(v17 + 16));
                if ((v24 & 0x80000000) != 0)
                {
                  goto LABEL_31;
                }

                if (*(v44 + 32))
                {
                  v24 = pts_strclone(*(*v17 + 8), (v44 + 24), *(v17 + 24));
                  if ((v24 & 0x80000000) != 0)
                  {
                    goto LABEL_31;
                  }
                }

                else if (cstdlib_strcmp(*(v17 + 24), "<>"))
                {
                  log_OutText(*(v85 + 32), &modInfoTBM_0, 0, 0, "%s does not support custom slot place holders", v46, v47, v48, *(v17 + 8));
                  v24 = 2686459908;
                  goto LABEL_31;
                }

                *(v44 + 56) = 2;
                *(v44 + 40) = xmmword_26ED4B670;
                v89 = v24;
                if (*(v17 + 32))
                {
                  v49 = 0;
                  v50 = 0;
                  v51 = (*(v17 + 48) + 16);
                  do
                  {
                    if (!v49 || cstdlib_strcmp(v49, *v51))
                    {
                      ++*(v44 + 40);
                      v49 = *v51;
                    }

                    ++v50;
                    v51 += 6;
                  }

                  while (v50 < *(v17 + 32));
                  v52 = *(v44 + 40) + 1;
                  v24 = v89;
                }

                else
                {
                  v52 = 1;
                }

                v53 = heap_Calloc(*(*v17 + 8), v52, 4);
                *(v44 + 80) = v53;
                if (!v53)
                {
LABEL_106:
                  v24 = 2686459914;
                  goto LABEL_31;
                }

                if (*(v44 + 40))
                {
                  v61 = 0;
                  v62 = 0;
                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  __dst[0] = 0;
                  v66 = 1;
                  do
                  {
                    v67 = v66;
                    if (v65)
                    {
                      v68 = heap_Calloc(*(*v17 + 8), v62, 1);
                      *(v44 + 88) = v68;
                      if (!v68)
                      {
                        goto LABEL_106;
                      }

                      v69 = heap_Calloc(*(*v17 + 8), v61, 1);
                      *(v44 + 104) = v69;
                      if (!v69)
                      {
                        goto LABEL_106;
                      }

                      v63 = v69;
                      v62 = 0;
                      v61 = 0;
                      v64 = *(v44 + 88);
                    }

                    v84 = v67;
                    if (*(v17 + 32))
                    {
                      v90 = v63;
                      v94 = 0;
                      v70 = 0;
                      v71 = 0;
                      v72 = 0;
                      v73 = *(v17 + 48);
                      do
                      {
                        if (v70 && !cstdlib_strcmp(v70, *(v73 + 16)))
                        {
                          v95 = v62;
                        }

                        else
                        {
                          *(*(v44 + 80) + 4 * v71) = v62;
                          if (v64)
                          {
                            cstdlib_strcpy((v64 + v62), *(v73 + 16));
                          }

                          v74 = *(v73 + 16);
                          if (v74)
                          {
                            v62 += cstdlib_strlen(v74) + 1;
                          }

                          ++v71;
                          v94 = v62;
                          v95 = v62;
                        }

                        v92 = *(v73 + 16);
                        v93 = v71;
                        v91 = cstdlib_strlen(*(v73 + 40));
                        if (v63)
                        {
                          cstdlib_strcpy((v63 + v61), *(v73 + 40));
                        }

                        v62 = v95;
                        if (*(v73 + 24))
                        {
                          v75 = 0;
                          v76 = *(v73 + 32);
                          v62 = v95;
                          do
                          {
                            if (v64)
                            {
                              cstdlib_strcpy((v64 + v62), v76);
                            }

                            v62 += cstdlib_strlen(v76) + 1;
                            v76 += cstdlib_strlen(v76) + 1;
                            if (*(v17 + 56))
                            {
                              if (v64)
                              {
                                cstdlib_strcpy((v64 + v62), v76);
                              }

                              v62 += cstdlib_strlen(v76) + 1;
                              v76 += cstdlib_strlen(v76) + 1;
                            }

                            ++v75;
                          }

                          while (v75 < *(v73 + 24));
                        }

                        v77 = *(v44 + 48);
                        if (v77)
                        {
                          v78 = 0;
                          v79 = v61;
                          do
                          {
                            __dst[0] = v79;
                            if (v64)
                            {
                              cstdlib_memcpy((v64 + v62), __dst, 1uLL);
                              v77 = *(v44 + 48);
                            }

                            ++v62;
                            v79 >>= 8;
                            ++v78;
                          }

                          while (v78 < v77);
                        }

                        v80 = *(v44 + 56);
                        if (v80)
                        {
                          v81 = 0;
                          v82 = v91 + 1;
                          do
                          {
                            __dst[0] = v82;
                            if (v64)
                            {
                              cstdlib_memcpy((v64 + v62), __dst, 1uLL);
                              v80 = *(v44 + 56);
                            }

                            ++v62;
                            v82 >>= 8;
                            ++v81;
                          }

                          while (v81 < v80);
                        }

                        v24 = v89;
                        v71 = v93;
                        if (v64)
                        {
                          v56 = v95 - v94;
                          if (v95 > v94)
                          {
                            __b[0] = 0;
                            if (pts_MatchSlots(v44, v64 + v95, v64 + v94, v56, *(v73 + 24), 0, __b))
                            {
                              log_OutText(*(v85 + 32), &modInfoTBM_0, 0, 0, "line %i: Template not reachable; covered by template in line %i", v58, v59, v60, *(v73 + 8));
                            }
                          }
                        }

                        v61 += v91 + 1;
                        v73 += 48;
                        ++v72;
                        v63 = v90;
                        v70 = v92;
                      }

                      while (v72 < *(v17 + 32));
                    }

                    else
                    {
                      v71 = 0;
                    }

                    v66 = 0;
                    *(*(v44 + 80) + 4 * v71) = v62;
                    v65 = 1;
                  }

                  while ((v84 & 1) != 0);
                }

                else
                {
                  v62 = 0;
                  v61 = 0;
                }

                if (v88)
                {
                  *v88 = v62;
                  *v87 = v61;
                }

                if ((v24 & 0x80000000) == 0)
                {
                  v24 = pts_CheckDataConsistency(v44, v54, v55, v56, v57, v58, v59, v60);
                  if ((v24 & 0x80000000) == 0)
                  {
                    *v86 = v44;
                    *(v86 + 2) = 1060;
                  }
                }
              }

LABEL_31:
              v40 = *(*v17 + 8);
              intpts_FreeContent(v17);
              heap_Free(v40, v17);
              return v24;
            }
          }

          else
          {
            v25 = DWORD2(v108);
            v26 = *(v98 + 32);
            CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v22);
            ErrorCode = crnc3rdprtyrnm_XML_GetErrorCode(v22);
            crnc3rdprtyrnm_XML_ErrorString(ErrorCode);
            v29 = v26;
            v24 = v25;
            log_OutText(v29, &modInfoTBM_0, 0, 0, "XML error in line %d: %s", v30, v31, v32, CurrentLineNumber);
            if ((v25 & 0x80000000) == 0)
            {
              goto LABEL_39;
            }

            if (v25 != -1608507392)
            {
              goto LABEL_40;
            }
          }

          v33 = cstdlib_strlen(__dst);
          if (((v33 + 3) & 0xFFFFFFFC) > 0x63uLL)
          {
            log_OutText(*(v98 + 32), &modInfoTBM_0, 0, 0, "Can't find suitable slot placeholder", v34, v35, v36, v83);
            goto LABEL_39;
          }

          v37 = v33 + 2;
          if (v33 <= 0xFFFFFFFD)
          {
            v38 = __dst;
            v39 = v37 >> 1;
            do
            {
              *v38 = 60;
              v38[v37 >> 1] = 62;
              ++v38;
              --v39;
            }

            while (v39);
          }

          __dst[v37] = 0;
          DeiniState(__b);
          intpts_FreeContent(v17);
          cstdlib_memset(v17, 0, 0x40uLL);
          *v17 = v98;
          crnc3rdprtyrnm_XML_ParserFree(v22);
          cstdlib_memset(__b, 0, 0x1C0uLL);
          *&v101 = __dst;
          *&v107 = v17;
          *(&v107 + 1) = *v17;
          v19 = 0;
          *&v102 = heap_Calloc(*(*(&v107 + 1) + 8), 4, 8);
        }

        while (v102);
      }

      DeiniState(__b);
    }

LABEL_30:
    v24 = v7;
    goto LABEL_31;
  }

  return v7;
}

uint64_t CB_start_pts(uint64_t a1, char **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v4 = 0;
LABEL_26:
    if (!cstdlib_strcmp(a1, "") || !cstdlib_strcmp((a1 + 200), ""))
    {
      v4 = 2686459908;
      v15 = *(a1 + 432);
      v16 = *(*(a1 + 424) + 32);
      CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v15);
      log_OutText(v16, &modInfoTBM_0, 0, 0, "line %d: Missing '%s'", v18, v19, v20, CurrentLineNumber);
    }

    return v4;
  }

  v4 = 0;
  v5 = a2 + 1;
  while (LH_stricmp(v3, "format"))
  {
    if (LH_stricmp(*(v5 - 1), "version"))
    {
      if (LH_stricmp(*(v5 - 1), "esc"))
      {
        v6 = *(*(a1 + 424) + 32);
        v10 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
        v11 = *(a1 + 328);
        if ((v11 & 0x80000000) == 0)
        {
          ssftstring_CStr(*(*(a1 + 320) + 8 * v11));
        }

        log_OutText(v6, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v7, v8, v9, v10);
        v4 = 1;
        goto LABEL_23;
      }

      v13 = *v5;
      if (*v5)
      {
        v14 = (a1 + 200);
        goto LABEL_17;
      }
    }

    else
    {
      v13 = *v5;
      if (*v5)
      {
        v14 = (a1 + 100);
LABEL_17:
        cstdlib_strcpy(v14, v13);
      }
    }

LABEL_23:
    v3 = v5[1];
    v5 += 2;
    if (!v3)
    {
      goto LABEL_26;
    }
  }

  if (!*v5)
  {
    goto LABEL_23;
  }

  cstdlib_strcpy(a1, *v5);
  v12 = *(a1 + 416);
  *(v12 + 56) = 1;
  if (!cstdlib_strcmp(a1, "Text Template 2.2"))
  {
    v4 = pts_strclone(*(*v12 + 8), (v12 + 8), "Binary Template 2.2");
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (cstdlib_strcmp(a1, "Text Template 2.0"))
  {
    goto LABEL_31;
  }

  v4 = pts_strclone(*(*v12 + 8), (v12 + 8), "Binary Template 2.0");
  if ((v4 & 0x80000000) == 0)
  {
    *(v12 + 56) = 0;
LABEL_20:
    if (cstdlib_strcmp(a1, "Text Template 2.0"))
    {
      *(a1 + 312) = 1;
    }

    else
    {
      *(a1 + 312) = 0;
    }

    goto LABEL_23;
  }

LABEL_30:
  if (v4 != -1608507385)
  {
    return v4;
  }

LABEL_31:
  v22 = *(*(a1 + 424) + 32);
  v23 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
  log_OutText(v22, &modInfoTBM_0, 0, 0, "line %d: Unsupported format: '%s'; use '%s' instead.", v24, v25, v26, v23);
  return 2686459911;
}

uint64_t CB_start_template(uint64_t a1, void *a2)
{
  *(a1 + 408) = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
  *(a1 + 332) = 0;
  if (!*a2)
  {
    return 0;
  }

  v4 = *(*(a1 + 424) + 32);
  CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
  v9 = *(a1 + 328);
  if ((v9 & 0x80000000) == 0)
  {
    ssftstring_CStr(*(*(a1 + 320) + 8 * v9));
  }

  log_OutText(v4, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v5, v6, v7, CurrentLineNumber);
  return 1;
}

uint64_t CB_end_template(uint64_t a1)
{
  v2 = ssftstring_CStrDetach(*(a1 + 376));
  v3 = ssftstring_CStrDetach(*(a1 + 384));
  if (!*(a1 + 332))
  {
    v10 = "line %d: Missing <input>...</input>";
    goto LABEL_7;
  }

  if (!*(a1 + 336))
  {
    v10 = "line %d: Missing <output>...</output>";
LABEL_7:
    v11 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
    log_OutText(v11, &modInfoTBM_0, 0, 0, v10, v13, v14, v15, CurrentLineNumber);
    v16 = 1;
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 408);
  v4 = *(a1 + 416);
  v6 = *(a1 + 400);
  v7 = v4[4];
  v8 = v4[5];
  if (v7 < 1000 * v8)
  {
    v9 = v4[6];
LABEL_14:
    v16 = 0;
    v19 = (v9 + 48 * v7);
    v19[5] = v3;
    v19[2] = v2;
    v19[4] = *(a1 + 392);
    *(a1 + 392) = 0;
    v19[3] = v6;
    *v19 = v7;
    v19[1] = v5;
    v4[4] = v7 + 1;
    goto LABEL_15;
  }

  v17 = 48000 * v8 + 48000;
  v18 = *(*v4 + 8);
  if (v8)
  {
    v9 = heap_Realloc(v18, v4[6], v17);
    if (v9)
    {
LABEL_13:
      v7 = v4[4];
      ++v4[5];
      v4[6] = v9;
      goto LABEL_14;
    }
  }

  else
  {
    v9 = heap_Alloc(v18, v17);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  v16 = 2686459914;
  if (v2)
  {
LABEL_8:
    heap_Free(*(*(a1 + 424) + 8), v2);
  }

LABEL_9:
  if (v3)
  {
    heap_Free(*(*(a1 + 424) + 8), v3);
  }

LABEL_15:
  v20 = *(a1 + 392);
  if (v20)
  {
    heap_Free(*(*(a1 + 424) + 8), v20);
  }

  return v16;
}

uint64_t CB_start_input(uint64_t a1, void *a2)
{
  ssftstring_Clear(*(a1 + 344));
  ssftstring_Clear(*(a1 + 368));
  *(a1 + 400) = 0;
  if (*(a1 + 332))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: Unexpected <input>", v7, v8, v9, CurrentLineNumber);
  }

  else
  {
    *(a1 + 332) = 1;
    if (!*a2)
    {
      return 0;
    }

    v10 = *(*(a1 + 424) + 32);
    v14 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
    v15 = *(a1 + 328);
    if ((v15 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v15));
    }

    log_OutText(v10, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v11, v12, v13, v14);
  }

  return 1;
}

uint64_t CB_end_input(uint64_t a1)
{
  v2 = ssftstring_CStrWritable(*(a1 + 344));
  if (v2 && (v3 = v2, *v2))
  {
    replaceAltEsc(v2, (a1 + 200));
    v4 = *(a1 + 400);
    if (v4 == numberOfOccurrences(v3, *(a1 + 304)))
    {
      v5 = ssftstring_AssignCStr(*(a1 + 376), v3);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(a1 + 392);
        if (v6)
        {
          heap_Free(*(*(a1 + 424) + 8), v6);
          *(a1 + 392) = 0;
        }

        v7 = ssftstring_Size(*(a1 + 368));
        if (v7)
        {
          v8 = v7;
          v9 = heap_Alloc(*(*(a1 + 424) + 8), v7);
          *(a1 + 392) = v9;
          if (v9)
          {
            v10 = ssftstring_CStrWritable(*(a1 + 368));
            cstdlib_memcpy(*(a1 + 392), v10, v8);
          }

          else
          {
            return 2686459914;
          }
        }
      }
    }

    else
    {
      v5 = 2686459908;
      if (*(a1 + 312))
      {
        return 2686459904;
      }

      else
      {
        v18 = *(*(a1 + 424) + 32);
        CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
        log_OutText(v18, &modInfoTBM_0, 0, 0, "line %d: '%s' in input not allowed", v20, v21, v22, CurrentLineNumber);
      }
    }
  }

  else
  {
    v5 = 2686459908;
    v11 = *(a1 + 432);
    v12 = *(*(a1 + 424) + 32);
    v13 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v11);
    log_OutText(v12, &modInfoTBM_0, 0, 0, "line %d: empty input not allowed", v14, v15, v16, v13);
  }

  return v5;
}

uint64_t CB_start_output(uint64_t a1, void *a2)
{
  ssftstring_Clear(*(a1 + 384));
  ssftstring_Clear(*(a1 + 344));
  if (*(a1 + 336))
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v4);
    v10 = "line %d: Unexpected <output>";
LABEL_3:
    log_OutText(v5, &modInfoTBM_0, 0, 0, v10, v7, v8, v9, CurrentLineNumber);
    return 1;
  }

  *(a1 + 336) = 1;
  if (!*(a1 + 332))
  {
    v18 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v18);
    v10 = "line %d: Missing <input>...</input>";
    goto LABEL_3;
  }

  if (*a2)
  {
    v12 = *(*(a1 + 424) + 32);
    v16 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
    v17 = *(a1 + 328);
    if ((v17 & 0x80000000) == 0)
    {
      ssftstring_CStr(*(*(a1 + 320) + 8 * v17));
    }

    log_OutText(v12, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v13, v14, v15, v16);
    return 1;
  }

  return 0;
}

uint64_t CB_end_output(uint64_t a1)
{
  v11 = "";
  v2 = ssftstring_CStrWritable(*(a1 + 344));
  replaceAltEsc(v2, (a1 + 200));
  v3 = ssftstring_AssignCStr(*(a1 + 384), v2);
  if ((v3 & 0x80000000) == 0 && (fillInSlots(*(a1 + 424), v2, *(a1 + 392), *(a1 + 400), *(*(a1 + 416) + 56), 0, 0, &v11) & 0x80000000) != 0)
  {
    v4 = *(a1 + 432);
    v5 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(v4);
    log_OutText(v5, &modInfoTBM_0, 0, 0, "line %d: %s", v7, v8, v9, CurrentLineNumber);
    return 1;
  }

  return v3;
}

uint64_t CB_start_slot(uint64_t a1, const char **a2)
{
  ssftstring_Clear(*(a1 + 352));
  result = ssftstring_AssignCStr(*(a1 + 360), "*");
  if ((result & 0x80000000) == 0)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2 + 2;
      do
      {
        if (cstdlib_strcmp("type", v5) || *(*(a1 + 416) + 56) != 1)
        {
          v7 = *(*(a1 + 424) + 32);
          CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
          v12 = *(a1 + 328);
          if ((v12 & 0x80000000) == 0)
          {
            ssftstring_CStr(*(*(a1 + 320) + 8 * v12));
          }

          log_OutText(v7, &modInfoTBM_0, 0, 0, "line %d: Unknown attribute '%s' of '%s'", v8, v9, v10, CurrentLineNumber);
          result = 1;
        }

        else
        {
          result = ssftstring_AssignCStr(*(a1 + 360), *(v6 - 1));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        v13 = *v6;
        v6 += 2;
        v5 = v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t CB_end_slot(uint64_t a1)
{
  v2 = ssftstring_CStrWritable(*(a1 + 352));
  v3 = ssftstring_CStrWritable(*(a1 + 360));
  if (!v2 || (replaceAltEsc(v2, (a1 + 200)), result = ssftstring_AppendCStr(*(a1 + 368), v2), (result & 0x80000000) == 0))
  {
    result = ssftstring_AppendChar(*(a1 + 368), 0);
    if ((result & 0x80000000) == 0)
    {
      if (*(*(a1 + 416) + 56) != 1 || (!v3 || (result = ssftstring_AppendCStr(*(a1 + 368), v3), (result & 0x80000000) == 0)) && (result = ssftstring_AppendChar(*(a1 + 368), 0), (result & 0x80000000) == 0))
      {
        ++*(a1 + 400);
        v5 = *(a1 + 304);
        v6 = cstdlib_strlen(v5);
        v7 = *(a1 + 344);

        return ssftstring_AppendCStrN(v7, v5, v6);
      }
    }
  }

  return result;
}

char *replaceAltEsc(char *result, char *__s2)
{
  if (result)
  {
    if (__s2)
    {
      if (*__s2)
      {
        v3 = result;
        result = cstdlib_strstr(result, __s2);
        if (result)
        {
          v4 = result;
          v5 = cstdlib_strlen(__s2);
          do
          {
            *v4 = 27;
            v6 = cstdlib_strlen(&v4[v5]);
            cstdlib_memmove(v4 + 1, &v4[v5], v6 + 1);
            result = cstdlib_strstr(v3, __s2);
            v4 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

uint64_t CB_start(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = &cbTable;
  v7 = 5;
  v8 = "";
  while (cstdlib_strcmp(__s1, v6))
  {
    v6 += 56;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  v8 = v6 + 16;
LABEL_6:
  v9 = *(a1 + 328);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = "";
  }

  else
  {
    v10 = ssftstring_CStr(*(*(a1 + 320) + 8 * v9));
  }

  if (cstdlib_strcmp(v8, v10))
  {
    v11 = *(*(a1 + 424) + 32);
    CurrentLineNumber = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
    v13 = &cbTable;
    v14 = 5;
    do
    {
      if (!cstdlib_strcmp(__s1, v13))
      {
        break;
      }

      v13 += 56;
      --v14;
    }

    while (v14);
    v22 = &cbTable;
    v23 = 5;
    do
    {
      if (!cstdlib_strcmp(__s1, v22))
      {
        break;
      }

      v22 += 56;
      --v23;
    }

    while (v23);
    v21 = -1608507388;
    log_OutText(v11, &modInfoTBM_0, 0, 0, "line %i: Unexpected <%s> inside <%s>...</%s>", v24, v25, v26, CurrentLineNumber);
  }

  else
  {
    v15 = *(a1 + 328);
    if (v15 < 3)
    {
      v28 = v15 + 1;
      *(a1 + 328) = v28;
      v21 = ssftstring_AssignCStr(*(*(a1 + 320) + 8 * v28), __s1);
      if ((v21 & 0x80000000) == 0)
      {
        v29 = &cbTable;
        v30 = 5;
        while (cstdlib_strcmp(__s1, v29))
        {
          v29 += 56;
          if (!--v30)
          {
            goto LABEL_20;
          }
        }

        v31 = *(v29 + 4);
        if (v31)
        {
          v21 = v31(a1, a3);
          if ((v21 & 0x80000000) == 0)
          {
            setError(a1, v21);
          }
        }
      }
    }

    else
    {
      v16 = *(*(a1 + 424) + 32);
      v17 = crnc3rdprtyrnm_XML_GetCurrentLineNumber(*(a1 + 432));
      log_OutText(v16, &modInfoTBM_0, 0, 0, "line %d: XML parsing stack too small", v18, v19, v20, v17);
      v21 = -1608507382;
    }
  }

LABEL_20:

  return setError(a1, v21);
}

uint64_t CB_end(uint64_t a1, char *__s1)
{
  v4 = 5;
  v5 = &cbTable;
  while (cstdlib_strcmp(__s1, v5))
  {
    v5 += 56;
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  v6 = *(v5 + 6);
  if (v6)
  {
    v7 = v6(a1);
    if (v7 < 0)
    {
      goto LABEL_11;
    }

    setError(a1, v7);
  }

LABEL_8:
  v8 = *(a1 + 328);
  if (v8 < 0)
  {
    v7 = -1608507388;
  }

  else
  {
    v7 = 0;
    *(a1 + 328) = v8 - 1;
  }

LABEL_11:

  return setError(a1, v7);
}

uint64_t CB_char(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 328);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = "";
  }

  else
  {
    v7 = ssftstring_CStr(*(*(a1 + 320) + 8 * v6));
  }

  v8 = &cbTable;
  v9 = 5;
  while (cstdlib_strcmp(v7, v8))
  {
    v8 += 56;
    if (!--v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *(v8 + 5);
  if (!v10)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10(a1, a2, a3);
  if ((v11 & 0x80000000) == 0)
  {
    setError(a1, v11);
  }

LABEL_12:

  return setError(a1, v11);
}

void *DeiniState(uint64_t a1)
{
  if (*(a1 + 320))
  {
    for (i = 0; i != 32; i += 8)
    {
      ssftstring_ObjClose(*(*(a1 + 320) + i));
    }

    heap_Free(*(*(a1 + 424) + 8), *(a1 + 320));
  }

  ssftstring_ObjClose(*(a1 + 344));
  ssftstring_ObjClose(*(a1 + 352));
  ssftstring_ObjClose(*(a1 + 360));
  ssftstring_ObjClose(*(a1 + 368));
  ssftstring_ObjClose(*(a1 + 376));
  ssftstring_ObjClose(*(a1 + 384));

  return cstdlib_memset(a1, 0, 0x1C0uLL);
}

void *intpts_FreeContent(void *result)
{
  v1 = result;
  v2 = *(*result + 8);
  v3 = result[2];
  if (v3)
  {
    result = heap_Free(*(*result + 8), v3);
    v1[2] = 0;
  }

  v4 = v1[1];
  if (v4)
  {
    result = heap_Free(v2, v4);
    v1[1] = 0;
  }

  v5 = v1[3];
  if (v5)
  {
    result = heap_Free(v2, v5);
    v1[3] = 0;
  }

  v6 = v1[6];
  if (v6)
  {
    if (v1[4])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v1[6];
        if (v9)
        {
          v10 = v9 + v7;
          v11 = *(v9 + v7 + 16);
          if (v11)
          {
            heap_Free(v2, v11);
            *(v10 + 16) = 0;
          }

          v12 = *(v10 + 32);
          if (v12)
          {
            heap_Free(v2, v12);
            *(v10 + 32) = 0;
          }

          v13 = v9 + v7;
          v14 = *(v13 + 40);
          if (v14)
          {
            heap_Free(v2, v14);
            *(v13 + 40) = 0;
          }
        }

        ++v8;
        v7 += 48;
      }

      while (v8 < v1[4]);
      v6 = v1[6];
    }

    result = heap_Free(v2, v6);
    v1[6] = 0;
  }

  return result;
}