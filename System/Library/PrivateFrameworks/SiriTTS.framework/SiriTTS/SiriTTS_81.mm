uint64_t rho_Concat__match(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, uint64_t a5, int a6)
{
  v12 = 2164269056;
  v13 = a3[20] - a3[19];
  v14 = a1[3];
  if (v13 >= v14)
  {
    a1[18] = v14;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v14, (a1 + 14)))
    {
      return v12;
    }
  }

  else
  {
    a1[18] = v13;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v13, (a1 + 14)))
    {
      return v12;
    }

    v_zap_s_t((*(a1 + 8) + 2 * a1[18]), a1[3] - a1[18]);
  }

  v15 = rho_Concat__findbestmatch_fixed(a1, (a1 + 8), (a1 + 14));
  v16 = *a1 + v15;
  a3[21] = v16;
  a3[18] -= v16;
  rho_Concat__WindowsOverlap_wsola(a1, (a1 + 8), (a1 + 14), 0, v15);
  rho_InOut__PutVectorInBuffer(a1, (a1 + 8), 0, *a1);
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, (a5 - 1), *a1, 1, 0))
  {
    if (!eta_InOut__IsEndState((a4 + 1)))
    {
      rho__updateSubunits(a1, v17, v18, a4, a5, a3[18], a6);
      rho_InOut__PutVectorInBuffer(a1, (a1 + 8), *a1, *a1);
      if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *a1, 0, 0))
      {
        return v12;
      }

      if (!eta_InOut__IsEndState((a4 + 1)))
      {
        rho_InOut__PutVectorInBuffer(a1, (a1 + 14), a1[1] + v15, a1[18] - (a1[1] + v15));
        v12 = 0;
        a3[19] = *a1 + a3[21];
        return v12;
      }
    }

    return 0;
  }

  return v12;
}

uint64_t rho_Concat__plosive(uint64_t a1, uint64_t a2, int *a3, uint64_t **a4, uint64_t a5)
{
  v10 = 2164269056;
  v_zap_s_t(*(a1 + 64), *(a1 + 72));
  v11 = *(a1 + 24);
  if (a3[20] - a3[19] >= v11)
  {
    *(a1 + 72) = v11;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v11, a1 + 56))
    {
      return v10;
    }
  }

  else
  {
    if (rho_InOut__DecodeToVector(a1, a2, a3, a3[20] - a3[19], a1 + 56))
    {
      return v10;
    }

    *(a1 + 72) = a3[20] - a3[19];
  }

  rho_Concat__fade_out_closure(a1, a1 + 32, 0, *(a1 + 20));
  a3[21] = 0;
  rho_InOut__PutVectorInBuffer(a1, a1 + 32, 0, *(a1 + 48));
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, (a5 - 1), *(a1 + 48), 1, 0))
  {
    if (!eta_InOut__IsEndState((a4 + 1)))
    {
      rho_Concat__fade_in_burst(a1, a1 + 56, 0, *(a1 + 72));
      rho__updateSubunits(a1, v12, v13, a4, a5, a3[18], 0);
      rho_InOut__PutVectorInBuffer(a1, a1 + 56, 0, *(a1 + 72));
      if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *(a1 + 72), 0, 0))
      {
        return v10;
      }

      if (!eta_InOut__IsEndState((a4 + 1)))
      {
        v10 = 0;
        a3[19] = *(a1 + 24) + a3[21];
        return v10;
      }
    }

    return 0;
  }

  return v10;
}

uint64_t rho_Concat__silence(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, uint64_t a5)
{
  v10 = 2164269056;
  v_zap_s_t(*(a1 + 8), *a1);
  v11 = *a1;
  if (a3[20] - a3[19] >= *a1)
  {
    a1[18] = v11;
    if (rho_InOut__DecodeToVector(a1, a2, a3, v11, (a1 + 14)))
    {
      return v10;
    }
  }

  else
  {
    if (rho_InOut__DecodeToVector(a1, a2, a3, a3[20] - a3[19], (a1 + 14)))
    {
      return v10;
    }

    a1[18] = a3[20] - a3[19];
  }

  v_zap_s_t(*(a1 + 5), *a1);
  v12 = *a1;
  a3[21] = v12 >> 1;
  a3[18] -= v12 >> 1;
  rho_InOut__PutVectorInBuffer(a1, (a1 + 8), 0, v12);
  if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, (a5 - 1), *a1, 1, 0))
  {
    if (eta_InOut__IsEndState((a4 + 1)))
    {
      return 0;
    }

    else
    {
      v15 = *(**a4 + 28 * a5 + 8);
      rho__updateSubunits(a1, v13, v14, a4, a5, a3[18] + v15, 0);
      inserted = rho_InOut__InsertSilence(a1, a2, a3, a4, a5, v15);
      v_zap_s_t(*(a1 + 8), *a1);
      rho_InOut__PutVectorInBuffer(a1, (a1 + 14), 0, *a1);
      if (!rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, *a1, 0, 0))
      {
        if (!eta_InOut__IsEndState((a4 + 1)))
        {
          rho_InOut__PutVectorInBuffer(a1, (a1 + 14), *a1, a1[18] - *a1);
          a3[19] = a3[21] + (*a1 >> 1);
        }

        return inserted;
      }
    }
  }

  return v10;
}

uint64_t rho_Concat__middle(int *a1, uint64_t a2, int *a3, void **a4, uint64_t a5)
{
  v6 = *(**a4 + 28 * a5 + 24);
  if (v6 > 0xF)
  {
    v11 = a3[22];
    if ((v6 & 0x40) != 0)
    {
      v12 = a1[5];
    }

    else
    {
      v12 = *a1;
    }

    v7 = a3 + 19;
    v13 = v12 + a3[19];
    v10 = (v11 - v13);
    if (v11 - v13 < 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = a3 + 19;
    v8 = a3[22];
    v9 = *a1 + a3[19];
    v10 = (v8 - v9);
    if (v8 - v9 < 0)
    {
      return 0;
    }
  }

  if (rho_InOut__AudioWriteToClientWithMarkers(a1, a2, a3, a4, a5, v10, 0, 1))
  {
    return 2164269056;
  }

  if (eta_InOut__IsEndState((a4 + 1)))
  {
    return 0;
  }

  result = 0;
  *v7 += v10;
  return result;
}

uint64_t rho_Concat__tail(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = a3[20] - a3[19];
  v_zap_s_t(*(a1 + 40), *(a1 + 12));
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 2164269056;
  v8 = *(a1 + 12);
  if (v6 < v8)
  {
    v8 = v6;
  }

  if (!rho_InOut__DecodeToVector(a1, a2, a3, v8, a1 + 32))
  {
    return 0;
  }

  return v7;
}

uint64_t rho_concatenate(unsigned int *a1, uint64_t a2, int *a3, uint64_t **a4, uint64_t a5, int a6)
{
  v12 = *(*a4 + 10);
  v13 = **a4 + 28 * v12;
  inited = psi_DataMapSegment__InitPoly(a5, (v13 + 12), (v13 + 20));
  if (inited)
  {
    return inited;
  }

  inited = xi_Segment__InitPoly_withDur(a3, v13, *(v13 + 12), *(v13 + 20), *(a5 + 24), *(*(a5 + 40) + 44));
  if (inited)
  {
    return inited;
  }

  inited = chi_DecodePolyphone__InitPoly(a2);
  if (inited)
  {
    return inited;
  }

  *(a2 + 272) = *(**a4 + 28 * v12 + 20);
  if (v12)
  {
    if ((*(v13 + 24) & 0xF) != 0)
    {
      if ((*(v13 + 24) & 3) != 0)
      {
        rho_Concat__match(a1, a2, a3, a4, v12, a6);
      }

      else if ((*(v13 + 24) & 4) != 0)
      {
        rho_Concat__plosive(a1, a2, a3, a4, v12);
      }
    }

    else
    {
      rho_Concat__silence(a1, a2, a3, a4, v12);
    }
  }

  else
  {
    rho__updateSubunits(a1, v15, v16, a4, 0, 0, 0);
  }

  if (*(v13 + 24) >= 0x10u)
  {
    rho_Concat__middle(a1, a2, a3, a4, v12);
    rho_Concat__tail(a1, a2, a3);
  }

  if ((*(v13 + 25) & 2) != 0)
  {
    inserted = rho_InOut__InsertSilence(a1, a2, a3, a4, v12, *(*(a2 + 352) + 644));
  }

  else
  {
    inserted = 0;
  }

  chi_DecodePolyphone__DeinitPoly(a2);
  psi_DataMapSegment__DeinitPoly(a5);
  xi_Segment__DeinitPoly(a3);
  ++*(*a4 + 10);
  return inserted;
}

uint64_t eta_synth_SetRate(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x190)
  {
    v2 = 400;
  }

  else
  {
    v2 = a2;
  }

  *(a1 + 652) = *(a1 + 650);
  *(a1 + 650) = v2;
  return 0;
}

uint64_t eta_synth_ResetParams(uint64_t a1)
{
  result = paramc_ParamSetInt(*(*(a1 + 16) + 40), "waitfactor", 2u);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "volume", 0x50u);
    if ((result & 0x80000000) == 0)
    {
      v3 = *(*(a1 + 16) + 40);

      return paramc_ParamSetUInt(v3, "rate", 0x64u);
    }
  }

  return result;
}

uint64_t eta_synth_ProcessThisMarker(uint64_t a1, int *a2, int a3)
{
  v5 = 0;
  a2[3] = a3;
  v6 = *a2;
  if (*a2 > 23)
  {
    if (v6 == 24)
    {
      v7 = *(*(a1 + 16) + 40);
      v8 = a2[6];
      v9 = "volume";
      goto LABEL_13;
    }

    if (v6 == 25)
    {
      __s = 0;
      paramc_ParamGetStr(*(*(a1 + 16) + 40), "waitfactor", &__s);
      v5 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", a2[6]);
      v10 = *(a1 + 16);
      v11 = *(v10 + 40);
      if ((v5 & 0x80000000) != 0)
      {
        v14 = strlen(__s);
        paramc_ParamRipple(v11, "waitfactor", __s, (v14 + 1));
        v12 = *(*(a1 + 16) + 40);
      }

      else
      {
        v12 = *(v10 + 40);
      }

      paramc_ParamRelease(v12);
    }

    return v5;
  }

  if (v6 != 13)
  {
    if (v6 == 18)
    {
      v7 = *(*(a1 + 16) + 40);
      v8 = a2[6];
      v9 = "rate";
LABEL_13:

      return paramc_ParamSetUInt(v7, v9, v8);
    }

    return v5;
  }

  return eta_synth_ResetParams(a1);
}

uint64_t eta_PrepareNewBuffers(uint64_t a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  *(a1 + 1944) = 0;
  v6 = 0;
  if (((**(a1 + 440))(*(a1 + 448), *(a1 + 456), 0, a1 + 2064, &v6) & 0x80000000) == 0 && *(a1 + 2064))
  {
    *(a1 + 1936) = *(a1 + 2056);
    *(a1 + 1944) = 1024;
  }

  v5 = 0;
  v2 = a1 + 32 * *(a1 + 434);
  result = (*(*(a1 + 32) + 136))(*(v2 + 56), *(v2 + 64), &v5);
  *(a1 + 1968) = v5 >> 1;
  if ((result & 0x80000000) != 0 || !*(a1 + 1944))
  {
    v4 = 2;
  }

  else if (*(a1 + 1936))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(a1 + 1952) = v4;
  return result;
}

uint64_t eta_PushSamplesOut(uint64_t a1, int a2, __int16 **a3, unsigned int *a4)
{
  v28 = 1024;
  v4 = 2164269062;
  if (a1 && a3 && a4)
  {
    v9 = 0;
    v29 = 0;
    v10 = *(a1 + 2064);
    v11 = *(a1 + 2068);
    v12 = *a4 + v11;
    v13 = v10 >= v11;
    v14 = v10 - v11;
    if (v14 != 0 && v13)
    {
      if (v10 <= v12)
      {
        v9 = v14;
      }

      else
      {
        v9 = *a4;
      }

      v15 = (a1 + 650);
      v16 = *(a1 + 2020);
      v17 = *(a1 + 2008);
      v18 = a1 + 32 * *(a1 + 434);
      v20 = *(v18 + 56);
      v19 = *(v18 + 64);
      if (v16)
      {
        v15 = (a1 + 652);
      }

      WSOLA__rateChange_bet4_approach(v17, *(a1 + 2016), *v15, *a3, v9, *(a1 + 2048), &v28, *(a1 + 32), v20, v19);
      *(a1 + 2068) += v28;
    }

    if (v10 <= v12)
    {
      if (a2 == 3)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2 * (*a4 != 0);
      }

      v4 = (**(a1 + 440))(*(a1 + 448), *(a1 + 456), v21, a1 + 2064, &v29);
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_27;
      }

      *(a1 + 2068) = 0;
      v22 = *a4 - v9;
      if (*a4 > v9)
      {
        v23 = (a1 + 650);
        if (*(a1 + 2020))
        {
          v23 = (a1 + 652);
        }

        v24 = *v23;
        v28 = 1024;
        v25 = a1 + 32 * *(a1 + 434);
        WSOLA__rateChange_bet4_approach(*(a1 + 2008), *(a1 + 2016), v24, &(*a3)[v9], v22, *(a1 + 2048), &v28, *(a1 + 32), *(v25 + 56), *(v25 + 64));
        *(a1 + 2068) = v28;
      }
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 3)
    {
      v26 = *a4 == 0;
    }

    else
    {
      v26 = 0;
      *a3 = *(a1 + 2056);
      *a4 = 1024;
    }

    if (a2 == 1 || v26)
    {
LABEL_27:
      *a3 = 0;
      *a4 = 0;
      *(a1 + 1952) = 2;
    }
  }

  return v4;
}

uint64_t eta_synth_ObjReopen(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = 2164269056;
  v27 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    Int = 2164269064;
    goto LABEL_43;
  }

  v4 = *(a1 + 16);
  __s1[0] = 0;
  v29 = 0;
  v28 = 0;
  strcpy(__s, "synth/");
  Str = paramc_ParamGetStr(*(v4 + 40), "voice", __s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  __strcat_chk();
  Str = paramc_ParamGetStr(*(v4 + 40), "reduction", __s1);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_42;
  }

  v6 = __s1[0];
  if (!strstr(__s1[0], "dev"))
  {
    strstr(v6, "DEV");
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  __strcat_chk();
  Int = paramc_ParamGetStr(*(v4 + 40), "coder", __s1);
  if ((Int & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  __strcat_chk();
  paramc_ParamRelease(*(v4 + 40));
  if ((paramc_ParamGetStr(*(v4 + 40), "bitrate", __s1) & 0x80000000) != 0 || !*__s1[0] || (paramc_ParamGetStr(*(v4 + 40), "overheadframes", &v29) & 0x80000000) != 0 || !*v29)
  {
    v8 = &__s[strlen(__s)];
    while (v8 > __s)
    {
      v10 = *--v8;
      v9 = v10;
      if ((v10 - 48) >= 0xA)
      {
        if (v9 == 102)
        {
          v11 = strlen(v8);
          memmove(v8 + 1, v8, v11 + 1);
          *v8 = 47;
          goto LABEL_20;
        }

        break;
      }
    }

    __strcat_chk();
    Int = paramc_ParamGetInt(*(v4 + 40), "frequencyhz", &v28);
    if ((Int & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    v12 = strlen(__s);
    LH_itoa(v28 / 1000, &__s[v12], 0xAu);
  }

  else
  {
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v4 + 40));
    __strcat_chk();
    __strcat_chk();
    paramc_ParamRelease(*(v4 + 40));
  }

LABEL_20:
  if (__s[0])
  {
    v13 = 0;
    v14 = 1;
    do
    {
      __s[v13] = __tolower(__s[v13]);
      v13 = v14;
    }

    while (strlen(__s) > v14++);
  }

  if (!LH_stricmp(__s, (a1 + 656)))
  {
    goto LABEL_43;
  }

  Str = eta_synth_loc_ObjClose(a1, 1);
  if ((Str & 0x80000000) != 0 || (__strcpy_chk(), Str = paramc_ParamGetInt(*(*(a1 + 16) + 40), "frequencyhz", (a1 + 1988)), (Str & 0x80000000) != 0))
  {
LABEL_42:
    Int = Str;
    goto LABEL_43;
  }

  v16 = *(a1 + 640);
  if (v16 <= 9)
  {
    v17 = *(a1 + 1988) * v16;
    if ((v17 + 6) < 9)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v17 + 2) / 5;
    }

    *(a1 + 644) = v18;
  }

  v25 = 0;
  v26 = 0;
  *__s1 = xmmword_1C3827BD0;
  if (!psi_VFDat__loadData(a1 + 1064, *a1, *(a1 + 8), (a1 + 656), a1 + 920, 0, a1 + 968, 0, a1 + 1016, 1))
  {
    v19 = WSOLA__Create(*(a1 + 16), 22050);
    *(a1 + 2008) = v19;
    if (v19 && (WSOLA__Initialise(v19), WSOLA__SetTimeScaleFactor(*(a1 + 2008), 100), v20 = heap_Alloc(*(*(a1 + 2008) + 328), 2048), (*(a1 + 2048) = v20) != 0))
    {
      if (!psi_Synthesis__Init(a1, a1 + 920, a1 + 968, a1 + 1016, __s1))
      {
        if ((psi_Lookup_AvgSpeed(a1 + 1064, &v27) & 0x80000000) != 0)
        {
          v21 = 200;
          v27 = 200;
        }

        else
        {
          v21 = v27;
        }

        Str = paramc_ParamSetUInt(*(v4 + 40), "wordspermin", v21);
        if ((Str & 0x80000000) == 0)
        {
          Str = vu__fillUnitAndSubUnit__Init((a1 + 1928), *(a1 + 16));
        }

        goto LABEL_42;
      }
    }

    else
    {
      v3 = 2164269066;
    }
  }

  Int = v3;
LABEL_43:
  v22 = *MEMORY[0x1E69E9840];
  return Int;
}

uint64_t eta_synth_loc_ObjClose(uint64_t a1, int a2)
{
  v2 = 2164269056;
  if (a1 && *(*(a1 + 16) + 8))
  {
    v5 = *(a1 + 2008);
    if (v5)
    {
      heap_Free(*(v5 + 328), *(a1 + 2048));
      WSOLA__Remove((a1 + 2008));
      *(a1 + 2008) = 0;
    }

    *(a1 + 656) = 0;
    v6 = psi_Synthesis__Denit(a1, a1 + 920, a1 + 968, a1 + 1016);
    if (v6)
    {
      v7 = 2164269056;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      return v7;
    }

    else
    {
      v8 = v6;
      v9 = *(*(a1 + 16) + 40);
      v10 = (a1 + 616);
      v28 = *(a1 + 616);
      v29 = *(a1 + 632);
      v11 = paramc_ListenerRemove(v9, "waitfactor", &v28);
      if (v8)
      {
        LODWORD(v2) = -2130698240;
      }

      else
      {
        LODWORD(v2) = v11 & (v11 >> 31);
      }

      v12 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v13 = paramc_ListenerRemove(v12, "pitch", &v28);
      if (v13 < 0 && v2 > -1)
      {
        LODWORD(v2) = v13;
      }

      v15 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v16 = paramc_ListenerRemove(v15, "volume", &v28);
      if (v16 < 0 && v2 > -1)
      {
        LODWORD(v2) = v16;
      }

      v18 = *(*(a1 + 16) + 40);
      v28 = *v10;
      v29 = *(a1 + 632);
      v19 = paramc_ListenerRemove(v18, "rate", &v28);
      if (v19 >= 0 || v2 <= -1)
      {
        v2 = v2;
      }

      else
      {
        v2 = v19;
      }

      v21 = *(a1 + 912);
      if (v21)
      {
        v22 = *(*(a1 + 16) + 40);
        v28 = *v10;
        v29 = *(a1 + 632);
        v23 = paramc_ListenerRemove(v22, v21, &v28);
        if (v23 >= 0 || v2 <= -1)
        {
          v2 = v2;
        }

        else
        {
          v2 = v23;
        }

        heap_Free(*(*(a1 + 16) + 8), *(a1 + 912));
        *(a1 + 912) = 0;
      }

      if (*(a1 + 440))
      {
        objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHOUTPUTSINK");
      }

      if (*(a1 + 32))
      {
        objc_ReleaseObject(*(*(a1 + 16) + 48), "SYNTHSTREAM");
      }

      vu__fillUnitAndSubUnit__Denit((a1 + 1928), *(a1 + 16));
      v25 = *(a1 + 2056);
      if (v25)
      {
        heap_Free(*(*(a1 + 16) + 8), v25);
      }

      v26 = *(*(a1 + 16) + 8);
      if (v26)
      {
        heap_Free(v26, a1);
      }
    }
  }

  return v2;
}

uint64_t eta_synth_doWsolaSynthesis(uint64_t a1)
{
  v2 = eta_Synth_Reset(a1);
  if ((v2 & 0x80000000) != 0)
  {
    return v2;
  }

  eta_Synth_LinkMsgLayers(a1);
  v4 = v3;
  if ((v3 & 0x80000000) == 0)
  {
    if (!vu__fillUnitAndSubUnit__Begin(*(a1 + 1928), *(a1 + 16), a1 + 1064, a1 + 464))
    {
      psi_Synthesis__FeedAllUnits(a1, *(a1 + 1928));
      xi_Segment__Init(a1 + 1752, *(a1 + 16), a1 + 1976);
      LODWORD(v4) = eta_PrepareNewBuffers(a1);
      if ((v4 & 0x80000000) == 0 && !eta_InOut__IsEndState(a1 + 1936) && *(a1 + 1944))
      {
        v8 = 0;
        *(a1 + 1964) = 0;
        v9 = *(a1 + 1928);
        v10 = *(v9 + 16);
        *(a1 + 2036) = 0;
        v11 = *(a1 + 512);
        if (*v11 != 35)
        {
          ++*(v9 + 20);
          v8 = 1;
        }

        if (v11[*(a1 + 520) - 1] != 35)
        {
          --v10;
          *(a1 + 2036) = 1;
        }

        v12 = v10 - v8;
        if (v10 > v8)
        {
          do
          {
            if (v12 == 1)
            {
              *(a1 + 2040) = 1;
            }

            psi_Synthesis__ProcessOnePolyphone(a1, --v12 == 0);
          }

          while (v12);
          v9 = *(a1 + 1928);
        }

        vu__fillUnitAndSubUnit__End(v9, *(a1 + 16));
      }
    }

    v5 = eta_Synth_UnlinkMsgLayers(a1);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t synth_bet1b_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ISynth_bet1b;
  return result;
}

uint64_t eta_synth_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v5 = 0;
  if (!a3)
  {
    return 2164269063;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v5);
  if ((result & 0x80000000) == 0)
  {
    *a3 = v5;
    *(a3 + 8) = 83214;
  }

  return result;
}

