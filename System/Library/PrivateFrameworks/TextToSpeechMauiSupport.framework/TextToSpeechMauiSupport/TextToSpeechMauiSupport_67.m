uint64_t synth_bet3_loc_ParamGetListen_0(uint64_t a1, _BYTE *a2, signed int a3, signed int a4, unsigned int a5, __int128 *a6, unsigned int *a7)
{
  if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), a2, a7) & 0x80000000) != 0 || (a5 = a3, *a7 < a3) || (a5 = a4, *a7 > a4))
  {
    v14 = paramc_ParamSetInt(*(*(a1 + 16) + 40), a2, a5);
    *a7 = a5;
    if ((v14 & 0x80000000) != 0)
    {
      v20 = v14;
      v21 = *(*(a1 + 16) + 32);
      v25 = "parameter";
      v23 = "%s%s";
      v22 = 56009;
      goto LABEL_8;
    }
  }

  v19 = *(*(a1 + 16) + 40);
  v26 = *a6;
  v27 = *(a6 + 2);
  v20 = paramc_ListenerAdd(v19, a2, &v26);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = *(*(a1 + 16) + 32);
    v22 = 56010;
    v23 = 0;
LABEL_8:
    log_OutPublic(v21, "SYNTH_BET3", v22, v23, v15, v16, v17, v18, v25);
  }

  return v20;
}

uint64_t synth_bet3_loc_SynthInit_MRCC(uint64_t a1)
{
  v18 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  *(a1 + 1332) = 0;
  *(a1 + 1340) = 100;
  RccSyn__deinit_Synthesis(a1 + 1048);
  v21 = 0;
  v20 = 0;
  inited = paramc_ParamGet(*(v2 + 40), "mrcc_synthparam_ref_ptr", &v20, &v21);
  if ((inited & 0x80000000) == 0)
  {
    v4 = *v20;
    *(v4 + 128) = 4000;
    *(v4 + 112) = xmmword_26ED6DBB0;
    *(a1 + 1056) = v4 + 112;
    *(a1 + 1320) = 0;
    inited = RccSyn__init_Synthesis(v2, a1 + 1048, v4);
    if ((inited & 0x80000000) == 0)
    {
      v5 = *(v4 + 16);
      if (v5 == 22000)
      {
        v5 = 22050;
        *(v4 + 16) = 22050;
      }

      *(a1 + 48) = v5;
      v6 = (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) == 0 && cstdlib_strcmp(__s1, "bet3") == 0;
      *(a1 + 52) = v6;
      Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v18);
      if ((Int & 0x80000000) != 0)
      {
        Str = Int;
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v8, v9, v10, v11, "parameter");
        return Str;
      }

      *(a1 + 44) = v18 * *(a1 + 48) / 0x3E8u;
      Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
      if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
      {
        log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 26011, "%s%s", v12, v13, v14, v15, "parameter");
        return Str;
      }

      *(a1 + 56) = LH_atoi(__s1);
      paramc_ParamRelease(*(v2 + 40));
      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v18 + 1);
      if ((inited & 0x80000000) == 0)
      {
        inited = synth_bet3_loc_ParamSet_0(a1, "volume", HIDWORD(v18));
        if ((inited & 0x80000000) == 0)
        {
          inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v18 + 1);
          if ((inited & 0x80000000) == 0)
          {
            inited = synth_bet3_loc_ParamSet_0(a1, "rate", HIDWORD(v18));
            if ((inited & 0x80000000) == 0)
            {
              inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v18 + 1);
              if ((inited & 0x80000000) == 0)
              {
                inited = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", HIDWORD(v18));
                if ((inited & 0x80000000) == 0)
                {
                  inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v18 + 1);
                  if ((inited & 0x80000000) == 0)
                  {
                    inited = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", HIDWORD(v18));
                    if ((inited & 0x80000000) == 0)
                    {
                      inited = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v18 + 1);
                      if ((inited & 0x80000000) == 0)
                      {
                        return synth_bet3_loc_ParamSet_0(a1, "pitch", HIDWORD(v18));
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

  return inited;
}

uint64_t synth_bet3_loc_SynthInit_MLSA_0(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = 0;
  __s1 = 0;
  v2 = *(a1 + 16);
  v43 = 0;
  v42 = 0;
  __b = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  Int = paramc_ParamGetInt(*(v2 + 40), "frequencyhz", &v44 + 1);
  if ((Int & 0x80000000) != 0 || ((MFVSyn__denit__MVF_Synthesis((a1 + 64)), *(a1 + 48) = HIDWORD(v44), (paramc_ParamGetStr(*(v2 + 40), "voicemodel", &__s1) & 0x80000000) != 0) ? (v8 = 0) : (v8 = cstdlib_strcmp(__s1, "bet3") == 0), *(a1 + 52) = v8, cstdlib_memset(&__b, 0, 0x28uLL), v41 = xmmword_26ED6DBC0, LODWORD(__b) = wave_t__convertFromF0ToTp_SR(0xAF00u, SHIDWORD(v44)) >> 6, DWORD1(__b) = wave_t__convertFromF0ToTp_SR(0xA00u, SHIDWORD(v44)) >> 6, Int = paramc_ParamGetInt(*(v2 + 40), "bet2voiceframesize", &v43 + 1), (Int & 0x80000000) != 0))
  {
    Str = Int;
    v24 = *(*(a1 + 16) + 32);
LABEL_34:
    log_OutPublic(v24, "SYNTH_BET3", 56008, "%s%s", v4, v5, v6, v7, "parameter");
    return Str;
  }

  *(a1 + 44) = HIDWORD(v43) * *(a1 + 48) / 0x3E8u;
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevol", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1 || (*(a1 + 56) = LH_atoi(__s1), paramc_ParamRelease(*(v2 + 40)), Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicemvfboost", &__s1), (Str & 0x80000000) != 0) || !__s1 || !*__s1)
  {
    v25 = *(*(a1 + 16) + 32);
LABEL_36:
    log_OutPublic(v25, "SYNTH_BET3", 26011, "%s%s", v9, v10, v11, v12, "parameter");
    return Str;
  }

  v14 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicealpha", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v25 = *(*(a1 + 16) + 32);
    goto LABEL_36;
  }

  v15 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  Str = paramc_ParamGetStr(*(v2 + 40), "bet2voicevuvrelamp", &__s1);
  if ((Str & 0x80000000) != 0 || !__s1 || !*__s1)
  {
    v24 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v16 = LH_atoi(__s1);
  paramc_ParamRelease(*(v2 + 40));
  v17 = paramc_ParamGetInt(*(v2 + 40), "bet2voiceorder", &v43);
  if ((v17 & 0x80000000) != 0 || (v17 = paramc_ParamGetStr(*(v2 + 40), "bet2voicevsynthinit", &v38), (v17 & 0x80000000) != 0))
  {
    Str = v17;
    v24 = *(*(a1 + 16) + 32);
    goto LABEL_34;
  }

  v18 = 1;
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2cpupower", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    v19 = LH_atoi(__s1);
    if (v19 >= 5)
    {
      v18 = 1;
    }

    else
    {
      v18 = v19;
    }

    paramc_ParamRelease(*(v2 + 40));
  }

  if (!paramc_ParamGet(*(v2 + 40), "bet3cepstralequalizer", (a1 + 72), &v39) && v43 + 1 != v39 >> 2)
  {
    log_OutPublic(*(*(a1 + 16) + 32), "SYNTH_BET3", 56008, "%s%s", v20, v21, v22, v23, "parameter");
    return 0;
  }

  cstdlib_strcpy(__dst, "synth");
  if ((paramc_ParamGetStr(*(v2 + 40), "bet2voicequality", &__s1) & 0x80000000) == 0 && __s1 && *__s1)
  {
    cstdlib_strcat(__dst, "/");
    cstdlib_strcat(__dst, __s1);
    paramc_ParamRelease(*(v2 + 40));
  }

  else
  {
    cstdlib_strcat(__dst, "/med");
  }

  cstdlib_strcat(__dst, "/fxd");
  cstdlib_strcat(__dst, "/bet3f");
  v27 = HIDWORD(v44);
  v28 = cstdlib_strlen(__dst);
  LH_itoa(v27 / 1000, &__dst[v28], 0xAu);
  v29 = ssftriff_reader_ObjOpen(*a1, *(a1 + 8), 0, __dst, "HMEX", 1031, &v37);
  if ((v29 & 0x80000000) != 0)
  {
    return v29;
  }

  Str = BET3FXD__MFVSyn__init__MVF_Synthesis((a1 + 64), *(a1 + 16), &__b, v37, SHIDWORD(v43), v43, v15, HIDWORD(v44), v18, v38);
  if ((Str & 0x80000000) == 0)
  {
    if (!v37 || (Str = ssftriff_reader_ObjClose(v37, v30, v31, v32, v33, v34, v35, v36), (Str & 0x80000000) == 0))
    {
      if (MFVSyn__setRelativeUVBoost(*(a1 + 64), v16))
      {
        LODWORD(Str) = -2130698240;
      }

      if ((Str & 0x80000000) == 0 && BET3FXD__MFVSyn__setMVFBoost(*(a1 + 64), v14))
      {
        LODWORD(Str) = -2130698240;
      }

      Str = BET3FXD__MFVSyn__setVolumeBoost(*(a1 + 64), *(a1 + 56)) ? 2164269056 : Str;
      if ((Str & 0x80000000) == 0)
      {
        v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "volume", &v44);
        if ((v29 & 0x80000000) == 0)
        {
          v29 = synth_bet3_loc_ParamSet_0(a1, "volume", v44);
          if ((v29 & 0x80000000) == 0)
          {
            v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate_baseline", &v44);
            if ((v29 & 0x80000000) == 0)
            {
              v29 = synth_bet3_loc_ParamSet_0(a1, "rate_baseline", v44);
              if ((v29 & 0x80000000) == 0)
              {
                v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v44);
                if ((v29 & 0x80000000) == 0)
                {
                  v29 = synth_bet3_loc_ParamSet_0(a1, "rate", v44);
                  if ((v29 & 0x80000000) == 0)
                  {
                    v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch_baseline", &v44);
                    if ((v29 & 0x80000000) == 0)
                    {
                      v29 = synth_bet3_loc_ParamSet_0(a1, "pitch_baseline", v44);
                      if ((v29 & 0x80000000) == 0)
                      {
                        v29 = paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v44);
                        if ((v29 & 0x80000000) == 0)
                        {
                          return synth_bet3_loc_ParamSet_0(a1, "pitch", v44);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return v29;
      }
    }
  }

  return Str;
}

uint64_t synth_bet3_loc_ParamSet_0(uint64_t a1, const char *a2, unsigned int a3)
{
  if (cstdlib_strcmp(a2, "audiooutputbufsamples"))
  {
    v6 = critsec_Enter(*(a1 + 24));
    if ((v6 & 0x80000000) == 0)
    {
      if (!cstdlib_strcmp(a2, "volume"))
      {
        v11 = 2164269071;
        if (a3 > 0x64)
        {
          goto LABEL_24;
        }

        *(a1 + 60) = a3;
        goto LABEL_23;
      }

      if (cstdlib_strcmp(a2, "rate_baseline"))
      {
        if (!cstdlib_strcmp(a2, "rate"))
        {
          v19 = MapProsodyValue_Scaling(50, 100, 400, *(a1 + 1040), a3);
          if (!v19 || (v23 = (v19 + 9999) / v19, v24 = v23, (v23 - 201) < 0xFFFFFF50))
          {
            v11 = 2164269071;
            goto LABEL_24;
          }

          log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set rate %d", v20, v21, v22, v19);
          v25 = *(a1 + 1036);
          if (v25 != 1)
          {
            v11 = v6;
            if (!v25)
            {
              v14 = BET3FXD__MFVSyn__setRate(*(a1 + 64), v24);
LABEL_35:
              if (v14)
              {
                v11 = 2164269071;
              }

              else
              {
                v11 = v6;
              }
            }

LABEL_24:
            critsec_Leave(*(a1 + 24));
            return v11;
          }

          v26 = v23;
          v27 = v23 - 25;
          v11 = 2164269071;
          if (v27 > 0xAF)
          {
            goto LABEL_24;
          }

          *(a1 + 1340) = v26;
LABEL_23:
          v11 = v6;
          goto LABEL_24;
        }

        if (!cstdlib_strcmp(a2, "ratewpm"))
        {
          v11 = 2164269057;
          goto LABEL_24;
        }

        if (cstdlib_strcmp(a2, "pitch_baseline"))
        {
          if (!cstdlib_strcmp(a2, "pitch"))
          {
            v7 = MapProsodyValue_Scaling(50, 100, 200, *(a1 + 1044), a3);
            v11 = 2164269071;
            if ((v7 - 201) < 0xFFFFFF69)
            {
              goto LABEL_24;
            }

            if (*(a1 + 52))
            {
              v12 = v7;
              log_OutText(*(*(a1 + 16) + 32), "SYNTH_BET3", 3, 0, "Set pitch %d (synth %d)", v8, v9, v10, v7);
              v13 = *(a1 + 1036);
              if (v13 != 1)
              {
                v11 = v6;
                if (!v13)
                {
                  v14 = BET3FXD__MFVSyn__setPitchLevelPercent(*(a1 + 64), v12);
                  goto LABEL_35;
                }

                goto LABEL_24;
              }

              *(a1 + 1328) = v12;
            }
          }

          goto LABEL_23;
        }

        v11 = 2164269071;
        if (a3 - 201 < 0xFFFFFF69)
        {
          goto LABEL_24;
        }

        v28 = 0;
        *(a1 + 1044) = a3;
        v16 = "pitch";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "pitch", &v28);
        v17 = v28;
      }

      else
      {
        v11 = 2164269071;
        if (a3 - 401 < 0xFFFFFEA1)
        {
          goto LABEL_24;
        }

        v29 = 0;
        *(a1 + 1040) = a3;
        v16 = "rate";
        paramc_ParamGetInt(*(*(a1 + 16) + 40), "rate", &v29);
        v17 = v29;
      }

      synth_bet3_loc_ParamSet_0(a1, v16, v17);
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
    if (a3 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a3;
    }

    *(a1 + 40) = v15;
  }

  return v6;
}

uint64_t BET3FXD__rand31pmc_next(_DWORD *a1)
{
  v1 = ((1101463552 * HIWORD(*a1)) & 0x7FFF0000) + 16807 * *a1 + ((16807 * HIWORD(*a1)) >> 15);
  v2 = (v1 + (v1 >> 31)) & 0x7FFFFFFF;
  *a1 = v2;
  return v2;
}

int *BET3FXD__rand31pmc_seedi(int *result, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *result = v2;
  return result;
}

unsigned int *rand_num_qs(unsigned int *result, _WORD *a2, int a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = *result;
    v5 = a4;
    do
    {
      v6 = ((1101463552 * HIWORD(v4)) & 0x7FFF0000) + 16807 * v4 + ((16807 * HIWORD(v4)) >> 15);
      v4 = (v6 + (v6 >> 31)) & 0x7FFFFFFF;
      *a2++ = (((0x40000000 - v4) >> 16) * (a3 >> 2)) >> 14;
      --v5;
    }

    while (v5);
    *result = v4;
  }

  return result;
}

void *BET3FXD__MFVSyn__constructExcitationShapingFilter(void *result, unsigned int a2)
{
  v2 = result;
  if (*(result + 14) >= *(result + 96))
  {
    v3 = result[46];
    if (a2)
    {
      v4 = *(v2 + 94);
      *(v3 + 2 * v4 - 2) = a2;
      result = cstdlib_memmove(v3, (v3 + 2), 2 * (v4 - 1));
      v5 = v2[46] + 2 * *(v2 + 94);
      v6 = *(v5 - 4);
      v7 = v6 <= 0;
      v8 = v6 > 0;
      v9 = 4 * v6;
      v10 = 4 * v8;
      if (v7)
      {
        v9 = 0;
      }

      v11 = *(v5 - 6);
      v12 = (4 * v8) | 2;
      v13 = 2 * v11;
      if (v11 <= 0)
      {
        v13 = 0;
      }

      else
      {
        v10 = v12;
      }

      v14 = v13 & 0xFFFE;
      v15 = *(v5 - 8);
      if (v15 > 0)
      {
        ++v10;
      }

      a2 = ((v9 + (v15 & ~(v15 >> 31)) + v14) * g_invDiv[v10]) >> 16;
    }

    else
    {
      result = cstdlib_memset(v3, 0, 2 * *(v2 + 95));
      a2 = 0;
    }
  }

  v16 = *(v2 + 3);
  if (v16 >= (*(v2 + 12) * a2) >> 14)
  {
    LOWORD(v16) = (*(v2 + 12) * a2) >> 14;
  }

  *(v2 + 176) = v16;
  return result;
}

uint64_t MFVSyn__filterExcitationWithShapingFilter(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a1 + 16) * a3;
  if (v7 < 0x7AE149)
  {
    cstdlib_memset(*(a4 + 8), 0, 2 * *(a4 + 16));
    result = rand_num_qs((v6 + 60), *(v6 + 208), *(v6 + 32), a2);
    *(v6 + 508) = 0xFFFFFFFFLL;
    goto LABEL_46;
  }

  v8 = *(a1 + 472);
  if (v8 < 1)
  {
LABEL_6:
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    v10 = (*(a1 + 480) + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 >= v7)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (*(a1 + 504) == a2)
  {
    v12 = *(a1 + 500);
    LOWORD(a1) = *(a1 + 500);
  }

  else
  {
    LODWORD(a1) = fxd_U16SqrtS32(a2 << 6);
    v14 = *(v6 + 500);
    *(v6 + 504) = a2;
    v12 = a1;
    if (a1 != v14)
    {
      goto LABEL_16;
    }
  }

  if (v9 != *(v6 + 508))
  {
LABEL_16:
    v19 = *(v6 + 488);
    if (v19 >= 1)
    {
      v47 = a1;
      v20 = 0;
      v21 = *(v6 + 480) + 24 * v9;
      v22 = (((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * HIWORD(*(v6 + 28))) * v12) >> 14) + 4 * v12 * ((((*(v6 + 28) * *(v21 + 20)) >> 14) + 4 * *(v21 + 20) * (*(v6 + 28) >> 16)) >> 16);
      v23 = *v21;
      v24 = 2 * v19;
      do
      {
        v25 = fxd_S32ShMultRndS32S16(v22, *(v23 + v20), 7);
        if (v25 <= -32768)
        {
          v26 = -32768;
        }

        else
        {
          v26 = v25;
        }

        if (v26 >= 0x7FFF)
        {
          LOWORD(v26) = 0x7FFF;
        }

        *(*(a4 + 8) + v20) = v26;
        *(*(v6 + 528) + v20) = v26;
        v20 += 2;
      }

      while (v24 != v20);
      LOWORD(a1) = v47;
    }

    goto LABEL_25;
  }

  v15 = *(v6 + 488);
  if (v15 >= 1)
  {
    v16 = *(v6 + 528);
    v17 = *(a4 + 8);
    do
    {
      v18 = *v16++;
      *v17++ = v18;
      --v15;
    }

    while (v15);
  }

LABEL_25:
  *(v6 + 500) = a1;
  v27 = *(v6 + 264);
  if (v27 >= 1)
  {
    if (v27 >= a2)
    {
      v28 = a2;
    }

    else
    {
      v28 = *(v6 + 264);
    }

    if (*(a4 + 16) >= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(a4 + 16);
    }

    if (v29 >= 1)
    {
      v30 = 0;
      v31 = *(a4 + 8);
      do
      {
        v32 = fxd_S16SatAddS16S16(*(v31 + v30), *(*(v6 + 256) + v30));
        v31 = *(a4 + 8);
        *(v31 + v30) = v32;
        v30 += 2;
      }

      while (2 * v29 != v30);
      v27 = *(v6 + 264);
    }

    v33 = __OFSUB__(v27, v29);
    v34 = v27 - v29;
    if (!((v34 < 0) ^ v33 | (v34 == 0)))
    {
      cstdlib_memmove(*(v6 + 256), (*(v6 + 256) + 2 * v29), 2 * v34);
      *(v6 + 264) = (*(v6 + 264) - v29) & ~((*(v6 + 264) - v29) >> 31);
    }
  }

  cstdlib_memset(*(v6 + 256), 0, 2 * *(v6 + 268));
  v35 = *(v6 + 488);
  v33 = __OFSUB__(v35, a2);
  v36 = v35 - a2;
  if ((v36 < 0) ^ v33 | (v36 == 0))
  {
    v37 = a2;
  }

  else
  {
    v37 = a2;
    cstdlib_memmove(*(v6 + 256), (*(a4 + 8) + 2 * a2), 2 * v36);
    v38 = *(v6 + 488) - a2;
    if (v38 <= *(v6 + 264))
    {
      v38 = *(v6 + 264);
    }

    *(v6 + 264) = v38;
  }

  v39 = *(v6 + 492);
  v40 = *(*(v6 + 480) + 24 * v9 + 22);
  rand_num_qs((v6 + 60), (*(v6 + 208) + 2 * v39), ((*(v6 + 32) * v40) >> 14) + 4 * v40 * (*(v6 + 32) >> 16), a2);
  cstdlib_memmove(*(v6 + 208), *(v6 + 280), 2 * v39);
  cstdlib_memmove(*(v6 + 280), (*(v6 + 208) + 2 * v37), 2 * v39);
  zerflt_qs(*(v6 + 208) + 2 * v39, *(*(v6 + 480) + 24 * v9 + 8), *(v6 + 208) + 2 * v39, *(v6 + 492), a2);
  result = cstdlib_memmove(*(v6 + 208), (*(v6 + 208) + 2 * v39), 2 * a2);
  v41 = *(v6 + 512);
  v42 = *(v6 + 516);
  v33 = __OFSUB__(v41, v42);
  v43 = v41 - v42;
  if (!((v43 < 0) ^ v33 | (v43 == 0)))
  {
    *(v6 + 512) = v43;
  }

  *(v6 + 508) = v9;
LABEL_46:
  if (a2 >= 1)
  {
    v44 = 0;
    v45 = *(a4 + 8);
    v46 = 2 * a2;
    do
    {
      result = fxd_S16SatAddS16S16(*(v45 + v44), *(*(v6 + 208) + v44));
      v45 = *(a4 + 8);
      *(v45 + v44) = result;
      v44 += 2;
    }

    while (v46 != v44);
  }

  return result;
}

uint64_t MFVSyn__MVFExcitation_construct(uint64_t a1)
{
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 368) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  *(a1 + 504) = 0xFFFFFFFF00000004;
  *(a1 + 500) = 2;
  *(a1 + 528) = 0;
  *(a1 + 516) = BET3FXD__wave_t__convertFromMsecToTp((a1 + 8), 4);
  return 0;
}

uint64_t MFVSyn__createMVFExcitation_(uint64_t a1)
{
  if (*(a1 + 488) <= *(a1 + 492))
  {
    v2 = *(a1 + 492);
  }

  else
  {
    v2 = *(a1 + 488);
  }

  *(a1 + 68) = v2;
  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 248, v2))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 264) = 0;
  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 272, *(a1 + 68)))
  {
    return 0xFFFFFFFFLL;
  }

  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 520, *(a1 + 68)))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t MFVSyn__deleteMVFExcitation_(uint64_t a1)
{
  v2 = vect_t__deleteVect_qs(a1 + 248);
  v3 = vect_t__deleteVect_qs(a1 + 272);
  if (vect_t__deleteVect_qs(a1 + 520) | v3 | v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t vect_t__createVect_qs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = heap_Alloc(a1, 2 * a3);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  cstdlib_memset(v5, 0, 2 * a3);
  return 0;
}

uint64_t vect_t__deleteVect_qs(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t BET3FXD__vect_t__createVect(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  v5 = heap_Alloc(a1, 4 * a3);
  *(a2 + 8) = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  cstdlib_memset(v5, 0, 4 * a3);
  return 0;
}

uint64_t BET3FXD__vect_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t exp_S7_25(int a1, _WORD *a2)
{
  v2 = a1 >> 10;
  result = 0x40000000;
  v4 = 1;
  for (i = 10; i != 32; ++i)
  {
    if (v2)
    {
      result = (exp_mantissa_lut[i] * ((result + 0x4000) >> 15));
      v4 += exp_scale_lut[i];
      if (result <= 1073733631)
      {
        result = (2 * result);
        --v4;
      }
    }

    v2 >>= 1;
  }

  if (result <= 0x3FFFFFFF)
  {
    do
    {
      result = (2 * result);
      LOWORD(v4) = v4 - 1;
    }

    while (result < 0x40000000);
  }

  *a2 = v4;
  return result;
}

uint64_t BET3FXD__MFVSyn__SynthesisOneFrame(uint64_t a1, int a2, void *__src, __int16 a4, int *a5, void *a6)
{
  *a5 = 0;
  *a6 = 0;
  v9 = *(a1 + 396);
  v10 = a2 == 0;
  if (v9 != 1)
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 != 0;
  }

  *(a1 + 392) = v11 || v10;
  if (a2)
  {
    v12 = *(a1 + 36) * a2;
    v13 = v12 >> 25;
    v14 = HIWORD(v12);
    if (v13 < 5)
    {
      v14 = 2560;
    }
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 396) = v14 != 0;
  v15 = *(a1 + 296);
  v16 = *(a1 + 300);
  *a5 = v15;
  v17 = *(a1 + 40);
  if (v17 != 0x4000)
  {
    v15 = (v15 * v17 + 0x2000) >> 14;
    v16 = (0x10000u / v15);
    *a5 = v15;
  }

  if (!v14 || (v18 = (*(a1 + 8) << 12) / v14, (*(a1 + 400) = v18) == 0))
  {
    *(a1 + 400) = *(a1 + 344);
  }

  cstdlib_memmove(*(a1 + 416), __src, 4 * (*(a1 + 120) + 1));
  *(a1 + 402) = a4;
  BET3FXD__MFVSyn__mc2mlsa(a1, *(a1 + 416), *(a1 + 576));
  cstdlib_memmove(*(a1 + 416), *(a1 + 576), 4 * (*(a1 + 120) + 1));
  BET3FXD__MFVSyn__constructExcitationShapingFilter(a1, *(a1 + 402));
  v19 = *(a1 + 400);
  if (*(a1 + 392))
  {
    goto LABEL_20;
  }

  v20 = v19 - *(a1 + 432);
  if (v20 < 0)
  {
    v20 = *(a1 + 432) - v19;
  }

  if (v20 >= *(a1 + 340))
  {
LABEL_20:
    *(a1 + 432) = v19;
  }

  LODWORD(v21) = *(a1 + 120);
  if ((v21 & 0x80000000) != 0)
  {
    v24 = *(a1 + 448);
  }

  else
  {
    v22 = 0;
    v23 = *(a1 + 416);
    v24 = *(a1 + 448);
    v25 = *(a1 + 136);
    do
    {
      *(v25 + 4 * v22) = ((*(v23 + 4 * v22) - v24[v22]) >> 16) * v16 + (((*(v23 + 4 * v22) - LOWORD(v24[v22])) * v16 + 0x8000) >> 16);
      v21 = *(a1 + 120);
    }

    while (v22++ < v21);
  }

  cstdlib_memmove(*(a1 + 80), v24, 4 * (v21 + 1));
  v27 = 0;
  v28 = *(a1 + 448);
  v29 = *(a1 + 104);
  do
  {
    *(v29 + 2 * v27) = *(v28 + 4 * v27) >> 10;
    ++v27;
  }

  while (v27 != 5);
  for (i = 0; i != 6; ++i)
  {
    *(v29 + 10 + 2 * i) = *(v28 + 20 + 4 * i) >> 9;
  }

  v31 = *(a1 + 120);
  if (v31 >= 11)
  {
    v32 = (v28 + 44);
    v33 = (v29 + 22);
    v34 = (v31 - 10);
    do
    {
      v35 = *v32++;
      *v33++ = v35 >> 8;
      --v34;
    }

    while (v34);
  }

  v36 = *(a1 + 464);
  if (v36 >= 1)
  {
    v37 = *(a1 + 184);
    v38 = *(a1 + 160);
    if (v36 <= v15)
    {
      cstdlib_memmove(v37, v38, 2 * v36);
      BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232), *(a1 + 464));
    }

    else
    {
      cstdlib_memmove(v37, v38, 2 * v15);
      BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232), v15);
      cstdlib_memmove(*(a1 + 160), (*(a1 + 160) + 2 * v15), 2 * (*(a1 + 464) - v15));
    }
  }

  for (j = *(a1 + 464); j < v15; *(a1 + 464) = j)
  {
    v40 = j * v16;
    v41 = *(a1 + 400);
    if (*(a1 + 56) >= 3u)
    {
      v41 = (v40 * v41 + (0x10000 - v40) * *(a1 + 432)) >> 16;
    }

    v42 = v41 >> 6;
    if (v42 <= *(a1 + 20))
    {
      v42 = *(a1 + 20);
    }

    if (v42 >= *(a1 + 24))
    {
      v43 = *(a1 + 24);
    }

    else
    {
      v43 = v42;
    }

    v44 = *(a1 + 352);
    if (*(a1 + 352) && *(a1 + 354))
    {
      v44 = (v40 * v44 + (0x10000 - v40) * *(a1 + 354)) >> 16;
    }

    MFVSyn__filterExcitationWithShapingFilter(a1, v43, v44, a1 + 176);
    v45 = *(a1 + 464);
    v46 = v45 + v43;
    if (v45 + v43 >= v15)
    {
      v46 = v15;
    }

    BET3FXD__MFVSyn__mlsa_filter(a1, *(a1 + 184), *(a1 + 232) + 2 * v45, v46 - v45);
    v47 = *(a1 + 464);
    j = v47 + v43;
    if (v47 + v43 > v15)
    {
      cstdlib_memmove(*(a1 + 160), (*(a1 + 184) + 2 * (v15 - v47)), 2 * (v43 - (v15 - v47)));
      j = *(a1 + 464) + v43;
    }
  }

  *(a1 + 354) = *(a1 + 352);
  *(a1 + 432) = *(a1 + 400);
  cstdlib_memmove(*(a1 + 448), *(a1 + 416), 4 * (*(a1 + 120) + 1));
  *(a1 + 464) -= v15;
  *a6 = *(a1 + 232);
  return 0;
}

