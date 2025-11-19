uint64_t GSpeed_Meas_Update(int a1, double *a2, unsigned int a3, double *a4, _BOOL8 a5, _WORD *a6, double a7, double a8, double a9, double a10)
{
  v31[3] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v26 = 0.0;
    v18 = a7 - a4[3] * a9;
    a4[5] = a7;
    a4[6] = v18;
    v19 = __sincos_stret(a8 * 0.0174532925);
    Comp_GSpeed_Partial(v19.__cosval * a7, v19.__sinval * a7, a2, v31);
    v28 = 0;
    v20 = a1 + 2;
    v21 = 2;
    memset(v27, 0, sizeof(v27));
    do
    {
      *(v27 + v20--) = v31[v21--];
    }

    while (v21 != -1);
    *(v27 + a3) = v18;
    umeas(a5, a3, a10 * a10 * a4[4], v27, v30, v29, &v26, a4[7]);
    v22 = v26;
    if (v26 <= 0.0)
    {
      v23 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v22 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v26 * (v30[a3] * v30[a3]));
      v23 = *a4;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x29EDCA608];
  return v23 & 1;
}

void GncS03_07PosEventUpdate(__int128 *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("GncS03_07PosEventUpdate", 48, 1, 0x30uLL);
  if (v2)
  {
    v3 = v2;
    v4 = *a1;
    v5 = a1[1];
    *(v2 + 31) = *(a1 + 31);
    *v2 = v4;
    v2[1] = v5;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_POS_EVENT =>GNCP Client,%hhu,ID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncS03_07PosEventUpdate", *(v3 + 12), *(v3 + 7));
      LbsOsaTrace_WriteLog(8u, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(130, 134, 8522243, v3);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void GncS03_08SessRespSentInd(int a1, int a2, __int16 a3, char a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v8 = gnssOsa_Calloc("GncS03_08SessRespSentInd", 70, 1, 0x18uLL);
  if (v8)
  {
    v9 = v8;
    v8[12] = a4;
    *(v8 + 7) = a3;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCS_SESSION_RESP_SENT_IND =>GNCP ID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v10), "GNC", 73, "GncS03_08SessRespSentInd", *(v9 + 7), v9[12]);
      LbsOsaTrace_WriteLog(8u, __str, v11, 4, 1);
    }

    AgpsSendFsmMsg(130, 134, 8522499, v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t Hal18_HandleBaudResp(unsigned __int8 *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 > 0xF)
    {
      if (a1[2] == 66 && a1[3] == 85)
      {
        result = gnssOsa_SemRelease(g_HandleAckSem);
        if ((result & 1) == 0)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v11 = 1542;
            v12 = *__error();
            v10 = v6;
            v4 = "%10u %s%c %s: #%04hx HandleAckSem err,%d\n";
            goto LABEL_14;
          }
        }
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v13 = a1[3];
          v14 = a1[4];
          v11 = 1312;
          v12 = a1[2];
          v4 = "%10u %s%c %s: #%04hx resp MC,%u,MID,%u,MIDEx,%u\n";
          v10 = v7;
          goto LABEL_14;
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v11 = 515;
        v12 = a2;
        v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v4 = "%10u %s%c %s: #%04hx len,%u\n";
LABEL_14:
        v8 = snprintf(__str, 0x40FuLL, v4, v10, "HAL", 69, "Hal18_HandleBaudResp", v11, v12, v13, v14);
        result = LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = 513;
      v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = "%10u %s%c %s: #%04hx data\n";
      goto LABEL_14;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pos_protocol_PospCallback()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v14[20660] = *MEMORY[0x29EDCA608];
  if (!v2 || (v4 = v1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u or msg\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 69, "pos_protocol_PospCallback", 513, v3);
    v9 = __str;
LABEL_9:
    result = LbsOsaTrace_WriteLog(0x13u, v9, v8, 0, 1);
    goto LABEL_10;
  }

  v5 = v0;
  *__str = 0;
  memset_s(v14, 0x285A0uLL, 0, 0x285A0uLL);
  if ((v5 - 1) > 3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(v12, 0x410uLL);
    v10 = mach_continuous_time();
    v8 = snprintf(v12, 0x40FuLL, "%10u %s%c %s: #%04hx message,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "pos_protocol_PospCallback", 770, v5);
    v9 = v12;
    goto LABEL_9;
  }

  *&__str[4] = v3;
  *__str = v5;
  memcpy_s("pos_protocol_PospCallback", 61, v14, v3, v4, v3);
  result = Process_POSP_Response(__str);
LABEL_10:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Process_POSP_Response(unsigned __int8 *a1)
{
  v83 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "Process_POSP_Response");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "Process_POSP_Response", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_115;
    }

LABEL_114:
    bzero(__str, 0x410uLL);
    v76 = mach_continuous_time();
    v77 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v76), "PSP", 68, "Process_POSP_Response");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v77, 5, 1);
    goto LABEL_115;
  }

  v4 = *a1;
  if (*a1 == 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v29 = mach_continuous_time();
      v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: API,%u,status,%u,sessionId,%u\n", (*&g_MacClockTicksToMsRelation * v29), "PSP", 77, "TracePOSPContents", *(a1 + 3), *(a1 + 4), *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v30, 3, 1);
    }
  }

  else if (v4 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: eAIDREQ SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 73, "TracePOSPContents", *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 4, 1);
    }

    if (*(a1 + 2))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        v19 = *(a1 + 2);
        v20 = v19[2];
        v21 = v19[1];
        v22 = *v19;
        v23 = v19[3] == 0;
        v24 = 70;
        if (v23)
        {
          v25 = 70;
        }

        else
        {
          v25 = 84;
        }

        if (v22)
        {
          v26 = 84;
        }

        else
        {
          v26 = 70;
        }

        if (v21)
        {
          v27 = 84;
        }

        else
        {
          v27 = 70;
        }

        if (v20)
        {
          v24 = 84;
        }

        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IONO,%c,REFPOS,%c,REFTIME,%c,GPS req,%c\n", v18, "PSP", 77, "TracePOSPContents", v24, v27, v26, v25);
        LbsOsaTrace_WriteLog(0x13u, __str, v28, 3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v33 = mach_continuous_time();
      v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx General Assistance\n", (*&g_MacClockTicksToMsRelation * v33), "PSP", 87, "TracePOSPContents", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v34, 2, 1);
    }

    v35 = *(a1 + 3);
    if (v35)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v36 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(v35 + 4))
        {
          v37 = 84;
        }

        else
        {
          v37 = 70;
        }

        if (*(v35 + 5))
        {
          v38 = 84;
        }

        else
        {
          v38 = 70;
        }

        if (*(v35 + 8))
        {
          v39 = 84;
        }

        else
        {
          v39 = 70;
        }

        if (*(v35 + 7))
        {
          v40 = 84;
        }

        else
        {
          v40 = 70;
        }

        if (*(v35 + 9))
        {
          v41 = 84;
        }

        else
        {
          v41 = 70;
        }

        if (*(v35 + 10))
        {
          v42 = 84;
        }

        else
        {
          v42 = 70;
        }

        if (*(v35 + 6))
        {
          v43 = 84;
        }

        else
        {
          v43 = 70;
        }

        v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS AlmModelId,%u,ALM req,%c,AUX req,%c,Databits req,%c,EPHModelId,%u,EPHreq,%c,gpswk,%u,refMeasreq,%c,RTIreq,%c,SVType,%u,TOE,%u,TOELIMIT,%u,UTCreq,%c,NoOfSats,%u\n", v36, "PSP", 77, "TracePOSPContents", *(v35 + 13), v43, v42, v41, *(v35 + 14), v40, *(v35 + 16), v39, v38, *v35, *(v35 + 18), *(v35 + 19), v37, *(v35 + 20));
        LbsOsaTrace_WriteLog(0x13u, __str, v44, 3, 1);
      }

      if (*(v35 + 20))
      {
        v45 = 0;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v46 = mach_continuous_time();
            v47 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS index,%zu,SATID,%u,IODE,%u\n", (*&g_MacClockTicksToMsRelation * v46), "PSP", 77, "TracePOSPContents", v45, *(v35 + v45 + 21), *(v35 + 2 * v45 + 86));
            LbsOsaTrace_WriteLog(0x13u, __str, v47, 3, 1);
          }

          ++v45;
        }

        while (v45 < *(v35 + 20));
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v48 = mach_continuous_time();
      v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v48), "PSP", 87, "TracePOSPContents", 513);
      LbsOsaTrace_WriteLog(0x13u, __str, v49, 2, 1);
    }
  }

  else if (v4 == 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ePOSN v_FinalReport,%u,v_GnssMask,%u,v_SessionId,%u\n", (*&g_MacClockTicksToMsRelation * v5), "PSP", 77, "TracePOSPContents", a1[12], a1[13], *(a1 + 2));
      LbsOsaTrace_WriteLog(0x13u, __str, v6, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_Altitude,%u,v_AxisBearing,%u,v_Confidence,%u,v_DirectOfAlt,%u,v_FixType,%u,v_IncludedAngle,%u,v_InnerRadius,%u,v_Latitude,%u,v_Longitude,%d,v_OffsetAngle,%u,v_ShapeType,%u,v_SignOfLat,%u,v_Status,%u,v_UncertAltitude,%u,v_UncertSemiMajor,%u,v_UncertSemiMinor,%u,v_SpoofingMask,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "TracePOSPContents", *(a1 + 26), a1[56], a1[65], *(a1 + 15), *(a1 + 8), a1[66], *(a1 + 17), *(a1 + 11), *(a1 + 12), a1[67], *(a1 + 9), *(a1 + 10), *(a1 + 7), a1[64], a1[54], a1[55], *(a1 + 4));
      LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_VelType,%u,v_Bearing,%u,v_HorSpeed,%u,v_HorSpeedUnc,%u,v_VertDir,%u,v_VertSpeed,%u,v_VertSpeedUnc,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 77, "TracePOSPContents", *(a1 + 19), *(a1 + 40), *(a1 + 41), *(a1 + 44), a1[84], *(a1 + 43), *(a1 + 45));
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 3, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_DeltaGnssTod,%u,v_GnssTimeId,%u,v_GnssTodFrac,%u,v_GnssTodMs,%u,v_GnssTodUnc,%u,v_GpsTowMs,%u,v_GpsTowUnc,%u,v_RefDeltaCellTime,%u,GpsWkNum,%u,GpsLeapSec,%d,LocalBBTimeMs,%u\n", (*&g_MacClockTicksToMsRelation * v11), "PSP", 77, "TracePOSPContents", a1[107], *(a1 + 28), *(a1 + 52), *(a1 + 25), a1[106], *(a1 + 23), a1[96], *(a1 + 27), *(a1 + 59), *(a1 + 30), *(a1 + 31));
      LbsOsaTrace_WriteLog(0x13u, __str, v12, 3, 1);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%d\n", (*&g_MacClockTicksToMsRelation * v31), "PSP", 69, "TracePOSPContents", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v32, 0, 1);
  }

  if ((*a1 - 2) >= 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v63 = mach_continuous_time();
      v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgType,%u\n", (*&g_MacClockTicksToMsRelation * v63), "PSP", 69, "Process_POSP_Response", 770, *a1);
      LbsOsaTrace_WriteLog(0x13u, __str, v64, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v50 = *(a1 + 2);
  v79 = 1794;
  v81 = v50;
  v51 = operator new(0x285A8uLL, MEMORY[0x29EDC9418]);
  if (!v51)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v65 = mach_continuous_time();
      v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v65), "PSP", 69, "Process_POSP_Response", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v66, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v52 = v51;
  *v51 = 0;
  memset_s(v51 + 1, 0x285A0uLL, 0, 0x285A0uLL);
  v80 = v52;
  memcpy_s("Process_POSP_Response", 139, v52, 0x285A8u, a1, 0x285A8uLL);
  if (*a1 == 3)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v53 = mach_continuous_time();
      v54 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v53), "PSP", 68, "copyGnssAidReq");
      LbsOsaTrace_WriteLog(0x13u, __str, v54, 5, 1);
    }

    *(v52 + 2) = *(a1 + 2);
    if (*(a1 + 2))
    {
      v55 = gnssOsa_Calloc("copyGnssAidReq", 190, 1, 8uLL);
      v52[2] = v55;
      if (!v55)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v67 = mach_continuous_time();
          v68 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx General Assistance\n", (*&g_MacClockTicksToMsRelation * v67), "PSP", 69, "copyGnssAidReq", 1537);
          LbsOsaTrace_WriteLog(0x13u, __str, v68, 0, 1);
        }

        if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
        {
LABEL_111:
          if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v74 = mach_continuous_time();
            v75 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v74), "PSP", 69, "Process_POSP_Response", 770);
            LbsOsaTrace_WriteLog(0x13u, __str, v75, 0, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
          if (!result)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

LABEL_110:
        bzero(__str, 0x410uLL);
        v72 = mach_continuous_time();
        v73 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v72), "PSP", 68, "copyGnssAidReq");
        LbsOsaTrace_WriteLog(0x13u, __str, v73, 5, 1);
        goto LABEL_111;
      }

      memcpy_s("copyGnssAidReq", 194, v55, 8u, *(a1 + 2), 8uLL);
    }

    if (!*(a1 + 3))
    {
      goto LABEL_84;
    }

    v56 = gnssOsa_Calloc("copyGnssAidReq", 206, 1, 0xD8uLL);
    v52[3] = v56;
    if (v56)
    {
      memcpy_s("copyGnssAidReq", 210, v56, 0xD8u, *(a1 + 3), 0xD8uLL);
LABEL_84:
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v57 = mach_continuous_time();
        v58 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v57), "PSP", 68, "copyGnssAidReq");
        LbsOsaTrace_WriteLog(0x13u, __str, v58, 5, 1);
      }

      goto LABEL_86;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v69 = mach_continuous_time();
      v70 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GPS Assistance\n", (*&g_MacClockTicksToMsRelation * v69), "PSP", 69, "copyGnssAidReq", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v70, 0, 1);
    }

    v71 = v52[2];
    if (v71)
    {
      free(v71);
    }

    v52[2] = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

LABEL_86:
  if (!SuplPospPostMessage(&v79))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (!result)
    {
      goto LABEL_115;
    }

    goto LABEL_90;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v59 = mach_continuous_time();
    v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v59), "PSP", 69, "Process_POSP_Response", 1548, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v60, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
LABEL_90:
    bzero(__str, 0x410uLL);
    v61 = mach_continuous_time();
    v62 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v61), "PSP", 68, "Process_POSP_Response");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v62, 5, 1);
  }

LABEL_115:
  v78 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_WlMeas(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 68, "GNS_WlMeas");
    LbsOsaTrace_WriteLog(0x13u, __str, v4, 5, 1);
  }

  v23 = -1;
  v21 = 1539;
  v5 = operator new(0xC20uLL, MEMORY[0x29EDC9418]);
  if (!v5)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wlan Meas Msg\n", (*&g_MacClockTicksToMsRelation * v13), "PSP", 69, "GNS_WlMeas", 1537);
      LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "PSP", 68, "GNS_WlMeas");
    goto LABEL_15;
  }

  v6 = v5;
  for (i = 0; i != 3072; i += 48)
  {
    v8 = &v5[i];
    *(v8 + 63) = 0;
    *(v8 + 2) = 0uLL;
    *(v8 + 3) = 0uLL;
    *(v8 + 9) = 4294934527;
  }

  v22 = v5;
  memcpy(v5, a2, 0xC20uLL);
  if (SuplPospPostMessage(&v21))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v9), "PSP", 69, "GNS_WlMeas", 1548, v21);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    }

    MEMORY[0x29C29EB20](v6, 0x1000C400624F575);
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v11, "PSP", 68, "GNS_WlMeas");
LABEL_15:
    LbsOsaTrace_WriteLog(0x13u, __str, v12, 5, 1);
LABEL_16:
    v16 = 14;
    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 68, "GNS_WlMeas");
    v16 = 1;
    LbsOsaTrace_WriteLog(0x13u, __str, v20, 5, 1);
  }

  else
  {
    v16 = 1;
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t posp_TimerExpiry_Ind(int a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 68, "posp_TimerExpiry_Ind");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 5, 1);
  }

  wlan_session_info = find_wlan_session_info();
  if (a2 != 1 || wlan_session_info != a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TmrId,%u,TmrType,%u\n", v13);
LABEL_17:
    LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
    goto LABEL_18;
  }

  v20 = -1;
  v18 = 1539;
  v7 = operator new(0xC20uLL, MEMORY[0x29EDC9418]);
  if (!v7)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_18;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Wlan Meas Msg\n");
    goto LABEL_17;
  }

  v8 = 0;
  *v7 = 0;
  *(v7 + 4) = 0;
  *(v7 + 10) = 0;
  *(v7 + 20) = 0;
  v7[28] = 0;
  do
  {
    v9 = &v7[v8];
    *(v9 + 63) = 0;
    *(v9 + 2) = 0uLL;
    *(v9 + 3) = 0uLL;
    *(v9 + 9) = 4294934527;
    v8 += 48;
  }

  while (v8 != 3072);
  v19 = v7;
  *(v7 + 6) = 11;
  if (SuplPospPostMessage(&v18))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Message posting failed,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "posp_TimerExpiry_Ind", 1548, v18);
      LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

LABEL_18:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
LABEL_19:
    bzero(__str, 0x410uLL);
    v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v15, "PSP", 68, "posp_TimerExpiry_Ind");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v16, 5, 1);
  }

LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