uint64_t eta_synth_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v5 = 2164269066;
  if (!a5)
  {
    return 2164269063;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v31);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if ((safeh_HandleCheck(a1, a2, 83214, 408) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v12 = heap_Calloc(*(v31 + 8), 1, 2072);
  if (v12)
  {
    v13 = v12;
    *(v12 + 296) = 0;
    *(v12 + 432) = 0;
    *(v12 + 640) = 0;
    *(v12 + 644) = 0;
    *v12 = a3;
    *(v12 + 8) = a4;
    v14 = v31;
    *(v12 + 16) = v31;
    *(v12 + 24) = a1;
    *(v12 + 2044) = 257;
    Object = objc_GetObject(*(v14 + 48), "SYNTHSTREAM", &v30);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    *(v13 + 32) = *(v30 + 8);
    Object = objc_GetObject(*(v31 + 48), "SYNTHOUTPUTSINK", &v30);
    if ((Object & 0x80000000) != 0)
    {
      goto LABEL_30;
    }

    v17 = v30;
    v16 = v31;
    *(v13 + 440) = *(v30 + 8);
    *(v13 + 448) = *(v17 + 16);
    v18 = heap_Alloc(*(v16 + 8), 2048);
    *(v13 + 2056) = v18;
    if (!v18)
    {
LABEL_31:
      eta_synth_loc_ObjClose(v13, 0);
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    *(v13 + 616) = v13;
    *(v13 + 624) = eta_synth_CheckChange;
    *(v13 + 632) = eta_synth_LearnChange;
    LODWORD(v27) = 0;
    if ((paramc_ParamGetInt(*(*(v13 + 16) + 40), "waitfactor", &v27) & 0x80000000) != 0)
    {
      *(v13 + 640) = 2;
      paramc_ParamSetInt(*(*(v13 + 16) + 40), "waitfactor", 2u);
    }

    else
    {
      *(v13 + 640) = v27;
    }

    LODWORD(v27) = 0;
    v29 = 0;
    if ((paramc_ParamGetUInt(*(*(v13 + 16) + 40), "volume", &v27) & 0x80000000) != 0)
    {
      *(v13 + 648) = 80;
      Object = paramc_ParamSetUInt(*(*(v13 + 16) + 40), "volume", 0x50u);
      if ((Object & 0x80000000) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = v27;
      if (v27 >= 0x64u)
      {
        v19 = 100;
      }

      *(v13 + 648) = v19;
    }

    if ((paramc_ParamGetUInt(*(*(v13 + 16) + 40), "rate", &v29) & 0x80000000) == 0)
    {
      v20 = v29;
      if (v29 >= 0x190u)
      {
        v20 = 400;
      }

      *(v13 + 652) = v20;
      *(v13 + 650) = v20;
LABEL_23:
      v21 = (v13 + 616);
      v22 = *(*(v13 + 16) + 40);
      v27 = *(v13 + 616);
      v28 = *(v13 + 632);
      Object = paramc_ListenerAdd(v22, "waitfactor", &v27);
      if ((Object & 0x80000000) == 0)
      {
        v23 = *(*(v13 + 16) + 40);
        v27 = *v21;
        v28 = *(v13 + 632);
        Object = paramc_ListenerAdd(v23, "pitch", &v27);
        if ((Object & 0x80000000) == 0)
        {
          v24 = *(*(v13 + 16) + 40);
          v27 = *v21;
          v28 = *(v13 + 632);
          Object = paramc_ListenerAdd(v24, "volume", &v27);
          if ((Object & 0x80000000) == 0)
          {
            v25 = *(*(v13 + 16) + 40);
            v27 = *v21;
            v28 = *(v13 + 632);
            Object = paramc_ListenerAdd(v25, "rate", &v27);
            if ((Object & 0x80000000) == 0)
            {
              Object = eta_synth_InterceptUnsupportedAddonLoading(v13);
              if ((Object & 0x80000000) == 0)
              {
                *a5 = v13;
                *(a5 + 8) = 83213;
                return eta_synth_ObjReopen(v13, *(a5 + 8));
              }
            }
          }
        }
      }

      goto LABEL_30;
    }

    *(v13 + 650) = 6553700;
    Object = paramc_ParamSetUInt(*(*(v13 + 16) + 40), "rate", 0x64u);
    if ((Object & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    v5 = Object;
    goto LABEL_31;
  }

  return v5;
}

uint64_t eta_synth_ObjClose(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  return eta_synth_loc_ObjClose(a1, 0);
}

uint64_t eta_synth_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = 2164269065;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    result = 2164269064;
  }

  else
  {
    v26 = 0;
    *(a1 + 296) = 0;
    *(a1 + 2068) = 0;
    WSOLA__Initialise(*(a1 + 2008));
    *(a1 + 650) = 6553700;
    if ((paramc_ParamGetUInt(*(*(a1 + 16) + 40), "rate", &v26) & 0x80000000) != 0)
    {
      result = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "rate", 0x64u);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v8 = v26;
      if (v26 >= 0x190u)
      {
        v8 = 400;
      }

      *(a1 + 652) = v8;
      *(a1 + 650) = v8;
    }

    *(a1 + 2016) = 0;
    *(a1 + 2044) = 0;
    v10 = a1 + 40;
    v11 = "text/x-realspeak-usphonemes;charset=tts";
    v12 = 1u;
    do
    {
      v13 = *(a1 + 296);
      if (v13 > 7)
      {
        goto LABEL_22;
      }

      result = (*(*(a1 + 32) + 64))(a3, a4, 16, v11, 0, 0, v10 + 32 * v13 + 16);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      v14 = *(a1 + 296);
      v15 = v10 + 32 * v14;
      *v15 = 0;
      *(v15 + 8) = v11;
      *(a1 + 296) = v14 + 1;
      v11 = eta_synth_ProcessStart_szINPUT_STREAMS[v12++];
    }

    while (v12 != 6);
    v13 = *(a1 + 296);
    if (v13 > 7)
    {
      goto LABEL_22;
    }

    result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 0, v10 + 32 * v13 + 16);
    if ((result & 0x80000000) == 0)
    {
      v16 = *(a1 + 296);
      v17 = v10 + 32 * v16;
      *v17 = 0;
      *(v17 + 8) = "application/x-realspeak-markers-pp;version=4.0";
      LOWORD(v16) = v16 + 1;
      *(a1 + 296) = v16;
      result = (*(*(a1 + 32) + 64))(a3, a4, 16, "application/x-realspeak-markers-pp;version=4.0", 0, 1, v10 + 32 * v16 + 16);
      if ((result & 0x80000000) == 0)
      {
        v18 = *(a1 + 296);
        v19 = v10 + 32 * v18;
        *v19 = 1;
        *(v19 + 8) = "application/x-realspeak-markers-pp;version=4.0";
        *(a1 + 432) = v18;
        *(a1 + 296) = v18 + 1;
      }
    }

LABEL_16:
    LODWORD(v13) = *(a1 + 296);
    if (v13 > 7)
    {
LABEL_22:
      v22 = 0;
      v23 = (a1 + 64);
      do
      {
        v24 = *(v23 - 1);
        if (v24)
        {
          (*(*(a1 + 32) + 72))(v24, *v23);
          LOWORD(v13) = *(a1 + 296);
        }

        ++v22;
        v23 += 4;
      }

      while (v22 < v13);
      LOWORD(v13) = 0;
      result = v7;
      goto LABEL_27;
    }

    if ((result & 0x80000000) == 0)
    {
      strcpy(__s, "audio/L16;rate=");
      v20 = strlen(__s);
      LH_itoa(*(a1 + 1988), &__s[v20], 0xAu);
      result = (*(*(a1 + 32) + 64))(a3, a4, 16, __s, 0, 1, v10 + 32 * *(a1 + 296) + 16);
      v13 = *(a1 + 296);
      if ((result & 0x80000000) == 0)
      {
        v21 = v10 + 32 * v13;
        *v21 = 1;
        *(v21 + 8) = 0;
        *(a1 + 434) = v13;
        LOWORD(v13) = v13 + 1;
        goto LABEL_27;
      }
    }

    if (v13)
    {
      v7 = result;
      goto LABEL_22;
    }

LABEL_27:
    *(a1 + 296) = v13;
  }

LABEL_28:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t eta_synth_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v34 = 0;
  if ((safeh_HandleCheck(a1, a2, 83213, 2072) & 0x80000000) != 0)
  {
    return 2164269064;
  }

  *a5 = 1;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v7 = (*(*(a1 + 32) + 144))(*(a1 + 56), *(a1 + 64), &v34 + 4, &v34);
  if ((v7 & 0x80000000) != 0)
  {
    return v7;
  }

  if (HIDWORD(v34))
  {
    v8 = eta_synth_doWsolaSynthesis(a1);
    goto LABEL_5;
  }

  v35 = 0;
  v8 = eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v35);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  v12 = *(v35 + 8);
  if (v12 < 0x20)
  {
    goto LABEL_50;
  }

  v13 = heap_Alloc(*(*(a1 + 16) + 8), v12);
  *(a1 + 600) = v13;
  if (!v13)
  {
    v8 = 2164269066;
    goto LABEL_50;
  }

  memcpy(v13, *v35, *(v35 + 8));
  v14 = 0;
  v15 = 0;
  *(a1 + 608) = (*(v35 + 8) >> 5);
  v16 = (a1 + 1936);
  v17 = (a1 + 1944);
  while (1)
  {
    v18 = *(a1 + 608);
    if (v14 >= v18)
    {
      goto LABEL_44;
    }

    v19 = (*(a1 + 600) + 32 * v14);
    v19[3] = 0;
    v19[4] = 0;
    v20 = *v19;
    if (*v19 == 8)
    {
      break;
    }

    if (v20 == 25)
    {
      v21 = paramc_ParamSetUInt(*(*(a1 + 16) + 40), "waitfactor", v19[6]);
      goto LABEL_24;
    }

    if (v20 == 13)
    {
      v21 = eta_synth_ResetParams(a1);
LABEL_24:
      v8 = v21;
    }

LABEL_25:
    ++v14;
    if ((v8 & 0x80000000) != 0)
    {
      LODWORD(v18) = *(a1 + 608);
LABEL_44:
      if (v15 >= v18)
      {
        goto LABEL_47;
      }

      if (!*v16)
      {
        *(a1 + 1944) = 0;
        *(a1 + 1948) = 0;
        v8 = eta_PushSamplesAndMarkersOut(a1, 0, (a1 + 1936), (a1 + 1944), 0, 0);
        if ((v8 & 0x80000000) != 0 || !*v16)
        {
          goto LABEL_47;
        }

        LODWORD(v18) = *(a1 + 608);
      }

      *(a1 + 1944) = 0;
      *(a1 + 1948) = 3;
      v8 = eta_PushSamplesAndMarkersOut(a1, 3, (a1 + 1936), (a1 + 1944), *(a1 + 600) + 32 * v15, v18 - v15);
      goto LABEL_47;
    }
  }

  v22 = v19[6];
  if (v22 < 1)
  {
    goto LABEL_25;
  }

  v23 = fxd_S32ShMultRndS32S32(v19[6], 107374182, 31) + 22 * v22;
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = *v16;
  if (!*v16)
  {
    *(a1 + 1944) = 0;
    *(a1 + 1948) = 0;
    v8 = eta_PushSamplesAndMarkersOut(a1, 0, (a1 + 1936), (a1 + 1944), 0, 0);
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v24 = *v16;
    if (!*v16)
    {
      goto LABEL_47;
    }
  }

  if (v23 < 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v25 = *v17;
    if (v23 >= *v17)
    {
      v23 -= v25;
    }

    else
    {
      *v17 = v23;
      v25 = v23;
      v23 = 0;
    }

    *(a1 + 1948) = 2;
    bzero(v24, 2 * v25);
    v8 = eta_PushSamplesAndMarkersOut(a1, *(a1 + 1948), (a1 + 1936), (a1 + 1944), *(a1 + 600) + 32 * v15, v14 + 1 - v15);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    v24 = *v16;
    if (!*v16)
    {
      break;
    }

    v15 = v14 + 1;
    if (v23 < 1)
    {
      v15 = v14 + 1;
      goto LABEL_25;
    }
  }

LABEL_47:
  v27 = *(a1 + 600);
  if (v27)
  {
    heap_Free(*(*(a1 + 16) + 8), v27);
    *(a1 + 600) = 0;
  }

  *(a1 + 608) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 1936) = 0;
LABEL_50:
  if (v34)
  {
    v28 = *(a1 + 296);
    if (*(a1 + 296))
    {
      v29 = 0;
      v30 = (a1 + 64);
      do
      {
        if (*(v30 - 1) && *(v30 - 6) == 1)
        {
          v31 = *v30;
          v32 = (*(*(a1 + 32) + 72))();
          if (v32 >= 0)
          {
            v8 = v8;
          }

          else
          {
            v8 = v32;
          }

          *(v30 - 1) = safeh_GetNullHandle();
          *v30 = v33;
          v28 = *(a1 + 296);
        }

        ++v29;
        v30 += 4;
      }

      while (v29 < v28);
    }
  }

LABEL_5:
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_41;
  }

  v9 = (a1 + 64);
  v10 = (a1 + 312);
  v11 = -1;
  while (++v11 < *(a1 + 296))
  {
    if (!*(v9 - 6))
    {
      v8 = (*(*(a1 + 32) + 96))(*(v9 - 1), *v9, *v10);
    }

    v9 += 4;
    v10 += 4;
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }
  }

  if (eta_InOut__IsEndState(a1 + 1936))
  {
LABEL_41:
    *(a1 + 1960) = 7;
    chi_DecodePolyphone__DeinitPoly((a1 + 1232));
    psi_DataMapSegment__DeinitPoly(a1 + 1064);
    xi_Segment__DeinitPoly((a1 + 1752));
  }

  return v8;
}

uint64_t eta_synth_ProcessEnd(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 83213, 2072);
  if ((v3 & 0x80000000) != 0)
  {
    return 2164269064;
  }

  v4 = v3;
  v5 = *(a1 + 296);
  if (*(a1 + 296))
  {
    v6 = 0;
    v7 = (a1 + 64);
    do
    {
      v8 = *(v7 - 1);
      if (v8)
      {
        v9 = (*(*(a1 + 32) + 72))(v8, *v7);
        if (v9 >= 0)
        {
          v4 = v4;
        }

        else
        {
          v4 = v9;
        }

        *(v7 - 1) = safeh_GetNullHandle();
        *v7 = v10;
        v5 = *(a1 + 296);
      }

      ++v6;
      v7 += 4;
    }

    while (v6 < v5);
  }

  *(a1 + 296) = 0;
  return v4;
}

uint64_t eta_synth_CheckChange(uint64_t a1, char *__s1, const char *a3, _DWORD *a4)
{
  *a4 = 1;
  if (!strcmp(__s1, "waitfactor"))
  {
    if (LH_atou(a3) >= 0xA)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!strcmp(__s1, "pitch"))
  {
    if (atoi(a3) != 50)
    {
      *a4 = 0;
      return 2164269057;
    }

    return 0;
  }

  if (!strcmp(__s1, "rate"))
  {
    if ((atoi(a3) - 50) >= 0x15F)
    {
LABEL_16:
      result = 2164269071;
      *a4 = 0;
      return result;
    }

    return 0;
  }

  if (!strcmp(__s1, "volume"))
  {
    if (atoi(a3) >= 0x65)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!strcmp(__s1, *(a1 + 912)))
  {
    *a4 = 0;
    return 2164269057;
  }

  else
  {
    v8 = *(a1 + 1960);
    *a4 = 0;
    if (v8 == 7)
    {
      return 2164269073;
    }

    else
    {
      return 2164269063;
    }
  }
}

uint64_t eta_synth_LearnChange(uint64_t a1, char *__s1, const char *a3)
{
  v6 = 2164269071;
  if (!strcmp(__s1, "waitfactor"))
  {
    v7 = atoi(a3);
    if (v7 <= 9u)
    {
      v6 = 0;
      *(a1 + 640) = v7;
      v8 = *(a1 + 1988) * (v7 & 0xF);
      if ((v8 + 6) < 9)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v8 + 2) / 5;
      }

      *(a1 + 644) = v9;
    }
  }

  else if (!strcmp(__s1, "volume"))
  {
    v10 = atoi(a3);
    if (v10 <= 0x64)
    {
      v6 = 0;
      *(a1 + 648) = v10;
    }
  }

  else if (!strcmp(__s1, "rate"))
  {
    v11 = atoi(a3);
    if ((v11 - 50) <= 0x15E)
    {
      v6 = 0;
      *(a1 + 652) = *(a1 + 650);
      *(a1 + 650) = v11;
    }
  }

  else
  {
    return 2164269063;
  }

  return v6;
}

uint64_t eta_synth_InterceptUnsupportedAddonLoading(uint64_t a1)
{
  v15 = 0;
  __s = 0;
  result = paramc_ParamGetStr(*(*(a1 + 16) + 40), "voice", &__s);
  if ((result & 0x80000000) == 0)
  {
    v3 = strlen(__s);
    v4 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v3 + 13));
    *(a1 + 912) = v4;
    if (v4)
    {
      strcpy(v4, "voiceaddons.");
      v5 = strlen(*(a1 + 912));
      v6 = __s;
      if (*__s)
      {
        v7 = v5;
        v8 = 0;
        v9 = 1;
        do
        {
          *(*(a1 + 912) + v7) = __tolower(v6[v8]);
          v8 = v9;
          v6 = __s;
          ++v7;
        }

        while (strlen(__s) > v9++);
      }

      paramc_ParamRelease(*(*(a1 + 16) + 40));
      if ((paramc_ParamGetStr(*(*(a1 + 16) + 40), *(a1 + 912), &v15) & 0x80000000) == 0 || (result = paramc_ParamSetStr(*(*(a1 + 16) + 40), *(a1 + 912), ""), (result & 0x80000000) == 0) && (result = paramc_ParamGetStr(*(*(a1 + 16) + 40), *(a1 + 912), &v15), (result & 0x80000000) == 0))
      {
        v11 = *(*(a1 + 16) + 40);
        v12 = *(a1 + 912);
        v13 = *(a1 + 616);
        v14 = *(a1 + 632);
        return paramc_ListenerAdd(v11, v12, &v13);
      }
    }

    else
    {
      return 2164269066;
    }
  }

  return result;
}

uint64_t eta_PushSamplesAndMarkersOut(uint64_t a1, int a2, void *a3, int *a4, uint64_t a5, unsigned int a6)
{
  v26 = 0;
  v27 = a6;
  result = 2164269062;
  if (a1 && a3 && a4)
  {
    if (a5)
    {
      if (a6)
      {
        v13 = a1 + 40 + 32 * *(a1 + 434);
        result = (*(*(a1 + 32) + 136))(*(v13 + 16), *(v13 + 24), &v26);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        v14 = v26 >> 1;
        v26 >>= 1;
        v15 = a6;
        v16 = 12;
        do
        {
          *(a5 + v16) += v14;
          v16 += 32;
          --v15;
        }

        while (v15);
        v17 = a1 + 40 + 32 * *(a1 + 432);
        result = (*(*(a1 + 32) + 104))(*(v17 + 16), *(v17 + 24), a5, 32 * a6);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    v18 = *(a1 + 2064);
    v19 = *(a1 + 2068);
    if (v18 <= v19)
    {
      v20 = 0;
    }

    else
    {
      if (v18 <= *a4 + v19)
      {
        v20 = v18 - v19;
      }

      else
      {
        v20 = *a4;
      }

      if (*a3 && v20)
      {
        v21 = a1 + 32 * *(a1 + 434);
        result = (*(*(a1 + 32) + 104))(*(v21 + 56), *(v21 + 64));
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_29;
        }

        *(a1 + 2068) += v20;
      }
    }

    if (a2 == 3)
    {
      v22 = 1;
    }

    else if (a6)
    {
      v22 = 2;
    }

    else
    {
      v22 = 2 * (*a4 != 0);
    }

    result = (**(a1 + 440))(*(a1 + 448), *(a1 + 456), v22, a1 + 2064, &v27);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_29;
    }

    *(a1 + 2068) = 0;
    if (*a4 > v20)
    {
      v23 = a1 + 32 * *(a1 + 434);
      result = (*(*(a1 + 32) + 104))(*(v23 + 56), *(v23 + 64), *(a1 + 2056) + 2 * v20, 2 * (*a4 - v20));
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      *(a1 + 2068) = *a4 - v20;
    }

    if (a2 != 3)
    {
      v24 = *(a1 + 2056);
      v25 = 1024;
      goto LABEL_30;
    }

LABEL_29:
    v24 = 0;
    v25 = 0;
LABEL_30:
    *a3 = v24;
    *a4 = v25;
  }

  return result;
}

uint64_t Rhelp2_Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t **a5)
{
  v19 = 0;
  v18 = 0uLL;
  inited = InitRsrcFunction(a1, a2, &v19);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v11 = heap_Calloc(*(v19 + 8), 1, 968);
    if (!v11)
    {
      return 2164269066;
    }

    v12 = v11;
    *v11 = v19;
    v11[1] = a3;
    __strcpy_chk();
    v17 = xmmword_1C3827BD0;
    Data = psi_VFDat__loadData((v12 + 29), a1, a2, a4, (v12 + 11), 0, (v12 + 17), 0, (v12 + 23), 1);
    if ((Data & 0x80000000) != 0 || (Data = psi_Lookup__InitFromDatFiles((v12 + 29), (v12 + 11), (v12 + 17), (v12 + 23), 0), (Data & 0x80000000) != 0))
    {
      v14 = Data;
    }

    else
    {
      v14 = chi_DecodePolyphone__Create((v12 + 50), 0, v19, v12[24], &v17);
      if ((v14 & 0x80000000) == 0)
      {
        v15 = v18;
        *(v12 + 117) = v17;
        *(v12 + 119) = v15;
LABEL_10:
        *a5 = v12;
        return v14;
      }
    }

    *a5 = v12;
    Rhelp2_Lookup_ObjClose(a5);
    v12 = 0;
    goto LABEL_10;
  }

  return inited;
}

uint64_t Rhelp2_Lookup_ObjClose(uint64_t **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = chi_DecodePolyphone__Delete(v2 + 50, *v2);
    if ((v3 & 0x80000000) == 0)
    {
      v3 = psi_VFDat__unloadData((v2 + 29), (v2 + 11), (v2 + 17), (v2 + 23));
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  heap_Free(*(*v2 + 8), v2);
  *a1 = 0;
  return v4;
}

uint64_t Rhelp2_LoadUnitData(uint64_t a1, int a2, int *a3, unsigned int *a4, _DWORD *a5, _WORD *a6, unsigned int a7)
{
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v44 = 0;
  v12 = *a3;
  if (*a3 <= 0x35B)
  {
    v13 = 860 - *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = *a4;
  PreviousDemiID = psi_Lookup__getPreviousDemiID(a1 + 232, a2, &v49, &v50 + 1, &v52 + 1, &v52, &v51 + 1, &v50, &v51);
  if ((PreviousDemiID & 0x80000000) != 0)
  {
    goto LABEL_40;
  }

  v36 = a5;
  v39 = v52;
  v16 = HIDWORD(v51);
  v37 = a7;
  v38 = v51;
  v17 = a4;
  v18 = v12 - 860;
  if (v12 < 0x35C)
  {
    v19 = HIDWORD(v52) + 860;
    v23 = v12;
  }

  else
  {
    v19 = HIDWORD(v52) + 860;
    if (v12 == 860)
    {
      v23 = 860;
    }

    else
    {
      if (HIDWORD(v51))
      {
        v20 = HIDWORD(v51) + 860;
      }

      else
      {
        v20 = 860;
      }

      if (HIDWORD(v51))
      {
        v19 += HIDWORD(v51);
      }

      v21 = HIDWORD(v51) >= v18;
      v22 = HIDWORD(v51) - v18;
      if (v21)
      {
        v23 = v12;
      }

      else
      {
        v23 = v20;
      }

      if (v21)
      {
        v19 = HIDWORD(v52) + v12;
      }

      v16 = v21 ? v22 : 0;
    }
  }

  if (v14 - 440 >= 0x35D)
  {
    v24 = 1300;
  }

  else
  {
    v24 = v14;
  }

  if (v14 == 440)
  {
    v25 = 440;
  }

  else
  {
    v25 = v24;
  }

  if (HIBYTE(v50))
  {
    v25 = 440;
  }

  if (v14 < 0x1B8)
  {
    v26 = 440;
  }

  else
  {
    v14 = v25;
    v26 = v25;
  }

  v27 = HIBYTE(v50) != 0;
  v28 = v19 + v26;
  xi_Segment__Init_for_psola(a1 + 760, *a1, a1 + 936);
  *a3 = v23;
  *v17 = v14;
  v42 = __PAIR64__(v28, v16);
  LODWORD(v43) = 0;
  HIDWORD(v43) = v39;
  LODWORD(v44) = 0x10000;
  HIDWORD(v44) = v38;
  LOBYTE(v45) = 68;
  BYTE1(v45) = 16 * v27;
  PreviousDemiID = vect_s_t__createVect(*(*a1 + 8), &v46, v16 + v28 + 2160);
  if ((PreviousDemiID & 0x80000000) != 0 || (LODWORD(v48) = HIDWORD(v48), PreviousDemiID = psi_DataMapSegment__InitPoly(a1 + 232, &v43 + 1, &v44 + 1), (PreviousDemiID & 0x80000000) != 0) || (PreviousDemiID = xi_Segment__InitPoly_withDur(a1 + 760, &v42, HIDWORD(v43), SHIDWORD(v44), *(a1 + 256), *(*(a1 + 272) + 44)), (PreviousDemiID & 0x80000000) != 0))
  {
LABEL_40:
    inited = PreviousDemiID;
  }

  else
  {
    inited = chi_DecodePolyphone__InitPoly(a1 + 400);
    if ((inited & 0x80000000) == 0)
    {
      v30 = HIDWORD(v42);
      *(a1 + 672) = HIDWORD(v44);
      v41 = v30;
      chi_DecodePolyphone__SmpRequested(a1 + 400, (a1 + 760), &v41, &v46);
      v31 = *a3 + HIDWORD(v52) + *v17;
      *v36 = v31;
      if (v31 <= v37)
      {
        if (v12 <= 0x35B)
        {
          if (v31)
          {
            v35 = v47;
            do
            {
              *a6++ = v35[v13++];
              --v31;
            }

            while (v31);
          }
        }

        else if (v31)
        {
          v33 = v47;
          do
          {
            v34 = *v33++;
            *a6++ = v34;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        inited = 2164269065;
      }
    }
  }

  vect_i_t__deleteVect(&v46);
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return inited;
}

uint64_t Rhelp2_Lookup_Deinit(uint64_t a1)
{
  chi_DecodePolyphone__DeinitPoly((a1 + 400));
  psi_DataMapSegment__DeinitPoly(a1 + 232);
  xi_Segment__DeinitPoly((a1 + 760));
  return 0;
}

uint64_t Rhelp2_Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 236);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Rhelp2_Lookup_Fingerprint(uint64_t a1, char *__dst, size_t __n)
{
  v3 = __n;
  v5 = 2164269057;
  v6 = *(a1 + 80);
  if (v6)
  {
    if (strlen(*(a1 + 80)) >= __n)
    {
      v5 = 2164269057;
    }

    else
    {
      v5 = 0;
    }

    strncpy(__dst, v6, v3);
  }

  else
  {
    v7 = *(a1 + 236);
    v8 = __n;
    v9 = strncpy(__dst, (a1 + 16), __n);
    LODWORD(v10) = strlen(v9);
    v11 = v10 < v3;
    if (v10 < v3 && v7)
    {
      v10 = v10;
      do
      {
        __dst[v10++] = (v7 % 0xA) | 0x30;
        v11 = v10 < v3;
        if (v10 >= v8)
        {
          break;
        }

        v12 = v7 > 9;
        v7 /= 0xAu;
      }

      while (v12);
    }

    if (v11)
    {
      v5 = 0;
      __dst[v10] = 0;
    }
  }

  return v5;
}

uint64_t rhelp2_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup;
  return result;
}

uint64_t psi_Synthesis__Denit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 2164269056;
  if (!a1)
  {
    return 2164269062;
  }

  if (chi_DecodePolyphone__Delete((a1 + 1232), *(a1 + 16)))
  {
    v12 = "error in chi_DecodePolyphone__Delete";
  }

  else if (rho_Concat__Delete(a1 + 1592))
  {
    v12 = "error in rho_Concat__Delete";
  }

  else
  {
    if (!psi_VFDat__unloadData(a1 + 1064, a2, a3, a4))
    {
      return 0;
    }

    v12 = "error in psi_VFDat__unloadData";
  }

  log_OutText(*(*(a1 + 16) + 32), "SYNTH", 3, 0, v12, v9, v10, v11, v14);
  return v4;
}

uint64_t psi_Synthesis__Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 2164269056;
  if (a1)
  {
    *(a1 + 1928) = 0;
    if (*(a5 + 12) == 22050)
    {
      if (psi_Lookup__InitFromDatFiles(a1 + 1064, a2, a3, a4, 0))
      {
        v12 = a1 + 16;
        v13 = "error in psi_Lookup__InitFromDatFiles";
      }

      else
      {
        v12 = a1 + 16;
        if (chi_DecodePolyphone__Create(a1 + 1232, a1, *(a1 + 16), *(a4 + 8), a5))
        {
          v13 = "error in chi_DecodePolyphone__Create";
        }

        else
        {
          if (!rho_Concat__Create(a1 + 1592, *(a1 + 16), a5))
          {
            v5 = 0;
            v15 = *(a5 + 16);
            *(a1 + 1976) = *a5;
            *(a1 + 1992) = v15;
            return v5;
          }

          v13 = "error in rho_Concat__Create";
        }
      }

      log_OutText(*(*v12 + 32), "SYNTH", 3, 0, v13, v9, v10, v11, v16);
    }

    psi_Synthesis__Denit(a1, a1 + 920, a1 + 968, a1 + 1016);
  }

  return v5;
}