uint64_t BET3FXD__MFVSyn__setSpectralOrder(uint64_t a1, int a2)
{
  if (a2 < 10 || *(a1 + 124) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 120) = a2;
  return result;
}

uint64_t BET3FXD__MFVSyn__setVolumeBoost(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 100)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 164 * a2;
  }

  a1[7] = v3;
  v4 = fxd_S32ShMultRndS32S32(v3, 4 * a1[11], 16);
  result = 0;
  a1[8] = v4;
  return result;
}

uint64_t MFVSyn__setRelativeUVBoost(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 164 * a2;
  if (a2 == 100)
  {
    v2 = 0x4000;
  }

  a1[11] = v2;
  BET3FXD__MFVSyn__setVolumeBoost(a1, (100 * a1[7]) >> 14);
  return 0;
}

uint64_t BET3FXD__MFVSyn__setMVFBoost(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xC8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = 164 * a2;
  if (a2 == 100)
  {
    v4 = 0x4000;
  }

  *(a1 + 48) = v4;
  return result;
}

uint64_t BET3FXD__MFVSyn__setPitchLevelPercent(uint64_t a1, int a2)
{
  if ((a2 - 50) > 0x96)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 36) = (a2 << 16) / 0x64u;
  return result;
}

uint64_t BET3FXD__MFVSyn__setRate(uint64_t a1, int a2)
{
  if ((a2 - 11) > 0xBD)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 100)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = fxd_S32ShMultRndS32S32(10737418, a2, 16);
  }

  result = 0;
  *(a1 + 40) = v3;
  return result;
}

uint64_t BET3FXD__MFVSyn__construct(uint64_t a1)
{
  *(a1 + 68) = 0;
  *(a1 + 396) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 368) = 0;
  *(a1 + 312) = 0;
  *(a1 + 80) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  BET3FXD__rand_num_init((a1 + 60));
  MFVSyn__mlsa_filter_construct(a1);
  MFVSyn__MVFExcitation_construct(a1);
  *(a1 + 20) = BET3FXD__wave_t__convertFromF0ToTp((a1 + 8), 0xAF00u) >> 6;
  *(a1 + 24) = BET3FXD__wave_t__convertFromF0ToTp((a1 + 8), 0xA00u) >> 6;
  *(a1 + 52) = BET3FXD__wave_t__convertFromMsecToTp((a1 + 8), 4) >> 6;
  *(a1 + 480) = 0;
  *(a1 + 40) = 0x4000;
  *(a1 + 28) = 0x4000;
  *(a1 + 32) = fxd_S32ShMultRndS32S32(0x4000, 4 * *(a1 + 44), 16);
  *(a1 + 44) = 0x400000004000;
  BET3FXD__MFVSyn__setVolumeBoost(a1, (100 * *(a1 + 28)) >> 14);
  *(a1 + 36) = 0x10000;
  return 0;
}

uint64_t BET3FXD__MFVSyn__deconstruct(_DWORD *a1)
{
  v2 = BET3FXD__vect_t__deleteVect((a1 + 110));
  if (BET3FXD__vect_t__deleteVect((a1 + 102)) | v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[14];
  if (v4 >= a1[84])
  {
    if (vect_t__deleteVect_qs((a1 + 76)))
    {
      v3 = -1;
    }

    v4 = a1[14];
  }

  if (v4 >= a1[96] && vect_t__deleteVect_qs((a1 + 90)))
  {
    v3 = -1;
  }

  v5 = BET3FXD__MFVSyn__mlsa_filter_deinit(a1);
  v6 = BET3FXD__vect_t__deleteVect((a1 + 18));
  v7 = BET3FXD__vect_t__deleteVect((a1 + 32));
  v8 = vect_t__deleteVect_qs((a1 + 38));
  v9 = vect_t__deleteVect_qs((a1 + 44));
  v10 = vect_t__deleteVect_qs((a1 + 50));
  v11 = vect_t__deleteVect_qs((a1 + 56));
  if (MFVSyn__deleteMVFExcitation(a1) | v11 | v10 | v9 | v8 | v7 | v6 | v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3;
  }
}

uint64_t BET3FXD__MFVSyn__reset__MVF_Synthesis(uint64_t *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  BET3FXD__rand_num_init((v1 + 60));
  *(v1 + 464) = 0;
  *(v1 + 396) = 0;
  *(v1 + 354) = 0;
  cstdlib_memset(*(v1 + 552), 0, 4 * *(v1 + 564));
  cstdlib_memset(*(v1 + 576), 0, 4 * *(v1 + 588));
  *(v1 + 432) = *(v1 + 344);
  *(v1 + 434) = 0;
  cstdlib_memset(*(v1 + 448), 0, 4 * *(v1 + 456));
  BET3FXD__MFVSyn__mc2mlsa(v1, *(v1 + 448), *(v1 + 448));
  cstdlib_memset(*(v1 + 184), 0, 2 * *(v1 + 196));
  cstdlib_memset(*(v1 + 160), 0, 2 * *(v1 + 172));
  cstdlib_memset(*(v1 + 256), 0, 2 * *(v1 + 268));
  cstdlib_memset(*(v1 + 280), 0, 2 * *(v1 + 292));
  cstdlib_memset(*(v1 + 208), 0, 2 * *(v1 + 220));
  cstdlib_memset(*(v1 + 528), 0, 2 * *(v1 + 540));
  *(v1 + 512) = 0;
  *(v1 + 504) = 0xFFFFFFFF00000004;
  *(v1 + 500) = 2;
  cstdlib_memset(*(v1 + 136), 0, 4 * *(v1 + 148));
  v_set_qs(*(v1 + 312), *(v1 + 344), *(v1 + 324));
  result = 0;
  if (*(v1 + 56) >= *(v1 + 384))
  {
    cstdlib_memset(*(v1 + 368), 0, 2 * *(v1 + 380));
    return 0;
  }

  return result;
}

uint64_t BET3FXD__MFVSyn__init__MVF_Synthesis(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, int a9, _BYTE *a10)
{
  v18 = heap_Calloc(*(a2 + 8), 1, 704);
  v33 = v18;
  *a1 = v18;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  v31 = 0uLL;
  v32 = 0;
  *v18 = a2;
  v20 = *a3;
  v21 = *(a3 + 8);
  *(v18 + 36) = a3[1];
  *(v18 + 20) = v20;
  *(v18 + 52) = v21;
  *(v18 + 56) = a9;
  *(v18 + 120) = a6;
  *(v18 + 124) = a6;
  if (a8 > 15999)
  {
    if (a8 == 22050)
    {
      goto LABEL_8;
    }

    v22 = 16000;
  }

  else
  {
    if (a8 == 8000)
    {
      goto LABEL_8;
    }

    v22 = 11025;
  }

  if (a8 != v22)
  {
    goto LABEL_16;
  }

LABEL_8:
  BET3FXD__wave_t__setSampleRateHz((v18 + 8), a8);
  if (BET3FXD__MFVSyn__construct(v19))
  {
    goto LABEL_16;
  }

  *(v19 + 7) = 0x4000;
  *(v19 + 8) = fxd_S32ShMultRndS32S32(0x4000, 4 * *(v19 + 11), 16);
  *(v19 + 10) = 0x4000;
  if (a8 > 15999)
  {
    if (a8 != 22050)
    {
      v23 = 16000;
LABEL_14:
      if (a8 != v23)
      {
        goto LABEL_16;
      }
    }
  }

  else if (a8 != 8000)
  {
    v23 = 11025;
    goto LABEL_14;
  }

  *(v19 + 26) = BET3FXD__wave_t__convertFromMsecToTp(v19 + 2, a5) >> 6;
  if (!BET3FXD__MFVSyn__loadExcTable(v19, a4))
  {
    *(v19 + 98) = 0;
    *(v19 + 172) = BET3FXD__wave_t__convertFromF0ToTp(v19 + 2, 0x3E80u);
    *(v19 + 85) = BET3FXD__wave_t__convertFromF0ToTp(v19 + 2, 0xF00u);
    *(v19 + 84) = 3;
    if (*(v19 + 14) >= 3u)
    {
      if (vect_t__createVect_qs(*(*v19 + 8), (v19 + 38), 4u))
      {
        goto LABEL_16;
      }

      v_set_qs(v19[39], *(v19 + 172), *(v19 + 81));
      *(v19 + 83) = 0x10000 / *(v19 + 80);
      *(v19 + 82) = 0;
    }

    *(v19 + 16) = BET3FXD__wave_t__sampleRateHz(v19 + 2);
    *(v19 + 96) = 3;
    if ((*(v19 + 14) < 3u || !vect_t__createVect_qs(*(*v19 + 8), (v19 + 45), 5u)) && !MFVSyn__createMVFExcitation(v19) && !BET3FXD__vect_t__createVect(*(*v19 + 8), (v19 + 9), *(v19 + 30) + 1))
    {
      *(v19 + 177) = 0;
      *(v19 + 116) = 0;
      v25 = *(v19 + 26);
      *(v19 + 74) = v25;
      v26 = (0x10000 / v25);
      *(v19 + 75) = v26;
      if (v26)
      {
        v27 = *(v19 + 14);
        if (v27 <= 4)
        {
          v28 = dword_26ED6DD9C[v27];
          if (!BET3FXD__vect_t__createVect(*(*v19 + 8), (v19 + 16), *(v19 + 30) + 1))
          {
            *(v19 + 129) = BET3FXD__wave_t__convertFromMsecToTp(v19 + 2, v28) >> 6;
            if (!MFVSyn__mlsa_filter_consult(v19, *(v19 + 14), a8, a7, a10, &v31))
            {
              v29 = v31;
              v30 = v32;
              if (!BET3FXD__MFVSyn__mlsa_filter_init(v19, &v29) && !vect_t__createVect_qs(*(*v19 + 8), (v19 + 22), *(v19 + 74) + *(v19 + 17) + *(v19 + 6) + 1) && !vect_t__createVect_qs(*(*v19 + 8), (v19 + 19), *(v19 + 74) + *(v19 + 17) + *(v19 + 6) + 1) && !vect_t__createVect_qs(*(*v19 + 8), (v19 + 25), *(v19 + 74) + *(v19 + 17) + *(v19 + 6) + 1) && !vect_t__createVect_qs(*(*v19 + 8), (v19 + 28), 2 * *(v19 + 74)))
              {
                *(v19 + 216) = *(v19 + 172);
                *(v19 + 217) = 0;
                if (!BET3FXD__vect_t__createVect(*(*v19 + 8), (v19 + 55), *(v19 + 30) + 1) && !BET3FXD__vect_t__createVect(*(*v19 + 8), (v19 + 51), *(v19 + 30) + 1))
                {
                  BET3FXD__MFVSyn__mc2mlsa(v19, v19[56], v19[56]);
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_16:
  MFVSyn__denit__MVF_Synthesis(&v33);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

uint64_t MFVSyn__denit__MVF_Synthesis(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = BET3FXD__MFVSyn__releaseExcTable(*a1);
  if (BET3FXD__MFVSyn__deconstruct(v2) | v3)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  if (*v2)
  {
    heap_Free(*(*v2 + 8), v2);
  }

  *a1 = 0;
  return v4;
}

uint64_t getAlpha(int a1)
{
  if (a1 > 11999)
  {
    if (a1 == 12000)
    {
      return 6207570;
    }

    if (a1 != 22050)
    {
      if (a1 == 16000)
      {
        return 7046431;
      }

      return 0;
    }

    return 7381975;
  }

  else
  {
    if (a1 == 8000)
    {
      return 5200937;
    }

    if (a1 != 10000)
    {
      if (a1 == 11025)
      {
        return 6039798;
      }

      return 0;
    }

    return 5872026;
  }
}

uint64_t BET3FXD__MFVSyn__mc2mlsa(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *(result + 120);
  v4 = *(result + 608);
  a3[v3] = *(a2 + 4 * v3);
  if (v3 >= 1)
  {
    v5 = (v4 >> 8);
    v6 = a3[v3];
    v7 = v3 - 1;
    do
    {
      v6 = *(a2 + 4 * v7) - (v5 * (v6 >> 16) + ((v6 * v5 + 0x8000) >> 16));
      a3[v7] = v6;
      v8 = v7-- + 1;
    }

    while (v8 > 1);
  }

  v9 = a3[1];
  v10 = *a3 & ~(*a3 >> 31);
  if (v9 <= -16148070)
  {
    v9 = -16148070;
  }

  if (v9 >= 16148070)
  {
    v9 = 16148070;
  }

  if (v10 >= 33135002)
  {
    v10 = 33135002;
  }

  *a3 = v10;
  a3[1] = v9;
  return result;
}

uint64_t MFVSyn__mlsadf_fxd(uint64_t a1, int a2, __int16 *a3)
{
  v5 = 0;
  v131 = *(a1 + 120);
  v6 = *(a1 + 616);
  v137 = *(a1 + 618);
  v7 = *(a1 + 600);
  v129 = *(a1 + 552);
  v8 = *(a1 + 621);
  v9 = (v129 + 4 * v8);
  v10 = (v129 + 8 * v8 + 4);
  do
  {
    v11 = fxd_S32ShMultRndS32S16(*(v10 - 1), v137, 14);
    v12 = fxd_S32ShMultRndS32S16(*(v129 + 4 * v8), v6, 14);
    *(v129 + 4 * v8) = v12 + v11;
    v13 = (((v12 + v11) >> 12) & 0xFFFFFFF0) * a3[1] + (((v12 + v11) * a3[1]) >> 12);
    *v10 = v13;
    if (v8 == 3)
    {
      v14 = (v9[4] * v7[3]) >> 16;
    }

    else
    {
      v14 = (v13 * v7[v8]) >> 18;
    }

    if (v8)
    {
      v15 = v14;
    }

    else
    {
      v15 = -v14;
    }

    a2 += 2 * v15;
    v5 += v14;
    --v10;
    v16 = v8-- > 3;
  }

  while (v16);
  v17 = fxd_S32ShMultRndS32S16(v9[2], v137, 14);
  v18 = fxd_S32ShMultRndS32S16(*(v129 + 8), v6, 14);
  *(v129 + 8) = v18 + v17;
  v19 = (((v18 + v17) >> 12) & 0xFFFFFFF0) * a3[1] + (((v18 + v17) * a3[1]) >> 12);
  v9[3] = v19;
  v20 = fxd_S32ShMultRndS32S16(v19, v7[2], 15);
  v21 = a2 - 2 * v20;
  v134 = v20 + v5;
  v22 = (v9[1] >> 14) & 0xFFFFFFFC;
  v23 = v9[1] * v137 + 0x2000;
  v24 = fxd_S32ShMultRndS32S16(*(v129 + 4), v6, 14);
  v25 = v24 + v22 * v137 + (v23 >> 14);
  *(v129 + 4) = v25;
  v26 = (((v24 + v22 * v137 + (v23 >> 14)) * a3[1]) >> 12) + 16 * a3[1] * (v25 >> 16);
  v9[2] = v26;
  v27 = fxd_S32ShMultRndS32S16(v26, v7[1], 15);
  v136 = 0;
  v28 = v27 + (v21 >> 1);
  v29 = *(a1 + 642);
  v30 = v129 + 4 * v29;
  v31 = *(a1 + 620);
  v32 = (v30 + 4 * *(a1 + 622 + 2 * v31 + 2));
  v135 = v134 + v27 + v28;
  v33 = a3 + 2;
  v9[1] = v28;
  v34 = 4 * v131;
  v127 = v30;
  v128 = a3 + 5;
  v122 = v30 + 20;
  v123 = v32 - 1;
  v121 = v129 + 4 + 4 * v29;
  v119 = v29;
  v120 = v30 + 44;
  v124 = v32;
  v125 = a3 + 2;
  v126 = a3 + 11;
  do
  {
    v132 = *(a1 + 622 + 2 * v31);
    v35 = (v127 + 4 * v132);
    v36 = v123[v31];
    *v35 = v36;
    v37 = fxd_S32ShMultRndS32S16(v36, v137, 14);
    v38 = 0;
    v35[1] = fxd_S32ShMultRndS32S16(v35[1], v6, 14) + v37;
    v39 = v121;
    v40 = 8;
    do
    {
      v41 = v39;
      v42 = v35[v40 / 4];
      v43 = fxd_S32ShMultRndS32S16(v35[v40 / 4 + 1] - v35[v40 / 4 - 1], v6, 14);
      v44 = *v33++;
      v35[v40 / 4] = v43 + v42;
      v38 += (((v43 + v42) >> 12) & 0xFFFFFFF0) * v44 + (((v43 + v42) * v44 + 2048) >> 12);
      v39 = v41 + 4;
      v45 = v40 >= 0xD;
      v40 += 4;
    }

    while (!v45);
    v46 = 4 * v132;
    v47 = v122;
    v48 = 16;
    v49 = v128;
    do
    {
      v50 = *(v47 + 4 * v132) + (((*(v41 + 4 * v132 + 12) - *(v41 + 4 * v132 + 4)) * v6) >> 14);
      *(v47 + 4 * v132) = v50;
      v51 = *v49++;
      v38 += ((v50 >> 13) & 0xFFFFFFF8) * v51 + ((v50 * v51 + 4096) >> 13);
      v48 += 4;
      v47 += 4;
      v41 += 4;
    }

    while (v48 < 0x25);
    v52 = (v41 + v46 + 12);
    v53 = (v120 + v46);
    v54 = 44;
    v55 = v126;
    do
    {
      v56 = *v53 + (((*v52 - *(v52 - 2)) * v6) >> 14);
      *v53++ = v56;
      v57 = *v55++;
      v38 += fxd_S32ShMultRndS32S16(v56, v57, 14);
      v54 += 4;
      ++v52;
    }

    while (v54 <= v34);
    v58 = v52 - 2;
    do
    {
      v59 = *v58--;
      v35[v54 / 4] = v59;
      v16 = v54 <= 8;
      v54 -= 4;
    }

    while (!v16);
    v33 = v125;
    v124[v31] = v38;
    if (v31 == 3)
    {
      v60 = v124[3];
      v61 = *(*(a1 + 592) + 6);
      v62 = 16;
    }

    else
    {
      v61 = *(*(a1 + 592) + 2 * v31);
      v60 = v38;
      v62 = 18;
    }

    v63 = fxd_S32ShMultRndS32S16(v60, v61, v62);
    if (v31)
    {
      v64 = v63;
    }

    else
    {
      v64 = -v63;
    }

    v135 += v64;
    v136 += v63;
    v16 = v31-- <= 3;
  }

  while (!v16);
  v65 = *(a1 + 626);
  v66 = (v127 + 4 * v65);
  v67 = v124[1];
  *v66 = v67;
  v68 = v66 + 3;
  v133 = fxd_S32ShMultRndS32S16(v67, v137, 14);
  v69 = v66 + 1;
  v70 = 0;
  v71 = fxd_S32ShMultRndS32S16(v66[1], v6, 14) + v133;
  v66[1] = v71;
  v72 = 8;
  v73 = v125;
  do
  {
    v74 = *v68++;
    v71 = v66[v72 / 4] + (((v74 - v71) * v6) >> 14);
    v66[v72 / 4] = v71;
    v75 = *v73++;
    v70 += (v71 * v75) >> 12;
    ++v69;
    v45 = v72 >= 0xD;
    v72 += 4;
  }

  while (!v45);
  v76 = 16;
  v77 = v128;
  do
  {
    v78 = v66[v76 / 4 + 1] + (((v68[v76 / 4 - 4] - v69[v76 / 4 - 4]) * v6) >> 14);
    v66[v76 / 4 + 1] = v78;
    v79 = *v77++;
    v70 += (v78 * v79) >> 13;
    v76 += 4;
  }

  while (v76 < 0x25);
  v80 = 0;
  v81 = v129 + 4 * v119 + 4 * v65;
  v82 = &v68[v76 / 4 - 4];
  v83 = v126;
  do
  {
    v84 = *(v81 + v80 + 44) + (((*v82 - *(v82 - 2)) * v6) >> 14);
    *(v81 + v80 + 44) = v84;
    v85 = *v83++;
    v70 += fxd_S32ShMultRndS32S16(v84, v85, 14);
    ++v82;
    v86 = v80 + 4;
    v87 = v80 + 48;
    v80 += 4;
  }

  while (v87 <= v34);
  v88 = v86 + 40;
  v89 = v82 - 2;
  do
  {
    v90 = (v66 + v88);
    v90[1] = *v89;
    *v90 = *(v89 - 1);
    v91 = v88 + 4;
    v88 -= 8;
    v89 -= 2;
  }

  while (v91 > 12);
  v124[2] = v70;
  v92 = fxd_S32ShMultRndS32S16(v70, *(*(a1 + 592) + 4), 15);
  v93 = *(a1 + 624);
  v94 = (v127 + 4 * v93);
  v95 = *v124;
  *v94 = *v124;
  v96 = v94 + 3;
  v97 = fxd_S32ShMultRndS32S16(v95, v137, 14);
  v98 = v94 + 1;
  v99 = 0;
  v100 = fxd_S32ShMultRndS32S16(v94[1], v6, 14) + v97;
  v94[1] = v100;
  v101 = 8;
  v102 = v125;
  do
  {
    v103 = *v96++;
    v100 = v94[v101 / 4] + (((v103 - v100) * v6) >> 14);
    v94[v101 / 4] = v100;
    v104 = *v102++;
    v99 += (v100 * v104) >> 12;
    ++v98;
    v45 = v101 >= 0xD;
    v101 += 4;
  }

  while (!v45);
  v105 = 16;
  v106 = v128;
  do
  {
    v107 = v94[v105 / 4 + 1] + (((v96[v105 / 4 - 4] - v98[v105 / 4 - 4]) * v6) >> 14);
    v94[v105 / 4 + 1] = v107;
    v108 = *v106++;
    v99 += (v107 * v108) >> 13;
    v105 += 4;
  }

  while (v105 < 0x25);
  v109 = (4 * v93 + 4 * v119 + v129 + 44);
  v110 = &v96[v105 / 4 - 4];
  v111 = 44;
  v112 = v126;
  do
  {
    v113 = *v109 + (((*v110 - *(v110 - 2)) * v6) >> 14);
    *v109++ = v113;
    v114 = *v112++;
    v99 += fxd_S32ShMultRndS32S16(v113, v114, 14);
    v111 += 4;
    ++v110;
  }

  while (v111 <= v34);
  v115 = v110 - 2;
  do
  {
    v116 = *v115--;
    v94[v111 / 4] = v116;
    v16 = v111 <= 8;
    v111 -= 4;
  }

  while (!v16);
  v124[1] = v99;
  v117 = fxd_S32ShMultRndS32S16(v99, *(*(a1 + 592) + 2), 15);
  *v124 = v117 + v135 - v92;
  return (v136 + v117 + v117 + v135);
}

void *BET3FXD__MFVSyn__mlsa_filter(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v6 = result;
    v7 = 0;
    v8 = result[17];
    v9 = result[13];
    v10 = result[10];
    v11 = v10 + 20;
    do
    {
      v12 = *(a2 + 2 * v7);
      result = MFVSyn__mlsadf_fxd(v6, (((g_expTable[**(v6 + 104) >> 7] * v12) >> 12) + 16 * v12 * (g_expTable[**(v6 + 104) >> 7] >> 16)) >> 14, v9);
      for (i = 0; i != 5; ++i)
      {
        v14 = *(v8 + 4 * i) + *(v10 + 4 * i);
        *(v10 + 4 * i) = v14;
        v9[i] = v14 >> 10;
      }

      if (*v9 < 0)
      {
        *v9 = 0;
      }

      for (j = 0; j != 6; ++j)
      {
        v16 = *(v8 + 20 + 4 * j) + *(v11 + 4 * j);
        *(v11 + 4 * j) = v16;
        v9[j + 5] = v16 >> 9;
      }

      v17 = 11;
      do
      {
        v18 = *(v8 + 4 * v17) + *(v10 + 4 * v17);
        *(v10 + 4 * v17) = v18;
        v9[v17] = v18 >> 8;
        v19 = v17++ < *(v6 + 120);
      }

      while (v19);
      if ((result + 62258) > 0x1E664)
      {
        v20 = (result + 59638 + ((result + 59638) >> 2)) >> 1;
        v21 = v20 - 59638;
        v19 = (v20 != -2622) & __CFADD__(v20, 2622);
        v22 = ((v20 + 2621 + ((v20 + 2621) >> 2)) >> 2) - 62259;
        if (!v19)
        {
          v21 = v22;
        }

        if (v21 <= 0xFFFF0000)
        {
          v21 = -65536;
        }

        v23 = result - 59638 + ((result - 59638) >> 2);
        if (v23 >> 2 >= 0x51F)
        {
          v24 = (((v23 >> 1) - 2621 + (((v23 >> 1) - 2621) >> 2)) >> 2) + 62259;
        }

        else
        {
          v24 = (v23 >> 1) + 59638;
        }

        if (v24 >= 0xFFFF)
        {
          v24 = 0xFFFF;
        }

        if (result >= 59639)
        {
          v21 = v24;
        }

        *(a3 + 2 * v7) = v21 >> 1;
      }

      else
      {
        *(a3 + 2 * v7++) = result >> 1;
        if (v7 < a4)
        {
          continue;
        }
      }

      ++v7;
    }

    while (v7 < a4);
  }

  return result;
}

void *MFVSyn__mlsa_filter_construct(void *result)
{
  result[69] = 0;
  result[72] = 0;
  result[13] = 0;
  return result;
}

uint64_t BET3FXD__MFVSyn__mlsa_filter_init(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 608) = *a2;
  v4 = BET3FXD__wave_t__sampleRateHz((a1 + 8));
  Alpha = getAlpha(v4);
  *(a1 + 608) = Alpha;
  v6 = fxd_S32ShMultRndS32S32(Alpha, Alpha, 24);
  *(a1 + 612) = 0x1000000 - v6;
  v7 = *(a1 + 608);
  *(a1 + 616) = v7 >> 10;
  *(a1 + 618) = (0x1000000 - v6) >> 10;
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (vect_t__createVect_qs(*(*a1 + 8), a1 + 96, *(a1 + 120) + 1))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 120) < 4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  *(a1 + 621) = v8;
  *(a1 + 620) = *(a2 + 5);
  *(a1 + 642) = 2 * v8 + 2;
  if (MFVSyn__mlsa_pickPadeApproximation(a1, *(a2 + 8), v8, *(a2 + 16), (a1 + 600)) || MFVSyn__mlsa_pickPadeApproximation(a1, *(a2 + 12), *(a1 + 620), *(a2 + 17), (a1 + 592)) || BET3FXD__vect_t__createVect(*(*a1 + 8), a1 + 544, *(a1 + 620) + 2 * *(a1 + 621) + (*(a1 + 120) + 2) * *(a1 + 620) + 3) || BET3FXD__vect_t__createVect(*(*a1 + 8), a1 + 568, *(a1 + 120) + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 120);
  v13 = v12 + 2;
  v14 = *(a1 + 620);
  v15 = (v14 - 7) * (v12 + 2);
  v16 = vdupq_n_s64(v14 + 1);
  v17 = -16 - 8 * v12;
  v18 = (v14 - 6) * v13;
  v19 = (v14 - 5) * v13;
  v20 = (v14 - 4) * v13;
  v21 = (v14 - 3) * v13;
  v22 = (v14 - 2) * v13;
  v23 = (v14 - 1) * v13;
  v24 = v14 * v13;
  v25 = (v14 + 9) & 0x1F8;
  v26 = (a1 + 2 * *(a1 + 620) + 624);
  do
  {
    v27 = vdupq_n_s64(v11);
    v28 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_26ECC7980)));
    if (vuzp1_s8(vuzp1_s16(v28, *v16.i8), *v16.i8).u8[0])
    {
      *v26 = v24 + v10;
    }

    if (vuzp1_s8(vuzp1_s16(v28, *&v16), *&v16).i8[1])
    {
      *(v26 - 1) = v23 + v10;
    }

    if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_26ECCE810)))), *&v16).i8[2])
    {
      *(v26 - 2) = v22 + v10;
      *(v26 - 3) = v21 + v10;
    }

    v29 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_26ECDB2B0)));
    if (vuzp1_s8(*&v16, vuzp1_s16(v29, *&v16)).i32[1])
    {
      *(v26 - 4) = v20 + v10;
    }

    if (vuzp1_s8(*&v16, vuzp1_s16(v29, *&v16)).i8[5])
    {
      *(v26 - 5) = v19 + v10;
    }

    if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v27, xmmword_26ECDB2A0))))).i8[6])
    {
      *(v26 - 6) = v18 + v10;
      *(v26 - 7) = v15 + v10;
    }

    result = 0;
    v11 += 8;
    v10 += v17;
    v26 -= 8;
  }

  while (v25 != v11);
  return result;
}