double GM_Apply_LT_Slew(double *a1, __int16 *a2, double *a3, _WORD *a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = *a1 * 1000.0;
  v7 = -0.5;
  if (v6 > 0.0)
  {
    v7 = 0.5;
  }

  v8 = v6 + v7;
  if (v8 <= 2147483650.0)
  {
    if (v8 >= -2147483650.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x80000000;
    }
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  Inc_Local_Time(-v9, 604800, a3, a2);
  result = *a1 + v9 * -0.001;
  *a1 = result;
  a4[1] = v9;
  *a4 = 256;
  a4[2] = v9;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Transform_State(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  ECEF2Geo(a1 + 40, &WGS84_Datum, a1 + 176);
  v2 = STANAG_WGS84_Mean_Sea_Level((a1 + 176));
  v3 = __sincos_stret(*(a1 + 176));
  *(a1 + 224) = v3.__cosval;
  v4 = (a1 + 224);
  *(a1 + 200) = v2;
  v5 = __sincos_stret(*(a1 + 184));
  *(a1 + 208) = -(v3.__sinval * v5.__cosval);
  *(a1 + 216) = -(v3.__sinval * v5.__sinval);
  *(a1 + 232) = -v5.__sinval;
  *(a1 + 240) = v5.__cosval;
  *(a1 + 248) = 0;
  *(a1 + 256) = -(v3.__cosval * v5.__cosval);
  *(a1 + 264) = -(v3.__cosval * v5.__sinval);
  *(a1 + 272) = -v3.__sinval;
  *(a1 + 280) = v3.__cosval;
  v6 = (a1 + 288);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = 3;
  do
  {
    v11 = *(v4 - 1) * v8 + *(v4 - 2) * v7;
    v12 = *v4;
    v4 += 3;
    *v6++ = v11 + v12 * v9;
    --v10;
  }

  while (v10);
  v13 = *(a1 + 288) * *(a1 + 288) + *(a1 + 296) * *(a1 + 296);
  *(a1 + 312) = sqrt(v13 + *(a1 + 304) * *(a1 + 304));
  *(a1 + 320) = sqrt(v13);
  v14 = *MEMORY[0x29EDCA608];
}

double GAL_AlmInt2Real(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v2 = vcvtd_n_f64_u32(*(a1 + 16), 0x10uLL);
  *(a2 + 16) = vcvtd_n_f64_s32(*(a1 + 14), 9uLL);
  *(a2 + 24) = v2;
  v3 = *(a1 + 24) * 0.0000958737992;
  v4 = *(a1 + 26) * 0.0000958737992;
  v5 = *(a1 + 20) * 0.0000958737992;
  *(a2 + 48) = *(a1 + 22) * 3.6572952e-10;
  *(a2 + 56) = v3;
  v6 = *(a1 + 18) * 0.000191747598;
  *(a2 + 12) = 600 * *(a1 + 12);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  v7 = vcvtd_n_f64_s32(*(a1 + 28), 0x13uLL);
  v8 = *(a1 + 30);
  *(a2 + 64) = v4;
  *(a2 + 72) = v7;
  result = v8 * 3.63797881e-12;
  *(a2 + 80) = v8 * 3.63797881e-12;
  *(a2 + 89) = *(a1 + 33);
  *(a2 + 90) = *(a1 + 34);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Init_DB_SA_Assistance(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  *a2 = 1542;
  *(a2 + 104) = result + 367;
  *(a2 + 112) = result + 301;
  *(a2 + 120) = result + 307;
  *(a2 + 128) = result + 313;
  *(a2 + 136) = result + 319;
  *(a2 + 144) = result + 325;
  *(a2 + 152) = result + 331;
  *(a2 + 160) = result + 337;
  *(a2 + 168) = result + 343;
  *(a2 + 176) = result + 349;
  *(a2 + 184) = result + 355;
  *(a2 + 192) = result + 361;
  *(a2 + 8) = result + 376;
  *(a2 + 16) = result + 378;
  *(a2 + 24) = result + 380;
  *(a2 + 32) = result + 382;
  *(a2 + 40) = result + 384;
  *(a2 + 48) = result + 386;
  *(a2 + 56) = result + 388;
  *(a2 + 64) = result + 390;
  *(a2 + 72) = result + 392;
  *(a2 + 80) = result + 394;
  *(a2 + 88) = result + 396;
  *(a2 + 96) = result + 398;
  *(a2 + 200) = result + 21000;
  *(a2 + 208) = result + 19172;
  *(a2 + 216) = result + 19244;
  *(a2 + 224) = result + 19316;
  *(a2 + 232) = result + 19388;
  *(a2 + 240) = result + 19416;
  *(a2 + 248) = result + 19608;
  *(a2 + 256) = result + 20040;
  *(a2 + 264) = result + 20184;
  *(a2 + 272) = result + 20328;
  *(a2 + 280) = result + 20472;
  *(a2 + 288) = result + 20616;
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GN_ExtA_Set_Device_Motion_State(unsigned int *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Device_Motion_State"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v6 = (p_NA + 301);
        v7 = (p_NA + 302);
        *(p_NA + 306) = *(p_NA + 305);
        *v7 = *v6;
        memmove((v5 + 19184), (v5 + 19172), 0x3CuLL);
        v2 = 1;
        *(v5 + 301) = 1;
        ++*(v5 + 378);
        v8 = a1[2];
        *(v5 + 19172) = *a1;
        *(v5 + 19180) = v8;
        Debug_Log_ExtA_DMS(a1);
        goto LABEL_7;
      }

      v10 = a1[2];
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v9 = a1[1];
      EvCrt_v("GN_ExtA_Set_Device_Motion_State: FAILED: Mov_State = %d > GN_EXTA_DMS_MOVING, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_User_Activity_Context(unsigned int *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Activity_Context"))
  {
    if (a1[1] < 12)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v6 = (p_NA + 307);
        *(p_NA + 312) = *(p_NA + 311);
        *(v5 + 308) = *v6;
        memmove((v5 + 19256), (v5 + 19244), 0x3CuLL);
        v2 = 1;
        *(v5 + 307) = 1;
        ++*(v5 + 380);
        v7 = a1[2];
        *(v5 + 19244) = *a1;
        *(v5 + 19252) = v7;
        Debug_Log_ExtA_UAC(a1);
        goto LABEL_7;
      }

      v9 = a1[2];
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v8 = a1[1];
      EvCrt_v("GN_ExtA_Set_User_Activity_Context: FAILED: Act_Context = %d > GN_EXTA_UAC_SKY_DIVING, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Fixed_In_Vehicle(unsigned int *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Fixed_In_Vehicle"))
  {
    if (a1[1] < 4)
    {
      if (a1[2] < 4)
      {
        v5 = p_NA;
        v6 = (p_NA + 313);
        v7 = (p_NA + 314);
        *(p_NA + 318) = *(p_NA + 317);
        *v7 = *v6;
        memmove((v5 + 19328), (v5 + 19316), 0x3CuLL);
        v2 = 1;
        *(v5 + 313) = 1;
        ++*(v5 + 382);
        v8 = a1[2];
        *(v5 + 19316) = *a1;
        *(v5 + 19324) = v8;
        Debug_Log_ExtA_FIV(a1);
        goto LABEL_7;
      }

      v10 = a1[2];
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Reliab = %d > GN_EXTA_MAR_HIGH, Out of range!");
    }

    else
    {
      v9 = a1[1];
      EvCrt_v("GN_ExtA_Set_Fixed_In_Vehicle: FAILED: FIV_Ind = %d > GN_EXTA_FIV_KNOWN_FIXED, Out of range!");
    }
  }

  v2 = 0;
LABEL_7:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Sig_Env_Sev(signed int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Sig_Env_Sev"))
  {
    if (a1 < 8)
    {
      v3 = p_NA;
      v4 = (p_NA + 319);
      *(p_NA + 324) = *(p_NA + 323);
      *(v3 + 320) = *v4;
      v5 = *(v3 + 19404);
      *(v3 + 19392) = *(v3 + 19388);
      *(v3 + 19408) = v5;
      v2 = 1;
      *(v3 + 319) = 1;
      ++*(v3 + 384);
      *(v3 + 19388) = a1;
      Debug_Log_ExtA_SES(a1);
      goto LABEL_6;
    }

    EvCrt_v("GN_ExtA_Set_Sig_Env_Sev:    FAILED:  SES_Ind = %d  > GN_EXTA_SES_D_URBAN_CAN, Out of range !", a1);
  }

  v2 = 0;
LABEL_6:
  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t GN_ExtA_Set_Altitude(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Altitude"))
  {
    v2 = *(a1 + 8);
    if (v2 < -500.0 || v2 > 9000.0)
    {
      EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Altitude = %g <%d or >%d, Out of range!");
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0.01 || v3 > 650.0)
      {
        v12 = *(a1 + 16);
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Sigma_Altitude = %g <=0.01m or >650m, Out of range!");
      }

      else
      {
        if (*(a1 + 24) < 4)
        {
          v7 = p_NA;
          v8 = (p_NA + 325);
          v9 = (p_NA + 326);
          *(p_NA + 330) = *(p_NA + 329);
          *v9 = *v8;
          memmove((v7 + 19448), (v7 + 19416), 0xA0uLL);
          v4 = 1;
          *(v7 + 325) = 1;
          ++*(v7 + 386);
          v10 = *(a1 + 16);
          *(v7 + 19416) = *a1;
          *(v7 + 19432) = v10;
          Debug_Log_ExtA_Alt(a1);
          goto LABEL_11;
        }

        v11 = *(a1 + 24);
        EvCrt_v("GN_ExtA_Set_Altitude: FAILED: Trust = %d > GN_EXTA_TRUST_HIGH, Out of range!");
      }
    }
  }

  v4 = 0;
LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_ExtA_Set_Map_Vector_Seg(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Map_Vector_Seg"))
  {
    goto LABEL_21;
  }

  if (fabs(*(a1 + 8)) > 90.0)
  {
    v15 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 16);
  if (v2 < -180.0 || v2 > 360.0)
  {
    v16 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    goto LABEL_21;
  }

  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3 < -500.0 || v3 > 6000.0)
    {
      EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Height = %g <%d or >%d, Out of range!");
      goto LABEL_21;
    }
  }

  v4 = *(a1 + 40);
  if (v4 < -180.0 || v4 > 360.0)
  {
    v17 = *(a1 + 40);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Direction = %d <-180 or >+360, Out of range!");
    goto LABEL_21;
  }

  v5 = *(a1 + 48);
  if (v5 <= 0.0 || v5 > 9999.0)
  {
    v18 = *(a1 + 48);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Length = %g < 0 or > 9999, Out of range!");
    goto LABEL_21;
  }

  v6 = *(a1 + 56);
  if (v6 <= 0.0 || v6 > 999.0)
  {
    v19 = *(a1 + 56);
    EvCrt_v("GN_ExtA_Set_Map_Vector_Seg: FAILED: Width = %g < 0 or > 999, Out of range!");
    goto LABEL_21;
  }

  v7 = p_NA;
  v8 = (p_NA + 331);
  *(p_NA + 336) = *(p_NA + 335);
  *(v7 + 332) = *v8;
  memmove((v7 + 19680), (v7 + 19608), 0x168uLL);
  v9 = 1;
  *(v7 + 331) = 1;
  ++*(v7 + 388);
  *(v7 + 19608) = *a1;
  v11 = *(a1 + 32);
  v10 = *(a1 + 48);
  v12 = *(a1 + 16);
  *(v7 + 19672) = *(a1 + 64);
  *(v7 + 19640) = v11;
  *(v7 + 19656) = v10;
  *(v7 + 19624) = v12;
  Debug_Log_ExtA_MapV(a1);
LABEL_22:
  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t GN_ExtA_Set_Speed_Constraint(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (Is_GN_API_Set_Allowed("GN_ExtA_Set_Speed_Constraint"))
  {
    if (*(a1 + 4) < 86400001)
    {
      v2 = *(a1 + 8);
      if (v2 >= 0.0)
      {
        v3 = *(a1 + 16);
        if (v3 >= 0.0 && v3 <= 100.0)
        {
          if (v3 >= v2)
          {
            v8 = p_NA;
            v9 = (p_NA + 337);
            v10 = (p_NA + 338);
            *(p_NA + 342) = *(p_NA + 341);
            *v10 = *v9;
            memmove((v8 + 20064), (v8 + 20040), 0x78uLL);
            v5 = 1;
            *(v8 + 337) = 1;
            ++*(v8 + 390);
            v11 = *(a1 + 16);
            *(v8 + 20040) = *a1;
            *(v8 + 20056) = v11;
            Debug_Log_ExtA_SpdC(a1);
            goto LABEL_14;
          }

          v15 = *(a1 + 8);
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g Speed_Upper = %g , Mis-match!");
        }

        else
        {
          v14 = *(a1 + 16);
          EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Upper = %g < 0 or > 100 m/s , Out of range!");
        }
      }

      else
      {
        v13 = *(a1 + 8);
        EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Speed_Lower = %g < 0, Out of range!");
      }
    }

    else
    {
      v12 = *(a1 + 4);
      EvCrt_v("GN_ExtA_Set_Speed_Constraint: FAILED: Duration = %d , Out of range!");
    }
  }

  v5 = 0;
LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GN_ExtA_Set_Along_Track_Vel(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Along_Track_Vel"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 100.0)
  {
    v8 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: Velocity = %g > +/-100.0 m/s, Out of range!");
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v9 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Along_Track_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = (p_NA + 343);
  *(p_NA + 348) = *(p_NA + 347);
  *(v2 + 344) = *v3;
  memmove((v2 + 20208), (v2 + 20184), 0x78uLL);
  v4 = 1;
  *(v2 + 343) = 1;
  ++*(v2 + 392);
  v5 = *(a1 + 16);
  *(v2 + 20184) = *a1;
  *(v2 + 20200) = v5;
  Debug_Log_ExtA_AT_Vel(a1);
LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_ExtA_Set_Vertical_Vel(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Vertical_Vel"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 100.0)
  {
    v9 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: Velocity = %g > +/-100 m/s, Out of range!");
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v10 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_Vertical_Vel: FAILED: RMS_Vel = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = (p_NA + 349);
  v4 = (p_NA + 350);
  *(p_NA + 354) = *(p_NA + 353);
  *v4 = *v3;
  memmove((v2 + 20352), (v2 + 20328), 0x78uLL);
  v5 = 1;
  *(v2 + 349) = 1;
  ++*(v2 + 394);
  v6 = *(a1 + 16);
  *(v2 + 20328) = *a1;
  *(v2 + 20344) = v6;
  Debug_Log_ExtA_V_Vel(a1);
LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t GN_ExtA_Set_User_Heading(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_User_Heading"))
  {
    goto LABEL_7;
  }

  if (fabs(*(a1 + 8)) > 360.0)
  {
    v8 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: Heading = %g > +/-360.0, Out of range!");
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 0.0)
  {
    v9 = *(a1 + 16);
    EvCrt_v("GN_ExtA_Set_User_Heading: FAILED: RMS_Heading = %g <=0, Out of range!");
    goto LABEL_7;
  }

  v2 = p_NA;
  v3 = (p_NA + 355);
  *(p_NA + 360) = *(p_NA + 359);
  *(v2 + 356) = *v3;
  memmove((v2 + 20496), (v2 + 20472), 0x78uLL);
  v4 = 1;
  *(v2 + 355) = 1;
  ++*(v2 + 396);
  v5 = *(a1 + 16);
  *(v2 + 20472) = *a1;
  *(v2 + 20488) = v5;
  Debug_Log_ExtA_Heading(a1);
LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GN_ExtA_Set_Tunnel_End_Point(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!Is_GN_API_Set_Allowed("GN_ExtA_Set_Tunnel_End_Point"))
  {
    goto LABEL_13;
  }

  if (fabs(*(a1 + 8)) <= 90.0)
  {
    v2 = *(a1 + 16);
    if (v2 < -180.0 || v2 > 360.0)
    {
      v15 = *(a1 + 16);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Longitude = %g <-180.0 or >360.0, Out of range!");
    }

    else if (*(a1 + 24) <= 0.0)
    {
      v16 = *(a1 + 24);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Sig = %g <=0.0, Out of range!");
    }

    else if (*(a1 + 32) <= 0.0)
    {
      v17 = *(a1 + 32);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMin_Sig = %g <=0.0, Out of range!");
    }

    else
    {
      if (*(a1 + 40) < 0xB4)
      {
        if (*(a1 + 42) == 1)
        {
          v6 = *(a1 + 48);
          if (v6 < -500.0 || v6 > 6000.0)
          {
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height = %g <%d or >%d, Out of range!");
            goto LABEL_13;
          }

          if (*(a1 + 56) <= 0.0)
          {
            v18 = *(a1 + 56);
            EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Height_Sig = %g <=0.0, Out of range!");
            goto LABEL_13;
          }
        }

        v7 = p_NA;
        v8 = (p_NA + 361);
        v9 = (p_NA + 362);
        *(p_NA + 366) = *(p_NA + 365);
        *v9 = *v8;
        memmove((v7 + 20680), (v7 + 20616), 0x140uLL);
        v3 = 1;
        *(v7 + 361) = 1;
        ++*(v7 + 398);
        v10 = *(a1 + 48);
        v12 = *a1;
        v11 = *(a1 + 16);
        *(v7 + 20648) = *(a1 + 32);
        *(v7 + 20664) = v10;
        *(v7 + 20616) = v12;
        *(v7 + 20632) = v11;
        Debug_Log_ExtA_Tunnel_End_Point(a1);
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: SMaj_Brg = %d <0 or >=180, Out of range!");
    }
  }

  else
  {
    v13 = *(a1 + 8);
    EvCrt_v("GN_ExtA_Set_Tunnel_End_Point: FAILED: Latitude = %g <-90.0 or >90.0, Out of range!");
  }

LABEL_13:
  v3 = 0;
LABEL_14:
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

double Comp_SVrange_Sag_Corr(float64x2_t *a1, double *a2, float64x2_t *a3, float64x2_t *a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = vsubq_f64(*a4, *a3);
  v18 = v4;
  v5 = a4[1].f64[0] - a3[1].f64[0];
  v19 = v5;
  v6 = 0.0;
  v7 = 2;
  do
  {
    v6 = v6 + v18.f64[v7] * v18.f64[v7];
    v8 = v7-- + 1;
  }

  while (v8 > 1);
  v9 = 0;
  v10 = sqrt(v6);
  *a1 = vdivq_f64(v4, vdupq_lane_s64(*&v10, 0));
  a1[1].f64[0] = v5 / v10;
  v11 = vmulq_f64(*a4, xmmword_29975D2A0);
  v16 = vextq_s8(v11, v11, 8uLL);
  v17 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + *&v16.i64[v9] * v18.f64[v9];
    ++v9;
  }

  while (v9 != 3);
  v13 = v12 * 0.00000000333564095;
  *a2 = v13;
  v14 = *MEMORY[0x29EDCA608];
  return v10 - v13;
}

BOOL lsim23_02GnmStopEarlyStartSession(char a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("lsim23_02GnmStopEarlyStartSession", 62, 1, 0x10uLL);
  v3 = v2;
  if (v2)
  {
    v2[12] = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_IND => GNM\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_02GnmStopEarlyStartSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8604163, v3);
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim23_11HandleEcallStartInd()
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ECALL_START_IND\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  g_LsimEcallOngoing = 1;
  v4 = gnssOsa_Calloc("lsim23_01GnmStartEarlyStartSession", 41, 1, 0xCuLL);
  if (v4)
  {
    v5 = v4;
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_START_IND => GNM\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_01GnmStartEarlyStartSession");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(131, 128, 8603907, v5);
  }

  else
  {
    lsim23_04SendApiStatus(0, 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "lsim23_11HandleEcallStartInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim23_04SendApiStatus(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_04SendApiStatus");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (g_GnsEcallCallback)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:API_STATUS =>EcallCB,Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_04SendApiStatus", a1, a2);
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }

    g_GnsEcallCallback(a1, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ECALL\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 87, "lsim23_04SendApiStatus", 258);
    LbsOsaTrace_WriteLog(0xCu, __str, v9, 2, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "LSM", 73, "lsim23_04SendApiStatus");
    result = LbsOsaTrace_WriteLog(0xCu, __str, v12, 4, 1);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t lsim23_12HandleEcallStopInd()
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v1, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNS_LSIM_ECALL_STOP_IND\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  g_LsimEcallOngoing = 0;
  if (!lsim23_02GnmStopEarlyStartSession(1))
  {
    lsim23_04SendApiStatus(1, 0);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_12HandleEcallStopInd");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim23_15HandleEarlyStartStartRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_START_RSP\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  lsim23_04SendApiStatus(0, *(a1 + 12));
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_15HandleEarlyStartStartRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim23_16HandleEarlyStartStopRsp(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_EARLYSTART_STOP_RSP\n", (*&g_MacClockTicksToMsRelation * v4), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v5, 4, 1);
  }

  if (*(a1 + 16) == 1)
  {
    lsim23_04SendApiStatus(1, *(a1 + 12));
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "lsim23_16HandleEarlyStartStopRsp");
    LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t lsim23_21EcallCbInit(uint64_t result)
{
  v1 = result;
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
LABEL_2:
    g_GnsEcallCallback = v1;
    goto LABEL_3;
  }

  if (g_GnsEcallCallback)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx DeRegistering\n", (*&g_MacClockTicksToMsRelation * v3), "LSM", 73, "lsim23_21EcallCbInit", 513);
      result = LbsOsaTrace_WriteLog(0xCu, __str, v4, 4, 1);
    }

    goto LABEL_2;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xCu, 2, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CbPtr\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 87, "lsim23_21EcallCbInit", 513);
    result = LbsOsaTrace_WriteLog(0xCu, __str, v6, 2, 1);
  }

LABEL_3:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GNS_EcallInitialize(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallInitialize");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = 1;
  v5 = gnssOsa_Calloc("GNS_EcallInitialize", 224, 1, 0x18uLL);
  if (v5)
  {
    v5[3] = 1;
    *(v5 + 2) = a1;
    AgpsSendFsmMsg(131, 131, 8635139, v5);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "LSM", 73, "GNS_EcallInitialize");
      LbsOsaTrace_WriteLog(0xCu, __str, v7, 4, 1);
    }
  }

  else
  {
    v4 = 6;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t GNS_EcallStart(char a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallStart");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_EcallStart", 256, 1, 0x10uLL);
  if (v4)
  {
    v4[12] = a1;
    AgpsSendFsmMsg(131, 131, 8631299, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_EcallStart");
      v7 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EcallStart");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    v7 = 6;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t GNS_EcallStop(char a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "LSM", 73, "GNS_EcallStop");
    LbsOsaTrace_WriteLog(0xCu, __str, v3, 4, 1);
  }

  v4 = gnssOsa_Calloc("GNS_EcallStop", 286, 1, 0x10uLL);
  if (v4)
  {
    v4[12] = a1;
    AgpsSendFsmMsg(131, 131, 8631555, v4);
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "LSM", 73, "GNS_EcallStop");
      v7 = 1;
      LbsOsaTrace_WriteLog(0xCu, __str, v6, 4, 1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xCu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "LSM", 73, "GNS_EcallStop");
      LbsOsaTrace_WriteLog(0xCu, __str, v9, 4, 1);
    }

    v7 = 6;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t Comp_CurrState(unsigned int a1, int a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 184);
  if (v6)
  {
    *(a4 + 132) = *(a3 + 180);
    *(a4 + 128) = *(a3 + 176);
    *(a4 + 120) = v6;
    v7 = (*(a3 + 160) + 604800 * (*(a3 + 164) - a2));
    *(a4 + 124) = *(a3 + 166);
    v8 = a5 - v7;
    if (fabs(a6) > 0.1)
    {
      v8 = v8 + a6 / -299792458.0 - *(a3 + 96);
    }

    *a4 = v8;
    v9 = fabs(v8);
    if (v9 >= a1)
    {
      result = 0;
    }

    else
    {
      v10 = v8 * v8;
      v11 = v8 * v8 * 0.5;
      v12 = (a3 + 48);
      v13 = (a4 + 32);
      v14 = 3;
      do
      {
        *(v13 - 3) = *(v12 - 6) + *(v12 - 3) * v8 + *v12 * v11 + v12[3] * (v8 * v11 * 0.333333333);
        *v13++ = *(v12 - 3) + *v12 * v8 + v12[3] * v11;
        ++v12;
        --v14;
      }

      while (v14);
      v15 = *(a3 + 104);
      v16 = *(a3 + 96) + v8 * v15;
      *(a4 + 56) = v16;
      *(a4 + 64) = v15;
      v17 = *(a3 + 136);
      v18 = *(a3 + 120);
      *(a4 + 112) = *(a3 + 152);
      *(a4 + 80) = v18;
      *(a4 + 96) = v17;
      *(a4 + 56) = v16 - *(a4 + 80);
      if (v9 <= 30.0)
      {
        v19 = *(a3 + 112);
      }

      else
      {
        v19 = *(a3 + 112) + v10 * (v10 * 8.0e-10 + 0.00003) * (v10 * (v10 * 8.0e-10 + 0.00003));
      }

      *(a4 + 72) = v19;
      result = 1;
    }
  }

  else
  {
    result = 0;
    *(a4 + 125) = 0;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void LcsSuplGlueLayer::~LcsSuplGlueLayer(LcsSuplGlueLayer *this)
{
  v2 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88CC8;
  *(this + 1) = &unk_2A1F88D30;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v1 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88CC8;
  *(this + 1) = &unk_2A1F88D30;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t LcsSuplGlueLayer::GetInstance(LcsSuplGlueLayer *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (LcsSuplGlueLayer::GetInstance(void)::pred_lcsSuplglueLayer != -1)
  {
    dispatch_once(&LcsSuplGlueLayer::GetInstance(void)::pred_lcsSuplglueLayer, &__block_literal_global_6);
  }

  result = LcsSuplGlueLayer::m_suplgluelayer_handle;
  if (!LcsSuplGlueLayer::m_suplgluelayer_handle)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "LcsSuplGlueLayer.cpp", 69, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void *___ZN16LcsSuplGlueLayer11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x30uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *result = &unk_2A1F88CC8;
    result[1] = &unk_2A1F88D30;
    *(result + 6) = 0;
    *(result + 4) = 0;
    result[4] = 0;
    result[5] = 0;
  }

  LcsSuplGlueLayer::m_suplgluelayer_handle = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::GenerateRequestId(LcsSuplGlueLayer *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (v2 <= 0xFE)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 4) = v3;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: new requestID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "GenerateRequestId", *(this + 4));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  result = *(this + 4);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::ConnectReq(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (!v4)
  {
LABEL_4:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (!IsLoggingAllowed)
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ConnectReq", 2052, a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
LABEL_6:
    result = 0;
    goto LABEL_31;
  }

  while (*v4 != a2)
  {
    v4 = *(v4 + 8);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v25 = -1;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v28 = 0;
  v29 = -1;
  v30 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 73, "ConnectReq", a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v11, 4, 1);
  }

  v12 = *a3;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 3;
      goto LABEL_21;
    }

    if (v12 == 3)
    {
      v13 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (*a3)
  {
    if (v12 == 1)
    {
      v13 = 2;
LABEL_21:
      v27 = v13;
      goto LABEL_22;
    }

LABEL_16:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx TCP/IP AddressType,%u\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "ConnectReq", 515, *a3);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    }

    goto LABEL_22;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx AddressType is Not set\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ConnectReq", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
  }

LABEL_22:
  v18 = a3[31];
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a3 + 8;
    if (!a3[31])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v19 = *(a3 + 1);
  v18 = *(a3 + 2);
  if (v18)
  {
LABEL_24:
    memmove(v26, v19, v18);
  }

LABEL_25:
  v29 = *(a3 + 16);
  v30 = 0;
  Trace_GN_SUPL_Connect_Req_Parms(&v25);
  if (!GN_SUPL_Connect_Req_Out(*(v4 + 16), &v25))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Connection rejected\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ConnectReq", 2305);
    LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
    goto LABEL_6;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connection accepted\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 73, "ConnectReq");
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 4, 1);
  }

  result = 1;
LABEL_31:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t non-virtual thunk toLcsSuplGlueLayer::ConnectReq(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 - 8;

  return LcsSuplGlueLayer::ConnectReq(v4, a2, a3);
}

void LcsSuplGlueLayer::MeasurePositionRsp(uint64_t a1, __int16 *a2, unsigned __int8 *a3, int a4)
{
  v51 = *MEMORY[0x29EDCA608];
  LcsFunctionEntryExitTrace::LcsFunctionEntryExitTrace(v49, 184, "MeasurePositionRsp");
  v8 = *(a1 + 40);
  if (!v8)
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "MeasurePositionRsp", 2052, a4);
      LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    goto LABEL_54;
  }

  while (*v8 != a4)
  {
    v8 = *(v8 + 8);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  LODWORD(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  *(&v42 + 6) = 0;
  HIWORD(v42) = -1;
  v43 = 0;
  v44 = 0;
  v48 = 0;
  v46 = 0uLL;
  v45 = -1;
  v47 = 0;
  if (*a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: resultCode,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "MeasurePositionRsp", *a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
    }

    v13 = *a2;
    if (v13 == 65520)
    {
      v23 = *(a2 + 2);
      if (v23 == 15)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Positioning Not Permitted\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 69, "MeasurePositionRsp", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v29, 0, 1);
        }

        v16 = 3;
      }

      else if (v23 == 6)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v24 = mach_continuous_time();
          v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL Pos Method Failure\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "MeasurePositionRsp", 2306);
          LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
        }

        v16 = 1;
      }

      else
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v30 = mach_continuous_time();
          v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Server Error\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 69, "MeasurePositionRsp", 2307);
          LbsOsaTrace_WriteLog(0x12u, __str, v31, 0, 1);
        }

        v16 = 4;
      }
    }

    else if (v13 == 65519)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Unknown\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "MeasurePositionRsp", 2305);
        LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
      }

      v16 = 8;
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx result code\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 69, "MeasurePositionRsp", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v27, 0, 1);
      }

      v16 = 0;
    }

    DWORD1(v41) = 7;
    goto LABEL_51;
  }

  DWORD1(v41) = 7;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fix type,%u\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 73, "MeasurePositionRsp", *a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v18, 4, 1);
  }

  if (*a3)
  {
    v19 = 2 * (*a3 == 1);
  }

  else
  {
    v19 = 1;
  }

  DWORD2(v41) = v19;
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: shape,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 68, "MeasurePositionRsp", a3[1]);
    LbsOsaTrace_WriteLog(0x12u, __str, v21, 5, 1);
  }

  if (!a3[1])
  {
    HIDWORD(v41) = 16;
    if (a3[2] == 1)
    {
      v22 = 2;
    }

    else
    {
      if (a3[2])
      {
        LODWORD(v42) = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v33 = mach_continuous_time();
          v34 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx hemisphere\n", (*&g_MacClockTicksToMsRelation * v33), "SPL", 69, "MeasurePositionRsp", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v34, 0, 1);
        }

LABEL_42:
        *(&v42 + 4) = *(a3 + 1);
        HIDWORD(v42) = *(a3 + 4);
        v43 = -1;
        if (a3[3] == 1)
        {
          v32 = 2;
        }

        else
        {
          if (a3[3])
          {
            if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v39 = mach_continuous_time();
              v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Altitude direction\n", (*&g_MacClockTicksToMsRelation * v39), "SPL", 69, "MeasurePositionRsp", 770);
              LbsOsaTrace_WriteLog(0x12u, __str, v40, 0, 1);
            }

            goto LABEL_49;
          }

          v32 = 1;
        }

        v44 = v32;
LABEL_49:
        LOWORD(v45) = *(a3 + 21);
        *&v35 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        LODWORD(v41) = v35;
        DWORD1(v41) = 1;
        WORD2(v46) = *(a3 + 12);
        v35.i32[0] = *(a3 + 26);
        *(&v46 + 6) = vmovl_u8(v35).u64[0];
        HIWORD(v46) = a3[30];
        v47 = *(a3 + 16);
        v48 = v41;
        goto LABEL_50;
      }

      v22 = 1;
    }

    LODWORD(v42) = v22;
    goto LABEL_42;
  }