uint64_t psi_Synthesis__FeedAllUnits(uint64_t a1, uint64_t a2)
{
  result = 2164269056;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 1928) = a2;
      *(a2 + 20) = 0;
      *(a1 + 1960) = 3;
    }
  }

  return result;
}

uint64_t psi_Synthesis__ProcessOnePolyphone(uint64_t a1, int a2)
{
  result = 0;
  v4 = *(a1 + 1960);
  if (v4 == 7)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (v4 != 5)
  {
    if (v4 != 3)
    {
      return result;
    }

    *(a1 + 1960) = 5;
  }

  result = rho_concatenate((a1 + 1592), a1 + 1232, (a1 + 1752), (a1 + 1928), a1 + 1064, a2);
  if (result)
  {
    v5 = result;
    if (*(*(a1 + 1928) + 20) != *(*(a1 + 1928) + 16))
    {
      return v5;
    }

    LODWORD(result) = 7;
LABEL_9:
    *(a1 + 1960) = result;
    return v5;
  }

  return result;
}

_DWORD *v_equ_i_t(_DWORD *result, int *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

_WORD *v_equ_s_t(_WORD *result, __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *v_zap_s_t(void *a1, int a2)
{
  if (a2 >= 1)
  {
    bzero(a1, (2 * a2));
  }

  return a1;
}

_BYTE *v_equ_uc_t(_BYTE *result, char *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    do
    {
      v5 = *a2++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t vect_i_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = a1;
    v6 = heap_Calloc(a1, 4, a3);
    *(a2 + 8) = v6;
    if (v6)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v6, 4 * a3);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_i_t__deleteVect(uint64_t a1)
{
  if (!a1)
  {
    return 2164269066;
  }

  v2 = (a1 + 8);
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  heap_Free(*a1, v1);
  result = 0;
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t vect_s_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 2, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v7, 2 * v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_c_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 2164269066;
  if (a2)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = a3;
    *a2 = a1;
    v7 = heap_Calloc(a1, 1, a3);
    *(a2 + 8) = v7;
    if (v7)
    {
      *(a2 + 16) = a3;
      *(a2 + 20) = a3;
      bzero(v7, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t vect_uc_t__createVect(void *a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = a3;
  *a2 = a1;
  v6 = heap_Calloc(a1, 1, a3);
  *(a2 + 8) = v6;
  if (!v6)
  {
    return 2164269066;
  }

  *(a2 + 16) = a3;
  *(a2 + 20) = a3;
  bzero(v6, v5);
  return 0;
}

uint64_t rho_Concat__OverlapWindow__Init(uint64_t a1, int a2)
{
  v2 = 2164269056;
  if (a2 > 15999)
  {
    if (a2 == 16000)
    {
      v3 = 161;
      v4 = &smpOverlapWindow_16_0;
      goto LABEL_10;
    }

    if (a2 == 22050)
    {
      v3 = 221;
      v4 = &smpOverlapWindow_22_0;
      goto LABEL_10;
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v3 = 81;
      v4 = &smpOverlapWindow_8_0;
      goto LABEL_10;
    }

    if (a2 == 11025)
    {
      v3 = 113;
      v4 = &smpOverlapWindow_11_0;
LABEL_10:
      v2 = 0;
      *(a1 + 136) = v4;
      *(a1 + 144) = v3;
      *(a1 + 148) = v3;
    }
  }

  return v2;
}

uint64_t rho_Concat__OverlapWindow__Denit(uint64_t a1)
{
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return 0;
}

uint64_t rho_Concat__WindowsOverlap_wsola(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *(a1 + 4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(a2 + 8) + 2 * a4;
    v8 = *(a3 + 8) + 2 * a5;
    v9 = *(a1 + 136);
    v10 = 4 * v5;
    do
    {
      v11 = *(v7 + 2 * v6);
      v12 = *(v9 + 4 * v6);
      v13 = *(v9 + 4 * v6) >> 16;
      v14 = v11 >> 16;
      v15 = (v11 * v13 + v14 * v12 + ((v11 * v12 + 0x8000) >> 16) + 0x2000) >> 14;
      LOWORD(v13) = v14 * v13;
      v16 = *(v8 + 2 * v6);
      *(v7 + 2 * v6++) = v15 + 4 * (v13 + (v16 >> 15) * HIWORD(*(v9 + v10))) + ((v16 * (*(v9 + v10) >> 16) + (v16 >> 16) * *(v9 + v10) + ((v16 * *(v9 + v10) + 0x8000) >> 16) + 0x2000) >> 14);
      v10 -= 4;
    }

    while (v10);
  }

  return 0;
}

uint64_t rho_Concat__fade_out_closure(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(a1 + 136);
  v6 = *(a2 + 8) + 2 * a3;
  do
  {
    if ((a4 & ~(a4 >> 31)) == v4)
    {
      break;
    }

    v7 = *(v6 + 2 * v4);
    v8 = *(v5 + 4 * v4);
    *(v6 + 2 * v4) = ((v7 * (*(v5 + 4 * v4) >> 16) + (v7 >> 16) * v8 + ((v7 * v8 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(*(v5 + 4 * v4)) * (v7 >> 15);
    ++v4;
  }

  while (v4 < *(a1 + 144));
  return 0;
}

uint64_t rho_Concat__fade_in_burst(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 144) - 1;
  v5 = (*(a2 + 8) + 2 * a3);
  v6 = a4 & ~(a4 >> 31);
  v7 = v4 + 5;
  v8 = (*(a1 + 136) + 4 * v4);
  do
  {
    if (!v6)
    {
      break;
    }

    v9 = *v8;
    v8 -= 5;
    *v5 = ((*v5 * (v9 >> 16) + (*v5 >> 16) * v9 + ((*v5 * v9 + 0x8000) >> 16) + 0x2000) >> 14) + 4 * HIWORD(v9) * (*v5 >> 15);
    ++v5;
    --v6;
    v7 -= 5;
  }

  while (v7 > 4);
  return 0;
}

uint64_t eta_Synth_RetrieveInputBlock(uint64_t a1, char *__s2, void *a3)
{
  v3 = 2164269076;
  *a3 = 0;
  if (*(a1 + 296))
  {
    v7 = 0;
    v8 = 32 * *(a1 + 296);
    v9 = 304;
    for (i = 312; ; i += 16)
    {
      v11 = *(a1 + v7 + 48);
      if (v11)
      {
        if (!*(a1 + v7 + 40) && !strcmp(v11, __s2))
        {
          break;
        }
      }

      v9 += 16;
      v7 += 32;
      if (v8 == v7)
      {
        return v3;
      }
    }

    if (*(a1 + v9))
    {
      v3 = 0;
LABEL_11:
      *a3 = a1 + v9;
      return v3;
    }

    v3 = (*(*(a1 + 32) + 88))(*(a1 + v7 + 56), *(a1 + v7 + 64), a1 + v9, a1 + i);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  return v3;
}

void eta_Synth_LinkMsgLayers(uint64_t a1)
{
  v13 = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 464) = *(a1 + 16);
  if ((eta_Synth_RetrieveInputBlock(a1, "text/x-realspeak-usphonemes;charset=tts", &v13) & 0x80000000) == 0)
  {
    v2 = v13;
    v3 = *v13 + 1;
    *(a1 + 472) = **v13;
    *(a1 + 512) = v3;
    v4 = (*(v2 + 8) - 2);
    *(a1 + 520) = v4;
    if (!*(v3 + v4) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usids;version=4.0", &v13) & 0x80000000) == 0)
    {
      v5 = v13;
      *(a1 + 488) = *v13;
      LODWORD(v5) = *(v5 + 8) >> 2;
      *(a1 + 496) = v5;
      if (v5 == 2 * *(a1 + 520) && (eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usmarkers-u16;version=4.0", &v13) & 0x80000000) == 0)
      {
        v6 = v13;
        v7 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
        *(a1 + 536) = v7;
        if (v7)
        {
          memcpy(v7, *v6, *(v6 + 8));
          if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usplosives;version=4.0", &v13) & 0x80000000) == 0)
          {
            v8 = v13;
            v9 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
            *(a1 + 560) = v9;
            if (v9)
            {
              memcpy(v9, *v8, *(v8 + 8));
              if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-usdurs;version=4.0", &v13) & 0x80000000) == 0)
              {
                v10 = v13;
                v11 = heap_Alloc(*(*(a1 + 16) + 8), *(v13 + 8));
                *(a1 + 584) = v11;
                if (v11)
                {
                  memcpy(v11, *v10, *(v10 + 8));
                  if ((eta_Synth_RetrieveInputBlock(a1, "application/x-realspeak-markers-pp;version=4.0", &v13) & 0x80000000) == 0)
                  {
                    v12 = (v13 + 8);
                    eta_Synth_SetupMarkers(a1 + 464, *v13, *(v13 + 8) >> 5, (v13 + 8));
                    *v12 *= 32;
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

__n128 eta_Synth_SetupMarkers(uint64_t a1, int *a2, int a3, int *a4)
{
  v8 = (*(a1 + 56) + a3);
  *(a1 + 144) = v8;
  if (a3 >= 1)
  {
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v10;
      v10 += 8;
      if (v11 == 8)
      {
        *(a1 + 144) = ++v8;
      }

      --v9;
    }

    while (v9);
  }

  v12 = heap_Calloc(*(*a1 + 8), v8, 32);
  *(a1 + 136) = v12;
  if (!v12)
  {
    return result;
  }

  if (*(a1 + 56) < 1)
  {
    v17 = 0;
    v25 = 0;
    goto LABEL_31;
  }

  v14 = 0;
  i = 0;
  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(*(a1 + 72) + v14);
    if (i)
    {
      v19 = (*(a1 + 136) + 32 * v16);
      *v19 = 8;
      v19[6] = 0;
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    for (i = 0; v18; --v18)
    {
      if (v17 >= a3 || v16 >= *(a1 + 144))
      {
        continue;
      }

      v20 = &a2[8 * v17];
      if (*v20 == 33)
      {
        if (v20[6] != 35)
        {
          goto LABEL_21;
        }
      }

      else if (*v20 != 8 || !v20[6])
      {
        goto LABEL_21;
      }

      i = 1;
LABEL_21:
      result = *v20;
      v21 = *(v20 + 1);
      v22 = *(a1 + 136) + 32 * v16;
      *v22 = result;
      *(v22 + 16) = v21;
      ++v17;
      ++v16;
    }

    v23 = *(a1 + 48);
    if (v14 || *v23 != 35 || (*(a1 + 8) & 1) != 0)
    {
      v24 = (*(a1 + 136) + 32 * v16);
      *v24 = 33;
      v24[6] = v23[v14];
      ++v16;
      ++*(*(a1 + 72) + v14);
    }

    ++v14;
  }

  while (v14 < *(a1 + 56));
  v25 = v16;
LABEL_31:
  *(a1 + 144) = v25;
  *a4 = v17;
  if (**(a1 + 48) == 35)
  {
    v26 = *(a1 + 72);
    if (!*v26)
    {
      v27 = v26[1];
      if (*(a1 + 56) < 3)
      {
        *v26 = v27;
        *(*(a1 + 72) + 1) = 0;
      }

      else if (v26[1])
      {
        v28 = 0;
        v29 = 32 * v27;
        while (32 * (*(a1 + 144) & ~(*(a1 + 144) >> 31)) != v28)
        {
          v30 = *(a1 + 136);
          if (v30[v28 / 0x10].n128_u32[0] == 0x4000)
          {
            v31 = &v30[v28 / 0x10];
            v32 = *v31;
            result = v31[1];
            v33 = v30[1];
            *v31 = *v30;
            v31[1] = v33;
            v34 = *(a1 + 136);
            *v34 = v32;
            v34[1] = result;
            ++**(a1 + 72);
            --*(*(a1 + 72) + 1);
            return result;
          }

          v28 += 32;
          if (v29 == v28)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t eta_Synth_UnlinkMsgLayers(void *a1)
{
  if (!a1)
  {
    return 2164269062;
  }

  v2 = a1[73];
  if (v2)
  {
    heap_Free(*(a1[2] + 8), v2);
    a1[73] = 0;
  }

  v3 = a1[67];
  if (v3)
  {
    heap_Free(*(a1[2] + 8), v3);
    a1[67] = 0;
  }

  v4 = a1[70];
  if (v4)
  {
    heap_Free(*(a1[2] + 8), v4);
    a1[70] = 0;
  }

  v5 = a1[75];
  if (!v5)
  {
    return 0;
  }

  heap_Free(*(a1[2] + 8), v5);
  result = 0;
  a1[75] = 0;
  return result;
}

uint64_t eta_Synth_Reset(uint64_t a1)
{
  mu_Reset(a1 + 1936);
  *(a1 + 1688) = 0;
  return 0;
}

uint64_t smc1175mrf22spi_DecoderProcess_F1(uint64_t a1, int a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10)
{
  v43[2] = *MEMORY[0x1E69E9840];
  if (a7 && a4 && a3 && a5 && (v14 = a6) != 0)
  {
    if (*a4)
    {
      v40 = 0;
      *a7 = 0;
      result = SecurelyRetrievePointer(a1, a2, &v40);
      if ((result & 0x80000000) == 0)
      {
        v17 = v40;
        v19 = (v40 + 4);
        v18 = *(v40 + 2);
        if (v18 <= *a4)
        {
          v21 = (a5 + 608);
          *(v40 + 1) = 19;
          ReadStream_CheckWhatModeFirst((v17 + 76), v17 + 65, a3, *v17, v18, v17 + 1, v43, (v17 + 1070), v17 + 3, v19, v17 + 6, 1, *(v17 + 2506), 4);
          smc1175mrf22_ReadStream(a3, v40[4], (a5 + 608), v40[6], v40 + 1070);
          v22 = v40;
          *a4 = *(v40 + 2);
          fxd_MultiStageVectorDecodeLsp__32BIT(a8, *(v22 + 4 * a9 + 152), (v22 + 32 * a9 + 164), *(v22 + 8 * a9 + 360), 16, v22 + 40 * a9 + 32, (a5 + 1340));
          v23 = *(v40 + 7);
          fxd_OrderCheckLsp__S32((a5 + 1340), 16);
          LH_S32ToLH_S32((a5 + 1340), v40 + 1036, 0x10u);
          v24 = 0;
          for (i = 0; i != 4; ++i)
          {
            v26 = v40;
            v40[995] = 0;
            v27 = (*(v26 + 49) + 160 * i);
            v27[8] = 0u;
            v27[9] = 0u;
            v27[6] = 0u;
            v27[7] = 0u;
            v27[4] = 0u;
            v27[5] = 0u;
            v27[2] = 0u;
            v27[3] = 0u;
            *v27 = 0u;
            v27[1] = 0u;
            if (*(v26 + 1) == 19 && i < *v26)
            {
              LOBYTE(v28) = 0;
              v29 = 0;
            }

            else
            {
              v28 = *v21;
              v29 = v21[1];
              v21 += 2;
            }

            smc1175mrf22_fxd_DecodWFSet1_5p(a5, v42, 80, v28, v29);
            v30 = 0;
            v31 = v40;
            do
            {
              v32 = *(a5 + v30);
              v33 = (2 * v32 * v31[996] + 0x4000) >> 15;
              if (v33 <= -32768)
              {
                v33 = -32768;
              }

              if (v33 >= 0x7FFF)
              {
                LOWORD(v33) = 0x7FFF;
              }

              *(a5 + v30) = v32 + v33;
              v30 += 2;
            }

            while (v30 != 160);
            if (*(v31 + 1) == 19 && i < *v31)
            {
              v34 = 0;
            }

            else
            {
              v35 = *v21++;
              v34 = smc1175mrf22_fxd_DecodeCodeGain(v35, a5, 0, (v31 + 917), 80);
              v31 = v40;
            }

            v36 = 0;
            v31[982] = v34;
            v31[969] = v34;
            v37 = *(v31 + 49);
            v38 = v37 + 160 * i;
            v39 = v37 + v24;
            do
            {
              *(v39 + v36) += (2 * *(a5 + v36) * v31[969] + 0x8000) >> 16;
              v36 += 2;
            }

            while (v36 != 160);
            v31[996] = v31[995];
            LH_S32ToLH_S32((a5 + 1340), v31 + 1036, 0x10u);
            LH_S32ToLH_S32((a5 + 1340), __dst, 0x10u);
            if (a10)
            {
              fxd_LspToCosLsp__32BITX(__dst, __dst, 16);
              fxd_HighPrecisionCosLspToAi__32BIT(__dst, (a5 + 544), 16);
              FillZeroLH_S32(a5, 0x60u);
              LH_S32ToLH_S32(v40 + 1004, a5, 0x10u);
              fxd_HighPrecisionFastSynthesisFilter(v38, (a5 + 384), 80, 0, (a5 + 544), 0x10u, 28, a5, 14);
              LH_S32ToLH_S32((a5 + 320), v40 + 1004, 0x10u);
            }

            LH_S16ToLH_S16((a5 + 384), v14, 0x50u);
            v14 += 160;
            *a7 += 160;
            v24 += 160;
          }

          LH_S32ToLH_S32((a5 + 1340), v40 + 1036, 0x10u);
          LH_S16ToLH_S16(v40 + 520, v40 + 200, *(v40 + 5));
          FillZeroLH_S16(&v40[*(v40 + 5) + 200], 0x140u);
          result = 0;
          ++*(v40 + 534);
        }

        else
        {
          *a4 = 0;
          *a7 = 0;
          result = 2353012745;
        }
      }

      goto LABEL_14;
    }
  }

  else if (!a4)
  {
    goto LABEL_12;
  }

  *a4 = 0;
LABEL_12:
  result = 2353012742;
  if (a7)
  {
    *a7 = 0;
  }

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *smc1175mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v15[213] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    v6 = v15;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_1C3827A00), vshlq_u32(v8, xmmword_1C38279F0))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v15;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ReadStream_CheckWhatModeFirst(uint64_t result, int *a2, uint64_t a3, int a4, uint64_t a5, int *a6, void *a7, unint64_t a8, _DWORD *a9, int *a10, _DWORD *a11, int a12, char a13, int a14)
{
  v14 = 0;
  v64 = *MEMORY[0x1E69E9840];
  *a7 = -1;
  a7[1] = -1;
  do
  {
    v16 = vdupq_n_s32(*(a3 + v14));
    *&v63[8 * v14++] = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v16, xmmword_1C3827A00), vshlq_u32(v16, xmmword_1C38279F0))), 0x101010101010101);
  }

  while (v14 != 5);
  if (a13)
  {
    if (!a12)
    {
      switch(a13)
      {
        case 3:
          v17 = 0;
          *a6 = 22;
          *a10 = 49;
          *&v45 = 0x300000003;
          *(&v45 + 1) = 0x300000003;
          *a7 = v45;
          *a11 = 3;
          *a9 = 44;
          *(a8 + 32) = xmmword_1C3828732;
          *(a8 + 48) = unk_1C3828742;
          *(a8 + 64) = xmmword_1C3828752;
          *a8 = au16BitAllocatiobMod22;
          *(a8 + 16) = unk_1C3828722;
          *(a8 + 80) = 17;
          goto LABEL_11;
        case 2:
          v17 = 0;
          *a6 = 21;
          *a10 = 39;
          *&v44 = 0x200000002;
          *(&v44 + 1) = 0x200000002;
          *a7 = v44;
          *a11 = 2;
          *a9 = 36;
          *a8 = *au16BitAllocatiobMod21;
          *(a8 + 16) = unk_1C38286A4;
          *(a8 + 32) = xmmword_1C38286B4;
          *(a8 + 48) = unk_1C38286C4;
          *(a8 + 64) = 17;
          goto LABEL_11;
        case 1:
          v17 = 0;
          *a6 = 20;
          *a10 = 28;
          *&v18 = 0x100000001;
          *(&v18 + 1) = 0x100000001;
          *a7 = v18;
          *a11 = 1;
          *a9 = 28;
          *a8 = au16BitAllocatiobMod20;
          *(a8 + 16) = unk_1C3828636;
          *(a8 + 32) = xmmword_1C3828646;
          *(a8 + 48) = 6;
          goto LABEL_11;
      }

      goto LABEL_67;
    }

LABEL_10:
    v17 = 0;
    *a6 = 19;
    *a10 = 16;
    *&v19 = 0x100000001;
    *(&v19 + 1) = 0x100000001;
    *a7 = v19;
    *a11 = 1;
    *a9 = 15;
    *a8 = au16BitAllocatiobMod19;
    *(a8 + 14) = *(&au16BitAllocatiobMod19 + 14);
    a14 = 4 - a4;
    goto LABEL_11;
  }

  if (a12)
  {
    goto LABEL_10;
  }

  if (v63[0] != 1)
  {
    if (!v63[0])
    {
      *a6 = 15;
      *a10 = 28;
      *&v43 = 0x100000001;
      *(&v43 + 1) = 0x100000001;
      *a7 = v43;
      v17 = 1;
      *a11 = 1;
      *a9 = 29;
      *a8 = au16BitAllocatiobMod15;
      *(a8 + 16) = unk_1C3828510;
      *(a8 + 32) = xmmword_1C3828520;
      *(a8 + 42) = *(&xmmword_1C3828520 + 10);
      *a8 = 1;
      goto LABEL_11;
    }

    goto LABEL_67;
  }

  if (!v63[1])
  {
    *a6 = 16;
    *a10 = 39;
    *&v46 = 0x200000002;
    *(&v46 + 1) = 0x200000002;
    *a7 = v46;
    v17 = 2;
    *a11 = 2;
    *a9 = 37;
    *a8 = au16BitAllocatiobMod16;
    *(a8 + 16) = unk_1C3828550;
    *(a8 + 32) = xmmword_1C3828560;
    *(a8 + 48) = unk_1C3828570;
    *(a8 + 58) = unk_1C382857A;
LABEL_70:
    *a8 = 65537;
    goto LABEL_11;
  }

  if (!v63[2])
  {
    *a6 = 17;
    *a10 = 50;
    *&v47 = 0x300000003;
    *(&v47 + 1) = 0x300000003;
    *a7 = v47;
    v17 = 3;
    *a11 = 3;
    *a9 = 46;
    *(a8 + 32) = xmmword_1C38285B2;
    *(a8 + 48) = unk_1C38285C2;
    *(a8 + 64) = xmmword_1C38285D2;
    *(a8 + 76) = *(&xmmword_1C38285D2 + 12);
    *a8 = au16BitAllocatiobMod17;
    *(a8 + 16) = unk_1C38285A2;
    *(a8 + 4) = 1;
    goto LABEL_70;
  }

  if (v63[3])
  {
    if (v63[4])
    {
LABEL_67:
      v17 = 0;
      goto LABEL_11;
    }

    v53 = 0;
    v54 = v63;
    while (v53 != 9)
    {
      v55 = 0;
      v56 = 0;
      v57 = word_1C38287B4[v53];
      do
      {
        v56 += v54[v55] << v55;
        ++v55;
      }

      while (v57 != v55);
      v54 += v57;
      v60[v53++] = v56;
      if (v53 == 10)
      {
        goto LABEL_86;
      }
    }

    v62 = 0;
LABEL_86:
    v59.i64[0] = 0x400000004;
    v59.i64[1] = 0x400000004;
    *a7 = vaddq_s32(*&v61[4], v59);
    *a6 = 23;
    *(a8 + 16) = 3;
    *a8 = xmmword_1C38284E0;
    v17 = 9;
  }

  else
  {
    v48 = 0;
    v49 = v63;
    while (v48 != 8)
    {
      v50 = 0;
      v51 = 0;
      v52 = word_1C38287A0[v48];
      do
      {
        v51 += v49[v50] << v50;
        ++v50;
      }

      while (v52 != v50);
      v49 += v52;
      v60[v48++] = v51;
      if (v48 == 9)
      {
        goto LABEL_84;
      }
    }

    *&v61[16] = 0;
LABEL_84:
    v58.i64[0] = 0x100000001;
    v58.i64[1] = 0x100000001;
    *a7 = vaddq_s32(*v61, v58);
    *a6 = 18;
    *a8 = xmmword_1C38284F0;
    v17 = 8;
  }

LABEL_11:
  v20 = *a6;
  if ((*a6 - 20) >= 3)
  {
    if (v20 != 19)
    {
      if (v20 == 15)
      {
        v23 = *(result + 4);
        if (v23 >= 1)
        {
          v24 = a2 + 8;
          v17 = v17;
          do
          {
            v25 = *v24++;
            *(a8 + 2 * v17++) = v25;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        v26 = *result;
        if (v26 >= 1)
        {
          v17 = v17;
          do
          {
            v27 = *a2++;
            *(a8 + 2 * v17++) = v27;
            --v26;
          }

          while (v26);
        }
      }
    }
  }

  else
  {
    v21 = *result;
    if (v21 >= 1)
    {
      v17 = v17;
      do
      {
        v22 = *a2++;
        *(a8 + 2 * v17++) = v22;
        --v21;
      }

      while (v21);
    }
  }

  if (a14 >= 1)
  {
    v28 = 0;
    if (v20 == 23)
    {
      v29 = 7;
    }

    else
    {
      v29 = 5;
    }

    result = 1114116;
    while (1)
    {
      if (v20 != 19)
      {
        v30 = (a8 + 2 * v17);
        if (v28)
        {
          *v30 = v29;
          v31 = (a8 + 2 + 2 * v17);
        }

        else
        {
          *v30 = 9;
          v31 = v30 + 1;
        }

        v17 = (v17 + 2);
        *v31 = 8;
      }

      v32 = *(a7 + v28);
      if (v32 >= 1)
      {
        break;
      }

      v35 = v17;
LABEL_48:
      ++v28;
      v17 = v35;
      if (v28 == a14)
      {
        goto LABEL_51;
      }
    }

    v33 = 0;
    while (1)
    {
      v34 = (a8 + 2 * v17);
      if (!v33)
      {
        break;
      }

      v35 = v17 + 2;
      if (v33 > 2)
      {
        *v34 = 1310725;
        if (v20 == 23)
        {
          v36 = (a8 + 2 * v35);
          goto LABEL_44;
        }
      }

      else
      {
        *v34 = 1114116;
        if (v20 == 23)
        {
          v36 = (a8 + 2 * v35);
LABEL_44:
          v35 = (v17 + 3);
          *v36 = 6;
        }
      }

      ++v33;
      LODWORD(v17) = v35;
      if (v32 == v33)
      {
        goto LABEL_48;
      }
    }

    *v34 = 1310725;
    v36 = v34 + 1;
    goto LABEL_44;
  }

  LODWORD(v35) = v17;
LABEL_51:
  v37 = 0;
  v38 = a8 + 2 * v35;
  *(v38 + 8) = 0;
  v39 = (v38 + 8);
  *(a8 + 2 * v35) = 0;
  if (v39 >= a8)
  {
    v37 = 0;
    do
    {
      v40 = *v39--;
      v37 += v40;
    }

    while (v39 >= a8);
  }

  if ((v37 & 7) != 0)
  {
    v41 = (v37 >> 3) + 1;
  }

  else
  {
    v41 = v37 >> 3;
  }

  *a10 = v41;
  *a9 = (2 * v35 + 6) >> 1;
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t smc1175mrf22spi_GetInfo(__int16 a1, char a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return 2353012742;
  }

  *(a4 + 8) = 40;
  *a4 = vdup_n_s32(0x53FCu);
  *(a4 + 28) = 1704;
  *(a4 + 16) = 4007;
  *(a4 + 20) = 0x34000D500680280;
  v4 = 0;
  if (a3 == 1)
  {
    *(a4 + 30) = 0;
  }

  else
  {
    *(a4 + 30) = 92015056;
    *(a4 + 12) = 4;
    *(a4 + 18) = a1;
    *(a4 + 34) = a2;
  }

  return v4;
}

uint64_t SecurelyRetrievePointer(uint64_t a1, int a2, uint64_t *a3)
{
  *a3 = 0;
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      *a3 = a1;
    }

    else
    {
      return 2353012744;
    }
  }

  return result;
}

uint64_t smc1175mrf22spi_DecoderOpen(__int16 a1, char a2, unsigned __int8 *a3, char *a4, uint64_t a5)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = 2353012742;
  if (a4)
  {
    v7 = a4;
    bzero(a4, 0x9D0uLL);
    if (a5)
    {
      *a5 = v7;
      *(a5 + 8) = 65732;
      if (a3)
      {
        v80 = 32;
        v11 = 1;
        smc1175mrf22_ReadStream(a3, 4u, __src, 1, &v80);
        v12 = __src[0];
        *(v7 + 192) = __src[0];
        v13 = v12;
        v71 = a2;
        v70 = a5;
        v69 = a1;
        if (v13 < 1)
        {
          LOWORD(v12) = 0;
          v14 = 0;
        }

        else
        {
          memset_pattern16(v81, &unk_1C3828800, (2 * v12) & 0x1FFFF);
          v14 = 0;
          v11 = v13 + 1;
          v15 = v81;
          do
          {
            v16 = *v15++;
            v14 += v16;
            --v13;
          }

          while (v13);
        }

        if ((v14 & 7) != 0)
        {
          v17 = (v14 >> 3) + 1;
        }

        else
        {
          v17 = v14 >> 3;
        }

        v18 = v17;
        smc1175mrf22_ReadStream(a3 + 4, v17, v82, v12, v81);
        if (*(v7 + 192) >= 1)
        {
          v19 = 0;
          LODWORD(v20) = v18 + 4;
          v21 = (v7 + 164);
          v22 = v7 + 360;
          v72 = v7 + 260;
          v73 = v7 + 32;
          v74 = v7 + 164;
          v75 = v7 + 152;
          v76 = v7;
          do
          {
            v23 = v11 + 1;
            v24 = &v81[v11 - 1];
            *v24 = 32;
            smc1175mrf22_ReadStream(&a3[v20], 4u, &v75[4 * v19], 1, v24);
            v77 = &v75[4 * v19];
            v25 = *v77;
            if (v25 <= 0)
            {
              v26 = 0;
              v27 = v11 + 1;
            }

            else
            {
              memset_pattern16(&v81[v23 - 1], &unk_1C3828800, 2 * v25);
              v26 = 0;
              v27 = v11 + v25 + 1;
              v28 = &v81[v23 - 1];
              do
              {
                v29 = *v28++;
                v26 += v29;
                --v25;
              }

              while (v25);
            }

            v30 = v20 + 4;
            if ((v26 & 7) != 0)
            {
              v31 = (v26 >> 3) + 1;
            }

            else
            {
              v31 = v26 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v30], v31, &v74[32 * v19], (v27 - v23), &v81[v23 - 1]);
            v32 = *v77;
            v33 = 12 * v32 + 24;
            if (v32 < 1)
            {
              if (v33 != v82[v19])
              {
                goto LABEL_65;
              }

              v38 = 0;
              v37 = &v81[v27 - 1];
              v39 = v27;
            }

            else
            {
              v34 = *v77;
              v35 = v21;
              do
              {
                v36 = *v35++;
                v33 += 32 * v36;
                --v34;
              }

              while (v34);
              if (v33 != v82[v19])
              {
LABEL_65:
                v5 = 2353012745;
                goto LABEL_66;
              }

              v37 = &v81[v27 - 1];
              memset_pattern16(v37, &unk_1C3828800, 2 * v32);
              v38 = 0;
              v39 = v27 + v32;
              v40 = v37;
              do
              {
                v41 = *v40++;
                v38 += v41;
                --v32;
              }

              while (v32);
            }

            v42 = v30 + v31;
            if ((v38 & 7) != 0)
            {
              v43 = (v38 >> 3) + 1;
            }

            else
            {
              v43 = v38 >> 3;
            }

            v44 = v43;
            v45 = v39 - v27;
            v46 = (v39 - v27);
            smc1175mrf22_ReadStream(&a3[v42], v43, __src, v46, v37);
            if (v46)
            {
              memcpy(&v72[32 * v19], __src, 4 * v45);
            }

            v47 = 0;
            v48 = 0;
            v49 = &v81[v39 - 1];
            *v49 = 2097184;
            v49[2] = 32;
            *(v49 + 3) = 2097184;
            do
            {
              v48 += v49[v47++];
            }

            while (v47 != 5);
            v50 = (v42 + v44);
            v51 = v39 + 5;
            if ((v48 & 7) != 0)
            {
              v52 = (v48 >> 3) + 1;
            }

            else
            {
              v52 = v48 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v50], v52, __src, 5, v49);
            *(v76 + 7) = __src[1];
            v53 = *v77;
            if (v53 < 1)
            {
              v11 = v39 + 5;
            }

            else
            {
              memset_pattern16(&v81[v51 - 1], &unk_1C3828800, 2 * v53);
              v11 = v39 + v53 + 5;
            }

            if (v11 - v51 < 1)
            {
              v54 = 0;
            }

            else
            {
              v54 = 0;
              v55 = &v81[v51 - 1];
              v56 = (v11 - v51);
              do
              {
                v57 = *v55++;
                v54 += v57;
                --v56;
              }

              while (v56);
            }

            v58 = v50 + v52;
            if ((v54 & 7) != 0)
            {
              v59 = (v54 >> 3) + 1;
            }

            else
            {
              v59 = v54 >> 3;
            }

            smc1175mrf22_ReadStream(&a3[v58], v59, &v73[40 * v19], (v11 - v51), &v81[v51 - 1]);
            v20 = v58 + v59;
            v78 = 16;
            *&v22[8 * v19] = &a3[v20];
            v60 = *v77;
            if (v60 < 1)
            {
              v7 = v76;
            }

            else
            {
              v61 = 0;
              v62 = 0;
              v63 = 4 * v60;
              v7 = v76;
              do
              {
                v62 += 32 * v21[v61 / 4];
                v61 += 4;
              }

              while (v63 != v61);
              if (v62)
              {
                v64 = 0;
                v65 = v62 >> 1;
                if (v65 <= 1)
                {
                  v66 = 1;
                }

                else
                {
                  v66 = v65;
                }

                do
                {
                  smc1175mrf22_ReadStream(&a3[v20], 2u, __src, 1, &v78);
                  *(*&v22[8 * v19] + 2 * v64) = __src[0];
                  LODWORD(v20) = v20 + 2;
                  ++v64;
                }

                while (v66 != v64);
              }
            }

            ++v19;
            v21 += 8;
          }

          while (v19 < *(v7 + 192));
        }

        *v7 = v69;
        *(v7 + 6) = 1;
        *(v7 + 8) = xmmword_1C38287E0;
        *(v7 + 49) = v7 + 1194;
        smc1175mrf22spi_DecoderResetMemory(*v70, v70[1]);
        v5 = 0;
        *(v7 + 534) = 0;
        v7[2506] = v71;
      }
    }

    else
    {
      v5 = 2353012744;
    }
  }

LABEL_66:
  v67 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t smc1175mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      bzero((a1 + 400), 0x59AuLL);
      *(a1 + 2040) = 0u;
      *(a1 + 2056) = 0u;
      *(a1 + 2008) = 0u;
      *(a1 + 2024) = 0u;
      *(a1 + 1998) = 0;
      *(a1 + 2000) = 0;
      *(a1 + 2004) = 0;
      v4 = (a1 + 1964);
      *(a1 + 1990) = 214695936;
      memset_pattern16((a1 + 1834), &unk_1C38287F0, 0x68uLL);
      v5 = 13;
      do
      {
        *(v4 - 13) = 0;
        *v4++ = 0;
        --v5;
      }

      while (v5);
      fxd_LinSpace(v9, 0, 25736, 16);
      result = 0;
      v6 = v9[1];
      v7 = vshll_high_n_s16(v9[0], 0xAuLL);
      *(a1 + 2072) = vshll_n_s16(*v9[0].i8, 0xAuLL);
      *(a1 + 2088) = v7;
      *(a1 + 2104) = vshll_n_s16(*v6.i8, 0xAuLL);
      *(a1 + 2120) = vshll_high_n_s16(v6, 0xAuLL);
      *(a1 + 2136) = 0;
    }

    else
    {
      result = 2353012744;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t smc1175mrf22spi_getDecoderBufferSize(unsigned __int16 *a1, int a2, uint64_t a3, unsigned int *a4, unsigned int *a5, int a6, int *a7)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v13 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v13 & 0x80000000) == 0)
  {
    if (a1)
    {
      v14 = *a5;
      if (*a5)
      {
        if (v14 < 0x280)
        {
          *a5 &= 0x3FEu;
          if (v14 <= 0xA1)
          {
            v16 = v14 != 1;
          }

          else
          {
            v16 = 2;
          }

          if (v14 <= 0x141)
          {
            v17 = v16;
          }

          else
          {
            v17 = 3;
          }

          if (v14 <= 0x1E1)
          {
            v15 = v17;
          }

          else
          {
            v15 = 4;
          }
        }

        else
        {
          *a5 = 640;
          v15 = 4;
        }

        *a7 = v15;
        ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, a1[4], a1 + 1, v20, (a1 + 1070), a1 + 3, a1 + 2, a1 + 6, a6, *(a1 + 2506), v15);
        v14 = *(a1 + 2);
      }

      else
      {
        *(a1 + 1) = 0;
        *(a1 + 6) = 0;
        *a5 = 0;
      }

      *a4 = v14;
    }

    else
    {
      v13 = 2353012744;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t smc1175mrf22spi_getSpectrum(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _DWORD *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((v9 & 0x80000000) == 0)
  {
    if (!a1)
    {
      v9 = 2353012744;
      goto LABEL_22;
    }

    v16 = 0;
    v17 = 0;
    ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, a1[4], &v16, &v18, v19, &v17, &v17 + 1, &v16 + 1, 0, *(a1 + 2506), 0);
    smc1175mrf22_ReadStream(a3, WORD2(v17), a4, v17, v19);
    v10 = v16;
    *a5 = v16 == 15;
    if (v10 <= 18)
    {
      if (v10 > 16)
      {
        if (v10 == 17)
        {
          v11 = 3;
        }

        else
        {
          v11 = 8;
        }

        goto LABEL_20;
      }

      if (v10 == 15)
      {
        v11 = 1;
        goto LABEL_20;
      }

      if (v10 == 16)
      {
        v11 = 2;
        goto LABEL_20;
      }
    }

    else
    {
      if ((v10 - 20) < 3)
      {
        v11 = 0;
        *a5 = 0;
        goto LABEL_20;
      }

      if (v10 == 19)
      {
        v11 = 0;
        goto LABEL_20;
      }

      if (v10 == 23)
      {
        v11 = 9;
        goto LABEL_20;
      }
    }

    v11 = 4;
LABEL_20:
    v12 = 0;
    v13 = &a4[v11];
    do
    {
      a4[v12] = v13[v12];
      ++v12;
    }

    while (v12 != 5);
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t smc1175mrf22spi_DecoderProcess(unsigned __int16 *a1, int a2, unsigned __int8 *a3, _WORD *a4, uint64_t a5, char *a6, _WORD *a7, _DWORD *a8, int a9, int a10, int a11, int a12)
{
  v110 = *MEMORY[0x1E69E9840];
  v105 = 0;
  if (!a7 || !a4 || !a3 || !a5 || !a6)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!*a4)
  {
LABEL_12:
    *a4 = 0;
LABEL_13:
    result = 2353012742;
    if (a7)
    {
      *a7 = 0;
    }

    goto LABEL_15;
  }

  *a7 = 0;
  memset(v108, 0, sizeof(v108));
  result = safeh_HandleCheck(a1, a2, 65732, 2512);
  if ((result & 0x80000000) == 0)
  {
    if (!a1)
    {
      result = 2353012744;
      goto LABEL_15;
    }

    if (*(a1 + 2) > *a4)
    {
      *a4 = 0;
      *a7 = 0;
      result = 2353012745;
      goto LABEL_15;
    }

    v20 = (a5 + 608);
    v21 = a1 + 76;
    ReadStream_CheckWhatModeFirst((a1 + 76), a1 + 65, a3, *a1, *(a1 + 2), a1 + 1, v106, (a1 + 1070), a1 + 3, a1 + 2, a1 + 6, 0, *(a1 + 2506), a10);
    smc1175mrf22_ReadStream(a3, a1[4], (a5 + 608), a1[6], a1 + 1070);
    v22 = 0;
    v23 = *(a1 + 1);
    *a4 = *(a1 + 2);
    __dst = a6;
    if (v23 <= 16)
    {
      if (v23 == 15)
      {
        v20 = (a5 + 612);
        v22 = 1;
      }

      else if (v23 == 16)
      {
        v22 = 0;
        v20 = (a5 + 616);
      }
    }

    else
    {
      switch(v23)
      {
        case 17:
          v22 = 0;
          v20 = (a5 + 620);
          break;
        case 18:
          v22 = 0;
          v20 = (a5 + 640);
          break;
        case 23:
          v22 = 0;
          v20 = (a5 + 644);
          break;
      }
    }

    if (a11)
    {
      fxd_MultiStageVectorDecodeLsp__32BIT(a8, *&v21[2 * a9], &a1[16 * a9 + 82], *&a1[4 * a9 + 180], 16, &a1[20 * a9 + 16], v108);
      v24 = *(a1 + 7);
      fxd_OrderCheckLsp__S32(v108, 16);
      fxd_MultiStageVectorDecodeLsp__32BIT(v20, *&v21[2 * v22], &a1[16 * v22 + 82], *&a1[4 * v22 + 180], 16, &a1[20 * v22 + 16], (a5 + 1340));
      v25 = *(a1 + 7);
      fxd_OrderCheckLsp__S32((a5 + 1340), 16);
    }

    v26 = *&v21[2 * v22];
    v104 = 0;
    if (a10 < 1)
    {
LABEL_143:
      LH_S32ToLH_S32((a5 + 1340), a1 + 1036, 0x10u);
      LH_S16ToLH_S16(a1 + 520, a1 + 200, *(a1 + 5));
      FillZeroLH_S16(&a1[*(a1 + 5) + 200], 0x140u);
      result = 0;
      ++*(a1 + 534);
      goto LABEL_15;
    }

    v103 = 0;
    v27 = 0;
    v28 = &v20[v26];
    v97 = (a1 + 917);
    v99 = a1 + 982;
    v29 = (a1 + 969);
    while (1)
    {
      v30 = 80 * v27;
      v31 = v106 + v27;
      v100 = v27;
      if (a12)
      {
        v98 = v106 + v27;
        v32 = v28;
        smc1175mrf22_DecodeLag_11_22(*v28, v27, *(a1 + 1), &v105, &v104);
        smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 49) + 160 * v27), v105, 80);
        v33 = 0;
        a1[995] = smc1175mrf22_fxd_qgp[v32[1]];
        v34 = *(a1 + 49) + v103;
        do
        {
          v35 = (2 * *(v34 + v33) * a1[995] + 0x4000) >> 15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            LOWORD(v35) = 0x7FFF;
          }

          *(v34 + v33) = v35;
          v33 += 2;
        }

        while (v33 != 160);
        smc1175mrf22_fxd_DecodWFSet1_5p(a5, v109, 80, v32[2], v32[3]);
        v36 = v105;
        if (v105 > 79)
        {
          v44 = smc1175mrf22_fxd_DecodeCodeGain(v32[4], a5, 5, v97, 80);
          v45 = 0;
          a1[982] = v44;
          a1[969] = v44;
          v46 = *(a1 + 49);
          do
          {
            *(v46 + 2 * (v109[v45] + v30)) += (2 * *(a5 + 2 * v109[v45]) * *v29 + 0x8000) >> 16;
            ++v45;
          }

          while (v45 != 5);
        }

        else
        {
          v37 = 0;
          do
          {
            v38 = (2 * *(a5 + v37) * a1[996] + 0x4000) >> 15;
            if (v38 <= -32768)
            {
              v38 = -32768;
            }

            if (v38 >= 0x7FFF)
            {
              LOWORD(v38) = 0x7FFF;
            }

            *(a5 + 2 * v36++) += v38;
            v37 += 2;
          }

          while (v36 != 80);
          v39 = smc1175mrf22_fxd_DecodeCodeGain(v32[4], a5, 0, v97, 80);
          v40 = 0;
          a1[982] = v39;
          a1[969] = v39;
          v41 = *(a1 + 49) + v103;
          do
          {
            *(v41 + v40) += (2 * *(a5 + v40) * *v29 + 0x8000) >> 16;
            v40 += 2;
          }

          while (v40 != 160);
        }

        if (*v98 > 1)
        {
          v47 = *(a1 + 1);
          smc1175mrf22_fxd_DecodWFSet1_4p(a5, v109, 80, v32[5], v32[6]);
          if (*(a1 + 1) < 23)
          {
            v43 = v32 + 7;
            v48 = v47 > 22;
            v49 = (43690 * v99[v48] + 0x8000) >> 16;
          }

          else
          {
            v48 = v47 > 22;
            LOWORD(v49) = smc1175mrf22_fxd_DecodeCodeGain(v32[7], a5, 4, v97 + 8 * v48, 80);
            v99[v48] = v49;
            v43 = v32 + 8;
          }

          v29[v48] = v49;
          v50 = v105;
          if (v105 > 79)
          {
            v57 = 0;
            v58 = *(a1 + 49);
            do
            {
              *(v58 + 2 * (v109[v57] + v30)) += (2 * *(a5 + 2 * v109[v57]) * v29[v47 > 22] + 0x8000) >> 16;
              ++v57;
            }

            while (v57 != 4);
          }

          else
          {
            v51 = v105 + 1;
            v52 = a5;
            do
            {
              v53 = (2 * *v52 * a1[996] + 0x4000) >> 15;
              if (v53 <= -32768)
              {
                v53 = -32768;
              }

              if (v53 >= 0x7FFF)
              {
                LOWORD(v53) = 0x7FFF;
              }

              v52[v50] += v53;
              ++v52;
              v54 = v51++ == 80;
            }

            while (!v54);
            v55 = 0;
            v56 = *(a1 + 49) + v103;
            do
            {
              *(v56 + v55) += (2 * *(a5 + v55) * v29[v47 > 22] + 0x8000) >> 16;
              v55 += 2;
            }

            while (v55 != 160);
          }

          if (*v98 <= 2)
          {
            goto LABEL_137;
          }

          v59 = 2 * (*(a1 + 1) > 22);
          v60 = v43;
          smc1175mrf22_fxd_DecodWFSet1_4p(a5, v109, 80, *v43, v43[1]);
          if (*(a1 + 1) < 23)
          {
            v43 = v60 + 2;
            v61 = ((v99[v59] << 15) + 0x8000) >> 16;
          }

          else
          {
            LOWORD(v61) = smc1175mrf22_fxd_DecodeCodeGain(v60[2], a5, 4, v97 + 8 * v59, 80);
            v99[v59] = v61;
            v43 = v60 + 3;
          }

          v29[v59] = v61;
          v62 = v105;
          if (v105 > 79)
          {
            v68 = 0;
            v69 = *(a1 + 49);
            do
            {
              *(v69 + 2 * (v109[v68] + v30)) += (2 * *(a5 + 2 * v109[v68]) * v29[v59] + 0x8000) >> 16;
              ++v68;
            }

            while (v68 != 4);
          }

          else
          {
            v63 = v105 + 1;
            v64 = a5;
            do
            {
              v65 = (2 * *v64 * a1[996] + 0x4000) >> 15;
              if (v65 <= -32768)
              {
                v65 = -32768;
              }

              if (v65 >= 0x7FFF)
              {
                LOWORD(v65) = 0x7FFF;
              }

              v64[v62] += v65;
              ++v64;
              v54 = v63++ == 80;
            }

            while (!v54);
            v66 = 0;
            v67 = *(a1 + 49) + v103;
            do
            {
              *(v67 + v66) += (2 * *(a5 + v66) * v29[v59] + 0x8000) >> 16;
              v66 += 2;
            }

            while (v66 != 160);
          }

          if (*v98 <= 3)
          {
            goto LABEL_137;
          }

          if (*(a1 + 1) <= 22)
          {
            v70 = 0;
          }

          else
          {
            v70 = 3;
          }

          v71 = v43;
          smc1175mrf22_fxd_DecodWFSet1_5p(a5, v109, 80, *v43, v43[1]);
          if (*(a1 + 1) < 23)
          {
            v43 = v71 + 2;
            v72 = (26214 * v99[v70] + 0x8000) >> 16;
          }

          else
          {
            LOWORD(v72) = smc1175mrf22_fxd_DecodeCodeGain(v71[2], a5, 5, v97 + 8 * v70, 80);
            v99[v70] = v72;
            v43 = v71 + 3;
          }

          v29[v70] = v72;
          v73 = v105;
          v31 = v98;
          if (v105 > 79)
          {
            v79 = 0;
            v80 = *(a1 + 49);
            do
            {
              *(v80 + 2 * (v109[v79] + v30)) += (2 * *(a5 + 2 * v109[v79]) * v29[v70] + 0x8000) >> 16;
              ++v79;
            }

            while (v79 != 5);
          }

          else
          {
            v74 = v105 + 1;
            v75 = a5;
            do
            {
              v76 = (2 * *v75 * a1[996] + 0x4000) >> 15;
              if (v76 <= -32768)
              {
                v76 = -32768;
              }

              if (v76 >= 0x7FFF)
              {
                LOWORD(v76) = 0x7FFF;
              }

              v75[v73] += v76;
              ++v75;
              v54 = v74++ == 80;
            }

            while (!v54);
            v77 = 0;
            v78 = *(a1 + 49) + v103;
            do
            {
              *(v78 + v77) += (2 * *(a5 + v77) * v29[v70] + 0x8000) >> 16;
              v77 += 2;
            }

            while (v77 != 160);
          }

          goto LABEL_113;
        }

        v43 = v32 + 5;
      }

      else
      {
        v42 = *v31;
        if (*v31 <= 1)
        {
          v43 = v28 + 5;
        }

        else if (v42 == 2)
        {
          v43 = v28 + 8;
        }

        else
        {
          if (v42 != 3)
          {
            v43 = v28 + 14;
LABEL_113:
            if (*v31 >= 5)
            {
              v81 = 4;
              do
              {
                if (*(a1 + 1) <= 22)
                {
                  v82 = 0;
                }

                else
                {
                  v82 = v81;
                }

                if (a12)
                {
                  v83 = v43;
                  smc1175mrf22_fxd_DecodWFSet1_5p(a5, v109, 80, *v43, v43[1]);
                  if (*(a1 + 1) < 23)
                  {
                    v43 = v83 + 2;
                    v84 = (21846 * v99[v82] + 0x8000) >> 16;
                  }

                  else
                  {
                    LOWORD(v84) = smc1175mrf22_fxd_DecodeCodeGain(v83[2], a5, 5, v97 + 8 * v82, 80);
                    v99[v82] = v84;
                    v43 = v83 + 3;
                  }

                  v29[v82] = v84;
                  v85 = v105;
                  if (v105 > 79)
                  {
                    v91 = 0;
                    v92 = *(a1 + 49);
                    do
                    {
                      *(v92 + 2 * (v109[v91] + v30)) += (2 * *(a5 + 2 * v109[v91]) * v29[v82] + 0x8000) >> 16;
                      ++v91;
                    }

                    while (v91 != 5);
                  }

                  else
                  {
                    v86 = v105 + 1;
                    v87 = a5;
                    do
                    {
                      v88 = (2 * *v87 * a1[996] + 0x4000) >> 15;
                      if (v88 <= -32768)
                      {
                        v88 = -32768;
                      }

                      if (v88 >= 0x7FFF)
                      {
                        LOWORD(v88) = 0x7FFF;
                      }

                      v87[v85] += v88;
                      ++v87;
                      v54 = v86++ == 80;
                    }

                    while (!v54);
                    v89 = 0;
                    v90 = *(a1 + 49) + v103;
                    do
                    {
                      *(v90 + v89) += (2 * *(a5 + v89) * v29[v82] + 0x8000) >> 16;
                      v89 += 2;
                    }

                    while (v89 != 160);
                  }
                }

                else
                {
                  v43 += 3;
                }

                ++v81;
              }

              while (v81 < *v31);
            }

            goto LABEL_137;
          }

          v43 = v28 + 11;
        }
      }

LABEL_137:
      v93 = v43;
      a1[996] = a1[995];
      v94 = *(a1 + 49);
      if (v100 > 1)
      {
        v95 = a5 + 1340;
        v96 = v108;
      }

      else
      {
        v95 = (a1 + 1036);
        v96 = (a5 + 1340);
      }

      fxd_InterpolateVectors_32BIT(v95, v96, v107, s32prev[v100], 16);
      if (a11)
      {
        fxd_LspToCosLsp__32BITX(v107, v107, 16);
        fxd_HighPrecisionCosLspToAi__32BIT(v107, (a5 + 544), 16);
        fxd_HighPrecisionExpandLpcBandwidth(a5 + 544, (a5 + 544), 32505, 16, 0);
        FillZeroLH_S32(a5, 0x60u);
        LH_S32ToLH_S32(a1 + 1004, a5, 0x10u);
        fxd_HighPrecisionFastSynthesisFilter(v94 + 2 * v30, (a5 + 384), 80, 0, (a5 + 544), 0x10u, 28, a5, 14);
        LH_S32ToLH_S32((a5 + 320), a1 + 1004, 0x10u);
      }

      LH_S16ToLH_S16((a5 + 384), __dst, 0x50u);
      __dst += 160;
      *a7 += 160;
      v27 = v100 + 1;
      v103 += 160;
      v28 = v93;
      if (v100 + 1 == a10)
      {
        goto LABEL_143;
      }
    }
  }

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t smc1175mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 65732, 2512);
  if (a1)
  {
    v4 = result;
  }

  else
  {
    v4 = -1941954552;
  }

  if (result >= 0)
  {
    return v4;
  }

  else
  {
    return result;
  }
}

void smc1175mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C3828820[a5 & 0xF];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C38288E0[a5 >> 4] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C38288E0[(a5 >> 8) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C38288E0[a5 >> 12] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
  v18 = (dword_1C38288E0[HIWORD(a5) & 0xF] + v16) % a3;
  if ((a4 & 0x10) != 0)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = -8192;
  }

  *(a1 + v18) = v19;
  a2[4] = v18;
}

void smc1175mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C3828860[a5 & 0x1F];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C38288E0[(a5 >> 5) & 0xF] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C38288E0[(a5 >> 9) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C38288E0[(a5 >> 13) & 0xF] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
}

uint64_t smc1175mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable);
  *a4 = 2 * result;
  return result;
}

uint64_t smc1175mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc1175mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc1175mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc1175mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc1175mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable) + v7);
  return v9;
}

_WORD *smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22(_WORD *result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = result;
    v5 = 0xFFFFFFFF00000000 * a2;
    do
    {
      *v4++ = *(result + (v5 >> 31));
      v5 += 0x100000000;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t smc1175mrf22_DecodeLag_11_22(uint64_t result, char a2, unsigned int a3, int *a4, _DWORD *a5)
{
  if (a2)
  {
    if (a3 >= 0x17)
    {
      v6 = 6;
    }

    else
    {
      v6 = 4;
    }

    if (a3 <= 0x1D)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4;
    }

    if (a3 >= 0xF)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    if (a3 >= 0xC)
    {
      v9 = v8;
    }

    else
    {
      v9 = 4;
    }

    if (a3 >= 9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3;
    }

    v5 = result + (-1 << v10) + *a5 + 1;
  }

  else if (a3 > 5)
  {
    if (a3 > 0xB)
    {
      if (a3 >= 0x1E)
      {
        v5 = *a4;
        goto LABEL_21;
      }

      v5 = result + 54;
    }

    else
    {
      v5 = result + 40;
    }
  }

  else
  {
    v5 = result + 30;
  }

  *a4 = v5;
LABEL_21:
  *a5 = v5;
  return result;
}

uint64_t SearchNextMarkerOfRTCSubType(uint64_t result, unsigned int a2, int *a3, unsigned int a4, unsigned int *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a5;
  v8 = *a6;
  if (*a5 >= a2)
  {
    v15 = 0;
  }

  else
  {
    do
    {
      if (a4)
      {
        v9 = (result + 32 * v7);
        v10 = a3;
        v11 = a4;
        while (1)
        {
          v12 = *v10++;
          if (v12 == *v9)
          {
            break;
          }

          if (!--v11)
          {
            goto LABEL_6;
          }
        }

        v14 = v9[3];
        if (v8 == -1)
        {
          v13 = v14 != 0;
        }

        else
        {
          v13 = v14 > *(result + 32 * v8 + 12);
        }

        if (!v13)
        {
          v8 = v7;
        }
      }

      else
      {
LABEL_6:
        v13 = 0;
      }

      v7 += !v13;
      v15 = v7 < a2;
    }

    while (v7 < a2 && !v13);
  }

  *a7 = 0;
  if (v8 < a2 && a4)
  {
    v16 = a4;
    while (1)
    {
      v17 = *a3++;
      if (v17 == *(result + 32 * v8))
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_23;
      }
    }

    *a7 = 1;
  }

LABEL_23:
  *a5 = v7;
  if (!v15 || *a7 != 0)
  {
    v7 = v8;
  }

  *a6 = v7;
  return result;
}

uint64_t SearchNextMarker(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, _DWORD *a5, _DWORD *a6, int *a7)
{
  v7 = 0;
  if (a2 && a4)
  {
    v8 = *a5;
    LODWORD(v9) = *a6;
    if (v8 >= a2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v11 = *a6;
      while (2)
      {
        v9 = v11;
        v12 = (a1 + 32 * v8);
        v13 = *v12;
        v14 = a3;
        v15 = a4;
        while (1)
        {
          v16 = *v14++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v15)
          {
            v11 = v9;
            goto LABEL_15;
          }
        }

        v17 = v12[3];
        if (v9 == -1)
        {
          if (v17)
          {
            v21 = 0;
            LODWORD(v9) = -1;
            goto LABEL_24;
          }

          v11 = v8;
        }

        else
        {
          v18 = (a1 + 32 * v9);
          if (v17 >= v18[3])
          {
            goto LABEL_18;
          }

          v11 = v8;
          if (v13 != *v18)
          {
            goto LABEL_18;
          }
        }

LABEL_15:
        v10 = ++v8 >= a2;
        if (v8 != a2)
        {
          continue;
        }

        break;
      }

      LODWORD(v8) = a2;
      LODWORD(v9) = v11;
    }

LABEL_18:
    *a7 = 0;
    if (v9 < a2)
    {
      v19 = a4;
      while (1)
      {
        v20 = *a3++;
        if (v20 == *(a1 + 32 * v9))
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_25;
        }
      }

      v21 = 1;
LABEL_24:
      *a7 = v21;
    }

LABEL_25:
    *a5 = v8;
    if (v10 || *a7 != 0)
    {
      LODWORD(v8) = v9;
    }

    *a6 = v8;
    v7 = *a7;
    if (v7)
    {
      return *(a1 + 32 * v9);
    }
  }

  return v7;
}

uint64_t Lookup_CheckForDataFile(_WORD *a1, uint64_t a2, const char *a3, _DWORD *a4)
{
  v21 = 0;
  v22 = 0;
  *a4 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = ssftriff_reader_ObjOpen(a1, a2, 2, a3, "VFNT", 1031, &v21);
  if ((v9 & 0x1FFF) > 0x14 || ((1 << v9) & 0x102010) == 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  v19 = v21;
  if ((v18 & 0x80000000) == 0 && v21)
  {
    *a4 = 1;
LABEL_13:
    ssftriff_reader_ObjClose(v19, v10, v11, v12, v13, v14, v15, v16);
    return v18;
  }

  if (v21)
  {
    goto LABEL_13;
  }

  return v18;
}

uint64_t Lookup_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v21 = 0;
  v22 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v11 = 2164269066;
  *a5 = 0;
  v12 = heap_Calloc(*(v22 + 8), 1, 128);
  if (v12)
  {
    v13 = v12;
    v14 = v22;
    *v12 = v22;
    v12[1] = a3;
    if (!a3 || (v15 = *(a3 + 48)) == 0)
    {
      v15 = *(v14 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v15, a4, Lookup_ObjcVoiceOpen, Lookup_ObjcVoiceClose, v14, &v21);
    if ((AddRefCountedObject & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    v13[2] = *(v21 + 32);
    AddRefCountedObject = brk_DataOpen(*(v22 + 24));
    if ((AddRefCountedObject & 0x80000000) != 0 || (AddRefCountedObject = brk_DataOpen(*(v22 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v22 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v22 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (AddRefCountedObject = brk_DataOpen(*(v22 + 24)), (AddRefCountedObject & 0x80000000) != 0) || (v17 = v13[2], AddRefCountedObject = brk_InterfaceQuery(*(v22 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
LABEL_16:
      v11 = AddRefCountedObject;
    }

    else
    {
      v18 = (*(v13[5] + 32))(a1, a2, *(v13[2] + 336), *(v13[2] + 344), v13 + 3);
      v19 = heap_Alloc(*(*v13 + 8), 44100);
      v13[9] = v19;
      if (v19)
      {
        v13[10] = 22050;
        *(v13 + 22) = 0;
        v11 = v18;
        if ((v18 & 0x80000000) == 0)
        {
          v11 = v18;
LABEL_18:
          *a5 = v13;
          return v11;
        }
      }
    }

    *a5 = v13;
    Lookup_ObjClose(a5);
    v13 = 0;
    goto LABEL_18;
  }

  return v11;
}

uint64_t Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  *v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  memset(__n, 0, sizeof(__n));
  inited = InitRsrcFunction(a1, a2, &v42);
  if ((inited & 0x80000000) != 0)
  {
    v9 = inited;
  }

  else
  {
    v9 = 2164269066;
    v10 = heap_Calloc(*(v42 + 8), 1, 592);
    if (v10)
    {
      v11 = v10;
      __strcpy_chk();
      *(v11 + 352) = 0;
      *(v11 + 528) = 0;
      *(v11 + 440) = 0x2800000014;
      *(v11 + 448) = 40;
      ChunkData = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "VFNT", 1031, v41);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_81;
      }

      for (i = ssftriff_reader_OpenChunk(*v41, &v39, __n, 0, v16, v17, v18, v19); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v41, &v39, __n, 0, v16, v17, v18, v19))
      {
        if (v39 ^ 0x464E4956 | v40)
        {
          if (v39 ^ 0x50464656 | v40)
          {
            if (!(v39 ^ 0x52444F43 | v40))
            {
              ChunkData = ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
              if ((ChunkData & 0x80000000) != 0)
              {
                goto LABEL_81;
              }

              v28 = heap_Alloc(*(v42 + 8), __n[0]);
              *(v11 + 336) = v28;
              if (!v28)
              {
                goto LABEL_82;
              }

              memcpy(v28, *&__n[1], __n[0]);
              *(v11 + 344) = __n[0];
              goto LABEL_74;
            }

            if (v39 ^ 0x4E555443 | v40)
            {
              if (!(v39 ^ 0x54494E55 | v40))
              {
                v29 = *v41;
                v30 = (v11 + 360);
                v31 = (v11 + 368);
                goto LABEL_59;
              }

              if (v39 ^ 0x31504F55 | v40)
              {
                if (!(v39 ^ 0x32504F55 | v40))
                {
                  __dst = 0;
                  ChunkData = ssftriff_reader_DetachChunkData(*v41, (v11 + 392), &__dst, v15, v16, v17, v18, v19);
                  if ((ChunkData & 0x80000000) != 0)
                  {
                    goto LABEL_81;
                  }

                  v32 = __dst;
                  *(v11 + 400) = *__dst;
                  v33 = *(v32 + 4);
                  *(v11 + 404) = v33;
                  v32 += 8;
                  *(v11 + 408) = v32;
                  *(v11 + 416) = v32 + 4 * v33;
                  goto LABEL_74;
                }

                if (v39 ^ 0x33504F55 | v40)
                {
                  if (!(v39 ^ 0x52415057 | v40))
                  {
                    ChunkData = ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
                    if ((ChunkData & 0x80000000) != 0)
                    {
                      goto LABEL_81;
                    }

                    *(v11 + 440) = **&__n[1];
                    goto LABEL_74;
                  }

                  if (!(v39 ^ 0x52415050 | v40))
                  {
                    ChunkData = ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
                    if ((ChunkData & 0x80000000) != 0)
                    {
                      goto LABEL_81;
                    }

                    v34 = *&__n[1];
                    *(v11 + 444) = **&__n[1];
                    *(v11 + 448) = *(v34 + 4);
                    goto LABEL_74;
                  }

                  if (!(v39 ^ 0x50504D50 | v40))
                  {
                    v29 = *v41;
                    v30 = (v11 + 456);
                    v31 = (v11 + 464);
                    goto LABEL_59;
                  }

                  if (!(v39 ^ 0x4F424D50 | v40))
                  {
                    v29 = *v41;
                    v30 = (v11 + 472);
                    v31 = (v11 + 480);
LABEL_59:
                    ChunkData = ssftriff_reader_DetachChunkData(v29, v30, v31, v15, v16, v17, v18, v19);
                    if ((ChunkData & 0x80000000) != 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_74;
                  }

                  if (v39 ^ 0x4F554D50 | v40)
                  {
                    if (v39 ^ 0x44554D50 | v40)
                    {
                      if (v39 ^ 0x48435053 | v40)
                      {
                        log_OutText(*(v42 + 32), "LOOKUP", 3, 0, "Unknown data: %s for %s", v17, v18, v19, &v39);
                      }

                      else
                      {
                        *(v11 + 520) = ssftriff_reader_GetPosition(*v41);
                        *(v11 + 524) = __n[0];
                      }
                    }

                    else
                    {
                      *(v11 + 516) = ssftriff_reader_GetPosition(*v41);
                    }
                  }

                  else
                  {
                    *(v11 + 512) = ssftriff_reader_GetPosition(*v41);
                  }
                }

                else
                {
                  *(v11 + 508) = ssftriff_reader_GetPosition(*v41);
                  *(v11 + 432) = 1;
                }
              }

              else
              {
                *(v11 + 504) = ssftriff_reader_GetPosition(*v41);
                *(v11 + 384) = 1;
              }
            }

            else
            {
              ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
              *(v11 + 328) = **&__n[1];
            }
          }

          else
          {
            ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
            v27 = heap_Alloc(*(v42 + 8), __n[0]);
            *(v11 + 352) = v27;
            if (!v27)
            {
              goto LABEL_82;
            }

            ssftriff_reader_ReadStringZ(*v41, *&__n[1], __n[0], 0, v27, __n);
          }
        }

        else
        {
          v37 = 0;
          ChunkData = ssftriff_reader_GetChunkData(*v41, __n[0], &__n[1], v15, v16, v17, v18, v19);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_81;
          }

          v21 = __n[0];
          if (__n[0])
          {
            v22 = 0;
            while (1)
            {
              __src[0] = 0;
              LOBYTE(__dst) = 0;
              v37 = 256;
              ChunkData = ssftriff_reader_ReadStringZ(*v41, *&__n[1], v21, v22, &__dst, &v37);
              if ((ChunkData & 0x80000000) == 0)
              {
                v14 = __n[0];
                if (v22 < __n[0])
                {
                  v22 += v37;
                  v37 = 256;
                  ChunkData = ssftriff_reader_ReadStringZ(*v41, *&__n[1], __n[0], v22, __src, &v37);
                }
              }

              if ((ChunkData & 0x80000000) != 0)
              {
                break;
              }

              v23 = v37;
              if (__dst ^ 0x71657246 | BYTE4(__dst))
              {
                if (__dst ^ 0x6465657053677641 | v45)
                {
                  if (__dst == 0x42657A6953727544 && v45 == 7566441)
                  {
                    *(v11 + 324) = LH_atou(__src);
                  }

                  else if (!(__dst ^ 0x44495547 | BYTE4(__dst)) || (__dst == 0x6E656E6F706D6F43 ? (v25 = v45 == 4475252) : (v25 = 0), v25))
                  {
                    strcpy((v11 + 528), __src);
                  }

                  else if (__dst == 1701080899 && WORD2(__dst) == 114)
                  {
                    if (!__src[0])
                    {
                      log_OutText(*(v42 + 32), "LOOKUP", 1, 0, "undefined coder for (Genius) synth data %s: %s", v17, v18, v19, a3);
                      ChunkData = 2164269081;
                      break;
                    }

                    strcpy((v11 + 256), "decoder/");
                    __strcat_chk();
                  }
                }

                else
                {
                  *(v11 + 322) = LH_atou(__src);
                }
              }

              else
              {
                *(v11 + 320) = LH_atou(__src);
              }

              v22 += v23;
              log_OutText(*(v42 + 32), "LOOKUP", 3, 0, "VF attribute %s=%s", v17, v18, v19, &__dst);
              v21 = __n[0];
              if (v22 >= __n[0])
              {
                goto LABEL_74;
              }
            }

LABEL_81:
            v9 = ChunkData;
LABEL_82:
            if (*v41)
            {
              ssftriff_reader_ObjClose(*v41, v13, v14, v15, v16, v17, v18, v19);
            }

            goto LABEL_84;
          }
        }

LABEL_74:
        ChunkData = ssftriff_reader_CloseChunk(*v41);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_81;
        }
      }

      v9 = i;
      if ((i & 0x1FFF) != 0x14)
      {
        goto LABEL_82;
      }

      v9 = ssftriff_reader_ObjClose(*v41, v13, v14, v15, v16, v17, v18, v19);
      *v41 = 0;
      if ((v9 & 0x80000000) != 0)
      {
LABEL_84:
        *(a4 + 32) = v11;
        Lookup_ObjcVoiceClose(a1, a2, a4);
        *(a4 + 32) = 0;
      }

      else
      {
        *(a4 + 32) = v11;
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v22 = 0;
  inited = InitRsrcFunction(a1, a2, &v22);
  if ((inited & 0x80000000) == 0)
  {
    v11 = v3[42];
    if (v11)
    {
      heap_Free(*(v22 + 8), v11);
      v3[42] = 0;
    }

    v12 = v3[44];
    if (v12)
    {
      heap_Free(*(v22 + 8), v12);
      v3[44] = 0;
    }

    v13 = v3[45];
    if (v13)
    {
      inited = ssftriff_reader_ReleaseChunkData(v13, v12, v4, v5, v6, v7, v8, v9);
    }

    v14 = v3[47];
    if (v14)
    {
      inited = ssftriff_reader_ReleaseChunkData(v14, v12, v4, v5, v6, v7, v8, v9);
    }

    v15 = v3[49];
    if (v15)
    {
      inited = ssftriff_reader_ReleaseChunkData(v15, v12, v4, v5, v6, v7, v8, v9);
    }

    v16 = v3[53];
    if (v16)
    {
      inited = ssftriff_reader_ReleaseChunkData(v16, v12, v4, v5, v6, v7, v8, v9);
    }

    v17 = v3[57];
    if (v17)
    {
      inited = ssftriff_reader_ReleaseChunkData(v17, v12, v4, v5, v6, v7, v8, v9);
    }

    v18 = v3[59];
    if (v18)
    {
      inited = ssftriff_reader_ReleaseChunkData(v18, v12, v4, v5, v6, v7, v8, v9);
    }

    v19 = v3[61];
    if (v19)
    {
      inited = ssftriff_reader_ReleaseChunkData(v19, v12, v4, v5, v6, v7, v8, v9);
    }

    v20 = v3[62];
    if (v20)
    {
      inited = ssftriff_reader_ReleaseChunkData(v20, v12, v4, v5, v6, v7, v8, v9);
    }

    heap_Free(*(v22 + 8), v3);
  }

  return inited;
}

uint64_t Lookup_ObjClose(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (v3)
  {
    heap_Free(*(*v2 + 8), v3);
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
  }

  v4 = *(v2 + 40);
  if (v4 && (v5 = *(v2 + 24)) != 0)
  {
    v6 = (*(v4 + 40))(v5, *(v2 + 32));
    if ((v6 & 0x80000000) != 0)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = *(v2 + 8);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = *(*v2 + 48);
    }

    objc_ReleaseObject(v9, v7);
  }

  v10 = *(v2 + 48);
  if (!v10 || (v6 = brk_DataClose(*(*v2 + 24), v10), (v6 & 0x80000000) == 0))
  {
    v11 = *(v2 + 96);
    if (!v11 || (v6 = brk_DataClose(*(*v2 + 24), v11), (v6 & 0x80000000) == 0))
    {
      v12 = *(v2 + 104);
      if (!v12 || (v6 = brk_DataClose(*(*v2 + 24), v12), (v6 & 0x80000000) == 0))
      {
        v13 = *(v2 + 112);
        if (!v13 || (v6 = brk_DataClose(*(*v2 + 24), v13), (v6 & 0x80000000) == 0))
        {
          v14 = *(v2 + 120);
          if (!v14 || (v6 = brk_DataClose(*(*v2 + 24), v14), (v6 & 0x80000000) == 0))
          {
            v15 = *(v2 + 40);
            if (!v15 || (v6 = brk_InterfaceRelease(*(*v2 + 24), v15), (v6 & 0x80000000) == 0))
            {
              heap_Free(*(*v2 + 8), v2);
              *a1 = 0;
            }
          }
        }
      }
    }
  }

  return v6;
}

uint64_t Lookup_Init(uint64_t a1, int a2, int a3)
{
  v10 = a3;
  v11 = a2;
  v9 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), &v11, &v10, 0, &v9 + 4, &v9);
  if ((result & 0x80000000) == 0)
  {
    v5 = v9;
    v6 = *(a1 + 16);
    v7 = *(v6 + 524);
    if (v9 + HIDWORD(v9) > v7)
    {
      v5 = v7 - HIDWORD(v9);
      LODWORD(v9) = v7 - HIDWORD(v9);
    }

    result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(v6 + 520) + HIDWORD(v9)), v5, a1 + 56);
    if ((result & 0x80000000) == 0)
    {
      v8 = v9;
      *(a1 + 64) = 0;
      *(a1 + 68) = v8;
    }
  }

  return result;
}

uint64_t Lookup_Init_II(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), a2, a3, 0, &v6 + 4, &v6);
  if ((result & 0x80000000) == 0)
  {
    if (v6)
    {
      result = brk_DataMap(*(*a1 + 24), *(a1 + 48), (*(*(a1 + 16) + 520) + HIDWORD(v6)), v6, a1 + 56);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 64) = 0;
    *(a1 + 68) = v5;
  }

  return result;
}

uint64_t Lookup_DeInit(uint64_t *a1)
{
  v1 = a1[7];
  if (!v1)
  {
    return 0;
  }

  result = brk_DataUnmap(*(*a1 + 24), a1[6], v1);
  a1[7] = 0;
  return result;
}

uint64_t Lookup_Decode(uint64_t a1, int *a2, uint64_t a3)
{
  if (!*a2)
  {
    return 0;
  }

  result = 2164269063;
  v5 = *(a1 + 56);
  if (!v5)
  {
    return 2164269073;
  }

  if (!(*a2 >> 30))
  {
    v8 = *(a1 + 64);
    v7 = *(a1 + 68);
    v12 = *a2;
    v13 = v7;
    result = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), v5 + v8, &v13, a3, &v12);
    v9 = v13;
    *a2 = v12;
    v10 = *(a1 + 64) + v9;
    v11 = *(a1 + 68) - v9;
    *(a1 + 64) = v10;
    *(a1 + 68) = v11;
  }

  return result;
}

uint64_t Lookup_GetDecodedData(uint64_t a1, unsigned int a2, unsigned int a3, void *__dst)
{
  v8 = *(a1 + 84);
  if (v8 <= a2 && (v9 = *(a1 + 88), v10 = v9 + v8, v9 + v8 >= a2) && (v11 = a3 + a2, *(a1 + 80) + v8 >= a3 + a2) && *(a1 + 56))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = brk_DataUnmap(*(*a1 + 24), *(a1 + 48), v13);
      *(a1 + 56) = 0;
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v15 = *(a1 + 80);
    if (v15 < a3)
    {
      v16 = *(a1 + 72);
      if (v16)
      {
        heap_Free(*(*a1 + 8), v16);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
      }

      v17 = heap_Alloc(*(*a1 + 8), 2 * a3);
      *(a1 + 72) = v17;
      if (!v17)
      {
        return 2164269066;
      }

      *(a1 + 80) = a3;
      v15 = a3;
    }

    *(a1 + 84) = a2;
    *(a1 + 88) = 0;
    v12 = Lookup_Init(a1, a2, v15);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v8 = *(a1 + 84);
    v9 = *(a1 + 88);
    v11 = a3 + a2;
    v10 = v9 + v8;
  }

  v18 = v11 >= v10;
  v19 = v11 - v10;
  if (v19 == 0 || !v18)
  {
    goto LABEL_19;
  }

  v21 = v19;
  v12 = Lookup_Decode(a1, &v21, *(a1 + 72) + 2 * v9);
  if ((v12 & 0x80000000) == 0)
  {
    v8 = *(a1 + 84);
    *(a1 + 88) += v21;
LABEL_19:
    memcpy(__dst, (*(a1 + 72) + 2 * (a2 - v8)), 2 * a3);
  }

  return v12;
}

uint64_t Lookup_GetUnitData(void *a1, unsigned int a2, uint64_t a3)
{
  *a3 = a2;
  v4 = a1[2];
  v5 = *(v4 + 368);
  if (v5)
  {
    v6 = v5 + 8 * a2;
    v7 = *v6;
    *(a3 + 4) = *v6 & 0x7FFFFFFF;
    if (*(v4 + 324) == 32)
    {
      v8 = *(v6 + 4);
    }

    else
    {
      *(a3 + 8) = 0;
      v13 = *(v6 + 5) >> 4;
      *(a3 + 8) = v13;
      v8 = v13 | (16 * *(v6 + 4));
    }

    *(a3 + 8) = v8;
    result = 0;
    *(a3 + 12) = v7 < 0;
    return result;
  }

  if (*(v4 + 384))
  {
    v19 = 0;
    result = brk_DataMap(*(*a1 + 24), a1[12], *(v4 + 504) + 6 * a2, 6, &v19);
    if ((result & 0x80000000) == 0 && v19)
    {
      v11 = *v19;
      *(a3 + 4) = *v19;
      *(a3 + 12) = v11 < 0;
      *(a3 + 4) = v11 & 0x7FFFFFFF;
      v12 = v19;
      *(a3 + 8) = *(v19 + 4);
      return brk_DataUnmap(*(*a1 + 24), a1[12], v12);
    }

    return result;
  }

  v14 = *(v4 + 408);
  if (v14)
  {
    result = 0;
    v15 = *(v4 + 400);
    v16 = *(v4 + 416);
    v17 = *(v14 + 4 * (a2 / v15)) + *(v16 + 2 * a2);
    *(a3 + 4) = v17;
    *(a3 + 8) = *(v14 + 4 * ((a2 + 1) / v15)) - v17 + *(v16 + 2 * (a2 + 1));
LABEL_13:
    *(a3 + 12) = 0;
    return result;
  }

  if (!*(v4 + 432))
  {
    return 0;
  }

  v19 = 0;
  result = brk_DataMap(*(*a1 + 24), a1[13], *(v4 + 508) + 4 * a2, 4, &v19);
  if ((result & 0x80000000) == 0)
  {
    v18 = v19;
    *(a3 + 4) = *v19;
    result = brk_DataUnmap(*(*a1 + 24), a1[13], v18);
    if ((result & 0x80000000) == 0)
    {
      *(a3 + 8) = 0;
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t Lookup_Freq(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 320);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_AvgSpeed(uint64_t a1, _WORD *a2)
{
  v2 = *(*(a1 + 16) + 322);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_NrUnits(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 328);
  *a2 = v2;
  if (v2)
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t Lookup_Fingerprint(uint64_t a1, char *a2, unsigned int a3)
{
  v5 = 2164269057;
  v6 = *(a1 + 16);
  v7 = *(v6 + 352);
  if (v7)
  {
    if (strlen(*(v6 + 352)) >= a3)
    {
      v5 = 2164269057;
    }

    else
    {
      v5 = 0;
    }

    strncpy(a2, v7, a3);
  }

  else
  {
    v9 = *(v6 + 328);
    if (IsThisUrlOrRealPath(*(a1 + 16), 0))
    {
      if (SplitpathOrUrl(v6, 0, 0, 0, a2, 0))
      {
        for (i = a2; ; ++i)
        {
          if (*i == 95)
          {
            *i = 47;
          }

          else if (!*i)
          {
            goto LABEL_19;
          }
        }
      }

      return 2164269063;
    }

    else
    {
      v11 = strchr(v6, 58);
      if (v11)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = v6;
      }

      strncpy(a2, v12, a3);
LABEL_19:
      LODWORD(v13) = strlen(a2);
      v14 = v13 < a3;
      if (v13 < a3 && v9)
      {
        v13 = v13;
        do
        {
          a2[v13++] = (v9 % 0xA) | 0x30;
          v14 = v13 < a3;
          if (v13 >= a3)
          {
            break;
          }

          v15 = v9 > 9;
          v9 /= 0xAu;
        }

        while (v15);
      }

      if (v14)
      {
        v5 = 0;
        a2[v13] = 0;
      }
    }
  }

  return v5;
}

uint64_t Lookup_GetComponentID(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 2164269074;
  }

  result = 0;
  *a2 = *(a1 + 16) + 528;
  return result;
}

uint64_t Lookup_HasSupportForWsola(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 16) + 440);
  if (!v2)
  {
    return 0;
  }

  *a2 = v2;
  return 1;
}

uint64_t Lookup_HasSupportForPsola(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3 && *(v3 + 464))
    {
      *a2 = *(v3 + 444);
      *a3 = *(v3 + 448);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1[2] + 464))
  {
    return 2164269076;
  }

  v29 = 0;
  v28 = 0;
  *a3 = 0;
  v6 = a3 + 8;
  writeToPeriVec(a3 + 8, 0, 0);
  v7 = a1[2];
  v8 = *(*(v7 + 464) + 52);
  if (v8)
  {
    v30 = v8 * (a2 >> 10);
    unpackU32(&v29, *(v7 + 480), &v30, v8);
  }

  else
  {
    v29 = 0;
  }

  if ((a2 & 0x3FF) != 0)
  {
    v10 = a1[2];
    v11 = *(*(v10 + 464) + 56);
    v30 = v11 * (a2 - 1);
    v12 = unpackU32_Offline(&v28 + 1, *(v10 + 512), *(*a1 + 24), a1[14], &v30, v11);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
  }

  else
  {
    HIDWORD(v28) = 0;
    v13 = a1[2];
    v14 = *(*(v13 + 464) + 56);
    v30 = v14 * a2;
  }

  v9 = unpackU32_Offline(&v28, *(v13 + 512), *(*a1 + 24), a1[14], &v30, v14);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v15 = v28 - HIDWORD(v28);
  if (v28 == HIDWORD(v28))
  {
    return v9;
  }

  v27 = 0;
  v12 = brk_DataMap(*(*a1 + 24), a1[15], (*(a1[2] + 516) + HIDWORD(v28) + v29), (v28 - HIDWORD(v28)), &v27);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v16 = v27;
  v17 = *(a1[2] + 464);
  v32 = 0;
  v33 = 0;
  v31 = 0;
  LODWORD(v25) = 0;
  unpackU32(&v31, v27, &v25, v17[5]);
  writeToPeriVec(v6, 0, v17[4] + v31);
  v18 = v17[7];
  if (v18)
  {
    unpackU32(&v31, v16, &v25, v18);
    v19 = v17[6] + v31;
  }

  else
  {
    LOWORD(v19) = 0;
  }

  *a3 = v19;
  v21 = v17[12];
  if (v15 <= (v25 + v21 + v17[11] - 1) >> 3)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    do
    {
      unpackU32(&v32 + 1, v16, &v25, v21);
      unpackU32(&v33 + 1, v16, &v25, v17[11]);
      for (; HIDWORD(v32); --HIDWORD(v32))
      {
        writeToPeriVec(a3 + 56, v22, SWORD2(v33));
        if (v22)
        {
          writeToPeriVec(v6, v22, *(*(a3 + 16) + 2 * v22 - 2) + v23);
        }

        unpackU32(&v33, v16, &v25, 1u);
        if (v33)
        {
          if (v17[10] && (unpackU32(&v33, v16, &v25, 1u), !v33))
          {
            unpackS32(&v31 + 1, v16, &v25, v17[10]);
            LOWORD(v24) = v23 + WORD2(v31);
          }

          else
          {
            unpackU32(&v32, v16, &v25, v17[9]);
            v24 = v17[8] + v32;
          }

          writeToPeriVec(a3 + 32, v22, v24);
          v23 = *(*(a3 + 40) + 2 * v22);
        }

        else
        {
          writeToPeriVec(a3 + 32, v22, v23);
        }

        ++v22;
      }

      v21 = v17[12];
    }

    while (v15 > (v25 + v21 + v17[11] - 1) >> 3);
  }

  *(a3 + 2) = v22;
  v9 = brk_DataUnmap(*(*a1 + 24), a1[15], v27);
  if ((v9 & 0x80000000) == 0 && !*(*(a1[2] + 464) + 28))
  {
    v25 = 0;
    v26 = 0;
    Lookup_GetUnitData(a1, a2, &v25);
    *a3 = v26;
  }

  return v9;
}