uint64_t BET3FXD__MFVSyn__mlsa_filter_deinit(uint64_t a1)
{
  v2 = vect_t__deleteVect_qs(a1 + 96);
  v3 = BET3FXD__vect_t__deleteVect(a1 + 544);
  if (BET3FXD__vect_t__deleteVect(a1 + 568) | v3 | v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t MFVSyn__mlsa_pickPadeApproximation(uint64_t a1, int a2, unsigned int a3, int a4, char **a5)
{
  if (a2 == 1)
  {
    if (a3 - 2 > 5)
    {
      return 0;
    }

    result = 0xFFFFFFFFLL;
    if (a4 > 4)
    {
      switch(a4)
      {
        case 5:
          v7 = &g_ChebyPade_R5;
          break;
        case 6:
          v7 = &g_ChebyPade_R6;
          break;
        case 8:
          v7 = &g_ChebyPade_R8;
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a4)
      {
        case 2:
          v7 = &g_ChebyPade_R2;
          break;
        case 3:
          v7 = &g_ChebyPade_R3;
          break;
        case 4:
          v7 = &g_ChebyPade_R4;
          break;
        default:
          return result;
      }
    }

    v5 = &v7[16 * a3];
  }

  else
  {
    if (a2 || a3 - 3 > 2)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = &g_pade_0 + 12 * a3;
  }

  result = 0;
  *a5 = v5;
  return result;
}

uint64_t mlsa_strcpy(uint64_t result, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = *(a2 + v2);
    *(result + v2++) = v3;
  }

  while (v3);
  return result;
}

unint64_t mlsa_strlen(unint64_t result)
{
  v1 = result;
  LODWORD(result) = -1;
  do
  {
    v2 = *v1++;
    result = (result + 1);
  }

  while (v2);
  return result;
}

uint64_t MFVSyn__mlsa_filter_mlp_fill(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v17 = *MEMORY[0x277D85DE8];
  do
  {
    v8 = *(a5 + v7);
    v16[v7++] = v8;
  }

  while (v8);
  qmemcpy(v15, "XLMHU", 5);
  *a6 = a4;
  if (!v16[0])
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 1;
    ;
  }

  if (v9 != 81)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  while (v16[v11] != *(v15 + a2))
  {
    v11 += 16;
    if (v11 == 80)
    {
      return 0;
    }
  }

  v13 = &v16[v11];
  *(v13 + 14) = 0;
  *(v13 + 12) = 0;
  *(v13 + 10) = 0;
  *(v13 + 8) = 0;
  *(v13 + 6) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = 0;
  *(a6 + 8) = LH_atoi(&v16[v11 + 7]);
  *(a6 + 12) = LH_atoi(v13 + 13);
  *(a6 + 4) = LH_atoi(v13 + 3);
  *(a6 + 5) = LH_atoi(v13 + 9);
  *(a6 + 16) = LH_atoi(v13 + 5);
  v14 = LH_atoi(v13 + 11);
  result = 0;
  *(a6 + 17) = v14;
  return result;
}

uint64_t MFVSyn__mlsa_filter_consult(uint64_t a1, signed int a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6)
{
  if (!a1 || !*(a1 + 120))
  {
    return 0xFFFFFFFFLL;
  }

  if (a5 && *a5)
  {
    return MFVSyn__mlsa_filter_mlp_fill(a1, a2, a3, a4, a5, a6);
  }

  v7 = 0;
  v8 = 1;
  v9 = 3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v10 = 5;
      goto LABEL_24;
    }

    if (a2 == 4)
    {
      result = 0;
      *a6 = a4;
      *(a6 + 8) = 0x100000001;
      *(a6 + 4) = 1795;
      v11 = 1284;
LABEL_25:
      *(a6 + 16) = v11;
      return result;
    }
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      v10 = 4;
LABEL_24:
      result = 0;
      *a6 = a4;
      *(a6 + 8) = 0;
      *(a6 + 4) = 3;
      *(a6 + 5) = v10;
      v11 = 2056;
      goto LABEL_25;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
    v9 = 2;
  }

  *a6 = a4;
  if (a3 == 8000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  *(a6 + 8) = 0x100000001;
  *(a6 + 4) = 3;
  *(a6 + 5) = v9;
  result = 0;
  if (v8)
  {
    *(a6 + 16) = 4;
  }

  else
  {
    if (!v7)
    {
      return result;
    }

    *(a6 + 16) = 4;
  }

  *(a6 + 17) = v12;
  return result;
}

unint64_t zerflt_qs(unint64_t result, __int16 *a2, uint64_t a3, int a4, int a5)
{
  v5 = 2 * a5 - 2;
  v6 = (a3 + v5);
  v7 = result + v5;
  do
  {
    v8 = 0;
    LOWORD(v9) = 0;
    v10 = a2;
    do
    {
      v11 = *v10++;
      v9 = ((*(v7 + v8) * v11) >> 16) + v9;
      v8 -= 2;
    }

    while (v10 < &a2[a4]);
    v7 -= 2;
    *v6-- = v9;
  }

  while (v7 >= result);
  return result;
}

uint64_t v_sum_qs(__int16 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = *a1++;
      v2 += v4;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t v_set_qs(uint64_t result, __int16 a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = (a3 + 7) & 0xFFFFFFF8;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_26ECDB2A0;
    v6 = xmmword_26ECDB2B0;
    v7 = xmmword_26ECCE810;
    v8 = xmmword_26ECC7980;
    v9 = (result + 8);
    v10 = vdupq_n_s64(8uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v8));
      if (vuzp1_s8(vuzp1_s16(v11, *v4.i8), *v4.i8).u8[0])
      {
        *(v9 - 4) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v4), *&v4).i8[1])
      {
        *(v9 - 3) = a2;
      }

      if (vuzp1_s8(vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v7))), *&v4).i8[2])
      {
        *(v9 - 2) = a2;
        *(v9 - 1) = a2;
      }

      v12 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i32[1])
      {
        *v9 = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(v12, *&v4)).i8[5])
      {
        v9[1] = a2;
      }

      if (vuzp1_s8(*&v4, vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5)))).i8[6])
      {
        v9[2] = a2;
        v9[3] = a2;
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 8;
      v5 = vaddq_s64(v5, v10);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

uint64_t BET3FXD__wave_t__convertFromF0ToTp(_DWORD *a1, unsigned int a2)
{
  if (a2)
  {
    return ((*a1 << 12) / a2);
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t wave_t__convertFromF0ToTp_SR(unsigned int a1, int a2)
{
  if (a1)
  {
    return ((a2 << 12) / a1);
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t BET3FXD__wave_t__convertFromTpToF0(_DWORD *a1, unsigned int a2)
{
  if (a2)
  {
    return ((*a1 << 12) / a2);
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t BET3FXD__wave_t__setSampleRateHz(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 1)
  {
    return a2;
  }

  *a1 = a2;
  a1[1] = a2 >> 1;
  if (a2 <= 11999)
  {
    if (a2 == 8000)
    {
      v2 = 268435;
      goto LABEL_15;
    }

    if (a2 != 11025)
    {
      return a2;
    }

    v3 = -1825;
LABEL_13:
    v2 = v3 | 0x20000;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 0x2EE0:
      v3 = -17651;
      goto LABEL_13;
    case 0x3E80:
      v3 = 3146;
      goto LABEL_13;
    case 0x5622:
      v2 = 97392;
LABEL_15:
      a1[2] = v2;
      break;
  }

  return a2;
}

uint64_t BET3FXD__MFVSyn__loadExcTable(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v37 = 0;
  *__s1 = 0;
  memset(v40, 0, sizeof(v40));
  __src = 0;
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if ((ssftriff_reader_OpenChunk(a2, __s1, &v37, &__src) & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "EXHD"))
    {
      v36 = 64;
      if ((ssftriff_reader_ReadStringZ(a2, __src, v37, 0, v40, &v36) & 0x80000000) == 0 && v36 + 16 >= v37)
      {
        __src = __src + v36;
        cstdlib_memmove(a1 + 59, __src, 4uLL);
        __src = __src + 4;
        cstdlib_memmove(a1 + 61, __src, 2uLL);
        __src = __src + 2;
        cstdlib_memmove(a1 + 490, __src, 2uLL);
        __src = __src + 2;
        cstdlib_memmove(a1 + 492, __src, 2uLL);
        __src = __src + 2;
        cstdlib_memmove(a1 + 494, __src, 2uLL);
        __src = __src + 2;
        cstdlib_memmove(a1 + 62, __src, 2uLL);
        __src = __src + 2;
        cstdlib_memmove(a1 + 498, __src, 2uLL);
        __src = __src + 2;
        if ((ssftriff_reader_CloseChunk(a2) & 0x80000000) == 0 && (ssftriff_reader_OpenChunk(a2, __s1, &v37, &__src) & 0x80000000) == 0 && !cstdlib_strcmp(__s1, "EXDT"))
        {
          if (*(a1 + 249))
          {
            __dst = 0;
            v6 = heap_Calloc(*(*a1 + 8), *(a1 + 118), 24);
            a1[60] = v6;
            if (v6)
            {
              v7 = heap_Calloc(*(*a1 + 8), ((*(a1 + 246) + *(a1 + 244)) * *(a1 + 118)), 2);
              v8 = a1[60];
              *v8 = v7;
              if (v7)
              {
                v9 = *(a1 + 118);
                if (v9 > 1)
                {
                  v10 = 2 * *(a1 + 244);
                  v11 = v7 + v10;
                  v12 = v8 + 3;
                  v13 = v9 - 1;
                  do
                  {
                    *v12 = v11;
                    v12 += 3;
                    v11 += v10;
                    --v13;
                  }

                  while (v13);
                }

                if (v9 < 1)
                {
                  return (ssftriff_reader_CloseChunk(a2) >> 31);
                }

                v14 = v8[3 * v9 - 3] + 2 * *(a1 + 244);
                v15 = 2 * *(a1 + 246);
                v16 = v8 + 1;
                do
                {
                  *v16 = v14;
                  v16 += 3;
                  v14 += v15;
                  --v9;
                }

                while (v9);
                v17 = 0;
                v18 = __src;
LABEL_24:
                cstdlib_memmove(*(a1[60] + 24 * v17), v18, 2 * (a1[61] & 0x7FFF));
                v19 = *(a1 + 244);
                v20 = __src + 2 * (v19 & 0x7FFF);
                __src = v20;
                v21 = v19 & 0x7FFF;
                v22 = a1[60];
                while (1)
                {
                  v23 = v21 - 1;
                  if (v21 == 1)
                  {
                    v25 = 0;
                    v24 = *(v22 + 24 * v17);
                  }

                  else
                  {
                    if (!v21)
                    {
                      cstdlib_memmove(*(v22 + 24 * v17 + 8), v20, 2 * (*(a1 + 246) & 0x7FFF));
                      v26 = *(a1 + 246);
                      v27 = __src + 2 * (v26 & 0x7FFF);
                      __src = v27;
                      for (i = v26 & 0x7FFF; ; i = v29)
                      {
                        v29 = i - 1;
                        if (i == 1)
                        {
                          v31 = 0;
                          v30 = *(a1[60] + 24 * v17 + 8);
                        }

                        else
                        {
                          if (!i)
                          {
                            cstdlib_memmove(&__dst, v27, 4uLL);
                            __src = __src + 4;
                            v32 = __src;
                            v33 = a1[60] + 24 * v17;
                            *(v33 + 16) = __dst;
                            cstdlib_memmove((v33 + 20), v32, 2uLL);
                            __src = __src + 2;
                            cstdlib_memmove((a1[60] + 24 * v17 + 22), __src, 2uLL);
                            v18 = __src + 2;
                            __src = __src + 2;
                            if (++v17 >= *(a1 + 118))
                            {
                              return (ssftriff_reader_CloseChunk(a2) >> 31);
                            }

                            goto LABEL_24;
                          }

                          v30 = *(a1[60] + 24 * v17 + 8);
                          v31 = *(v30 + 2 * i - 4);
                        }

                        *(v30 + 2 * v29) ^= v31;
                      }
                    }

                    v24 = *(v22 + 24 * v17);
                    v25 = *(v24 + 2 * v21 - 4);
                  }

                  *(v24 + 2 * v23) ^= v25;
                  v21 = v23;
                }
              }
            }
          }

          else
          {
            v5 = *a1[60];
            if (v5)
            {
              heap_Free(0, v5);
              heap_Free(0, a1[60]);
            }
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t BET3FXD__MFVSyn__releaseExcTable(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[60];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v2)
  {
    heap_Free(*(*a1 + 8), *v2);
    v2 = a1[60];
  }

  heap_Free(*(*a1 + 8), v2);
  return 0;
}

uint64_t RccSyn__init_Synthesis(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = 2164269062;
  v12 = xmmword_287EF0830;
  v13 = xmmword_287EF0820;
  *a2 = a1;
  if (!PRMBLK_CreateFromMRCC_Param(a1, 2, (a2 + 32), &v13, &v12, 0, a3, 1))
  {
    v6 = *(a2 + 32);
    v7 = *(a2 + 40);
    *v7 = a1;
    *v6 = a1;
    v8 = v7[1];
    if (!Mrcc2Rr_InitByProps(0, v6) && !Rr2Pcm_InitByProps(0, v7))
    {
      MrccInput_Init(a1, a2 + 48);
      v9 = *(v8 + 24);
      if (v9 <= *(v8 + 28))
      {
        v9 = *(v8 + 28);
      }

      *(a2 + 260) = v9;
      RrInput_Init(a1, a2 + 160);
      *(a2 + 256) = *(v8 + 24);
      v10 = heap_Alloc(*(a1 + 8), 2 * *(a2 + 260));
      *(a2 + 264) = v10;
      if (v10)
      {
        return 0;
      }

      else
      {
        return 2164269062;
      }
    }
  }

  return v5;
}

uint64_t RccSyn__SynthesisOneFrame(uint64_t a1, _DWORD *a2, void *a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  v8 = v6[1];
  RrInput_Reset(a1 + 160);
  if (Mrcc2Rr_ProcessFrame(v7, a1 + 48, a1 + 160))
  {
    return 7;
  }

  *(a1 + 256) = *(v8 + 24);
  if (Rr2Pcm_ProcessFrame(v6, a1 + 160, a1 + 248))
  {
    return 10;
  }

  result = 2164269062;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      *a2 = *(a1 + 256);
      *a3 = *(a1 + 264);
    }
  }

  return result;
}

void *RccSyn__deinit_Synthesis(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Mrcc2Rr_Deallocate(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    Rr2Pcm_Deallocate(v3);
    *(a1 + 40) = 0;
  }

  RrInput_DeallocateData((a1 + 160));
  MrccInput_DeallocateData((a1 + 48));
  result = MrccInput_DeallocateData((a1 + 104));
  v5 = *(a1 + 264);
  if (v5)
  {
    result = heap_Free(*(*a1 + 8), v5);
    *(a1 + 264) = 0;
  }

  return result;
}

uint64_t RccSyn__reset_Synthesis(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2.n128_f64[0] = Rr2Pcm_Reset(*(a1 + 40));

  return Mrcc2Rr_Reset(v1, v2);
}

uint64_t PRMBLK_ReadParameters(uint64_t a1, void *a2, int a3, _DWORD *a4)
{
  if (a3 != 2)
  {
    return 3;
  }

  v82 = v4;
  v83 = v5;
  v9 = *(*a2 + 8);
  v10 = a4[4];
  if ((v10 & 0x80000000) == 0)
  {
    result = 1;
    if (v10 <= 11024)
    {
      if (!v10)
      {
        v9[2] = 0;
        v9[4] = 0;
        goto LABEL_22;
      }

      if (v10 == 8000)
      {
LABEL_13:
        v10 = v9[4];
        if (v10 <= 0)
        {
          v10 = 256;
LABEL_20:
          v9[4] = v10;
        }

LABEL_22:
        v9[5] = (v10 >> 1) + 1;
        goto LABEL_23;
      }

      if (v10 != 11000)
      {
        return result;
      }
    }

    else
    {
      if (v10 > 21999)
      {
        if (v10 != 22050 && v10 != 22000)
        {
          return result;
        }

        v9[2] = 22000;
LABEL_18:
        v10 = v9[4];
        if (v10 <= 0)
        {
          v10 = 512;
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      if (v10 != 11025)
      {
        if (v10 != 16000)
        {
          return result;
        }

        goto LABEL_18;
      }
    }

    v9[2] = 11000;
    goto LABEL_13;
  }

LABEL_23:
  v12 = a4[73];
  if ((v12 & 0x80000000) == 0 && Mrcc2Rr_SetSampleRateDependentParams(v9, v9[2], v12))
  {
    return 1;
  }

  v13 = a4[6];
  if ((v13 & 0x80000000) == 0)
  {
    v9[3] = v13;
  }

  v14 = a4[43];
  if ((v14 & 0x80000000) == 0)
  {
    v9[14] = v14;
  }

  v15 = a4[44];
  if ((v15 & 0x80000000) == 0)
  {
    v9[6] = v15;
  }

  v16 = a4[45];
  if ((v16 & 0x80000000) == 0)
  {
    v9[7] = v16;
  }

  v17 = a4[5];
  if ((v17 & 0x80000000) == 0)
  {
    v9[8] = v17;
  }

  v18 = a4[46];
  if ((v18 & 0x80000000) == 0)
  {
    v9[15] = v18;
  }

  v19 = a4[8];
  if ((v19 & 0x80000000) == 0)
  {
    v9[9] = v19;
  }

  v20 = a4[9];
  if ((v20 & 0x80000000) == 0)
  {
    v9[10] = v20;
  }

  v21 = a4[47];
  if ((v21 & 0x80000000) == 0)
  {
    v9[11] = v21;
  }

  v22 = a4[26];
  if ((v22 & 0x80000000) == 0)
  {
    v9[12] = v22;
  }

  v23 = a4[7];
  if ((v23 & 0x80000000) == 0)
  {
    v9[13] = v23;
  }

  v24 = *(a2[1] + 8);
  v25 = a4[4];
  if (v25 < 0)
  {
    goto LABEL_79;
  }

  result = 1;
  if (v25 > 15999)
  {
    v26 = 16000;
    if (v25 == 16000)
    {
      *(v24 + 8) = 16000;
      v27 = *(v24 + 12);
      v28 = 512;
      if (v27 > 0)
      {
        v29 = 0;
        v30 = 160;
        v31 = 80;
        goto LABEL_70;
      }

      v29 = 0;
      *(v24 + 12) = 512;
      v30 = 160;
      v31 = 80;
    }

    else
    {
      if (v25 != 22050 && v25 != 22000)
      {
        return result;
      }

      v26 = 22000;
      *(v24 + 8) = 22000;
      v27 = *(v24 + 12);
      v28 = 512;
      if (v27 > 0)
      {
        v29 = 1;
        v30 = 220;
        v31 = 110;
        goto LABEL_70;
      }

      *(v24 + 12) = 512;
      v29 = 1;
      v30 = 220;
      v31 = 110;
    }

    v27 = 512;
    goto LABEL_70;
  }

  v26 = 8000;
  if (v25 == 8000)
  {
    *(v24 + 8) = 8000;
    v27 = *(v24 + 12);
    v28 = 256;
    if (v27 > 0)
    {
      v29 = 0;
      v30 = 80;
      v31 = 40;
      goto LABEL_70;
    }

    v29 = 0;
    *(v24 + 12) = 256;
    v30 = 80;
    v31 = 40;
LABEL_67:
    v27 = 256;
    goto LABEL_70;
  }

  v26 = 11000;
  if (v25 != 11000 && v25 != 11025)
  {
    return result;
  }

  *(v24 + 8) = 11000;
  v27 = *(v24 + 12);
  v28 = 256;
  if (v27 <= 0)
  {
    v29 = 0;
    *(v24 + 12) = 256;
    v30 = 110;
    v31 = 55;
    goto LABEL_67;
  }

  v29 = 0;
  v30 = 110;
  v31 = 55;
LABEL_70:
  *(v24 + 20) = v28;
  *(v24 + 24) = v31;
  *(v24 + 44) = v30;
  v32.i32[0] = v27 >> 1;
  v32.i32[1] = v31;
  *(v24 + 28) = vmin_s32(*(v24 + 28), v32);
  if (*(v24 + 16) < v27)
  {
    v27 = *(v24 + 16);
  }

  *(v24 + 16) = v27;
  if (v29)
  {
    v33 = 4;
  }

  else
  {
    v33 = 0;
  }

  if (v29)
  {
    v34 = 968;
  }

  else
  {
    v34 = 1024;
  }

  *(v24 + 168) = v33;
  *(v24 + 172) = v34;
  Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, *(v24 + 136), v26);
LABEL_79:
  v35 = *(v24 + 12);
  *(v24 + 168) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(v24 + 8) == 22000), 0x1FuLL)), 0x3C800000004, 0x40000000000);
  *(v24 + 44) = 2 * *(v24 + 24);
  *(v24 + 288) = v35 / 2;
  *(v24 + 284) = PositiveShortLog2(v35);
  v36 = *(v24 + 12);
  *(v24 + 292) = v36;
  *(v24 + 296) = 440 * v36 / *(v24 + 44) / 256;
  Rr2Pcm_SetDerivedParams(v24);
  v37 = *(v24 + 8);
  v38 = *(v24 + 12);
  *(v24 + 300) = 32 * v37 / v38;
  *(v24 + 304) = (v38 << 20) / (32 * v37);
  *(v24 + 308) = (v37 + 860160 * *(v24 + 24)) / (2 * v37);
  Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, *(v24 + 136), v37);
  v39 = a4[10];
  if ((v39 & 0x80000000) == 0)
  {
    *(v24 + 24) = v39;
    Rr2Pcm_SetDerivedParams(v24);
  }

  v40 = a4[72];
  if ((v40 & 0x80000000) == 0)
  {
    *(v24 + 20) = v40;
  }

  v41 = a4[11];
  if ((v41 & 0x80000000) == 0)
  {
    *(v24 + 184) = v41;
  }

  v42 = a4[25];
  if ((v42 & 0x80000000) == 0)
  {
    *(v24 + 196) = v42;
    if (v42)
    {
      if (!*(v24 + 248))
      {
        __sprintf_chk(v81, 0, 3uLL, "%d", 3);
        if (Rr2Pcm_ProcessMvf_SetProperty(a1, v24 + 200, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN", v81))
        {
          return 2;
        }
      }
    }
  }

  v43 = a4[74];
  if ((v43 & 0x80000000) == 0)
  {
    *(v24 + 64) = v43;
  }

  v44 = a4[13];
  if ((v44 & 0x80000000) == 0)
  {
    *(v24 + 76) = v44;
  }

  v45 = a4[18];
  if ((v45 & 0x80000000) == 0)
  {
    *(v24 + 80) = v45;
  }

  v46 = a4[17];
  if ((v46 & 0x80000000) == 0)
  {
    *(v24 + 84) = v46;
  }

  v47 = a4[14];
  if ((v47 & 0x80000000) == 0)
  {
    *(v24 + 96) = v47;
  }

  v48 = a4[19];
  if ((v48 & 0x80000000) == 0)
  {
    *(v24 + 100) = v48;
  }

  v49 = a4[22];
  if ((v49 & 0x80000000) == 0)
  {
    *(v24 + 104) = 32 * v49;
  }

  v50 = a4[23];
  if ((v50 & 0x80000000) == 0)
  {
    *(v24 + 108) = 32 * v50;
  }

  v51 = a4[20];
  if ((v51 & 0x80000000) == 0)
  {
    *(v24 + 112) = 32 * (v51 & 0x3FFFFF);
  }

  v52 = a4[21];
  if ((v52 & 0x80000000) == 0)
  {
    *(v24 + 116) = 32 * (v52 & 0x3FFFFF);
  }

  v53 = a4[48];
  if ((v53 & 0x80000000) == 0)
  {
    *(v24 + 120) = v53;
    *(v24 + 124) = v53;
  }

  v54 = a4[49];
  if ((v54 & 0x80000000) == 0)
  {
    *(v24 + 120) = v54;
  }

  v55 = a4[50];
  if ((v55 & 0x80000000) == 0)
  {
    *(v24 + 124) = v55;
  }

  v56 = a4[15];
  if ((v56 & 0x80000000) == 0)
  {
    *(v24 + 128) = v56;
  }

  v57 = a4[16];
  if ((v57 & 0x80000000) == 0)
  {
    *(v24 + 132) = v57;
  }

  v58 = a4[12];
  if ((v58 & 0x80000000) == 0)
  {
    *(v24 + 136) = v58;
    Rr2Pcm_ProcessMvf_SetHbThr(v24 + 200, v58, *(v24 + 8));
  }

  v59 = a4[51];
  if ((v59 & 0x80000000) == 0)
  {
    *(v24 + 156) = v59;
    if (v59)
    {
      *(v24 + 164) = 31785;
    }
  }

  v60 = a4[52];
  if ((v60 & 0x80000000) == 0)
  {
    *(v24 + 268) = v60;
  }

  v61 = a4[53];
  if ((v61 & 0x80000000) == 0)
  {
    *(v24 + 272) = v61;
  }

  v62 = a4[46];
  if ((v62 & 0x80000000) == 0)
  {
    *(v24 + 280) = v62;
  }

  v63 = a4[54];
  if ((v63 & 0x80000000) == 0)
  {
    *(v24 + 160) = v63;
  }

  v64 = a4[55];
  if ((v64 & 0x80000000) == 0)
  {
    *(v24 + 144) = *(v24 + 12) * v64 / (32 * *(v24 + 8));
  }

  v65 = a4[56];
  if ((v65 & 0x80000000) == 0)
  {
    *(v24 + 148) = *(v24 + 12) * v65 / (32 * *(v24 + 8));
  }

  v66 = a4[57];
  if ((v66 & 0x80000000) == 0)
  {
    *(v24 + 140) = *(v24 + 12) * v66 / (32 * *(v24 + 8));
  }

  v67 = a4[24];
  if ((v67 & 0x80000000) == 0)
  {
    *(v24 + 60) = v67;
  }

  v68 = a4[27];
  if ((v68 & 0x80000000) == 0)
  {
    *(v24 + 276) = v68;
  }

  if ((a4[33] & 0x80000000) == 0)
  {
    v69 = *(v24 + 232);
    if (v69)
    {
      heap_Free(*(a1 + 8), v69);
      *(v24 + 232) = 0;
    }

    v70 = heap_Alloc(*(a1 + 8), 12);
    *(v24 + 232) = v70;
    if (!v70)
    {
      return 2;
    }

    cstdlib_memset(v70, 0, 0xCuLL);
    *(v24 + 248) = 3;
  }

  v71 = a4[34];
  if ((v71 & 0x80000000) == 0)
  {
    *(v24 + 220) = v71;
  }

  v72 = a4[35];
  if ((v72 & 0x80000000) == 0)
  {
    *(v24 + 216) = v72;
  }

  v73 = a4[36];
  if ((v73 & 0x80000000) == 0)
  {
    *(v24 + 208) = v73;
  }

  v74 = a4[37];
  if ((v74 & 0x80000000) == 0)
  {
    *(v24 + 252) = v74;
  }

  v75 = a4[38];
  if ((v75 & 0x80000000) == 0)
  {
    *(v24 + 256) = v75;
  }

  v76 = a4[67];
  if ((v76 & 0x80000000) == 0)
  {
    *(v24 + 28) = v76;
  }

  v77 = a4[68];
  if ((v77 & 0x80000000) == 0)
  {
    *(v24 + 32) = v77;
  }

  v78 = a4[69];
  if ((v78 & 0x80000000) == 0)
  {
    *(v24 + 16) = v78;
  }

  v79 = a4[70];
  if ((v79 & 0x80000000) == 0)
  {
    *(v24 + 36) = v79;
  }

  v80 = a4[71];
  result = 0;
  if ((v80 & 0x80000000) == 0)
  {
    *(v24 + 40) = v80;
  }

  return result;
}

uint64_t PRMBLK_CreateFromMRCC_Param(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, _DWORD *), _DWORD *a7, int a8)
{
  v9 = a3;
  if (a2 <= 0)
  {

    return PRMBLK_ReadParameters(a1, a3, a2, a7);
  }

  else
  {
    v15 = 0;
    v16 = 8 * a2;
    v17 = a2;
    do
    {
      v18 = (*(a4 + v15))(a1, a7);
      v9[v15 / 8] = v18;
      if (!v18)
      {
        return 4;
      }

      v15 += 8;
    }

    while (v16 != v15);
    result = PRMBLK_ReadParameters(a1, v9, a2, a7);
    if (a6)
    {
      do
      {
        v20 = (*a6)(*v9, a7);
        if (v20)
        {
          v21 = a8 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          return 3;
        }

        ++v9;
        ++a6;
        --v17;
      }

      while (v17);
      if (v20)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Mrcc2Rr_SetProperty(_DWORD *a1, char *__s1, unsigned __int8 *a3, char *a4)
{
  if (!cstdlib_strcmp(__s1, "PROD_CODE"))
  {
    v8 = cstdlib_atoi(a3);
    if (Mrcc2Rr_SetSampleRateDependentParams(a1, v8, a1[4]))
    {
      return 1;
    }
  }

  cstdlib_strcpy(a4, "");
  return 0;
}

uint64_t Mrcc2Rr_SetSampleRateDependentParams(_DWORD *a1, int a2, unsigned int a3)
{
  v3 = 1;
  if (a2 <= 11024)
  {
    if (!a2)
    {
      v7 = 0;
      a1[2] = 0;
LABEL_20:
      v3 = 0;
      a1[4] = v7;
      a1[5] = (v7 >> 1) + 1;
      return v3;
    }

    if (a2 == 8000)
    {
      a1[2] = 8000;
      goto LABEL_16;
    }

    if (a2 != 11000)
    {
      return v3;
    }

LABEL_9:
    a1[2] = 11000;
LABEL_16:
    v5 = __OFSUB__(a3, 1);
    v4 = (a3 - 1) < 0;
    v6 = 256;
LABEL_17:
    if (v4 != v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = a3;
    }

    goto LABEL_20;
  }

  if (a2 <= 21999)
  {
    if (a2 != 11025)
    {
      if (a2 == 16000)
      {
        a1[2] = 16000;
LABEL_13:
        v5 = __OFSUB__(a3, 1);
        v4 = (a3 - 1) < 0;
        v6 = 512;
        goto LABEL_17;
      }

      return v3;
    }

    goto LABEL_9;
  }

  if (a2 == 22050 || a2 == 22000)
  {
    a1[2] = 22000;
    goto LABEL_13;
  }

  return v3;
}

uint64_t *Mrcc2Rr_AllocateAndInit(uint64_t a1, uint64_t a2, int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 32);
  if (v6)
  {
    Mrcc2Rr_Init(a1, a2, v6, a3);
    if (v7)
    {
      heap_Free(*(a1 + 8), v6);
      return 0;
    }
  }

  return v6;
}

void Mrcc2Rr_Init(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  *a3 = a1;
  v8 = heap_Alloc(*(a1 + 8), 64);
  a3[1] = v8;
  if (v8)
  {
    cstdlib_memset(v8, 0, 0x40uLL);
    v9 = heap_Alloc(*(a1 + 8), 64);
    a3[2] = v9;
    if (v9)
    {
      cstdlib_memset(v9, 0, 0x40uLL);
      v10 = heap_Alloc(*(a1 + 8), 176);
      a3[3] = v10;
      if (v10)
      {
        v11 = cstdlib_memset(v10, 0, 0xB0uLL);
        Mrcc2Rr_InitProps(v11, a2, a3[1]);
        if (!(v12 | a4))
        {
          v13 = a3[1];

          Mrcc2Rr_InitByProps(v13, a3);
        }
      }
    }
  }
}

double Mrcc2Rr_InitProps(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    LODWORD(a2) = *(a2 + 16);
  }

  if (!Mrcc2Rr_SetSampleRateDependentParams(a3, a2, 0))
  {
    *(a3 + 12) = -1;
    *(a3 + 24) = xmmword_26ED6E620;
    *(a3 + 40) = xmmword_26ED6E630;
    *&result = 0x100000018;
    *(a3 + 56) = 0x100000018;
  }

  return result;
}

uint64_t Mrcc2Rr_InitByProps(int *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
    a2[1] = a1;
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a2[2];
  v5 = a2[3];
  if (!v3[7] && !v3[6])
  {
    return 1;
  }

  if (!Init_SinTable(*a2, a2[2], 0))
  {
    Init_MelTable(*a2, v4 + 32, 0, v3[2]);
  }

  if (!v3[7])
  {
    return 0;
  }

  result = Mrcc_InitByProps(*a2, v5, v4, v3, 0);
  if (!result)
  {
    return 0;
  }

  return result;
}

double MrccInput_Init(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  result = 0.0;
  *(a2 + 48) = 0;
  *(a2 + 16) = xmmword_26ECC7980;
  *(a2 + 32) = xmmword_26ED6E640;
  return result;
}

uint64_t MrccInput_AllocateData(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 < a2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    *(a1 + 8) = 0;
  }

  v7 = heap_Alloc(*(*a1 + 8), 4 * a2);
  *(a1 + 8) = v7;
  if (!v7)
  {
    return 2;
  }

  cstdlib_memset(v7, 0, 4 * a2);
  result = 0;
  *(a1 + 48) = 1;
  *(a1 + 16) = a2;
  return result;
}

void *MrccInput_DeallocateData(void *result)
{
  if (*(result + 12))
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      result = heap_Free(*(*result + 8), v2);
      v1[1] = 0;
    }
  }

  return result;
}

uint64_t Mrcc2Rr_GetEnergy(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 56);
  if (v2 < 12)
  {
    return ipow2(**(a2 + 8) << (11 - v2));
  }

  else
  {
    return ipow2((**(a2 + 8) >> (v2 - 11)) + ((**(a2 + 8) >> (v2 - 12)) & 1));
  }
}

uint64_t Mrcc2Rr_ProcessFrame(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[3];
  v8 = v6[7];
  v9 = v6[3];
  if (v9 < 1)
  {
    if (v8)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v10 = *(a2 + 16);
  if (v10 != v9 && v10 > 0 || v8 == 0)
  {
    return 1;
  }

LABEL_12:
  v14 = *(a2 + 40);
  *(a3 + 76) = v14;
  *(a3 + 64) = -1;
  v15 = *(a2 + 20);
  *(a3 + 44) = v15;
  *(a3 + 48) = v15;
  v16 = *(a2 + 24);
  *(a3 + 56) = v16;
  *(a3 + 80) = *(a2 + 32);
  if (v15)
  {
    v17 = v6[6];
    *(a3 + 8) = 1;
    *(a3 + 12) = v17;
    if (v16)
    {
      v18 = v6[2];
      v19 = v18 + (((v15 + 2097152000) / (2 * v15)) << 6);
LABEL_18:
      v20 = v19 / (2 * v18);
      goto LABEL_19;
    }

LABEL_17:
    v18 = v6[2];
    v19 = v18 + (v15 << 9);
    goto LABEL_18;
  }

  v17 = v6[6] & *(a2 + 44);
  *(a3 + 8) = 1;
  *(a3 + 12) = v17;
  if (!v16)
  {
    goto LABEL_17;
  }

  v20 = 0;
LABEL_19:
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 36);
  v7[7] = v14;
  v7[8] = v23;
  result = Mrcc_PutHarmFrqs(v7, v20, 0x4000, v6[13]);
  if (result)
  {
    return result;
  }

  result = Mrcc_PutCoefs(v7, v21, v22, 0);
  if (result)
  {
    return result;
  }

  v24 = *(a3 + 24);
  if (v24)
  {
    if (*(a3 + 72) >= v7[26])
    {
      goto LABEL_27;
    }

    heap_Free(*(*a1 + 8), v24);
    *(a3 + 24) = 0;
  }

  v25 = heap_Alloc(*(*a1 + 8), 4 * v7[23]);
  *(a3 + 24) = v25;
  if (!v25)
  {
    return 2;
  }

  cstdlib_memset(v25, 0, 4 * v7[23]);
  *(a3 + 72) = v7[23];
LABEL_27:
  if (!v17)
  {
    *(a3 + 40) = v7[26];
    Mrcc_Enhance(v7);
    goto LABEL_37;
  }

  v26 = *(a3 + 32);
  if (v26)
  {
    v27 = v7[26];
    if (*(a3 + 68) >= v27)
    {
      goto LABEL_33;
    }

    heap_Free(*(*a1 + 8), v26);
    *(a3 + 32) = 0;
  }

  v28 = heap_Alloc(*(*a1 + 8), 4 * v7[23]);
  *(a3 + 32) = v28;
  if (!v28)
  {
    return 2;
  }

  cstdlib_memset(v28, 0, 4 * v7[23]);
  *(a3 + 68) = v7[23];
  v27 = v7[26];
LABEL_33:
  *(a3 + 40) = v27;
  Mrcc_Enhance(v7);
  if (*(a2 + 44))
  {
LABEL_37:
    v29 = 0;
    goto LABEL_38;
  }

  v29 = 2;
LABEL_38:

  return Mrcc_Solve_AmpPhase(v7, a3, v29, 1);
}

void *Mrcc2Rr_Deallocate(void *a1)
{
  result = Mrcc2Rr_Clear(a1);
  if (a1)
  {
    v3 = *(*a1 + 8);

    return heap_Free(v3, a1);
  }

  return result;
}

void *Mrcc2Rr_Clear(void *a1)
{
  if (*(a1[1] + 28))
  {
    Mrcc_Clear(*a1, a1[3]);
  }

  v2 = a1[2];
  Deinit_SinTable(*a1, v2);
  result = Deinit_MelTable(*a1, v2 + 32);
  v4 = a1[1];
  if (v4)
  {
    result = heap_Free(*(*a1 + 8), v4);
    a1[1] = 0;
  }

  v5 = a1[2];
  if (v5)
  {
    result = heap_Free(*(*a1 + 8), v5);
    a1[2] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    result = heap_Free(*(*a1 + 8), v6);
    a1[3] = 0;
  }

  return result;
}

uint64_t Init_MelTable(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *(a2 + 24) = 0;
  if (a3)
  {
    v4 = a3 + 1;
  }

  else
  {
    v4 = 1025;
  }

  *(a2 + 16) = v4;
  v5 = a3 & 0xFFFFFBFF;
  if ((a3 & 0xFFFFFBFF) == 0 && a4 == 22000)
  {
    v6 = &alMelFrq_Q15_22000_1024;
LABEL_16:
    result = 0;
    *a2 = v6;
    *(a2 + 8) = &alNrmFrq_Q15_1024;
    *(a2 + 20) = 16;
    return result;
  }

  if (!v5 && a4 == 11000)
  {
    v6 = &alMelFrq_Q15_11000_1024;
    goto LABEL_16;
  }

  if (!v5 && a4 == 16000)
  {
    v6 = &alMelFrq_Q15_16000_1024;
    goto LABEL_16;
  }

  result = 7;
  if (!v5 && a4 == 8000)
  {
    v6 = &alMelFrq_Q15_8000_1024;
    goto LABEL_16;
  }

  return result;
}

uint64_t Get_MelValue(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = a2 / *(a1 + 20) + 1;
  v5 = *a1;
  v6 = *(a1 + 8);
  *(a1 + 24) = v4;
  return GetInterpolatedValue(v6, v5, v3, a2, (a1 + 24), 0);
}

uint64_t Get_MelValues(uint64_t result, int *a2, _DWORD *a3, int a4)
{
  *(result + 24) = 0;
  v4 = (result + 24);
  if (a4 >= 1)
  {
    v7 = result;
    v8 = a4;
    do
    {
      v9 = *a2++;
      result = GetInterpolatedValue(*(v7 + 8), *v7, *(v7 + 16), v9, v4, 0);
      *a3++ = result;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t Mrcc_SetProperty(int *a1, char *__s1, char *a3)
{
  if (cstdlib_strcmp(__s1, "SIZE"))
  {
    if (!cstdlib_strcmp(__s1, "ENERGY_MODE"))
    {
      if (cstdlib_strcmp(a3, "EN_RR_ENV"))
      {
        if (cstdlib_strcmp(a3, "EN_RR"))
        {
          if (cstdlib_strcmp(a3, "EN_C0"))
          {
            return 1;
          }

          v7 = 2;
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 3;
      }

      a1[6] = v7;
    }
  }

  else
  {
    *a1 = cstdlib_atoi(a3);
  }

  result = 0;
  v8 = a1[6];
  v9 = *a1 - 2;
  if (v8 != 3)
  {
    v9 = *a1 - 1;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = *a1;
  }

  a1[1] = v10;
  return result;
}

uint64_t Mrcc_InitByProps(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5)
{
  a2[40] = *(a4 + 60);
  if (a5)
  {
    return 1;
  }

  v7 = *(a4 + 32);
  v8 = *(a4 + 52);
  a2[42] = *(a4 + 56);
  v9 = *(a4 + 36);
  v10 = *(a4 + 20);
  v12 = *(a4 + 8);
  v11 = *(a4 + 12);
  *(a2 + 16) = a3;
  *(a2 + 17) = a3 + 32;
  *a2 = v11;
  v13 = v11 - 1;
  if (v11 < 1)
  {
    return 8;
  }

  if (v7 == 3)
  {
    v13 = v11 - 2;
  }

  if (v7)
  {
    v11 = v13;
    v15 = v7 == 3;
  }

  else
  {
    v15 = -1;
  }

  a2[1] = v11;
  a2[2] = v15;
  a2[6] = v7;
  *(a2 + 9) = v9;
  a2[13] = 5;
  v16 = 2 * v10 - 2;
  a2[23] = v10;
  a2[24] = v16;
  a2[25] = PositiveShortLog2((2 * v10 - 2));
  v17 = heap_Alloc(*(a1 + 8), 4 * *a2);
  *(a2 + 2) = v17;
  if (!v17)
  {
    return 2;
  }

  cstdlib_memset(v17, 0, 4 * *a2);
  v18 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 7) = v18;
  if (!v18)
  {
    return 2;
  }

  cstdlib_memset(v18, 0, 4 * v10);
  v19 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 8) = v19;
  if (!v19)
  {
    return 2;
  }

  cstdlib_memset(v19, 0, 4 * v10);
  v20 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 9) = v20;
  if (!v20)
  {
    return 2;
  }

  cstdlib_memset(v20, 0, 4 * v10);
  v21 = heap_Alloc(*(a1 + 8), 4 * v10);
  *(a2 + 10) = v21;
  if (!v21)
  {
    return 2;
  }

  cstdlib_memset(v21, 0, 4 * v10);
  v22 = heap_Alloc(*(a1 + 8), 4 * (a2[24] + 2));
  *(a2 + 18) = v22;
  if (!v22)
  {
    return 2;
  }

  cstdlib_memset(v22, 0, 4 * (a2[24] + 2));
  v23 = heap_Alloc(*(a1 + 8), 4 * (a2[24] + 2));
  *(a2 + 19) = v23;
  if (!v23)
  {
    return 2;
  }

  cstdlib_memset(v23, 0, 4 * (a2[24] + 2));
  a2[28] = v12;
  a2[29] = 0x4000;
  a2[30] = v8;
  a2[31] = 0x8000;
  v24 = *(a2 + 10);
  if (v10 >= 1)
  {
    v25 = 0;
    v26 = (v10 + 0x7FFF) / v16;
    v27 = vdupq_n_s64(v10 - 1);
    v28 = (v10 + 3) & 0xFFFFFFFC;
    v29 = v24 + 2;
    v30 = xmmword_26ECCE810;
    v31 = xmmword_26ECC7980;
    v32 = vdupq_n_s64(4uLL);
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v27, v31));
      if (vuzp1_s16(v33, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v33, *&v27).i8[2])
      {
        *(v29 - 1) = v26 + v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v30))).i32[1])
      {
        *v29 = 2 * v26 + v25;
        v29[1] = 3 * v26 + v25;
      }

      v30 = vaddq_s64(v30, v32);
      v31 = vaddq_s64(v31, v32);
      v25 += 4 * v26;
      v29 += 4;
      v28 -= 4;
    }

    while (v28);
  }

  warpFreqs(a2, v24, *(a2 + 9), v10, a2 + 22);
  return 0;
}