LABEL_50:
  v16 = 2;
LABEL_51:
  Trace_GN_SUPL_Position_Resp_Out(*(v8 + 16), v16, &v41, 1);
  if ((GN_SUPL_Position_Resp_Out(*(v8 + 16), v16, &v41) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v36 = mach_continuous_time();
    v37 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GN_SUPL_Position_Resp_Out call failed\n", (*&g_MacClockTicksToMsRelation * v36), "SPL", 69, "MeasurePositionRsp", 770);
    LbsOsaTrace_WriteLog(0x12u, __str, v37, 0, 1);
  }

LABEL_54:
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(v49);
  v38 = *MEMORY[0x29EDCA608];
}

void sub_299639904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  LcsFunctionEntryExitTrace::~LcsFunctionEntryExitTrace(va);
  _Unwind_Resume(a1);
}

uint64_t LcsSuplGlueLayer::PushSessionInfo(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "PushSessionInfo", *(a2 + 16));
    result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
  }

  v7 = *(a1 + 40);
  while (v7)
  {
    v8 = v7;
    v7 = *(v7 + 8);
    if (!v7)
    {
      *(v8 + 8) = a2;
      *(a2 + 8) = 0;
      goto LABEL_8;
    }
  }

  *(a2 + 8) = *(a1 + 40);
  *(a1 + 40) = a2;
LABEL_8:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::DeleteSessionInfo(LcsSuplGlueLayer *this, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "DeleteSessionInfo", a2);
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(this + 5);
    while (*v7 != a2)
    {
      v7 = *(v7 + 8);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    while (*v6 != a2)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    LcsLinkedList::Remove(this + 24, v6);
LABEL_12:
    *(v7 + 8) = 0;
    result = MEMORY[0x29C29EB20](v7, 0x1020C40903548AELL);
  }

  else
  {
LABEL_7:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Session Deletion Failed\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 87, "DeleteSessionInfo", 2050);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v10, 2, 1);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::DisconnectReq(LcsSuplGlueLayer *this, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(this + 5);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    Trace_GN_SUPL_Disconnect_Req_Out(*(v3 + 16));
    GN_SUPL_Disconnect_Req_Out(*(v3 + 16));
    v9 = *MEMORY[0x29EDCA608];

    return LcsSuplGlueLayer::DeleteSessionInfo(this, a2);
  }

  else
  {
LABEL_4:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "DisconnectReq", 2052, a2);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }

    v8 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t non-virtual thunk toLcsSuplGlueLayer::DisconnectReq(LcsSuplGlueLayer *this, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = (this - 8);

  return LcsSuplGlueLayer::DisconnectReq(v3, a2);
}

uint64_t LcsSuplGlueLayer::SendDataReq(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,buflen,%lu\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "SendDataReq", a2, *(a3 + 8) - *a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 8);
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v13 = *(a3 + 8) - *a3;
    Trace_GN_SUPL_PDU_Delivery_Out(*(v8 + 16), (*(a3 + 8) - *a3), *a3);
    v14 = *(a3 + 8) - *a3;
    result = GN_SUPL_PDU_Delivery_Out(*(v8 + 16), (*(a3 + 8) - *a3), *a3);
  }

  else
  {
LABEL_6:
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "SendDataReq", 2052, a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
      result = 0;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t non-virtual thunk toLcsSuplGlueLayer::SendDataReq(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  v4 = a1 - 8;

  return LcsSuplGlueLayer::SendDataReq(v4, a2, a3);
}

uint64_t LcsSuplGlueLayer::GetAidMask(SuplUtils *a1, int a2, unsigned __int8 a3, unsigned int a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 5);
  if (v4)
  {
    while (*v4 != a2)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v10 = 2;
    v24 = 2;
    Instance = SuplUtils::GetInstance(a1);
    SuplUtils::FillSetCapabilities(Instance, v23, a3, 0);
    if (v24)
    {
      if (v24 == 1)
      {
        v10 = 3;
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx No pref method set\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 87, "ConvertPosMethod", 770);
        v10 = 1;
        LbsOsaTrace_WriteLog(0x12u, __str, v13, 2, 1);
      }

      else
      {
        v10 = 1;
      }
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PrefMethod,%u\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 73, "ConvertPosMethod", v10);
      LbsOsaTrace_WriteLog(0x12u, __str, v15, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SUPL ConstellationSupport,%u\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 73, "ConvertConstellation", a4);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssBitMask,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 73, "ConvertConstellation", a4 < 2);
      LbsOsaTrace_WriteLog(0x12u, __str, v19, 4, 1);
    }

    v20 = a4 < 2;
    Trace_GN_SUPL_AidRequest_Out(*(v4 + 16), 7000, v10, v20);
    v9 = GN_SUPL_AidRequest_Out(*(v4 + 16), 0x1B58u, v10, v20) - 1;
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SUPL session is NULL\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "GetAidMask", 2052);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    v9 = -1;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t LcsSuplGlueLayer::ProcessSuplPosPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  while (*v3 != *(a3 + 28))
  {
    v3 = *(v3 + 8);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  v5 = *(a3 + 24) - 1 < 3 ? (*(a3 + 24) - 1) + 1 : 0;
  v6 = *(a3 + 32) == 1;
  v7 = *(a3 + 8) - *a3;
  Trace_GN_SUPL_PPDU_Decode_Out(*(v3 + 16), (*(a3 + 8) - *a3), *a3, v5, v6, v6);
  v8 = *(a3 + 8) - *a3;
  v9 = GN_SUPL_PPDU_Decode_Out(*(v3 + 16), (*(a3 + 8) - *a3), *a3, v5, v6, v6);
  v10 = 0;
  if (!v9)
  {
LABEL_10:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "ProcessSuplPosPayload", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
    }

    v10 = -1;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t LcsSuplGlueLayer::ProtocolSessionEnd(uint64_t a1, int a2, int a3, unsigned __int8 *a4)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    goto LABEL_5;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: shape,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "ProtocolSessionEnd", a4[1]);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  if (!a4[1])
  {
    if (*a4)
    {
      if (*a4 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v16 = mach_continuous_time();
          v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Fixtype,%u\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ProtocolSessionEnd", 770, *a4);
          LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    if (a4[2])
    {
      if (a4[2] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v18 = mach_continuous_time();
          v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx hemisphere,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "ProtocolSessionEnd", 770, a4[2]);
          LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v8 = *(a4 + 8);
    v30 = *(a4 + 1);
    v26 = a4[18];
    v27 = a4[19];
    if (a4[3])
    {
      if (a4[3] == 1)
      {
        v20 = 2;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        v20 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v22 = mach_continuous_time();
          v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Altitude direction,%u\n", (*&g_MacClockTicksToMsRelation * v22), "SPL", 69, "ProtocolSessionEnd", 770, a4[3]);
          LbsOsaTrace_WriteLog(0x12u, __str, v23, 0, 1);
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }

    HIDWORD(v29) = v20;
    v12 = a4[21];
    v13 = (a4[22] << 8) | 0xFFFFFFFFFFFF0000;
    v11 = 1;
    v28 = 16;
    LOBYTE(v29) = -1;
    v15 = v26;
    v14 = v27;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 0;
    v28 = 0;
    v29 = 0;
    v10 = 0;
    v30 = 0;
    v11 = 7;
    v12 = 255;
    v13 = -256;
    v14 = -1;
    v15 = -1;
  }

  Trace_GN_SUPL_PPDU_SessionEnd_Out(a2, a3);
  *__str = 0;
  v33 = v11;
  v34 = v10;
  v35 = v28;
  v36 = v9;
  v37 = v30;
  v38 = v8;
  v39 = v15;
  v40 = v14;
  v41 = v29;
  v42 = HIDWORD(v29);
  v43 = v12 | v13;
  v44 = 0;
  result = GN_SUPL_PPDU_SessionEnd_Out(a2, a3, __str);
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::ProcessLppCapsReq(LcsSuplGlueLayer *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(this + 5);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    GN_SUPL_PPDU_PduRequest_Out(*(v3 + 16), 3, 1, 0, 0, 0);
    v6 = 0;
  }

  else
  {
LABEL_4:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "ProcessLppCapsReq", 2052, a2);
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
    }

    v6 = -1;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t LcsSuplGlueLayer::ProcessLppADReq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v12 = v7;
  v60 = *MEMORY[0x29EDCA608];
  v13 = *(v6 + 40);
  if (!v13)
  {
LABEL_5:
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ProcessLppADReq", 2052, v12);
      v19 = __str;
LABEL_59:
      LbsOsaTrace_WriteLog(0x12u, v19, v18, 0, 1);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  v14 = v11;
  v15 = v10;
  v16 = v8;
  while (*v13 != v7)
  {
    v13 = *(v13 + 8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  LODWORD(v44[0]) = -1;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v43 = 0;
  memset(v59, 0, sizeof(v59));
  memset(v58, 0, sizeof(v58));
  v44[1] = &v43;
  if (*v9 == 1)
  {
    v20 = *(v9 + 8);
    if ((v20 & 0x20) != 0)
    {
      LOBYTE(v43) = 1;
      if ((v20 & 0x10) == 0)
      {
LABEL_10:
        if ((v20 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v20 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    BYTE1(v43) = 1;
    if ((v20 & 4) == 0)
    {
LABEL_12:
      BYTE3(v43) = 1;
      *&v45 = v58;
      *v58 = 1;
      if ((v20 & 2) != 0)
      {
        v58[4] = 1;
        if ((v20 & 0x80) == 0)
        {
LABEL_14:
          if ((v20 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_39;
        }
      }

      else if ((v20 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      v58[5] = 1;
      if ((v20 & 1) == 0)
      {
LABEL_15:
        if ((v20 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }

LABEL_39:
      v58[6] = 1;
      if ((v20 & 8) == 0)
      {
LABEL_16:
        if ((v20 & 0x40) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_40:
      v58[7] = 1;
      if ((v20 & 0x40) == 0)
      {
LABEL_18:
        *&v58[16] = *(v9 + 12);
        v58[18] = *(v9 + 14);
        v58[19] = *(v9 + 64);
        v58[20] = *(v9 + 15);
        v21 = v58[20];
        if (v58[20])
        {
          v22 = 0;
          v23 = *(v9 + 16);
          v24 = *(v9 + 24) - v23;
          v25 = *(v9 + 40);
          if (*(v9 + 48) - v25 < v24)
          {
            v24 = *(v9 + 48) - v25;
          }

          if (v24 >= 0x40)
          {
            v24 = 64;
          }

          do
          {
            if (v24 == v22)
            {
              break;
            }

            v58[v22 + 21] = *(v23 + v22);
            *(v59 + v22) = *(v25 + v22);
            ++v22;
          }

          while (v21 != v22);
        }

        goto LABEL_25;
      }

LABEL_17:
      v58[8] = 1;
      goto LABEL_18;
    }

LABEL_11:
    BYTE2(v43) = 1;
    goto LABEL_12;
  }

LABEL_25:
  *__str = 0;
  v50 = -1;
  memset_s(v51, 0x1840uLL, 0, 0x1840uLL);
  *&__str[4] = 5;
  v50 = v14;
  v26 = *(v15 + 88);
  v53 = v26;
  v27 = *(v15 + 64);
  if (*(v15 + 72) - v27 != 4)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(v48, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(v48, 0x40FuLL, "%10u %s%c %s: #%04hx CellIdentity Invalid\n");
LABEL_58:
      v19 = v48;
      goto LABEL_59;
    }

LABEL_60:
    v40 = -1;
    goto LABEL_61;
  }

  v52 = 16 * v27[3];
  v52 += v27[2] << 8;
  v52 += v27[1] << 16;
  v52 = (v52 + (*v27 << 24)) >> 4;
  if (*(v15 + 8) == 1)
  {
    v28 = *(v15 + 16);
    if (*(v15 + 24) - v28 == 3)
    {
      v51[0] = 100 * *v28 + 10 * v28[1] + v28[2];
    }
  }

  v29 = *(v15 + 40);
  v30 = *(v15 + 48) - v29;
  if (v30 == 3)
  {
    v31 = 100 * *v29 + 10 * v29[1];
    v32 = 2;
    goto LABEL_43;
  }

  if (v30 != 2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(v48, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(v48, 0x40FuLL, "%10u %s%c %s: #%04hx MNC Invalid\n");
      goto LABEL_58;
    }

    goto LABEL_60;
  }

  v31 = 10 * *v29;
  v32 = 1;
LABEL_43:
  v51[1] = v31 + v29[v32];
  if (*v15 == 1)
  {
    v33 = *(v15 + 120);
  }

  else
  {
    v33 = -1;
  }

  v55 = v33;
  if (*(v15 + 1) == 1)
  {
    v34 = *(v15 + 121);
  }

  else
  {
    v34 = -1;
  }

  v56 = v34;
  if (*(v15 + 2) == 1)
  {
    v35 = *(v15 + 122);
  }

  else
  {
    v35 = -1;
  }

  v57 = v35;
  v36 = *(v15 + 96);
  v37 = *v36;
  v54 = v37 << 8;
  v54 = v36[1] | (v37 << 8);
  *__str = 2;
  if (v16 == 8)
  {
    *v48 = v26;
    Trace_GN_SUPL_PPDU_PduRequest_Out(*(v13 + 16), 3, 2, v44, v48, __str);
    v38 = *(v13 + 16);
    v39 = v48;
  }

  else
  {
    Trace_GN_SUPL_PPDU_PduRequest_Out(*(v13 + 16), 3, 2, v44, 0, __str);
    v38 = *(v13 + 16);
    v39 = 0;
  }

  GN_SUPL_PPDU_PduRequest_Out(v38, 3, 2, v44, v39, __str);
  v40 = 0;
LABEL_61:
  v41 = *MEMORY[0x29EDCA608];
  return v40;
}

uint64_t LcsSuplGlueLayer::SendSuplMsgStatus(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v18 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_EventNotif_Out sessionId,%u,suplMsg,%u,posMethod,%u,suplEndCause,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "SendSuplMsgStatus", a2, a3, a4, a5);
    LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
  }

  if (a6 && LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status %u, Sign of Lat,%u,lat,%u,long,%d,Alt,%u,Dr of Al,%u,UnMjraxis,%u,UnMnraxis,%u,Alt Uncer,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 73, "SendSuplMsgStatus", *(a6 + 4), *(a6 + 16), *(a6 + 20), *(a6 + 24), *(a6 + 28), *(a6 + 36), *(a6 + 30), *(a6 + 31), *(a6 + 40));
    LbsOsaTrace_WriteLog(0x12u, __str, v14, 4, 1);
  }

  result = GN_SUPL_EventNotif_Out(a2, 1, 0, a3, a4, a5, a6);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsSuplGlueLayer::SendSuplConnectionStatus(uint64_t a1, int a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_EventNotif_Out sessionId,%u,statusCode,%u, InvalidSuplMsg NoPosMeth NoEndCause\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "SendSuplConnectionStatus", a2, a3);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
  }

  result = GN_SUPL_EventNotif_Out(a2, 2, a3, 0, 0, 0, 0);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_Predict_State(int *a1, int *a2)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 - *a2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = v6 * 0.001;
  *(a2 + 4) = v7;
  a2[6] = v5;
  *a2 = v4;
  *(a2 + 1) = *(a1 + 3);
  a2[4] = a1[3];
  *(a2 + 11) = *(a1 + 9);
  *(a2 + 20) = *(a1 + 17);
  a2[37] = a1[25];
  *(a2 + 152) = *(a1 + 104);
  *(a2 + 77) = *(a1 + 53);
  *(a2 + 78) = *(a1 + 54);
  *(a2 + 20) = *(a1 + 14);
  v8 = (a2 + 10);
  v9 = 3;
  do
  {
    *v8 = *v8 + v8[3] * v7;
    ++v8;
    --v9;
  }

  while (v9);
  v13[0] = 0.0;
  if (!R8_EQ(a2 + 14, v13))
  {
    *(a2 + 14) = *(a2 + 14) + *(a2 + 17) * v7;
  }

  v13[0] = 0.0;
  if (!R8_EQ(a2 + 15, v13))
  {
    *(a2 + 15) = *(a2 + 15) + *(a2 + 17) * v7;
  }

  v13[0] = 0.0;
  result = R8_EQ(a2 + 16, v13);
  if (!result)
  {
    *(a2 + 16) = *(a2 + 16) + *(a2 + 17) * v7;
  }

  v11 = a1[11];
  if (v11)
  {
    v13[0] = 0.0;
    if (!R8_EQ(a2 + 14, v13))
    {
      *(a2 + 14) = *(a2 + 14) + v11 * -0.001;
    }

    v13[0] = 0.0;
    if (!R8_EQ(a2 + 15, v13))
    {
      *(a2 + 15) = *(a2 + 15) + v11 * -0.001;
    }

    v13[0] = 0.0;
    result = R8_EQ(a2 + 16, v13);
    if (!result)
    {
      *(a2 + 16) = *(a2 + 16) + v11 * -0.001;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplRrlpExecutePosRsp(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpExecutePosRsp");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v28 = 0;
  v26 = 0;
  v27 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RRLP Sub Msg Type,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 65, "SuplRrlpExecutePosRsp", *(a1 + 1));
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 1, 1);
  }

  v6 = *(a1 + 1);
  if (v6 == 2)
  {
    v11 = **(a1 + 8);
    if (!v11)
    {
      goto LABEL_17;
    }

    v10 = rrl_process_measure_response_stand_alone(v11, &v28, &v26);
    goto LABEL_14;
  }

  if (v6 == 1)
  {
    v10 = rrl_process_assistance_data_request(**(a1 + 8), *(*(a1 + 8) + 8), &v28, &v26);
LABEL_14:
    v9 = v10;
LABEL_20:
    v22 = 0;
    v23 = 0;
    if (v28 && v9 <= 1)
    {
      v24 = 0;
      v22 = v26;
      v23 = v27;
    }

    else
    {
      v24 = 1;
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Error in encoding Rsp msg\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "SuplRrlpExecutePosRsp", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
      }
    }

    v25 = *(a1 + 16);
    HandleRRLPResponse(&v22);
    goto LABEL_26;
  }

  if (*(a1 + 1))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Measure Position Response\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "SuplRrlpExecutePosRsp", 770);
      v9 = 1;
      LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
    v9 = rrl_process_measure_response_msb(*v7, 2, &v28, &v26);
    if (!*v8)
    {
      SendStatusReport(*(a1 + 16), 2, 0, 0, 0, 255);
    }

    goto LABEL_20;
  }

LABEL_17:
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gps_ptr\n", (*&g_MacClockTicksToMsRelation * v14), "PSP", 69, "SuplRrlpExecutePosRsp", 513);
    LbsOsaTrace_WriteLog(0x13u, __str, v15, 0, 1);
  }

LABEL_26:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 68, "SuplRrlpExecutePosRsp");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v20, 5, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplRrlpExecutePosReq(unsigned int *a1)
{
  v119 = *MEMORY[0x29EDCA608];
  v42 = 255;
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpExecutePosReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v43 = 1;
  v4 = a1[5];
  v44 = v4;
  v5 = *(a1 + 16);
  if ((v5 - 2) >= 2 && v5 != 0)
  {
    if (v5 == 1)
    {
      v42 = 0;
    }

    v40 = 0;
    v41 = 0;
    v12 = gnssOsa_Calloc("SuplRrlpExecutePosReq", 140, 1, *a1);
    v41 = v12;
    if (!v12)
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_42;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_25;
    }

    memcpy_s("SuplRrlpExecutePosReq", 149, v12, *a1, *(a1 + 1), *a1);
    v40 = *a1;
    v39 = 0;
    v37 = 15;
    v38 = 3;
    v35[0] = 0;
    v35[4] = 3;
    memset_s(&v36, 0xCuLL, 0, 0xCuLL);
    v13 = rrl_process_downlink_message(&v40, 2, &v39, &v37, &v38, v35);
    LOBYTE(v45) = 0;
    v46 = 0;
    v47 = -1;
    v48 = -1;
    v49 = -1;
    v50 = 255;
    T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(v51);
    v14 = 0;
    v51[7] = 2;
    v52 = 32512;
    v53 = 0;
    v54 = -1;
    v55 = -1;
    v56 = -1;
    v57 = -1;
    v58 = 0;
    do
    {
      v15 = &v45 + v14;
      v15[78] = -1;
      *(v15 + 20) = -1;
      v15[84] = -1;
      v14 += 8;
    }

    while (v14 != 128);
    v59 = -1;
    v60 = 0;
    v61 = -1;
    v62 = 0;
    v63 = -1;
    v64 = 255;
    T_UTRAN_GPS_TIME_s::T_UTRAN_GPS_TIME_s(v65);
    v65[28] = 0;
    v66 = -1;
    v67 = -1;
    v68 = -1;
    v69 = -1;
    v70 = 255;
    v71 = 0;
    v72 = -1;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    v77 = 0;
    v78 = 255;
    v79 = 0;
    v80 = 0;
    v81 = -1;
    v82 = 0;
    v83 = 0x7FFFFFFF7FFFFFFFLL;
    v84 = 0x800000;
    v85 = 32639;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = -1;
    v93 = -1;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = -1;
    v102 = -1;
    v103 = -1;
    *(v104 + 5) = -1;
    v104[0] = -1;
    T_GNSS_POSITION_s::T_GNSS_POSITION_s(v105);
    v105[28] = -16777216;
    v106 = 0x7F7F7F7F7F7F7F7FLL;
    v107 = 255;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v34 = -1;
    if (v13)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Decode Failed\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "SuplRrlpExecutePosReq", 770);
        LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
      }

      rrl_clear_gnss_ad(&v45, 1);
      if (v13 == 1 && v39 == 1)
      {
        v33 = 0;
        v31 = v40;
        v32 = v41;
      }

      else
      {
        if (v13 == -1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        v33 = v19;
      }

      v34 = v4;
      goto LABEL_41;
    }

    v30 = 0;
    if (v37 != 2)
    {
      if (!v37)
      {
        *__str = -1;
        v109 = -1;
        v110 = -16776961;
        v111 = 0;
        v112 = -1;
        v113 = 255;
        v114 = 0x200000003;
        v115 = -1;
        v116 = -1;
        v117 = 0xFFFF;
        v118 = -1;
        memset_s(__str, 0x2CuLL, 0, 0x2CuLL);
        v28 = 0;
        if (rrl_process_measure_request(&v45, __str, &v28, &v30, &v40, 0))
        {
          if (v30 != 1)
          {
            goto LABEL_42;
          }

          goto LABEL_57;
        }

        if (v45 == 1)
        {
          SuplRrlpHandleAsstData(&v45, &v29, &v42);
        }

        __s = 0;
        memset_s(&__s, 8uLL, 0, 8uLL);
        if (v28 == 1)
        {
          gps_gnss_start_auto_mode(1, __str, __s, &v42);
        }

        else
        {
          if (v28 != 2)
          {
            rrl_clean_measure_procedure();
            rrl_free_asn_pdu();
            v33 = 2;
            goto LABEL_58;
          }

          gps_gnss_start_based_mode(1, __str, __s, &v42);
        }

        goto LABEL_42;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        goto LABEL_42;
      }

      bzero(__str, 0x410uLL);
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_compType,%d\n", v26);
      goto LABEL_25;
    }

    if (rrl_process_assistance_data_delivery(&v45, &v30, &v40))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assisstance data\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 69, "SuplRrlpExecutePosReq", 770);
        v22 = 0;
LABEL_55:
        LbsOsaTrace_WriteLog(0x13u, __str, v21, v22, 1);
      }
    }

    else if (v45 == 1)
    {
      SuplRrlpHandleAsstData(&v45, &v29, &v42);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v25 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance data not recieved\n", (*&g_MacClockTicksToMsRelation * v25), "PSP", 87, "SuplRrlpExecutePosReq", 770);
      v22 = 2;
      goto LABEL_55;
    }

    if (v30 == 1)
    {
LABEL_57:
      v33 = 0;
      v31 = v40;
      v32 = v41;
LABEL_58:
      v34 = v44;
LABEL_41:
      HandleRRLPResponse(&v31);
      goto LABEL_42;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
LABEL_42:
      result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v23, "PSP", 68, "SuplRrlpExecutePosReq");
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Assistance data\n");
LABEL_25:
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
    goto LABEL_42;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos protocol\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 87, "SuplRrlpExecutePosReq", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 2, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", v10, "PSP", 68, "SuplRrlpExecutePosReq");
LABEL_44:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

LABEL_45:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplRrlpHandleAsstData(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 68, "SuplRrlpHandleAsstData");
    LbsOsaTrace_WriteLog(0x13u, __str, v7, 5, 1);
  }

  if (*(a1 + 8) == 1 && *(a1 + 9) == 1)
  {
    *a2 = 1;
    gps_set_gps_time(a1 + 16, 0, a3);
  }

  if (*(a1 + 504) != 1)
  {
    *a2 = 1;
    gps_set_gnss_ref_loc(a1 + 504, *(a1 + 616), 0, a3);
  }

  if (*(a1 + 8) == 1)
  {
    *a2 = 1;
    if (*(a1 + 304) == 1)
    {
      gps_set_based_aid((a1 + 312), 0, a3);
    }

    if (*(a1 + 224) == 1)
    {
      v8 = *(a1 + 288);
      if (v8)
      {
        MEMORY[0x29C29EAF0](v8, 0x1000C804359ADF2);
      }

      *(a1 + 288) = 0;
    }

    if (*(a1 + 336) == 1)
    {
      gps_set_almanac_aid(a1 + 344, 0, a3);
    }

    if (*(a1 + 368) == 1)
    {
      gps_set_gps_utc_model(a1 + 372, a3);
    }

    if (*(a1 + 388) == 1)
    {
      gps_set_gps_real_time_integrity(a1 + 392, a3);
    }
  }

  if (*(a1 + 617) == 1)
  {
    *a2 = 1;
    gps_set_gnss_iono_model(a1 + 618, *(a1 + 629), 0, a3);
  }

  rrl_clear_gnss_ad(a1, 0);
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "SuplRrlpHandleAsstData");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

char *SuplRrlpSessionEnd(void)
{
  v3 = *MEMORY[0x29EDCA608];
  StaticLpPrivate = GetStaticLpPrivate();
  memset_s(StaticLpPrivate + 1344, 0x1CuLL, 0, 0x1CuLL);
  v1 = *MEMORY[0x29EDCA608];

  return rrl_free_asn_pdu();
}

uint64_t SuplRrlpUpdateCap(unsigned __int8 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "SuplRrlpUpdateCap");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  memset(v10, 0, sizeof(v10));
  if (*a1 == 1)
  {
    BYTE2(v10[0]) = 1;
    WORD2(v10[0]) = *(a1 + 1);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNSS ID,%u\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "SuplRrlpUpdateCap", 770, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  rrl_set_pos_caps(v10);
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "SuplRrlpUpdateCap");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RRLP_Bridge_init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v0), "PSP", 73, "RRLP_Bridge_init");
    LbsOsaTrace_WriteLog(0x13u, __str, v1, 4, 1);
  }

  result = rrl_init();
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t RRLP_Bridge_de_init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  rrl_clean();
  rrl_destroy();
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v1 = mach_continuous_time();
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: De-Initialization Fn\n", (*&g_MacClockTicksToMsRelation * v1), "PSP", 73, "RRLP_Bridge_de_init");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v2, 4, 1);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