uint64_t writeToPeriVec(uint64_t a1, unsigned int a2, __int16 a3)
{
  v6 = *(a1 + 16);
  if (v6 <= a2)
  {
    result = heap_Realloc(*(*a1 + 8), *(a1 + 8), 2 * v6 + 300);
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = result;
    *(a1 + 16) += 150;
  }

  else
  {
    result = *(a1 + 8);
  }

  *(result + 2 * a2) = a3;
  return result;
}

uint64_t lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &ILookup_0;
  return result;
}

uint64_t Pmk_Lookup_ObjOpen(_WORD *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = 0;
  v17 = 0;
  inited = InitRsrcFunction(a1, a2, &v17);
  if ((inited & 0x80000000) == 0)
  {
    *a5 = 0;
    v9 = heap_Calloc(*(v17 + 8), 1, 40);
    if (!v9)
    {
      return 2164269066;
    }

    v10 = v9;
    v11 = v17;
    *v9 = v17;
    v9[1] = a3;
    if (!a3 || (v12 = *(a3 + 48)) == 0)
    {
      v12 = *(v11 + 48);
    }

    AddRefCountedObject = objc_GetAddRefCountedObject(v12, a4, Pmk_Lookup_ObjcVoiceOpen, Pmk_Lookup_ObjcVoiceClose, v11, &v16);
    if ((AddRefCountedObject & 0x80000000) != 0 || (v10[2] = *(v16 + 32), AddRefCountedObject = brk_DataOpen(*(v17 + 24)), (AddRefCountedObject & 0x80000000) != 0))
    {
      v14 = AddRefCountedObject;
    }

    else
    {
      v14 = brk_DataOpen(*(v17 + 24));
      if ((v14 & 0x80000000) == 0)
      {
LABEL_13:
        *a5 = v10;
        return v14;
      }
    }

    *a5 = v10;
    Pmk_Lookup_ObjClose(a5);
    v10 = 0;
    goto LABEL_13;
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjcVoiceOpen(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  *v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  *v36 = 0;
  v35 = 0;
  inited = InitRsrcFunction(a1, a2, &v40);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v9 = heap_Calloc(*(v40 + 8), 1, 336);
  if (!v9)
  {
    return 2164269066;
  }

  v10 = v9;
  if (strlen(a3) > 0xFF)
  {
    return 2164269065;
  }

  strncpy(v10, a3, 0xFFuLL);
  *(v10 + 264) = 0;
  *(v10 + 312) = 0;
  *(v10 + 320) = 0;
  *(v10 + 304) = 0;
  *(v10 + 328) = -1;
  *(v10 + 330) = -1;
  v11 = ssftriff_reader_ObjOpen(a1, a2, 0, a3, "PIMK", 1031, v39);
  v19 = *v39;
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_52;
  }

  for (i = ssftriff_reader_OpenChunk(*v39, &v37, &v35, 0, v15, v16, v17, v18); (i & 0x80000000) == 0; i = ssftriff_reader_OpenChunk(*v39, &v37, &v35, 0, v15, v16, v17, v18))
  {
    if (v37 ^ 0x484B4D50 | v38)
    {
      if (!(v37 ^ 0x464B4D50 | v38))
      {
        ssftriff_reader_GetChunkData(*v39, v35, v36, v14, v15, v16, v17, v18);
        v23 = heap_Alloc(*(v40 + 8), v35);
        *(v10 + 320) = v23;
        if (!v23)
        {
          return 2164269066;
        }

LABEL_22:
        ssftriff_reader_ReadStringZ(*v39, *v36, v35, 0, v23, &v35);
        goto LABEL_23;
      }

      if (!(v37 ^ 0x504B4D50 | v38))
      {
        ssftriff_reader_GetChunkData(*v39, v35, v36, v14, v15, v16, v17, v18);
        v23 = heap_Alloc(*(v40 + 8), v35);
        *(v10 + 312) = v23;
        if (!v23)
        {
          return 2164269066;
        }

        goto LABEL_22;
      }

      if (v37 ^ 0x44464D50 | v38)
      {
        if (v37 ^ 0x50504D50 | v38)
        {
          if (v37 ^ 0x4F424D50 | v38)
          {
            if (v37 ^ 0x4F554D50 | v38)
            {
              if (!(v37 ^ 0x44554D50 | v38))
              {
                *(v10 + 296) = ssftriff_reader_GetPosition(*v39);
              }
            }

            else
            {
              *(v10 + 300) = ssftriff_reader_GetPosition(*v39);
            }
          }

          else
          {
            ChunkData = ssftriff_reader_DetachChunkData(*v39, (v10 + 272), (v10 + 280), v14, v15, v16, v17, v18);
            if ((ChunkData & 0x80000000) != 0)
            {
LABEL_50:
              v11 = ChunkData;
              goto LABEL_51;
            }
          }
        }

        else
        {
          ChunkData = ssftriff_reader_GetChunkData(*v39, v35, v36, v14, v15, v16, v17, v18);
          if ((ChunkData & 0x80000000) != 0)
          {
            goto LABEL_50;
          }

          v27 = heap_Alloc(*(v40 + 8), 60);
          *(v10 + 264) = v27;
          if (!v27)
          {
            return 2164269066;
          }

          v28 = *(v10 + 328);
          if (v28 > 3)
          {
            v11 = 2164269081;
LABEL_51:
            v19 = *v39;
LABEL_52:
            if (v19)
            {
              ssftriff_reader_ObjClose(v19, v12, v13, v14, v15, v16, v17, v18);
            }

LABEL_54:
            *(a4 + 32) = v10;
            Pmk_Lookup_ObjcVoiceClose(a1, a2, a4);
            *(a4 + 32) = 0;
            return v11;
          }

          v29 = *v36;
          v30 = (*v36 + 4);
          *(v10 + 260) = **v36;
          if (v28 == 1 && !*(v10 + 329) && !*(v10 + 330))
          {
            v27[1] = v29[1];
            *v27 = v29[2];
            v27[3] = v29[3];
            v27[2] = v29[4];
            v30 = v29 + 5;
          }

          v27[5] = *v30;
          v27[4] = v30[1];
          v27[7] = v30[2];
          v27[6] = v30[3];
          v27[9] = v30[4];
          v27[8] = v30[5];
          v27[10] = v30[6];
          v27[11] = v30[7];
          v27[12] = v30[8];
          v27[13] = v30[9];
          v27[14] = v30[10];
        }
      }

      else
      {
        ChunkData = ssftriff_reader_GetChunkData(*v39, v35, v36, v14, v15, v16, v17, v18);
        if ((ChunkData & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v24 = heap_Calloc(*(v40 + 8), 9, 2);
        *(v10 + 304) = v24;
        if (!v24)
        {
          return 2164269066;
        }

        v25 = 0;
        v26 = *v36;
        do
        {
          *(v24 + v25) = *(v26 + v25);
          v25 += 2;
        }

        while (v25 != 18);
      }
    }

    else
    {
      ChunkData = ssftriff_reader_GetChunkData(*v39, v35, v36, v14, v15, v16, v17, v18);
      if ((ChunkData & 0x80000000) != 0)
      {
        goto LABEL_50;
      }

      v22 = *v36;
      *(v10 + 328) = **v36;
      *(v10 + 329) = v22[1];
      *(v10 + 330) = v22[2];
      *(v10 + 256) = v22[3];
      *(v10 + 257) = v22[4];
      *(v10 + 258) = v22[5];
      *(v10 + 259) = v22[6];
    }

LABEL_23:
    ChunkData = ssftriff_reader_CloseChunk(*v39);
    if ((ChunkData & 0x80000000) != 0)
    {
      goto LABEL_50;
    }
  }

  v11 = i;
  v31 = i & 0x1FFF;
  v19 = *v39;
  if (v31 != 20)
  {
    goto LABEL_52;
  }

  v32 = ssftriff_reader_ObjClose(*v39, v12, v13, v14, v15, v16, v17, v18);
  v11 = v32;
  *v39 = 0;
  if ((v32 & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  if (*(v10 + 264))
  {
    v33 = v32;
  }

  else
  {
    v33 = 2164269081;
  }

  if ((v33 & 0x80000000) != 0)
  {
    v11 = v33;
    goto LABEL_54;
  }

  *(a4 + 32) = v10;
  return v11;
}

uint64_t Pmk_Lookup_ObjcVoiceClose(_WORD *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v19 = 0;
  inited = InitRsrcFunction(a1, a2, &v19);
  if ((inited & 0x80000000) == 0)
  {
    v12 = v3[34];
    if (v12)
    {
      inited = ssftriff_reader_ReleaseChunkData(v12, v4, v5, v6, v7, v8, v9, v10);
    }

    v13 = v3[36];
    if (v13)
    {
      inited = ssftriff_reader_ReleaseChunkData(v13, v4, v5, v6, v7, v8, v9, v10);
    }

    v14 = v3[40];
    if (v14)
    {
      heap_Free(*(v19 + 8), v14);
    }

    v15 = v3[39];
    if (v15)
    {
      heap_Free(*(v19 + 8), v15);
    }

    v16 = v3[38];
    if (v16)
    {
      heap_Free(*(v19 + 8), v16);
    }

    v17 = v3[33];
    if (v17)
    {
      heap_Free(*(v19 + 8), v17);
    }

    heap_Free(*(v19 + 8), v3);
  }

  return inited;
}

uint64_t Pmk_Lookup_ObjClose(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = v2[1];
    if (!v4 || (v5 = *(v4 + 48)) == 0)
    {
      v5 = *(*v2 + 48);
    }

    objc_ReleaseObject(v5, v3);
  }

  v6 = v2[3];
  if (v6)
  {
    v7 = brk_DataClose(*(*v2 + 24), v6);
    if ((v7 & 0x80000000) != 0)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[4];
  if (!v8 || (v7 = brk_DataClose(*(*v2 + 24), v8), (v7 & 0x80000000) == 0))
  {
    heap_Free(*(*v2 + 8), v2);
    *a1 = 0;
  }

  return v7;
}

uint64_t Pmk_Lookup_UnitPeriInfo(void *a1, unsigned int a2, uint64_t a3)
{
  result = 0;
  v22 = 0;
  *(a3 + 8) = 0;
  v5 = a3 + 8;
  *a3 = 0;
  v6 = a1[2];
  if (*(v6 + 256) > a2)
  {
    v20 = 0;
    v19 = 0;
    v9 = *(*(v6 + 264) + 52);
    if (v9)
    {
      v21 = a2 / *(v6 + 260) * v9;
      unpackU32(&v20, *(v6 + 280), &v21, v9);
      v6 = a1[2];
    }

    else
    {
      v20 = 0;
    }

    if (a2 % *(v6 + 260))
    {
      v10 = *(*(v6 + 264) + 56);
      v21 = v10 * (a2 - 1);
      result = unpackU32_Offline(&v19 + 1, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v10);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v6 = a1[2];
      v11 = *(*(v6 + 264) + 56);
    }

    else
    {
      HIDWORD(v19) = 0;
      v11 = *(*(v6 + 264) + 56);
      v21 = v11 * a2;
    }

    result = unpackU32_Offline(&v19, *(v6 + 300), *(*a1 + 24), a1[4], &v21, v11);
    if ((result & 0x80000000) == 0)
    {
      v12 = v19 - HIDWORD(v19);
      if (v19 != HIDWORD(v19))
      {
        result = brk_DataMap(*(*a1 + 24), a1[3], (*(a1[2] + 296) + HIDWORD(v19) + v20), (v19 - HIDWORD(v19)), &v22);
        if ((result & 0x80000000) == 0)
        {
          v13 = v22;
          v14 = a1[2];
          v25 = 0;
          v26 = 0;
          v24 = 0;
          v23 = 0;
          v15 = *(v14 + 264);
          if (*(v14 + 328) == 1 && !*(v14 + 329) && !*(v14 + 330))
          {
            unpackU32(&v23, v22, &v26 + 1, v15[1]);
            unpackU32(&v23, v13, &v26 + 1, v15[3]);
          }

          unpackU32(&v23, v13, &v26 + 1, v15[5]);
          *(a3 + 8) = v15[4] + v23;
          unpackU32(&v23, v13, &v26 + 1, v15[7]);
          *a3 = v15[6] + v23;
          v16 = v15[12];
          if (v12 <= (HIDWORD(v26) + v16 + v15[11] - 1) >> 3)
          {
            v18 = 0;
          }

          else
          {
            LOWORD(v17) = 0;
            v18 = 0;
            do
            {
              unpackU32(&v25, v13, &v26 + 1, v16);
              unpackU32(&v26, v13, &v26 + 1, v15[11]);
              for (; v25; LODWORD(v25) = v25 - 1)
              {
                *(a3 + 40008 + 2 * v18) = v26;
                if (v18)
                {
                  *(v5 + 2 * v18) = *(v5 + 2 * (v18 - 1)) + v17;
                }

                unpackU32(&v25 + 1, v13, &v26 + 1, 1u);
                if (HIDWORD(v25))
                {
                  if (v15[10] && (unpackU32(&v25 + 1, v13, &v26 + 1, 1u), !HIDWORD(v25)))
                  {
                    unpackS32(&v24, v13, &v26 + 1, v15[10]);
                    LOWORD(v17) = v17 + v24;
                  }

                  else
                  {
                    unpackU32(&v24 + 1, v13, &v26 + 1, v15[9]);
                    v17 = v15[8] + HIDWORD(v24);
                  }
                }

                *(a3 + 20008 + 2 * v18++) = v17;
              }

              v16 = v15[12];
            }

            while (v12 > (HIDWORD(v26) + v16 + v15[11] - 1) >> 3);
          }

          *(a3 + 2) = v18;
          return brk_DataUnmap(*(*a1 + 24), a1[3], v22);
        }
      }
    }
  }

  return result;
}

uint64_t Pmk_Lookup_Fingerprint(uint64_t a1, void *a2)
{
  *a2 = *(*(a1 + 16) + 320);
  if (*(*(a1 + 16) + 320))
  {
    return 0;
  }

  else
  {
    return 2164269057;
  }
}

uint64_t pmk_lookup_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2164269057;
  }

  result = 0;
  *a2 = &IPmkLookup;
  return result;
}

uint64_t unpackU32_Offline(int *a1, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int a6)
{
  v23 = 0;
  if (a6)
  {
    v10 = *a5;
    *a5 += a6;
    result = brk_DataMap(a3, a4, a2 + (v10 >> 3), 4, &v23);
    if (!result)
    {
      v12 = 8 - (v10 & 7);
      if (v12 >= a6)
      {
        v13 = a6;
      }

      else
      {
        v13 = 8 - (v10 & 7);
      }

      v14 = v23;
      v15 = (*v23 >> (v12 - v13)) & ~(-1 << v13);
      *a1 = v15;
      v16 = a6 - v13;
      v17 = a6 - v13 - 8;
      if (a6 - v13 < 8)
      {
        v18 = 1;
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      else
      {
        v18 = (v17 >> 3) + 2;
        v19 = (v14 + 1);
        v20 = (v17 >> 3) + 1;
        do
        {
          *a1 = v15 << 8;
          v21 = *v19++;
          v15 = v21 | (v15 << 8);
          *a1 = v15;
          v16 -= 8;
          --v20;
        }

        while (v20);
        if (!v16)
        {
          return brk_DataUnmap(a3, a4, v14);
        }
      }

      v22 = v15 << v16;
      *a1 = v22;
      *a1 = (*(v14 + v18) >> (8 - v16)) + v22;
      return brk_DataUnmap(a3, a4, v14);
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t unpackU32(int *a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  if (!a4)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v4 = *a3;
  v5 = v4 >> 3;
  v6 = 8 - (*a3 & 7);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 8 - (*a3 & 7);
  }

  *a3 = v4 + a4;
  v8 = (*(a2 + v5) >> (v6 - v7)) & ~(-1 << v7);
  *a1 = v8;
  v9 = a4 - v7;
  v10 = (v5 + 1);
  if (a4 - v7 >= 8)
  {
    do
    {
      *a1 = v8 << 8;
      v8 = *(a2 + v10) | (v8 << 8);
      *a1 = v8;
      v9 -= 8;
      ++v10;
    }

    while (v9 > 7);
  }

  if (v9)
  {
    v11 = v8 << v9;
    *a1 = v11;
    v12 = (*(a2 + v10) >> (8 - v9)) + v11;
LABEL_10:
    *a1 = v12;
  }

  return 0;
}

uint64_t unpackS32(int *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v10 = 0;
  *a1 = 0;
  unpackU32(&v10 + 1, a2, a3, 1u);
  unpackU32(&v10, a2, a3, a4 - 1);
  if (HIDWORD(v10))
  {
    v8 = -v10;
  }

  else
  {
    v8 = v10;
  }

  *a1 = v8;
  return 0;
}

uint64_t smcadpcmf5spi_GenDecOpen(_WORD *a1, int a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v6 = 2328911882;
  v26 = 0;
  result = 2328911878;
  if (!a3 || !a5)
  {
    return result;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  inited = InitRsrcFunction(a1, a2, &v26);
  if (inited < 0)
  {
    return inited & 0xFDFFF | 0x8AD02000;
  }

  v12 = heap_Calloc(*(v26 + 8), 1, 88);
  if (!v12)
  {
    return 2328911882;
  }

  v13 = v12;
  *(v12 + 80) = v26;
  *a5 = 0;
  *(a5 + 8) = 0;
  v14 = *a3;
  v15 = a3[1];
  *(v12 + 4) = v15;
  if (a4 == 4)
  {
    *(v12 + 56) = 0;
    Info = smcadpcmf5spi_GetInfo(8450, v14, v15, 0, 0, &v27);
    if (Info < 0)
    {
      v21 = Info & 0x1FFFFF;
    }

    else
    {
      *(v13 + 40) = heap_Calloc(*(v26 + 8), 1, HIWORD(v28));
      if (v29)
      {
        *(v13 + 48) = heap_Calloc(*(v26 + 8), 1, v29);
      }

      v17 = heap_Calloc(*(v26 + 8), *(v13 + 4), 2);
      *(v13 + 16) = v17;
      if (!*(v13 + 40) || v29 && !*(v13 + 48) || !v17)
      {
        goto LABEL_21;
      }

      NullHandle = safeh_GetNullHandle();
      v20 = smcadpcmf5spi_DecoderOpen(8450, v15, NullHandle, v19, 0, 0, *(v13 + 40), v13 + 64);
      v6 = v20;
      if ((v20 & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v28);
        *(v13 + 4) = WORD2(v28) >> 1;
        *(v13 + 6) = WORD4(v27);
        *v13 = 4;
        *(v13 + 8) = 0;
        if (!v20)
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = 173;
          return result;
        }

        goto LABEL_21;
      }

      v21 = v20 & 0x1FFFFF;
    }

    v6 = v21 | 0x8AD02000;
  }

  else
  {
    v6 = 2328911881;
  }

LABEL_21:
  v22 = *(v13 + 40);
  v23 = v26;
  if (v22)
  {
    heap_Free(*(v26 + 8), v22);
    v23 = v26;
  }

  v24 = *(v13 + 48);
  if (v24)
  {
    heap_Free(*(v23 + 8), v24);
    v23 = v26;
  }

  v25 = *(v13 + 16);
  if (v25)
  {
    heap_Free(*(v23 + 8), v25);
    v23 = v26;
  }

  heap_Free(*(v23 + 8), v13);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  result = safeh_HandleCheck(a1, a2, 173, 88);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = (v15 - v17 + 1) * v18;
      *(a1 + 28) = *a4;
      *(a1 + 32) = v13 - v17 * v14;
      *(a1 + 24) = 0;
      if (!result)
      {
        smcadpcmf5spi_DecoderResetMemory(*(a1 + 64), *(a1 + 72));
        return 0;
      }
    }

    else
    {
      return 2328911880;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v8 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (!a1)
  {
    return 2328911880;
  }

  v6 = smcadpcmf5spi_DecoderClose(a1[8], a1[9]);
  heap_Free(*(a1[10] + 8), a1[5]);
  v9 = a1[6];
  if (v9)
  {
    heap_Free(*(a1[10] + 8), v9);
  }

  heap_Free(*(a1[10] + 8), a1[2]);
  heap_Free(*(a1[10] + 8), a1);
  return v6;
}

uint64_t smcadpcmf5spi_GenDecProcess(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = safeh_HandleCheck(a1, a2, 173, 88);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (!a1)
  {
    v11 = 2328911880;
    goto LABEL_16;
  }

  if (*a6 >= *(a1 + 28))
  {
    v12 = *(a1 + 28);
  }

  else
  {
    v12 = *a6;
  }

  v29 = a4;
  v30 = a6;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(a1 + 24);
  if (v12 <= v13)
  {
    memcpy(a5, *(a1 + 16), 2 * v12);
    memmove(*(a1 + 16), (*(a1 + 16) + 2 * v12), 2 * (*(a1 + 24) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 24) -= v12;
    *(a1 + 28) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (v14 < v15)
  {
    if (*(a1 + 24))
    {
      memcpy(a5, *(a1 + 16), 2 * v13);
      v16 = *(a1 + 24);
      v17 = &a5[2 * v16];
      *(a1 + 28) -= v16;
      *(a1 + 24) = 0;
LABEL_14:
      LODWORD(v18) = a3;
      goto LABEL_15;
    }

LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v18 = a3;
  v17 = a5;
  while (1)
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 4);
    v32 = v15;
    v31 = 2 * v22;
    *(a1 + 56) = 0;
    v11 = smcadpcmf5spi_DecoderProcess(*(a1 + 64), *(a1 + 72), 0, v18, &v32, *(a1 + 48), v33, &v31);
    v23 = v31 >> 1;
    v31 >>= 1;
    if (v21 >= v22)
    {
      *(a1 + 32) -= v23;
      goto LABEL_31;
    }

    v24 = *(a1 + 32);
    if (v24)
    {
      LOWORD(v23) = v23 - v24;
      v25 = &v33[v24];
      *(a1 + 32) = 0;
      if (*(a1 + 28) < v23)
      {
        LOWORD(v23) = *(a1 + 28);
      }
    }

    else
    {
      if (*(a1 + 24))
      {
        memcpy(v17, *(a1 + 16), 2 * *(a1 + 24));
        v26 = *(a1 + 24);
        v17 += 2 * v26;
        v23 = *(a1 + 28) - v26;
        *(a1 + 28) = v23;
        v12 -= v26;
        *(a1 + 24) = 0;
      }

      else
      {
        v23 = *(a1 + 28);
      }

      v25 = v33;
      if (v23 > *(a1 + 4))
      {
        LOWORD(v23) = v31;
      }
    }

    v27 = v23;
    if (v12 < v23)
    {
      break;
    }

    memcpy(v17, v25, 2 * v23);
    *(a1 + 28) -= v27;
    v17 += 2 * v27;
    v12 -= v27;
LABEL_31:
    v18 += v32;
    if (v12)
    {
      v14 -= v32;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v28 = v23 - v12;
  memcpy(*(a1 + 16), &v25[v12], 2 * v28);
  *(a1 + 24) = v28;
  memcpy(v17, v25, 2 * v12);
  *(a1 + 28) -= v12;
  v17 += 2 * v12;
  LODWORD(v18) = v18 + v32;
LABEL_15:
  *v29 = v18 - a3;
  *v30 = (v17 - a5) >> 1;
LABEL_16:
  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t gsmc_vssq5_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2328911873;
  }

  result = 0;
  *a2 = &dec_I;
  return result;
}

unsigned __int8 *adpcm_decoder(unsigned __int8 *result, _WORD *a2, int a3, __int16 *a4)
{
  if (a3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = *result++;
    v7 = v8;
    v9 = *(a4 + 2);
    v10 = stepsizeTable[*(a4 + 2)];
    v11 = *a4;
    for (i = a3 + 1; i > 1; --i)
    {
      if (v4 == 8)
      {
        v14 = *result++;
        v7 = v14;
        v4 = 1;
        if (!v5)
        {
LABEL_7:
          v15 = *result++;
          v13 = v15;
          LODWORD(v6) = v15 >> 4;
          goto LABEL_8;
        }
      }

      else
      {
        ++v4;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = v6;
LABEL_8:
      v5 ^= 1u;
      v16 = indexTable[v6 & 0xF];
      v9 = (v16 + v9) & ~((v16 + v9) >> 31);
      if (v9 >= 88)
      {
        v9 = 88;
      }

      v17 = (v6 << 30) >> 31;
      v18 = (((v6 << 29) >> 31) & (v10 >> 1)) + (v10 >> 4) + (v17 & (v10 >> 2));
      if (v6)
      {
        v18 += v10 >> 3;
      }

      v19 = v10 + (v10 >> 3) + (v17 & (v10 >> 1));
      if (v6)
      {
        v19 += v10 >> 2;
      }

      v20 = (v10 >> 2) + 2 * v10 + (v10 & ((v6 << 30) >> 31));
      v21 = v20 + (v10 >> 1);
      if ((v6 & 1) == 0)
      {
        v21 = v20;
      }

      if ((v6 & 4) == 0)
      {
        v21 = v19;
      }

      if ((v6 & 8) == 0)
      {
        v21 = v18;
      }

      v22 = (v7 & 1) == 0;
      v7 >>= 1;
      if (!v22)
      {
        v21 = -v21;
      }

      v11 += v21;
      if (v11 <= -8192)
      {
        v11 = -8192;
      }

      if (v11 >= 0x1FFF)
      {
        v11 = 0x1FFF;
      }

      v10 = stepsizeTable[v9];
      *a4 = v11;
      *(a4 + 2) = v9;
      *a2++ = 4 * v11;
      v6 = v13;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_GetInfo(int a1, int a2, unsigned __int16 a3, int a4, int a5, uint64_t a6)
{
  if (a5 == 1)
  {
    if ((a1 & 0xFE00FFFF) != 0x2102)
    {
      return 2327847168;
    }
  }

  else
  {
    result = 2327847168;
    if (a2 != 10000 || (a1 & 0xFE00FFFF) != 0x2102)
    {
      return result;
    }
  }

  if (!a6)
  {
    return 2327846918;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 8) = 0;
  if (!a3 || (a3 & 7) != 0)
  {
    return 2327846919;
  }

  result = 2327846919;
  if (!(a3 >> 13))
  {
    v8 = ((5 * a3) >> 3) + 3;
    *(a6 + 22) = v8;
    *(a6 + 24) = v8;
    LOWORD(v8) = 8 * v8;
    *(a6 + 26) = v8;
    *(a6 + 28) = v8;
    if (a4)
    {
      return 2327846913;
    }

    else
    {
      *(a6 + 16) = 10000;
      *(a6 + 20) = 2 * a3;
      result = 0;
      if (a5 == 1)
      {
        *(a6 + 30) = 0;
      }

      else
      {
        *(a6 + 30) = 4;
        *(a6 + 12) = 0;
        *(a6 + 18) = 0;
      }
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_DecoderOpen(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 2327846918;
  if ((a1 & 0xFE00FFFF) != 0x2102)
  {
    return 2327847168;
  }

  if (!a8)
  {
    return 2327846920;
  }

  if (a7)
  {
    *a7 = 0;
    *a8 = a7;
    *(a8 + 8) = 65708;
    if (HIWORD(a2))
    {
      return 2327846919;
    }

    else
    {
      result = 0;
      *a7 = a2;
      *(a7 + 2) = ((5 * a2) >> 3) + 3;
    }
  }

  return result;
}

uint64_t smcadpcmf5spi_DecoderProcess(unsigned __int16 *a1, int a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, _WORD *a7, _WORD *a8)
{
  if (a8 && a5 && a4 && a7)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3)
      {
        *a5 = 0;
        return 2327846913;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65708, 4);
        if ((result & 0x80000000) == 0)
        {
          if (*a5 == a1[1])
          {
            v14 = 0;
            BYTE2(v14) = *a4;
            LOWORD(v14) = *(a4 + 1);
            adpcm_decoder((a4 + 3), a7, *a1, &v14);
            result = 0;
            *a8 = 2 * *a1;
          }

          else
          {
            *a5 = 0;
            *a8 = 0;
            return 2327846921;
          }
        }
      }

      return result;
    }
  }

  else if (!a5)
  {
    goto LABEL_10;
  }

  *a5 = 0;
LABEL_10:
  result = 2327846918;
  if (a8)
  {
    *a8 = 0;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecOpen(_WORD *a1, int a2, int *a3, int a4, uint64_t a5)
{
  v6 = -2043650038;
  result = 2251317254;
  if (a3 && a5)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v24 = 0;
    inited = InitRsrcFunction(a1, a2, &v24);
    if (inited < 0)
    {
      v21 = inited & 0x3FFFFF;
      return v21 | 0x86302000;
    }

    v12 = heap_Calloc(*(v24 + 8), 1, 712);
    if (!v12)
    {
      return 2251317258;
    }

    v13 = v12;
    *(v12 + 704) = v24;
    *a5 = v12;
    *(a5 + 8) = 99;
    v14 = *a3;
    v15 = *(a3 + 1);
    v16 = *(a3 + 2);
    *(v12 + 680) = 0;
    LODWORD(result) = smc155mrf22spi_GetInfo(1057026, v14, v15 & 3, 0, 0, &v25);
    if ((result & 0x80000000) == 0)
    {
      *(v13 + 664) = heap_Calloc(*(v24 + 8), 1, HIWORD(v26));
      v17 = heap_Calloc(*(v24 + 8), 1, v27);
      *(v13 + 672) = v17;
      if (*(v13 + 664))
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        goto LABEL_15;
      }

      NullHandle = safeh_GetNullHandle();
      result = smc155mrf22spi_DecoderOpen(1057026, v15 & 3, NullHandle, v20, a3 + 2, a4 - 8, *(v13 + 664), v13 + 688);
      if ((result & 0x80000000) == 0)
      {
        *(v13 + 2) = WORD3(v26);
        *(v13 + 4) = WORD2(v26) >> 1;
        *(v13 + 6) = WORD4(v25);
        *v13 = 8;
        *(v13 + 8) = v16;
        return result;
      }
    }

    v6 = result;
LABEL_15:
    v22 = *(v13 + 664);
    if (v22)
    {
      heap_Free(*(v24 + 8), v22);
      *(v13 + 664) = 0;
    }

    v23 = *(v13 + 672);
    if (v23)
    {
      heap_Free(*(v24 + 8), v23);
      *(v13 + 672) = 0;
    }

    v21 = v6 & 0x3FFFFF;
    return v21 | 0x86302000;
  }

  return result;
}

uint64_t smc155mrf22spi_GenDecGetInfo(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v12 & 0x80000000) == 0)
  {
    if (a1)
    {
      v13 = *a3 + *(a1 + 6);
      v14 = *(a1 + 4);
      v15 = (*a4 + v13 - 1) / v14;
      v16 = *(a1 + 8);
      v17 = v13 / v14 - v16;
      if (v13 / v14 < v16)
      {
        v17 = 0;
      }

      v18 = *(a1 + 2);
      *a6 = v17 * v18;
      *a7 = v18 + v18 * (v15 - v17);
      *(a1 + 652) = *a4;
      *(a1 + 656) = v13 - v17 * v14;
      *(a1 + 650) = 0;
      bzero((a1 + 10), 2 * v14);
      smc155mrf22spi_DecoderResetMemory(*(a1 + 688), *(a1 + 696));
    }

    else
    {
      return 2251317256;
    }
  }

  return v12;
}

uint64_t smc155mrf22spi_GenDecClose(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  if (!a1)
  {
    return 2251317256;
  }

  v4 = smc155mrf22spi_DecoderClose(a1[86], a1[87]);
  v5 = a1[83];
  if (v5)
  {
    heap_Free(*(a1[88] + 8), v5);
    a1[83] = 0;
  }

  v6 = a1[84];
  if (v6)
  {
    heap_Free(*(a1[88] + 8), v6);
    a1[84] = 0;
  }

  heap_Free(*(a1[88] + 8), a1);
  return v4;
}

uint64_t smc155mrf22spi_GenDecProcess(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int *a4, char *a5, unsigned int *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = safeh_HandleCheck(a1, a2, 99, 712);
  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  if (!a1)
  {
    v11 = 2251317256;
    goto LABEL_15;
  }

  if (*a6 >= *(a1 + 652))
  {
    v12 = *(a1 + 652);
  }

  else
  {
    v12 = *a6;
  }

  v31 = a4;
  v30 = a3;
  if (!v12)
  {
LABEL_12:
    v17 = a5;
    goto LABEL_14;
  }

  v13 = *(a1 + 650);
  if (v12 <= v13)
  {
    memcpy(a5, (a1 + 10), 2 * v12);
    memmove((a1 + 10), (a1 + 10 + 2 * v12), 2 * (*(a1 + 650) - v12));
    v17 = &a5[2 * v12];
    *(a1 + 650) -= v12;
    *(a1 + 652) -= v12;
    goto LABEL_14;
  }

  v14 = *a4;
  v15 = *(a1 + 2);
  if (*a4 < v15)
  {
    if (*(a1 + 650))
    {
      memcpy(a5, (a1 + 10), 2 * v13);
      v16 = *(a1 + 650);
      v17 = &a5[2 * v16];
      *(a1 + 652) -= v16;
      *(a1 + 650) = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v17 = a5;
  while (1)
  {
    v20 = *(a1 + 656);
    v21 = *(a1 + 4);
    v33 = v15;
    v32 = 2 * v21;
    if (v20 >= v21)
    {
      v27 = v20 >= 3 * v21;
      *(a1 + 680) = v27;
      v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), v27, a3, &v33, *(a1 + 672), v34, &v32, 0, 0);
      v28 = v32;
      v32 >>= 1;
      *(a1 + 656) -= v28 >> 1;
      goto LABEL_31;
    }

    *(a1 + 680) = 0;
    v11 = smc155mrf22spi_DecoderProcess(*(a1 + 688), *(a1 + 696), 0, a3, &v33, *(a1 + 672), v34, &v32, 0, 0);
    v22 = v32 >> 1;
    v32 >>= 1;
    v23 = *(a1 + 656);
    if (v23)
    {
      v24 = v22 - v23;
      v25 = &v34[2 * v23];
      *(a1 + 656) = 0;
      v26 = v24 >= *(a1 + 652) ? *(a1 + 652) : v24;
    }

    else
    {
      if (*(a1 + 650))
      {
        memcpy(v17, (a1 + 10), 2 * *(a1 + 650));
        v29 = *(a1 + 650);
        v17 += 2 * v29;
        v26 = *(a1 + 652) - v29;
        *(a1 + 652) = v26;
        v12 -= v29;
        *(a1 + 650) = 0;
      }

      else
      {
        v26 = *(a1 + 652);
      }

      if (v26 > *(a1 + 4))
      {
        v26 = v32;
      }

      v25 = v34;
    }

    if (v26 > v12)
    {
      break;
    }

    LH_S16ToLH_S16(v25, v17, v26);
    *(a1 + 652) -= v26;
    v17 += 2 * v26;
    v12 -= v26;
LABEL_31:
    a3 += v33;
    if (v12)
    {
      v14 -= v33;
      v15 = *(a1 + 2);
      if (v14 >= v15)
      {
        continue;
      }
    }

    goto LABEL_14;
  }

  LH_S16ToLH_S16(&v25[2 * v12], (a1 + 10), v26 - v12);
  *(a1 + 650) = v26 - v12;
  LH_S16ToLH_S16(v25, v17, v12);
  *(a1 + 652) -= v12;
  v17 += 2 * v12;
  LODWORD(a3) = a3 + v33;
LABEL_14:
  *v31 = a3 - v30;
  *a6 = (v17 - a5) >> 1;
LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t gsmc_155mrf22_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2251317249;
  }

  result = 0;
  *a2 = &dec_I_0;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict(int16x4_t *a1, __int16 *a2, int a3, _WORD *a4)
{
  if (a3 < 1)
  {
    v6 = 20971;
  }

  else
  {
    v5 = a3;
    v6 = 20971;
    do
    {
      v7 = *a2++;
      v6 += (v7 * v7) >> 5;
      --v5;
    }

    while (v5);
  }

  v8 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16(((v6 / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v8 >> 36) + (v8 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_gain_predict_pulses(int16x4_t *a1, int a2, __int16 a3, _WORD *a4)
{
  v5 = 1717986919 * (((vaddvq_s32(vshrq_n_s32(vmulq_s32(vmovl_s16(*a1), xmmword_1C3828920), 1uLL)) + 256) >> 9) + ((9216 - fxd_S16Lookup10Log10S16S16((((((a2 << 11) | 0x14) << 16 >> 6) / (a3 << 8)) >> 1), &s16LogTable_0)) << 7));
  result = fxd_U16LookupPow10U16U16((((v5 >> 36) + (v5 >> 63)) >> 1), &u16PowTable_0);
  *a4 = 2 * result;
  return result;
}

uint64_t smc155mrf22_fxd_DecodeCodeGain(unsigned int a1, __int16 *a2, int a3, uint64_t a4, __int16 a5)
{
  v15 = 0;
  if (a3)
  {
    smc155mrf22_fxd_gain_predict_pulses(a4, a3, a5, &v15);
  }

  else
  {
    smc155mrf22_fxd_gain_predict(a4, a2, a5, &v15);
  }

  if (a1 > 58)
  {
    if (a1 > 0x3C)
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v10 = 2 * v15 * v8;
      v11 = a1 > 0x3E;
      v12 = (v10 + 512) >> 10;
      v13 = (v10 + 2048) >> 12;
      if (a1 <= 0x3E)
      {
        LOWORD(v9) = v13;
      }

      else
      {
        LOWORD(v9) = v12;
      }

      if (v11)
      {
        v7 = 3082;
      }

      else
      {
        v7 = 1541;
      }
    }

    else
    {
      v8 = smc155mrf22_fxd_qgc[a1];
      v9 = (2 * v15 * v8 + 4096) >> 13;
      v7 = 770;
    }
  }

  else
  {
    v7 = 0;
    v8 = smc155mrf22_fxd_qgc[a1];
    v9 = (2 * v15 * v8 + 0x2000) >> 14;
  }

  *(a4 + 6) = *(a4 + 4);
  *(a4 + 2) = *a4;
  *a4 = 4 * (fxd_S16Lookup10Log10S16S16(v8, &s16LogTable_0) + v7);
  return v9;
}

unsigned __int8 *smc155mrf22_ReadStream(unsigned __int8 *result, unsigned int a2, _DWORD *a3, int a4, _WORD *a5)
{
  v15[49] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2;
    v6 = v15;
    do
    {
      v7 = *result++;
      v8 = vdupq_n_s32(v7);
      *v6++ = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v8, xmmword_1C3827A00), vshlq_u32(v8, xmmword_1C38279F0))), 0x101010101010101);
      --v5;
    }

    while (v5);
  }

  if (a4)
  {
    v9 = 0;
    v10 = v15;
    do
    {
      v11 = *a5;
      if (*a5)
      {
        v12 = 0;
        v13 = 0;
        do
        {
          v13 += *(v10 + v12) << v12;
          ++v12;
        }

        while (v11 != v12);
        v10 = (v10 + v11);
      }

      else
      {
        v13 = 0;
      }

      *a3++ = v13;
      ++a5;
      ++v9;
    }

    while (v9 != a4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t smc155mrf22spi_GetInfo(int a1, int a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a5 == 1)
  {
    if (a1 != 1057026)
    {
      return 2250252544;
    }
  }

  else
  {
    result = 2250252544;
    if (a1 != 1057026 || a2 != 4005)
    {
      return result;
    }
  }

  if (!a6)
  {
    return 2250252294;
  }

  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 8) = 40;
  if (a3 > 3)
  {
    return 2250252295;
  }

  v8 = dword_1C382B1D0[a3];
  v9 = 0x310025001C0025uLL >> (16 * a3);
  *(a6 + 22) = v9;
  *(a6 + 24) = v9;
  v10 = 0x188012800E00128uLL >> (16 * a3);
  *a6 = v8;
  *(a6 + 4) = v8;
  *(a6 + 26) = v10;
  *(a6 + 28) = v10;
  result = 2250252289;
  if (a5 == 1)
  {
    if (!a4)
    {
      result = 0;
      *(a6 + 16) = 4005;
      *(a6 + 20) = 640;
      *(a6 + 30) = 0;
    }
  }

  else if (a4 < 2)
  {
    result = 0;
    *(a6 + 20) = 640;
    *(a6 + 30) = 56624768;
    *(a6 + 12) = 0xFA500000004;
  }

  return result;
}

uint64_t smc155mrf22spi_DecoderOpen(int a1, unsigned int a2, int a3, int a4, int *a5, int a6, char *a7, uint64_t a8)
{
  v8 = 2250252294;
  if (a1 != 1057026)
  {
    return 2250252544;
  }

  if (a7)
  {
    bzero(a7, 0x680uLL);
    if (a8)
    {
      *a8 = a7;
      *(a8 + 8) = 65634;
      if (a2 > 3)
      {
        return 2250252295;
      }

      else if (a5)
      {
        v16 = *a5;
        v15 = a5 + 1;
        v14 = v16;
        *(a7 + 11) = v16;
        *(a7 + 6) = v15;
        v17 = 8 * v16 + 24;
        if (v16 >= 1)
        {
          v18 = v14;
          v19 = v15;
          do
          {
            v20 = *v19++;
            v17 += 32 * v20;
            --v18;
          }

          while (v18);
        }

        if (v17 == a6)
        {
          v21 = &v15[v14];
          *(a7 + 7) = v21;
          v22 = &v21[v14];
          *(a7 + 10) = v22[1];
          *(a7 + 191) = v22 + 5;
          LODWORD(v22) = dword_1C382B200[a2];
          LODWORD(v21) = dword_1C382B210[a2];
          v23 = dword_1C382B220[a2];
          v24 = dword_1C382B230[a2];
          *(a7 + 28) = 0x18D00000036;
          *(a7 + 9) = v23;
          *(a7 + 3) = v21;
          *(a7 + 4) = v24;
          *(a7 + 5) = 22050;
          *(a7 + 4) = v22;
          bzero(a7 + 72, 0x59AuLL);
          *(a7 + 1592) = 0u;
          *(a7 + 1608) = 0u;
          *(a7 + 1560) = 0u;
          *(a7 + 1576) = 0u;
          *(a7 + 192) = 0;
          *(a7 + 386) = 0;
          *(a7 + 1548) = 0;
          *(a7 + 389) = 0;
          *(a7 + 8) = a7 + 866;
          *(a7 + 1506) = xmmword_1C382B1F0;
          fxd_LinSpace((a7 + 1624), 0, 25736, 16);
          v8 = 0;
          *(a7 + 414) = 0;
        }

        else
        {
          return 2250252297;
        }
      }
    }

    else
    {
      return 2250252296;
    }
  }

  return v8;
}

uint64_t smc155mrf22spi_DecoderProcess(uint64_t a1, int a2, unsigned int a3, unsigned __int8 *a4, _WORD *a5, uint64_t a6, char *a7, _WORD *a8, _DWORD *a9, _WORD *a10)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a8 && a5 && a4 && a6 && (v14 = a7) != 0)
  {
    if (*a5)
    {
      *a8 = 0;
      if (a3 >= 2)
      {
        *a5 = 0;
        result = 2250252289;
      }

      else
      {
        result = safeh_HandleCheck(a1, a2, 65634, 1664);
        if ((result & 0x80000000) == 0)
        {
          if (a1)
          {
            if (*(a1 + 12) <= *a5)
            {
              smc155mrf22_ReadStream(a4, *(a1 + 12), (a6 + 608), *(a1 + 16), &au16BitAllocationTable[56 * *(a1 + 4) - 840]);
              *a5 = *(a1 + 12);
              v53 = a3;
              if (a3)
              {
                fxd_LinSpace(a6 + 832, 0, 25736, 16);
              }

              else
              {
                fxd_MultiStageVectorDecodeLsp((a6 + 608), *(a1 + 44), *(a1 + 48), *(a1 + 1528), 16, (a6 + 832));
                fxd_OrderCheckLsp((a6 + 832), 16, *(a1 + 40));
              }

              v19 = 0;
              v20 = 0;
              v21 = (a6 + 608 + 4 * *(a1 + 44));
              v55 = 0;
              v56 = 0;
              v54 = a8;
              do
              {
                v22 = 80 * v20;
                smc1175mrf22_DecodeLag_11_22(*v21, v20, *(a1 + 4), &v56, &v55);
                smc1175mrf22_fxd_ExcitWFSet0_Decod_11_22((*(a1 + 64) + 160 * v20), v56, 80);
                v23 = 0;
                *(a1 + 1518) = smc155mrf22_fxd_qgp[v21[1]];
                v24 = *(a1 + 64) + v19;
                do
                {
                  v25 = (2 * *(v24 + v23) * *(a1 + 1518) + 0x4000) >> 15;
                  if (v25 <= -32768)
                  {
                    v25 = -32768;
                  }

                  if (v25 >= 0x7FFF)
                  {
                    LOWORD(v25) = 0x7FFF;
                  }

                  *(v24 + v23) = v25;
                  v23 += 2;
                }

                while (v23 != 160);
                v26 = v21[2];
                v27 = v21[3];
                if (*(a1 + 4) == 16)
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v57, 80, v26, v27);
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_5p(a6, v57, 80, v26, v27);
                }

                v28 = v56;
                if (v56 > 79)
                {
                  if (*(a1 + 4) == 16)
                  {
                    v34 = 4;
                  }

                  else
                  {
                    v34 = 5;
                  }

                  v35 = smc155mrf22_fxd_DecodeCodeGain(v21[4], a6, v34, a1 + 1506, 80);
                  *(a1 + 1516) = v35;
                  *(a1 + 1514) = v35;
                  v33 = *(a1 + 64);
                  v36 = v57;
                  do
                  {
                    v37 = *v36++;
                    *(v33 + 2 * (v37 + v22)) += (2 * *(a6 + 2 * v37) * *(a1 + 1514) + 0x8000) >> 16;
                    --v34;
                  }

                  while (v34);
                }

                else
                {
                  v29 = 0;
                  do
                  {
                    v30 = (2 * *(a6 + v29) * *(a1 + 1520) + 0x4000) >> 15;
                    if (v30 <= -32768)
                    {
                      v30 = -32768;
                    }

                    if (v30 >= 0x7FFF)
                    {
                      LOWORD(v30) = 0x7FFF;
                    }

                    *(a6 + 2 * v28++) += v30;
                    v29 += 2;
                  }

                  while (v28 != 80);
                  v31 = smc155mrf22_fxd_DecodeCodeGain(v21[4], a6, 0, a1 + 1506, 80);
                  v32 = 0;
                  *(a1 + 1516) = v31;
                  *(a1 + 1514) = v31;
                  v33 = *(a1 + 64);
                  do
                  {
                    *(v33 + v19 + v32) += (2 * *(a6 + v32) * *(a1 + 1514) + 0x8000) >> 16;
                    v32 += 2;
                  }

                  while (v32 != 160);
                }

                if (*(a1 + 36) < 2)
                {
                  v21 += 5;
                }

                else
                {
                  smc155mrf22_fxd_DecodWFSet1_4p(a6, v57, 80, v21[5], v21[6]);
                  *(a1 + 1514) = (43690 * *(a1 + 1516) + 0x8000) >> 16;
                  v38 = v56;
                  if (v56 > 79)
                  {
                    v44 = 0;
                    v33 = *(a1 + 64);
                    do
                    {
                      *(v33 + 2 * (v57[v44] + v22)) += (2 * *(a6 + 2 * v57[v44]) * *(a1 + 1514) + 0x8000) >> 16;
                      ++v44;
                    }

                    while (v44 != 4);
                  }

                  else
                  {
                    v39 = v56 + 1;
                    v40 = a6;
                    do
                    {
                      v41 = (2 * *v40 * *(a1 + 1520) + 0x4000) >> 15;
                      if (v41 <= -32768)
                      {
                        v41 = -32768;
                      }

                      if (v41 >= 0x7FFF)
                      {
                        LOWORD(v41) = 0x7FFF;
                      }

                      v40[v38] += v41;
                      ++v40;
                      v42 = v39++ == 80;
                    }

                    while (!v42);
                    v43 = 0;
                    v33 = *(a1 + 64);
                    do
                    {
                      *(v33 + v19 + v43) += (2 * *(a6 + v43) * *(a1 + 1514) + 0x8000) >> 16;
                      v43 += 2;
                    }

                    while (v43 != 160);
                  }

                  if (*(a1 + 36) == 3)
                  {
                    smc155mrf22_fxd_DecodWFSet1_4p(a6, v57, 80, v21[7], v21[8]);
                    *(a1 + 1514) = ((*(a1 + 1516) << 15) + 0x8000) >> 16;
                    v45 = v56;
                    if (v56 > 79)
                    {
                      v50 = 0;
                      v33 = *(a1 + 64);
                      do
                      {
                        *(v33 + 2 * (v57[v50] + v22)) += (2 * *(a6 + 2 * v57[v50]) * *(a1 + 1514) + 0x8000) >> 16;
                        ++v50;
                      }

                      while (v50 != 4);
                    }

                    else
                    {
                      v46 = v56 + 1;
                      v47 = a6;
                      do
                      {
                        v48 = (2 * *v47 * *(a1 + 1520) + 0x4000) >> 15;
                        if (v48 <= -32768)
                        {
                          v48 = -32768;
                        }

                        if (v48 >= 0x7FFF)
                        {
                          LOWORD(v48) = 0x7FFF;
                        }

                        v47[v45] += v48;
                        ++v47;
                        v42 = v46++ == 80;
                      }

                      while (!v42);
                      v49 = 0;
                      v33 = *(a1 + 64);
                      do
                      {
                        *(v33 + v19 + v49) += (2 * *(a6 + v49) * *(a1 + 1514) + 0x8000) >> 16;
                        v49 += 2;
                      }

                      while (v49 != 160);
                    }

                    v21 += 9;
                  }

                  else
                  {
                    v21 += 7;
                  }
                }

                *(a1 + 1520) = *(a1 + 1518);
                v51 = (v33 + 160 * v20);
                if (v53)
                {
                  LH_S16ToLH_S16(v51, (a6 + 384), 0x50u);
                  v52 = v54;
                }

                else
                {
                  v52 = v54;
                  if (v20 == 3)
                  {
                    LH_S16ToLH_S16((a6 + 832), (a6 + 544), 0x10u);
                  }

                  else
                  {
                    fxd_InterpolateVectors((a1 + 1624), (a6 + 832), (a6 + 544), word_1C391DD46[v20], 16);
                  }

                  fxd_LspToCosLsp((a6 + 544), (a6 + 544), 16);
                  fxd_HighPrecisionCosLspToAi(a6 + 544, (a6 + 544), 16);
                  fxd_HighPrecisionExpandLpcBandwidth(a6 + 544, (a6 + 544), 32505, 16, 0);
                  FillZeroLH_S32(a6, 0x60u);
                  LH_S32ToLH_S32((a1 + 1560), a6, 0x10u);
                  fxd_HighPrecisionFastSynthesisFilter(v51, (a6 + 384), 80, 0, (a6 + 544), 0x10u, 28, a6, 14);
                  LH_S32ToLH_S32((a6 + 320), (a1 + 1560), 0x10u);
                }

                LH_S16ToLH_S16((a6 + 384), v14, 0x50u);
                v14 += 160;
                *v52 += 160;
                ++v20;
                v19 += 160;
              }

              while (v20 != 4);
              if (a9)
              {
                *a10 = 4;
                *a9 = *a1;
              }

              LH_S16ToLH_S16((a6 + 832), (a1 + 1624), 0x10u);
              LH_S16ToLH_S16((a1 + 712), (a1 + 72), *(a1 + 32));
              FillZeroLH_S16((a1 + 72 + 2 * *(a1 + 32)), 0x140u);
              result = 0;
              ++*(a1 + 1656);
            }

            else
            {
              *a5 = 0;
              *a8 = 0;
              result = 2250252297;
            }
          }

          else
          {
            result = 2250252296;
          }
        }
      }

      goto LABEL_17;
    }
  }

  else if (!a5)
  {
    goto LABEL_14;
  }

  *a5 = 0;
LABEL_14:
  result = 2250252294;
  if (a8)
  {
    *a8 = 0;
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t smc155mrf22spi_DecoderClose(uint64_t a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  LODWORD(result) = safeh_HandleCheck(a1, a2, 65634, 1664);
  if (a1)
  {
    v7 = result;
  }

  else
  {
    v7 = -2044715000;
  }

  if (result >= 0)
  {
    return v7;
  }

  else
  {
    return result;
  }
}

uint64_t smc155mrf22spi_DecoderResetMemory(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 65634, 1664);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      bzero((a1 + 72), 0x59AuLL);
      *(a1 + 1592) = 0u;
      *(a1 + 1608) = 0u;
      *(a1 + 1560) = 0u;
      *(a1 + 1576) = 0u;
      *(a1 + 1536) = 0;
      *(a1 + 1544) = 0;
      *(a1 + 1548) = 0;
      *(a1 + 1556) = 0;
      *(a1 + 1506) = xmmword_1C382B1F0;
      fxd_LinSpace(a1 + 1624, 0, 25736, 16);
      return 0;
    }

    else
    {
      return 2250252296;
    }
  }

  return result;
}

void smc155mrf22_fxd_DecodWFSet1_5p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C382B240[a5 & 0xF];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C382B300[a5 >> 4] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C382B300[(a5 >> 8) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C382B300[a5 >> 12] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
  v18 = (dword_1C382B300[HIWORD(a5) & 0xF] + v16) % a3;
  if ((a4 & 0x10) != 0)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = -8192;
  }

  *(a1 + v18) = v19;
  a2[4] = v18;
}

void smc155mrf22_fxd_DecodWFSet1_4p(void *a1, _DWORD *a2, signed int a3, char a4, unsigned int a5)
{
  FillZeroLH_S16(a1, a3);
  v10 = dword_1C382B280[a5 & 0x1F];
  if (a4)
  {
    v11 = 0x2000;
  }

  else
  {
    v11 = -8192;
  }

  *(a1 + v10) = v11;
  *a2 = v10;
  v12 = (dword_1C382B300[(a5 >> 5) & 0xF] + v10) % a3;
  if ((a4 & 2) != 0)
  {
    v13 = 0x2000;
  }

  else
  {
    v13 = -8192;
  }

  *(a1 + v12) = v13;
  a2[1] = v12;
  v14 = (dword_1C382B300[(a5 >> 9) & 0xF] + v12) % a3;
  if ((a4 & 4) != 0)
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = -8192;
  }

  *(a1 + v14) = v15;
  a2[2] = v14;
  v16 = (dword_1C382B300[(a5 >> 13) & 0xF] + v14) % a3;
  if ((a4 & 8) != 0)
  {
    v17 = 0x2000;
  }

  else
  {
    v17 = -8192;
  }

  *(a1 + v16) = v17;
  a2[3] = v16;
}

uint64_t smcsch1spi_GenDecOpen(_WORD *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = 2617270297;
  v29 = 0;
  v28 = 0;
  result = 2617270278;
  if (a3 && a5)
  {
    inited = InitRsrcFunction(a1, a2, &v28);
    if (inited < 0)
    {
      return inited & 0xFDFFF | 0x9C002000;
    }

    v12 = heap_Calloc(*(v28 + 8), 1, 144);
    if (!v12)
    {
      return 2617270282;
    }

    v13 = v12;
    *a5 = 0;
    *(a5 + 8) = 0;
    v14 = v28;
    *(v12 + 136) = v28;
    if (a4 < 8)
    {
      goto LABEL_6;
    }

    if (*a3 != 11000)
    {
      goto LABEL_15;
    }

    *(v12 + 40) = 100 * *(a3 + 2);
    Int = paramc_ParamGetInt(*(v14 + 40), "decoderoverheadframes", &v29);
    v19 = v29;
    if (!v29)
    {
      v19 = 2;
    }

    if (Int < 0)
    {
      v19 = 2;
    }

    *(v13 + 80) = v19;
    if (*(a3 + 6))
    {
      goto LABEL_15;
    }

    if (a4 - 8 < 0x18)
    {
      goto LABEL_6;
    }

    v20 = *(a3 + 8);
    *(v13 + 100) = v20;
    if (v20)
    {
      v21 = *(*(v13 + 136) + 32);
      v22 = "incompatible coded speech base format version (%d > (expected) %d)";
      v27 = v20;
LABEL_20:
      log_OutText(v21, "GSMCSCH1", 0, 0, v22, v16, v17, v18, v27);
      goto LABEL_15;
    }

    *(v13 + 52) = *(a3 + 12);
    *(v13 + 48) = *(a3 + 16);
    v23 = *(a3 + 20);
    *(v13 + 44) = v23;
    if (v23 <= 15999)
    {
      if (v23 == 8000)
      {
        goto LABEL_28;
      }

      v24 = 12000;
    }

    else
    {
      if (v23 == 16000 || v23 == 48000)
      {
        goto LABEL_28;
      }

      v24 = 24000;
    }

    if (v23 != v24)
    {
      goto LABEL_15;
    }

LABEL_28:
    *(v13 + 76) = *(a3 + 24);
    *(v13 + 72) = *(a3 + 28);
    if ((a4 & 0xFFFFFFFC) != 0x20)
    {
      v25 = *(a3 + 32);
      *(v13 + 96) = v25;
      if (!v25)
      {
        goto LABEL_15;
      }

      if (8 * v25 + 44 == a4)
      {
        *(v13 + 88) = a3 + 36;
        if (*(v13 + 48) == v23)
        {
          v26 = 20 * (v23 / 0x3E8u);
          *(v13 + 56) = v26;
          *(v13 + 60) = v26;
          result = smcsch1spi_GenDecInitializeLowLevelDecoder(v13);
          v6 = result;
          if (!result)
          {
            *a5 = v13;
            *(a5 + 8) = 448;
            return result;
          }

          goto LABEL_15;
        }

        v21 = *(*(v13 + 136) + 32);
        v22 = "incompatible coded speech base: the speech base was encoded using internal resampling, but it's being decoded without it";
        goto LABEL_20;
      }
    }

LABEL_6:
    v6 = 2617270281;
LABEL_15:
    smcsch1spi_GenDecDestroyLowLevelDecoder(v13);
    heap_Free(*(v28 + 8), v13);
    return v6;
  }

  return result;
}

uint64_t smcsch1spi_GenDecInitializeLowLevelDecoder(uint64_t a1)
{
  v2 = 2617270282;
  smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
  v3 = *(*(a1 + 136) + 8);
  size = opus_decoder_get_size(1);
  v5 = heap_Alloc(v3, size);
  *a1 = v5;
  if (!v5)
  {
    goto LABEL_4;
  }

  if (opus_decoder_init(v5, *(a1 + 44), 1u))
  {
    v2 = 2617270272;
LABEL_4:
    smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
    return v2;
  }

  *(a1 + 64) = 5760;
  v7 = heap_Alloc(*(*(a1 + 136) + 8), 11520);
  *(a1 + 8) = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  *(a1 + 32) = v7;
  *(a1 + 68) = 0;
  v8 = heap_Alloc(*(*(a1 + 136) + 8), 2 * *(a1 + 60));
  result = 0;
  *(a1 + 24) = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t *smcsch1spi_GenDecDestroyLowLevelDecoder(uint64_t *result)
{
  v1 = result;
  if (*result)
  {
    result = heap_Free(*(result[17] + 8), *result);
    *v1 = 0;
  }

  v2 = v1[2];
  if (v2)
  {
    result = heap_Free(*(v1[17] + 8), v2);
    v1[2] = 0;
  }

  v3 = v1[1];
  if (v3)
  {
    result = heap_Free(*(v1[17] + 8), v3);
    v1[1] = 0;
  }

  v4 = v1[3];
  if (v4)
  {
    result = heap_Free(*(v1[17] + 8), v4);
    v1[3] = 0;
  }

  return result;
}

uint64_t smcsch1spi_GenDecGetInfo(uint64_t a1, int a2, unsigned int *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v13 = 2617270272;
  if (!a1)
  {
    return 2617270280;
  }

  v14 = *a3;
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(v15 + 8 * v16);
  if (*a3 > v17)
  {
    *a3 = v17;
    v16 = *(a1 + 96);
    v14 = v17;
  }

  v37[0] = v14;
  v37[1] = 0;
  v18 = ssft_bsearch(v37, v15, v16, 8, smcsch1spi_CompareChunkIndexCells);
  *(a1 + 104) = v18;
  if (v18)
  {
    v25 = *v18;
    if (*a3 >= *v18 && (v26 = v18[2], *a3 < v26) && v18[1] <= v18[3])
    {
      v28 = *a3 - *v18 + *(a1 + 76);
      v29 = *a4 + v28 - 1;
      if (v29 + v25 >= v26)
      {
        v30 = v26 - v25;
        v29 = v30 - 1;
        *a4 = v30 - v28;
      }

      v31 = *(a1 + 60);
      *(a1 + 112) = v28 / v31;
      *(a1 + 116) = v29 / v31;
      v32 = *(a1 + 80);
      v33 = v28 / v31 - v32;
      if (v28 / v31 <= v32)
      {
        *(a1 + 120) = 0;
      }

      else
      {
        *(a1 + 120) = v33;
        if (v28 / v31 != v32)
        {
          v34 = *(a1 + 76);
          do
          {
            if (v28 >= v34 + v33 * v31)
            {
              break;
            }

            *(a1 + 120) = --v33;
          }

          while (v33);
        }
      }

      v35 = v18[1];
      *a6 = v35;
      *a7 = v18[3] - v35;
      *(a1 + 128) = *a4;
      *(a1 + 132) = v28;
      *(a1 + 124) = 0;
      *(a1 + 82) = 0;
      if (*a1)
      {
        if (opus_decoder_ctl(*a1, 4028, v19, v20, v21, v22, v23, v24, v36))
        {
          return 2617270272;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "inconsistent chunk index (sample and Byte offsets are not monotonically increasing)", v22, v23, v24, v36);
    }
  }

  else
  {
    log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "requested start of speech segment (sample %d) missing from speech base", v22, v23, v24, *a3);
    return 2617270281;
  }

  return v13;
}

uint64_t smcsch1spi_CompareChunkIndexCells(unsigned int *a1, unsigned int *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (v4 >= *a2)
    {
      return v4 >= a2[2];
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t smcsch1spi_GenDecClose(uint64_t *a1, int a2)
{
  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(a1, a2, NullHandle, v5))
  {
    return 0;
  }

  v6 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v6 & 0x80000000) == 0)
  {
    if (a1)
    {
      smcsch1spi_GenDecDestroyLowLevelDecoder(a1);
      heap_Free(*(a1[17] + 8), a1);
    }

    else
    {
      return 2617270280;
    }
  }

  return v6;
}

uint64_t smcsch1spi_GenDecProcess(uint64_t a1, int a2, char *a3, _DWORD *a4, char *a5, unsigned int *a6)
{
  v14 = safeh_HandleCheck(a1, a2, 448, 144);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  if (!a1)
  {
    return 2617270280;
  }

  v15 = *(a1 + 128);
  if (*a6 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *a6;
  }

  v51 = a6;
  v52 = a4;
  if (!v16)
  {
    goto LABEL_41;
  }

  v17 = *(a1 + 82);
  if (v16 <= v17)
  {
    memcpy(a5, *(a1 + 24), 2 * v16);
    memmove(*(a1 + 24), (*(a1 + 24) + 2 * v16), 2 * (*(a1 + 82) - v16));
    v21 = &a5[2 * v16];
    *(a1 + 82) -= v16;
    *(a1 + 128) -= v16;
    goto LABEL_42;
  }

  v18 = *a4;
  if (*a4 > 1u)
  {
    v19 = *(a1 + 124);
    v20 = a3;
    v21 = a5;
    v22 = v16;
    v50 = a3;
    while (1)
    {
      v23 = *(a1 + 120);
      v24 = v19 >= v23 && v19 < *(a1 + 112);
      v27 = *v20;
      v25 = v20 + 2;
      v26 = v27;
      if (!v27)
      {
        break;
      }

      if (v26 >= 0x2D01)
      {
        v47 = *(*(a1 + 136) + 32);
        v48 = "inconsistent packet payload size declared in frame header (%d Bytes > (expected) %d Bytes)";
        v49 = v26;
        goto LABEL_47;
      }

      v28 = v18 - 2;
      v18 = v28 - v26;
      if (v28 < v26)
      {
        log_OutText(*(*(a1 + 136) + 32), "GSMCSCH1", 0, 0, "missing required packet payload Bytes for decoding one frame (%d Bytes < (expected) %d Bytes)", v11, v12, v13, v28);
        return 2617270281;
      }

      v29 = *(a1 + 60);
      if (v19 >= v23)
      {
        v30 = v22;
        v31 = smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(a1, v25, v26);
        v14 = v31;
        if (v24)
        {
          if ((v31 & 0x80000000) != 0)
          {
            return v14;
          }

          v22 = v30;
          v14 = 0;
          *(a1 + 132) -= v29;
        }

        else
        {
          if ((v31 & 0x80000000) != 0)
          {
            return v14;
          }

          v32 = v21;
          v33 = v30;
          v34 = *(a1 + 132);
          if (v34)
          {
            v35 = v29 - v34;
            v36 = (*(a1 + 32) + 2 * v34);
            *(a1 + 132) = 0;
            v37 = *(a1 + 128);
            if (v37 >= v35)
            {
              LOWORD(v37) = v35;
            }
          }

          else
          {
            if (*(a1 + 82))
            {
              memcpy(v21, *(a1 + 24), 2 * *(a1 + 82));
              v38 = *(a1 + 82);
              v32 = &v21[2 * v38];
              v37 = *(a1 + 128) - v38;
              *(a1 + 128) = v37;
              v33 = v30 - v38;
              *(a1 + 82) = 0;
            }

            else
            {
              v37 = *(a1 + 128);
            }

            v36 = *(a1 + 32);
            if (v37 > *(a1 + 60))
            {
              LOWORD(v37) = v29;
            }
          }

          v39 = v37;
          v40 = v37 - v33;
          v41 = v32;
          if (v37 <= v33)
          {
            v44 = v33;
            memcpy(v32, v36, 2 * v37);
            v14 = 0;
            *(a1 + 128) -= v39;
            v21 = &v41[2 * v39];
            v22 = v44 - v39;
          }

          else
          {
            v42 = 2 * v33;
            v43 = v33;
            memcpy(*(a1 + 24), &v36[v42], 2 * (v37 - v33));
            *(a1 + 82) = v40;
            memcpy(v41, v36, v42);
            v14 = 0;
            *(a1 + 128) -= v43;
            v21 = &v41[2 * v43];
            v22 = 0;
          }
        }

        LODWORD(a3) = v50;
      }

      else
      {
        *(a1 + 132) -= v29;
      }

      v20 = &v25[v26];
      v19 = *(a1 + 124) + 1;
      *(a1 + 124) = v19;
      if (!v22 || v18 <= 1)
      {
        goto LABEL_43;
      }
    }

    v47 = *(*(a1 + 136) + 32);
    v48 = "null packet payload size declared in frame header";
LABEL_47:
    log_OutText(v47, "GSMCSCH1", 0, 0, v48, v11, v12, v13, v49);
    return 2617270272;
  }

  if (*(a1 + 82))
  {
    memcpy(a5, *(a1 + 24), 2 * v17);
    v45 = *(a1 + 82);
    v21 = &a5[2 * v45];
    *(a1 + 128) -= v45;
    *(a1 + 82) = 0;
  }

  else
  {
LABEL_41:
    v21 = a5;
  }

LABEL_42:
  LODWORD(v20) = a3;
LABEL_43:
  *v52 = v20 - a3;
  *v51 = (v21 - a5) >> 1;
  return v14;
}

uint64_t smcsch1spi_GenDecProcessOneFrameWithLowLevelDecoder(uint64_t a1, char *a2, int a3)
{
  v4 = opus_decode(*a1, a2, a3, *(a1 + 8), *(a1 + 64), 0);
  if ((v4 & 0x80000000) != 0)
  {
    v8 = 2617270272;
    v11 = *(*(a1 + 136) + 32);
    v12 = opus_strerror(v4);
    log_OutText(v11, "GSMCSCH1", 0, 0, "error during decoding: %s", v13, v14, v15, v12);
  }

  else
  {
    if (v4 >= 0x1681)
    {
      v8 = 2617270272;
      v9 = *(*(a1 + 136) + 32);
      v10 = "inconsistent number of decoded samples (%d samples > (expected) %d samples)";
LABEL_8:
      log_OutText(v9, "GSMCSCH1", 0, 0, v10, v5, v6, v7, v4);
      return v8;
    }

    if (v4 != *(a1 + 56))
    {
      v8 = 2617270272;
      v9 = *(*(a1 + 136) + 32);
      v10 = "inconsistent number of decoded samples (%d samples != (expected) %d samples)";
      goto LABEL_8;
    }

    return 0;
  }

  return v8;
}

uint64_t gsmc_sch1_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2617270273;
  }

  result = 0;
  *a2 = &dec_I_1;
  return result;
}

uint64_t opus_decoder_get_size(int a1)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  if (silk_Get_Decoder_Size(&v5))
  {
    return 0;
  }

  v5 = (v5 + 7) & 0xFFFFFFF8;
  return celt_decoder_get_size(a1) + v5 + 80;
}