uint64_t Mrcc_PutCoefs(int *a1, _DWORD *a2, int a3, int a4)
{
  result = 6;
  if (a2 && a3 >= 1)
  {
    v6 = *a1;
    if (*a1 < 1 || v6 == a3)
    {
      if (a4)
      {
        if (v6 >= 1)
        {
          v8 = 0;
          v9 = *(a1 + 2);
          do
          {
            *(v9 + 4 * v8) = -a2[v8];
            ++v8;
          }

          while (v8 < *a1);
        }
      }

      else
      {
        cstdlib_memcpy(*(a1 + 2), a2, 4 * v6);
      }

      v19 = 0;
      v10 = a1[42];
      LODWORD(v11) = a1[2];
      v12 = v10 - 13;
      if (v10 >= 13 && (v11 & 0x80000000) == 0)
      {
        v13 = v10 - 12;
        v14 = *(a1 + 2);
        v15 = 1 << v12;
        v16 = -1;
        do
        {
          v17 = *v14;
          if ((v15 & v17) != 0)
          {
            v18 = (v17 >> v13) + 1;
          }

          else
          {
            v18 = v17 >> v13;
          }

          *v14++ = v18;
          v11 = a1[2];
          ++v16;
        }

        while (v16 < v11);
      }

      ScaleTo16BitSignedRange((*(a1 + 2) + 4 * v11 + 4), a1[1], &v19 + 1, &v19, 0, 0);
      result = 0;
      a1[41] = v19 - HIDWORD(v19);
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t Mrcc_PutFrqs(uint64_t a1, const void *a2, int a3, int a4, int a5)
{
  v6 = *(a1 + 92);
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6 - 1;
  }

  *(a1 + 104) = v7;
  *(a1 + 116) = a4;
  *(a1 + 120) = a5;
  v8 = *(a1 + 56);
  if (v6 == v7)
  {
    cstdlib_memcpy(v8, *(a1 + 80), 4 * v6);
    cstdlib_memcpy(*(a1 + 64), *(a1 + 72), 4 * *(a1 + 108));
  }

  else
  {
    cstdlib_memcpy(v8, a2, 4 * v7);
    warpFreqs(a1, 0, 0, v7, (a1 + 108));
  }

  return 0;
}

uint64_t warpFreqs(uint64_t result, int *a2, _DWORD *a3, unsigned int a4, _DWORD *a5)
{
  v6 = result;
  v7 = *(result + 92);
  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  if (a2)
  {
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    a2 = *(result + 56);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  a3 = *(result + 64);
LABEL_6:
  if (*(result + 120) == 1)
  {
    v9 = *(result + 136);
    v10 = *(v6 + 116);
    if (v10 < 0x4000)
    {
      if (v8 < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v11 = 0;
        while (a2[v11] <= v10)
        {
          if (v8 == ++v11)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v8) = v11;
      }
    }

LABEL_19:
    result = Get_MelValues(v9, a2, a3, v8);
    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    LODWORD(v8) = 0;
    if (a5)
    {
LABEL_20:
      *a5 = v8;
    }
  }

  return result;
}

uint64_t Mrcc_PutHarmFrqs(uint64_t a1, int a2, int a3, int a4)
{
  if (a2)
  {
    v5 = *(a1 + 92) - 1;
    if (v5 >= a3 / a2 + 1)
    {
      v6 = a3 / a2 + 1;
    }

    else
    {
      v6 = *(a1 + 92) - 1;
    }

    *(a1 + 108) = v6;
    if (v5 >= 0x4000 / a2 + 1)
    {
      v5 = 0x4000 / a2 + 1;
    }

    *(a1 + 104) = v5;
    *(a1 + 116) = a3;
    *(a1 + 120) = a4;
    v7 = *(a1 + 56);
    *v7 = 0;
    LODWORD(v8) = *(a1 + 104);
    if (v8 >= 2)
    {
      v9 = *v7 + a2;
      v10 = 1;
      do
      {
        v7[v10++] = v9;
        v8 = *(a1 + 104);
        v9 += a2;
      }

      while (v10 < v8);
    }

    warpFreqs(a1, 0, 0, v8, (a1 + 108));
  }

  else
  {
    if (a3 == 0x4000)
    {
      v11 = *(a1 + 92);
      v12 = v11;
    }

    else
    {
      v11 = *(a1 + 92);
      v13 = 2 * a3 * (v11 - 1) + 0x7FFF;
      if (((a3 * (v11 - 1)) & 0x40000000) == 0)
      {
        v13 = 2 * a3 * (v11 - 1);
      }

      v12 = (v13 >> 15) + 1;
    }

    *(a1 + 104) = v11;
    *(a1 + 108) = v12;
    *(a1 + 116) = a3;
    *(a1 + 120) = a4;
    cstdlib_memcpy(*(a1 + 56), *(a1 + 80), 4 * v11);
    cstdlib_memcpy(*(a1 + 64), *(a1 + 72), 4 * *(a1 + 88));
  }

  return 0;
}

void *Mrcc_Clear(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2[2];
    if (v4)
    {
      result = heap_Free(result[1], v4);
      a2[2] = 0;
    }

    v5 = a2[8];
    if (v5)
    {
      result = heap_Free(v3[1], v5);
      a2[8] = 0;
    }

    v6 = a2[9];
    if (v6)
    {
      result = heap_Free(v3[1], v6);
      a2[9] = 0;
    }

    v7 = a2[10];
    if (v7)
    {
      result = heap_Free(v3[1], v7);
      a2[10] = 0;
    }

    v8 = a2[7];
    if (v8)
    {
      result = heap_Free(v3[1], v8);
      a2[7] = 0;
    }

    v9 = a2[18];
    if (v9)
    {
      result = heap_Free(v3[1], v9);
      a2[18] = 0;
    }

    v10 = a2[19];
    if (v10)
    {
      result = heap_Free(v3[1], v10);
      a2[19] = 0;
    }
  }

  return result;
}

uint64_t Mrcc_Enhance(uint64_t result)
{
  if (*(result + 104) >= *(result + 92))
  {
    v1 = 40;
  }

  else
  {
    v1 = 36;
  }

  if (*(result + 24))
  {
    v2 = *(result + 8);
    if (*(result + 36) == 0x8000 || *(result + 4) < 1)
    {
      goto LABEL_51;
    }

    v3 = 0;
    v4 = *(result + v1);
    v5 = v4 >= 0 ? v4 : -v4;
    v6 = v5 & 0x7FFF;
    v7 = v5 >> 15;
    v8 = *(result + 16) + 4 * v2 + 4;
    v9 = 0x8000;
    do
    {
      if (v9 >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = -v9;
      }

      v11 = (v9 >> 31) | 1;
      if (v4 < 0)
      {
        v11 = -v11;
      }

      v9 = ((v10 >> 15) * v6 + (((v10 & 0x7FFF) * v6 + 0x4000) >> 15) + v10 * v7) * v11;
      v12 = *(v8 + 4 * v3);
      if (v12 >= 0)
      {
        v13 = *(v8 + 4 * v3);
      }

      else
      {
        v13 = -v12;
      }

      v14 = (v12 >> 31) | 1;
      if (v9 >= 0)
      {
        v15 = v9;
      }

      else
      {
        v15 = -v9;
      }

      if (v9 < 0)
      {
        v14 = -v14;
      }

      *(v8 + 4 * v3++) = ((v13 >> 15) * (v15 & 0x7FFF) + (((v13 & 0x7FFF) * (v15 & 0x7FFF) + 0x4000) >> 15) + v13 * (v15 >> 15)) * v14;
    }

    while (v3 < *(result + 4));
    if (*(result + 24))
    {
LABEL_51:
      if (*(result + 44) == 0x8000 || *(result + 4) < 1)
      {
        goto LABEL_38;
      }

      v16 = 0;
      v17 = *(result + 16) + 4 * v2 + 4;
      do
      {
        v18 = *(v17 + 4 * v16);
        if (v18 >= 0)
        {
          v19 = *(v17 + 4 * v16);
        }

        else
        {
          v19 = -v18;
        }

        v20 = (v18 >> 31) | 1;
        v21 = *(result + 44);
        v22 = v21 < 0;
        if (v21 < 0)
        {
          v21 = -v21;
        }

        if (v22)
        {
          v20 = -v20;
        }

        *(v17 + 4 * v16++) = ((v21 & 0x7FFF) * (v19 >> 15) + (((v21 & 0x7FFF) * (v19 & 0x7FFF) + 0x4000) >> 15) + v19 * (v21 >> 15)) * v20;
      }

      while (v16 < *(result + 4));
      if (*(result + 24))
      {
LABEL_38:
        v23 = *(result + 48);
        if (v23 != 0x8000)
        {
          v24 = *(result + 104);
          v25 = *(result + 92);
          v26 = *(result + 28);
          if (v26 < 1 || (v27 = *(result + 52), v26 > v27) || v24 == v25)
          {
            if (v24 != v25)
            {
              v23 = 0x8000;
            }
          }

          else
          {
            if (v27 >= v26)
            {
              v28 = *(result + 28);
            }

            else
            {
              v28 = *(result + 52);
            }

            v23 += v28 * (0x8000 - v23) / (v27 + 1);
          }

          *(result + 32) = v23;
        }
      }
    }
  }

  return result;
}

uint64_t Mrcc_Solve_AmpPhase(uint64_t a1, void **a2, int a3, int a4)
{
  v7 = *(a2 + 10);
  if (a3 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v9 = *(a1 + 108);
  if (v9 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  result = 1;
  if (a4 && (v8 & 0xFFFFFFFD) == 1)
  {
    v12 = a2[3];
    v14 = *(a1 + 4);
    v13 = *(a1 + 8);
    if (*(a1 + 104) < v7)
    {
      v7 = *(a1 + 104);
    }

    v15 = 4 * v7;
    if (!a3 || (cstdlib_memset(a2[4], 0, 4 * v7), a3 != 1))
    {
      cstdlib_memset(v12, 0, v15);
    }

    result = 1;
    *(a2 + 4) = 1;
    if (v8 != 2)
    {
      v16 = ipow2(**(a1 + 16) / 2);
      if (v16 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      v18 = *(a1 + 32);
      v19 = v18 < 0;
      if (v18 < 0)
      {
        v18 = -v18;
      }

      if (v19)
      {
        v20 = -((v16 >> 31) | 1);
      }

      else
      {
        v20 = (v16 >> 31) | 1;
      }

      *(a2 + 16) = ((v18 & 0x7FFF) * (v17 >> 15) + (((v18 & 0x7FFF) * (v17 & 0x7FFF) + 0x4000) >> 15) + v17 * (v18 >> 15)) * v20;
      if (*(a1 + 104) == *(a1 + 92))
      {
        v21 = *(a1 + 144);
        *v21 = 0;
        cstdlib_memcpy(v21 + 1, (*(a1 + 16) + 4 * v13 + 4), 4 * *(a1 + 4));
        cstdlib_memset((*(a1 + 144) + 4 * (v14 + 1)), 0, 4 * (*(a1 + 96) - (v14 + 1)));
        v22 = call_cfsv_construct(*a2, *(a1 + 144), *(a1 + 96), 15);
        if (v22)
        {
          v23 = v22;
          call_cfsv_rfft(v22, *(a1 + 96));
          call_cfsv_changeOutputSampleOrder(v23, *(a1 + 152));
          call_cfsv_destruct(*a2, v23);
        }

        v24 = *(a1 + 144);
        *(v24 + 4 * *(a1 + 96)) = *(v24 + 4);
        if (v10 < 1)
        {
          return 0;
        }

        v25 = *(a1 + 64);
        v26 = v10;
        v27 = v12;
        do
        {
          v28 = *v25++;
          *v27++ = 2 * *(v24 + 4 * (2 * (((1 << (14 - *(a1 + 100))) + v28) >> (15 - *(a1 + 100)))));
          --v26;
        }

        while (v26);
        v29 = *(a1 + 168) + *(a1 + 164) - 12;
        if (v29 >= 1)
        {
          v30 = 1 << (*(a1 + 168) + *(a1 + 164) - 13);
          do
          {
            *v12 = (v30 + *v12) >> v29;
            ++v12;
            --v10;
          }

          while (v10);
          return 0;
        }

        v74 = 12 - (*(a1 + 168) + *(a1 + 164));
        result = 0;
        do
        {
          *v12++ <<= v74;
          --v10;
        }

        while (v10);
      }

      else
      {
        v31 = *(a1 + 8);
        LODWORD(v32) = *(a2 + 10);
        v34 = a2[3];
        v33 = a2[4];
        v35 = *(a1 + 108);
        if (v35 >= v32)
        {
          v32 = v32;
        }

        else
        {
          v32 = v35;
        }

        v36 = *(a1 + 164) + *(a1 + 168);
        v37 = v36 - 12;
        if (a3 == 2)
        {
          if (v32 >= 1)
          {
            v52 = 0;
            v53 = *(a1 + 64);
            v54 = 4 * v31 + 4;
            do
            {
              v34[v52] = 0;
              if (*(a1 + 4) >= 1)
              {
                v55 = 0;
                v56 = *(v53 + 4 * v52);
                v57 = *(a1 + 128);
                v58 = *(a1 + 16) + v54;
                v59 = v56;
                do
                {
                  v60 = (((v59 >> 5) & 1) + (v59 >> 6)) & *(v57 + 24);
                  v61 = *(v57 + 16);
                  v62 = v60 - v61;
                  if (v60 >= v61)
                  {
                    v63 = -*(*v57 + 2 * v62);
                    v64 = -*(*(v57 + 8) + 2 * v62);
                  }

                  else
                  {
                    v63 = *(*v57 + 2 * v60);
                    v64 = *(*(v57 + 8) + 2 * v60);
                  }

                  if (v63 == 0x7FFF)
                  {
                    v63 = 0x8000;
                  }

                  if (v64 == 0x7FFF)
                  {
                    v64 = 0x8000;
                  }

                  v33[v52] -= (*(v58 + 4 * v55) * v63) >> 14;
                  v34[v52] += (*(v58 + 4 * v55) * v64) >> 14;
                  v59 += v56;
                  ++v55;
                }

                while (v55 < *(a1 + 4));
              }

              ++v52;
            }

            while (v52 != v32);
          }
        }

        else if (!a3 && v32 >= 1)
        {
          v38 = 0;
          v39 = *(a1 + 64);
          v40 = 4 * v31 + 4;
          do
          {
            v34[v38] = 0;
            if (*(a1 + 4) >= 1)
            {
              v41 = 0;
              v42 = 0;
              v43 = *(v39 + 4 * v38);
              v44 = *(a1 + 128);
              v45 = *(a1 + 16) + v40;
              v46 = v43;
              do
              {
                v47 = (((v46 >> 5) & 1) + (v46 >> 6)) & *(v44 + 24);
                v48 = *(v44 + 16);
                v49 = __OFSUB__(v47, v48);
                v50 = v47 - v48;
                if (v50 < 0 != v49)
                {
                  v51 = *(*(v44 + 8) + 2 * v47);
                }

                else
                {
                  v51 = -*(*(v44 + 8) + 2 * v50);
                }

                v42 += (*(v45 + 4 * v41) * v51) >> 14;
                v34[v38] = v42;
                v46 += v43;
                ++v41;
              }

              while (v41 < *(a1 + 4));
            }

            ++v38;
          }

          while (v38 != v32);
        }

        v65 = v36 - 9;
        if (v37 < 1)
        {
          if (v32 >= 1)
          {
            v67 = v32;
            do
            {
              *v34++ <<= 12 - v36;
              --v67;
            }

            while (v67);
          }
        }

        else if (v32 >= 1)
        {
          v66 = v32;
          do
          {
            *v34 = ((1 << (v36 - 13)) + *v34) >> v37;
            ++v34;
            --v66;
          }

          while (v66);
        }

        if (v65 >= 1)
        {
          if (v32 >= 1)
          {
            v68 = 1 << (v36 - 10);
            do
            {
              v69 = *v33;
              if ((*v33 & 0x80000000) != 0)
              {
                v69 = -v69;
              }

              v70 = 3615 * (v69 >> 15) + ((3615 * (v69 & 0x7FFF) + 0x4000) >> 15);
              if ((*v33 & 0x80000000) != 0)
              {
                v70 = -v70;
              }

              *v33++ = (v68 + v70) >> v65;
              --v32;
            }

            while (v32);
          }

          return 0;
        }

        if (v32 < 1)
        {
          return 0;
        }

        v71 = 9 - v36;
        do
        {
          result = 0;
          v72 = *v33;
          if ((*v33 & 0x80000000) != 0)
          {
            v72 = -v72;
          }

          v73 = 3615 * (v72 >> 15) + ((3615 * (v72 & 0x7FFF) + 0x4000) >> 15);
          if ((*v33 & 0x80000000) != 0)
          {
            v73 = -v73;
          }

          *v33++ = v73 << v71;
          --v32;
        }

        while (v32);
      }
    }
  }

  return result;
}

uint64_t Rr2Pcm_SetHarmonicInfo(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a2;
  v10 = *(a3 + 48);
  v11 = *(a3 + 248);
  if (a5 && v11)
  {
    v12 = *(a3 + 16);
    v13 = *(a3 + 40);
    v14 = a1[3] / **(a4 + 64);
  }

  else
  {
    v12 = *(a3 + 8);
    v13 = *(a3 + 32);
    if (v11)
    {
      if (!*v11)
      {
        return 1;
      }

      v14 = a1[3] / *v11;
    }

    else
    {
      v14 = 1;
    }
  }

  v15 = *(a3 + 64);
  v16 = *(v15 + 64);
  v17 = *(v15 + 40);
  if (v10)
  {
    v118 = 0;
    if (a1[25])
    {
      v18 = (a3 + 56);
    }

    else
    {
      v18 = a1 + 34;
    }

    v19 = *(v15 + 16);
    v20 = a1[17];
    if (v19)
    {
      v21 = v20 == 1;
    }

    else
    {
      v21 = 0;
    }

    v23 = v21 || v20 == 0;
    if (a5)
    {
      v24 = *(a3 + 16);
      v26 = *(a3 + 40);
      v25 = *(a3 + 44);
      v27 = (*(a4 + 64) + 36);
      if (!v23)
      {
        return 1;
      }
    }

    else
    {
      v24 = *(a3 + 8);
      v26 = *(a3 + 32);
      v25 = *(a3 + 36);
      if (v11)
      {
        v27 = v11 + 9;
      }

      else
      {
        v27 = a1 + 75;
      }

      if (!v23)
      {
        return 1;
      }
    }

    if (!*(a3 + 50) || !v19 || !*(v15 + 8) || !a1[70])
    {
      return 1;
    }

    v105 = *v18;
    v107 = *(a3 + 72);
    v115 = *v27;
    v108 = *(a3 + 50);
    v110 = v25;
    if (*(a3 + 100))
    {
      LODWORD(v40) = 0;
      if (v26 >= 1 && v17 >= 2)
      {
        v40 = 0;
        v41 = 1;
        v42 = v24;
        do
        {
          if (*v42)
          {
            v43 = *(v15 + 12);
            v44 = *(*(a3 + 152) + 4 * v41 - 4);
            v42[1] = v44;
            if (v43)
            {
              v43 = *(*(v15 + 32) + 4 * v41);
              v45 = 8;
            }

            else
            {
              v42[3] = v44;
              v45 = 4;
            }

            v42[v45] = v43;
            ++v41;
          }

          if (++v40 >= v26)
          {
            break;
          }

          v42 += 9;
        }

        while (v41 < v17);
      }
    }

    else if (v26 < 1)
    {
      LODWORD(v40) = 0;
    }

    else
    {
      v46 = 0;
      v47 = 1;
      v48 = v24;
      while (1)
      {
        v49 = *(a3 + 64);
        if (v47 >= *(v49 + 40))
        {
          break;
        }

        if (*v48)
        {
          v50 = v24;
          v51 = v16;
          v52 = *(v49 + 12);
          v53 = *(*(v49 + 24) + 4 * v47) + (*(a3 + 196) << 12);
          v48[2] = v53;
          v54 = ipow2(v53);
          v48[1] = v54;
          if (v52)
          {
            v55 = *(*(*(a3 + 64) + 32) + 4 * v47);
            v56 = 8;
          }

          else
          {
            v55 = 0;
            v48[3] = v54;
            v56 = 4;
          }

          v16 = v51;
          v24 = v50;
          v48[v56] = v55;
          ++v47;
          v5 = a5;
          v8 = a2;
        }

        ++v46;
        v48 += 9;
        if (v26 == v46)
        {
          goto LABEL_76;
        }
      }

      LODWORD(v40) = v46;
    }

    if (v40 < v26)
    {
      v57 = &v24[9 * v40 + 1];
      do
      {
        if (*(v57 - 1))
        {
          *v57 = 0;
          v57[1] = 0;
        }

        LODWORD(v40) = v40 + 1;
        v57 = (v57 + 36);
      }

      while (v26 > v40);
    }

LABEL_76:
    if (v26 != v110)
    {
      if (a1[17] != 1 || a1[23])
      {
        return 1;
      }

      v85 = (13440 * v108) >> 15;
      if (v17 > 1)
      {
        v86 = 0;
        v87 = 0;
        v88 = vdupq_n_s64(v17 - 2);
        v89 = 4 * v85;
        v90 = (v107 + 8);
        do
        {
          v91 = vdupq_n_s64(v87);
          v92 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v91, xmmword_26ECC7980)));
          if (vuzp1_s16(v92, *v88.i8).u8[0])
          {
            *(v90 - 2) = v85 + v86;
          }

          if (vuzp1_s16(v92, *&v88).i8[2])
          {
            *(v90 - 1) = 2 * v85 + v86;
          }

          if (vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v91, xmmword_26ECCE810)))).i32[1])
          {
            *v90 = 3 * v85 + v86;
            v90[1] = v89 + v86;
          }

          v87 += 4;
          v86 += v89;
          v90 += 4;
        }

        while (((v17 + 2) & 0xFFFFFFFC) != v87);
      }

      v109 = (13440 * v108) >> 15;
      if (v26 >= 1)
      {
        v93 = 32 * v105;
        v106 = v17 - 1;
        v94 = v26;
        do
        {
          v95 = v24[7] * v115 / 16;
          if (v95 >= v93)
          {
            v96 = v16;
            VoicedAmpAttenuation = GetVoicedAmpAttenuation(a1, v93, v24[7] * v115 / 16);
            v98 = VoicedAmpAttenuation;
            if (*v24)
            {
              v24[1] = (v24[1] * VoicedAmpAttenuation) >> 10;
              v16 = v96;
            }

            else
            {
              InterpolatedValue = GetInterpolatedValue(v107, (*(*(a3 + 64) + 24) + 4), v106, v95, &v118, 0);
              v111 = ipow2(InterpolatedValue + (*(a3 + 196) << 12));
              v24[2] = v111;
              AuxUvHarmResolution = GetAuxUvHarmResolution(a1, v93, v95);
              if (AuxUvHarmResolution >= v109)
              {
                v102 = 1024;
              }

              else
              {
                if (a1[21])
                {
                  v101 = 0;
                }

                else
                {
                  v101 = AuxUvHarmResolution;
                }

                v102 = (AuxUvHarmResolution << 10) / (v109 - v101);
              }

              NoiseAttenuation = GetNoiseAttenuation(a1, v93, v95);
              if (NoiseAttenuation * NoiseAttenuation <= (v98 * v98))
              {
                v104 = 0;
              }

              else
              {
                v104 = (sqroot5((a3 + 220), ((NoiseAttenuation * NoiseAttenuation - v98 * v98) / 4 * v102 / 256) >> 8) * v111) >> 10;
              }

              v16 = v96;
              v5 = a5;
              v24[1] = v104;
            }
          }

          v24 += 9;
          --v94;
        }

        while (v94);
      }
    }

    scaleHarmEnergy(a3, a4, v16, 1, v5);
    v59 = *(a3 + 8);
    v60 = *(a3 + 32);
    if (*(a3 + 48))
    {
      if (v60)
      {
        v61 = 36 * v60;
        do
        {
          if (*v59)
          {
            v62 = *(v8 + 32) & *(v59 + 32);
            v63 = *(v8 + 24);
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            if (v65 < 0 != v64)
            {
              v58.i16[0] = *(*(v8 + 16) + 2 * v62);
              v58.i16[2] = *(*(v8 + 8) + 2 * v62);
              v66 = vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL);
            }

            else
            {
              v58.i16[0] = *(*(v8 + 16) + 2 * v65);
              v58.i16[2] = *(*(v8 + 8) + 2 * v65);
              v66 = vneg_s32(vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL));
            }

            v67 = *(v59 + 4);
            if (v67 >= 0)
            {
              v68 = *(v59 + 4);
            }

            else
            {
              v68 = -v67;
            }

            if (v67 >= 0)
            {
              v69 = -1;
            }

            else
            {
              v69 = 1;
            }

            v70 = vabs_s32(v66);
            v71 = vand_s8(v70, 0x7F0000007FLL);
            v58 = vmul_s32(vsra_n_u32(vmla_s32(vmul_s32(vdup_n_s32(v68), vshr_n_u32(v70, 0xFuLL)), vdup_n_s32(v68 >> 15), v71), vmla_s32(0x400000004000, vdup_n_s32(v68 & 0x7FFF), v71), 0xFuLL), vbsl_s8(vcltz_s32(v66), vdup_n_s32(v69), vdup_n_s32((v67 >> 31) | 1u)));
            *(v59 + 12) = v58;
          }

          v59 += 36;
          v61 -= 36;
        }

        while (v61);
      }
    }

    else if (v60)
    {
      v73 = *(v8 + 32);
      v74 = *(v8 + 24);
      v75 = 36 * v60;
      v76 = (v59 + 32);
      do
      {
        v77 = *v76 & v73;
        v78 = v77 - v74;
        if (v77 >= v74)
        {
          v58.i16[0] = *(*(v8 + 16) + 2 * v78);
          v58.i16[2] = *(*(v8 + 8) + 2 * v78);
          v79 = vneg_s32(vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL));
        }

        else
        {
          v58.i16[0] = *(*(v8 + 16) + 2 * v77);
          v58.i16[2] = *(*(v8 + 8) + 2 * v77);
          v79 = vshr_n_s32(vshl_n_s32(v58, 0x10uLL), 0x10uLL);
        }

        v80 = *(v76 - 7);
        if (v80 >= 0)
        {
          v81 = *(v76 - 7);
        }

        else
        {
          v81 = -v80;
        }

        if (v80 >= 0)
        {
          v82 = -1;
        }

        else
        {
          v82 = 1;
        }

        v83 = vabs_s32(v79);
        v84 = vand_s8(v83, 0x7F0000007FLL);
        v58 = vmul_s32(vsra_n_u32(vmla_s32(vmul_s32(vdup_n_s32(v81), vshr_n_u32(v83, 0xFuLL)), vdup_n_s32(v81 >> 15), v84), vmla_s32(0x400000004000, vdup_n_s32(v81 & 0x7FFF), v84), 0xFuLL), vbsl_s8(vcltz_s32(v79), vdup_n_s32(v82), vdup_n_s32((v80 >> 31) | 1u)));
        *(v76 - 5) = v58;
        v76 += 9;
        v75 -= 36;
      }

      while (v75);
    }

    v37 = a1;
    v38 = a3;
    v39 = a4;
  }

  else
  {
    if ((v17 - 1) / v14 >= v13)
    {
      v28 = v13;
    }

    else
    {
      v28 = (v17 - 1) / v14;
    }

    if (!*(v15 + 8) || *(v15 + 12) || !*(v15 + 16))
    {
      return 1;
    }

    v29 = 0;
    if (a1[70] && v28 >= 1)
    {
      v117 = *(v15 + 64);
      v30 = 4 * v14;
      v31 = (*(v15 + 24) + v30);
      v32 = (*(a3 + 8) + 8);
      v33 = v28;
      do
      {
        v34 = *v31 + (*(a3 + 196) << 12);
        *v32 = v34;
        v35 = ipow2(v34);
        *(v32 - 1) = v35;
        v32[1] = v35;
        v32[2] = 0;
        v31 = (v31 + v30);
        v32 += 9;
        --v33;
      }

      while (v33);
      v29 = v28;
      v6 = a4;
      LODWORD(v16) = v117;
    }

    if (v29 < v13)
    {
      v36 = (v12 + 36 * v29 + 4);
      do
      {
        *v36 = 0;
        v36[1] = 0;
        v36 = (v36 + 36);
        ++v29;
      }

      while (v13 > v29);
    }

    scaleHarmEnergy(a3, v6, v16, 0, v5);
    v37 = a1;
    v38 = a3;
    v39 = v6;
  }

  FilterHarmonics(v37, v38, v39, v5);
  return 0;
}