double *NK_Set_Constell_Clock_Bias(double *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = result;
  v9 = 0;
  v47 = *MEMORY[0x29EDCA608];
  v37 = 0.0;
  v38 = 0.0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = (a2 + 4832);
  v11 = a2;
  v42 = 0;
  do
  {
    if (*(v11 + 2960) == 1 && *(v11 + 49) == 1)
    {
      v12 = *(result + v9);
      v13 = 1.0 / v10[252];
      *(&v43 + v12) = *(&v43 + v12) + *v10 * v13;
      *(&v39 + v12) = v13 + *(&v39 + v12);
    }

    v9 += 4;
    ++v10;
    ++v11;
  }

  while (v9 != 192);
  v14 = *(&v43 + 1) + *(&v44 + 1) + *(&v45 + 1);
  v15 = *(&v39 + 1) + *(&v40 + 1) + *(&v41 + 1);
  if (v15 > 0.0)
  {
    v14 = fabs(v14) / v15;
  }

  v16 = *&v40;
  if (*&v40 > 0.0)
  {
    *&v44 = fabs(*&v44) / *&v40;
  }

  v17 = *&v41;
  if (*&v41 > 0.0)
  {
    *&v45 = fabs(*&v45) / *&v41;
  }

  v18 = *(a2 + 768);
  if (v18 == 1 && v14 > 0.0)
  {
    LOBYTE(v19) = *(a2 + 769);
    v20 = *(a2 + 736) * 299792458.0;
    v21 = 1;
    v22 = 0.0;
    if (v19)
    {
      v23 = 0;
      v24 = 0.0;
      LOBYTE(v25) = *(a2 + 768);
      goto LABEL_30;
    }

    v27 = 0;
    LOBYTE(v26) = 0;
    v23 = 0;
    LOBYTE(v25) = *(a2 + 768);
  }

  else
  {
    v19 = *(a2 + 769);
    if (v19 == 1 && *&v44 > 0.0)
    {
      LOBYTE(v26) = 0;
      v20 = *(a2 + 744) * 299792458.0;
      v27 = 1;
      v21 = 2;
      v23 = 1;
      LOBYTE(v25) = *(a2 + 769);
    }

    else
    {
      v25 = *(a2 + 770);
      if (v25 != 1 || *&v45 <= 0.0)
      {
        goto LABEL_47;
      }

      v20 = *(a2 + 752) * 299792458.0;
      v21 = 4;
      v23 = 2;
      v22 = 0.0;
      v26 = 1;
      if (v19)
      {
        v24 = 0.0;
LABEL_32:
        v28 = 0.0;
        if (*(a3 + 33548) >= 1 && *(a3 + 33556))
        {
          v29 = *(a2 + 24) + -14.0;
          if (v29 < 0.0)
          {
            v29 = v29 + 604800.0;
          }

          v30 = (*(a3 + 33556) * 0.1 + *(a3 + 33558) * 0.1 * v29) * 0.000000001;
          v28 = v30 * 299792458.0;
          if (v26)
          {
            v24 = v30 * 299792458.0;
          }
        }

        goto LABEL_38;
      }

      v27 = 0;
    }
  }

  v24 = 0.0;
  v22 = 0.0;
  if (*(a3 + 16296) == 1)
  {
    v22 = vcvtd_n_f64_s32(*(a3 + 16236), 0x1EuLL) * 299792458.0;
    if (v27)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0.0;
    }
  }

  if (v26)
  {
    v21 = 4;
    v26 = 1;
    goto LABEL_32;
  }

LABEL_30:
  v28 = 0.0;
  if ((*(a2 + 770) & 1) == 0)
  {
    v26 = 0;
    goto LABEL_32;
  }

LABEL_38:
  if (v15 > 0.0 && (v18 & 1) == 0)
  {
    LOWORD(v36) = 1;
    v37 = *(a2 + 736) * 299792458.0;
    v38 = 0.0;
    BYTE2(v36) = v18;
    LOBYTE(v33) = v21;
    BYTE1(v33) = v23;
    BYTE2(v33) = v25;
    v34 = v20;
    v35 = v24;
    result = NK_Adjust_Constell(&v33, &v36, result, a2, a4, a5);
    *(a2 + 736) = v37 * 0.00000000333564095;
    *(a2 + 768) = BYTE2(v36);
    LOBYTE(v19) = *(a2 + 769);
  }

  if (v16 > 0.0 && (v19 & 1) == 0)
  {
    LOWORD(v36) = 258;
    v37 = *(a2 + 744) * 299792458.0;
    v38 = v22;
    BYTE2(v36) = v19;
    LOBYTE(v33) = v21;
    BYTE1(v33) = v23;
    BYTE2(v33) = v25;
    v34 = v20;
    v35 = v24;
    result = NK_Adjust_Constell(&v33, &v36, v8, a2, a4, a5);
    *(a2 + 744) = v37 * 0.00000000333564095;
    *(a2 + 769) = BYTE2(v36);
  }

  if (v17 > 0.0)
  {
    v31 = *(a2 + 770);
    if ((v31 & 1) == 0)
    {
      LOWORD(v36) = 516;
      v37 = *(a2 + 752) * 299792458.0;
      v38 = v28;
      BYTE2(v36) = v31;
      LOBYTE(v33) = v21;
      BYTE1(v33) = v23;
      BYTE2(v33) = v25;
      v34 = v20;
      v35 = v24;
      result = NK_Adjust_Constell(&v33, &v36, v8, a2, a4, a5);
      *(a2 + 752) = v37 * 0.00000000333564095;
      *(a2 + 770) = BYTE2(v36);
    }
  }

LABEL_47:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

double *NK_Adjust_Constell(double *result, double *a2, unsigned __int8 *a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a3;
  v9 = result;
  v10 = 0;
  v11 = 0;
  v43 = *MEMORY[0x29EDCA608];
  v12 = result[1] - result[2] + a2[2];
  v13 = v12 - a2[1];
  memset(v42, 0, sizeof(v42));
  v14 = a4 + 19584;
  v15 = a4 + 4832;
  v16 = a4 + 5216;
  v17 = a4 + 5600;
  v18 = *a2;
  v19 = a3;
  do
  {
    v21 = *v19;
    v19 += 4;
    v20 = v21;
    v23 = v18 == 4 && v20 == 4;
    v24 = v20 == 2 && v18 == 2;
    if ((v24 || v23 || v18 == 1 && v20 <= 5 && ((1 << v20) & 0x2A) != 0) && *(a4 + v10 + 2960) == 1)
    {
      *(v14 + 8 * v10) = v13 + *(v14 + 8 * v10);
      v25 = v13 + *(v15 + 8 * v10);
      *(v15 + 8 * v10) = v25;
      *(v16 + 8 * v10) = v25;
      *(v17 + 8 * v10) = v25;
      if (*(a4 + v10 + 49) == 1)
      {
        *(v42 + v11++) = v25;
      }
    }

    ++v10;
  }

  while (v10 != 48);
  if (!v11)
  {
    goto LABEL_47;
  }

  v41 = a2;
  result = VecSortAscR8(v42, 0, v11 - 1);
  v26 = v11 >> 1;
  if (v11)
  {
    v27 = *(v42 + v26);
  }

  else
  {
    v27 = (*(v42 + v26 - 1) + *(v42 + v26)) * 0.5;
  }

  a2 = v41;
  v41[1] = v12;
  if (fabs(v27) < 586.104512)
  {
    v28 = 0;
    v29 = a4 + 6848;
    do
    {
      v31 = *v8;
      v8 += 4;
      v30 = v31;
      v33 = v18 == 4 && v30 == 4;
      v34 = v30 == 2 && v18 == 2;
      if ((v34 || v33 || v18 == 1 && v30 <= 5 && ((1 << v30) & 0x2A) != 0) && *(a4 + v28 + 2960) == 1)
      {
        *(v14 + 8 * v28) = *(v14 + 8 * v28) - v27;
        v35 = *(v15 + 8 * v28) - v27;
        *(v15 + 8 * v28) = v35;
        *(v16 + 8 * v28) = v35;
        *(v17 + 8 * v28) = v35;
        if ((a5 & 1) == 0)
        {
          v36 = v35 * 0.5 * (v35 * 0.5);
          if (*(v29 + 8 * v28) > v36)
          {
            v36 = *(v29 + 8 * v28);
          }

          *(v29 + 8 * v28) = v36;
        }
      }

      ++v28;
    }

    while (v28 != 48);
    v12 = v41[1] - v27;
LABEL_47:
    a2[1] = v12;
  }

  v37 = *(v9 + 1);
  v38 = *(a2 + 1);
  *(a6 + 8 * ((v38 + 2 + (v38 + 2) * v38) >> 1) - 8) = fmax(*(a6 + 8 * ((v37 + 2 + (v37 + 2) * v37) >> 1) - 8), 62500.0);
  *(a6 + 8 * v38 + 48) = *(a6 + 8 * v37 + 48);
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufInitBuf(uint64_t *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *v2 = 0;
  *(v2 + 196) = 0;
  *(v2 + 720) = 0;
  *(*a1 + 728) = 0;
  *(*a1 + 736) = 0;
  v3 = *a1;
  *(v3 + 744) = 0;
  *(v3 + 1056) = xmmword_29975EEF0;
  *(v3 + 1112) = 0;
  v4 = *a1 + 756;
  *v4 = SmallInit;
  *(v4 + 16) = *algn_29975EF10;
  *(v4 + 32) = xmmword_29975EF20;
  v5 = gnssOsa_Calloc("posp_alloc", 18, 1, 0x1000uLL);
  *v4 = v5;
  if (v5)
  {
    v6 = 0;
    *(v4 + 24) = v5;
    *(v4 + 32) = v5;
    *(v4 + 8) = v5 + 4096;
    *(v4 + 16) = v5;
  }

  else
  {
    v7 = *a1;
    v6 = 1;
    CUCFErrorHandler(v7, 1);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t SmallBufCloseBuf(uint64_t *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*(v2 + 744))
  {
    v3 = 9;
    CUCFErrorHandler(v2, 9);
  }

  else
  {
    if (*(v2 + 799))
    {
      goto LABEL_7;
    }

    v4 = (v2 + 756);
    v5 = *(v2 + 756);
    if (v5)
    {
      free(v5);
    }

    *v4 = 0;
    v2 = *a1;
    if (*a1)
    {
LABEL_7:
      free(v2);
    }

    v3 = 0;
    *a1 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t SmallBufInitBufWithMemory(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *v2 = 0;
  *(v2 + 196) = 0;
  *(v2 + 720) = 0;
  *(*a1 + 728) = 0;
  *(*a1 + 736) = 0;
  v3 = *a1;
  *(v3 + 744) = 0;
  *(v3 + 1056) = xmmword_29975EEF0;
  *(v3 + 1112) = 0;
  v4 = *a1;
  v5 = *a1 + 756;
  *(v5 + 32) = xmmword_29975EF20;
  *v5 = SmallInit;
  *(v5 + 16) = *algn_29975EF10;
  v6 = *a2;
  v7 = *a2 + a2[1];
  *v5 = *a2;
  *(v5 + 8) = v7;
  *(v5 + 32) = v6;
  v8 = v6 + a2[2];
  *(v5 + 16) = v6;
  *(v5 + 24) = v8;
  *(v4 + 799) = 1;
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t SmallBufCloseBufToMemory(void **a1, unsigned __int8 **a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = *a1;
    if (v3[744])
    {
      v4 = 9;
      CUCFErrorHandler(v3, 9);
    }

    else
    {
      v5 = *(v3 + 756);
      v6 = (*(v3 + 764) - v5);
      *a2 = v5;
      a2[1] = v6;
      v7 = *(v3 + 772);
      v8 = v3[796];
      if (v8 <= v3[797])
      {
        v9 = *(v3 + 780) - v7;
      }

      else
      {
        v9 = *(v3 + 780) - v7 + 1;
      }

      a2[2] = v9;
      if (v8 == 7)
      {
        if (v5 != v7)
        {
          memcpy_s("posp_memcpy", 29, v5, v9, v7, v9);
        }
      }

      else
      {
        *v5 = *v7 << (7 - v8);
        v11 = *(v3 + 772);
        v10 = *(v3 + 780);
        if (v11 != v10)
        {
          v12 = v11 + 1;
          *(v3 + 772) = v12;
          if (v12 != v10)
          {
            do
            {
              *v5 |= *v12 >> (v3[796] + 1);
              *++v5 = **(v3 + 772) << (7 - v3[796]);
              v13 = *(v3 + 780);
              v12 = (*(v3 + 772) + 1);
              *(v3 + 772) = v12;
            }

            while (v12 != v13);
          }

          if (v3[797] != 7)
          {
            *v5 |= *v12 >> (v3[796] + 1);
            v14 = v3[796];
            if (v14 > v3[797])
            {
              v5[1] = **(v3 + 772) << (7 - v14);
            }
          }
        }
      }

      if (*a1)
      {
        free(*a1);
      }

      v4 = 0;
      *a1 = 0;
    }
  }

  else
  {
    v4 = 6;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t SmallBufGetLength(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v4 = *(a1 + 780) - *(a1 + 772);
      v5 = *(a1 + 796);
      v6 = *(a1 + 797);
      goto LABEL_13;
    }

    v7 = *(a1 + 780) - *(a1 + 772);
    v8 = *(a1 + 796);
    v9 = *(a1 + 797);
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v2 = *(a1 + 1064);
          if ((v2 & 7) != 0)
          {
            result = (v2 >> 3) + 1;
          }

          else
          {
            result = v2 >> 3;
          }

          goto LABEL_19;
        }

LABEL_18:
        result = *(a1 + 1064);
        goto LABEL_19;
      }

      v4 = *(a1 + 788) - *(a1 + 772);
      v5 = *(a1 + 796);
      v6 = *(a1 + 798);
LABEL_13:
      result = v5 - v6 + 8 * v4;
      goto LABEL_19;
    }

    v7 = *(a1 + 788) - *(a1 + 772);
    v8 = *(a1 + 796);
    v9 = *(a1 + 798);
  }

  if (v8 <= v9)
  {
    result = v7;
  }

  else
  {
    result = v7 + 1;
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufGetMemory(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = a1 + 756;
  result = *(a1 + 756);
  *a2 = *(v2 + 8) - result;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

char *SmallBufAppendMemory(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 799))
  {
    CUCFErrorHandler(a1, 7);
    v3 = 0;
  }

  else
  {
    v4 = (a1 + 756);
    v5 = *(a1 + 764) - *(a1 + 756) + a2;
    v3 = gnssOsa_Calloc("posp_alloc", 18, 1, v5);
    if (v3)
    {
      v6 = *(a1 + 764) - *v4;
      memcpy_s("posp_memcpy", 29, v3, v6, *v4, v6);
      v7 = *v4;
      v8 = &v3[*(a1 + 780) - *(a1 + 756)];
      *(a1 + 772) = &v3[*(a1 + 772) - *(a1 + 756)];
      *(a1 + 780) = v8;
      *(a1 + 788) = &v3[*(a1 + 788) - v7];
      if (v7)
      {
        free(v7);
      }

      *v4 = v3;
      *(a1 + 764) = &v3[v5];
    }

    else
    {
      CUCFErrorHandler(a1, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t SmallBufGetDataCurr(uint64_t a1, _BYTE *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  *a2 = *(a1 + 798);
  result = *(a1 + 788);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufSetDataCurr(uint64_t result, uint64_t a2, char a3)
{
  v4 = *MEMORY[0x29EDCA608];
  *(result + 788) += a2;
  *(result + 798) = a3;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufGetDataEnd(uint64_t a1, _BYTE *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  *a2 = *(a1 + 797);
  result = *(a1 + 780);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufSetDataEnd(uint64_t result, uint64_t a2, char a3)
{
  v4 = *MEMORY[0x29EDCA608];
  *(result + 780) += a2;
  *(result + 797) = a3;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufCopyBuf(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2)
  {
    v10 = 5;
    v11 = a2;
    v12 = 5;
    goto LABEL_12;
  }

  if (*(a1 + 752) != *(a2 + 752))
  {
    v10 = 2;
    v11 = a2;
    v12 = 2;
    goto LABEL_12;
  }

  v4 = (a1 + 756);
  v5 = (a2 + 772);
  v6 = *(a2 + 772);
  v7 = *(a2 + 780) - v6;
  if (*(a2 + 797) == 7)
  {
    v8 = *(a2 + 780) - v6;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = *v4;
  if (v8 <= *(a1 + 764) - *(a1 + 756))
  {
LABEL_18:
    v16 = &v9[*(a2 + 788) - v6];
    *(a1 + 780) = &v9[v7];
    *(a1 + 788) = v16;
    *(a1 + 772) = v9;
    memcpy_s("posp_memcpy", 29, v9, v8, *v5, v8);
    v10 = 0;
    *(a1 + 796) = *(a2 + 796);
    *(a1 + 797) = *(a2 + 797);
    goto LABEL_13;
  }

  if (!*(a1 + 799))
  {
    v15 = gnssOsa_Calloc("posp_alloc", 18, 1, v8);
    if (!v15)
    {
      v10 = 1;
      v11 = a2;
      v12 = 1;
      goto LABEL_12;
    }

    v9 = v15;
    if (*v4)
    {
      free(*v4);
    }

    *v4 = v9;
    *(a1 + 764) = &v9[v8];
    v6 = *v5;
    v7 = *(a2 + 780) - *(a2 + 772);
    goto LABEL_18;
  }

  v10 = 7;
  v11 = a2;
  v12 = 7;
LABEL_12:
  CUCFErrorHandler(v11, v12);
LABEL_13:
  v13 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t SmallBufInitWriteMode(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744))
  {
    v1 = 8;
    CUCFErrorHandler(a1, 8);
  }

  else
  {
    v1 = 0;
    v2 = *(a1 + 756);
    *(a1 + 772) = v2;
    *(a1 + 780) = v2;
    *(a1 + 788) = v2;
    *(a1 + 796) = 1799;
    *(a1 + 798) = 7;
    *a1 = 0;
    *(a1 + 744) = 2;
  }

  v3 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t SmallBufCloseWriteMode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) == 2)
  {
    v1 = 0;
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t SmallBufInitReadMode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744))
  {
    v1 = 8;
    CUCFErrorHandler(a1, 8);
  }

  else
  {
    v1 = 0;
    *(a1 + 788) = *(a1 + 772);
    *(a1 + 798) = *(a1 + 796);
    *a1 = 0;
    *(a1 + 744) = 1;
  }

  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t SmallBufCloseReadMode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) == 1)
  {
    v1 = 0;
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t SmallBufCloseDeleteReadMode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) == 1)
  {
    v1 = 0;
    *(a1 + 772) = *(a1 + 788);
    *(a1 + 796) = *(a1 + 798);
    *(a1 + 744) = 0;
  }

  else
  {
    v1 = 10;
    CUCFErrorHandler(a1, 10);
  }

  v2 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t SmallBufGetByte(uint64_t a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v6 = 11;
    goto LABEL_7;
  }

  v2 = (a1 + 780);
  v3 = *(a1 + 788);
  v4 = *(a1 + 798);
  if (v4 - *(a1 + 797) + 8 * (*(a1 + 780) - v3) <= 7)
  {
    v5 = *(a1 + 728);
    if (!v5 || (v5(a1, 1), v3 = *(v1 + 788), v4 = *(v1 + 798), v4 - *(v1 + 797) + 8 * (*v2 - v3) <= 7))
    {
      a1 = v1;
      v6 = 12;
LABEL_7:
      CUCFErrorHandler(a1, v6);
      LOBYTE(v7) = 0;
      goto LABEL_12;
    }
  }

  if (v4 == 7)
  {
    LOBYTE(v7) = *v3;
  }

  else
  {
    v7 = (v3[1] >> (v4 + 1)) | (*v3 << (7 - v4));
  }

  *(v1 + 788) = v3 + 1;
LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t SmallBufPeekByte(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v5 = 11;
    goto LABEL_7;
  }

  v2 = *(a1 + 788);
  v3 = *(a1 + 798);
  if (v3 - *(a1 + 797) + 8 * (*(a1 + 780) - v2) <= 7)
  {
    v4 = *(a1 + 728);
    if (!v4 || (v4(a1, 1), v2 = *(v1 + 788), v3 = *(v1 + 798), v3 - *(v1 + 797) + 8 * (*(v1 + 780) - v2) <= 7))
    {
      a1 = v1;
      v5 = 12;
LABEL_7:
      CUCFErrorHandler(a1, v5);
      LOBYTE(v2) = 0;
      goto LABEL_8;
    }
  }

  if (v3 == 7)
  {
    LOBYTE(v2) = *v2;
  }

  else
  {
    LODWORD(v2) = (v2[1] >> (v3 + 1)) | (*v2 << (7 - v3));
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v2;
}

char *SmallBufPutByte(char *result, unsigned int a2)
{
  v2 = result;
  v9 = *MEMORY[0x29EDCA608];
  if (result[744])
  {
    v4 = result + 764;
    v5 = result[797];
    v6 = *(result + 780);
    if (v5 == 7)
    {
      if (v6 != *v4)
      {
LABEL_6:
        *v6 = a2;
LABEL_14:
        ++*(v2 + 780);
        goto LABEL_15;
      }

      result = SmallBufAppendMemory(result, 4096);
      if (result)
      {
        v6 = *(v2 + 780);
        goto LABEL_6;
      }

LABEL_15:
      v8 = *MEMORY[0x29EDCA608];
      return result;
    }

    if (v6 + 1 == *v4)
    {
      result = SmallBufAppendMemory(result, 4096);
      if (!result)
      {
        goto LABEL_15;
      }

      LOBYTE(v5) = v2[797];
      v6 = *(v2 + 780);
    }

    *v6 |= a2 >> (7 - v5);
    *(*(v2 + 780) + 1) = a2 << (v2[797] + 1);
    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDCA608];

  return CUCFErrorHandler(result, 11);
}

uint64_t SmallBufGetSeg(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
LABEL_13:
    CUCFErrorHandler(a1, v8);
    goto LABEL_14;
  }

  if (a2)
  {
    v4 = (a1 + 780);
    if (*(a1 + 798) != 7)
    {
      CUCFErrorHandler(a1, 15);
    }

    result = *(v2 + 788);
    v6 = *v4 - result;
    if (a2 <= v6)
    {
      goto LABEL_15;
    }

    v7 = *(v2 + 728);
    if (v7)
    {
      v7(v2, (a2 - v6));
      result = *(v2 + 788);
      v6 = *v4 - result;
    }

    if (*(v2 + 797) != 7)
    {
      ++v6;
    }

    if (v6 >= a2)
    {
LABEL_15:
      *(v2 + 788) = result + a2;
      goto LABEL_16;
    }

    a1 = v2;
    v8 = 12;
    goto LABEL_13;
  }

LABEL_14:
  result = 0;
LABEL_16:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufSkipSeg(uint64_t result, unint64_t a2)
{
  v2 = result;
  v13 = *MEMORY[0x29EDCA608];
  if (*(result + 744) != 1)
  {
    v10 = *MEMORY[0x29EDCA608];
    v11 = *MEMORY[0x29EDCA608];
    v9 = 11;
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_17:
    v12 = *MEMORY[0x29EDCA608];
    return result;
  }

  v4 = (result + 780);
  if (*(result + 798) != 7)
  {
    result = CUCFErrorHandler(result, 15);
  }

  v5 = *(v2 + 788);
  v6 = *v4 - v5;
  if (a2 <= v6)
  {
    goto LABEL_16;
  }

  v7 = *(v2 + 728);
  if (v7)
  {
    result = v7(v2, (a2 - v6));
    v5 = *(v2 + 788);
    v6 = *v4 - v5;
  }

  if (*(v2 + 797) != 7)
  {
    ++v6;
  }

  if (v6 >= a2)
  {
LABEL_16:
    *(v2 + 788) = v5 + a2;
    goto LABEL_17;
  }

  v8 = *MEMORY[0x29EDCA608];
  result = v2;
  v9 = 12;
LABEL_13:

  return CUCFErrorHandler(result, v9);
}

uint64_t SmallBufPeekSeg(uint64_t a1, unint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v4 = (a1 + 780);
  if (*(a1 + 798) != 7)
  {
    CUCFErrorHandler(a1, 15);
  }

  result = *(a1 + 788);
  v6 = *v4 - result;
  if (a2 > v6)
  {
    v7 = *(a1 + 728);
    if (v7)
    {
      v7(a1, (a2 - v6));
      result = *(a1 + 788);
      v6 = *v4 - result;
    }

    if (*(a1 + 797) != 7)
    {
      ++v6;
    }

    if (v6 < a2)
    {
      v8 = 12;
LABEL_13:
      CUCFErrorHandler(a1, v8);
      goto LABEL_14;
    }
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *SmallBufPutSeg(char *result, unsigned __int8 *__src, size_t a3)
{
  v3 = result;
  v13 = *MEMORY[0x29EDCA608];
  if (result[744])
  {
    v4 = a3;
    if (a3)
    {
      v6 = result + 764;
      v7 = *(result + 780);
      v8 = &v7[v4];
      if (result[797] != 7)
      {
        if ((v8 + 1) <= *v6 || (result = SmallBufAppendMemory(result, 4096)) != 0)
        {
          do
          {
            **(v3 + 780) |= *__src >> (7 - v3[797]);
            v10 = *(v3 + 780);
            *(v3 + 780) = v10 + 1;
            v11 = *__src++;
            *(v10 + 1) = v11 << (v3[797] + 1);
            --v4;
          }

          while (v4);
        }

        goto LABEL_14;
      }

      if (v8 <= *v6)
      {
        goto LABEL_7;
      }

      result = SmallBufAppendMemory(result, 4096);
      if (result)
      {
        v7 = *(v3 + 780);
LABEL_7:
        result = memcpy_s("posp_memcpy", 29, v7, v4, __src, v4);
        *(v3 + 780) += v4;
      }
    }

LABEL_14:
    v12 = *MEMORY[0x29EDCA608];
    return result;
  }

  v9 = *MEMORY[0x29EDCA608];

  return CUCFErrorHandler(result, 11);
}

char *SmallBufPutBit(char *result, int a2)
{
  v2 = result;
  v10 = *MEMORY[0x29EDCA608];
  if (result[744])
  {
    v3 = a2;
    v4 = result[797];
    if (v4 == 7)
    {
      v5 = *(result + 780);
      if (v5 == *(result + 764))
      {
        result = SmallBufAppendMemory(result, 4096);
        if (!result)
        {
LABEL_14:
          v9 = *MEMORY[0x29EDCA608];
          return result;
        }

        v5 = *(v2 + 780);
      }

      *v5 = v3 << 7;
      v6 = 6;
    }

    else
    {
      **(result + 780) |= a2 << v4;
      if (result[797])
      {
        v6 = result[797] - 1;
      }

      else
      {
        ++*(result + 780);
        v6 = 7;
      }
    }

    v2[797] = v6;
    goto LABEL_14;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];

  return CUCFErrorHandler(result, 11);
}

uint64_t SmallBufGetBit(uint64_t a1)
{
  v1 = a1;
  v10 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v8 = 11;
LABEL_9:
    CUCFErrorHandler(a1, v8);
    result = 0;
    goto LABEL_14;
  }

  v2 = (a1 + 780);
  v3 = *(a1 + 788);
  if (v3 == *(a1 + 780) && *(a1 + 798) == *(a1 + 797))
  {
    v4 = *(a1 + 728);
    if (!v4 || (v4(a1, 1), v3 = *(v1 + 788), v3 == *v2))
    {
      a1 = v1;
      v8 = 12;
      goto LABEL_9;
    }
  }

  v5 = *(v1 + 798);
  if (v5 == 7)
  {
    result = *v3 >> 7;
    v7 = 6;
  }

  else
  {
    result = (*v3 >> v5) & 1;
    if (*(v1 + 798))
    {
      v7 = v5 - 1;
    }

    else
    {
      *(v1 + 788) = v3 + 1;
      v7 = 7;
    }
  }

  *(v1 + 798) = v7;
LABEL_14:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *SmallBufPutBits(char *result, unint64_t a2, unsigned int a3)
{
  v3 = result;
  v19 = *MEMORY[0x29EDCA608];
  if (!result[744])
  {
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
    v7 = 11;
    goto LABEL_6;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_23;
  }

  if (a3 < 0x21)
  {
    v11 = result[797];
    v12 = a3 - v11 + 7;
    v13 = v12 & 7;
    v14 = v12 >> 3;
    v15 = *(result + 780) + v14;
    if ((v12 & 7) != 0)
    {
      ++v15;
    }

    if (v15 <= *(result + 764))
    {
      goto LABEL_14;
    }

    result = SmallBufAppendMemory(result, 4096);
    if (result)
    {
      v11 = v3[797];
LABEL_14:
      if (v11 == 7)
      {
        **(v3 + 780) = 0;
      }

      if (v12 >= 8u)
      {
        v16 = (*(v3 + 780) + v14);
        *(v3 + 780) = v16;
        v3[797] = v13 ^ 7;
        if ((v12 & 7) != 0)
        {
          *v16 = a2 << (8 - v13);
          a2 >>= v13;
          v16 = *(v3 + 780);
        }

        v17 = v16 - 1;
        if (v12 >= 0x10u)
        {
          do
          {
            *v17-- = a2;
            LODWORD(v14) = v14 - 1;
            a2 >>= 8;
          }

          while (v14 > 1u);
        }

        *v17 |= a2;
      }

      else
      {
        **(v3 + 780) |= a2 << (v3[797] - v4 + 1);
        v3[797] -= v4;
      }
    }

LABEL_23:
    v18 = *MEMORY[0x29EDCA608];
    return result;
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  v7 = 13;
LABEL_6:

  return CUCFErrorHandler(result, v7);
}

unint64_t SmallBufGetBits(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v18 = *MEMORY[0x29EDCA608];
  if (*(a1 + 744) != 1)
  {
    v4 = 11;
    goto LABEL_6;
  }

  v3 = a2;
  if (!a2)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  if (a2 >= 0x21)
  {
    v4 = 13;
LABEL_6:
    CUCFErrorHandler(a1, v4);
    goto LABEL_7;
  }

  v7 = (a1 + 780);
  v8 = *(a1 + 788);
  v9 = *(a1 + 798);
  v10 = v9 - *(a1 + 797) + 8 * (*(a1 + 780) - v8);
  v11 = a2 - v10;
  if (a2 > v10)
  {
    v12 = *(a1 + 728);
    if (v12)
    {
      v13 = v11 >> 3;
      if ((v11 & 7) != 0)
      {
        v14 = (v13 + 1);
      }

      else
      {
        v14 = v13;
      }

      v12(a1, v14);
      v8 = *(v2 + 788);
      v10 = *(v2 + 798) - *(v2 + 797) + 8 * (*v7 - v8);
      LODWORD(v9) = *(v2 + 798);
    }

    if (v10 < v3)
    {
      a1 = v2;
      v4 = 12;
      goto LABEL_6;
    }
  }

  if (v9 == 7)
  {
    result = 0;
  }

  else
  {
    result = (SmallBufGetBits(sCoder *,unsigned char)::SmallBufBitMask[v9] & *v8);
    if (((~v9 + v3) & 0x80) != 0)
    {
      result >>= -(~v9 + v3);
      *(v2 + 798) = v9 - v3;
      goto LABEL_8;
    }

    *(v2 + 788) = ++v8;
    *(v2 + 798) = 7;
    LOBYTE(v3) = ~v9 + v3;
  }

  v15 = v3 & 7;
  if (v3 >= 8u)
  {
    v16 = v3 >> 3;
    do
    {
      v17 = *v8++;
      result = v17 | (result << 8);
      --v16;
      *(v2 + 788) = v8;
    }

    while (v16);
  }

  if ((v3 & 7) != 0)
  {
    *(v2 + 798) = v15 ^ 7;
    result = (result << v15) | (*v8 >> (8 - v15));
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SmallBufAlign(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(result + 744);
  if (v1 == 2)
  {
    if (*(result + 797) != 7)
    {
      ++*(result + 780);
      *(result + 797) = 7;
    }

    goto LABEL_7;
  }

  if (v1 == 1)
  {
    if (*(result + 798) != 7)
    {
      ++*(result + 788);
      *(result + 798) = 7;
    }

LABEL_7:
    v2 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = *MEMORY[0x29EDCA608];

  return CUCFErrorHandler(result, 11);
}

uint64_t Hal19_HandleBufferResp(uint64_t result, unsigned int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (result)
  {
    if (a2 > 0xC)
    {
      if (*(result + 2) == 66 && *(result + 3) == 67)
      {
        g_ChipBuffersResp = *(result + 9);
        byte_2A1938EBB = *(result + 8);
        Hal08_SetGizar2AvaialbleBuffers(g_ChipBuffersResp);
        result = gnssOsa_SemRelease(g_HandleAckSem);
        if ((result & 1) == 0)
        {
          result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v6 = *__error();
            v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3);
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v5);
LABEL_7:
        result = LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
      goto LABEL_7;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal19_GetChiBuffers(void)
{
  v23 = *MEMORY[0x29EDCA608];
  v18[0] = 0;
  qmemcpy(v16, "Bc ", sizeof(v16));
  v20 = 3;
  v21 = 0;
  plc00_10EncodeHdrPlCs(v16, v19, 12, 1u, 1, v18);
  v0 = v18[0];
  if (v18[0])
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v1 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Hdrerr,%u\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal19_GetChiBuffers", 775, v0);
      LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  v22 = 167772160;
  g_HalState = 12;
  if (Hal22_ZxSendToChip(v19, 0xCuLL) <= 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 69, "Hal19_GetChiBuffers", 1282);
      LbsOsaTrace_WriteLog(0xDu, __str, v10, 0, 1);
    }

    result = 4294967289;
  }

  else
  {
    v5 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
    if (v5 == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 69, "Hal19_GetChiBuffers", 1543);
        LbsOsaTrace_WriteLog(0xDu, __str, v12, 0, 1);
      }

      result = 4294967287;
    }

    else
    {
      if (v5)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        if (!result)
        {
          goto LABEL_5;
        }

        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 69, "Hal19_GetChiBuffers", 1541);
        v8 = 0;
        goto LABEL_20;
      }

      if (byte_2A1938EBB == 32)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
        if (!result)
        {
          goto LABEL_5;
        }

        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Buffer,%u\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal19_GetChiBuffers", g_ChipBuffersResp);
        v8 = 4;
LABEL_20:
        LbsOsaTrace_WriteLog(0xDu, __str, v7, v8, 1);
        result = 0;
        goto LABEL_5;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx err,%d\n", (*&g_MacClockTicksToMsRelation * v14), "HAL", 69, "Hal19_GetChiBuffers", 770, byte_2A1938EBB);
        LbsOsaTrace_WriteLog(0xDu, __str, v15, 0, 1);
      }

      result = 4294967288;
    }
  }

LABEL_5:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *Hal19_HandlePatchResp(_BYTE *result, unsigned int a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
      goto LABEL_15;
    }

LABEL_16:
    v8 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a2 <= 0xB)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v14);
LABEL_15:
      result = LbsOsaTrace_WriteLog(0xDu, __str, v2, 0, 1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v3 = result;
  if (result[2] != 66)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v16 = v3[2];
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MsgC,%c \n", (*&g_MacClockTicksToMsRelation * v7));
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v4 = result[3];
  v5 = v4 - 70;
  if ((v4 - 70) > 0x2A)
  {
LABEL_11:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v15 = v3[3];
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx default - MsgID,%c \n", (*&g_MacClockTicksToMsRelation * v6));
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (((1 << v5) & 0x601) == 0)
  {
    if (((1 << v5) & 0x60100000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v9 = result[4];
  if (v9 != 80 && v9 != 77)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_16;
    }

    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v17 = v3[4];
    v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MSGX-ID,%c\n", (*&g_MacClockTicksToMsRelation * v13));
    goto LABEL_15;
  }

  v10 = v3[8];
  v11 = *(v3 + 5);
  v12 = *MEMORY[0x29EDCA608];

  return Hal08_HandleSingleAck(v9, v4, v11, v10);
}

uint64_t asn1PD_NotificationMode(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v12 = 0;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
  }

  else
  {
    if (BitFromBuffer)
    {
      v8 = Asn1Coder::DecodeEnumerationExtension(a1, &v12);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v11 = v12;
    }

    else
    {
      v8 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v12);
      if (v8)
      {
        v5 = v8;
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v11 = v12 + 1;
    }

    if (v11 <= 1u)
    {
      v5 = 0;
      *a2 = v11;
      goto LABEL_4;
    }

    v5 = 4;
    *(a1 + 16) = 4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = 4;
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_HistoricReporting(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_19;
  }

  v9 = BitFromBuffer;
  *(a2 + 24) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v18 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = Asn1Coder::DecodeEnumerationExtension(a1, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
LABEL_16:
      SuplAsn1Logger::TraceError(v11, v12, v13);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = Asn1Coder::DecodeInteger(a1, 0, 2u, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }
  }

  if (v18 >= 3u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v18;
  if (*(a2 + 24))
  {
    v14 = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v17 = v14;
    *(a2 + 20) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 21) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    *(a2 + 22) = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16) || *(a2 + 20) && (v5 = asn1PD_TimeWindow(a1, (a2 + 4)), v5))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (*(a2 + 21))
    {
      v11 = Asn1Coder::DecodeInteger(a1, 1, 0x10000u, (a2 + 12));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }

    if (*(a2 + 22))
    {
      v11 = Asn1Coder::DecodeInteger(a1, 0, 0x15180u, (a2 + 16));
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }

    if (v17)
    {
      v11 = Asn1Coder::SkipSequenceExtension(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_TimeWindow(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::DecodeInteger(a1, -525600, -1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_5:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_6;
  }

  v4 = Asn1Coder::DecodeInteger(a1, -525599, 0, a2 + 1);
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_5;
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_ProtectionLevel(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
LABEL_18:
    SuplAsn1Logger::TraceError(v8, v6, v7);
    goto LABEL_19;
  }

  v9 = BitFromBuffer;
  *(a2 + 64) = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
    goto LABEL_18;
  }

  v10 = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  v18 = 0;
  if (v5)
  {
LABEL_17:
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = v5;
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = Asn1Coder::DecodeEnumerationExtension(a1, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
LABEL_16:
      SuplAsn1Logger::TraceError(v11, v12, v13);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v18);
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }
  }

  if (v18 >= 2u)
  {
    v5 = 4;
    *(a1 + 16) = 4;
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    LODWORD(v11) = 4;
    goto LABEL_16;
  }

  *a2 = v18;
  if (*(a2 + 64))
  {
    v14 = Asn1Coder::GetBitFromBuffer(a1);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = *(a1 + 16);
      goto LABEL_16;
    }

    v17 = v14;
    Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, (a2 + 8), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
      goto LABEL_21;
    }

    v11 = Asn1Coder::DecodeInteger(a1, 0, 0xFFFFu, (a2 + 32));
    if (v11)
    {
      v5 = v11;
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      goto LABEL_16;
    }

    Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, (a2 + 40), 0);
    v5 = *(a1 + 16);
    if (*(a1 + 16))
    {
LABEL_21:
      SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
      v12 = *(a1 + 8);
      v13 = *(a1 + 12);
      LODWORD(v11) = v5;
      goto LABEL_16;
    }

    if (v17)
    {
      v11 = Asn1Coder::SkipSequenceExtension(a1);
      if (v11)
      {
        v5 = v11;
        v12 = *(a1 + 8);
        v13 = *(a1 + 12);
        goto LABEL_16;
      }
    }
  }

  if (!v9)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v8 = Asn1Coder::SkipSequenceExtension(a1);
  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    goto LABEL_18;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_SUPLINIT_VER2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v15[0] = 0;
  v16 = 0;
  v4 = Asn1Coder::DecodeSequenceExtension(a1, v15);
  v13 = 0;
  v14 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v4 = Asn1Coder::DecodeOpenTypeFieldStart(a1, &v13);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
      v5 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        LODWORD(v4) = *(a1 + 16);
      }

      else
      {
        v9 = BitFromBuffer;
        *(a2 + 240) = Asn1Coder::GetBitFromBuffer(a1);
        v5 = *(a1 + 16);
        if (*(a1 + 16))
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          LODWORD(v4) = *(a1 + 16);
        }

        else
        {
          *(a2 + 241) = Asn1Coder::GetBitFromBuffer(a1);
          v5 = *(a1 + 16);
          if (*(a1 + 16))
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            LODWORD(v4) = *(a1 + 16);
          }

          else
          {
            *(a2 + 242) = Asn1Coder::GetBitFromBuffer(a1);
            v5 = *(a1 + 16);
            if (*(a1 + 16))
            {
              v6 = *(a1 + 8);
              v7 = *(a1 + 12);
              LODWORD(v4) = *(a1 + 16);
            }

            else
            {
              *(a2 + 243) = Asn1Coder::GetBitFromBuffer(a1);
              v5 = *(a1 + 16);
              if (*(a1 + 16))
              {
                v6 = *(a1 + 8);
                v7 = *(a1 + 12);
                LODWORD(v4) = *(a1 + 16);
              }

              else
              {
                *(a2 + 244) = Asn1Coder::GetBitFromBuffer(a1);
                v5 = *(a1 + 16);
                if (*(a1 + 16))
                {
                  v6 = *(a1 + 8);
                  v7 = *(a1 + 12);
                  LODWORD(v4) = *(a1 + 16);
                }

                else
                {
                  *(a2 + 245) = Asn1Coder::GetBitFromBuffer(a1);
                  v5 = *(a1 + 16);
                  if (*(a1 + 16))
                  {
                    v6 = *(a1 + 8);
                    v7 = *(a1 + 12);
                    LODWORD(v4) = *(a1 + 16);
                  }

                  else
                  {
                    *(a2 + 246) = Asn1Coder::GetBitFromBuffer(a1);
                    v5 = *(a1 + 16);
                    if (*(a1 + 16))
                    {
                      v6 = *(a1 + 8);
                      v7 = *(a1 + 12);
                      LODWORD(v4) = *(a1 + 16);
                    }

                    else
                    {
                      *(a2 + 247) = Asn1Coder::GetBitFromBuffer(a1);
                      v5 = *(a1 + 16);
                      if (*(a1 + 16) || *(a2 + 240) && (v5 = asn1PD_NotificationMode(a1, (a2 + 248)), v5))
                      {
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = v5;
                      }

                      else if (*(a2 + 241) && (v4 = asn1PD_SupportedNetworkInformation(a1, (a2 + 256)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 242) && (v4 = asn1PD_TriggerType(a1, (a2 + 352)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 243) && (v4 = asn1PD_SLPAddress(a1, a2 + 360), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 244) && (v4 = asn1PD_HistoricReporting(a1, a2 + 448), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 245) && (v4 = asn1PD_ProtectionLevel(a1, a2 + 480), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 246) && (v4 = asn1PD_GNSSPosTechnology(a1, (a2 + 552)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (*(a2 + 247) && (v4 = Asn1Coder::DecodeInteger(a1, 0, 255, (a2 + 560)), v4))
                      {
                        v5 = v4;
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                      }

                      else if (v9)
                      {
                        v5 = 1;
                        *(a1 + 16) = 1;
                        SuplAsn1Logger::TraceError(1u, *(a1 + 8), *(a1 + 12));
                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
                        LODWORD(v4) = 1;
                      }

                      else
                      {
                        v12 = v13.i32[0];
                        *(a1 + 8) = v14 + v13.i32[1];
                        *(a1 + 12) = v12;
                        v4 = Asn1Coder::SkipSequenceExtensionAddition(a1, v15, 1u);
                        v5 = v4;
                        if (!v4)
                        {
                          goto LABEL_24;
                        }

                        v6 = *(a1 + 8);
                        v7 = *(a1 + 12);
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

  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_24:
  v10 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t NK_Check_State(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 11032);
  if (v3 >= 0x258)
  {
    v4 = 0;
    while (*(a3 + 2960 + v4) != 1 || *(result + v4) < 0x21u)
    {
      if (++v4 == 48)
      {
        goto LABEL_11;
      }
    }

    *(a3 + 960) = 0;
    *(a2 + 233) = 1;
    *(a3 + 964) = 0;
    *(a2 + 235) = 0;
    if (*(a3 + 12) >= 10)
    {
      *(a3 + 12) = 9;
    }

    if (v3 >= 0x384)
    {
      *(a2 + 11048) = 0;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Trop_Elev_MapF(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0.0;
  result = R8_EQ((a1 + 16), v5);
  if (!result)
  {
    v3 = 1.0 / (*(a1 + 8) + 0.00143 / (*(a1 + 8) / *(a1 + 16) + 0.0445));
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void Trop_Niell_MappingFunc::Get_Dry_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, double a4, int a5)
{
  v13 = *MEMORY[0x29EDCA608];
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a4, a5);
  if (*(this + 66) == 1 && a3 >= -500.0 && a3 <= 18000.0)
  {
    v8 = sin(a2 * 0.0174532925);
    v9 = *MEMORY[0x29EDCA608];
    v10 = fmax(v8, 0.001);
    v11 = (*(this + 5) / (*(this + 6) / (*(this + 7) + 1.0) + 1.0) + 1.0) / (v10 + *(this + 5) / (v10 + *(this + 6) / (v10 + *(this + 7)))) + (1.0 / v10 + -1.00002516 / (v10 + 0.0000253 / (v10 + 0.00549 / (v10 + 0.00114)))) * (a3 * 0.001);
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
  }
}

void Trop_Niell_MappingFunc::Set_MappingFunc_Params(Trop_Niell_MappingFunc *this, double a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a3 - 1;
  if ((a3 - 1) > 0x16D)
  {
    v5 = 0;
    *(this + 65) = 0;
  }

  else if (*(this + 2) == a3 && (*(this + 65) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
    *(this + 65) = 1;
    *(this + 2) = a3;
  }

  if (fabs(a2) > 90.0)
  {
    v6 = 0;
    *(this + 64) = 0;
LABEL_18:
    *(this + 66) = v6;
    goto LABEL_19;
  }

  if (vabdd_f64(*this, a2) > 0.5 || (*(this + 64) & 1) == 0)
  {
    *(this + 64) = 1;
    *this = a2;
    if (v4 >= 0x16E)
    {
      goto LABEL_19;
    }

LABEL_17:
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Dry_Avg, NMF_a_Dry_Amp);
    *(this + 5) = v9;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Dry_Avg, NMF_b_Dry_Amp);
    *(this + 6) = v10;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Dry_Avg, NMF_c_Dry_Amp);
    *(this + 7) = v11;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_a_Wet_Avg, 0);
    *(this + 2) = v12;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_b_Wet_Avg, 0);
    *(this + 3) = v13;
    Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(this, NMF_c_Wet_Avg, 0);
    *(this + 4) = v14;
    v6 = 1;
    goto LABEL_18;
  }

  v7 = v4 > 0x16D;
  v8 = v5 ^ 1;
  if (v7)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
}

void Trop_Niell_MappingFunc::Get_Wet_MappingFunc_OF(Trop_Niell_MappingFunc *this, double a2, double a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  Trop_Niell_MappingFunc::Set_MappingFunc_Params(this, a3, a4);
  if (*(this + 66) == 1)
  {
    v6 = fmax(sin(a2 * 0.0174532925), 0.001);
    v7 = (*(this + 2) / (*(this + 3) / (*(this + 4) + 1.0) + 1.0) + 1.0) / (v6 + *(this + 2) / (v6 + *(this + 3) / (v6 + *(this + 4))));
  }

  v8 = *MEMORY[0x29EDCA608];
}

void Trop_Niell_MappingFunc::Compute_MapFunc_Coeff(Trop_Niell_MappingFunc *this, const double *a2, const double *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = *(this + 2);
    if (*this < 0.0)
    {
      v5 = v5 + 182.625;
    }

    v6 = fabs(*this);
    cos((v5 + -28.0) * 0.0172024238);
    if (v6 <= 15.0)
    {
      v9 = *a2;
      if (a3)
      {
        v10 = *a3;
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (v6 <= 30.0)
    {
      v12 = 1;
    }

    else if (v6 <= 45.0)
    {
      v12 = 2;
    }

    else if (v6 <= 60.0)
    {
      v12 = 3;
    }

    else
    {
      if (v6 > 75.0)
      {
        v7 = *(a2 + 4);
        if (a3)
        {
          v8 = *(a3 + 4);
LABEL_14:
          v11 = *MEMORY[0x29EDCA608];
          return;
        }

        goto LABEL_24;
      }

      v12 = 4;
    }

    v13 = v12 - 1;
    v14 = Phi0_Bands[v12];
    v15 = Phi0_Bands[v12 - 1];
    if (vabdd_f64(v14, v15) >= 1.0)
    {
      v16 = v14 - v15;
    }

    else
    {
      v16 = 1.0;
    }

    v17 = (v6 - v15) / v16;
    v18 = a2[v13] + v17 * (a2[v12] - a2[v13]);
    if (a3)
    {
      v19 = a3[v13];
      v20 = *MEMORY[0x29EDCA608];
      v21 = v19 + v17 * (a3[v12] - v19);
      return;
    }
  }

LABEL_24:
  v22 = *MEMORY[0x29EDCA608];
}

uint64_t SuplUtils::GetInstance(SuplUtils *this)
{
  v6 = *MEMORY[0x29EDCA608];
  if (SuplUtils::GetInstance(void)::pred_suplUtils != -1)
  {
    dispatch_once(&SuplUtils::GetInstance(void)::pred_suplUtils, &__block_literal_global_7);
  }

  result = SuplUtils::m_supl_utils;
  if (!SuplUtils::m_supl_utils)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "GetInstance", "GetInstance");
      LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GetInstance", "SuplUtils.cpp", 63, "false && Memory allocation failure");
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

char *___ZN9SuplUtils11GetInstanceEv_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = operator new(0x118uLL, MEMORY[0x29EDC9418]);
  if (result)
  {
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    result[36] = 1;
    *(result + 20) = -254;
    *(result + 30) = 0;
    *(result + 38) = 0;
    *(result + 46) = 0;
    result[105] = 0;
    *(result + 60) = 0;
    *(result + 68) = 0;
    *(result + 76) = 0;
    *(result + 82) = 0;
    *(result + 90) = 0;
    *(result + 46) = 0;
    *(result + 187) = 0;
    *(result + 102) = 0;
    *(result + 110) = 0;
    *(result + 30) = 0;
    *(result + 31) = 0;
    *(result + 29) = 0;
    *(result + 255) = 0;
    result[276] = 0;
    *(result + 268) = 0;
    *(result + 277) = 1;
    result[279] = 1;
  }

  SuplUtils::m_supl_utils = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::SetSETInfo(SimUtils *a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = -1;
  v19 = 0;
  v20 = 0;
  __p = 0;
  if (*a3 != 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
LABEL_6:
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "SetSETInfo", 514);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

LABEL_7:
    v9 = -4;
    goto LABEL_22;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  if ((v5 - v6) >= 9)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (&v17 == a3)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    a1 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v5, v5 - v6);
    v10 = __p;
    v11 = v19;
  }

  __str[0] = -1;
  v12 = v11 - v10;
  if ((v11 - v10) > 7)
  {
    if (v12 != 8)
    {
      v19 = v10 + 8;
LABEL_17:
      v13 = 0;
      do
      {
        v10[v13] = (v10[v13] >> 4) | (16 * v10[v13]);
        ++v13;
        v10 = __p;
      }

      while (v13 < v19 - __p);
      goto LABEL_19;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&__p, 8 - v12, __str);
    v10 = __p;
    v11 = v19;
  }

  if (v11 != v10)
  {
    goto LABEL_17;
  }

LABEL_19:
  v17 = *a3;
  Instance = SimUtils::GetInstance(a1);
  SimUtils::SetSETInfo(Instance, a2, &v17);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  v9 = 0;
LABEL_22:
  v15 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_299640E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SuplUtils::FillSetId(SimUtils *a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = -1;
  v13 = 0;
  v14 = 0;
  __p = 0;
  Instance = SimUtils::GetInstance(a1);
  SimUtils::GetSETInfo(Instance, a3, &v11);
  if (v11 == 1)
  {
    *a2 = 4;
    if ((a2 + 80) != &__p)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a2 + 80), __p, v13, v13 - __p);
    }

    __str[0] = -1;
    v6 = *(a2 + 80);
    v7 = *(a2 + 88) - v6;
    if (v7 > 7)
    {
      if (v7 != 8)
      {
        *(a2 + 88) = v6 + 8;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a2 + 80), 8 - v7, __str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "FillSetId", 514);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_299641010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SuplUtils::FillLocationId(SimUtils *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  result = SimUtils::GetInstance(a1);
  v6 = *(result + 16);
  if (v6)
  {
    while (*v6 != a3)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v8 = *MEMORY[0x29EDCA608];

    return ASN1T_LocationId::operator=(a2, (v6 + 56));
  }

  else
  {
LABEL_4:
    v7 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t SuplUtils::ProcessSuplMtlrMessage(SuplProvider *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x200uLL, MEMORY[0x29EDC9418]);
  if (v8)
  {
    v9 = v8;
    SuplInitRecd::SuplInitRecd(v8);
    v10 = SuplInitRecd::ProcessSuplInit(v9, a2, a3);
    if (v10)
    {
      IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (IsLoggingAllowed)
      {
        bzero(__str, 0x410uLL);
        v12 = mach_continuous_time();
        v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "ProcessSuplMtlrMessage", 770);
        IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
      }

      Instance = LcsSuplGlueLayer::GetInstance(IsLoggingAllowed);
      v15 = SuplUtils::ConvertPosMethod(Instance, *(*(v9 + 40) + 5));
      LcsSuplGlueLayer::SendSuplMsgStatus(Instance, a4, 2, v15, 0, 0);
      SuplInitRecd::~SuplInitRecd(v9);
      MEMORY[0x29C29EB20]();
      v16 = -1;
    }

    else
    {
      v19 = *(v9 + 8);
      if (v19)
      {
        v20 = *v19;
        if (v20)
        {
          if (*(*(v20 + 16) + 73))
          {
            v21 = SuplProvider::GetInstance(v10);
            SuplProvider::AbortAllSessionsOnPriority(v21);
          }
        }
      }

      *v9 = a4;
      *(v9 + 4) = a2;
      *(v9 + 16) = 1;
      if (SuplUtils::StoreSuplInitRecd(a1, a4, v9))
      {
        started = SuplInitRecd::StartSessionTimer(v9);
        v23 = LcsSuplGlueLayer::GetInstance(started);
        v24 = SuplUtils::ConvertPosMethod(v23, *(*(v9 + 40) + 5));
        v25 = LcsSuplGlueLayer::SendSuplMsgStatus(v23, a4, 1, v24, 0, 0);
        IsLocIdValid = *(SimUtils::GetInstance(v25) + 16);
        if (!IsLocIdValid)
        {
          goto LABEL_23;
        }

        while (*IsLocIdValid != a2)
        {
          IsLocIdValid = *(IsLocIdValid + 1);
          if (!IsLocIdValid)
          {
            goto LABEL_23;
          }
        }

        IsLocIdValid = SimInformation::IsLocIdValid(IsLocIdValid);
        if (IsLocIdValid)
        {
          SuplUtils::ProcessWaitingSuplInits(a1);
        }

        else
        {
LABEL_23:
          LcsSuplGlueLayer::GetInstance(IsLocIdValid);
          GN_SUPL_LocIdReq_Out(4095, a2);
        }

        v16 = 0;
      }

      else
      {
        v27 = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
        if (v27)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 69, "ProcessSuplMtlrMessage", 1537);
          v27 = LbsOsaTrace_WriteLog(0x12u, __str, v29, 0, 1);
        }

        v30 = LcsSuplGlueLayer::GetInstance(v27);
        v31 = SuplUtils::ConvertPosMethod(v30, *(*(v9 + 40) + 5));
        LcsSuplGlueLayer::SendSuplMsgStatus(v30, a4, 2, v31, 0, 0);
        SuplInitRecd::~SuplInitRecd(v9);
        MEMORY[0x29C29EB20]();
        v16 = -2;
      }
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ProcessSuplMtlrMessage", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
    }

    v16 = -3;
  }

  v32 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t SuplUtils::ConvertPosMethod(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 >= 0x11)
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Position Method\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "ConvertPosMethod", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = dword_29975F118[a2];
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Position Method,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "ConvertPosMethod", v2);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t SuplUtils::StoreSuplInitRecd(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = operator new(0x18uLL, MEMORY[0x29EDC9418]);
  if (v6)
  {
    v6[1] = 0;
    v6[2] = a3;
    *v6 = a2;
    v7 = *(a1 + 16);
    while (v7)
    {
      v8 = v7;
      v7 = *(v7 + 8);
      if (!v7)
      {
        *(v8 + 8) = v6;
        v6[1] = 0;
        goto LABEL_9;
      }
    }

    v6[1] = *(a1 + 16);
    *(a1 + 16) = v6;
LABEL_9:
    result = 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "StoreSuplInitRecd", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
      result = 0;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplInitRecd::StartSessionTimer(SuplInitRecd *this)
{
  v8 = *MEMORY[0x29EDCA608];
  Instance = LcsUtils::GetInstance(this);
  v3 = *this;
  v4 = SuplUtils::GetInstance(Instance);
  if (*(v4 + 38))
  {
    v5 = 1000 * *(v4 + 38);
  }

  else
  {
    v5 = 260000;
  }

  LcsTimer::Init(this + 124, v3 + 0xFFFF, 0, v5, 1);
  v6 = *MEMORY[0x29EDCA608];

  return LcsTimer::Start((this + 496));
}

SuplProvider *SuplUtils::ProcessWaitingSuplInits(SuplProvider *this)
{
  v13 = *MEMORY[0x29EDCA608];
  for (i = *(this + 2); i; i = *(i + 8))
  {
    v2 = *(i + 16);
    if (v2)
    {
      if (*(v2 + 16) == 1)
      {
        *(v2 + 16) = 0;
        v3 = *(*(v2 + 40) + 5);
        this = SuplProvider::GetInstance(this);
        if (this)
        {
          BYTE4(v11) = -1;
          v12 = 0;
          LOBYTE(v11) = 3;
          v4 = *(i + 16);
          v5 = *(v4 + 8);
          if (v5)
          {
            v6 = *v5;
            if (v6)
            {
              if (*(*(v6 + 16) + 73))
              {
                LOBYTE(v11) = 2;
              }
            }
          }

          SuplProvider::InitSessionNode(this, *(v4 + 4), *v4, &v11, 0);
          RequestedGNSSList = *(*(i + 16) + 8);
          if (RequestedGNSSList)
          {
            RequestedGNSSList = SuplInitRecdVer2::GetRequestedGNSSList(RequestedGNSSList);
            v8 = RequestedGNSSList;
          }

          else
          {
            v8 = 0;
          }

          Instance = LcsSuplGlueLayer::GetInstance(RequestedGNSSList);
          this = (*(*Instance + 16))(Instance, **(i + 16), v3, v8);
        }
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t SuplUtils::DeleteSuplInitRecd(uint64_t this, int a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(this + 16);
  if (v2)
  {
    v3 = *(this + 16);
    do
    {
      if (*v3 == a2)
      {
        while (*v2 != a2)
        {
          v2 = *(v2 + 8);
          if (!v2)
          {
            goto LABEL_9;
          }
        }

        LcsLinkedList::Remove(this, v2);
LABEL_9:
        v6 = *(v3 + 16);
        if (v6)
        {
          SuplInitRecd::~SuplInitRecd(v6);
          MEMORY[0x29C29EB20]();
        }

        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v7 = *MEMORY[0x29EDCA608];

        JUMPOUT(0x29C29EB20);
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t SuplUtils::ValidateSlpId(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  if (v5 == *a2)
  {
    v6 = 1;
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ValidateSlpId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    }

    v6 = 0;
    v5 = *a2;
  }

  if (v5 == 255)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = 515;
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    v10 = a3[8];
    v11 = a3[9] - v10;
    v12 = *(a2 + 8);
    v13 = *(a2 + 9);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
    goto LABEL_12;
  }

  v9 = a2[8];
  if (v9 == 2)
  {
    v10 = a3[5];
    v11 = a3[6] - v10;
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    goto LABEL_19;
  }

  if (v9 != 1)
  {
LABEL_12:
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_24;
    }

    bzero(__str, 0x410uLL);
    v14 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v15 = 514;
LABEL_17:
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v14, "SPL", 69, "ValidateSlpId", v15);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
    goto LABEL_24;
  }

  v10 = a3[2];
  v11 = a3[3] - v10;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
LABEL_19:
  if (v11 != v13 - v12 || memcmp(v10, v12, v11))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "SPL", 69, "ValidateSlpId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v18, 0, 1);
    }

    v6 = 0;
  }

LABEL_24:
  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t SuplUtils::ValidateSlpSessionId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8) - *a2;
  if (v4 == *(a3 + 8) - *a3 && !memcmp(*a2, *a3, v4))
  {
    result = 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ValidateSlpSessionId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
      result = 0;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::ValidateSetSessionId(SuplUtils *this, int a2, int a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 == a3)
  {
    result = 1;
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ValidateSetSessionId", 515);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
      result = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::ValidateSetId(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  if (v3 != *a3)
  {
    goto LABEL_20;
  }

  if (*a2 > 4u)
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v11 = a2[128];
        if (v11 == a3[128] && (v11 == 2 || v11 == 1))
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (v3 != 255)
      {
LABEL_20:
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "ValidateSetId", 515);
          LbsOsaTrace_WriteLog(0x12u, __str, v13, 0, 1);
        }

        v10 = 0;
        goto LABEL_23;
      }
    }
  }

  else if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {
      v4 = *(a2 + 1);
      v5 = *(a2 + 2) - v4;
      v6 = *(a3 + 1);
      v7 = *(a3 + 2);
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      v4 = *(a2 + 10);
      v5 = *(a2 + 11) - v4;
      v6 = *(a3 + 10);
      v7 = *(a3 + 11);
LABEL_13:
      if (v5 == v7 - v6 && !memcmp(v4, v6, v5))
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
LABEL_19:
    v10 = 1;
    goto LABEL_23;
  }

  bzero(__str, 0x410uLL);
  v8 = mach_continuous_time();
  v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 69, "ValidateSetId", 770);
  v10 = 1;
  LbsOsaTrace_WriteLog(0x12u, __str, v9, 0, 1);
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t SuplUtils::GetFixedSetCapabilities(uint64_t a1, uint64_t a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  Instance = SimUtils::GetInstance(a1);
  result = SimUtils::IsItCampedOnLte(Instance, a3);
  *(a2 + 9) = result == 0;
  if (*(a1 + 279))
  {
    v8 = 0;
  }

  else
  {
    if (result)
    {
      v9 = *(a1 + 276) == 1;
    }

    else
    {
      v9 = 0;
    }

    v8 = v9;
  }

  *a2 = v8;
  *(a2 + 1) = *(a1 + 277);
  *(a2 + 10) = 0;
  *(a2 + 8) = 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::FillSetCapabilities(_BYTE *a1, uint64_t a2, int a3, int a4)
{
  v9 = *MEMORY[0x29EDCA608];
  result = SuplUtils::GetFixedSetCapabilities(a1, a2, a4);
  if (a1[277] == 1)
  {
    *(a2 + 7) = 1;
  }

  if ((a3 & 0xFFFFFFFD) == 0 && !a1[279] && a1[276] == 1)
  {
    *(a2 + 7) = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::IsSETInfoValid(SuplUtils *this, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  result = *(SimUtils::GetInstance(this) + 16);
  if (result)
  {
    while (*result != a2)
    {
      result = *(result + 8);
      if (!result)
      {
        goto LABEL_6;
      }
    }

    result = SimInformation::IsSETIdValid(result) == 1;
  }

LABEL_6:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *SuplUtils::CopySlpSessionId(int a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a3 + 224 != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(a3 + 224), *(a3 + 232), *(a3 + 232) - *(a3 + 224));
  }

  v5 = *(a3 + 248);
  *(a2 + 24) = v5;
  if (v5 == 255)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 515;
    goto LABEL_18;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = *(a3 + 256);
      *(a2 + 32) = v6;
      if (v6 == 2)
      {
        result = (a2 + 64);
        if (a2 + 64 != a3 + 288)
        {
          v8 = *(a3 + 288);
          v9 = *(a3 + 296);
          goto LABEL_22;
        }

LABEL_19:
        v16 = *MEMORY[0x29EDCA608];
        return result;
      }

      if (v6 == 1)
      {
        result = (a2 + 40);
        if (a2 + 40 != a3 + 264)
        {
          v8 = *(a3 + 264);
          v9 = *(a3 + 272);
LABEL_22:
          v17 = *MEMORY[0x29EDCA608];

          return std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result, v8, v9, v9 - v8);
        }

        goto LABEL_19;
      }
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v11 = 514;
LABEL_18:
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v10, "SPL", 69, "CopySlpSessionId", v11);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
    goto LABEL_19;
  }

  result = (a2 + 88);
  if (a2 + 88 == a3 + 312)
  {
    goto LABEL_19;
  }

  v12 = *(a3 + 312);
  v13 = *(a3 + 320);
  v14 = *MEMORY[0x29EDCA608];

  return std::vector<ASN1T_MCC_MNC_Digit>::__assign_with_size[abi:ne200100]<ASN1T_MCC_MNC_Digit*,ASN1T_MCC_MNC_Digit*>(result, v12, v13, v13 - v12);
}

void SuplUtils::ConvertLocEstimatetoAsn1Position(int a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  *a2 = 0;
  v4 = *(a3 + 1);
  if (v4 > 0xA)
  {
LABEL_18:
    if (v4 == 255)
    {
LABEL_4:
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v5 = mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ConvertLocEstimatetoAsn1Position", 770);
        LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
      }

      goto LABEL_27;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_27;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 69, "ConvertLocEstimatetoAsn1Position", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v8, 0, 1);
    goto LABEL_27;
  }

  if (((1 << v4) & 0x523) != 0)
  {
    goto LABEL_4;
  }

  if (v4 != 3)
  {
    if (v4 == 9)
    {
      *(a2 + 35) = (*(a2 + 36) & 0x800000) != 0;
      *(a2 + 36) = *(a3 + 68) & 0x7FFFFF;
      *(a2 + 40) = *(a3 + 76);
      v9 = *(a3 + 84);
      v10 = *(a3 + 108);
      if (v9 != 0xFFFF && v10 != 255)
      {
        *(a2 + 34) = 1;
      }

      *(a2 + 52) = v10;
      *(a2 + 48) = v9 >> 15;
      *(a2 + 50) = v9 & 0x7FFF;
      v11 = *(a3 + 92);
      v12 = *(a3 + 100);
      if (v11 != 255 && v12 != 255 && *(a3 + 116) != 255)
      {
        *(a2 + 32) = 1;
      }

      *(a2 + 46) = *(a3 + 116);
      *(a2 + 44) = v11;
      v13 = 117;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v14 = *(a3 + 32);
  *(a2 + 36) = v14;
  *(a2 + 40) = *(a3 + 40);
  *(a2 + 35) = (v14 & 0x800000) != 0;
  *(a2 + 34) = 0;
  *(a2 + 32) = 1;
  *(a2 + 46) = *(a3 + 64);
  *(a2 + 44) = *(a3 + 48);
  v12 = *(a3 + 56);
  v13 = 65;
LABEL_22:
  v16 = (a2 + 8);
  v15 = *(a2 + 8);
  *(a2 + 45) = v12;
  *(a2 + 33) = 1;
  *(a2 + 47) = *(a3 + v13);
  v17 = *(a2 + 16) - v15;
  if (v17 > 0xC)
  {
    if (v17 != 13)
    {
      *(a2 + 16) = v15 + 13;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v16, 13 - v17);
    v15 = *v16;
  }

  *v15 = (*(a3 + 216) / 0xAu - 10 * ((6554 * (*(a3 + 216) / 0xAu)) >> 16)) | 0x30;
  (*v16)[1] = (*(a3 + 216) % 0xAu) | 0x30;
  (*v16)[2] = (*(a3 + 218) / 0xAu - 10 * ((26 * (*(a3 + 218) / 0xAu)) >> 8)) | 0x30;
  (*v16)[3] = (*(a3 + 218) % 0xAu) | 0x30;
  (*v16)[4] = (*(a3 + 219) / 0xAu - 10 * ((26 * (*(a3 + 219) / 0xAu)) >> 8)) | 0x30;
  (*v16)[5] = (*(a3 + 219) % 0xAu) | 0x30;
  (*v16)[6] = (*(a3 + 220) / 0xAu - 10 * ((26 * (*(a3 + 220) / 0xAu)) >> 8)) | 0x30;
  (*v16)[7] = (*(a3 + 220) % 0xAu) | 0x30;
  (*v16)[8] = (*(a3 + 221) / 0xAu - 10 * ((26 * (*(a3 + 221) / 0xAu)) >> 8)) | 0x30;
  (*v16)[9] = (*(a3 + 221) % 0xAu) | 0x30;
  (*v16)[10] = (*(a3 + 222) / 0xAu - 10 * ((26 * (*(a3 + 222) / 0xAu)) >> 8)) | 0x30;
  (*v16)[11] = (*(a3 + 222) % 0xAu) | 0x30;
  (*v16)[12] = 90;
LABEL_27:
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t SuplUtils::IsItDuplicateSUPLINIT(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  ASN1T_SessionID::ASN1T_SessionID(v14);
  v4 = *a2;
  v5 = a2[1];
  __p = 0;
  v40 = 0;
  v41 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v4, v5, v5 - v4);
  v37[0] = &__p;
  v37[1] = 5;
  v38 = 0;
  v6 = asn1PD_SessionID(v37, v14);
  v7 = __p;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v8 = 0;
  if (!v6)
  {
    if (v14[1])
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        while (1)
        {
          v9 = *(v8 + 16);
          if (*(v9 + 49))
          {
            v7 = SuplUtils::ValidateSlpSessionId(v7, v29, v9 + 384);
            if (v7)
            {
              v7 = SuplUtils::ValidateSlpId(v7, v30, (*(v8 + 16) + 408));
              if (v7)
              {
                break;
              }
            }
          }

          v8 = *(v8 + 8);
          if (!v8)
          {
            goto LABEL_14;
          }
        }

        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(&__p, 0x410uLL);
          v10 = mach_continuous_time();
          v11 = snprintf(&__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 69, "IsSessionWithSLPExists", 515);
          LbsOsaTrace_WriteLog(0x12u, &__p, v11, 0, 1);
        }

        v8 = 1;
      }
    }
  }

LABEL_14:
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_299642D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57)
{
  if (__p)
  {
    a57 = __p;
    operator delete(__p);
  }

  ASN1T_SessionID::~ASN1T_SessionID(&a14);
  _Unwind_Resume(a1);
}

uint64_t SuplUtils::IsQopValid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a3 == 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Last know position fix is not valid\n");
LABEL_10:
      LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
      result = 0;
    }
  }

  else if (*(a3 + 1) == 9)
  {
    if (*(a3 + 92) <= *(a2 + 3))
    {
      if (*a2 == 1 && *(a3 + 108) > *(a2 + 4))
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
        if (!result)
        {
          goto LABEL_11;
        }

        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: vertical accuracy is not valid\n");
        goto LABEL_10;
      }

      if (*(a2 + 1) != 1 || (v6 = *(a3 + 228), 1000 * *(a2 + 8) >= (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v6))
      {
        result = 1;
        goto LABEL_11;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: maxlocation age is not valid\n");
        goto LABEL_10;
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: stored semiminor axis is not valid\n");
        goto LABEL_10;
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Last know position shape type is not valid\n");
      goto LABEL_10;
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *SuplUtils::StoreLastKnownPositionFix(void *result, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = result;
    *(result + 20) = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(result + 6) = *(a2 + 56);
    *(result + 5) = v6;
    *(result + 4) = v5;
    *(result + 3) = v4;
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    *(result + 10) = *(a2 + 120);
    *(result + 9) = v9;
    *(result + 8) = v8;
    *(result + 7) = v7;
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    v12 = *(a2 + 168);
    result[28] = *(a2 + 184);
    *(result + 13) = v12;
    *(result + 12) = v11;
    *(result + 11) = v10;
    if (result + 5 != a2)
    {
      result = std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>(result + 29, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 4);
    }

    *(v3 + 16) = *(a2 + 216);
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplUtils::GetLastKnownPosition(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *a2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  *(a2 + 56) = *(a1 + 96);
  *(a2 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  v7 = *(a1 + 112);
  v8 = *(a1 + 128);
  v9 = *(a1 + 144);
  *(a2 + 120) = *(a1 + 160);
  *(a2 + 104) = v9;
  *(a2 + 88) = v8;
  *(a2 + 72) = v7;
  v10 = *(a1 + 176);
  v11 = *(a1 + 192);
  v12 = *(a1 + 208);
  *(a2 + 184) = *(a1 + 224);
  *(a2 + 168) = v12;
  *(a2 + 152) = v11;
  *(a2 + 136) = v10;
  if (a1 + 40 != a2)
  {
    std::vector<UtaLcsShapePoint>::__assign_with_size[abi:ne200100]<UtaLcsShapePoint*,UtaLcsShapePoint*>((a2 + 192), *(a1 + 232), *(a1 + 240), (*(a1 + 240) - *(a1 + 232)) >> 4);
  }

  *(a2 + 216) = *(a1 + 256);
  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t SuplUtils::ConvertSuplAddressToGnSuplAddess(uint64_t result, char *__str)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *result;
  if (v2 == 1)
  {
    v6 = *(result + 8);
    if (v6 == 2)
    {
      *(__str + 64) = 2;
      v8 = *(result + 40);
      v22 = v8[14];
      v23 = v8[15];
      v20 = v8[12];
      v21 = v8[13];
      v18 = v8[10];
      v19 = v8[11];
      v16 = v8[8];
      v17 = v8[9];
      v14 = v8[6];
      v15 = v8[7];
      result = snprintf(__str, 0x100uLL, "%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", *v8, v8[1], v8[2], v8[3], v8[4], v8[5]);
    }

    else if (v6 == 1)
    {
      *(__str + 64) = 1;
      v7 = *(result + 16);
      v12 = v7[2];
      v13 = v7[3];
      v10 = *v7;
      v11 = v7[1];
      result = snprintf(__str, 0x100uLL, "%d.%d.%d.%d");
    }

    goto LABEL_12;
  }

  if (v2 != 2)
  {
    *(__str + 64) = 0;
    goto LABEL_12;
  }

  *(__str + 64) = 3;
  v3 = *(result + 64);
  v4 = *(result + 72);
  if (v4 == v3)
  {
LABEL_12:
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v5 = *MEMORY[0x29EDCA608];

  return memmove(__str, v3, v4 - v3);
}

uint64_t SuplUtils::DecodeSUPL_INIT(SuplVersionNegotiation *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v59 = *MEMORY[0x29EDCA608];
  if (*a3 != a3[1])
  {
    v27 = 0;
    Instance = SuplVersionNegotiation::GetInstance(a1);
    v7 = atomic_load((Instance + 1));
    v8 = v7 == 255;
    v9 = 1;
    if (v8)
    {
      v9 = 2;
    }

    v10 = atomic_load((Instance + v9));
    v28 = v10;
    v29 = 0;
    v30 = -1;
    v31 = 0;
    ASN1T_SessionID::ASN1T_SessionID(v32);
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a3, a3[1], a3[1] - *a3);
    v56[0] = &__p;
    v56[1] = 0;
    v57 = 0;
    v23[0] = v56;
    v23[1] = &v27;
    v11 = SuplMessage::Decode(v23);
    if (v11 || v30 != 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "DecodeSUPL_INIT", 515);
        LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
      }

      v17 = -5;
      goto LABEL_43;
    }

    v12 = v31;
    *(a4 + 5) = *(v31 + 184) == 0;
    *(a4 + 6) = v28;
    *(a4 + 7) = v29;
    *(a4 + 12) = SuplUtils::ConvertPosMethod(v11, *(v12 + 5));
    *(a4 + 272) = 0;
    if (v32[1] == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess(&v49, (a4 + 16));
    }

    *(a4 + 536) = 0;
    if (*(v12 + 243) == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess(v12 + 360, (a4 + 280));
    }

    *(a4 + 800) = 0;
    if (*(v12 + 1) == 1)
    {
      SuplUtils::ConvertSuplAddressToGnSuplAddess(v12 + 80, (a4 + 544));
    }

    *(a4 + 808) = *(v12 + 73) != 0;
    *(a4 + 812) = 0;
    if (*v12 == 1)
    {
      v13 = *(v12 + 13);
      if (v13 <= 4)
      {
        *(a4 + 812) = v13 + 1;
      }
    }

    *(a4 + 816) = 0;
    if (*(v12 + 246))
    {
      v14 = *(v12 + 552);
      if (v14 == 1)
      {
        *(a4 + 816) = 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if (*(v12 + 553) == 1)
      {
        LOBYTE(v14) = v14 | 2;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 554) == 1)
      {
        LOBYTE(v14) = v14 | 4;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 555) == 1)
      {
        LOBYTE(v14) = v14 | 8;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 556) == 1)
      {
        LOBYTE(v14) = v14 | 0x10;
        *(a4 + 816) = v14;
      }

      if (*(v12 + 557) == 1)
      {
        *(a4 + 816) = v14 | 0x20;
      }
    }

    *(a4 + 817) = 0;
    if (*(v12 + 2) == 1)
    {
      *(a4 + 817) = 1;
      *(a4 + 820) = *(v12 + 171);
      *(a4 + 824) = *(v12 + 176);
      *(a4 + 828) = *(v12 + 180);
    }

    *(a4 + 832) = 0;
    if (*(v12 + 242) == 1)
    {
      v20 = *(v12 + 352);
      if (v20 == 1)
      {
LABEL_41:
        *(a4 + 832) = v20;
        goto LABEL_42;
      }

      if (!*(v12 + 352))
      {
        v20 = 2;
        goto LABEL_41;
      }
    }

LABEL_42:
    v17 = 0;
    *(a4 + 4) = 1;
LABEL_43:
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    ASN1T_UlpMessage::~ASN1T_UlpMessage(&v30);
    goto LABEL_68;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 69, "DecodeSUPL_INIT", 515);
    LbsOsaTrace_WriteLog(0x12u, __str, v16, 0, 1);
  }

  v17 = -5;
LABEL_68:
  v21 = *MEMORY[0x29EDCA608];
  return v17;
}

void SuplUtils::ConvertSuplEndStatusToGNSupl(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a2 > 0x17)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_29975F15C[a2];
  }

  *a3 = v3;
  v4 = *MEMORY[0x29EDCA608];
}

LcsSuplGlueLayer *SuplUtils::AbortAllStoredSuplInits(LcsSuplGlueLayer *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 8);
      if (*(v1 + 16))
      {
        Instance = LcsSuplGlueLayer::GetInstance(this);
        if (Instance)
        {
          v5 = Instance + 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = (*(*v5 + 8))(v5, **(v1 + 16));
        v7 = SuplPosPayloadHandler::GetInstance(v6);
        v8 = **(v1 + 16);
        v9 = LcsSuplGlueLayer::GetInstance(v7);
        (*(*v9 + 8))(v9, v8, 3, 0);
        SuplPosPayloadHandler::ResetLppParams(v7);
        this = SuplUtils::DeleteSuplInitRecd(v2, **(v1 + 16));
      }

      v1 = v3;
    }

    while (v3);
  }

  v10 = *MEMORY[0x29EDCA608];
  return this;
}

void ASN1T_SuplMessage::~ASN1T_SuplMessage(ASN1T_SuplMessage *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    *(this + 34) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  ASN1T_SETId::U::~U((this + 48));
  ASN1T_UlpMessage::~ASN1T_UlpMessage((this + 8));
  v6 = *MEMORY[0x29EDCA608];
}

void GLON_Alm_Apply_Corrns(uint64_t a1, double *a2, uint64_t a3, double a4, float64_t a5, double a6)
{
  v21 = *MEMORY[0x29EDCA608];
  v11 = a2[7];
  v12 = __sincos_stret(a2[8]);
  v13 = *(a1 + 8) + v11 * v12.__sinval;
  v14 = *(a1 + 16) + v11 * v12.__cosval;
  v15 = a2[4] + 1.09955743;
  v16 = sqrt(v14 * v14 + v13 * v13);
  *a3 = *a1 + a4;
  *(a3 + 8) = v16;
  v17.f64[0] = a5;
  v17.f64[1] = v15;
  *(a3 + 16) = vaddq_f64(v17, *(a1 + 24));
  if (fabs(v16) <= 2.22044605e-16)
  {
    *(a3 + 40) = 0;
    v18 = 0.0;
  }

  else if (fabs(v14) <= 2.22044605e-16)
  {
    if (v13 <= 0.0)
    {
      *(a3 + 40) = 0xBFF921FB54442D28;
      v18 = -1.57079633;
    }

    else
    {
      *(a3 + 40) = 0x3FF921FB54442D28;
      v18 = 1.57079633;
    }
  }

  else
  {
    v18 = atan2(v13, v14);
    *(a3 + 40) = v18;
  }

  *(a3 + 32) = *(a1 + 40) + a6 - v18;
  v19 = *MEMORY[0x29EDCA608];
}

void SuplResponseRecd::SuplResponseRecd(SuplResponseRecd *this)
{
  v9 = *MEMORY[0x29EDCA608];
  SuplState::SuplState(this);
  *v2 = &unk_2A1F88F10;
  *(v2 + 360) = 0;
  *(v2 + 16) = 3;
  *(v2 + 32) = 4;
  v3 = operator new(0x4A0uLL, MEMORY[0x29EDC9418]);
  if (!v3)
  {
    *(this + 5) = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_8;
    }

LABEL_7:
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "SuplResponseRecd", 1537);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    goto LABEL_8;
  }

  *v3 = 0;
  *(v3 + 15) = 0;
  *(v3 + 22) = 0;
  *(v3 + 4) = 0x200000100000101;
  *(v3 + 6) = 0;
  v3[14] = 0;
  *(v3 + 44) = 0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v3[80] = 0;
  *(v3 + 90) = 0xFFFFFFFFLL;
  *(v3 + 14) = 0;
  *(v3 + 15) = 0;
  *(v3 + 13) = 0;
  v3[128] = 0;
  *(v3 + 68) = 0;
  v3[138] = 0;
  *(v3 + 140) = -1;
  v3[150] = 0;
  *(v3 + 19) = 0xFFFF000000000000;
  *(v3 + 20) = 0;
  *(v3 + 21) = 0;
  *(v3 + 182) = 0;
  *(v3 + 22) = 0;
  *(v3 + 25) = 0;
  *(v3 + 26) = 0;
  *(v3 + 24) = 0;
  v3[216] = 1;
  *(v3 + 30) = 0;
  *(v3 + 31) = 0;
  *(v3 + 29) = 0;
  *(v3 + 260) = 0;
  *(v3 + 67) = 0;
  v3[272] = -1;
  *(v3 + 137) = 0;
  v3[276] = 0;
  *(v3 + 129) = -256;
  *(v3 + 128) = 0;
  *(v3 + 35) = 255;
  *(v3 + 18) = 0u;
  *(v3 + 19) = 0u;
  *(v3 + 20) = 0u;
  *(v3 + 21) = 0u;
  *(v3 + 22) = 0u;
  *(v3 + 23) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 25) = 0u;
  *(v3 + 26) = 0u;
  *(v3 + 27) = 0u;
  *(v3 + 28) = 0u;
  *(v3 + 29) = 0u;
  *(v3 + 30) = 0u;
  *(v3 + 31) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 33) = 0u;
  *(v3 + 34) = 0u;
  *(v3 + 35) = 0u;
  *(v3 + 36) = 0u;
  *(v3 + 37) = 0u;
  *(v3 + 38) = 0u;
  *(v3 + 39) = 0u;
  *(v3 + 80) = 0;
  v3[224] = 0;
  *(v3 + 41) = 0u;
  *(v3 + 42) = 0u;
  *(v3 + 43) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 45) = 0u;
  *(v3 + 46) = 0u;
  *(v3 + 47) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 49) = 0u;
  *(v3 + 50) = 0u;
  v3[792] = -1;
  v3[648] = 0;
  *(v3 + 51) = 0u;
  *(v3 + 52) = 0u;
  *(v3 + 53) = 0u;
  *(v3 + 54) = 0u;
  *(v3 + 55) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 57) = 0u;
  *(v3 + 58) = 0u;
  *(v3 + 59) = 0u;
  *(v3 + 60) = 0u;
  *(v3 + 61) = 0u;
  *(v3 + 62) = 0u;
  *(v3 + 63) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 65) = 0u;
  *(v3 + 66) = 0u;
  *(v3 + 67) = 0u;
  *(v3 + 68) = 0u;
  *(v3 + 69) = 0u;
  *(v3 + 70) = 0u;
  *(v3 + 71) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 73) = 0u;
  *(this + 5) = v3;
  v4 = operator new(1uLL, MEMORY[0x29EDC9418]);
  if (!v4)
  {
    *(this + 46) = 0;
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(this + 46) = v4;
LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
}