uint64_t scaleHarmEnergy(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v38 = 0;
  if (a5)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 40);
    v10 = *(a2 + 64);
    if (*(a1 + 48))
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10 + 52);
    }

    v15 = (v10 + 56);
    v13 = (a1 + 216);
    v14 = (a1 + 212);
  }

  else
  {
    v12 = *(a1 + 248);
    v8 = *(a1 + 8);
    v9 = *(a1 + 32);
    v13 = (a1 + 208);
    v14 = (a1 + 204);
    if (v12)
    {
      if (*(a1 + 48))
      {
        v11 = 1;
      }

      else
      {
        v11 = *(v12 + 52);
      }

      v15 = (v12 + 56);
    }

    else
    {
      if (*(a1 + 48))
      {
        v11 = 1;
      }

      else
      {
        v11 = *(a1 + 92);
      }

      v15 = (a1 + 96);
    }
  }

  v37 = 0;
  v16 = *v15;
  v17 = v9;
  if (a3 <= 0)
  {
    result = ScaleTo16BitSignedRangeWithSkip(v8 + 4, v9, 36, &v38 + 1, &v38, *(a1 + 200));
    v21 = HIDWORD(v38) - (v38 + *(a1 + 196));
    if (v11 > 1)
    {
      if (v17)
      {
        v22 = (v8 + 4);
        v23 = 36 * v17;
        do
        {
          *v22 = (*v22 * v11) >> v16;
          v22 += 9;
          v23 -= 36;
        }

        while (v23);
      }

      v21 += v16;
    }

    if (v21 >= 1)
    {
      *v13 += v21;
      return result;
    }

    v24 = *v14 - v21;
    goto LABEL_61;
  }

  v18 = CalcSquareNormWthSkip(v8 + 4, v9, 36, 2896, &v37, a4);
  result = sqroot5(0, v18 >> 8);
  if (!result)
  {
    return result;
  }

  if (a4)
  {
    v20 = v37;
  }

  else
  {
    v20 = 0;
  }

  while (result > (a3 + (a3 >> 1)))
  {
    result = result >> 1;
    ++v20;
  }

  if (!v20)
  {
    if (result >= (a3 >> 1))
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        result = (2 * result);
        --v20;
      }

      while (result < (a3 >> 1));
    }
  }

  v25 = (a3 << 10) / result;
  v26 = 15 - v16;
  if (v11 <= 1)
  {
    v26 = 10;
  }

  v27 = v26 + v20;
  if (v11 <= 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = v16 - 5;
  }

  if (v27 < 0)
  {
    v33 = -v27;
    if (!v17)
    {
      v31 = -1;
      goto LABEL_59;
    }

    v34 = (v8 + 4);
    v35 = 36 * v17;
    v31 = -1;
    do
    {
      v36 = (((*v34 * v25) >> v28) * v11) << v33;
      *v34 = v36;
      v34 += 9;
      if (v36 > v31)
      {
        v31 = v36;
      }

      v35 -= 36;
    }

    while (v35);
  }

  else
  {
    if (!v17)
    {
      v31 = -1;
      v33 = v27;
      goto LABEL_59;
    }

    v29 = (v8 + 4);
    v30 = 36 * v17;
    v31 = -1;
    do
    {
      v32 = ((*v29 * v25) >> v28) * v11;
      *v29 = v32;
      v29 += 9;
      if (v32 > v31)
      {
        v31 = v32;
      }

      v30 -= 36;
    }

    while (v30);
    v33 = v27;
  }

  if (!a4 || v31 < 0x4000)
  {
LABEL_59:
    result = ScaleTo16BitSignedRangeWithSkip(v8 + 4, v17, 36, v13, v14, v31);
    if (v27 < 0)
    {
      return result;
    }

    goto LABEL_60;
  }

  if ((v27 & 0x80000000) == 0)
  {
LABEL_60:
    v24 = *v14 + v33;
LABEL_61:
    *v14 = v24;
  }

  return result;
}

_DWORD *FilterHarmonics(_DWORD *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = *(a2 + 16);
    v5 = v4 + 36 * *(a2 + 40);
    v6 = *(a3 + 64);
LABEL_4:
    v7 = v6[4] - v6[6];
    v8 = v6 + 8;
    v9 = v6 + 7;
    goto LABEL_5;
  }

  v6 = *(a2 + 248);
  v4 = *(a2 + 8);
  v5 = v4 + 36 * *(a2 + 32);
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = result[72] - result[35];
  v8 = result + 37;
  v9 = result + 36;
LABEL_5:
  if (*(a2 + 48))
  {
    v8 = v9;
  }

  v10 = *v8;
  if (*(v4 + 20) > *v8 || v4 == v5)
  {
    v12 = v4;
  }

  else
  {
    do
    {
      v12 = v4 + 36;
      *(v4 + 12) = 0;
      *(v4 + 4) = 0;
      v13 = *(v4 + 56) > v10 || v12 == v5;
      v4 += 36;
    }

    while (!v13);
  }

  do
  {
    v14 = v12 + 36;
    v15 = *(v12 + 20) >= v7 || v12 == v5;
    v12 += 36;
  }

  while (!v15);
  for (i = v14 - 36; i != v5; i += 36)
  {
    *(i + 12) = 0;
    *(i + 4) = 0;
  }

  return result;
}