void SuplResponseRecd::~SuplResponseRecd(SuplResponseRecd *this)
{
  v11[1] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F88F10;
  if (*(this + 16) == 4)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(v2 + 1160);
      if (v3)
      {
        *(v2 + 1168) = v3;
        operator delete(v3);
      }

      ASN1T_Velocity::U::~U((v2 + 800));
      v11[0] = (v2 + 768);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v11);
      v11[0] = (v2 + 744);
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::__destroy_vector::operator()[abi:ne200100](v11);
      v4 = *(v2 + 712);
      if (v4)
      {
        *(v2 + 720) = v4;
        operator delete(v4);
      }

      v5 = *(v2 + 688);
      if (v5)
      {
        *(v2 + 696) = v5;
        operator delete(v5);
      }

      v6 = *(v2 + 664);
      if (v6)
      {
        *(v2 + 672) = v6;
        operator delete(v6);
      }

      ASN1T_Velocity::U::~U((v2 + 288));
      v7 = *(v2 + 232);
      if (v7)
      {
        *(v2 + 240) = v7;
        operator delete(v7);
      }

      ASN1T_CellInfo::~ASN1T_CellInfo((v2 + 80));
      v8 = *(v2 + 56);
      if (v8)
      {
        *(v2 + 64) = v8;
        operator delete(v8);
      }

      MEMORY[0x29C29EB20](v2, 0x1030C408DDF0A82);
    }

    *(this + 5) = 0;
    v9 = *(this + 46);
    if (v9)
    {
      MEMORY[0x29C29EB20](v9, 0xC400A2AC0F1);
    }

    *(this + 46) = 0;
  }

  SuplState::~SuplState(this);
  v10 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplResponseRecd::~SuplResponseRecd(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplResponseRecd::~SuplResponseRecd(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t SuplResponseRecd::UpdateState(uint64_t this)
{
  v5 = *MEMORY[0x29EDCA608];
  if (*(this + 360))
  {
    *(this + 360) = 0;
    v1 = *(this + 8);
    v2 = *MEMORY[0x29EDCA608];

    return SuplState::UpdateState(this, 4, v1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }

  return this;
}

uint64_t SuplResponseRecd::Init(SuplResponseRecd *this)
{
  v121 = *MEMORY[0x29EDCA608];
  std::vector<unsigned char>::vector[abi:ne200100](v58, 3000);
  v60[0] = v58;
  v60[1] = 0;
  v61 = 0;
  v2 = *(this + 5);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 432);
    *(v2 + 18) = *(v3 + 446);
    *(v2 + 4) = v4;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "PrepareSuplPosInit", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v62 = *(v7 + 456);
    v8 = *(v7 + 472);
    v63 = *(v7 + 464);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v64, v8, *(v7 + 480), *(v7 + 480) - v8);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v9 = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v67, *(v7 + 496), *(v7 + 504), *(v7 + 504) - *(v7 + 496));
    v10 = *(v7 + 520);
    v70 = v10;
    if (v62 == 1)
    {
      v11 = (v63 >> 6) & 1;
      v12 = (v63 >> 4) & 1;
      v13 = (v63 >> 3) & 1;
      v14 = (v63 >> 5) & 1;
      v15 = v63 & 1;
      v16 = (v63 >> 2) & 1;
      v17 = (v63 >> 1) & 1;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }

    if ((v16 | v17 | v15 | v14 | v13 | v12 | v11) == 1)
    {
      *v2 = 1;
      *(v2 + 39) = v11;
      *(v2 + 37) = v12;
      *(v2 + 41) = v13;
      *(v2 + 38) = v14;
      *(v2 + 33) = v15;
      *(v2 + 35) = v16;
      *(v2 + 34) = v17;
      if (v13)
      {
        *(v2 + 32) = 1;
        goto LABEL_15;
      }
    }

    else if (v13)
    {
LABEL_15:
      *(v2 + 50) = WORD2(v63);
      *(v2 + 52) = BYTE6(v63);
      *(v2 + 54) = v10;
      v21 = HIBYTE(v63);
      *(v2 + 53) = HIBYTE(v63);
      if (v21)
      {
        v22 = 0;
        *(v2 + 48) = 1;
        v23 = *(v2 + 56);
        *(v2 + 64) = v23;
        do
        {
          v24 = *(v64 + v22);
          v25 = *(v67 + v22);
          v26 = *(v2 + 72);
          if (v23 >= v26)
          {
            v27 = *(v2 + 56);
            v28 = v23 - v27;
            v29 = (v23 - v27) >> 3;
            v30 = v29 + 1;
            if ((v29 + 1) >> 61)
            {
              std::vector<gnss::Emergency::Supl::LteCellInfo>::__throw_length_error[abi:ne200100]();
            }

            v31 = v26 - v27;
            if (v31 >> 2 > v30)
            {
              v30 = v31 >> 2;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (!(v32 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v33 = v29;
            v34 = (8 * v29);
            v35 = v24 | (v25 << 32);
            v36 = &v34[-v33];
            *v34 = v35;
            v23 = (v34 + 1);
            v9 = memcpy(v36, v27, v28);
            *(v2 + 56) = v36;
            *(v2 + 64) = v23;
            *(v2 + 72) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v23 = v24 | (v25 << 32);
            v23 += 8;
          }

          *(v2 + 64) = v23;
          if (v22 > 0x1C)
          {
            break;
          }

          ++v22;
        }

        while (v22 < HIBYTE(v63));
      }
    }

    Instance = SimUtils::GetInstance(v9);
    IsItCampedOnLte = SimUtils::IsItCampedOnLte(Instance, *(*(this + 1) + 532));
    if (IsItCampedOnLte)
    {
      std::vector<ASN1T_VER2_PosPayLoad_tia801payload>::clear[abi:ne200100]((v2 + 744));
      SuplResponseRecdVer2::UpdateLppCapPayload(*(this + 46), (this + 32));
      SuplResponseRecdVer2::UpdateLppADPayload(*(this + 46), this + 32, *(this + 1));
    }

    v39 = *(this + 1);
    if (v39)
    {
      if ((*(v39 + 380) & 0xFE) != 2)
      {
        goto LABEL_46;
      }

      *(this + 48) = 1;
      *(this + 28) = *(v39 + 376);
      v40 = SuplUtils::GetInstance(IsItCampedOnLte);
      SuplUtils::FillSetId(v40, this + 64, *(*(this + 1) + 532));
      v42 = SuplUtils::GetInstance(v41);
      SuplUtils::FillLocationId(v42, *(this + 5) + 80, *(*(this + 1) + 532));
      SuplInitRecd = SuplSession::GetSuplInitRecd(*(this + 1));
      v44 = SuplInitRecd;
      if (SuplInitRecd)
      {
        if (*(*(SuplInitRecd + 5) + 2) == 1)
        {
          *__str = -254;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v104 = 0;
          v105 = 0;
          *(v106 + 3) = 0;
          v106[0] = 0;
          v106[2] = 0;
          v107 = 0;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v119 = 0;
          v120 = 0;
          v117 = 0;
          v118[0] = 0;
          *(v118 + 7) = 0;
          __p = 0;
          v45 = SuplUtils::GetInstance(SuplInitRecd);
          LastKnownPosition = SuplUtils::GetLastKnownPosition(v45, __str);
          v47 = SuplUtils::GetInstance(LastKnownPosition);
          IsQopValid = SuplUtils::IsQopValid(v47, *(v44 + 5) + 168, __str);
          if (IsQopValid == 1)
          {
            v49 = SuplUtils::GetInstance(IsQopValid);
            SuplUtils::ConvertLocEstimatetoAsn1Position(v49, v2 + 224, __str);
            *(v2 + 1) = 1;
          }

          if (__p)
          {
            v117 = __p;
            operator delete(__p);
          }
        }

        if (SuplInitRecd::FillHash(v44, v2 + 1160, *(*(this + 1) + 376), *(*(this + 1) + 532)) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v50 = mach_continuous_time();
          v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 69, "PrepareSuplPosInit", 770);
          LbsOsaTrace_WriteLog(0x12u, __str, v51, 0, 1);
        }
      }

      *(v2 + 3) = 1;
      v39 = *(this + 1);
      if (v39)
      {
LABEL_46:
        ASN1T_SessionID::operator=(this + 48, v39 + 64);
      }
    }

    v59[0] = v60;
    v59[1] = this + 24;
    if (SuplMessage::Encode(v59) && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v52 = mach_continuous_time();
      v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 69, "PrepareSuplPosInit", 770);
      LbsOsaTrace_WriteLog(0x12u, __str, v53, 0, 1);
    }

    *(*(this + 1) + 408) = 1;
    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    IsLoggingAllowed = v64;
    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    goto LABEL_54;
  }

  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "SPL", 69, "PrepareSuplPosInit", 513);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v20, 0, 1);
  }

LABEL_54:
  v54 = LcsSuplGlueLayer::GetInstance(IsLoggingAllowed);
  LcsSuplGlueLayer::SendSuplMsgStatus(v54, *(*(this + 1) + 376), 3, 0, 0, 0);
  if (SuplState::SendSuplMessage(this, v60))
  {
    *(this + 360) = 1;
  }

  (*(*this + 16))(this);
  v55 = *(this + 360);
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  v56 = *MEMORY[0x29EDCA608];
  return v55;
}

void sub_2996449C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  SuplAsstDataNeededInfo::~SuplAsstDataNeededInfo(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DD_Assist_GAL_Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = 0;
  v110 = *MEMORY[0x29EDCA608];
  v92 = a4 + 24368;
  v8 = a4 + 19904;
  v102 = a4 + 16736;
  v97 = a2 - 241;
  v103 = a1 + 17908;
  v105 = a4 + 23072;
  v101 = a1 + 13009;
  v100 = a1 + 13046;
  v99 = a1 + 17044;
  v96 = a1 + 13118;
  v95 = (a1 + 13406);
  v94 = a1 + 13478;
  v9 = (a1 + 13732);
  v93 = a1 + 13732;
  v10 = a3 + 56;
  v104 = a2;
  do
  {
    if (*(v10 + v7) <= 0xA5u && (*(*(a4 + 16608) + v7) != 1 || (v97 - *(v102 + 88 * v7)) <= 0xFFFFF806))
    {
      v108 = 0u;
      memset(v109, 0, 23);
      memset(v107, 0, sizeof(v107));
      v106 = 0u;
      if (!Core_Get_GAL_Eph((v7 + 1), v6, &v106))
      {
        goto LABEL_9;
      }

      v11 = *(a4 + 16608);
      if (*(v11 + v7) == 1)
      {
        v12 = (v102 + 88 * v7);
        if (v106 <= *v12 && v104 - *v12 > -1801)
        {
LABEL_9:
          *(*(a4 + 16568) + 20 * v7 + 8) = 0;
          v6 = v104;
          goto LABEL_25;
        }

        if (v106 - *v12 <= 10799 && Is_GAL_IntEph_Real(v102 + 88 * v7) && !Is_GAL_IntEph_Real(&v106))
        {
          v6 = v104;
          *v12 = v104;
          goto LABEL_25;
        }
      }

      v13 = *(v103 + v7);
      if (v13 == 1 && (v109[22] & 1) != 0 || v13 == 2 && (v109[21] & 1) != 0)
      {
        v14 = *(a4 + 16560);
LABEL_18:
        *(v14 + v7) = 0;
        v15 = *(a4 + 16568) + 20 * v7;
        v16 = (v15 + 12);
        v17 = (v15 + 8);
        if (*(v102 + 88 * v7 + 4) == 5)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        *v18 = 2;
        v6 = v104;
LABEL_22:
        v19 = 0;
        LODWORD(v20) = 0;
        v21 = p_NV;
        v22 = (p_NV + 7612);
        v24 = *v14;
        v23 = v14[1];
        *(p_NV + 7644) = *(v14 + 8);
        *v22 = v24;
        v22[1] = v23;
        v25 = 55665;
        do
        {
          v26 = *(v21 + 7608 + v19) ^ BYTE1(v25);
          v25 = 52845 * (v25 + v26) + 22719;
          v20 = (v20 + v26);
          ++v19;
        }

        while (v19 != 40);
        *(v21 + 7600) = v20;
        *(v96 + 8 * v7) = 0x400040004000400;
        v95[v7] = 1024;
        *(v94 + 2 * v7) = 1024;
        *(v103 + v7) = 0;
        v27 = (v93 + 92 * v7);
        *(v27 + 76) = 0u;
        v27[3] = 0u;
        v27[4] = 0u;
        v27[1] = 0u;
        v27[2] = 0u;
        *v27 = 0u;
        goto LABEL_25;
      }

      if (v13 != 3 && *(v103 + v7))
      {
        v28 = 1;
      }

      else
      {
        v28 = (v109[21] | v109[22]) ^ 1;
      }

      v14 = *(a4 + 16560);
      if ((v28 & 1) != 0 && (*(v14 + v7) & 1) == 0 && (v29 = *(a4 + 16624), *(v29 + v7) == 1))
      {
        v30 = (v105 + 36 * v7);
        v31 = *v30;
        if (*v30 + 3600 > v104)
        {
          v32 = *(v30 + 34);
          if (v13 == 1 && (v32 & 1) != 0)
          {
            goto LABEL_18;
          }

          v33 = *(v30 + 33);
          if (v13 == 2 && (v33 & 1) != 0)
          {
            goto LABEL_18;
          }

          if (v13 == 3 || !*(v103 + v7)) && ((v33 | v32))
          {
            goto LABEL_18;
          }
        }

        if (v31 + 100 < v104)
        {
          *(*(a4 + 16584) + v7) = 0;
          *(v29 + v7) = 0;
          *(v101 + v7) = -1;
          *(v100 + 2 * v7) = 2048;
          *(v99 + 36 * gal_E1B_AlmSvId2SubframeId[v7] - 4) = 0;
          v14 = *(a4 + 16560);
          v11 = *(a4 + 16608);
        }
      }

      else if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      v34 = v102 + 88 * v7;
      v35 = v107[0];
      *v34 = v106;
      *(v34 + 16) = v35;
      *(v34 + 80) = *&v109[16];
      v36 = *v109;
      *(v34 + 48) = v108;
      *(v34 + 64) = v36;
      *(v34 + 32) = v107[1];
      *(*(a4 + 16576) + v7) = 1;
      *(v11 + v7) = 1;
      *(v14 + v7) = 1;
      v37 = *(a4 + 16568) + 20 * v7;
      v38 = (v37 + 12);
      v39 = (v37 + 8);
      if (*(v34 + 4) == 5)
      {
        v40 = v39;
      }

      else
      {
        v40 = v38;
      }

      *v40 = 1;
      v6 = v104;
      if (v104 >= 1)
      {
        *(*(a4 + 16632) + v7) = 1;
        Core_Save_GAL_Eph((v7 + 1), 0, v34);
        v14 = *(a4 + 16560);
      }

      goto LABEL_22;
    }

LABEL_25:
    ++v7;
  }

  while (v7 != 36);
  if (v6 >= 1)
  {
    v41 = 0;
    v42 = v95;
    do
    {
      if (*(*(a4 + 16560) + v41) == 1 && (*(*(a5 + 936) + v41) & 1) == 0 && *(v10 + v41) <= 0xA5u && (*(*(a4 + 16616) + v41) != 1 || v104 - *v8 >= 241))
      {
        v108 = 0u;
        memset(v109, 0, 23);
        memset(v107, 0, sizeof(v107));
        v106 = 0u;
        GAL_IntEph = EE_Get_GAL_IntEph(v41 + 1, v104, &v106);
        v44 = *(a4 + 16616);
        if (!GAL_IntEph || *(v44 + v41) == 1 && v106 <= *v8)
        {
          *(v44 + v41) = 0;
        }

        else
        {
          v45 = v107[0];
          *v8 = v106;
          *(v8 + 16) = v45;
          *(v8 + 80) = *&v109[16];
          v46 = *v109;
          *(v8 + 48) = v108;
          *(v8 + 64) = v46;
          *(v8 + 32) = v107[1];
          *(*(a4 + 16576) + v41) = 1;
          *(v44 + v41) = 1;
          Debug_Log_GAL_Eph(2, &v106);
          *(v96 + 8 * v41) = 0x400040004000400;
          *v42 = 1024;
          v42[36] = 1024;
          *(v103 + v41) = 0;
          *(v9 + 76) = 0u;
          v9[3] = 0u;
          v9[4] = 0u;
          v9[1] = 0u;
          v9[2] = 0u;
          *v9 = 0u;
        }
      }

      ++v41;
      v9 = (v9 + 92);
      ++v42;
      v8 += 88;
    }

    while (v41 != 36);
  }

  v47 = 0;
  v48 = v104 / 604800 - 1024;
  v106 = 0u;
  memset(v107, 0, 19);
  v49 = v48 + ((v48 >> 29) & 3);
  v50 = v49 >> 2;
  v51 = 7680;
  v98 = (v48 - (v49 & 0xFFFC));
  while (2)
  {
    if (*(*(a4 + 16624) + v47) == 1 && v104 - *(v105 + 36 * v47) < 1801 || !Core_Get_GAL_Alm((v47 + 1), v104, &v106) || *(*(a4 + 16624) + v47) == 1 && v106 <= *(v105 + 36 * v47))
    {
      goto LABEL_82;
    }

    v52 = *(v103 + v47);
    v53 = v52 != 1 || (BYTE2(v107[1]) & 1) == 0;
    if (!v53 || v52 == 2 && (BYTE1(v107[1]) & 1) != 0)
    {
      v54 = *(a4 + 16560);
      v55 = v54 + v47;
      goto LABEL_78;
    }

    if (v52 != 3 && *(v103 + v47))
    {
      v64 = 1;
    }

    else
    {
      v64 = (BYTE1(v107[1]) | BYTE2(v107[1])) ^ 1;
    }

    v54 = *(a4 + 16560);
    v55 = v54 + v47;
    if ((v64 & 1) == 0 || (*v55 & 1) != 0 || (v65 = *(a4 + 16608), *(v65 + v47) != 1))
    {
      if (v64)
      {
        goto LABEL_102;
      }

      goto LABEL_78;
    }

    v66 = (v102 + 88 * v47);
    v67 = *v66;
    if (*v66 + 3600 > v104)
    {
      if (v68 = *(v66 + 86), v52 == 1) && (v68 & 1) != 0 || (v69 = *(v66 + 85), v52 == 2) && (v69 & 1) != 0 || (v52 == 3 || !*(v103 + v47)) && ((v69 | v68))
      {
LABEL_78:
        *v55 = 0;
        goto LABEL_79;
      }
    }

    if (v67 + 100 < v104)
    {
      *(*(a4 + 16576) + v47) = 0;
      *(v65 + v47) = 0;
      *(v96 + 8 * v47) = 0x400040004000400;
      v95[v47] = 1024;
      *(v94 + 2 * v47) = 1024;
      *(v103 + v47) = 0;
      v70 = (v93 + 92 * v47);
      *(v70 + 76) = 0u;
      v70[3] = 0u;
      v70[4] = 0u;
      v70[1] = 0u;
      v70[2] = 0u;
      *v70 = 0u;
    }

LABEL_102:
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        if (WORD5(v106))
        {
          v71 = v50;
        }

        else
        {
          v71 = v50 + 1;
        }
      }

      else if (v98 == 3)
      {
        if (SWORD5(v106) >= 2)
        {
          v71 = v50;
        }

        else
        {
          v71 = v50 + 1;
        }
      }

      else
      {
        EvCrt_Illegal_Default("DD_Assist_GAL_Alm", 0x2BDu);
        v71 = v50;
      }
    }

    else if (v98)
    {
      v71 = v50;
    }

    else
    {
      v71 = v50 - (WORD5(v106) == 3);
    }

    WORD5(v106) += 4 * v71;
    v72 = (v105 + 36 * v47);
    v73 = v107[0];
    *v72 = v106;
    v72[1] = v73;
    *(v72 + 8) = v107[1];
    *(*(a4 + 16584) + v47) = 1;
    *(*(a4 + 16624) + v47) = 1;
    v54 = *(a4 + 16560);
    *(v54 + v47) = 1;
    if (v104 >= 1)
    {
      v74 = 0;
      LODWORD(v75) = 0;
      v76 = p_NV;
      v77 = p_NV + 48 * v47;
      v78 = *v72;
      v79 = v72[1];
      *(v77 + 7712) = *(v72 + 8);
      *(v77 + 7696) = v79;
      *(v77 + 7680) = v78;
      v80 = v76 + v51;
      v81 = 55665;
      do
      {
        v82 = *(v80 + v74) ^ BYTE1(v81);
        v81 = 52845 * (v81 + v82) + 22719;
        v75 = (v75 + v82);
        ++v74;
      }

      while (v74 != 40);
      *(v77 + 7672) = v75;
      v54 = *(a4 + 16560);
    }