uint64_t WindowTrans_Create_Base(void *a1, _DWORD *a2, int a3, int a4, int a5)
{
  if (a3 == 3 && a4 == 128 && a5 == 80)
  {
    LODWORD(v5) = 9;
LABEL_5:
    v6 = &asHannTransSamples_B7_Fft512_Frm160;
LABEL_21:
    *a1 = v6;
    *a2 = v5;
    return 0;
  }

  v7 = a3 == 6 && a4 == 256;
  v8 = v7;
  if (v7 && a5 == 80)
  {
    LODWORD(v5) = 9;
LABEL_16:
    v6 = &asHannTransSamples_B13_Fft512_Frm80;
    goto LABEL_21;
  }

  if (a3 == 11 && a4 == 512 && a5 == 80)
  {
    LODWORD(v5) = 9;
    v6 = &asHannTransSamples_B23_Fft512_Frm40;
    goto LABEL_21;
  }

  if (a3 == 6 && a4 == 512 && a5 == 160)
  {
    LODWORD(v5) = 8;
    goto LABEL_16;
  }

  v10 = a3 == 3 && a4 == 256;
  v11 = v10;
  if (v10 && a5 == 160)
  {
    LODWORD(v5) = 8;
    goto LABEL_5;
  }

  v12 = a3 == 3 && a4 == 512;
  v13 = v12;
  if (v12 && a5 == 320)
  {
    LODWORD(v5) = 7;
    goto LABEL_5;
  }

  if (a3 == 4 && a4 == 512 && a5 == 220)
  {
    LODWORD(v5) = 8;
LABEL_51:
    v6 = &asHannTransSamples_B9_Fft512_Frm110;
    goto LABEL_21;
  }

  v14 = a3 == 2 && a4 == 256;
  v15 = v14;
  if (v14 && a5 == 220)
  {
    LODWORD(v5) = 8;
LABEL_72:
    v6 = &asHannTransSamples_B5_Fft256_Frm110;
    goto LABEL_21;
  }

  v16 = a3 == 2 && a4 == 512;
  v17 = v16;
  if (v16 && a5 == 440)
  {
    LODWORD(v5) = 7;
    goto LABEL_72;
  }

  if (a3 == 8 && a4 == 512 && a5 == 110)
  {
    LODWORD(v5) = 9;
    v6 = &asHannTransSamples_B17_Fft512_Frm55;
    goto LABEL_21;
  }

  v18 = a3 == 4 && a4 == 256;
  v19 = v18;
  if (v18 && a5 == 110)
  {
    LODWORD(v5) = 9;
    goto LABEL_51;
  }

  if (a3 == 2 && a4 == 128 && a5 == 110)
  {
    LODWORD(v5) = 9;
    goto LABEL_72;
  }

  if (a3 == 8 && a4 == 256 && a5 == 54)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B17_Fft256_Frm27;
    goto LABEL_21;
  }

  if (a4 == 256 && a3 == 7 && a5 == 62)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B15_Fft256_Frm31;
    goto LABEL_21;
  }

  if (a5 == 70)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B13_Fft256_Frm35;
    goto LABEL_21;
  }

  if (a5 != 78)
  {
    v8 = 0;
  }

  if (v8)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B13_Fft256_Frm39;
    goto LABEL_21;
  }

  v21 = a3 == 5 && a4 == 256;
  v22 = v21;
  if (v21 && a5 == 88)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B11_Fft256_Frm44;
    goto LABEL_21;
  }

  if (a5 != 96)
  {
    v22 = 0;
  }

  if (v22)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B11_Fft256_Frm48;
    goto LABEL_21;
  }

  if (a5 == 104)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B9_Fft256_Frm52;
    goto LABEL_21;
  }

  if (a5 == 112)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B9_Fft256_Frm56;
    goto LABEL_21;
  }

  if (a5 == 120)
  {
    v25 = v19;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B9_Fft256_Frm60;
    goto LABEL_21;
  }

  if (a5 == 128)
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm64;
    goto LABEL_21;
  }

  if (a5 == 138)
  {
    v27 = v11;
  }

  else
  {
    v27 = 0;
  }

  if (v27)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm69;
    goto LABEL_21;
  }

  if (a5 == 146)
  {
    v28 = v11;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm73;
    goto LABEL_21;
  }

  if (a5 == 154)
  {
    v29 = v11;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm77;
    goto LABEL_21;
  }

  if (a5 == 162)
  {
    v30 = v11;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm81;
    goto LABEL_21;
  }

  if (a5 != 170)
  {
    v11 = 0;
  }

  if (v11)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B7_Fft256_Frm85;
    goto LABEL_21;
  }

  if (a5 == 178)
  {
    v31 = v15;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm89;
    goto LABEL_21;
  }

  if (a5 == 186)
  {
    v32 = v15;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm93;
    goto LABEL_21;
  }

  if (a5 == 196)
  {
    v33 = v15;
  }

  else
  {
    v33 = 0;
  }

  if (v33)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm98;
    goto LABEL_21;
  }

  if (a5 == 204)
  {
    v34 = v15;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm102;
    goto LABEL_21;
  }

  if (a5 == 212)
  {
    v35 = v15;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm106;
    goto LABEL_21;
  }

  if (a5 == 242)
  {
    v36 = v15;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    LODWORD(v5) = 8;
    v6 = &asHannTransSamples_B5_Fft256_Frm121;
    goto LABEL_21;
  }

  if (a5 == 264)
  {
    v37 = v13;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B7_Fft512_Frm132;
    goto LABEL_21;
  }

  if (a5 == 286)
  {
    v38 = v13;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B7_Fft512_Frm143;
    goto LABEL_21;
  }

  if (a5 == 308)
  {
    v39 = v13;
  }

  else
  {
    v39 = 0;
  }

  if (v39)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B7_Fft512_Frm154;
    goto LABEL_21;
  }

  if (a5 == 330)
  {
    v40 = v13;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B7_Fft512_Frm165;
    goto LABEL_21;
  }

  if (a5 != 352)
  {
    v13 = 0;
  }

  if (v13)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B7_Fft512_Frm176;
    goto LABEL_21;
  }

  if (a5 == 374)
  {
    v41 = v17;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B5_Fft512_Frm187;
    goto LABEL_21;
  }

  if (a5 == 396)
  {
    v42 = v17;
  }

  else
  {
    v42 = 0;
  }

  if (v42)
  {
    LODWORD(v5) = 7;
    v6 = &asHannTransSamples_B5_Fft512_Frm198;
    goto LABEL_21;
  }

  v43 = v17 ^ 1;
  v5 = 7;
  if (a5 != 418)
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v6 = &asHannTransSamples_B5_Fft512_Frm209;
    goto LABEL_21;
  }

  return v5;
}

uint64_t DeempFreqResponse_Create(uint64_t a1, uint64_t a2)
{
  v2 = &alDeemphFilterFreqResponse;
  v3 = *(a2 + 156) != 0;
  if (!*(a2 + 156))
  {
    v2 = 0;
  }

  *(a1 + 72) = v2;
  *(a1 + 68) = v3 << 8;
  return 0;
}

uint64_t Window_Create_Base(void *a1, int a2)
{
  v2 = 7;
  if (a2 > 109)
  {
    if (a2 > 164)
    {
      if (a2 > 197)
      {
        switch(a2)
        {
          case 198:
            v3 = &asHannSamples_397;
            goto LABEL_81;
          case 209:
            v3 = &asHannSamples_419;
            goto LABEL_81;
          case 220:
            v3 = &asHannSamples_441;
            goto LABEL_81;
        }
      }

      else
      {
        switch(a2)
        {
          case 165:
            v3 = &asHannSamples_331;
            goto LABEL_81;
          case 176:
            v3 = &asHannSamples_353;
            goto LABEL_81;
          case 187:
            v3 = &asHannSamples_375;
            goto LABEL_81;
        }
      }
    }

    else if (a2 > 142)
    {
      switch(a2)
      {
        case 143:
          v3 = &asHannSamples_287;
          goto LABEL_81;
        case 154:
          v3 = &asHannSamples_309;
          goto LABEL_81;
        case 160:
          v3 = &asHannSamples_321;
          goto LABEL_81;
      }
    }

    else
    {
      switch(a2)
      {
        case 110:
          v3 = &asHannSamples_221;
          goto LABEL_81;
        case 121:
          v3 = &asHannSamples_243;
          goto LABEL_81;
        case 132:
          v3 = &asHannSamples_265;
          goto LABEL_81;
      }
    }
  }

  else
  {
    if (a2 <= 63)
    {
      if (a2 <= 43)
      {
        if (a2 <= 34)
        {
          if (a2 == 27)
          {
            v3 = &asHannSamples_55;
            goto LABEL_81;
          }

          if (a2 == 31)
          {
            v3 = &asHannSamples_63;
            goto LABEL_81;
          }

          return v2;
        }

        if (a2 == 35)
        {
          v3 = &asHannSamples_71;
          goto LABEL_81;
        }

        if (a2 == 39)
        {
          v3 = &asHannSamples_79;
          goto LABEL_81;
        }

        if (a2 != 40)
        {
          return v2;
        }
      }

      else
      {
        if (a2 > 54)
        {
          switch(a2)
          {
            case '7':
              v3 = &asHannSamples_111;
              goto LABEL_81;
            case '8':
              v3 = &asHannSamples_113;
              goto LABEL_81;
            case '<':
              v3 = &asHannSamples_121;
              goto LABEL_81;
          }

          return v2;
        }

        if (a2 != 44)
        {
          if (a2 == 48)
          {
            v3 = &asHannSamples_97;
            goto LABEL_81;
          }

          if (a2 == 52)
          {
            v3 = &asHannSamples_105;
            goto LABEL_81;
          }

          return v2;
        }
      }

      v3 = &asHannSamples_89;
      goto LABEL_81;
    }

    if (a2 > 84)
    {
      if (a2 > 97)
      {
        switch(a2)
        {
          case 'b':
            v3 = &asHannSamples_197;
            goto LABEL_81;
          case 'f':
            v3 = &asHannSamples_205;
            goto LABEL_81;
          case 'j':
            v3 = &asHannSamples_213;
            goto LABEL_81;
        }
      }

      else
      {
        switch(a2)
        {
          case 'U':
            v3 = &asHannSamples_171;
            goto LABEL_81;
          case 'Y':
            v3 = &asHannSamples_179;
            goto LABEL_81;
          case ']':
            v3 = &asHannSamples_187;
            goto LABEL_81;
        }
      }
    }

    else if (a2 > 76)
    {
      switch(a2)
      {
        case 'M':
          v3 = &asHannSamples_155;
          goto LABEL_81;
        case 'P':
          v3 = &asHannSamples_161;
          goto LABEL_81;
        case 'Q':
          v3 = &asHannSamples_163;
          goto LABEL_81;
      }
    }

    else
    {
      switch(a2)
      {
        case '@':
          v3 = &asHannSamples_129;
          goto LABEL_81;
        case 'E':
          v3 = &asHannSamples_139;
          goto LABEL_81;
        case 'I':
          v3 = &asHannSamples_147;
LABEL_81:
          v2 = 0;
          *a1 = v3;
          break;
      }
    }
  }

  return v2;
}

double RrInput_Init(uint64_t a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 44) = xmmword_26ED79650;
  *(a2 + 60) = xmmword_26ED79660;
  *(a2 + 8) = 1;
  *&result = 0x400FFFFFFFFLL;
  *(a2 + 76) = 0x400FFFFFFFFLL;
  return result;
}

double RrInput_Reset(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = -1;
  *(a1 + 8) = 1;
  *&result = 0x400FFFFFFFFLL;
  *(a1 + 76) = 0x400FFFFFFFFLL;
  return result;
}

int *RrInput_DeallocateData(int *result)
{
  v1 = result;
  if (result[18] >= 1)
  {
    v2 = *(result + 3);
    if (!v2)
    {
      goto LABEL_5;
    }

    result = heap_Free(*(*result + 8), v2);
  }

  *(v1 + 3) = 0;
LABEL_5:
  if (v1[17] < 1)
  {
LABEL_8:
    *(v1 + 4) = 0;
    goto LABEL_9;
  }

  v3 = *(v1 + 4);
  if (v3)
  {
    result = heap_Free(*(*v1 + 8), v3);
    goto LABEL_8;
  }

LABEL_9:
  v1[17] = 0;
  v1[18] = 0;
  return result;
}

uint64_t RrInput_AllocateData(void *a1, int a2, int a3)
{
  if (a2 >= 1 && *(a1 + 18) < a2)
  {
    v6 = a1[3];
    if (v6)
    {
      heap_Free(*(*a1 + 8), v6);
      a1[3] = 0;
    }

    v7 = heap_Alloc(*(*a1 + 8), 4 * a2);
    a1[3] = v7;
    if (!v7)
    {
      return 2;
    }

    cstdlib_memset(v7, 0, 4 * a2);
    *(a1 + 18) = a2;
  }

  result = 0;
  if (a3 >= 1 && *(a1 + 17) < a3)
  {
    v9 = a1[4];
    if (v9)
    {
      heap_Free(*(*a1 + 8), v9);
      a1[4] = 0;
    }

    v10 = heap_Alloc(*(*a1 + 8), 4 * a3);
    a1[4] = v10;
    if (v10)
    {
      cstdlib_memset(v10, 0, 4 * a3);
      result = 0;
      *(a1 + 17) = a3;
      return result;
    }

    return 2;
  }

  return result;
}

uint64_t Rr2Pcm_ProcessPhases(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  v8 = *(*(a3 + 64) + 12);
  ComparePitches(a1, a3, a4, &v24);
  if (*(a1 + 52))
  {
    v11 = findPhaseAlignment(a1, a2, a3, a4) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (*(a3 + 48))
  {
    if (*(a1 + 56))
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = 0;
      v14 = (*(a3 + 80) * v12 + *(a4 + 24) * *(a4 + 20)) / *(a3 + 80);
    }

    else
    {
      v13 = *(a3 + 84);
      LOWORD(v14) = v13 + *(a4 + 20) + v12;
    }

    *(a3 + 52) = v14;
    *(a3 + 86) = v13;
    AddLinearPhase(a2, a3, v14, 0, v9, v10);
    AddRandomPhase(a2, a3, 0, v21, v22);
    v20 = 84;
  }

  else
  {
    if (v8 && (v15 = *(a3 + 64), v16 = *(v15 + 40), v16 >= 2))
    {
      v17 = (*(v15 + 32) + 4);
      v18 = v16 - 1;
      while (!*v17++)
      {
        if (!--v18)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      AddRandomPhase(a2, a3, 0, v9, v10);
    }

    *(a3 + 86) = 0;
    v20 = 52;
  }

  *(a3 + v20) = 0;
  return 0;
}

uint64_t AddLinearPhase(uint64_t result, uint64_t a2, int a3, int a4, double a5, double a6)
{
  v6 = 40;
  if (!a4)
  {
    v6 = 32;
  }

  v7 = 16;
  if (!a4)
  {
    v7 = 8;
  }

  if (a3)
  {
    v8 = *(a2 + v7);
    v9 = *(a2 + v6);
    v10 = ((a3 >> 6) & 1) + (a3 >> 7);
    if (*(a2 + 48))
    {
      if (v9)
      {
        v11 = (v8 + 32);
        v12 = 36 * v9;
        v13 = 1;
        do
        {
          if (*(v11 - 8))
          {
            v14 = *v11 + v13 * v10;
            *v11 = v14;
            v15 = *(result + 32) & v14;
            v16 = *(result + 24);
            v17 = __OFSUB__(v15, v16);
            v18 = v15 - v16;
            if (v18 < 0 != v17)
            {
              LOWORD(a6) = *(*(result + 16) + 2 * v15);
              WORD2(a6) = *(*(result + 8) + 2 * v15);
              v19 = vshr_n_s32(vshl_n_s32(*&a6, 0x10uLL), 0x10uLL);
            }

            else
            {
              LOWORD(a6) = *(*(result + 16) + 2 * v18);
              WORD2(a6) = *(*(result + 8) + 2 * v18);
              v19 = vneg_s32(vshr_n_s32(vshl_n_s32(*&a6, 0x10uLL), 0x10uLL));
            }

            v20 = *(v11 - 7);
            if (v20 >= 0)
            {
              v21 = *(v11 - 7);
            }

            else
            {
              v21 = -v20;
            }

            if (v20 >= 0)
            {
              v22 = -1;
            }

            else
            {
              v22 = 1;
            }

            v23 = vabs_s32(v19);
            v24 = vand_s8(v23, 0x7F0000007FLL);
            a6 = COERCE_DOUBLE(vmul_s32(vmla_s32(vsra_n_u32(vmul_s32(vdup_n_s32(v21 >> 15), v24), vmla_s32(0x400000004000, vdup_n_s32(v21 & 0x7FFF), v24), 0xFuLL), vdup_n_s32(v21), vshr_n_u32(v23, 0xFuLL)), vbsl_s8(vcltz_s32(v19), vdup_n_s32(v22), vdup_n_s32((v20 >> 31) | 1u))));
            *(v11 - 5) = a6;
            ++v13;
          }

          v11 += 9;
          v12 -= 36;
        }

        while (v12);
      }
    }

    else if (v9)
    {
      v25 = *(result + 32);
      v26 = *(result + 24);
      v27 = (v8 + 32);
      v28 = 36 * v9;
      v29 = ((a3 >> 6) & 1) + (a3 >> 7);
      v30 = (v8 + 32);
      do
      {
        v31 = v29 + *v27;
        *v30 = v31;
        v30 += 9;
        v32 = v25 & v31;
        v33 = v32 - v26;
        if (v32 >= v26)
        {
          LOWORD(a6) = *(*(result + 16) + 2 * v33);
          WORD2(a6) = *(*(result + 8) + 2 * v33);
          v34 = vneg_s32(vshr_n_s32(vshl_n_s32(*&a6, 0x10uLL), 0x10uLL));
        }

        else
        {
          LOWORD(a6) = *(*(result + 16) + 2 * v32);
          WORD2(a6) = *(*(result + 8) + 2 * v32);
          v34 = vshr_n_s32(vshl_n_s32(*&a6, 0x10uLL), 0x10uLL);
        }

        v35 = *(v27 - 7);
        if (v35 >= 0)
        {
          v36 = *(v27 - 7);
        }

        else
        {
          v36 = -v35;
        }

        if (v35 >= 0)
        {
          v37 = -1;
        }

        else
        {
          v37 = 1;
        }

        v38 = vabs_s32(v34);
        v39 = vand_s8(v38, 0x7F0000007FLL);
        a6 = COERCE_DOUBLE(vmul_s32(vmla_s32(vsra_n_u32(vmul_s32(vdup_n_s32(v36 >> 15), v39), vmla_s32(0x400000004000, vdup_n_s32(v36 & 0x7FFF), v39), 0xFuLL), vdup_n_s32(v36), vshr_n_u32(v38, 0xFuLL)), vbsl_s8(vcltz_s32(v34), vdup_n_s32(v37), vdup_n_s32((v35 >> 31) | 1u))));
        *(v27 - 5) = a6;
        v29 += v10;
        v27 = v30;
        v28 -= 36;
      }

      while (v28);
    }
  }

  return result;
}

uint64_t AddRandomPhase(uint64_t result, uint64_t a2, int a3, double a4, double a5)
{
  v5 = 32;
  if (a3)
  {
    v5 = 40;
  }

  v6 = 16;
  if (!a3)
  {
    v6 = 8;
  }

  v7 = *(a2 + v6);
  v8 = *(a2 + v5);
  if (*(a2 + 48))
  {
    v9 = 44;
    if (!a3)
    {
      v9 = 36;
    }

    if (v8 != *(a2 + v9) && v8 != 0)
    {
      v11 = 36 * v8;
      do
      {
        if (!*v7)
        {
          v12 = 1664525 * *a2 + 1013904223;
          *a2 = v12;
          v13 = (v12 + (v12 >> 11)) & *(result + 32);
          v14 = *(result + 24);
          v15 = __OFSUB__(v13, v14);
          v16 = v13 - v14;
          if (v16 < 0 != v15)
          {
            LOWORD(a5) = *(*(result + 16) + 2 * v13);
            WORD2(a5) = *(*(result + 8) + 2 * v13);
            v17 = vshr_n_s32(vshl_n_s32(*&a5, 0x10uLL), 0x10uLL);
          }

          else
          {
            LOWORD(a5) = *(*(result + 16) + 2 * v16);
            WORD2(a5) = *(*(result + 8) + 2 * v16);
            v17 = vneg_s32(vshr_n_s32(vshl_n_s32(*&a5, 0x10uLL), 0x10uLL));
          }

          *(v7 + 32) = v13;
          v18 = *(v7 + 4);
          if (v18 >= 0)
          {
            v19 = *(v7 + 4);
          }

          else
          {
            v19 = -v18;
          }

          if (v18 >= 0)
          {
            v20 = -1;
          }

          else
          {
            v20 = 1;
          }

          v21 = vabs_s32(v17);
          v22 = vand_s8(v21, 0x7F0000007FLL);
          a5 = COERCE_DOUBLE(vmul_s32(vmla_s32(vsra_n_u32(vmul_s32(vdup_n_s32(v19 >> 15), v22), vmla_s32(0x400000004000, vdup_n_s32(v19 & 0x7FFF), v22), 0xFuLL), vdup_n_s32(v19), vshr_n_u32(v21, 0xFuLL)), vbsl_s8(vcltz_s32(v17), vdup_n_s32(v20), vdup_n_s32((v18 >> 31) | 1u))));
          *(v7 + 12) = a5;
        }

        v7 += 36;
        v11 -= 36;
      }

      while (v11);
    }
  }

  else if (v8)
  {
    v23 = (v7 + 32);
    v24 = 36 * v8;
    do
    {
      v25 = 1664525 * *a2 + 1013904223;
      *a2 = v25;
      v26 = (v25 + (v25 >> 11)) & *(result + 32);
      v27 = *(result + 24);
      v15 = __OFSUB__(v26, v27);
      v28 = v26 - v27;
      if (v28 < 0 != v15)
      {
        LOWORD(a5) = *(*(result + 16) + 2 * v26);
        WORD2(a5) = *(*(result + 8) + 2 * v26);
        v29 = vshr_n_s32(vshl_n_s32(*&a5, 0x10uLL), 0x10uLL);
      }

      else
      {
        LOWORD(a5) = *(*(result + 16) + 2 * v28);
        WORD2(a5) = *(*(result + 8) + 2 * v28);
        v29 = vneg_s32(vshr_n_s32(vshl_n_s32(*&a5, 0x10uLL), 0x10uLL));
      }

      *v23 = v26;
      v30 = *(v23 - 7);
      if (v30 >= 0)
      {
        v31 = *(v23 - 7);
      }

      else
      {
        v31 = -v30;
      }

      if (v30 >= 0)
      {
        v32 = -1;
      }

      else
      {
        v32 = 1;
      }

      v33 = vabs_s32(v29);
      v34 = vand_s8(v33, 0x7F0000007FLL);
      a5 = COERCE_DOUBLE(vmul_s32(vmla_s32(vsra_n_u32(vmul_s32(vdup_n_s32(v31 >> 15), v34), vmla_s32(0x400000004000, vdup_n_s32(v31 & 0x7FFF), v34), 0xFuLL), vdup_n_s32(v31), vshr_n_u32(v33, 0xFuLL)), vbsl_s8(vcltz_s32(v29), vdup_n_s32(v32), vdup_n_s32((v30 >> 31) | 1u))));
      *(v23 - 5) = a5;
      v23 += 9;
      v24 -= 36;
    }

    while (v24);
  }

  return result;
}

uint64_t *Rr2Pcm_AllocateAndInit(uint64_t a1, int *a2, int a3)
{
  v6 = heap_Calloc(*(a1 + 8), 1, 40);
  if (v6 && Rr2Pcm_Init(a1, a2, v6, a3))
  {
    heap_Free(*(a1 + 8), v6);
    return 0;
  }

  return v6;
}

uint64_t Rr2Pcm_Init(uint64_t a1, int *a2, uint64_t *a3, int a4)
{
  *a3 = a1;
  v8 = heap_Alloc(*(a1 + 8), 320);
  a3[1] = v8;
  if (!v8)
  {
    return 2;
  }

  cstdlib_memset(v8, 0, 0x140uLL);
  v9 = heap_Alloc(*(a1 + 8), 104);
  a3[2] = v9;
  if (!v9)
  {
    return 2;
  }

  cstdlib_memset(v9, 0, 0x68uLL);
  v10 = heap_Alloc(*(a1 + 8), 256);
  a3[3] = v10;
  if (!v10)
  {
    return 2;
  }

  cstdlib_memset(v10, 0, 0x100uLL);
  v11 = heap_Alloc(*(a1 + 8), 72);
  a3[4] = v11;
  if (!v11)
  {
    return 2;
  }

  cstdlib_memset(v11, 0, 0x48uLL);
  result = Rr2Pcm_InitProps(a1, a2, a3[1]);
  if (!(result | a4))
  {
    v13 = a3[1];

    return Rr2Pcm_InitByProps(v13, a3);
  }

  return result;
}

uint64_t Rr2Pcm_InitProps(uint64_t a1, int *a2, uint64_t a3)
{
  *a3 = a1;
  if (a2)
  {
    v5 = a2;
    LODWORD(a2) = a2[4];
    v6 = v5[10];
    v7 = *v5;
    *(a3 + 312) = v5[1];
    *(a3 + 16) = 256;
    *(a3 + 28) = 0x1B000000DCLL;
    if (v7 > 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }
  }

  else
  {
    v6 = 0;
    *(a3 + 312) = 0;
    *(a3 + 16) = 256;
    *(a3 + 28) = 0x1B000000DCLL;
    v8 = -1;
  }

  *(a3 + 36) = 0x140000000ALL;
  if (Rr2Pcm_SetSampleRateDependentParams(a3, a2, v8))
  {
    return 1;
  }

  if (v6 != *(a3 + 24))
  {
    v10 = *(a3 + 12);
    if (v10 >= *(a3 + 28))
    {
      v10 = *(a3 + 28);
    }

    *(a3 + 24) = v6;
    *(a3 + 28) = v10;
    *(a3 + 32) = v6 / 4;
    Rr2Pcm_SetDerivedParams(a3);
  }

  *(a3 + 48) = xmmword_26ED796B0;
  *(a3 + 64) = xmmword_26ED796C0;
  *(a3 + 80) = 0x100000001;
  *(a3 + 96) = xmmword_26ED796D0;
  *(a3 + 112) = xmmword_26ED796E0;
  *(a3 + 128) = 0x40000000333;
  *(a3 + 136) = 4200;
  *(a3 + 152) = 0;
  *(a3 + 164) = 0;
  *(a3 + 184) = xmmword_26ED796F0;
  result = Rr2Pcm_initProcessMvf(a1, a3 + 200, 0);
  if (result)
  {
    return 2;
  }

  *(a3 + 280) = 1;
  *(a3 + 160) = 1;
  *(a3 + 264) = 0;
  *(a3 + 272) = 0;
  return result;
}

uint64_t Rr2Pcm_InitByProps(int *a1, uint64_t *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  if (a1)
  {
    v6 = a1;
    a2[1] = a1;
  }

  else
  {
    v6 = a2[1];
  }

  *v4 = 12345;
  v7 = v6[72];
  v8 = 2 * v7;
  v9 = v7 + 32 * v6[2] / (2 * v6[27]);
  if (v8 > v9)
  {
    v9 = v8;
  }

  *(v4 + 104) = v9;
  v10 = heap_Alloc(*(*a2 + 8), 36 * v9);
  *(v4 + 8) = v10;
  if (!v10)
  {
    return 2;
  }

  cstdlib_memset(v10, 0, 36 * *(v4 + 104));
  v11 = heap_Alloc(*(*a2 + 8), 36 * *(v4 + 104));
  *v5 = v11;
  if (!v11)
  {
    return 2;
  }

  cstdlib_memset(v11, 0, 36 * *(v4 + 104));
  v12 = heap_Alloc(*(*a2 + 8), 4 * *(v4 + 104));
  *(v4 + 24) = v12;
  if (!v12)
  {
    return 2;
  }

  cstdlib_memset(v12, 0, 4 * *(v4 + 104));
  if (*(v4 + 104) >= 1)
  {
    v13 = 0;
    v14 = *(v4 + 24);
    do
    {
      *(v14 + 4 * v13) = v13;
      ++v13;
    }

    while (v13 < *(v4 + 104));
  }

  Init_SqrtSearch((v4 + 220));
  v15 = *a2;
  *v3 = *a2;
  result = Init_SinTable(v15, (v3 + 1), 0);
  if (!result)
  {
    result = WindowTrans_Create(v3, v6);
    if (!result)
    {
      result = Window_Create(v3, v6);
      if (!result)
      {
        result = NormRand_create(v3);
        if (!result)
        {
          v17 = heap_Alloc(*(*a2 + 8), 8 * (v6[3] / 2 + 1));
          *(v4 + 112) = v17;
          if (!v17)
          {
            return 2;
          }

          cstdlib_memset(v17, 0, 8 * (v6[3] / 2 + 1));
          v18 = heap_Alloc(*(*a2 + 8), 8 * (v6[3] / 2 + 1));
          *(v4 + 176) = v18;
          if (!v18)
          {
            return 2;
          }

          cstdlib_memset(v18, 0, 8 * (v6[3] / 2 + 1));
          v19 = *(v4 + 104) + 2;
          if (v19 <= 3 * v6[72])
          {
            v19 = 3 * v6[72];
          }

          v20 = heap_Alloc(*(*a2 + 8), 4 * v19);
          *(v4 + 152) = v20;
          if (!v20)
          {
            return 2;
          }

          v21 = *(v4 + 104) + 2;
          if (v21 <= 3 * v6[72])
          {
            v21 = 3 * v6[72];
          }

          cstdlib_memset(v20, 0, 4 * v21);
          v22 = heap_Alloc(*(*a2 + 8), 4 * *(v4 + 104));
          *(v4 + 136) = v22;
          if (!v22)
          {
            return 2;
          }

          cstdlib_memset(v22, 0, 4 * *(v4 + 104));
          v23 = heap_Alloc(*(*a2 + 8), 4 * *(v4 + 104));
          *(v4 + 144) = v23;
          if (!v23)
          {
            return 2;
          }

          cstdlib_memset(v23, 0, 4 * *(v4 + 104));
          v24 = heap_Alloc(*(*a2 + 8), 4 * (2 * *(v4 + 104)));
          *(v5 + 32) = v24;
          if (!v24)
          {
            return 2;
          }

          cstdlib_memset(v24, 0, 4 * (2 * *(v4 + 104)));
          v25 = heap_Alloc(*(*a2 + 8), 4 * *(v4 + 104));
          *(v5 + 40) = v25;
          if (!v25)
          {
            return 2;
          }

          cstdlib_memset(v25, 0, 4 * *(v4 + 104));
          v26 = v6[73];
          if (v26 <= *(v4 + 104))
          {
            v26 = *(v4 + 104);
          }

          v27 = heap_Alloc(*(*a2 + 8), 4 * (v26 + 2));
          *(v4 + 160) = v27;
          if (!v27)
          {
            return 2;
          }

          v28 = v6[73];
          if (v28 <= *(v4 + 104))
          {
            v28 = *(v4 + 104);
          }

          cstdlib_memset(v27, 0, 4 * (v28 + 2));
          result = DeempFreqResponse_Create(v3, v6);
          if (!result)
          {
            v29 = v6[72];
            v30 = v6[3];
            v31 = (v30 * v6[15] + v6[2] / 2) / v6[2];
            if (v29 < v31)
            {
              v31 = v6[72];
            }

            *(v4 + 192) = v31;
            if (v6[10] + v6[9] < 1)
            {
              *(v4 + 16) = 0;
              *(v4 + 120) = 0;
              *(v4 + 240) = 0;
              *(v4 + 248) = 0;
              *(v5 + 64) = 0;
            }

            else
            {
              result = FrameRateModificationSupport(v6, a2);
              if (result)
              {
                return result;
              }

              v30 = v6[3];
              v29 = v6[72];
            }

            v32 = heap_Alloc(*(*a2 + 8), 4 * (v30 + v29 + 2));
            *(v4 + 184) = v32;
            if (!v32)
            {
              return 2;
            }

            cstdlib_memset(v32, 0, 4 * (v6[3] + v6[72] + 2));
            *(v4 + 184) += 8;
            if (v6[38] && v6[42])
            {
              v33 = heap_Alloc(*(*a2 + 8), 56);
              v3[10] = v33;
              if (!v33)
              {
                return 2;
              }

              cstdlib_memset(v33, 0, 0x38uLL);
              v34 = v3[10];
              *v34 = TD_HP_FILTER_CASCADE_22;
              *(v34 + 12) = *(&TD_HP_FILTER_CASCADE_22 + 12);
              v35 = v3[10];
              *(v35 + 40) = unk_26ED79728;
              *(v35 + 28) = *&algn_26ED79710[12];
            }

            v36 = heap_Alloc(*(*a2 + 8), 4 * *(v4 + 104));
            *(v4 + 72) = v36;
            if (v36)
            {
              cstdlib_memset(v36, 0, 4 * *(v4 + 104));
              *(v4 + 84) = 0;
              *(v4 + 52) = 0;
              *(v5 + 20) = 0;
              *(v4 + 86) = 0x4000000;
              *(v4 + 80) = 1;
              *(v5 + 24) = 1;
              v37 = 10 * v6[2] * v6[3] / (474 * v6[5]);
              *(v4 + 92) = v37;
              v38 = PositiveShortLog2(v37);
              *(v4 + 96) = v38;
              if (*(v4 + 92) > 1 << v38)
              {
                *(v4 + 96) = v38 + 1;
              }

              result = 0;
              *(v5 + 8) = 0;
              *(v5 + 28) = 0;
              *(v5 + 56) = 0;
              *(v5 + 48) = 0;
              *(v4 + 228) = 0;
              return result;
            }

            return 2;
          }
        }
      }
    }
  }

  return result;
}

BOOL Rr2Pcm_SetProperty(int a1, uint64_t a2, char *__s1, unsigned __int8 *a4)
{
  result = 0;
  if (!cstdlib_strcmp(__s1, "PROD_CODE"))
  {
    v7 = cstdlib_atoi(a4);
    if (Rr2Pcm_SetSampleRateDependentParams(a2, v7, *(a2 + 12)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t Rr2Pcm_SetSampleRateDependentParams(uint64_t a1, int a2, int a3)
{
  v4 = 1;
  if (a2 <= 11024)
  {
    if (a2)
    {
      v5 = 8000;
      if (a2 == 8000)
      {
        v6 = 0;
        *(a1 + 8) = 8000;
        *(a1 + 20) = 0x2800000100;
        *(a1 + 44) = 80;
        if (a3 < 1)
        {
          a3 = 256;
        }

        v7 = 40;
        goto LABEL_23;
      }

      if (a2 != 11000)
      {
        return v4;
      }

      goto LABEL_11;
    }

    v6 = 0;
    v5 = 0;
    v7 = 0;
    *(a1 + 8) = 0;
    *(a1 + 44) = 0;
    a3 &= ~(a3 >> 31);
    *(a1 + 28) = 0;
    *(a1 + 20) = 0;
  }

  else
  {
    if (a2 <= 21999)
    {
      if (a2 != 11025)
      {
        v5 = 16000;
        if (a2 != 16000)
        {
          return v4;
        }

        v6 = 0;
        *(a1 + 8) = 16000;
        *(a1 + 20) = 0x5000000200;
        *(a1 + 44) = 160;
        if (a3 < 1)
        {
          a3 = 512;
        }

        v7 = 80;
        goto LABEL_23;
      }

LABEL_11:
      v6 = 0;
      v5 = 11000;
      *(a1 + 8) = 11000;
      *(a1 + 20) = 0x3700000100;
      *(a1 + 44) = 110;
      if (a3 < 1)
      {
        a3 = 256;
      }

      v7 = 55;
      goto LABEL_23;
    }

    v5 = 22000;
    if (a2 != 22000 && a2 != 22050)
    {
      return v4;
    }

    *(a1 + 8) = 22000;
    *(a1 + 20) = 0x6E00000200;
    *(a1 + 44) = 220;
    if (a3 < 1)
    {
      a3 = 512;
    }

    v7 = 110;
    v6 = 1;
  }

LABEL_23:
  *(a1 + 12) = a3;
  v8.i32[0] = a3 >> 1;
  v8.i32[1] = v7;
  *(a1 + 28) = vmin_s32(*(a1 + 28), v8);
  if (a3)
  {
    if (*(a1 + 16) < a3)
    {
      a3 = *(a1 + 16);
    }

    *(a1 + 16) = a3;
  }

  if (v6)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 968;
  }

  else
  {
    v10 = 1024;
  }

  *(a1 + 168) = v9;
  *(a1 + 172) = v10;
  if (a2)
  {
    Rr2Pcm_ProcessMvf_SetHbThr(a1 + 200, *(a1 + 136), v5);
  }

  return 0;
}

uint64_t Rr2Pcm_SetDerivedParams(int *a1)
{
  v2 = a1[3];
  v3 = 32 * a1[2];
  a1[35] = 3200 * v2 / v3;
  a1[36] = 1280 * v2 / v3;
  a1[37] = 9600 * v2 / v3;
  a1[11] = 2 * a1[6];
  a1[72] = v2 / 2;
  result = PositiveShortLog2(v2);
  a1[71] = result;
  v6 = a1[2];
  v5 = a1[3];
  a1[73] = v5;
  a1[74] = (440 * v5 + (a1[11] << 7)) / (a1[11] << 8);
  a1[75] = 32 * v6 / v5;
  a1[76] = (v5 << 20) / (32 * v6);
  a1[77] = (v6 + 860160 * a1[6]) / (2 * v6);
  return result;
}

uint64_t FrameRateModificationSupport(int *a1, void *a2)
{
  v4 = a2[3];
  v5 = 1;
  *(v4 + 232) = 1;
  v6 = a1[6];
  if (a1[7] > v6)
  {
    v5 = a1[9] + 1;
    *(v4 + 232) = v5;
  }

  if (a1[8] < v6)
  {
    v5 += a1[10];
    *(v4 + 232) = v5;
  }

  v7 = heap_Alloc(*(*a2 + 8), 88 * v5);
  *(v4 + 240) = v7;
  if (!v7)
  {
    return 2;
  }

  cstdlib_memset(v7, 0, 88 * *(v4 + 232));
  v8 = a1[10];
  v9 = *(v4 + 240);
  if ((v8 & 0x80000000) == 0)
  {
    v10 = 2 * v8;
    v11 = a1[8];
    v12 = vdupq_n_s64(v8);
    v13 = vdupq_n_s32(2 * (a1[6] - v11));
    v14 = (v8 & 0x7FFFFFFC) + 4;
    v15 = vdupq_n_s32(((2 * v11) | 1) * v8);
    v16 = xmmword_26ECCE810;
    v17 = xmmword_26ECC7980;
    v18 = xmmword_26ECCEBC0;
    v19 = (v9 + 180);
    v20 = vdupq_n_s64(4uLL);
    v21.i64[0] = 0x400000004;
    v21.i64[1] = 0x400000004;
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v12, v17));
      v23 = vmlaq_s32(v15, v13, v18);
      if (vuzp1_s16(v22, *v12.i8).u8[0])
      {
        *(v19 - 44) = v23.i32[0] / v10;
      }

      if (vuzp1_s16(v22, *&v12).i8[2])
      {
        *(v19 - 22) = v23.i32[1] / v10;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v16))).i32[1])
      {
        *v19 = v23.i32[2] / v10;
        v19[22] = v23.i32[3] / v10;
      }

      v16 = vaddq_s64(v16, v20);
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s32(v18, v21);
      v19 += 88;
      v14 -= 4;
    }

    while (v14);
  }

  v59 = a2;
  v24 = a1[9];
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = 2 * v24;
    v27 = a1[6];
    v28 = vdupq_n_s64(v24 - 1);
    v29 = vdupq_n_s32(2 * (a1[7] - v27));
    v30 = vdupq_n_s32(((2 * v27) | 1) * v24);
    v31 = (v9 + 88 * v8 + 180);
    v32 = xmmword_26ECDAC80;
    v33.i64[0] = 0x400000004;
    v33.i64[1] = 0x400000004;
    do
    {
      v34 = vdupq_n_s64(v25);
      v35 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v34, xmmword_26ECC7980)));
      v36 = vmlaq_s32(v30, v29, v32);
      if (vuzp1_s16(v35, *v28.i8).u8[0])
      {
        *(v31 - 22) = v36.i32[0] / v26;
      }

      if (vuzp1_s16(v35, *&v28).i8[2])
      {
        *v31 = v36.i32[1] / v26;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v34, xmmword_26ECCE810)))).i32[1])
      {
        v31[22] = v36.i32[2] / v26;
        v31[44] = v36.i32[3] / v26;
      }

      v25 += 4;
      v32 = vaddq_s32(v32, v33);
      v31 += 88;
    }

    while (((v24 + 3) & 0xFFFFFFFC) != v25);
  }

  if (v8 + v24 < 0)
  {
    v55 = 0;
  }

  else
  {
    v37 = 0;
    while (1)
    {
      v38 = a1[3];
        ;
      }

      v40 = 2 * v38;
      if (v40 <= a1[4])
      {
        v40 = a1[4];
      }

      v41 = (v9 + 88 * v37);
      *v41 = v40;
      v42 = 32 * a1[2];
      v41[6] = 3200 * v40 / v42;
      v41[7] = 1280 * v40 / v42;
      v41[8] = 9600 * v40 / v42;
      v41[2] = i;
      v41[4] = v40 / 2;
      v41[3] = PositiveShortLog2(v40);
      v43 = v41[1];
      v44 = *v41;
      v41[5] = (440 * v44 + (v41[2] << 7)) / (v41[2] << 8);
      v45 = a1[2];
      v41[9] = 32 * v45 / v44;
      v41[10] = (v44 << 20) / (32 * v45);
      v41[11] = (v45 + 860160 * v43) / (2 * v45);
      v46 = *(v4 + 240) + 88 * v37;
      Base = WindowTrans_Create_Base((v46 + 64), (v46 + 80), *(v46 + 20), *v46, *(v46 + 8));
      v9 = *(v4 + 240);
      if (Base)
      {
        break;
      }

      Base = Window_Create_Base((v9 + 88 * v37 + 72), *(v9 + 88 * v37 + 4));
      v9 = *(v4 + 240);
      if (Base)
      {
        break;
      }

      v48 = 88 * v37;
      v49 = (v9 + 88 * v37);
      v50 = v49[4];
      v51 = a1[2];
      if (v50 >= (*v49 * a1[15] + v51 / 2) / v51)
      {
        v50 = (*v49 * a1[15] + v51 / 2) / v51;
      }

      v52 = 10 * *v49 * v51 / (474 * a1[5]);
      v49[12] = v50;
      v49[13] = v52;
      v53 = PositiveShortLog2(v52);
      v9 = *(v4 + 240);
      *(v9 + v48 + 56) = v53;
      if (*(v9 + v48 + 52) > 1 << v53)
      {
        *(v9 + v48 + 56) = v53 + 1;
      }

      if (v37++ >= a1[10] + a1[9])
      {
        v55 = 0;
        goto LABEL_39;
      }
    }

    v55 = Base;