LABEL_79:
    v56 = 0;
    LODWORD(v57) = 0;
    v58 = p_NV;
    v59 = (p_NV + 7612);
    v61 = *v54;
    v60 = v54[1];
    *(p_NV + 7644) = *(v54 + 8);
    *v59 = v61;
    v59[1] = v60;
    v62 = 55665;
    do
    {
      v63 = *(v58 + 7608 + v56) ^ BYTE1(v62);
      v62 = 52845 * (v62 + v63) + 22719;
      v57 = (v57 + v63);
      ++v56;
    }

    while (v56 != 40);
    *(v58 + 7600) = v57;
    *(v101 + v47) = -1;
    *(v100 + 2 * v47) = 2048;
    *(v99 + 36 * gal_E1B_AlmSvId2SubframeId[v47] - 4) = 0;
LABEL_82:
    ++v47;
    v51 += 48;
    if (v47 != 36)
    {
      continue;
    }

    break;
  }

  *(&v106 + 6) = 0;
  *&v106 = 0;
  if (((*(v92 + 4) - 4) > 2 || v104 - *v92 >= 1801) && Core_Get_GAL_GGTO(v104, &v106) && ((*(v92 + 4) - 4) > 2 || v106 > *v92))
  {
    *v92 = v106;
    *(a4 + 24384) = *(a4 + 24368);
    v83 = *(v92 + 10);
    *(a4 + 24392) = *(v92 + 8) * 2.91038305e-11;
    *(a4 + 24400) = v83 * 4.4408921e-16;
    *(v92 + 40) = 3600 * *(v92 + 12);
    *(v92 + 44) = *(v92 + 13);
    if (v104 >= 1)
    {
      v84 = 0;
      LODWORD(v85) = 0;
      v86 = p_NV;
      v87 = p_NV + 7656;
      *(p_NV + 7656) = v106;
      v88 = 55665;
      do
      {
        v89 = *(v87 + v84) ^ BYTE1(v88);
        v88 = 52845 * (v88 + v89) + 22719;
        v85 = (v85 + v89);
        ++v84;
      }

      while (v84 != 16);
      *(v86 + 7648) = v85;
    }
  }

  v90 = *MEMORY[0x29EDCA608];
}