LABEL_39:
    LODWORD(v8) = a1[10];
  }

  *(v4 + 248) = v9 + 88 * v8;
  v56 = heap_Alloc(*(*v59 + 8), 36 * *(v4 + 104));
  *(v4 + 16) = v56;
  if (!v56)
  {
    return 2;
  }

  cstdlib_memset(v56, 0, 36 * *(v4 + 104));
  v57 = heap_Alloc(*(*v59 + 8), ((4 * a1[3]) & 0x3FFFFFFF8) + 8);
  *(v4 + 120) = v57;
  if (!v57)
  {
    return 2;
  }

  cstdlib_memset(v57, 0, ((4 * a1[3]) & 0x3FFFFFFF8) + 8);
  return v55;
}

void *Rr2Pcm_Deallocate(void *a1)
{
  result = Rr2Pcm_Clear(a1);
  if (a1)
  {
    v3 = *(*a1 + 8);

    return heap_Free(v3, a1);
  }

  return result;
}

void *Rr2Pcm_Clear(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = v4[9];
  if (v6)
  {
    heap_Free(*(*a1 + 8), v6);
    v4[9] = 0;
  }

  v7 = v4[3];
  if (v7)
  {
    heap_Free(*(*a1 + 8), v7);
    v4[3] = 0;
  }

  v8 = v4[1];
  if (v8)
  {
    heap_Free(*(*a1 + 8), v8);
    v4[1] = 0;
  }

  if (*v5)
  {
    heap_Free(*(*a1 + 8), *v5);
    *v5 = 0;
  }

  Deinit_SinTable(*a1, v2 + 8);
  Window_Destroy(v2);
  WindowTrans_Destroy(v2);
  NormRand_destroy(v2);
  v9 = v4[14];
  if (v9)
  {
    heap_Free(*(*a1 + 8), v9);
    v4[14] = 0;
  }

  v10 = v4[22];
  if (v10)
  {
    heap_Free(*(*a1 + 8), v10);
    v4[22] = 0;
  }

  v11 = v4[19];
  if (v11)
  {
    heap_Free(*(*a1 + 8), v11);
    v4[19] = 0;
  }

  v12 = v4[17];
  if (v12)
  {
    heap_Free(*(*a1 + 8), v12);
    v4[17] = 0;
  }

  v13 = v4[18];
  if (v13)
  {
    heap_Free(*(*a1 + 8), v13);
    v4[18] = 0;
  }

  v14 = v5[4];
  if (v14)
  {
    heap_Free(*(*a1 + 8), v14);
    v5[4] = 0;
  }

  v15 = v5[5];
  if (v15)
  {
    heap_Free(*(*a1 + 8), v15);
    v5[5] = 0;
  }

  v16 = v4[20];
  if (v16)
  {
    heap_Free(*(*a1 + 8), v16);
    v4[20] = 0;
  }

  if (v3[10] + v3[9] >= 1)
  {
    v17 = v4[2];
    if (v17)
    {
      heap_Free(*(*a1 + 8), v17);
      v4[2] = 0;
    }

    v18 = v4[15];
    if (v18)
    {
      heap_Free(*(*a1 + 8), v18);
      v4[15] = 0;
    }

    v19 = v4[30];
    if (v19)
    {
      heap_Free(*(*a1 + 8), v19);
      v4[30] = 0;
    }
  }

  v20 = v4[23];
  if (v20)
  {
    v4[23] = v20 - 8;
    heap_Free(*(*a1 + 8), v20 - 8);
    v4[23] = 0;
  }

  if (v3[38])
  {
    if (v3[42])
    {
      v21 = *(v2 + 80);
      if (v21)
      {
        heap_Free(*(*a1 + 8), v21);
        *(v2 + 80) = 0;
      }
    }
  }

  result = Rr2Pcm_clearProcessMvf(*a1, a1[1] + 200);
  v23 = a1[1];
  if (v23)
  {
    result = heap_Free(*(*a1 + 8), v23);
    a1[1] = 0;
  }

  v24 = a1[2];
  if (v24)
  {
    result = heap_Free(*(*a1 + 8), v24);
    a1[2] = 0;
  }

  v25 = a1[3];
  if (v25)
  {
    result = heap_Free(*(*a1 + 8), v25);
    a1[3] = 0;
  }

  v26 = a1[4];
  if (v26)
  {
    result = heap_Free(*(*a1 + 8), v26);
    a1[4] = 0;
  }

  return result;
}

double Rr2Pcm_Reset(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  *(v1 + 84) = 0;
  *(v1 + 52) = 0;
  *(v2 + 20) = 0;
  *(v1 + 86) = 0x4000000;
  *(v1 + 80) = 1;
  *(v2 + 8) = 0;
  *&result = 1;
  *(v2 + 24) = 1;
  *(v2 + 56) = 0;
  return result;
}

uint64_t PcmOutput_Init(uint64_t result, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

int *PcmOutput_DeallocateData(int *result)
{
  v1 = result;
  if (result[3] < 1)
  {
    goto LABEL_4;
  }

  v2 = *(result + 2);
  if (v2)
  {
    result = heap_Free(*(*result + 8), v2);
LABEL_4:
    *(v1 + 2) = 0;
  }

  *(v1 + 1) = 0;
  return result;
}

uint64_t PcmOutput_AllocateData(void *a1, int a2)
{
  result = 0;
  if (a2 >= 1 && *(a1 + 3) < a2)
  {
    v5 = a1[2];
    if (v5)
    {
      heap_Free(*(*a1 + 8), v5);
      a1[2] = 0;
    }

    v6 = heap_Alloc(*(*a1 + 8), (2 * a2));
    a1[2] = v6;
    if (v6)
    {
      cstdlib_memset(v6, 0, (2 * a2));
      result = 0;
      *(a1 + 3) = a2;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t Rr2Pcm_ProcessFrame(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a2 + 56);
  if (v9 != 1)
  {
    if (v9)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 48);
    if (v10)
    {
      if (v10 >= 7040)
      {
        if (v10 <= 0xD200)
        {
          v11 = (2617884829u * ((v10 << 15) | 0x6800u)) >> 47;
        }

        else
        {
          LODWORD(v11) = 0x8000;
        }
      }

      else
      {
        LODWORD(v11) = 4291;
      }

      *(v5 + 50) = v11;
      *(v5 + 48) = (v11 | 0x10C30000) / (2 * v11);
      goto LABEL_18;
    }

LABEL_9:
    *(v5 + 48) = 0;
    goto LABEL_18;
  }

  v12 = *(a2 + 48);
  if (!v12)
  {
    goto LABEL_9;
  }

  if (v12 <= 18618)
  {
    if (v12 >= 2439)
    {
      v13 = (55 * ((v12 << 15) / 0x1F40u)) >> 7;
    }

    else
    {
      LOWORD(v13) = 4291;
    }
  }

  else
  {
    LOWORD(v13) = 0x8000;
  }

  *(v5 + 48) = v13;
  *(v5 + 50) = (v13 | 0x10C30000u) / (2 * v13);
LABEL_18:
  *(v5 + 64) = a2;
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(v5 + 212) = 0;
  *(v5 + 204) = 0;
  v16 = -50;
  if (v15 >= 1)
  {
    do
    {
      v18 = *v14++;
      v17 = v18;
      if (v18 > v16)
      {
        v16 = v17;
      }

      --v15;
    }

    while (v15);
  }

  v19 = 77824 - v16;
  if (v19 < 0)
  {
    v19 = 81919 - v16;
  }

  v20 = v19 >> 12;
  *(v5 + 196) = v20;
  *(v5 + 200) = ipow2(v16 + (v20 << 12));
  v21 = v7[9];
  v22 = v7[10];
  if (v21 + v22 >= 1)
  {
    v23 = *(a2 + 80);
    v24 = v23 - 1024;
    if (v23 < 1024)
    {
      v28 = v7[6];
      v29 = v28 - v7[8];
      if (v29)
      {
        v29 = ((v29 << 10) + 2 * v22 * (1024 - v23) * v28) / (v29 << 11);
      }

      if (v29 >= v22)
      {
        v29 = v7[10];
      }

      v27 = *(v5 + 240) + 88 * v22 - 88 * v29;
    }

    else
    {
      v25 = v7[6];
      v26 = v7[7] - v25;
      if (v26)
      {
        v26 = ((v26 << 10) + 2 * v21 * v24 * v25) / (v26 << 11);
      }

      if (v26 < v21)
      {
        v21 = v26;
      }

      v27 = *(v5 + 240) + 88 * v22 + 88 * v21;
    }

    *(v5 + 248) = v27;
  }

  if (v7[49])
  {
    *(v5 + 56) = Rr2Pcm_processMvf(v7, v5, *(v5 + 152), (v5 + 100));
  }

  else
  {
    v30 = *(a2 + 60);
    if (v30)
    {
      if (*(v5 + 48))
      {
        if (v30 >= v7[34])
        {
          v30 = v7[34];
        }
      }

      else
      {
        v30 = 0;
      }
    }

    *(v5 + 56) = v30;
    *(v5 + 100) = 0;
  }

  Rr2Pcm_PrepareHarmonicInfo(v7, v8, v5, v6, 0);
  result = Rr2Pcm_SetHarmonicInfo(v7, v8, v5, v6, 0);
  if (!result)
  {
    result = Rr2Pcm_ProcessPhases(v7, v8, v5, v6);
    if (!result)
    {
      v32 = *(v5 + 248);
      if (v32)
      {
        v33 = *(v6 + 64);
        if (v33)
        {
          if (*v32 == *v33)
          {
            cstdlib_memcpy(*(v5 + 16), *(v5 + 8), 36 * *(v5 + 32));
            *(v5 + 40) = *(v5 + 32);
          }

          else
          {
            Rr2Pcm_PrepareHarmonicInfo(v7, v8, v5, v6, 1);
            v34 = *(v5 + 40);
            v35 = *(v5 + 32);
            if (*(v5 + 40) == *(v5 + 32))
            {
              if (v34 >= 1)
              {
                v36 = (*(v5 + 16) + 32);
                v37 = (*(v5 + 8) + 32);
                do
                {
                  *(v36 - 2) = *(v37 - 2);
                  *(v36 - 4) = *(v37 - 4);
                  v38 = *v37;
                  v37 += 9;
                  *v36 = v38;
                  v36 += 9;
                  --v34;
                }

                while (v34);
              }
            }

            else if (*(v5 + 48))
            {
              if (v34 >= 1 && v35 >= 1)
              {
                v39 = 0;
                v40 = 0;
                v41 = *(v5 + 16);
                do
                {
                  v42 = *(v41 + 36 * v39);
                  if (v42)
                  {
                    v43 = v40;
                    v44 = (*(v5 + 8) + 36 * v40--);
                    do
                    {
                      ++v40;
                      if (v43 >= v35)
                      {
                        break;
                      }

                      v45 = *v44;
                      v44 += 9;
                      ++v43;
                    }

                    while (!v45);
                  }

                  if (v40 < v35 && (v46 = *(v5 + 8), *(v46 + 36 * v40) == v42))
                  {
                    v47 = v46 + 36 * v40;
                    v48 = v41 + 36 * v39;
                    *(v48 + 4) = *(v47 + 4);
                    *(v48 + 32) = *(v47 + 32);
                    ++v40;
                  }

                  else
                  {
                    v49 = v41 + 36 * v39;
                    *(v49 + 12) = 0;
                    *(v49 + 4) = 0;
                  }

                  ++v39;
                }

                while (v39 < v34 && v40 < v35);
              }
            }

            else
            {
              v50 = **(v6 + 64);
              v51 = **(v5 + 248);
              v52 = v50 <= v51;
              v53 = v51 / v50;
              v54 = v50 / v51;
              if (v52)
              {
                v55 = 1;
              }

              else
              {
                v55 = v54;
              }

              if (v52)
              {
                v56 = v53;
              }

              else
              {
                v56 = 1;
              }

              if (v55 <= v34 && v56 <= v35)
              {
                v57 = v56 - 1;
                v58 = v56;
                v59 = v55;
                v60 = v55 + (v55 - 1);
                v61 = (*(v5 + 8) + 36 * (v56 - 1) + 32);
                v62 = 36 * v56;
                v63 = (*(v5 + 16) + 36 * (v55 - 1) + 16);
                v64 = 36 * v55;
                v65 = v58 + v57;
                do
                {
                  *(v63 - 1) = *(v61 - 2);
                  *v63 = *(v61 - 4);
                  v63[4] = *v61;
                  if (v60 >= v34)
                  {
                    break;
                  }

                  v60 += v59;
                  v61 = (v61 + v62);
                  v63 = (v63 + v64);
                  v52 = v65 < v35;
                  v65 += v58;
                }

                while (v52);
              }
            }
          }

          *(v5 + 212) = *(v5 + 204);
        }
      }

      Rr2Pcm_EnvLineSpectrumToPcm(v7, v8, v5, v6, a3);
      Rr2Pcm_UpdateState(v5, v6);
      return 0;
    }
  }

  return result;
}

double Rr2Pcm_UpdateState(uint64_t a1, uint64_t a2)
{
  cstdlib_memcpy(*a2, *(a1 + 8), 36 * *(a1 + 32));
  result = *(a1 + 32);
  *(a2 + 8) = result;
  *(a2 + 16) = *(a1 + 48);
  *(a2 + 18) = *(a1 + 50);
  v5 = *(a1 + 192);
  *(a2 + 48) = *(a1 + 228);
  *(a2 + 52) = v5;
  *(a2 + 64) = *(a1 + 248);
  return result;
}

_DWORD *Rr2Pcm_PrepareHarmonicInfo(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a3 + 56);
  v6 = (a4 + 64);
  if (!a5)
  {
    v6 = (a3 + 248);
  }

  v7 = *v6;
  if (*v6)
  {
    v8 = a5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = 8;
  if (!v8)
  {
    v9 = 16;
  }

  v10 = *(a3 + 56);
  if (!result[24])
  {
    v10 = result[34];
  }

  v11 = *(a3 + v9);
  if (!result[25])
  {
    v5 = result[34];
  }

  v12 = result + 71;
  v13 = v7 + 3;
  v14 = v7 + 9;
  v15 = v7 + 10;
  v16 = v7 == 0;
  if (v7)
  {
    v17 = v7 + 4;
  }

  else
  {
    v17 = result + 72;
  }

  if (v16)
  {
    v18 = result + 75;
  }

  else
  {
    v12 = v13;
    v18 = v14;
  }

  v19 = *v17;
  if (v16)
  {
    v20 = result + 76;
  }

  else
  {
    v20 = v15;
  }

  if (!*(a3 + 48))
  {
    if (v19 >= 2)
    {
      v27 = 1;
      v28 = 16;
      do
      {
        *v11 = 0x7FFF00000000;
        *(v11 + 20) = v27;
        *(v11 + 24) = 8;
        *(v11 + 28) = v28;
        *(v11 + 32) = 0;
        *(v11 + 12) = 0x7FFFLL;
        v11 += 36;
        ++v27;
        v28 += 16;
      }

      while (v19 != v27);
    }

    v32 = 0;
    v33 = v19 - 1;
    goto LABEL_32;
  }

  v21 = *(a3 + 50);
  v22 = 9 - *v12;
  v23 = (((420 * v21) >> v22) + 2 * result[2]) / (4 * result[2]);
  v24 = v19 - 1;
  v25 = (v23 + 8) >> 4;
  if (v19 - 1 <= v25 || v19 < 1)
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_32;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 32 * v10;
  v35 = 32 * v5;
  v54 = *v20;
  v36 = *v18;
  v37 = (((420 * v21) >> v22) + 2 * result[2]) / (4 * result[2]);
  v38 = *(a3 + 50);
  do
  {
    v11 += 36;
    v39 = v32 + 1;
    v38 += v21;
    v40 = 420 * v38;
    while (1)
    {
      v32 = v39;
      v41 = v37 - 16 * v25 + 8;
      if (v37 - 16 * v25 == 8)
      {
        LODWORD(v25) = v25 + 1;
      }

      if (v41 == 16)
      {
        v41 = 0;
      }

      *(v11 - 16) = v25;
      *(v11 - 12) = v41;
      *(v11 - 36) = 0x7FFF00000001;
      *(v11 - 8) = v37;
      *(v11 - 4) = 0;
      *(v11 - 24) = 0x7FFFLL;
      v37 = ((v40 >> v22) + 2 * result[2]) / (4 * result[2]);
      if (result[19])
      {
        if (v37 * v36 / 16 < v34)
        {
          goto LABEL_54;
        }

        v42 = result[33];
        v43 = 32 * result[34];
        if (v43 > v37 * v36 / 16)
        {
          v42 = (((v37 * v36 / 16 - v34) << 10) / (v43 - v34) * v42 + (1024 - ((v37 * v36 / 16 - v34) << 10) / (v43 - v34)) * result[32]) / 1024;
        }

        if (v42)
        {
          v44 = 1664525 * *a3 + 1013904223;
          *a3 = v44;
          v42 = (*(*(a2 + 96) + 4 * (v44 + (v44 >> 11))) * v42) >> 14;
          if (v42 >= 501)
          {
            v42 = 501;
          }

          if (v42 <= -501)
          {
            v42 = -501;
          }
        }

        v37 += (v42 * v23) >> 10;
      }

      if (!result[20])
      {
        ++v33;
        goto LABEL_78;
      }

      if (*(v11 - 8) * v36 / 16 >= v35)
      {
        break;
      }

LABEL_54:
      v25 = (v37 + 8) >> 4;
      v11 += 36;
      v39 = v32 + 1;
      v40 += 420 * v21;
      v38 += v21;
      ++v33;
      if (v24 <= v25 || v32 >= v19)
      {
        goto LABEL_32;
      }
    }

    v46 = v37 * v36 / 16;
    v47 = 32 * result[34];
    if (v47 >= v35)
    {
      v48 = v35;
    }

    else
    {
      v48 = 32 * result[34];
    }

    if (v46 >= v48)
    {
      v49 = result[27];
      if (v47 > v46)
      {
        v49 = (((v46 - v48) << 10) / (v47 - v48) * v49 + (1024 - ((v46 - v48) << 10) / (v47 - v48)) * result[26]) / 1024;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = result[21];
    if (v31)
    {
      v51 = v50 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      v52 = *(v11 - 8) * v36 / 16;
    }

    else
    {
      v52 = v31;
    }

    if (!v50)
    {
      v46 -= 7 * v49 / 8;
    }

    ++v33;
    if (v52 + v49 < v46)
    {
      v53 = v54 * (v52 + v49);
      v31 = v52;
      do
      {
        *v11 = 0x7FFF00000000;
        *(v11 + 20) = (v53 / 0x10000 + 8) >> 4;
        *(v11 + 24) = 8;
        *(v11 + 28) = v53 / 0x10000;
        *(v11 + 32) = 0;
        *(v11 + 12) = 0x7FFFLL;
        v11 += 36;
        ++v33;
        v31 += v49;
        v53 += v54 * v49;
      }

      while (v49 + v31 < v46);
    }

LABEL_78:
    v25 = (v37 + 8) >> 4;
  }

  while (v24 > v25 && v32 < v19);
LABEL_32:
  v29 = 32;
  if (a5)
  {
    v29 = 40;
  }

  v30 = 36;
  if (a5)
  {
    v30 = 44;
  }

  *(a3 + v29) = v33;
  *(a3 + v30) = v32;
  return result;
}

uint64_t GetAuxUvHarmResolution(_DWORD *a1, int a2, int a3)
{
  v3 = 32 * a1[34];
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 32 * a1[34];
  }

  if (a3 < v4)
  {
    return 0;
  }

  result = a1[27];
  if (v3 > a3)
  {
    return ((((a3 - v4) << 10) / (v3 - v4) * result + (1024 - ((a3 - v4) << 10) / (v3 - v4)) * a1[26]) / 1024);
  }

  return result;
}

uint64_t GetVoicedAmpAttenuation(_DWORD *a1, int a2, int a3)
{
  v3 = 32 * a1[34];
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 32 * a1[34];
  }

  if (a3 < v4)
  {
    return 1;
  }

  result = a1[29];
  if (v3 > a3)
  {
    return ((((a3 - v4) << 10) / (v3 - v4) * result + (1024 - ((a3 - v4) << 10) / (v3 - v4)) * a1[28]) / 1024);
  }

  return result;
}

uint64_t GetNoiseAttenuation(_DWORD *a1, int a2, int a3)
{
  v3 = 32 * a1[34];
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 32 * a1[34];
  }

  if (a3 < v4)
  {
    return 1;
  }

  result = a1[31];
  if (v3 > a3)
  {
    return ((((a3 - v4) << 10) / (v3 - v4) * result + (1024 - ((a3 - v4) << 10) / (v3 - v4)) * a1[30]) / 1024);
  }

  return result;
}

uint64_t Rr2Pcm_ProcessMvf_SetProperty(uint64_t a1, uint64_t a2, char *__s1, unsigned __int8 *a4)
{
  if (!cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_SMOOTH_WIN"))
  {
    v9 = cstdlib_atoi(a4);
    if (v9 < 1)
    {
      *(a2 + 32) = 0;
    }

    else
    {
      v10 = *(a2 + 32);
      if (v10)
      {
        heap_Free(*(a1 + 8), v10);
        *(a2 + 32) = 0;
      }

      v11 = heap_Alloc(*(a1 + 8), 4 * v9);
      *(a2 + 32) = v11;
      if (!v11)
      {
        return 2;
      }

      cstdlib_memset(v11, 0, 4 * v9);
    }

    result = 0;
    *(a2 + 48) = v9;
    return result;
  }

  v15 = 0;
  if (cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_THR"))
  {
    if (cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_RATIO_EN_THR"))
    {
      if (cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_LOW_EN_MVF_THR"))
      {
        if (cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_LOW_EN"))
        {
          if (cstdlib_strcmp(__s1, "SYN_DEBUZZ_PROCESS_MVF_BY_RATIO_EN"))
          {
            return 1;
          }

          else
          {
            v14 = cstdlib_atoi(a4);
            result = 0;
            *(a2 + 56) = v14 != 0;
          }
        }

        else
        {
          v13 = cstdlib_atoi(a4);
          result = 0;
          *(a2 + 52) = v13 != 0;
        }
      }

      else
      {
        v12 = cstdlib_atoi(a4);
        result = 0;
        *(a2 + 8) = v12;
      }
    }

    else
    {
      result = string2fixed(a1, a4, 1024, &v15);
      if (!result)
      {
        *(a2 + 16) = v15;
      }
    }
  }

  else
  {
    result = string2fixed(a1, a4, 1024, &v15);
    if (!result)
    {
      *(a2 + 20) = v15;
    }
  }

  return result;
}

uint64_t Rr2Pcm_initProcessMvf(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 16) = 0x33300000133;
  *a2 = xmmword_26ED79750;
  *(a2 + 28) = 768;
  if (a3 < 1)
  {
    *(a2 + 32) = 0;
    goto LABEL_5;
  }

  v5 = heap_Alloc(*(a1 + 8), 4 * a3);
  *(a2 + 32) = v5;
  if (v5)
  {
    cstdlib_memset(v5, 0, 4 * a3);
LABEL_5:
    result = 0;
    *(a2 + 40) = 0xFFFFFFFFLL;
    *(a2 + 48) = a3;
    *(a2 + 52) = 0x100000001;
    return result;
  }

  return 2;
}

void *Rr2Pcm_clearProcessMvf(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      result = heap_Free(result[1], v3);
      *(a2 + 32) = 0;
    }
  }

  return result;
}

uint64_t Rr2Pcm_processMvf(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 64);
  v5 = *(v4 + 60);
  *a4 = 0;
  v6 = *(a1 + 200);
  if (v5 <= v6)
  {
    return v5;
  }

  v8 = *(a1 + 204);
  if (v5 >= v8)
  {
    return v5;
  }

  v11 = v5;
  if (*(a1 + 252))
  {
    v12 = *(v4 + 64);
    v11 = v5;
    if (v12 >= 1)
    {
      v13 = v12 << 10;
      v14 = *(a1 + 312);
      v11 = v5;
      if (v13 < *(a1 + 220) * v14)
      {
        v15 = *(a1 + 208);
        v11 = *(a1 + 200);
        if (v5 < v15)
        {
          return v11;
        }

        v11 = (v6 + ((((v5 - v15) << 10) / (v8 - v15) * (((v5 - v15) << 10) / (v8 - v15)) * (v13 / v14)) >> 20) * *(a1 + 212) / 1024);
      }
    }
  }

  if (!*(a1 + 256))
  {
    return v11;
  }

  if (*(v4 + 8) && *(v4 + 16))
  {
    *a4 = 1;
    if (*(a1 + 280) && *(v4 + 40) >= 2)
    {
      v16 = 0;
      do
      {
        v17 = *(*(v4 + 24) + 4 * v16 + 4) + (*(a2 + 196) << 12);
        *(a3 + 4 * v16) = v17;
        *(a3 + 4 * v16) = ipow2(v17);
        v18 = v16 + 2;
        ++v16;
      }

      while (v18 < *(*(a2 + 64) + 40));
    }
  }

  else
  {
    a3 = *(v4 + 24) + 4;
  }

  v20 = *(v4 + 40) - 1;
  v21 = v20 * *(a1 + 224);
  if (v21 < 1024)
  {
    LODWORD(v23) = 0;
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = v21 >> 10;
    v24 = v23;
    v25 = a3;
    do
    {
      v26 = *v25++;
      v22 += v26;
      --v24;
    }

    while (v24);
  }

  if (v23 >= v20)
  {
    v28 = 0;
    if (v22)
    {
      goto LABEL_30;
    }

    return v11;
  }

  v27 = 0;
  v23 = v23;
  do
  {
    v27 += *(a3 + 4 * v23++);
  }

  while (v20 > v23);
  v28 = v27 << 10;
  if (!v22)
  {
    return v11;
  }

LABEL_30:
  v29 = *(a1 + 232);
  v30 = v28 / v22;
  if (v29)
  {
    v31 = *(a1 + 248);
    v32 = *(a1 + 240);
    if (v32 < 0)
    {
      v34 = *(a1 + 244);
      v36 = v30;
    }

    else
    {
      v33 = 1;
      v34 = *(a1 + 240);
      v35 = v30;
      while (v33 == 1 || v34 != *(a1 + 244))
      {
        v35 += *(v29 + 4 * v34);
        v34 = (v34 + 1) % v31;
        ++v33;
      }

      v36 = v35 / v33;
    }

    if (v32 == v34)
    {
      *(a1 + 240) = (v32 + 1) % v31;
    }

    *(v29 + 4 * v34) = v30;
    v37 = *(a1 + 240);
    *(a1 + 244) = (*(a1 + 244) + 1) % v31;
    if (v37 < 0)
    {
      *(a1 + 240) = 0;
    }
  }

  else
  {
    v36 = v30;
  }

  if (v36 > *(a1 + 216))
  {
    v38 = 0x100000 / v36;
    if (0x100000 / v36 >= *(a1 + 228))
    {
      v38 = *(a1 + 228);
    }

    LODWORD(v5) = *(a1 + 200) + ((((v5 - *(a1 + 200)) << 10) / *(a1 + 212) * (((v5 - *(a1 + 200)) << 10) / *(a1 + 212)) * v38) >> 20) * *(a1 + 212) / 1024;
  }

  if (v5 >= v11)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

uint64_t FindBestRationalFactor(uint64_t result, int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = 0x7FFFFFFF;
  v5 = -2;
  v6 = &unk_26ED79764;
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = v7 * result - *v6 * a2;
    if (v9 < 0)
    {
      v9 = *v6 * a2 - v7 * result;
    }

    if ((v7 * result + (v9 << 12)) / (2 * v7 * result) < v4)
    {
      *a3 = v7;
      *a4 = v8;
      v4 = (v7 * result + (v9 << 12)) / (2 * v7 * result);
    }

    v6 += 2;
    v5 += 2;
  }

  while (v5 < 0x14);
  return result;
}

void *Rr2Pcm_EnvLineSpectrumToPcm(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v161 = 0;
  v13 = *(a3 + 248);
  if (!v13)
  {
    v18 = 0;
    v16 = 0;
    v15 = *(a1 + 3);
    v17 = *(a2 + 64);
    goto LABEL_8;
  }

  v14 = *(a4 + 64);
  v15 = *v13;
  if (!v14)
  {
    v18 = 0;
    v16 = 0;
    v17 = v13[20];
    goto LABEL_8;
  }

  v16 = *v14;
  if (v15 == *v14)
  {
    v17 = v13[20];
    if (v13[1] == v14[1])
    {
      v18 = 0;
      v16 = 0;
LABEL_8:
      v19 = -14;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = v13[20];
  }

  v19 = v14[20] - 14;
  v18 = 1;
LABEL_11:
  if (*(a3 + 48))
  {
    ReconstructDftFromHarmonies(a1, a2, a3, a4, v11 - 1, 0);
    *(a3 + 204) = v17 + *(a3 + 204) - 14;
    if (!v18)
    {
      goto LABEL_31;
    }

    ReconstructDftFromHarmonies(a1, a2, a3, a4, v12 - 1, 1);
    goto LABEL_30;
  }

  v20 = *(a3 + 112);
  *v20 = 0;
  v21 = 2;
  if (v11 >= 1 && v15 >= 2)
  {
    v22 = v20 + 3;
    v23 = (v9 + 16);
    v24 = 1;
    do
    {
      *(v22 - 1) = *(v23 - 1);
      *v22 = *v23;
      v21 += 2;
      if (v24 >= v11)
      {
        break;
      }

      ++v24;
      v22 += 2;
      v23 += 9;
    }

    while (v15 >= v21);
  }

  v25 = v15 + 2;
  if (v21 < v15 + 2)
  {
    bzero(&v20[v21], 4 * (v15 - v21 + 1) + 4);
  }

  ScaleTo16BitSignedRange(v20, v25, &v161 + 1, &v161, 0, 0);
  v26 = *(a3 + 208) + HIDWORD(v161);
  *(a3 + 204) += v161;
  *(a3 + 208) = v26;
  if (v18)
  {
    v27 = *(a3 + 120);
    *v27 = 0;
    v28 = 2;
    if (v12 >= 1 && v16 >= 2)
    {
      v29 = v27 + 3;
      v30 = (v10 + 16);
      v31 = 1;
      do
      {
        *(v29 - 1) = *(v30 - 1);
        *v29 = *v30;
        v28 += 2;
        if (v31 >= v12)
        {
          break;
        }

        ++v31;
        v29 += 2;
        v30 += 9;
      }

      while (v16 >= v28);
    }

    if (v28 < v16 + 2)
    {
      bzero(&v27[v28], 4 * (v16 - v28 + 1) + 4);
    }

    ScaleTo16BitSignedRange(v27, v16 + 2, &v161 + 1, &v161, 0, 0);
    v19 = v161;
    *(a3 + 216) += HIDWORD(v161);
LABEL_30:
    *(a3 + 212) += v19;
  }

LABEL_31:
  v159 = a2;
  v32 = *(a3 + 112);
  v33 = *(a3 + 248);
  v160 = v18;
  if (v18)
  {
    v34 = *(a4 + 64);
    v35 = v34[1];
    v156 = *v34;
    v36 = *(a3 + 120);
    v146 = *(v34 + 9);
    v18 = *(a3 + 216);
    v149 = *(a3 + 212);
  }

  else
  {
    v146 = 0;
    v149 = 0;
    v35 = 0;
    v156 = 0;
    v36 = 0;
  }

  v37 = *(a5 + 16);
  v151 = *(a3 + 184);
  v152 = a5;
  v153 = *(a3 + 208);
  v154 = *(a3 + 204);
  v38 = (a1 + 3);
  v39 = a1 + 11;
  v40 = (v159 + 48);
  if (v33)
  {
    v40 = (v33 + 18);
    v39 = v33 + 2;
    v38 = (v33 + 1);
  }

  else
  {
    v33 = a1 + 3;
  }

  v41 = *v33;
  v155 = *v38;
  v148 = *v39;
  v42 = *v40;
  v32[1] = v32[v41];
  v43 = call_cfsv_construct(*a1, v32, v41, 15);
  v44 = v43;
  if (v43)
  {
    call_cfsv_changeInputSampleOrder(v43, *(a3 + 176));
    call_cfsv_rifft(v44, v41);
  }

  v158 = v41;
  v45 = v153 - v154;
  v150 = v44;
  if (v160)
  {
    v147 = v32;
    v36[1] = v36[v156];
    v46 = call_cfsv_construct(*a1, v36, v156, 15);
    v47 = v46;
    if (v46)
    {
      call_cfsv_changeInputSampleOrder(v46, *(a3 + 176));
      call_cfsv_rifft(v47, v156);
    }

    v18 -= v149;
    if (*(a3 + 48))
    {
      v48 = v151;
      v49 = v152;
      v50 = a4;
      v51 = v155;
      v52 = v47;
      v32 = v147;
LABEL_60:
      if (v45 < 1)
      {
        if (v153 != v154 && (v51 & 0x80000000) == 0)
        {
          v72 = v51 + 1;
          v73 = v32;
          do
          {
            *v73++ >>= v154 - v153;
            --v72;
          }

          while (v72);
        }
      }

      else if ((v51 & 0x80000000) == 0)
      {
        v64 = v51 + 1;
        v65 = v32;
        do
        {
          *v65++ <<= v45;
          --v64;
        }

        while (v64);
      }

      if (v18 < 1)
      {
        v71 = v158;
        if (v18 && v35 >= 1)
        {
          v75 = v156 - v35;
          do
          {
            v36[v75] = v36[v75] >> -v18;
            ++v75;
          }

          while (v75 < v156);
        }
      }

      else
      {
        v71 = v158;
        if (v35 >= 1)
        {
          v74 = v156 - v35;
          do
          {
            v36[v74++] <<= v18;
          }

          while (v74 < v156);
        }
      }

      v66 = v160;
      goto LABEL_87;
    }

    if (v35 >= 2)
    {
      v53 = &v36[v156 - v35 + 1];
      v54 = v35 - 1;
      v55 = (v146 + 2);
      do
      {
        v56 = *v55++;
        *v53 = (*v53 * v56) >> 15;
        ++v53;
        --v54;
      }

      while (v54);
    }

    cstdlib_memset(v36, 0, 4 * (v158 - v35 + 1));
    v57 = v155;
    if (v155 > 1)
    {
      v58 = 2 * v155 - 2;
      v59 = v147 + 1;
      do
      {
        *v59 = (*v59 * *(v42 + v58)) >> 15;
        ++v59;
        v58 -= 2;
      }

      while (v58);
      v57 = v155;
    }

    v60 = v158 - v155;
    v52 = v47;
    v32 = v147;
  }

  else
  {
    v51 = v155;
    if (*(a3 + 48))
    {
      v52 = 0;
      v48 = v151;
      v49 = v152;
      v50 = a4;
      goto LABEL_65;
    }

    v57 = v155;
    if (v155 > 1)
    {
      v61 = v32 + 1;
      v62 = 2 * v155 - 2;
      v63 = 2;
      do
      {
        v61[v158 - v155] = (v61[v158 - v155] * *(v42 + v63)) >> 15;
        *v61 = (*v61 * *(v42 + v62)) >> 15;
        ++v61;
        v63 += 2;
        v62 -= 2;
      }

      while (v62);
      v57 = v155;
    }

    v52 = 0;
    v60 = v158 - 2 * v155 + 1;
  }

  cstdlib_memset(&v32[v57], 0, 4 * v60);
  v48 = v151;
  v49 = v152;
  v50 = a4;
  v51 = v155;
  if (v160)
  {
    goto LABEL_60;
  }

LABEL_65:
  if (v45 < 1)
  {
    v66 = v160;
    if ((v45 & 0x80000000) == 0)
    {
      v71 = v158;
      if (!*(a1 + 40))
      {
        goto LABEL_116;
      }

      goto LABEL_100;
    }

    v141 = v154 - v153;
    *v32 >>= v154 - v153;
    if (v51 >= 1)
    {
      v71 = v158;
      v142 = v51;
      v143 = v32;
      v144 = v32;
      do
      {
        v145 = v144[1];
        *++v144 = v145 >> v141;
        v143[v158 - v51] >>= v141;
        v143 = v144;
        --v142;
      }

      while (v142);
      goto LABEL_87;
    }
  }

  else
  {
    *v32 <<= v45;
    v66 = v160;
    if (v51 >= 1)
    {
      v67 = v51;
      v68 = v32;
      v69 = v32;
      do
      {
        v70 = v69[1];
        *++v69 = v70 << v45;
        v68[v158 - v51] <<= v45;
        v68 = v69;
        --v67;
      }

      while (v67);
    }
  }

  v71 = v158;
LABEL_87:
  if (!*(a1 + 40))
  {
    goto LABEL_110;
  }

  if (v66)
  {
    LODWORD(v76) = v156 - v35;
    v77 = v36[v156 - v35];
    v78 = v32[v155];
    if ((v77 - 6) >= 0xFFFFFFF5 && (v78 - 6) > 0xFFFFFFF4)
    {
LABEL_112:
      if (v35 >= 2)
      {
        v100 = &v36[v76 + 1];
        v101 = v35 - 1;
        v102 = v48 + 1;
        do
        {
          v103 = *v100++;
          *v102++ += v103;
          --v101;
        }

        while (v101);
      }

      goto LABEL_121;
    }

    v80 = (v78 - v77) << 10;
    v81 = v77 << 10;
    v82 = v80 / (v35 + v51 - 1);
    if (v35 >= 1)
    {
      v76 = v76;
      v83 = v81 + 512;
      do
      {
        v36[v76++] -= v83 >> 10;
        v81 += v82;
        v83 += v82;
      }

      while (v76 < v156);
    }

    if ((v51 & 0x80000000) == 0)
    {
      v84 = v81;
      v85 = v51 + 1;
      v86 = v84 + 512;
      v87 = v32;
      do
      {
        *v87++ -= v86 >> 10;
        v86 += v82;
        --v85;
      }

      while (v85);
    }

    goto LABEL_110;
  }

LABEL_100:
  LODWORD(v88) = v71 - v51;
  v89 = v32[v71 - v51];
  v90 = v32[v155];
  if ((v89 - 6) >= 0xFFFFFFF5 && (v90 - 6) > 0xFFFFFFF4)
  {
    goto LABEL_116;
  }

  v92 = (v90 - v89) << 10;
  v93 = v89 << 10;
  v94 = v92 / (v148 - 1);
  if (v51 >= 1)
  {
    v88 = v88;
    v95 = v93 + 512;
    do
    {
      v32[v88++] -= v95 >> 10;
      v93 += v94;
      v95 += v94;
    }

    while (v88 < v71);
  }

  if ((v51 & 0x80000000) == 0)
  {
    v96 = v93;
    v97 = v51 + 1;
    v98 = v96 + 512;
    v99 = v32;
    do
    {
      *v99++ -= v98 >> 10;
      v98 += v94;
      --v97;
    }

    while (v97);
  }

LABEL_110:
  if (v66)
  {
    LODWORD(v76) = v156 - v35;
    goto LABEL_112;
  }

LABEL_116:
  if (v51 < 2)
  {
    v35 = v51;
LABEL_121:
    v107 = v159;
    goto LABEL_122;
  }

  v104 = &v32[v71 - v51 + 1];
  v105 = v51 - 1;
  v106 = v48 + 1;
  v107 = v159;
  do
  {
    v108 = *v104++;
    *v106++ += v108;
    --v105;
  }

  while (v105);
  v35 = v51;
LABEL_122:
  *(v49 + 8) = v35;
  v109 = *(a3 + 184);
  v110 = *(a1 + 82);
  v111 = *(a1 + 42);
  if (*(a1 + 82))
  {
    v112 = *(v50 + 56);
    if (v35 >= 1)
    {
      v113 = v35;
      v114 = *(a3 + 184);
      do
      {
        v112 = *v114 + ((v112 * v110) >> 15);
        *v114++ = v112;
        --v113;
      }

      while (v113);
    }

    *(v50 + 56) = v112;
  }

  else
  {
    *(v50 + 56) = v109[v35 - 1];
  }

  if (!*(a1 + 38) || !*(a1 + 42))
  {
    goto LABEL_154;
  }

  v115 = (v111 >> 1);
  if (v115 >= 1)
  {
    v116 = 0;
    v117 = *(v107 + 80);
    v118 = &v109[v35];
    while (1)
    {
      v119 = (v117 + 28 * v116);
      if ((*v119 & 0x80000000) == 0)
      {
        break;
      }

      v123 = v109;
      v124 = v35;
      if (v35 >= 1)
      {
        do
        {
          v125 = *v123;
          if (*v123 < 1)
          {
            v126 = -(-v125 >> -*v119);
          }

          else
          {
            v126 = v125 >> -*v119;
          }

          *v123++ = v126;
          --v124;
        }

        while (v124);
LABEL_145:
        v127 = v119 + 3;
        *(v109 - 1) = v119[3];
        v128 = v119 + 4;
        *(v109 - 2) = v119[4];
        if (v35 >= 1)
        {
          v130 = v119[5];
          v129 = v119[6];
          v131 = v109;
          v132 = v35;
          do
          {
            v133 = v129 - 2 * v130;
            v130 = *v131;
            *v131 = v133 + *v131 - (*(v131 - 1) * v119[1] + *(v131 - 2) * v119[2]) / 0x4000;
            ++v131;
            v129 = v119[5];
            v119[5] = v130;
            v119[6] = v129;
            --v132;
          }

          while (v132);
        }

        goto LABEL_150;
      }

      v127 = v119 + 3;
      *(v109 - 1) = v119[3];
      *(v109 - 2) = v119[4];
      v128 = v119 + 4;
LABEL_150:
      *v127 = *(v118 - 1);
      *v128 = *(v118 - 2);
      if (++v116 == v115)
      {
        goto LABEL_151;
      }
    }

    if (*v119)
    {
      v120 = v35 < 1;
    }

    else
    {
      v120 = 1;
    }

    if (!v120)
    {
      v121 = v109;
      v122 = v35;
      do
      {
        *v121++ <<= *v119;
        --v122;
      }

      while (v122);
    }

    goto LABEL_145;
  }

LABEL_151:
  if (v35 >= 1)
  {
    v134 = v35;
    v135 = v109;
    do
    {
      *v135 = *v135 * *(a1 + 43) / 1024;
      ++v135;
      --v134;
    }

    while (v134);
LABEL_154:
    if (v35 >= 1)
    {
      v136 = v35;
      do
      {
        v138 = *v109++;
        v137 = v138;
        v139 = (v138 >> 31) + 0x7FFF;
        if (((v138 >> 15) + 1) >= 2)
        {
          v137 = v139;
        }

        *v37++ = v137;
        --v136;
      }

      while (v136);
    }
  }

  *(v49 + 8) = v35;
  cstdlib_memcpy(v48, v32, 4 * v51);
  result = call_cfsv_destruct(*a1, v150);
  if (v66)
  {
    return call_cfsv_destruct(*a1, v52);
  }

  return result;
}