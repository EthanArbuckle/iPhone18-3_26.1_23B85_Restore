char *LbsOsaTrace_ModuleString(unsigned int a1)
{
  v1 = a1;
  v8 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x1A)
  {
    if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = LbsOsaTrace_ModuleString(14);
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v3, v4, 87, "LbsOsaTrace_ModuleString", 515, v1);
      LbsOsaTrace_WriteLog(0xEu, __str, v5, 2, 1);
    }

    result = 0;
  }

  else
  {
    result = off_29EF6B3E8[a1];
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_IsLoggingAllowed(unsigned int a1, int a2, char a3, int a4)
{
  v18 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a1);
  if (!SrcCfg)
  {
    result = LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0);
    if (!result)
    {
      goto LABEL_10;
    }

    bzero(__str, 0x410uLL);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = LbsOsaTrace_ModuleString(0xEu);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v11, v12, 87, "LbsOsaTrace_IsLoggingAllowed", 515, a1);
    LbsOsaTrace_WriteLog(0xEu, __str, v13, 2, 1);
    goto LABEL_9;
  }

  v9 = SrcCfg;
  if (a4 == 1 && !dword_2A19396BC || !*SrcCfg)
  {
    goto LABEL_9;
  }

  if (a3)
  {
LABEL_6:
    result = 1;
    goto LABEL_10;
  }

  result = 0;
  v15 = *(v9 + 4);
  if (a2 <= 3)
  {
    if (a2 < 2)
    {
      if (v15)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if ((a2 - 2) >= 2)
      {
        goto LABEL_10;
      }

      if ((v15 & 2) != 0)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_9;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if ((v15 & 4) != 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v15 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      goto LABEL_10;
    }

    if ((g_LbsOsaTrace_Config & 0xFFFFFFFD) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = g_LbsOsaTrace_Config != 3 && g_LbsOsaTrace_Config != 0;
LABEL_10:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t LbsOsaTrace_GetSeverityString(unsigned int a1)
{
  v1 = 0x464644494D574145uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 32;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return v1 & 0x7F;
}

uint64_t LbsOsaTrace_WriteLog(unsigned int a1, char *a2, uint64_t a3, int a4, int a5)
{
  v19 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a1);
  if (!SrcCfg)
  {
    if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v14 = LbsOsaTrace_ModuleString(14);
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", v13, v14, 87, "LbsOsaTrace_WriteLog", 515, a1);
      LbsOsaTrace_WriteLog(14, __str, v15, 2, 1);
    }

    goto LABEL_7;
  }

  if (*SrcCfg != 1)
  {
LABEL_7:
    a3 = 0;
    goto LABEL_10;
  }

  if (a5)
  {
    v11 = 1;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = a3;
  }

  gnssOsa_PrintLog(a2, a4, v11, v12);
LABEL_10:
  v16 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t LbsOsaTrace_GetSrcCfg(unsigned int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 >= 0x1A)
  {
    if (LbsOsaTrace_IsLoggingAllowed(14, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%u\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "LbsOsaTrace_GetSrcCfg", 515, a1);
      LbsOsaTrace_WriteLog(14, __str, v4, 2, 1);
    }

    result = 0;
  }

  else
  {
    result = *(&off_29EF6B4B8 + a1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_PrintBinaryBuf(unsigned int a1, unsigned int a2, int a3, const void *a4, size_t a5)
{
  v18 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, a3);
  if (result)
  {
    bzero(__str, 0x410uLL);
    SeverityString = LbsOsaTrace_GetSeverityString(a2);
    v11 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v12 = LbsOsaTrace_ModuleString(a1);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c ", v11, v12, SeverityString);
    if (v13 < 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = v13;
      memcpy_s("LbsOsaTrace_FormatBuffer", 360, &__str[v13], 1040 - v13, a4, a5);
      v15 = v14 + a5;
      if ((v14 + a5) >= 0x410)
      {
        v15 = 1040;
      }
    }

    result = LbsOsaTrace_WriteLog(a1, __str, v15, a2, 0);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_PrintAsciiBuf(unsigned int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v27 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, a3);
  result = 0;
  if (a5 && IsLoggingAllowed)
  {
    v12 = 0;
    v13 = 0;
    v25 = v7;
    while (1)
    {
      v14 = (a4 + v12);
      v15 = *v14;
      if (v15 == 10 || v15 == 13)
      {
        break;
      }

      ++v12;
LABEL_19:
      if (a5 <= v12)
      {
        result = a5;
        goto LABEL_21;
      }
    }

    *v14 = 0;
    v17 = LbsOsaTrace_IsLoggingAllowed(a1, a2, 1, v7);
    if (v12 == v13)
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = LbsOsaTrace_ModuleString(a1);
      SeverityString = LbsOsaTrace_GetSeverityString(a2);
      v24 = &str_29_13;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_15;
      }

      bzero(__str, 0x410uLL);
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v19 = LbsOsaTrace_ModuleString(a1);
      SeverityString = LbsOsaTrace_GetSeverityString(a2);
      v24 = (a4 + v13);
    }

    v22 = v18;
    v7 = v25;
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s\n", v22, v19, SeverityString, v24);
    LbsOsaTrace_WriteLog(a1, __str, v20, a2, 1);
LABEL_15:
    *v14 = v15;
    if (v15 == 13 && v14[1] == 10)
    {
      ++v12;
    }

    v13 = ++v12;
    goto LABEL_19;
  }

LABEL_21:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LbsOsaTrace_UpdateModuleConfig(unsigned int a1, int a2, char a3)
{
  v11 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_GetSrcCfg(a1);
  if (result)
  {
    *result = a2;
    *(result + 4) = a3;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "LbsOsaTrace_UpdateModuleConfig", 515, a1);
      result = LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL LbsOsaTrace_GetModuleConfig(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  SrcCfg = LbsOsaTrace_GetSrcCfg(a2);
  v5 = SrcCfg;
  if (SrcCfg)
  {
    *a1 = *SrcCfg;
    *(a1 + 4) = *(SrcCfg + 4);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx src,%u\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 87, "LbsOsaTrace_GetModuleConfig", 515, a2);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 2, 1);
  }

  result = v5 != 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::Init(int *a1, int a2, int a3, int a4, int a5)
{
  v15 = *MEMORY[0x29EDCA608];
  *a1 = a2;
  a1[2] = a5;
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,Timertype,%u,User Type,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 73, "Init", a2, a5, a3);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v12, 4, 1);
  }

  a1[3] = a4;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::Start(LcsTimer *this)
{
  v7 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_TimerStart_Out(*this, *(this + 2), *(this + 3));
  result = GN_SUPL_TimerStart_Out(*this, *(this + 2), *(this + 3));
  if (result)
  {
    *(this + 4) = 1;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx failed to start timer\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 69, "Start", 770);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v4, 0, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::Stop(LcsTimer *this)
{
  v10 = *MEMORY[0x29EDCA608];
  Trace_GN_SUPL_TimerStop_Out(*this, *(this + 2));
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (*(this + 4))
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: m_timer_running,%c\n", v3, "SPL", 65, "Stop", v4);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v5, 1, 1);
  }

  if (*(this + 4))
  {
    result = GN_SUPL_TimerStop_Out(*this, *(this + 2));
    if (result)
    {
      *(this + 4) = 0;
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Stop", 770, *this);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::SetTimeout(LcsTimer *this, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v6 = 84;
    if (!*(this + 4))
    {
      v6 = 70;
    }

    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,m_timer_running,%c,timeout,%u\n", v5, "SPL", 65, "SetTimeout", *this, v6, a2);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 1, 1);
  }

  *(this + 3) = a2;
  if (*(this + 4))
  {
    if (GN_SUPL_TimerStop_Out(*this, *(this + 2)))
    {
      *(this + 4) = 0;
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: timer is stopped successfully for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 73, "SetTimeout", *this);
        v10 = 4;
LABEL_11:
        result = LbsOsaTrace_WriteLog(0x12u, __str, v9, v10, 1);
      }
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "SetTimeout", 770, *this);
        v10 = 0;
        goto LABEL_11;
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::Release(LcsTimer *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = 84;
    if (!*(this + 4))
    {
      v3 = 70;
    }

    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u,m_timer_running,%c\n", v2, "SPL", 65, "Release", *this, v3);
    LbsOsaTrace_WriteLog(0x12u, __str, v4, 1, 1);
  }

  if (*(this + 4))
  {
    result = GN_SUPL_TimerStop_Out(*this, *(this + 2));
    if ((result & 1) == 0)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx timer stop failed for requestID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Release", 770, *this);
        v8 = 0;
LABEL_11:
        result = LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timer not running\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 87, "Release", 1028);
      v8 = 2;
      goto LABEL_11;
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t LcsTimer::OnTimer(LcsTimer *this)
{
  v10 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: requestID,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 73, "OnTimer", this);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v4, 4, 1);
  }

  Instance = SuplProvider::GetInstance(IsLoggingAllowed);
  if (Instance)
  {
    v6 = (Instance + 8);
  }

  else
  {
    v6 = 0;
  }

  result = (**v6)(v6, this);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

double InitIMUGen(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = (a1 + 840);
  bzero(a1, 0x370uLL);
  *v2 = xmmword_299761580;
  *(a1 + 400) = 0x403F666666666666;
  *(a1 + 816) = 0x4051A2C105EF014FLL;
  *(a1 + 873) = 257;
  *(a1 + 856) = 0x4059000000000000;
  *(a1 + 944) = 0x7FEFFFFFFFFFFFFFLL;
  if ((g_FPE_LogSeverity & 8) == 0)
  {
    *(a1 + 880) = 0x408F400000000000;
    v3 = 1000.0;
LABEL_8:
    v6 = floor(v3 + 0.5);
    goto LABEL_9;
  }

  v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  if (g_TCU)
  {
    v5 = *(g_TCU + 8);
  }

  else
  {
    v5 = 0.0;
  }

  LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f IMUGEN_INIT_CFG:  K_IMU_DOWN_SAMPLE_RATIO=%d, K_SENSOR_DELIVERY_TIME_U4MS=%d", "InitIMUGen", 97, v4, v5, 1, 2000);
  v3 = *(a1 + 848) * 10.0;
  *(a1 + 880) = 0x408F400000000000;
  if (v3 >= 0.0)
  {
    goto LABEL_8;
  }

  v6 = -floor(0.5 - v3);
LABEL_9:
  *(a1 + 888) = v6;
  result = 1.67;
  *(a1 + 896) = xmmword_299761590;
  *(a1 + 912) = xmmword_2997615A0;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0x409A180000000000;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

const char *resampleOneInterval(const char *result, double *a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = &a2[52 * result];
  if (result)
  {
    v6 = 16;
  }

  else
  {
    v6 = 48;
  }

  v7 = *v5;
  v8 = v7;
  if (*v5)
  {
    goto LABEL_5;
  }

  if ((g_FPE_LogSeverity & 1) == 0)
  {
    g_FPE_AssertFlag = 1;
    goto LABEL_21;
  }

  v16 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  v17 = g_TCU ? *(g_TCU + 8) : 0.0;
  result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Should not enter resampleOneInterval with empty inner buffer!", "resampleOneInterval", 133, v16, v17);
  v8 = *v5;
  g_FPE_AssertFlag = 1;
  if (v8)
  {
LABEL_5:
    v9 = 0;
    v10 = v5 + 1;
    do
    {
      v11 = &v10[32 * v9];
      v12 = v11 - 1;
      if (!v9)
      {
        v12 = a2 + 104;
      }

      if (v9 == v7 - 1)
      {
        v13 = a2[104] + a2[105];
      }

      else
      {
        v13 = v11[3];
      }

      v14 = (v13 - *v12) * a2[106];
      for (i = 1; i != 4; ++i)
      {
        *(a3 + v6 + i * 8) = *(a3 + v6 + i * 8) + v14 * v5[i];
      }

      ++v9;
      v5 += 4;
    }

    while (v9 != v8);
  }

LABEL_21:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t readIMUSample(double *a1, uint64_t a2, unsigned int a3, const char *a4, int a5)
{
  v41 = *MEMORY[0x29EDCA608];
  v7 = (a1 + 1);
  v6 = *a1;
  if (v6 < 0xC)
  {
    v12 = &v7[32 * v6];
    __dst = 0u;
    v40 = 0u;
    Cyc_Record_Read(a2, a3, &__dst);
    ++*a1;
    v13 = DWORD2(v40);
    TCU_ConvertOStimeToTTICKtime(a4, DWORD2(v40), v12 + 3);
    v14 = *(v12 + 3) * 10000.0;
    v15 = v14 < 0.0;
    v16 = floor(v14 + 0.5);
    v17 = -floor(0.5 - v14);
    if (!v15)
    {
      v17 = v16;
    }

    v18 = *(&__dst + 1);
    v19 = *&v40;
    v20 = -*&__dst;
    if (*&__dst >= 0.0)
    {
      v20 = *&__dst;
    }

    v21 = -*(&__dst + 1);
    if (*(&__dst + 1) >= 0.0)
    {
      v21 = *(&__dst + 1);
    }

    v22 = -*&v40;
    if (*&v40 >= 0.0)
    {
      v22 = *&v40;
    }

    *v12 = __dst;
    *(v12 + 1) = v18;
    *(v12 + 2) = v19;
    *(v12 + 3) = v17 * 0.0001;
    if (v21 >= v22)
    {
      v23 = v18;
    }

    else
    {
      v23 = v19;
    }

    v24 = 8;
    if (v21 < v22)
    {
      v24 = 16;
    }

    if (v23 < 0.0)
    {
      v23 = -v23;
    }

    if (v20 >= v23)
    {
      v24 = 0;
    }

    v25 = *&v12[v24];
    if (v25 >= 0.0)
    {
      v26 = *&v12[v24];
    }

    else
    {
      v26 = -v25;
    }

    if (v26 > a1[50])
    {
      *(a1 + 392) = 1;
      if ((g_FPE_LogSeverity & 4) != 0)
      {
        v27 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v28 = *(g_TCU + 8);
        }

        else
        {
          v28 = 0.0;
        }

        v30 = "Gyro";
        if (a5 == 1)
        {
          v30 = "Accl";
        }

        v31 = " rad/s";
        v32 = v26 / 9.79764322;
        if (a5 == 1)
        {
          v31 = "*g m/s^2";
        }

        else
        {
          v32 = v26;
        }

        LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f %s value too big : %0.2f%s at OStime = %0.3f", "readIMUSample", 372, v27, v28, v30, v32, v31, *(v12 + 3));
      }

      if (a5 == 1)
      {
        if ((g_FPE_LogSeverity & 0x200) != 0)
        {
          LC_LOG_NMEA_GENERIC("%s,AGW2,%d,%.2f,%d", "$PFPEX", 0, v26 / 9.79764322, v13);
        }
      }

      else if ((g_FPE_LogSeverity & 0x200) != 0)
      {
        LC_LOG_NMEA_GENERIC("%s,AGW2,%d,%.2f,%d", "$PFPEX", 1, v26, v13);
      }
    }

    v33 = *a1;
    if (v33 >= 2)
    {
      v34 = *&v7[32 * v33 - 8] - *&v7[32 * v33 - 40];
      if (v34 > 0.125)
      {
        v35 = g_FPE_LogSeverity;
        if ((g_FPE_LogSeverity & 2) != 0)
        {
          v36 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v37 = *(g_TCU + 8);
          }

          else
          {
            v37 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f readIMUSample IMU discontinuous, timeGap = %.17g", "readIMUSample", 391, v36, v37, v34);
          v35 = g_FPE_LogSeverity;
        }

        if ((v35 & 0x200) != 0)
        {
          LC_LOG_NMEA_GENERIC("%s,AGW1,%d,%.3f,%d", "$PFPEX", a5 != 1, *(v12 + 3) - *&v7[32 * *a1 - 40], v13);
        }

        if (v34 > 1.025)
        {
          *(a1 + 408) = 1;
        }
      }
    }

    result = 0;
  }

  else
  {
    if ((g_FPE_LogSeverity & 2) != 0)
    {
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v9 = *(g_TCU + 8);
      }

      else
      {
        v9 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Entered readIMUSample with %u empty entries in the buffer", "readIMUSample", 342, v8, v9, 12 - *a1);
    }

    result = 1;
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t samplerInputFifoAlignment(unsigned int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, unsigned __int8 *a6)
{
  v22 = *MEMORY[0x29EDCA608];
  __dst = 0u;
  v21 = 0u;
  Cyc_Record_Read(a5, a1, &__dst);
  v19 = 0.0;
  TCU_ConvertOStimeToTTICKtime(a4, DWORD2(v21), &v19);
  v10 = floor(v19 * 10000.0 + 0.5);
  v11 = -floor(0.5 - v19 * 10000.0);
  if (v19 * 10000.0 >= 0.0)
  {
    v11 = v10;
  }

  v12 = v11 * 0.0001;
  if (v12 >= *(a3 + 832))
  {
    v14 = *a6;
    if (v14 < 0xC)
    {
      v17 = &a6[32 * v14];
      *(v17 + 8) = __dst;
      *(v17 + 3) = v21;
      *(v17 + 4) = v12;
      *a6 = v14 + 1;
      *(a3 + 875) = 1;
      result = 0;
      if (a2)
      {
        *(a3 + 873) = 0;
      }

      else
      {
        *(a3 + 874) = 0;
      }
    }

    else
    {
      if ((g_FPE_LogSeverity & 2) != 0)
      {
        v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v16 = *(g_TCU + 8);
        }

        else
        {
          v16 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f Entered samplerInputFifoAlignment with %u empty entries in the buffer", "samplerInputFifoAlignment", 448, v15, v16, 12 - *a6);
      }

      result = 1;
    }
  }

  else
  {
    result = 0;
    *a6 = 1;
    *(a6 + 8) = __dst;
    *(a6 + 3) = v21;
    *(a6 + 4) = v12;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IMUGen_run(unsigned __int8 *a1, unsigned int a2, _DWORD *a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6 = a6;
  v60 = *MEMORY[0x29EDCA608];
  if ((a1[875] & 1) == 0)
  {
    if (a1[874] == 1 && a1[873] == 1 && Cyc_Record_Count_Occupied(a3, a2) && Cyc_Record_Count_Occupied(a3 + 24, a2))
    {
      a1[416] = 0;
      *a1 = 0;
      v12 = 1;
      if (readIMUSample(a1 + 52, a3, a2, a5, 1) || readIMUSample(a1, (a3 + 24), a2, a5, 0))
      {
        goto LABEL_74;
      }

      v13 = *(a1 + 56);
      v14 = *(a1 + 4);
      if (v13 <= v14)
      {
        a1[873] = 0;
        v13 = v14;
      }

      else
      {
        a1[874] = 0;
      }

      v15 = v13 + -1.0 / *(a1 + 107);
      *(a1 + 104) = v15;
      *(a1 + 108) = v15;
      a1[872] = 1;
    }

    if (a1[874] != a1[873])
    {
      v12 = 1;
      while ((a1[873] & 1) != 0 && Cyc_Record_Count_Occupied(a3 + 24, a2))
      {
        if (samplerInputFifoAlignment(a2, 1, a1, a5, (a3 + 24), a1))
        {
          goto LABEL_74;
        }
      }

      while (a1[874] == 1 && Cyc_Record_Count_Occupied(a3, a2))
      {
        if (samplerInputFifoAlignment(a2, 0, a1, a5, a3, a1 + 416))
        {
LABEL_75:
          v12 = 1;
          goto LABEL_74;
        }
      }
    }

    v6 = a6;
    if (a1[875] != 1)
    {
      v12 = 2;
      goto LABEL_74;
    }
  }

  v16 = a1 + 424;
  v17 = a1 + 8;
  while (isOKtoOutput(*(a4 + 128016), a1) || Cyc_Record_Count_Occupied(a3, a2) && !isBuffReady(1u, a1) || Cyc_Record_Count_Occupied(a3 + 24, a2) && !isBuffReady(0, a1))
  {
    if (isOKtoOutput(*(a4 + 128016), a1))
    {
      while (1)
      {
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
        v46 = *(a1 + 104) + *(a1 + 105);
        Set_Mat_Size(3, &v47 + 2, 3, 1);
        Set_Mat_Const(3, 1u, 3, &v47 + 2, 0.0);
        Set_Mat_Size(3, &v49 + 2, 3, 1);
        Set_Mat_Const(3, 1u, 3, &v49 + 2, 0.0);
        resampleOneInterval(0, a1, &v46);
        resampleOneInterval(1, a1, &v46);
        *(a1 + 104) = *(a1 + 104) + *(a1 + 105);
        if (!MeasSyncher_applyNewRecord(0, &v46, a4))
        {
          break;
        }

        v18 = *(a1 + 115);
        if (v18 == -999.0)
        {
          v24 = v46;
        }

        else
        {
          v19 = *(a1 + 110);
          v20 = *(a1 + 232);
          if (v20)
          {
            if ((g_FPE_LogSeverity & 0x200) != 0)
            {
              LC_LOG_NMEA_GENERIC("%s,AG,%.3f,%.5f,%.5f,%.5f,%.5f,%.5f,%.5f", "$PFPEX", *(a1 + 104), *&v48, *(&v48 + 1), *&v49, *&v50, *(&v50 + 1), *&v51);
              v20 = *(a1 + 232);
              v18 = *(a1 + 115);
            }

            v21 = v20 - 1;
            *(a1 + 232) = v21;
            v22 = v21 == 0;
            v23 = 1.0;
          }

          else
          {
            v23 = 0.0;
            v22 = 1;
          }

          v24 = v46;
          v25 = v46 - v18;
          if (v25 > v19 * 0.5)
          {
            v25 = v19 * 0.5;
          }

          v26 = v23 + *(a1 + 117) * (v19 - v25) / v19;
          *(a1 + 117) = v26;
          if (v22)
          {
            v27 = *(v6 + 248) != 6 || *(v6 + 224) - *(v6 + 480) >= v24;
            v28 = *(a1 + 222);
            v29 = (v26 + v28) / v19;
            if (v29 <= *(a1 + 114) || v29 <= *(a1 + 113) && !v27)
            {
              *(a1 + 232) = v28;
            }
          }
        }

        *(a1 + 115) = v24;
        *(a1 + 108) = v24;
        a1[872] = 1;
        v30 = a1[416];
        if (v30 >= 2)
        {
          v31 = &v16[2 * (v30 - 1)];
          v32 = v31[1];
          *v16 = *v31;
          *(a1 + 440) = v32;
          a1[416] = 1;
        }

        v33 = *a1;
        if (v33 >= 2)
        {
          v34 = &v17[2 * (v33 - 1)];
          v35 = v34[1];
          *v17 = *v34;
          *(a1 + 24) = v35;
          *a1 = 1;
        }

        if (!isOKtoOutput(*(a4 + 128016), a1))
        {
          goto LABEL_43;
        }
      }

      if ((g_FPE_LogSeverity & 2) != 0)
      {
        v39 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v40 = *(g_TCU + 8);
        }

        else
        {
          v40 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen SYNCHER_REJECT", "IMUGen_run", 665, v39, v40);
      }

      v12 = 5;
      goto LABEL_74;
    }

LABEL_43:
    if (Cyc_Record_Count_Occupied(a3, a2))
    {
      if (!isBuffReady(1u, a1))
      {
        v12 = 1;
        if (readIMUSample(a1 + 52, a3, a2, a5, 1))
        {
          goto LABEL_74;
        }
      }
    }

    if (Cyc_Record_Count_Occupied(a3 + 24, a2) && !isBuffReady(0, a1) && readIMUSample(a1, (a3 + 24), a2, a5, 0))
    {
      goto LABEL_75;
    }

    v36 = *(&v16[2 * a1[416] - 1] + 1);
    if (v36 >= *&a1[32 * *a1])
    {
      v36 = *&a1[32 * *a1];
    }

    *(a1 + 118) = v36;
    v6 = a6;
    if ((a1[875] & 1) == 0)
    {
      break;
    }
  }

  if ((a1[875] & 1) == 0)
  {
    goto LABEL_81;
  }

  if ((a1[808] & 1) != 0 || a1[392] == 1)
  {
    if ((g_FPE_LogSeverity & 2) != 0)
    {
      v37 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v38 = *(g_TCU + 8);
      }

      else
      {
        v38 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen IMU_VALUE_ERROR (ACCL=%u,GYRO=%u)", "IMUGen_run", 696, v37, v38, a1[808], a1[392]);
    }

    v12 = 6;
    goto LABEL_74;
  }

  if ((a1[824] & 1) == 0 && a1[408] != 1)
  {
LABEL_81:
    v12 = 0;
    goto LABEL_74;
  }

  if ((g_FPE_LogSeverity & 2) != 0)
  {
    v43 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v44 = *(g_TCU + 8);
    }

    else
    {
      v44 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("ERR:[%s() #%d] TT = %d, %0.3f IMUGen E_MGEN_RETURN_IMU_DISCONTINUOUS (ACCL=%u,Gyro=%u)", "IMUGen_run", 703, v43, v44, a1[824], a1[408]);
  }

  v12 = 4;
LABEL_74:
  v41 = *MEMORY[0x29EDCA608];
  return v12;
}

BOOL isOKtoOutput(_DWORD *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (Cyc_Record_Count_Free(a1, 1u) && isBuffReady(0, a2))
  {
    v3 = *MEMORY[0x29EDCA608];

    return isBuffReady(1u, a2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

BOOL isBuffReady(unsigned int a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = (a2 + 416 * a1);
  if (*v2)
  {
    v4 = *&v2[32 * *v2];
    if (*(a2 + 872) == 1)
    {
      v5 = *(a2 + 864);
    }

    else
    {
      if (g_FPE_LogSeverity)
      {
        v7 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v8 = *(g_TCU + 8);
        }

        else
        {
          v8 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f last_applied_TT was invalid while in isBuffReady function", "isBuffReady", 255, v7, v8);
      }

      g_FPE_AssertFlag = 1;
      v5 = 0.0;
    }

    result = v4 - v5 >= *(a2 + 840);
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

double GPS_Klob_Iono_Delay(double *a1, uint64_t a2, uint64_t a3, char *a4, double a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 24) * 0.318309886;
  v8 = 0.0137 / (v7 + 0.11) + -0.022;
  v9 = *(a2 + 16) * v8 + *a1 * 0.318309886;
  v10 = -0.416;
  if (v9 >= -0.416)
  {
    v10 = *(a2 + 16) * v8 + *a1 * 0.318309886;
    if (v9 > 0.416)
    {
      v10 = 0.416;
    }
  }

  v11 = a1[1];
  v12 = v8 * *(a2 + 8);
  v13 = v12 / cos(v10 * 3.14159265) + v11 * 0.318309886;
  v14 = v10 + cos((v13 + -1.617) * 3.14159265) * 0.064;
  v15 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  v16 = v15 + 86400.0;
  if (v15 >= 0.0)
  {
    v16 = a5 + v13 * 43200.0 - (86400 * ((a5 + v13 * 43200.0) * 0.0000115740741));
  }

  v17 = a4[13] * 16384.0 * v14 + a4[12] * 2048.0 + a4[14] * 65536.0 * (v14 * v14) + a4[15] * 65536.0 * (v14 * v14) * v14;
  if (v17 < 72000.0)
  {
    v17 = 72000.0;
  }

  v18 = (v16 + -50400.0) * 6.28318531 / v17;
  if (fabs(v18) >= 1.57)
  {
    v20 = 0.000000005;
  }

  else
  {
    v19 = v14 * vcvtd_n_f64_s32(a4[9], 0x1BuLL) + a4[8] * 9.31322575e-10 + vcvtd_n_f64_s32(a4[10], 0x18uLL) * (v14 * v14) + v14 * vcvtd_n_f64_s32(a4[11], 0x18uLL) * (v14 * v14);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = v19 * (v18 * v18 * -0.5 + 1.0 + v18 * v18 * (v18 * v18) * 0.0416666667) + 0.000000005;
  }

  v21 = *MEMORY[0x29EDCA608];
  return ((0.53 - v7) * ((0.53 - v7) * 16.0) * (0.53 - v7) + 1.0) * v20 * 299792458.0;
}

uint64_t GM_Aid_NSSS_Meas(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 4) == 1 && *(a1 + 15) == 1 && *(a1 + 14) >= a2)
  {
    v5 = *(a1 + 32);
    *a3 = *(a1 + 28);
    v6 = a3[1] % 1023;
    v7 = 1023 * (v5 / 1023);
    v8 = v5 % 1023;
    if (v6 < 769 || v8 > 255)
    {
      if (v8 > 768 && v6 < 256)
      {
        v9 = v7 + 1023;
      }

      else
      {
        v9 = v7;
      }
    }

    else
    {
      v9 = v7 - 1023;
    }

    a3[1] = v6;
    Inc_CA_Chips(v9, a3 + 1, a3);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplSessionVer2::ProcessSuplRequest(SuplUtils *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(a1);
  if (!Instance)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v8 = *a1;
  if (!*a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (*a2 != 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "ProcessSuplRequest", 514);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v12, 0, 1);
    }

    goto LABEL_25;
  }

  v9 = *(Instance + 16);
  if (v9)
  {
    while (*v9 != *(v8 + 376))
    {
      v9 = *(v9 + 8);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v13 = *(v9 + 16);
    if (v13 && !*(v13 + 17))
    {
      SuplUtils::FillSetCapabilities(Instance, a4, *(*(v13 + 40) + 5), *(v8 + 532));
    }
  }

LABEL_17:
  v14 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
  if (!v14)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
LABEL_24:
      bzero(__str, 0x410uLL);
      v21 = mach_continuous_time();
      v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v21), "SPL", 69, "ProcessSuplRequest", 513);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v22, 0, 1);
    }

LABEL_25:
    v23 = *MEMORY[0x29EDCA608];
    return result;
  }

  v15 = v14;
  SuplState::SuplState(v14);
  *v15 = &unk_2A1F88940;
  v16 = *a1;
  v17 = *(*a1 + 424);
  v18 = *a1;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = *a1;
  }

  v19 = *(v16 + 416);
  *(v16 + 416) = v15;
  *(v16 + 424) = v19;
  v20 = *MEMORY[0x29EDCA608];

  return SuplState::UpdateState(v15, 0, v18);
}

unsigned __int8 *SuplSessionVer2::FillSetCapabilities(SuplVersionNegotiation *a1, uint64_t a2, int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = SuplVersionNegotiation::GetInstance(a1);
  v6 = atomic_load(result + 1);
  if (v6 == 255)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = atomic_load(&result[v7]);
  if (v8 == 2)
  {
    *(a2 + 11) = 1;
    *(a2 + 16) = 1292;
    *(a2 + 18) = 0;
    result = SuplUtils::GetInstance(result);
    if (result[36])
    {
      Instance = SimUtils::GetInstance(result);
      result = SimUtils::IsItCampedOnLte(Instance, a3);
      *(a2 + 15) = result != 0;
      if (result)
      {
        v10 = 1;
LABEL_10:
        *(a2 + 14) = v10;
        *(a2 + 19) = 781;
        *(a2 + 21) = 0;
        goto LABEL_11;
      }
    }

    else
    {
      *(a2 + 15) = 0;
    }

    v10 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *SuplSessionVer2::SetLPPAdPayLoad(void *result, uint64_t a2)
{
  v2 = result;
  v4 = *MEMORY[0x29EDCA608];
  if (a2 && result != a2 && !*(a2 + 32))
  {
    result = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(result + 1, *(a2 + 8), *(a2 + 16), *(a2 + 16) - *(a2 + 8));
  }

  *(v2 + 32) = 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *SuplSessionVer2::RequestLppAdPayLoad(SuplSessionVer2 *this)
{
  v15 = *MEMORY[0x29EDCA608];
  result = SuplUtils::GetInstance(this);
  if (result[36])
  {
    result = SuplVersionNegotiation::GetInstance(result);
    v3 = atomic_load(result + 1);
    v4 = v3 == 255;
    v5 = 1;
    if (v4)
    {
      v5 = 2;
    }

    v6 = atomic_load(&result[v5]);
    if (v6 >= 2)
    {
      Instance = SimUtils::GetInstance(result);
      result = SimUtils::IsItCampedOnLte(Instance, *(*this + 532));
      if (result)
      {
        v8 = *(*this + 380);
        v9 = SuplUtils::GetInstance(result);
        v10 = *(v9 + 2);
        if (!v10)
        {
          goto LABEL_12;
        }

        while (*v10 != *(*this + 376))
        {
          v10 = *(v10 + 8);
          if (!v10)
          {
            goto LABEL_12;
          }
        }

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(*(v11 + 40) + 5);
        }

        else
        {
LABEL_12:
          v12 = 0;
        }

        v13 = SuplPosPayloadHandler::GetInstance(v9);
        result = SuplPosPayloadHandler::ProcessLppAdReq(v13, *(*this + 376), v8 == 2, v12);
        *(this + 32) = result == 0;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *SuplSessionVer2::RequestLppCapPayLoad(SuplSessionVer2 *this, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  result = SuplUtils::GetInstance(this);
  if (!result[36])
  {
    goto LABEL_9;
  }

  result = SuplVersionNegotiation::GetInstance(result);
  v5 = atomic_load(result + 1);
  v6 = v5 == 255;
  v7 = 1;
  if (v6)
  {
    v7 = 2;
  }

  v8 = atomic_load(&result[v7]);
  if (v8 >= 2 && (v9 = SimUtils::GetInstance(result), result = SimUtils::IsItCampedOnLte(v9, a2), result))
  {
    v10 = *(*this + 380) == 2;
    Instance = SuplPosPayloadHandler::GetInstance(result);
    v12 = *(*this + 8);
    v13 = *(*LcsSuplGlueLayer::GetInstance(Instance) + 32);
    v14 = *MEMORY[0x29EDCA608];

    return v13();
  }

  else
  {
LABEL_9:
    v15 = *MEMORY[0x29EDCA608];
  }

  return result;
}

double ECEF2FSD_RotM(const double (*a1)[3], double a2, double (*a3)[3])
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = __sincos_stret(a2);
  (*a3)[0] = v5.__sinval * (*a1)[3] + v5.__cosval * (*a1)[0];
  (*a3)[1] = v5.__sinval * (*a1)[4] + v5.__cosval * (*a1)[1];
  (*a3)[2] = v5.__sinval * (*a1)[5] + v5.__cosval * (*a1)[2];
  (*a3)[3] = v5.__cosval * (*a1)[3] - v5.__sinval * (*a1)[0];
  (*a3)[4] = v5.__cosval * (*a1)[4] - v5.__sinval * (*a1)[1];
  (*a3)[5] = v5.__cosval * (*a1)[5] - v5.__sinval * (*a1)[2];
  (*a3)[6] = (*a1)[6];
  (*a3)[7] = (*a1)[7];
  result = (*a1)[8];
  (*a3)[8] = result;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Speed_Meas_Update(unsigned int a1, double *a2, unsigned int a3, double *a4, double *a5, _WORD *a6, double a7)
{
  v28[33] = *MEMORY[0x29EDCA608];
  if ((*(a4 + 1) - 1) <= 1 && (*(a4 + 12) = 0, *a4 == 1))
  {
    v23 = 0.0;
    v10 = *a2;
    v11 = a2[1];
    *v26 = *a2;
    *&v26[1] = v11;
    v12 = a2[2];
    *&v26[2] = v12;
    v13 = 0.0;
    v14 = 2;
    do
    {
      v13 = v13 + *&v26[v14] * *&v26[v14];
      v15 = v14-- + 1;
    }

    while (v15 > 1);
    v16 = sqrt(v13);
    v17 = v16 - a4[3] * a7;
    a4[5] = v16;
    a4[6] = v17;
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    if (v16 >= 0.0001)
    {
      *(&v24[1] + a1) = v12 / v16;
      *(v24 + a1 + 1) = v11 / v16;
      v18 = v10 / v16;
    }

    else
    {
      *(&v24[1] + a1) = 0x3FF0000000000000;
      *(v24 + a1 + 1) = 0x3FF0000000000000;
      v18 = 1.0;
    }

    *(v24 + a1) = v18;
    *(v24 + a3) = v17;
    umeas(a5, a3, a4[4], v24, v28, v27, &v23, a4[7]);
    v22 = v23;
    if (v23 <= 0.0)
    {
      v19 = 0;
      *a4 = 0;
      *(a4 + 12) = 1;
      ++*a6;
      a4[8] = v22 + a4[8];
    }

    else
    {
      a4[8] = a4[4] * (v23 * (v28[a3] * v28[a3]));
      v19 = *a4;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v19 & 1;
}

uint64_t NK_AltP_Aiding_Required(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v6 = a2 + 23120;
  if (*(a2 + 23120) == 1 && *(a2 + 23124) == 1 && (!*(a1 + 11048) || *(a2 + 12) < 8 || (*(a1 + 233) & 1) != 0 || !*(a1 + 288) || *(a2 + 23152) < *(a1 + 280) * *(a1 + 280)))
  {
    result = 0;
    *a3 = 0;
    goto LABEL_35;
  }

  Comp_NEDvar_UDU(a1 + 872, 0xBu, 5, (a2 + 832), v13);
  v8 = *(a2 + 12);
  if (v8 > 8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  if (*(v6 + 1708) == 1 && *(a2 + 23152) < 900.0)
  {
    v9 = 0;
  }

  else if (*(v6 + 1684) == 1 && *(a2 + 22880) < 1.0e-14)
  {
    --v9;
  }

  if ((*(a1 + 233) & 1) != 0 || !*(a1 + 11048))
  {
    if (v8 >= 9 && *(v6 + 1658) < 3u)
    {
      v10 = 40000.0;
      goto LABEL_27;
    }
  }

  else if (v8 >= 8)
  {
    if ((*(a1 + 20) - 2) >= 3)
    {
      v10 = 40000.0;
      if (*(v6 + 1477))
      {
        v10 = 2500.0;
      }
    }

    else
    {
      v10 = 10000.0;
    }

    goto LABEL_27;
  }

  v10 = 250000.0;
LABEL_27:
  if (*(a1 + 288) && (*(v6 + 1658) < v9 || v13[2] + *(a1 + 7272) > v10) && (*(v6 + 1657) || *(v6 + 1704) && *(a2 + 23152) < 10000.0))
  {
    *a3 = 1;
    v11 = *(a1 + 280) * *(a1 + 280);
    *(a3 + 24) = *(a1 + 272);
    *(a3 + 32) = v11;
  }

  if (*a3)
  {
    *(a3 + 4) = 2;
    *(a3 + 20) = *a2;
    *(a3 + 56) = 0x4059000000000000;
    result = 1;
  }

  else
  {
    result = 0;
  }

LABEL_35:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

double GPS_EphBin2Int(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  *(a2 + 16) = (v2 >> 14) & 0x3FF;
  *(a2 + 8) = (v2 >> 12) & 3;
  *(a2 + 9) = BYTE1(v2) & 0xF;
  *(a2 + 10) = v2 >> 2;
  v3 = *(a1 + 28);
  *(a2 + 14) = *(a1 + 24);
  *(a2 + 22) = ((v2 & 3) << 8) | BYTE2(v3);
  *(a2 + 18) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  *(a2 + 15) = BYTE2(v4);
  *(a2 + 24) = v4;
  *(a2 + 44) = ((v5 << 8) >> 31) & 0xFFC00000 | (v5 >> 2) & 0x3FFFFF;
  v6 = *(a1 + 44);
  *(a2 + 30) = *(a1 + 40);
  *(a2 + 26) = v6 >> 8;
  *(a2 + 48) = v6 << 24;
  *(a2 + 48) = (v6 << 24) | *(a1 + 48) & 0xFFFFFF;
  v7 = *(a1 + 52);
  *(a2 + 36) = v7 >> 8;
  v7 <<= 24;
  *(a2 + 52) = v7;
  *(a2 + 52) = v7 & 0xFF000000 | *(a1 + 56) & 0xFFFFFF;
  v8 = *(a1 + 60);
  *(a2 + 34) = v8 >> 8;
  v8 <<= 24;
  *(a2 + 56) = v8;
  *(a2 + 56) = v8 & 0xFF000000 | *(a1 + 64) & 0xFFFFFF;
  v9 = *(a1 + 68);
  v10 = *(a1 + 72);
  *(a2 + 20) = v9 >> 8;
  *(a2 + 11) = (v9 & 0x80) != 0;
  *(a2 + 13) = 0;
  *(a2 + 12) = (v9 >> 2) & 0x1F;
  *(a2 + 40) = v10 >> 8;
  *(a2 + 60) = v10 << 24;
  *(a2 + 60) = (v10 << 24) | *(a1 + 76) & 0xFFFFFF;
  v11 = *(a1 + 80);
  *(a2 + 38) = v11 >> 8;
  v11 <<= 24;
  *(a2 + 64) = v11;
  *(a2 + 64) = v11 & 0xFF000000 | *(a1 + 84) & 0xFFFFFF;
  v12 = *(a1 + 88);
  *(a2 + 32) = v12 >> 8;
  v12 <<= 24;
  *(a2 + 68) = v12;
  *(a2 + 68) = v12 & 0xFF000000 | *(a1 + 92) & 0xFFFFFF;
  *(a2 + 72) = ((*(a1 + 96) << 8) >> 31) & 0xFF000000 | *(a1 + 96) & 0xFFFFFF;
  *(a2 + 28) = (*(a1 + 100) >> 15) & 0xC000 | (*(a1 + 100) >> 2);
  result = *a1;
  *a2 = *a1;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

double GPS_EphInt2Bin(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = *a1;
  *a2 = *a1;
  v3 = *(a1 + 22);
  *(a2 + 8) = ((*(a1 + 16) & 0x3FF) << 14) | ((*(a1 + 8) & 3) << 12) | ((*(a1 + 9) & 0xF) << 8) | (4 * (*(a1 + 10) & 0x3F)) | (v3 >> 8) & 3;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 18) | (v3 << 16);
  *(a2 + 24) = *(a1 + 14);
  *(a2 + 28) = v4;
  *(a2 + 32) = *(a1 + 24) | (*(a1 + 15) << 16);
  v5 = *(a1 + 30) | (v3 << 16);
  *(a2 + 36) = 4 * (*(a1 + 44) & 0x3FFFFF);
  *(a2 + 40) = v5;
  HIDWORD(v6) = *(a1 + 26);
  LODWORD(v6) = *(a1 + 48);
  *(a2 + 44) = v6 >> 24;
  *(a2 + 48) = *(a1 + 48) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 36);
  LODWORD(v6) = *(a1 + 52);
  *(a2 + 52) = v6 >> 24;
  *(a2 + 56) = *(a1 + 52) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 34);
  LODWORD(v6) = *(a1 + 56);
  *(a2 + 60) = v6 >> 24;
  v7 = ((*(a1 + 11) & 1) << 7) | (*(a1 + 20) << 8) | (4 * (*(a1 + 12) & 0x1F));
  *(a2 + 64) = *(a1 + 56) & 0xFFFFFF;
  *(a2 + 68) = v7;
  HIDWORD(v6) = *(a1 + 40);
  LODWORD(v6) = *(a1 + 60);
  *(a2 + 72) = v6 >> 24;
  *(a2 + 76) = *(a1 + 60) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 38);
  LODWORD(v6) = *(a1 + 64);
  *(a2 + 80) = v6 >> 24;
  *(a2 + 84) = *(a1 + 64) & 0xFFFFFF;
  HIDWORD(v6) = *(a1 + 32);
  LODWORD(v6) = *(a1 + 68);
  *(a2 + 88) = v6 >> 24;
  *(a2 + 92) = *(a1 + 68) & 0xFFFFFF;
  LOWORD(v7) = *(a1 + 28);
  *(a2 + 96) = *(a1 + 72) & 0xFFFFFF;
  *(a2 + 100) = (v3 << 16) | (4 * (v7 & 0x3FFF));
  *(a2 + 104) = 0xFFFFFF;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GncP15_00HandleTruthPos(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_REQ\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP15_00HandleTruthPos");
    LbsOsaTrace_WriteLog(8u, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("GncP15_00HandleTruthPos", 57, 1, 0x10uLL);
    if (v4)
    {
      v5 = v4;
      v7 = *(*(&xmmword_2A1926A20 + 1) + 16);
      v6 = *(*(&xmmword_2A1926A20 + 1) + 32);
      v23[0] = **(&xmmword_2A1926A20 + 1);
      v23[1] = v7;
      v23[2] = v6;
      v9 = *(*(&xmmword_2A1926A20 + 1) + 64);
      v8 = *(*(&xmmword_2A1926A20 + 1) + 80);
      v10 = *(*(&xmmword_2A1926A20 + 1) + 48);
      v26 = *(*(&xmmword_2A1926A20 + 1) + 96);
      v24 = v9;
      v25 = v8;
      v23[3] = v10;
      EvLog_GN_GNSS_Config("GN_GPS_Get_Config: ", v23);
      v24 = *(a1 + 16);
      *&v25 = *(a1 + 32);
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SetTruthPos Lat,%f,Long,%f,Alt,%f\n", (*&g_MacClockTicksToMsRelation * v11), "GNC", 73, "GncP15_00HandleTruthPos", *(a1 + 16), *(a1 + 24), *(a1 + 32));
        LbsOsaTrace_WriteLog(8u, __str, v12, 4, 1);
      }

      if (GN_GPS_Set_Config(v23))
      {
        v13 = 1;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(8u, 2, 0, 0);
        v13 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SetCfg\n", (*&g_MacClockTicksToMsRelation * v17), "GNC", 87, "GncP15_00HandleTruthPos", 257);
          LbsOsaTrace_WriteLog(8u, __str, v18, 2, 1);
          v13 = 0;
        }
      }

      v5[12] = v13;
      if (LbsOsaTrace_IsLoggingAllowed(8u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNCP_VAL_TRUTH_POS_RSP =>GNM\n", (*&g_MacClockTicksToMsRelation * v19), "GNC", 73, "GncP15_00HandleTruthPos");
        LbsOsaTrace_WriteLog(8u, __str, v20, 4, 1);
      }

      AgpsSendFsmMsg(134, 128, 8787972, v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(8u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v14), "GNC", 69, "GncP15_00HandleTruthPos", 517);
    LbsOsaTrace_WriteLog(8u, __str, v15, 0, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t HandlePPDUSessionData(int *a1)
{
  v29 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandlePPDUSessionData");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  v4 = a1[22];
  if (v4 == 3)
  {
    v11 = *(a1 + 36);
    v23 = v11;
    v24 = *(a1 + 10);
    v25 = 3;
    v12 = *a1;
    v26 = *a1;
    v13 = *(a1 + 9);
    v27 = v13;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v15 = 84;
      if (!v13)
      {
        v15 = 70;
      }

      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP sessionId,%u,emergencyCall,%u,Protocol,%u,length,%u\n", v14, "PSP", 73, "HandlePPDUSessionData", v12, v15, 3, v11);
      LbsOsaTrace_WriteLog(0x13u, __str, v16, 4, 1);
    }

    IuiMsSuplPosTrigger(0, &v23);
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 36);
    v23 = v5;
    v24 = *(a1 + 10);
    v25 = 1;
    v6 = *a1;
    v26 = *a1;
    v7 = *(a1 + 9);
    v27 = v7;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v9 = 84;
      if (!v7)
      {
        v9 = 70;
      }

      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RRLP sessionId,%u,emergencyCall,%c,Protocol,%u,length,%u\n", v8, "PSP", 73, "HandlePPDUSessionData", v6, v9, 1, v5);
      LbsOsaTrace_WriteLog(0x13u, __str, v10, 4, 1);
    }

    IuiMsSuplPosReq(0, &v23);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pay load\n", (*&g_MacClockTicksToMsRelation * v17), "PSP", 69, "HandlePPDUSessionData", 770);
    LbsOsaTrace_WriteLog(0x13u, __str, v18, 0, 1);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v20 = mach_continuous_time();
    v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v20), "PSP", 68, "HandlePPDUSessionData");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v21, 5, 1);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandlePPDUSessionEND(_DWORD *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Indicate Session End sessionID,%u,Code,%u\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 73, "HandlePPDUSessionEND", *a1, a1[3]);
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 4, 1);
  }

  IuiMsSuplIndicateSessionEnd(0, *a1);
  session_info = gps_find_session_info(*a1);
  if (session_info)
  {
    v5 = session_info;
    v6 = *(session_info + 8);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = 3;
      }

      else
      {
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
        v7 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "HandlePPDUSessionEND", 770, *(v5 + 8));
          LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }

    v10 = (v5 + 20);
    v9 = (v5 + 64);
    v8 = *(v5 + 184);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
  }

  v14 = GNS_PospSummaryReport(*a1, *(a1 + 9), v10, v9, v8, a1[3], v7);
  if (v14 != 1)
  {
    v15 = v14;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx GNS_PospSummaryReport call failed result,%u\n", (*&g_MacClockTicksToMsRelation * v16), "PSP", 69, "HandlePPDUSessionEND", 770, v15);
      LbsOsaTrace_WriteLog(0x13u, __str, v17, 0, 1);
    }
  }

  result = gps_delete_session_info(*a1);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandlePPDUStopSession(int *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  IuiMsSuplIndicateSessionEnd(0, *a1);
  v2 = a1[2];
  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_8;
  }

  if (v2 == 1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
LABEL_13:
    result = LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
    goto LABEL_14;
  }

  if (v2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_14;
    }

    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v11 = a1[2];
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v9));
    goto LABEL_13;
  }

  v3 = 1;
LABEL_8:
  v6 = CheckSessionProtocol(*(a1 + 4));
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u,SessionType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 73, "HandlePPDUStopSession", *a1, v6);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 4, 1);
  }

  result = GNS_PpduEncodedPdu(*a1, 3, v6, v3, 14, 0, 0, 1);
LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t CheckSessionProtocol(uint64_t result)
{
  v7 = *MEMORY[0x29EDCA608];
  if (result != 1)
  {
    v1 = result;
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
    result = 0;
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionProtocol,%u\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 69, "CheckSessionProtocol", 770, v1);
      LbsOsaTrace_WriteLog(0x13u, __str, v4, 0, 1);
      result = 0;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandleRRLPResponse(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleRRLPResponse");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  session_info = gps_find_session_info(*(a1 + 20));
  if (session_info)
  {
    v5 = session_info;
    if (LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v6), "PSP", 73, "HandleRRLPResponse", *(a1 + 20));
      LbsOsaTrace_WriteLog(0x13u, __str, v7, 4, 1);
    }

    LOWORD(__s) = 0;
    v24 = 0;
    memset_s(&__s, 0x10uLL, 0, 0x10uLL);
    if (HIWORD(*a1))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v10 = mach_continuous_time();
        v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 69, "HandleRRLPResponse", 772, *a1);
        LbsOsaTrace_WriteLog(0x13u, __str, v11, 0, 1);
      }
    }

    else
    {
      LOWORD(__s) = *a1;
    }

    v24 = *(a1 + 8);
    v12 = CheckSessionProtocol(*(v5 + 4));
    v13 = *(v5 + 8);
    if ((v13 - 1) < 2)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
LABEL_23:
        LbsOsaTrace_WriteLog(0x13u, __str, v14, 0, 1);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v13)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v22 = *(v5 + 8);
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v17));
        goto LABEL_23;
      }

LABEL_24:
      if (v24)
      {
        free(v24);
      }

      v24 = 0;
      goto LABEL_27;
    }

    v15 = v12;
    PPDU_TraceBuffer(v24, __s);
    if (*(a1 + 16))
    {
      v16 = 14;
    }

    else
    {
      v16 = 1;
    }

    GNS_PpduEncodedPdu(*v5, 3, v15, 1, v16, __s, v24, 1);
    if (v24)
    {
      free(v24);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "HandleRRLPResponse", 770, *(a1 + 20));
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

LABEL_27:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v19 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "PSP", 68, "HandleRRLPResponse");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v20, 5, 1);
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t PPDU_TraceBuffer(uint64_t result, unsigned int a2)
{
  v3 = result;
  v16 = *MEMORY[0x29EDCA608];
  if (result && a2)
  {
    goto LABEL_6;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Either payload is NULL or length is zero\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 69, "PPDU_TraceBuffer", 513);
    result = LbsOsaTrace_WriteLog(0x13u, __str, v5, 0, 1);
  }

  if (a2)
  {
LABEL_6:
    v6 = 0;
    do
    {
      v7 = a2 - v6;
      if (v7 > 0x13)
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X,0x%02X\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 77, "PPDU_TraceBuffer", *(v3 + v6), *(v3 + v6 + 1), *(v3 + v6 + 2), *(v3 + v6 + 3), *(v3 + v6 + 4), *(v3 + v6 + 5), *(v3 + v6 + 6), *(v3 + v6 + 7), *(v3 + v6 + 8), *(v3 + v6 + 9), *(v3 + v6 + 10), *(v3 + v6 + 11), *(v3 + v6 + 12), *(v3 + v6 + 13), *(v3 + v6 + 14), *(v3 + v6 + 15), *(v3 + v6 + 16), *(v3 + v6 + 17), *(v3 + v6 + 18), *(v3 + v6 + 19));
          result = LbsOsaTrace_WriteLog(0x13u, __str, v13, 3, 1);
        }

        v8 = v6;
      }

      else
      {
        v8 = a2;
        if (a2 > v6)
        {
          v9 = (v3 + v6);
          do
          {
            result = LbsOsaTrace_IsLoggingAllowed(0x13u, 3, 0, 0);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ,0x%02X\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 77, "PPDU_TraceBuffer", *v9);
              result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 3, 1);
            }

            ++v9;
            --v7;
          }

          while (v7);
          v8 = a2;
        }
      }

      v6 = v8 + 20;
    }

    while (v8 + 20 < a2);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandleWlanCbInit(uint64_t (*a1)(void, void, void))
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleWlanCbInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1 && LbsOsaTrace_IsLoggingAllowed(0x13u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: DeRegistering WLAN Cb\n", (*&g_MacClockTicksToMsRelation * v4), "PSP", 73, "HandleWlanCbInit");
    LbsOsaTrace_WriteLog(0x13u, __str, v5, 4, 1);
  }

  g_WlanMeasReqCb = a1;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "PSP", 68, "HandleWlanCbInit");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v8, 5, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandleWlanCapUpdate(int *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = 0;
  v5 = 256;
  v1 = *a1;
  if (*a1)
  {
    HIBYTE(v4) = 1;
    if (v1)
    {
      BYTE2(v4) = 1;
    }

    if ((v1 & 2) != 0)
    {
      LOBYTE(v4) = 1;
    }

    if (a1[1])
    {
      LOBYTE(v5) = 1;
    }
  }

  if ((a1[2] & 1) == 0)
  {
    HIBYTE(v5) = 0;
  }

  result = SuplLppUpdatePosCap(&v4);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandlePPDUCapUpdate(_DWORD *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  *v3 = 1;
  *&v3[1] = *a1;
  SuplLppUpdateCap(v3);
  result = SuplRrlpUpdateCap(v3);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandlePPDUCapReq(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a1 + 68) == 3)
  {
    *__str = *a1;
    v8 = 3;
    v7 = *(a1 + 9);
    result = SuplLppExecuteCapReq(__str);
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pay load type,%u\n", (*&g_MacClockTicksToMsRelation * v3), "PSP", 87, "HandlePPDUCapReq", 770, *(a1 + 68));
      result = LbsOsaTrace_WriteLog(0x13u, __str, v4, 2, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandlePPDUAssistDataReq(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandlePPDUAssistDataReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (*(a1 + 68) == 3)
  {
    __s = -1;
    v39 = 0;
    memset(v40, 0, sizeof(v40));
    v41 = -1;
    v42 = 0;
    memset_s(&__s, 0x30uLL, 0, 0x30uLL);
    __s = *a1;
    v39 = *(a1 + 9);
    v4 = *(a1 + 72);
    if (!v4)
    {
      goto LABEL_44;
    }

    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_44;
    }

    v6 = *v5;
    if (v6 == 1)
    {
      *v40 |= 0x40u;
    }

    v7 = v5[1];
    if (v7 == 1)
    {
      *v40 |= 0x20u;
    }

    v8 = v5[2];
    if (v8 == 1)
    {
      *v40 |= 4u;
    }

    v9 = *(v4 + 16);
    if (!v9)
    {
      goto LABEL_44;
    }

    v10 = v42 | 1;
    v42 |= 1u;
    if (v5[3] != 1)
    {
      goto LABEL_44;
    }

    if (v6)
    {
      *v40 |= 0x40u;
      if (!v7)
      {
LABEL_16:
        if (!v8)
        {
LABEL_18:
          if (*v9 == 1)
          {
            if (*(v9 + 4) == 1)
            {
              *v40 |= 2u;
            }

            if (*(v9 + 5) == 1)
            {
              *v40 |= 0x100u;
            }

            if (*(v9 + 6) == 1)
            {
              *v40 |= 1u;
            }

            if (*(v9 + 7) == 1)
            {
              *v40 |= 8u;
            }

            if (*(v9 + 8) == 1)
            {
              *v40 |= 0x80u;
            }
          }

          if (*(v9 + 18))
          {
            v40[4] = *(v9 + 18);
          }

          if (*(v9 + 16))
          {
            *&v40[2] = *(v9 + 16);
          }

          if (*(v9 + 19))
          {
            v40[36] = *(v9 + 19);
          }

          v11 = *(v9 + 20);
          if ((v11 - 1) <= 0xE)
          {
            v12 = 0;
            v40[5] = v11;
            do
            {
              v13 = *(a1 + 72);
              v40[v12 + 6] = *(*(v13 + 16) + v12 + 21);
              v14 = *(*(v13 + 16) + 2 * v12 + 86);
              if (v14 > 0xFF)
              {
                if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
                {
                  bzero(__str, 0x410uLL);
                  v15 = mach_continuous_time();
                  v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx v_Iode,%u\n", (*&g_MacClockTicksToMsRelation * v15), "PSP", 69, "HandlePPDUAssistDataReq", 772, *(*(*(a1 + 72) + 16) + 2 * v12 + 86));
                  LbsOsaTrace_WriteLog(0x13u, __str, v16, 0, 1);
                }
              }

              else
              {
                v40[v12 + 21] = v14;
              }

              ++v12;
            }

            while (v12 < v40[5]);
            v10 = v42 | 1;
          }

          v42 = v10;
LABEL_44:
          v17 = *(a1 + 88);
          if (v17)
          {
            lpp_t_mm_lpm_status_ind(1, *(v17 + 1), (v17[1] << 16) | ((v17[1] > 0x63uLL) << 32) | *v17);
          }

          SuplLppExecuteAdReq(&__s);
          goto LABEL_49;
        }

LABEL_17:
        *v40 |= 4u;
        goto LABEL_18;
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    *v40 |= 0x20u;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx pay load type,%u\n", (*&g_MacClockTicksToMsRelation * v18), "PSP", 87, "HandlePPDUAssistDataReq", 770, *(a1 + 68));
    LbsOsaTrace_WriteLog(0x13u, __str, v19, 2, 1);
  }

LABEL_49:
  v20 = *(a1 + 72);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      free(v21);
      v20 = *(a1 + 72);
    }

    *(v20 + 16) = 0;
    v22 = *(a1 + 72);
    v23 = *(v22 + 24);
    if (v23)
    {
      free(v23);
      v22 = *(a1 + 72);
    }

    *(v22 + 24) = 0;
    v24 = *(a1 + 72);
    v25 = *(v24 + 32);
    if (v25)
    {
      free(v25);
      v24 = *(a1 + 72);
    }

    *(v24 + 32) = 0;
    v26 = *(a1 + 72);
    v27 = *(v26 + 40);
    if (v27)
    {
      free(v27);
      v26 = *(a1 + 72);
    }

    *(v26 + 40) = 0;
    v28 = *(a1 + 72);
    v29 = *(v28 + 48);
    if (v29)
    {
      free(v29);
      v28 = *(a1 + 72);
    }

    *(v28 + 48) = 0;
    v30 = *(a1 + 72);
    v31 = *(v30 + 8);
    if (v31)
    {
      free(v31);
      v30 = *(a1 + 72);
    }

    *(v30 + 8) = 0;
    v32 = *(a1 + 72);
    if (v32)
    {
      free(v32);
    }

    *(a1 + 72) = 0;
  }

  v33 = *(a1 + 88);
  if (v33)
  {
    free(v33);
  }

  *(a1 + 88) = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v35 = mach_continuous_time();
    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v35), "PSP", 68, "HandlePPDUAssistDataReq");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v36, 5, 1);
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HandleLppWlanMeasReq(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "PSP", 68, "HandleLppWlanMeasReq");
    LbsOsaTrace_WriteLog(0x13u, __str, v3, 5, 1);
  }

  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = 513;
LABEL_14:
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v6, "PSP", 69, "HandleLppWlanMeasReq", v7);
    LbsOsaTrace_WriteLog(0x13u, __str, v8, 0, 1);
    goto LABEL_15;
  }

  LOBYTE(__s) = 0;
  memset_s(&__s, 0xCuLL, 0, 0xCuLL);
  v4 = *a1;
  v14 = *a1;
  if (*(a1 + 4))
  {
    __s = 1;
  }

  v15 = 1000 * *(a1 + 8);
  if (!g_WlanMeasReqCb)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_15;
    }

    bzero(__str, 0x410uLL);
    v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = 258;
    goto LABEL_14;
  }

  session_info = gps_find_session_info(v4);
  if (session_info)
  {
    *(session_info + 5) = 2;
    *(session_info + 188) = 1;
  }

  posp_StartTimer(posp_TimerExpiry_Ind, v14, v15, 1);
  g_WlanMeasReqCb(1, 12, &__s);
LABEL_15:
  result = LbsOsaTrace_IsLoggingAllowed(0x13u, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v10 = mach_continuous_time();
    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "PSP", 68, "HandleLppWlanMeasReq");
    result = LbsOsaTrace_WriteLog(0x13u, __str, v11, 5, 1);
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void HandleLppCapsResponse(unsigned int *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_11;
  }

  session_info = gps_find_session_info(*a1);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v19 = *a1;
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v11));
LABEL_19:
    LbsOsaTrace_WriteLog(0x13u, __str, v10, 0, 1);
    goto LABEL_20;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v22 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = a1[2];
  if (!HIWORD(v4))
  {
    v5 = a1[2];
    LOWORD(__s) = a1[2];
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v12), "PSP", 69, "HandleLppCapsResponse", 772, a1[2]);
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
  }

  v5 = __s;
  if (!__s)
  {
LABEL_17:
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU Size\n");
    goto LABEL_19;
  }

LABEL_5:
  v6 = gnssOsa_Calloc("HandleLppCapsResponse", 582, 1, v5);
  v22 = v6;
  if (!v6)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_20;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_11:
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_19;
  }

  memcpy_s("HandleLppCapsResponse", 586, v6, __s, *(a1 + 2), __s);
  v7 = CheckSessionProtocol(*(v3 + 4));
  v8 = *(v3 + 8);
  if (v8 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_32;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_31;
  }

  if (v8 == 2)
  {
    v15 = v7;
    PPDU_TraceBuffer(v22, __s);
    if (*(a1 + 4))
    {
      v16 = 14;
    }

    else
    {
      v16 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 1, v15, 3, v16, __s, v22, *(a1 + 24) != 0);
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v20 = *(v3 + 8);
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v18));
LABEL_31:
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

LABEL_32:
  if (v22)
  {
    free(v22);
  }

LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
}

void HandleLppAdResponse(unsigned int *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_8:
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_11;
  }

  session_info = gps_find_session_info(*a1);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v19 = *a1;
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v7));
LABEL_11:
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
    goto LABEL_33;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v22 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = a1[2];
  if (!HIWORD(v4))
  {
    v5 = a1[2];
    LOWORD(__s) = a1[2];
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Length,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "HandleLppAdResponse", 772, a1[2]);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

  v5 = __s;
  if (__s)
  {
LABEL_15:
    v10 = gnssOsa_Calloc("HandleLppAdResponse", 676, 1, v5);
    v22 = v10;
    if (v10)
    {
      memcpy_s("HandleLppAdResponse", 680, v10, __s, *(a1 + 2), __s);
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_8;
  }

LABEL_17:
  v11 = CheckSessionProtocol(*(v3 + 4));
  v12 = *(v3 + 8);
  if (v12 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_30;
  }

  if (v12 == 2)
  {
    v14 = v11;
    PPDU_TraceBuffer(v22, __s);
    if (*(a1 + 24))
    {
      v15 = 14;
    }

    else
    {
      v15 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 2, v14, 3, v15, __s, v22, *(a1 + 25) != 0);
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v20 = *(v3 + 8);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_30:
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
  }

LABEL_31:
  if (v22)
  {
    free(v22);
  }

LABEL_33:
  v18 = *MEMORY[0x29EDCA608];
}

void HandleLppPosResponse(int *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
LABEL_8:
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_11;
  }

  session_info = gps_find_session_info(a1[5]);
  if (!session_info)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v19 = a1[5];
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SessionID,%u\n", (*&g_MacClockTicksToMsRelation * v7));
LABEL_11:
    LbsOsaTrace_WriteLog(0x13u, __str, v6, 0, 1);
    goto LABEL_33;
  }

  v3 = session_info;
  LOWORD(__s) = 0;
  v22 = 0;
  memset_s(&__s, 0x10uLL, 0, 0x10uLL);
  v4 = *a1;
  if (!HIWORD(*a1))
  {
    v5 = *a1;
    LOWORD(__s) = *a1;
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx length,%u\n", (*&g_MacClockTicksToMsRelation * v8), "PSP", 69, "HandleLppPosResponse", 772, *a1);
    LbsOsaTrace_WriteLog(0x13u, __str, v9, 0, 1);
  }

  v5 = __s;
  if (__s)
  {
LABEL_15:
    v10 = gnssOsa_Calloc("HandleLppPosResponse", 762, 1, v5);
    v22 = v10;
    if (v10)
    {
      memcpy_s("HandleLppPosResponse", 766, v10, __s, *(a1 + 1), __s);
      goto LABEL_17;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    goto LABEL_8;
  }

LABEL_17:
  v11 = CheckSessionProtocol(*(v3 + 4));
  v12 = *(v3 + 8);
  if (v12 < 2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
    {
      goto LABEL_31;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol mismatch\n");
    goto LABEL_30;
  }

  if (v12 == 2)
  {
    v14 = v11;
    PPDU_TraceBuffer(v22, __s);
    if (*(a1 + 17))
    {
      v15 = 14;
    }

    else
    {
      v15 = 1;
    }

    GNS_PpduEncodedPdu(*v3, 3, v14, 3, v15, __s, v22, *(a1 + 16) != 0);
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x13u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v17 = mach_continuous_time();
    v20 = *(v3 + 8);
    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Pos Protocol,%u\n", (*&g_MacClockTicksToMsRelation * v17));
LABEL_30:
    LbsOsaTrace_WriteLog(0x13u, __str, v13, 0, 1);
  }

LABEL_31:
  if (v22)
  {
    free(v22);
  }

LABEL_33:
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t Encode_Nmea_Id(uint64_t result, unsigned int a2)
{
  v3 = *MEMORY[0x29EDCA608];
  if (a2 > 6)
  {
    goto LABEL_8;
  }

  if (((1 << a2) & 0x6A) != 0)
  {
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    result = (result + 64);
    goto LABEL_12;
  }

  if (a2 == 4)
  {
    if (result >= 152)
    {
      result = 0;
    }

    else
    {
      result = (result - 87);
    }
  }

  else
  {
LABEL_8:
    if (a2)
    {
      EvCrt_Illegal_Default("Encode_Nmea_Id", 0x5Du);
    }

    result = 0;
  }

LABEL_12:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Is_GAL_IntEph_Same(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12) == *(a2 + 12) && *(a1 + 14) == *(a2 + 14) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 50) == *(a2 + 50) && *(a1 + 52) == *(a2 + 52) && *(a1 + 54) == *(a2 + 54) && *(a1 + 56) == *(a2 + 56) && *(a1 + 58) == *(a2 + 58) && *(a1 + 60) == *(a2 + 60) && *(a1 + 62) == *(a2 + 62) && *(a1 + 15) == *(a2 + 15) && *(a1 + 74) == *(a2 + 74) && *(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 78) == *(a2 + 78) && *(a1 + 82) == *(a2 + 82) && *(a1 + 83) == *(a2 + 83) && *(a1 + 85) == *(a2 + 85) && *(a1 + 86) == *(a2 + 86) && *(a1 + 8) == *(a2 + 8);
  v3 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsFsmHandler(const void **a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsFsmHandler");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PId,%x,Cntxt,%p\n", (*&g_MacClockTicksToMsRelation * v4), "OSA", 73, "AgpsFsmHandler", *(a1 + 4), a1[12]);
    LbsOsaTrace_WriteLog(0xEu, __str, v5, 4, 1);
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v6 = AgpsDeQueueFsmMsg(a1);
        if (v6)
        {
          break;
        }

        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "OSA", 69, "AgpsFsmHandler", 517);
          LbsOsaTrace_WriteLog(0xEu, __str, v13, 0, 1);
        }
      }

      v7 = v6;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Event,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 73, "AgpsFsmHandler", *(v7 + 1));
        LbsOsaTrace_WriteLog(0xEu, __str, v9, 4, 1);
      }

      if ((v7[8] & 1) == 0)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
        {
          goto LABEL_24;
        }

        bzero(__str, 0x410uLL);
        v14 = mach_continuous_time();
        v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Invalid Event,%x\n", (*&g_MacClockTicksToMsRelation * v14), "OSA", 73, "AgpsFsmHandler", *(v7 + 1));
        v16 = 4;
        goto LABEL_23;
      }

      v10 = a1[12];
      if (v10)
      {
        break;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        goto LABEL_24;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v17), "OSA", 69, "AgpsFsmHandler", 520);
      v16 = 0;
LABEL_23:
      LbsOsaTrace_WriteLog(0xEu, __str, v15, v16, 1);
LABEL_24:
      free(v7);
    }

    while (1)
    {
      v11 = *v10;
      if (*v10 == -2)
      {
        v10 = v10[2];
        if (!v10)
        {
          goto LABEL_36;
        }

        v11 = *v10;
      }

      else if (v11 == -1)
      {
        goto LABEL_28;
      }

      if (*(v7 + 1) == v11)
      {
        break;
      }

      v10 += 3;
    }

    if (v11 == -3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Shutdown ThreadId,%x\n", (*&g_MacClockTicksToMsRelation * v18), "OSA", 73, "AgpsFsmHandler", *(a1 + 4));
        LOBYTE(v10) = 1;
        LbsOsaTrace_WriteLog(0xEu, __str, v19, 4, 1);
        goto LABEL_36;
      }

LABEL_34:
      LOBYTE(v10) = 1;
      goto LABEL_36;
    }

LABEL_28:
    v20 = v10[2];
    v21 = (v10[1])(v7);
    if (v20 == &g_UnknStatePtr)
    {
      if (v21 == &g_UnknStatePtr)
      {
        goto LABEL_34;
      }

      if (v21)
      {
        LOBYTE(v10) = 0;
        a1[12] = v21;
        goto LABEL_36;
      }
    }

    else
    {
      v22 = v10[2];
      if (v22)
      {
        LOBYTE(v10) = 0;
        a1[12] = v22;
        goto LABEL_36;
      }
    }

    LOBYTE(v10) = 0;
LABEL_36:
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v23 = mach_continuous_time();
      v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed Event,%x\n", (*&g_MacClockTicksToMsRelation * v23), "OSA", 68, "AgpsFsmHandler", *(v7 + 1));
      LbsOsaTrace_WriteLog(0xEu, __str, v24, 5, 1);
    }

    free(v7);
  }

  while ((v10 & 1) == 0);
  result = LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 73, "AgpsFsmHandler");
    result = LbsOsaTrace_WriteLog(0xEu, __str, v27, 4, 1);
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsFsmTimerRoutine(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsFsmSendTimeout", 722, &g_TimerCriticSection))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v3, "OSA", 69, "AgpsFsmSendTimeout", 1550);
LABEL_17:
      result = LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (a1)
  {
    v5 = *a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 73, "AgpsFsmSendTimeout", *a1, *(a1 + 2));
      LbsOsaTrace_WriteLog(0xEu, __str, v7, 4, 1);
    }

    if (*(a1 + 2) != -1)
    {
      v8 = gnssOsa_Calloc("AgpsFsmSendTimeout", 737, 1, 0xCuLL);
      if (!v8)
      {
        v11 = 741;
        goto LABEL_14;
      }

      AgpsSendFsmMsg(BYTE2(v5), BYTE2(v5), v5, v8);
      if ((gnssOsa_StopTimer("AgpsFsmSendTimeout", 0x2EFu, *(a1 + 2)) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%llx,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 87, "AgpsFsmSendTimeout", 1545, *a1, *(a1 + 2));
        LbsOsaTrace_WriteLog(0xEu, __str, v10, 2, 1);
      }

      *(a1 + 12) = 0;
      *a1 = 0;
      *(a1 + 2) = -1;
    }
  }

  v11 = 758;
LABEL_14:
  result = gnssOsa_MacExitCriticalSection("AgpsFsmSendTimeout", v11, &g_TimerCriticSection);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v12, "OSA", 69, "AgpsFsmSendTimeout", 1551);
      goto LABEL_17;
    }
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL AgpsFsmExecDeInitCallbacks(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 144);
  if (v1)
  {
    v1();
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CB missing PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 87, "AgpsFsmExecDeInitCallbacks", 515, *(a1 + 4));
    LbsOsaTrace_WriteLog(0xEu, __str, v4, 2, 1);
  }

  result = v1 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsDeinitFsm(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = gnssOsa_Calloc("AgpsDeinitFsm", 287, 1, 0xCuLL);
  if (result)
  {
    *(result + 4) = -3;
    *(result + 8) = 1;
    AgpsEnQueueFsmMsg(result, a1);
    if (pthread_join(*(a1 + 104), 0))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v3 = mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsDeinitFsm", 1555, *(a1 + 4));
        LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
        result = 0;
      }
    }

    else
    {
      *(a1 + 104) = 0;
      AgpsDeinitMsgQueue(a1);
      result = 1;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsSpawnFsm(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x29EDCA608];
  pg_AgpsFsmTable = a1;
  g_NumProcess = a2;
  if (!gnssOsa_Init())
  {
    goto LABEL_18;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Starts\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 73, "AgpsSpawnFsm");
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 4, 1);
  }

  if (gnssOsa_InitCriticalSection("AgpsSpawnFsm", 333, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_15;
  }

  if (gnssOsa_MacEnterCriticalSection("AgpsFsmInitTimer", 67, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v4 = &byte_2A1920564;
  v5 = 10;
  do
  {
    *(v4 - 12) = 0;
    *(v4 - 1) = -1;
    *v4 = 0;
    v4 += 16;
    --v5;
  }

  while (v5);
  if (gnssOsa_MacExitCriticalSection("AgpsFsmInitTimer", 78, &g_TimerCriticSection))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = pg_AgpsFsmTable;
  if (!*(pg_AgpsFsmTable + 4))
  {
LABEL_36:
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v24), "OSA", 73, "AgpsSpawnFsm");
      v9 = 1;
      LbsOsaTrace_WriteLog(0xEu, __str, v25, 4, 1);
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_19;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v12 + 168 * v13;
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: PID,%x\n", (*&g_MacClockTicksToMsRelation * v16), "OSA", 73, "AgpsInitFsm", *(v15 + 4));
      LbsOsaTrace_WriteLog(0xEu, __str, v17, 4, 1);
    }

    AgpsInitMsgQueue(v15);
    if (!*(v15 + 120))
    {
      break;
    }

    if (!gnssOsa_CreateThread("AgpsInitFsm", 239, (v15 + 104), *(v15 + 128), AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v34 = *(v15 + 4);
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx With Stack PID,%x\n", (*&g_MacClockTicksToMsRelation * v27));
LABEL_47:
        LbsOsaTrace_WriteLog(0xEu, __str, v28, 0, 1);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

LABEL_31:
    ++v14;
    v12 = pg_AgpsFsmTable;
    v13 = v14;
    if (!*(pg_AgpsFsmTable + 168 * v14 + 4))
    {
      if (!*(pg_AgpsFsmTable + 4))
      {
        goto LABEL_36;
      }

      v20 = 0;
      v21 = 0;
      while (1)
      {
        v22 = v12 + 168 * v20;
        v23 = *(v22 + 136);
        if (!v23)
        {
          break;
        }

        v23();
        ++v21;
        v12 = pg_AgpsFsmTable;
        v20 = v21;
        if (!*(pg_AgpsFsmTable + 168 * v21 + 4))
        {
          goto LABEL_36;
        }
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v29 = mach_continuous_time();
        v35 = *(v22 + 4);
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Init CB not regd PId,%x\n", (*&g_MacClockTicksToMsRelation * v29));
        goto LABEL_15;
      }

      goto LABEL_16;
    }
  }

  v18 = *(v15 + 128);
  v19 = *(v15 + 112);
  if (!v18)
  {
    if (!gnssOsa_CreateThread("AgpsInitFsm", 228, (v15 + 104), 0, AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
    {
      if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        goto LABEL_48;
      }

      bzero(__str, 0x410uLL);
      v32 = mach_continuous_time();
      v37 = *(v15 + 4);
      v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Without Stack PID,%x\n", (*&g_MacClockTicksToMsRelation * v32));
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  if (gnssOsa_CreateThread("AgpsInitFsm", 250, (v15 + 104), v18, AgpsFsmHandler, v15, 0, 0, *(v15 + 112)))
  {
    goto LABEL_31;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v31 = mach_continuous_time();
    v36 = *(v15 + 4);
    v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx With Prio PID,%x\n", (*&g_MacClockTicksToMsRelation * v31));
    goto LABEL_47;
  }

LABEL_48:
  AgpsDeinitMsgQueue(v15);
  if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    goto LABEL_16;
  }

  bzero(__str, 0x410uLL);
  mach_continuous_time();
  v33 = *(pg_AgpsFsmTable + 168 * v13 + 4);
  v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Failed PId,%x\n");
LABEL_15:
  LbsOsaTrace_WriteLog(0xEu, __str, v6, 0, 1);
LABEL_16:
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 73, "AgpsSpawnFsm");
    LbsOsaTrace_WriteLog(0xEu, __str, v8, 4, 1);
  }

LABEL_18:
  v9 = 0;
LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t AgpsStopAllActiveTimers(void)
{
  v12 = *MEMORY[0x29EDCA608];
  if (gnssOsa_MacEnterCriticalSection("AgpsStopAllActiveTimers", 373, &g_TimerCriticSection))
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v1 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v1, "OSA", 69, "AgpsStopAllActiveTimers", 1550);
LABEL_17:
      result = LbsOsaTrace_WriteLog(0xEu, __str, v2, 0, 1);
    }
  }

  else
  {
    v3 = &dword_2A1920560;
    v4 = 10;
    do
    {
      if (*(v3 + 4) == 1 && *v3 != -1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%llx\n", (*&g_MacClockTicksToMsRelation * v5), "OSA", 73, "AgpsStopAllActiveTimers", *(v3 - 1));
          LbsOsaTrace_WriteLog(0xEu, __str, v6, 4, 1);
        }

        if ((gnssOsa_StopTimer("AgpsStopAllActiveTimers", 0x180u, *v3) & 1) == 0 && LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v7 = mach_continuous_time();
          v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%x\n", (*&g_MacClockTicksToMsRelation * v7), "OSA", 87, "AgpsStopAllActiveTimers", 1545, *v3);
          LbsOsaTrace_WriteLog(0xEu, __str, v8, 2, 1);
        }

        *(v3 + 4) = 0;
        *(v3 - 1) = 0;
        *v3 = -1;
      }

      v3 += 4;
      --v4;
    }

    while (v4);
    result = gnssOsa_MacExitCriticalSection("AgpsStopAllActiveTimers", 392, &g_TimerCriticSection);
    if (result)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v9, "OSA", 69, "AgpsStopAllActiveTimers", 1551);
        goto LABEL_17;
      }
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AgpsShutdownAllFsm(void)
{
  v15 = *MEMORY[0x29EDCA608];
  v0 = g_NumProcess;
  g_NumProcess = 0;
  if (!v0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 73, "AgpsShutdownAllFsm");
      v5 = 1;
      LbsOsaTrace_WriteLog(0xEu, __str, v9, 4, 1);
      goto LABEL_19;
    }

LABEL_18:
    v5 = 1;
    goto LABEL_19;
  }

  if (v0 >= 1)
  {
    v1 = v0 + 1;
    v2 = 168 * v0;
    do
    {
      if (*(pg_AgpsFsmTable + v2 - 164))
      {
        if (AgpsFsmExecDeInitCallbacks(pg_AgpsFsmTable + v2 - 168))
        {
          AgpsDeinitFsm(pg_AgpsFsmTable + v2 - 168);
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v3 = mach_continuous_time();
          v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Failed PId,%x\n", (*&g_MacClockTicksToMsRelation * v3), "OSA", 69, "AgpsShutdownAllFsm", *(pg_AgpsFsmTable + v2 - 164));
          LbsOsaTrace_WriteLog(0xEu, __str, v4, 0, 1);
        }
      }

      --v1;
      v2 -= 168;
    }

    while (v1 > 1);
  }

  AgpsStopAllActiveTimers();
  if (!gnssOsa_MacDeinitCriticalSection("AgpsShutdownAllFsm", 429, &g_TimerCriticSection))
  {
    gnssOsa_flushNv();
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Completed\n", (*&g_MacClockTicksToMsRelation * v10), "OSA", 73, "AgpsShutdownAllFsm");
      LbsOsaTrace_WriteLog(0xEu, __str, v11, 4, 1);
    }

    gnssOsa_Deinit();
    goto LABEL_18;
  }

  v5 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "AgpsShutdownAllFsm", 1553);
    LbsOsaTrace_WriteLog(0xEu, __str, v7, 0, 1);
    v5 = 0;
  }

LABEL_19:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void AgpsSendFsmMsg(int a1, int a2, int a3, _BYTE *a4)
{
  v34 = *MEMORY[0x29EDCA608];
  a4[1] = a2;
  *a4 = a1;
  *(a4 + 1) = a3;
  a4[8] = 1;
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsSendFsmMsg", a1, a2, a3);
    LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
  }

  v10 = 0;
  do
  {
    v11 = v10;
    v12 = *(pg_AgpsFsmTable + 168 * v10++ + 4);
    if (v12)
    {
      v13 = v12 == a2;
    }

    else
    {
      v13 = 1;
    }
  }

  while (!v13);
  if (!v12)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v28 = mach_continuous_time();
      v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v28), "OSA", 69, "AgpsSendFsmMsg", 515, a1, a2, a3);
      LbsOsaTrace_WriteLog(0xEu, __str, v29, 0, 1);
    }

    snprintf(v32, 0x400uLL, "ASSERT: %s %d FSM : Invalid ProcessId,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 511, a1, a2, a3);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v30 = mach_continuous_time();
      v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v30), "OSA", 69, "AgpsSendFsmMsg", v32);
      LbsOsaTrace_WriteLog(0xEu, __str, v31, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 512, "false && AgpsSendFsmMsg Invalid Process Id 0");
  }

  v14 = pg_AgpsFsmTable + 168 * v11;
  if (*(v14 + 104))
  {
    if (*v14 != 174 || *(v14 + 160) != 22)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v24 = mach_continuous_time();
        v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Guard bytes\n", (*&g_MacClockTicksToMsRelation * v24), "OSA", 69, "AgpsSendFsmMsg", 770);
        LbsOsaTrace_WriteLog(0xEu, __str, v25, 0, 1);
      }

      snprintf(v32, 0x400uLL, "ASSERT: %s %d FSM : Guard Bytes Overwritten,Src,%x,Dest,%x,Op,%x", "AgpsSendFsmMsg", 476, a1, a2, a3);
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v26 = mach_continuous_time();
        v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v26), "OSA", 69, "AgpsSendFsmMsg", v32);
        LbsOsaTrace_WriteLog(0xEu, __str, v27, 0, 1);
      }

      gnssOsa_FlushLog();
      __assert_rtn("AgpsSendFsmMsg", "agpsfsm.cpp", 477, "false && AgpsSendFsmMsg Guard Bytes Overwritten");
    }

    AgpsEnQueueFsmMsg(a4, v14);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v15 = mach_continuous_time();
      v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Src,%x,Dest,%x,Op,%x\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 73, "AgpsSendFsmMsg", 521, a1, a2, a3);
      LbsOsaTrace_WriteLog(0xEu, __str, v16, 4, 1);
    }

    v17 = 0;
    do
    {
      v18 = v17;
      v19 = *(pg_AgpsFsmTable + 168 * v17++ + 4);
      if (v19)
      {
        v20 = v19 == a1;
      }

      else
      {
        v20 = 1;
      }
    }

    while (!v20);
    v21 = *(pg_AgpsFsmTable + 168 * v18 + 152);
    if (v19)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v21(a4);
    }

    free(a4);
  }

  v23 = *MEMORY[0x29EDCA608];
}

pthread_t AgpsFsmMarkTimerExpMsgInvalid(int a1)
{
  v12 = *MEMORY[0x29EDCA608];
  result = pthread_self();
  v3 = pg_AgpsFsmTable;
  v4 = *(pg_AgpsFsmTable + 4);
  if (!*(pg_AgpsFsmTable + 4))
  {
    goto LABEL_15;
  }

  v5 = *(pg_AgpsFsmTable + 4);
  if (*(pg_AgpsFsmTable + 104) != result)
  {
    v6 = 0;
    do
    {
      v7 = pg_AgpsFsmTable + 168 * ++v6;
      v5 = *(v7 + 4);
    }

    while (*(v7 + 4) && *(v7 + 104) != result);
  }

  if (g_NumProcess >= 1)
  {
    v8 = 1;
    while (v4 != v5 || !*(v3 + 104))
    {
      v4 = *(v3 + 172);
      if (*(v3 + 172))
      {
        v9 = v8 >= g_NumProcess;
      }

      else
      {
        v9 = 1;
      }

      ++v8;
      v3 += 168;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    v11 = *MEMORY[0x29EDCA608];

    return gnssOsa_MarkFsmMsgInvalid(a1, v3);
  }

  else
  {
LABEL_15:
    v10 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t AgpsFsmStartTimer(unsigned int a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmStartTimer", 576, &g_TimerCriticSection))
  {
    v6 = 10;
    v7 = &vg_OsaTimers;
    do
    {
      if (*v7 == a1 && *(v7 + 12) == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v13 = mach_continuous_time();
          v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Already started Id,%x\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 87, "AgpsFsmStartTimer", 1544, a1);
          LbsOsaTrace_WriteLog(0xEu, __str, v14, 2, 1);
        }

        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 589, &g_TimerCriticSection))
        {
          v10 = 5;
          goto LABEL_28;
        }

        goto LABEL_24;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
    AgpsFsmMarkTimerExpMsgInvalid(a1);
    v8 = &dword_2A1920560;
    v9 = 10;
    while ((v8[1] & 1) != 0)
    {
      v8 += 4;
      if (!--v9)
      {
        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 625, &g_TimerCriticSection))
        {
          snprintf(v22, 0x400uLL, "ASSERT: %s %d TMC : Max timer count reached", "AgpsFsmStartTimer", 634);
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v20), "OSA", 69, "AgpsFsmStartTimer", v22);
            LbsOsaTrace_WriteLog(0xEu, __str, v21, 0, 1);
          }

          gnssOsa_FlushLog();
          __assert_rtn("AgpsFsmStartTimer", "agpsfsm.cpp", 635, "false && Max timer count reached");
        }

        goto LABEL_24;
      }
    }

    *(v8 - 1) = a1;
    if (gnssOsa_StartTimer("AgpsFsmStartTimer", 610, v8, AgpsFsmTimerRoutine, v8 - 2, a2))
    {
      *(v8 + 4) = 1;
      v10 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x,Handle,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 73, "AgpsFsmStartTimer", a1, *v8, a2);
        LbsOsaTrace_WriteLog(0xEu, __str, v12, 4, 1);
        v10 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%x,DueTime,%ums\n", (*&g_MacClockTicksToMsRelation * v15), "OSA", 87, "AgpsFsmStartTimer", 1544, a1, a2);
        LbsOsaTrace_WriteLog(0xEu, __str, v16, 2, 1);
      }

      v10 = 3;
    }

    if (!gnssOsa_MacExitCriticalSection("AgpsFsmStartTimer", 625, &g_TimerCriticSection))
    {
      goto LABEL_28;
    }

LABEL_24:
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_27;
    }

    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1551;
    goto LABEL_26;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1550;
LABEL_26:
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmStartTimer", v5);
    LbsOsaTrace_WriteLog(0xEu, __str, v17, 0, 1);
  }

LABEL_27:
  v10 = 2;
LABEL_28:
  v18 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t AgpsFsmStopTimer(int a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x\n", (*&g_MacClockTicksToMsRelation * v2), "OSA", 68, "AgpsFsmStopTimer", a1);
    LbsOsaTrace_WriteLog(0xEu, __str, v3, 5, 1);
  }

  if (!gnssOsa_MacEnterCriticalSection("AgpsFsmStopTimer", 650, &g_TimerCriticSection))
  {
    v6 = 10;
    v7 = &dword_2A1920560;
    while (*(v7 - 1) != a1 || *(v7 + 4) != 1 || *v7 == -1)
    {
      v7 += 4;
      if (!--v6)
      {
        if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 677, &g_TimerCriticSection))
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xEu, 5, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v8 = mach_continuous_time();
            v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Not Started or already Expired Id,%x\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 68, "AgpsFsmStopTimer", 1545, a1);
            LbsOsaTrace_WriteLog(0xEu, __str, v9, 5, 1);
          }

          AgpsFsmMarkTimerExpMsgInvalid(a1);
          v10 = 4;
          goto LABEL_26;
        }

        goto LABEL_22;
      }
    }

    if (gnssOsa_StopTimer("AgpsFsmStopTimer", 0x296u, *v7))
    {
      v10 = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 73, "AgpsFsmStopTimer", a1, *v7);
        LbsOsaTrace_WriteLog(0xEu, __str, v12, 4, 1);
        v10 = 0;
      }
    }

    else
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v13 = mach_continuous_time();
        v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Id,%x,Handle,%x\n", (*&g_MacClockTicksToMsRelation * v13), "OSA", 87, "AgpsFsmStopTimer", 1545, a1, *v7);
        LbsOsaTrace_WriteLog(0xEu, __str, v14, 2, 1);
      }

      v10 = 7;
    }

    *(v7 + 4) = 0;
    *(v7 - 1) = 0;
    *v7 = -1;
    if (!gnssOsa_MacExitCriticalSection("AgpsFsmStopTimer", 677, &g_TimerCriticSection))
    {
      goto LABEL_26;
    }

LABEL_22:
    if (!LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      goto LABEL_25;
    }

    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1551;
    goto LABEL_24;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v5 = 1550;
LABEL_24:
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", v4, "OSA", 69, "AgpsFsmStopTimer", v5);
    LbsOsaTrace_WriteLog(0xEu, __str, v15, 0, 1);
  }

LABEL_25:
  v10 = 2;
LABEL_26:
  v16 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t ud2var(uint64_t result, unsigned int a2, int a3, unsigned int a4, double *a5)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = result - 8;
  v6 = a3 + 1;
  v7 = ((a3 + 1) * a3) >> 1;
  *a5 = *(result - 8 + 8 * v7);
  if (a3 + 1 <= a2)
  {
    v8 = a3 + v7;
    v9 = 1;
    do
    {
      v7 += v6;
      v10 = *(v5 + 8 * v7);
      v11 = v9 + 1;
      v12 = a4;
      if (v9 + 1 <= a4)
      {
        a5[v11 - 1] = v10;
        v12 = v9;
      }

      if (v12)
      {
        if (v12 + 1 > 2)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 2;
        }

        v14 = v13 - 1;
        v15 = v8;
        v16 = a5;
        do
        {
          *v16 = *v16 + v10 * *(v5 + 8 * v15) * *(v5 + 8 * v15);
          ++v16;
          ++v15;
          --v14;
        }

        while (v14);
      }

      v8 += v6++;
      v9 = v11;
    }

    while (v6 <= a2);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

double *GLON_State_Update_Init(double *result, uint64_t a2, int *a3, uint64_t a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (*(a2 + 60) && *(a2 + 64) == 1)
  {
    *(result + 152) = 0;
    GLON_Immediate_Updates(result, a2, a3, a4);
    v7 = *MEMORY[0x29EDCA608];

    return GLON_Leap_Second_Updates(a2, a3, a4);
  }

  else
  {
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
  }

  return result;
}

void GLON_Immediate_Updates(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24) + 7.0;
  if (v6 <= 0.0)
  {
    v7 = -0.5;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = v6 + v7;
  if (v8 >= -2147483650.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x80000000;
  }

  if (v8 <= 2147483650.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(a2 + 72) + 7.0;
  if (v11 <= 0.0)
  {
    v12 = -0.5;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = v11 + v12;
  if (v13 <= 2147483650.0)
  {
    if (v13 >= -2147483650.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0x80000000;
    }
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = 0;
  v16 = *(a2 + 68);
  if (v14 > 86399)
  {
    ++v16;
  }

  v39 = v16;
  v40 = *(a2 + 66);
  if (v14 > 86399)
  {
    v14 -= 86400;
  }

  v38 = v14;
  if (v10 <= 604799)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 - 604800;
  }

  if (v10 > 604799)
  {
    ++v5;
  }

  v36 = v5;
  v18 = v5;
  v35 = a4 + 28608;
  v19 = a4 + 6144;
  v20 = 15360;
  v21 = 15352;
  v22 = 12760;
  v23 = 1403;
  do
  {
    if (*(a3[1401] + v15) == 1 && *(a3[2035] + v15) == 1 && (*(a3[2039] + v15) & 1) != 0)
    {
      goto LABEL_57;
    }

    v24 = v17 - *(v19 + 160) + 604800 * (v18 - *(v19 + 164));
    if (v24 >= 0)
    {
      v25 = v17 - *(v19 + 160) + 604800 * (v18 - *(v19 + 164));
    }

    else
    {
      v25 = -v24;
    }

    v26 = *(v19 + 184);
    v27 = *(a3[2034] + v15);
    if (v26 == 2)
    {
      v28 = *(a3[2036] + v15);
      if (v25 <= 0xC8)
      {
        v28 = 0;
      }

      if (*(a3[1401] + v15))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v26 != 1)
      {
        if (v26)
        {
          v28 = 0;
          if (!*(a3[1401] + v15))
          {
            goto LABEL_57;
          }
        }

        else
        {
          v28 = *(a3[2036] + v15);
          if (!*(a3[1401] + v15))
          {
            goto LABEL_57;
          }
        }

LABEL_48:
        if (v27)
        {
          v29 = *(a1 + 304);
          if (v29 > 299)
          {
            EvLog_nd("GLON_StUd:  Delay ImmUd ", 2, a3, v15 + 33, v29);
          }

          else
          {
            v42 = 0;
            *v43 = 0;
            *&v43[5] = 0;
            memset(&v43[16], 0, 64);
            v44 = 0u;
            v45 = 0u;
            v46 = 0;
            memset(v41, 0, 62);
            GLON_EphBin2Int(&a3[v23], v41, 0);
            GLON_EphInt2Real(v41, &v42);
            GLON_Calc_State_Table_Eph(v40, v39, v38, &v42, v19, (a1 + 304));
            if (*(a3[2035] + v15) == 1 && !GLON_Cross_Check_SVRS_vs_EE(v40, v39, v38, v19, a3 + v22))
            {
              *(a3[2041] + v15) = 1;
              *(v19 + 184) = 0;
              *(a3[2034] + v15) = 0;
              *(a3[2033] + v15) = 1;
            }

            else
            {
              *(v19 + 160) = v17;
              *(v19 + 164) = v36;
              *(v35 + v15) = 0;
            }
          }
        }

        else if (v28)
        {
          *v43 = 0;
          v42 = 0;
          memset(&v43[8], 0, 67);
          v41[0] = 0uLL;
          *(&v41[1] + 5) = 0;
          *&v41[1] = 0;
          *(&v41[1] + 14) = 0;
          BYTE6(v41[2]) = 0;
          GLON_AlmBin2Int(a3 + v21, v41);
          v42 = *&v41[0];
          *&v43[2] = WORD5(v41[0]);
          v30.i64[0] = SHIDWORD(v41[0]);
          v30.i64[1] = SLODWORD(v41[1]);
          *&v31.f64[0] = *&vcvtq_f64_s64(v30);
          v30.i64[0] = HIDWORD(v41[0]);
          v30.i64[1] = LODWORD(v41[1]);
          v31.f64[1] = vcvtq_f64_u64(*&v30).f64[1];
          v32 = vmulq_f64(v31, xmmword_2997616C0);
          v30.i64[0] = SDWORD1(v41[1]);
          v30.i64[1] = SDWORD2(v41[1]);
          v33 = vmulq_f64(vcvtq_f64_s64(v30), xmmword_2997616D0);
          *&v43[8] = v32;
          *&v43[24] = v33;
          v32.f64[0] = SBYTE12(v41[1]);
          LOWORD(v33.f64[0]) = HIWORD(v41[1]);
          v32.f64[1] = *&v33.f64[0];
          *&v43[40] = vmulq_f64(v32, xmmword_2997616E0);
          *&v43[56] = SLOWORD(v41[2]) * 0.0000958737992;
          *&v43[64] = vcvtd_n_f64_s32(SWORD1(v41[2]), 0x12uLL);
          *&v43[72] = WORD2(v41[2]);
          v43[74] = BYTE6(v41[2]);
          *v43 = *(a3 + v20);
          if (*v43)
          {
            GLON_RealAlm2RefState(v40, v39, v38, &v42, v19);
            *(v19 + 160) = v17;
            *(v19 + 164) = v36;
            *(v35 + v15) = 0;
          }
        }

        goto LABEL_57;
      }

      v28 = 0;
      if (v25 <= 7)
      {
        v27 = 0;
      }

      if (*(a3[1401] + v15))
      {
        goto LABEL_48;
      }
    }

LABEL_57:
    ++v15;
    v20 += 36;
    v21 += 36;
    v22 += 108;
    v23 += 8;
    v19 += 192;
  }

  while (v15 != 24);
  v34 = *MEMORY[0x29EDCA608];
}

double *GLON_Leap_Second_Updates(double *result, int *a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2 + 9216;
  v4 = a2[9863];
  if (v4 >= 1 && *(result + 5) == 1 && *result >= 1)
  {
    v5 = result[3];
    v6 = -0.5;
    if (v5 > 0.0)
    {
      v6 = 0.5;
    }

    v7 = v5 + v6;
    if (v7 <= 2147483650.0)
    {
      v8 = v7 >= -2147483650.0 ? v7 : 0x80000000;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v4 - 604800 * *(result + 8) - v8 >= 0xFF100F01)
    {
      v9 = 0;
      v10 = a2 + 2806;
      v11 = a2 + 3838;
      v12 = a3 + 28608;
      v13 = a3 + 6304;
      while (1)
      {
        v15 = *v10;
        v10 += 16;
        v14 = v15;
        if (v15 >= 1 && v14 <= v3[647] && *(v13 + 24) == 1)
        {
          v16 = 1;
        }

        else
        {
          if (*v11 < 1 || *v11 > v3[647] || *(v13 + 24) != 2)
          {
            goto LABEL_28;
          }

          v16 = 2;
        }

        if ((*(v12 + v9) & 1) == 0)
        {
          break;
        }

LABEL_28:
        ++v9;
        v11 += 9;
        v13 += 192;
        if (v9 == 24)
        {
          goto LABEL_29;
        }
      }

      v17 = *(v3 + 2592);
      v18 = *v13 - v17;
      *v13 = v18;
      if (v18 < 0)
      {
        v19 = -1;
        v20 = 604800;
      }

      else
      {
        if (v18 <= 0x93A80)
        {
LABEL_27:
          *(v12 + v9) = 1;
          result = EvLog_nd("GLON_Leap_Second_Updates:  Adj Ref Time, Slot %d  E/A %d  SP %d ", 3, a3, v9 + 1, v16, v17);
          goto LABEL_28;
        }

        v19 = 1;
        v20 = -604800;
      }

      *v13 = v20 + v18;
      *(v13 + 4) += v19;
      goto LABEL_27;
    }
  }

LABEL_29:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

double *GLON_State_Update(double *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v61 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 60) || *(a3 + 64) != 1)
  {
    goto LABEL_61;
  }

  v9 = result;
  v10 = 0;
  v11 = a6 + 6144;
  do
  {
    v12 = *(v11 + 184);
    if (v12 == 2)
    {
      v13 = a4[2036];
    }

    else
    {
      if (v12 != 1 || (*(a4[2034] + v10) & 1) != 0)
      {
        goto LABEL_11;
      }

      v13 = a4[2035];
    }

    if ((*(v13 + v10) & 1) == 0)
    {
      *(v11 + 172) = 0uLL;
      *(v11 + 144) = 0uLL;
      *(v11 + 160) = 0uLL;
      *(v11 + 112) = 0uLL;
      *(v11 + 128) = 0uLL;
      *(v11 + 80) = 0uLL;
      *(v11 + 96) = 0uLL;
      *(v11 + 48) = 0uLL;
      *(v11 + 64) = 0uLL;
      *(v11 + 16) = 0uLL;
      *(v11 + 32) = 0uLL;
      *v11 = 0uLL;
    }

LABEL_11:
    ++v10;
    v11 += 192;
  }

  while (v10 != 24);
  *(result + 152) = 0;
  GLON_Immediate_Updates(result, a3, a4, a6);
  v14 = *(a3 + 24) + 7.0;
  if (v14 <= 0.0)
  {
    v15 = -0.5;
  }

  else
  {
    v15 = 0.5;
  }

  v16 = v14 + v15;
  if (v16 >= -2147483650.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x80000000;
  }

  if (v16 <= 2147483650.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = *(a3 + 72) + 7.0;
  if (v19 <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  v21 = v19 + v20;
  if (v21 <= 2147483650.0)
  {
    if (v21 >= -2147483650.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0x80000000;
    }
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = 0;
  v24 = *(a3 + 16);
  v25 = *(a3 + 66);
  v26 = v18 > 604799;
  v27 = (a6 + 6312);
  v28 = 0x7FFFFFFF;
  v29 = 0xFFFFFFFFLL;
  v30 = 0xFFFFFFFFLL;
  v31 = 0x7FFFFFFFLL;
  while (2)
  {
    if (v27[4])
    {
      v32 = *(v27 + 2);
      if (v28 > v32)
      {
        v33 = *v27;
        goto LABEL_33;
      }

      if (v28 == v32)
      {
        v33 = *v27;
        if (v33 < v31)
        {
LABEL_33:
          v30 = (v23 + 32);
          v29 = v23;
          v31 = v33;
          v28 = *(v27 + 2);
        }
      }
    }

    v23 = (v23 + 1);
    v27 += 48;
    if (v23 != 24)
    {
      continue;
    }

    break;
  }

  if (v22 <= 86399)
  {
    v34 = v22;
  }

  else
  {
    v34 = v22 - 86400;
  }

  if (v18 <= 604799)
  {
    v35 = v18;
  }

  else
  {
    v35 = v18 - 604800;
  }

  if (v29 == -1)
  {
    goto LABEL_60;
  }

  if (v30 > 0x94 || v29 >= 0x18)
  {
    EvLog_nd("GLON_StUd:  Bad Glo Idx ", 2, v31, v30, v29);
    goto LABEL_60;
  }

  v36 = v29;
  if (*(a4[1401] + v29) != 1)
  {
    goto LABEL_58;
  }

  if (*(a4[2035] + v29) == 1 && (*(a4[2039] + v29) & 1) != 0)
  {
    goto LABEL_60;
  }

  v37 = (*(a3 + 68) + (v22 > 86399));
  v38 = v24 + v26;
  if (*(a4[2034] + v29) != 1)
  {
    if (*(a4[2036] + v29) == 1)
    {
      v43 = (*(a3 + 68) + (v22 > 86399));
      v53 = v24 + v26;
      v54[0] = 0uLL;
      *(&v54[1] + 5) = 0;
      *&v54[1] = 0;
      *(&v54[1] + 14) = 0;
      BYTE6(v54[2]) = 0;
      GLON_AlmBin2Int(a4 + 36 * v29 + 15352, v54);
      v55 = *&v54[0];
      v44.i64[0] = SHIDWORD(v54[0]);
      v44.i64[1] = SLODWORD(v54[1]);
      *&v45.f64[0] = *&vcvtq_f64_s64(v44);
      v44.i64[0] = HIDWORD(v54[0]);
      v44.i64[1] = LODWORD(v54[1]);
      v45.f64[1] = vcvtq_f64_u64(*&v44).f64[1];
      v44.i64[0] = SDWORD1(v54[1]);
      v44.i64[1] = SDWORD2(v54[1]);
      v46.f64[0] = SBYTE12(v54[1]);
      LOWORD(v47) = HIWORD(v54[1]);
      v46.f64[1] = v47;
      *&v56[2] = WORD5(v54[0]);
      *&v56[8] = vmulq_f64(v45, xmmword_2997616C0);
      *&v56[24] = vmulq_f64(vcvtq_f64_s64(v44), xmmword_2997616D0);
      *&v56[40] = vmulq_f64(v46, xmmword_2997616E0);
      *&v56[56] = SLOWORD(v54[2]) * 0.0000958737992;
      *&v57 = vcvtd_n_f64_s32(SWORD1(v54[2]), 0x12uLL);
      WORD4(v57) = WORD2(v54[2]);
      BYTE10(v57) = BYTE6(v54[2]);
      *v56 = *(a4 + 18 * v36 + 7680);
      if (!*v56)
      {
        goto LABEL_60;
      }

      v48 = a6 + 192 * v30;
      GLON_RealAlm2RefState(v25, v43, v34, &v55, v48);
      *(v48 + 160) = v35;
      *(v48 + 164) = v53;
      goto LABEL_59;
    }

LABEL_58:
    v49 = (a6 + 192 * v30);
    *(v49 + 172) = 0u;
    v49[9] = 0u;
    v49[10] = 0u;
    v49[7] = 0u;
    v49[8] = 0u;
    v49[5] = 0u;
    v49[6] = 0u;
    v49[3] = 0u;
    v49[4] = 0u;
    v49[1] = 0u;
    v49[2] = 0u;
    *v49 = 0u;
LABEL_59:
    *(a6 + v36 + 28608) = 0;
    goto LABEL_60;
  }

  v39 = *(v9 + 152);
  if (v39 > 299)
  {
    EvLog_nd("GLON_StUd:  Delay SchUd ", 2, v31, (v30 + 1), v39);
  }

  else
  {
    v52 = v38;
    v55 = 0;
    *v56 = 0;
    *&v56[5] = 0;
    memset(&v56[16], 0, 48);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    memset(v54, 0, 62);
    v40 = v37;
    GLON_EphBin2Int(&a4[8 * v29 + 1403], v54, 0);
    GLON_EphInt2Real(v54, &v55);
    v51 = v30;
    v41 = a6 + 192 * v30;
    GLON_Calc_State_Table_Eph(v25, v40, v34, &v55, v41, v9 + 152);
    if (*(a4[2035] + v36) != 1 || GLON_Cross_Check_SVRS_vs_EE(v25, v40, v34, v41, a4 + 108 * v36 + 12760))
    {
      v42 = a6 + 192 * v51;
      *(v42 + 160) = v35;
      *(v42 + 164) = v52;
      goto LABEL_59;
    }

    *(a4[2041] + v36) = 1;
    *(a6 + 192 * v51 + 184) = 0;
    *(a4[2034] + v36) = 0;
    *(a4[2033] + v36) = 1;
  }

LABEL_60:
  result = GLON_Leap_Second_Updates(a3, a4, a6);
LABEL_61:
  v50 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL GLON_Cross_Check_SVRS_vs_EE(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v20 = 0.0;
  API_Get_UTC_Cor(1, &v20);
  v19 = 0;
  v18 = 0.0;
  v17 = 0;
  Glon_To_GPS_Time(a1, a2, a3, v20, &v17, &v19, &v18);
  v10 = v19 + (v17 << 10);
  v11 = -0.5;
  if (v18 > 0.0)
  {
    v11 = 0.5;
  }

  v12 = v18 + v11;
  if (v18 + v11 <= 2147483650.0)
  {
    if (v12 >= -2147483650.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x80000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFF;
  }

  memset(v23, 0, 28);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  Get_GPS_Kep_Ephemeris(*(a4 + 176), *(a4 + 180), a5, v23);
  v14 = Kep_Check_Ephemeris(v10, v13, v23);
  if (ST_Check_Eph_Kep_Err("GLON_Cross_Check_SVRS_vs_EE", v14, v23))
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    Kep_Calc_SV_Ref_State(1, v10, v13, v23, v21);
    result = ST_Cross_Check_SVRS_vs_SVRS(a4, v21);
  }

  else
  {
    result = 1;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

const char *Hal11_GetStackDumpString(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  if (v2 > 6146)
  {
    if (v2 <= 32769)
    {
      if (v2 > 11263)
      {
        if (v2 > 13311)
        {
          if (v2 == 13312)
          {
            result = "Misaligned_Data_Access";
            goto LABEL_82;
          }

          if (v2 == 32769)
          {
            result = "Read_AUX_Bus_BadAddress";
            goto LABEL_82;
          }
        }

        else
        {
          if (v2 == 11264)
          {
            result = "Divide_Zero";
            goto LABEL_82;
          }

          if (v2 == 12288)
          {
            result = "Data_Cache_Consistency";
            goto LABEL_82;
          }
        }
      }

      else if (v2 > 7168)
      {
        if (v2 == 7169)
        {
          result = "Disabled_Extension";
          goto LABEL_82;
        }

        if (v2 == 7170)
        {
          result = "Action_Point_Hit_Inst";
          goto LABEL_82;
        }
      }

      else
      {
        if (v2 == 6147)
        {
          result = "Data_TLB_Protection_Violation_OR_Mem_RMW";
          goto LABEL_82;
        }

        if (v2 == 7168)
        {
          result = "Privilege_Violation";
          goto LABEL_82;
        }
      }
    }

    else if (v2 <= 32779)
    {
      if (v2 > 32776)
      {
        if (v2 == 32777)
        {
          result = "Write_AUX_Bus_BadAddress";
          goto LABEL_82;
        }

        if (v2 == 32778)
        {
          result = "Write_Security_Breach";
          goto LABEL_82;
        }
      }

      else
      {
        if (v2 == 32770)
        {
          result = "Read_Security_Breach";
          goto LABEL_82;
        }

        if (v2 == 32772)
        {
          result = "Read_AUX_BusTimeout";
          goto LABEL_82;
        }
      }
    }

    else if (v2 <= 61446)
    {
      if (v2 == 32780)
      {
        result = "Write_AUX_BusTimeout";
        goto LABEL_82;
      }

      if (v2 == 61446)
      {
        result = "FP_Invalid";
        goto LABEL_82;
      }
    }

    else
    {
      switch(v2)
      {
        case 61447:
          result = "FP_Divide_Zero";
          goto LABEL_82;
        case 61448:
          result = "FP_Overflow";
          goto LABEL_82;
        case 61449:
          result = "FP_QNaN";
          goto LABEL_82;
      }
    }

    goto LABEL_81;
  }

  if (v2 > 3076)
  {
    if (v2 <= 5121)
    {
      if (v2 > 4095)
      {
        if (v2 == 4096)
        {
          result = "Inst_Fetch_TLB_Miss";
          goto LABEL_82;
        }

        if (v2 == 5121)
        {
          result = "Data_TLCB_LD_LLOCK";
          goto LABEL_82;
        }
      }

      else
      {
        if (v2 == 3077)
        {
          result = "Data_Flush_Mem";
          goto LABEL_82;
        }

        if (v2 == 3078)
        {
          result = "Inst_Fetch_Mem";
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (v2 > 6143)
      {
        if (v2 == 6144)
        {
          result = "Inst_Fetch_Protection_Violation";
        }

        else if (v2 == 6145)
        {
          result = "Mem_Read";
        }

        else
        {
          result = "Data_TLB_Violation_OR_Mem_Write";
        }

        goto LABEL_82;
      }

      if (v2 == 5122)
      {
        result = "Data_TLCB_ST_SCOND";
        goto LABEL_82;
      }

      if (v2 == 5123)
      {
        result = "Data_TLCB_EX";
        goto LABEL_82;
      }
    }

LABEL_81:
    result = "UnknownExcp";
    goto LABEL_82;
  }

  if (v2 <= 3072)
  {
    if (v2 > 2048)
    {
      if (v2 == 2049)
      {
        result = "Illegal_Inst_Seq";
        goto LABEL_82;
      }

      if (v2 == 3072)
      {
        result = "Double_Fault";
        goto LABEL_82;
      }
    }

    else
    {
      if (v2 == 1024)
      {
        result = "Extern_Mem";
        goto LABEL_82;
      }

      if (v2 == 2048)
      {
        result = "Illegal_Inst";
        goto LABEL_82;
      }
    }

    goto LABEL_81;
  }

  if (v2 > 3074)
  {
    if (v2 == 3075)
    {
      result = "Fatal_Cache";
    }

    else
    {
      result = "Kernel_data_Mem";
    }
  }

  else if (v2 == 3073)
  {
    result = "Overlapping_TLB_Entries";
  }

  else
  {
    result = "Fatal_TLB";
  }

LABEL_82:
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal11_HandleEvent(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a1 <= 77)
  {
    if (a1 == 75)
    {
      goto LABEL_82;
    }

    if (a1 == 76)
    {
      Hal26_HandleLowPowerMsg(a2, a3);
      goto LABEL_82;
    }

    goto LABEL_19;
  }

  if (a1 != 78)
  {
    if (a1 == 87)
    {
      if (a3 != 16)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
        {
          goto LABEL_82;
        }

        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx StackDump Rsp Len,%hu\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 87, "Hal11_HandleEvent", 783, a3);
        v8 = 1;
        v9 = v18;
        v10 = 2;
LABEL_40:
        LbsOsaTrace_WriteLog(0xDu, __str, v9, v10, 1);
        goto LABEL_83;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        goto LABEL_82;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v42 = a2[8];
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Status,%hhu\n");
LABEL_18:
      v8 = 1;
      v9 = v7;
      v10 = 4;
      goto LABEL_40;
    }

    if (a1 == 84)
    {
      if (!a2)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
          goto LABEL_39;
        }

LABEL_82:
        v8 = 1;
        goto LABEL_83;
      }

      if (!a3)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
          goto LABEL_39;
        }

        goto LABEL_82;
      }

      if (a3 <= 0xB)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v41 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len,%u\n", v41);
LABEL_39:
          v8 = 1;
          v9 = v6;
          v10 = 0;
          goto LABEL_40;
        }

        goto LABEL_82;
      }

      v19 = a2[8];
      if (v19 > 0x4C)
      {
        if (a2[8] > 0x56u)
        {
          if (v19 == 87)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v34 = mach_continuous_time();
              v35 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MECpu\n", (*&g_MacClockTicksToMsRelation * v34), "HAL", 69, "Hal11_HandleStatusMsg", 1300);
              LbsOsaTrace_WriteLog(0xDu, __str, v35, 0, 1);
            }

            Hal_CommsItfUpdateStatus(0);
            v25 = 2;
            goto LABEL_80;
          }

          if (v19 == 119)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v28 = mach_continuous_time();
              v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CpCpu\n", (*&g_MacClockTicksToMsRelation * v28), "HAL", 69, "Hal11_HandleStatusMsg", 1300);
              LbsOsaTrace_WriteLog(0xDu, __str, v29, 0, 1);
            }

            Hal_CommsItfUpdateStatus(0);
            v25 = 3;
            goto LABEL_80;
          }
        }

        else
        {
          if (v19 == 77)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v30 = mach_continuous_time();
              v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: MESlp Event\n", (*&g_MacClockTicksToMsRelation * v30), "HAL", 73, "Hal11_HandleStatusMsg");
              LbsOsaTrace_WriteLog(0xDu, __str, v31, 4, 1);
            }

            v25 = 8;
            goto LABEL_80;
          }

          if (v19 == 84)
          {
            if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v23 = mach_continuous_time();
              v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 69, "Hal11_HandleStatusMsg", 1320);
              LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
            }

            v25 = 9;
            goto LABEL_80;
          }
        }

        goto LABEL_78;
      }

      if (a2[8] > 0x46u)
      {
        if (v19 == 71)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v32 = mach_continuous_time();
            v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v32), "HAL", 69, "Hal11_HandleStatusMsg", 1302);
            LbsOsaTrace_WriteLog(0xDu, __str, v33, 0, 1);
          }

          Hal_CommsItfUpdateStatus(0);
          v25 = 4;
          goto LABEL_80;
        }

        if (v19 == 72)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HWErr\n", (*&g_MacClockTicksToMsRelation * v26), "HAL", 69, "Hal11_HandleStatusMsg", 1302);
            LbsOsaTrace_WriteLog(0xDu, __str, v27, 0, 1);
          }

          Hal_CommsItfUpdateStatus(0);
          v25 = 5;
          goto LABEL_80;
        }

LABEL_78:
        IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
        v25 = 0;
        if (IsLoggingAllowed)
        {
          bzero(__str, 0x410uLL);
          v37 = mach_continuous_time();
          v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx msgId,%c,len,%u\n", (*&g_MacClockTicksToMsRelation * v37), "HAL", 69, "Hal11_HandleStatusMsg", 515, a2[8], a3);
          LbsOsaTrace_WriteLog(0xDu, __str, v38, 0, 1);
          v25 = 0;
        }

LABEL_80:
        if (g_HalCallbacks)
        {
          g_HalCallbacks(v25);
        }

        goto LABEL_82;
      }

      if (v19 != 32)
      {
        if (v19 == 65)
        {
          if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v20 = mach_continuous_time();
            v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CalibComplete\n", (*&g_MacClockTicksToMsRelation * v20), "HAL", 73, "Hal11_HandleCalibCompleteStatus");
            LbsOsaTrace_WriteLog(0xDu, __str, v21, 4, 1);
          }

          if (!gnssOsa_SemRelease(g_HandleAckSem) && LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
          {
            bzero(__str, 0x410uLL);
            v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            v43 = *__error();
            v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v22);
            goto LABEL_39;
          }

          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        goto LABEL_82;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HWStatusOK\n");
      goto LABEL_18;
    }

LABEL_19:
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx MId,%u\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 68, "Hal11_HandleEvent", 770, a1);
      v13 = 5;
LABEL_31:
      LbsOsaTrace_WriteLog(0xDu, __str, v12, v13, 1);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (dword_2A191DCD0 == 2472)
  {
    HAL34_SunshineStackDumpHandler(a2, a3);
    goto LABEL_82;
  }

  if (dword_2A191DCD4 == 4)
  {
    v14 = dword_2A191DCD0 == 3431 && xmmword_2A191DCC0 == 2;
    if (v14 && DWORD1(xmmword_2A191DCC0) == 1)
    {
      HAL24_BrightStackDumpHandler(a2, a3);
      goto LABEL_82;
    }
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 87, "Hal11_StackDumpHandler", 264);
    v13 = 2;
    goto LABEL_31;
  }

LABEL_32:
  v8 = 0;
LABEL_83:
  v39 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t Hal11_WaitCalibComplete(void)
{
  v7 = *MEMORY[0x29EDCA608];
  result = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1388u);
  if (result)
  {
    if (result == 1)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v1 = mach_continuous_time();
        v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal11_WaitCalibComplete", 1543);
        v3 = 0;
LABEL_7:
        LbsOsaTrace_WriteLog(0xDu, __str, v2, v3, 1);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v2 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal11_WaitCalibComplete", 1543);
      v3 = 2;
      goto LABEL_7;
    }

    result = 4294967287;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Connect_Ind_In(int a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a2 == 7)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx SSL Error Handle,%u\n", v10);
LABEL_9:
    v5 = v7;
    v6 = 0;
    goto LABEL_10;
  }

  if (a2 != 6)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_11;
    }

    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u,Status,%u\n", v8);
    goto LABEL_9;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Connect success for ReqId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 65, "Trace_GN_SUPL_Connect_Ind_In", a1);
    v6 = 1;
LABEL_10:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v5, v6, 1);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void Trace_GN_SUPL_Push_Delivery_In(unsigned int *a1, unsigned int a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!a1 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "Trace_GN_SUPL_Push_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
  }

  if (a3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = (*&g_MacClockTicksToMsRelation * v8);
      LcsUtils::GetInstance(v8);
      v10 = mach_continuous_time();
      std::to_string(&v17, (*&g_MacClockTicksToMsRelation * v10));
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v17;
      }

      else
      {
        v11 = v17.__r_.__value_.__r.__words[0];
      }

      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_Push_Delivery_In time stamp,%s,PDU_Size,%u\n", v9, "SPL", 77, "Trace_GN_SUPL_Push_Delivery_In", v11, a2);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v12, 3, 1);
    }

    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v14 = mach_continuous_time();
    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx PDU\n", (*&g_MacClockTicksToMsRelation * v14), "SPL", 69, "Trace_GN_SUPL_Push_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v15, 0, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t Trace_GN_SUPL_AidRequest_In(int a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "Trace_GN_SUPL_AidRequest_In", a1);
    LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
  }

  result = Trace_GN_SUPL_AidReqData(a2);
  if (a3)
  {
    result = Trace_GN_SUPL_Pos_data(a3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_AidReqData(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_66;
    }

    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Aid Req\n", (*&g_MacClockTicksToMsRelation * v23), "SPL", 69, "Trace_GN_SUPL_AidReqData", 513);
    v25 = 0;
LABEL_65:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v24, v25, 1);
    goto LABEL_66;
  }

  if (*(a1 + 8))
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = *(a1 + 8);
    v4 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v3[5];
    v10 = v3[6];
    v11 = v3[7] == 0;
    v12 = 70;
    if (v11)
    {
      v13 = 70;
    }

    else
    {
      v13 = 84;
    }

    if (v10)
    {
      v14 = 84;
    }

    else
    {
      v14 = 70;
    }

    if (v9)
    {
      v15 = 84;
    }

    else
    {
      v15 = 70;
    }

    if (v8)
    {
      v16 = 84;
    }

    else
    {
      v16 = 70;
    }

    if (v7)
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    if (v6)
    {
      v18 = 84;
    }

    else
    {
      v18 = 70;
    }

    if (v5)
    {
      v19 = 84;
    }

    else
    {
      v19 = 70;
    }

    if (v4)
    {
      v12 = 84;
    }

    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RefTime,%c,RefPos,%c,Iono,%c,Agps,%c,Aglon,%c,Aqzss,%c,Asbas,%c,Abds,%c\n", v2, "SPL", 73, "Trace_GN_SUPL_AidReqData", v12, v19, v18, v17, v16, v15, v14, v13);
    v21 = 4;
  }

  else
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0))
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v26 = mach_continuous_time();
    v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Generic Assistance data is NULL\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 87, "Trace_GN_SUPL_AidReqData", 515);
    v21 = 2;
  }

  LbsOsaTrace_WriteLog(0x12u, __str, v20, v21, 1);
LABEL_33:
  v27 = *(a1 + 16);
  if (!v27)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (!result)
    {
      goto LABEL_66;
    }

    bzero(__str, 0x410uLL);
    v40 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GPS Assistance Requirements List is NULL\n", (*&g_MacClockTicksToMsRelation * v40), "SPL", 73, "Trace_GN_SUPL_AidReqData");
    v25 = 4;
    goto LABEL_65;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v28 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (v27[10])
    {
      v29 = 84;
    }

    else
    {
      v29 = 70;
    }

    if (v27[9])
    {
      v30 = 84;
    }

    else
    {
      v30 = 70;
    }

    if (v27[8])
    {
      v31 = 84;
    }

    else
    {
      v31 = 70;
    }

    if (v27[7])
    {
      v32 = 84;
    }

    else
    {
      v32 = 70;
    }

    if (v27[6])
    {
      v33 = 84;
    }

    else
    {
      v33 = 70;
    }

    if (v27[5])
    {
      v34 = 84;
    }

    else
    {
      v34 = 70;
    }

    if (v27[4])
    {
      v35 = 84;
    }

    else
    {
      v35 = 70;
    }

    v36 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Constellation,%s,Utc,%c,Rti,%c,Alm,%c,Eph,%c,RefMeas,%c,DataBits,%c,Aux,%c\n", v28, "SPL", 65, "Trace_GN_SUPL_AidReqData_AssistReq", "GPS", v35, v34, v33, v32, v31, v30, v29);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v36, 1, 1);
  }

  if (v27[20])
  {
    v37 = 0;
    do
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v38 = mach_continuous_time();
        v39 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: satid,%u,IODE,%u\n", (*&g_MacClockTicksToMsRelation * v38), "SPL", 73, "Trace_GN_SUPL_AidReqData_AssistReq", v27[v37 + 21], *&v27[2 * v37 + 86]);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v39, 4, 1);
      }

      ++v37;
    }

    while (v37 < v27[20]);
  }

LABEL_66:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Pos_data(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FixStat,%u,FixType,%u,ShapeType,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 4), *(a1 + 8), *(a1 + 12));
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Sign of Lat,%u,lat,%u,long,%d,Alt,%u,UnMjraxis,%u,UnMnraxis,%u,Bearing Uncer,%u\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 30), *(a1 + 31), *(a1 + 32));
      LbsOsaTrace_WriteLog(0x12u, __str, v5, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Dr of Al,%u,Alt Uncer,%u,Pos Conf,%u,Incl Angle,%u,offset Angle,%u,Inr Rad,%u\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 36), *(a1 + 40), *(a1 + 41), *(a1 + 42), *(a1 + 43), *(a1 + 44));
      LbsOsaTrace_WriteLog(0x12u, __str, v7, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Year,%u,Month,%u,Days,%u,Hr,%u,Min,%u,Sec,%u,MillSec,%u\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 73, "Trace_GN_SUPL_Pos_data", *(a1 + 52), *(a1 + 54), *(a1 + 56), *(a1 + 58), *(a1 + 60), *(a1 + 62), *(a1 + 64));
      v11 = 4;
LABEL_12:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v10, v11, 1);
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Last Known Position\n", (*&g_MacClockTicksToMsRelation * v12), "SPL", 69, "Trace_GN_SUPL_Pos_data", 513);
      v11 = 0;
      goto LABEL_12;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void Trace_GN_SUPL_PDU_Delivery_In(int a1, unsigned int a2, unsigned __int8 *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = (*&g_MacClockTicksToMsRelation * v7);
      LcsUtils::GetInstance(v7);
      v9 = mach_continuous_time();
      std::to_string(&v16, (*&g_MacClockTicksToMsRelation * v9));
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v16;
      }

      else
      {
        v10 = v16.__r_.__value_.__r.__words[0];
      }

      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_In time stamp,%s,PDU_Size,%u,Handle,%u\n", v8, "SPL", 77, "Trace_GN_SUPL_PDU_Delivery_In", v10, a2, a1);
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v11, 3, 1);
    }

    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Handle,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 69, "Trace_GN_SUPL_PDU_Delivery_In", 513, a1);
    LbsOsaTrace_WriteLog(0x12u, __str, v14, 0, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t Trace_GN_SUPL_LocationId(uint64_t a1)
{
  v81 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_99;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Location ID\n");
    goto LABEL_82;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: CellInfoStatus,%u,CellInfoType,%u,SimId,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 73, "Trace_GN_SUPL_LocationId", *a1, *(a1 + 4), *(a1 + 8));
    LbsOsaTrace_WriteLog(0x12u, __str, v3, 4, 1);
  }

  v4 = *(a1 + 4);
  v78 = a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v30 = mach_continuous_time();
        v31 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: refMCC,%u,refMNC,%u,refUC,%u,refLAC,%u,MeasResCount,%u,cellParamsID,%u\n", (*&g_MacClockTicksToMsRelation * v30), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 20), *(a1 + 16), *(a1 + 28), *(a1 + 26));
        LbsOsaTrace_WriteLog(0x12u, __str, v31, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TDD uarfcn_Nt,%u\n", (*&g_MacClockTicksToMsRelation * v32), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 24));
        LbsOsaTrace_WriteLog(0x12u, __str, v33, 4, 1);
      }

      if (*(a1 + 28))
      {
        v34 = 0;
        v76 = a1 + 32;
        v35 = a1 + 45;
        do
        {
          v36 = (v76 + 772 * v34);
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v37 = mach_continuous_time();
            v38 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,RSSI,%u,numberOfCells,%u\n", (*&g_MacClockTicksToMsRelation * v37), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, *(v36 + 2), *(v36 + 3));
            LbsOsaTrace_WriteLog(0x12u, __str, v38, 4, 1);
          }

          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v39 = mach_continuous_time();
            v40 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,TDD uarfcn_Nt,%u\n", (*&g_MacClockTicksToMsRelation * v39), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, *v36);
            LbsOsaTrace_WriteLog(0x12u, __str, v40, 4, 1);
          }

          v77 = v35;
          if (*(v36 + 3))
          {
            v41 = 0;
            do
            {
              v42 = &v36[12 * v41 + 2];
              if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v43 = mach_continuous_time();
                v44 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu,cellno,%zu,cellIdentity,%u\n", (*&g_MacClockTicksToMsRelation * v43), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, *v42);
                LbsOsaTrace_WriteLog(0x12u, __str, v44, 4, 1);
              }

              if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v45 = mach_continuous_time();
                v46 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu TDD cellParametersID,%u,TGSN,%u,pathloss,%u,RSCP,%u,timeSlotCount,%u\n", (*&g_MacClockTicksToMsRelation * v45), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, *(v42 + 4), *(v42 + 5), *(v42 + 7), *(v42 + 6), *(v42 + 8));
                LbsOsaTrace_WriteLog(0x12u, __str, v46, 4, 1);
              }

              if (*(v42 + 8))
              {
                v47 = 0;
                do
                {
                  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
                  {
                    bzero(__str, 0x410uLL);
                    v48 = mach_continuous_time();
                    v49 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,timeslotindex,%zu,timeSlotISCP,%u\n", (*&g_MacClockTicksToMsRelation * v48), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41, v47, *(v35 + v47));
                    LbsOsaTrace_WriteLog(0x12u, __str, v49, 4, 1);
                  }

                  ++v47;
                }

                while (v47 < *(v42 + 8));
              }

              else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
              {
                bzero(__str, 0x410uLL);
                v50 = mach_continuous_time();
                v51 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu TDD No Timeslot information\n", (*&g_MacClockTicksToMsRelation * v50), "SPL", 73, "Trace_GN_SUPL_LocationId", v34, v41);
                LbsOsaTrace_WriteLog(0x12u, __str, v51, 4, 1);
              }

              ++v41;
              v35 += 24;
            }

            while (v41 < *(v36 + 3));
          }

          else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v52 = mach_continuous_time();
            v53 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu No list of cells\n", (*&g_MacClockTicksToMsRelation * v52), "SPL", 73, "Trace_GN_SUPL_LocationId", v34);
            LbsOsaTrace_WriteLog(0x12u, __str, v53, 4, 1);
          }

          ++v34;
          v35 = v77 + 772;
        }

        while (v34 < *(v78 + 28));
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v63 = mach_continuous_time();
        v64 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell  no Neighbor cell information available\n", (*&g_MacClockTicksToMsRelation * v63), "SPL", 73, "Trace_GN_SUPL_LocationId");
        LbsOsaTrace_WriteLog(0x12u, __str, v64, 4, 1);
      }

      if (*(v78 + 6208))
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
        if (!result)
        {
          goto LABEL_99;
        }

        bzero(__str, 0x410uLL);
        v65 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v73 = *(v78 + 6216);
        v75 = *(v78 + 6212);
        v71 = *(v78 + 6210);
        v66 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaTimingAdvance tA,%u,tARes,%u,chipRate,%u\n", v65);
        goto LABEL_97;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 2, 0, 0);
      if (!result)
      {
        goto LABEL_99;
      }

      bzero(__str, 0x410uLL);
      v67 = mach_continuous_time();
      v61 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Timing Advance\n", (*&g_MacClockTicksToMsRelation * v67), "SPL", 87, "Trace_GN_SUPL_LocationId", 770);
      v62 = 2;
LABEL_98:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v61, v62, 1);
      goto LABEL_99;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
        {
          bzero(__str, 0x410uLL);
          v5 = mach_continuous_time();
          v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: lteCell mcc,%u,mnc,%u,cellIdentity,%u,TrackingAreaCode,%u,PhysicalCellID,%u,tA,%u,RSRP,%u,RSRQ,%u,EARFCN,%u,NMRCount,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 36), *(a1 + 28), *(a1 + 29), *(a1 + 32), *(a1 + 38));
          LbsOsaTrace_WriteLog(0x12u, __str, v6, 4, 1);
        }

        if (*(a1 + 38))
        {
          v7 = 0;
          v8 = (a1 + 56);
          do
          {
            result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
            if (result)
            {
              bzero(__str, 0x410uLL);
              v10 = mach_continuous_time();
              v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: lteCell neighbor,%zu,cgiInfo mcc,%u,mnc,%u,cellIdentity,%u,physicalCellId,%u,EARFCN,%u,RSRP,%u,RSRQ,%u\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 73, "Trace_GN_SUPL_LocationId", v7, *(v8 - 8), *(v8 - 7), *(v8 - 3), *(v8 - 4), *v8, *(v8 - 6), *(v8 - 5));
              result = LbsOsaTrace_WriteLog(0x12u, __str, v11, 4, 1);
            }

            ++v7;
            v8 += 5;
          }

          while (v7 < *(a1 + 38));
          goto LABEL_99;
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
        if (!result)
        {
          goto LABEL_99;
        }

        bzero(__str, 0x410uLL);
        v69 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        v54 = "%10u %s%c %s: No neighbor cells for LTE\n";
        goto LABEL_96;
      }

      goto LABEL_80;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
    if (!result)
    {
      goto LABEL_99;
    }

    bzero(__str, 0x410uLL);
    v69 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v54 = "%10u %s%c %s: cdmaCell not supported\n";
LABEL_96:
    v66 = snprintf(__str, 0x40FuLL, v54, v69, "SPL", 73, "Trace_GN_SUPL_LocationId", v70, v72, v74);
LABEL_97:
    v61 = v66;
    v62 = 4;
    goto LABEL_98;
  }

  if (v4 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v55 = mach_continuous_time();
      v56 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GSM Cell refMCC,%u,refMNC,%u,refLAC,%u,refCI,%u,tA,%u,numberOfNeighbors,%u\n", (*&g_MacClockTicksToMsRelation * v55), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 26));
      LbsOsaTrace_WriteLog(0x12u, __str, v56, 4, 1);
    }

    if (!*(a1 + 26))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (!result)
      {
        goto LABEL_99;
      }

      bzero(__str, 0x410uLL);
      v69 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v54 = "%10u %s%c %s: No GSM neigbour list\n";
      goto LABEL_96;
    }

    v57 = 0;
    v58 = (a1 + 31);
    do
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v59 = mach_continuous_time();
        v60 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: gsmCell NMR Element,%zu,aRFCN,%u,bSIC,%u,rxLev,%u\n", (*&g_MacClockTicksToMsRelation * v59), "SPL", 73, "Trace_GN_SUPL_LocationId", v57, *(v58 - 3), *(v58 - 1), *v58);
        result = LbsOsaTrace_WriteLog(0x12u, __str, v60, 4, 1);
      }

      ++v57;
      v58 += 4;
    }

    while (v57 < *(a1 + 26));
  }

  else
  {
    if (v4 != 2)
    {
LABEL_80:
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_99;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx CellInfo Type\n");
LABEL_82:
      v61 = v12;
      v62 = 0;
      goto LABEL_98;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA Cell refMCC,%u,refMNC,%u,refUC,%u,refLAC,%u,PSC,%u,MeasResCount,%u,UarfcnDl,%u,UarfcnUl,%u\n", (*&g_MacClockTicksToMsRelation * v13), "SPL", 73, "Trace_GN_SUPL_LocationId", *(a1 + 12), *(a1 + 14), *(a1 + 20), *(a1 + 16), *(a1 + 28), *(a1 + 30), *(a1 + 24), *(a1 + 26));
      LbsOsaTrace_WriteLog(0x12u, __str, v14, 4, 1);
    }

    if (!*(a1 + 30))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
      if (!result)
      {
        goto LABEL_99;
      }

      bzero(__str, 0x410uLL);
      v69 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v54 = "%10u %s%c %s: wcdmaCell: no Neighbor cell information available\n";
      goto LABEL_96;
    }

    v15 = 0;
    v79 = a1 + 32;
    v16 = (a1 + 48);
    do
    {
      v17 = (v79 + 392 * v15);
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: WCDMA neighbor,%zu,RSSI,%u,numberOfCells,%u\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, *(v17 + 4), *(v17 + 5));
        LbsOsaTrace_WriteLog(0x12u, __str, v19, 4, 1);
      }

      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
      {
        bzero(__str, 0x410uLL);
        v20 = mach_continuous_time();
        v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,uarfcn_UL,%u,uarfcn_DL,%u\n", (*&g_MacClockTicksToMsRelation * v20), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v17[1], *v17);
        LbsOsaTrace_WriteLog(0x12u, __str, v21, 4, 1);
      }

      if (*(v17 + 5))
      {
        v22 = 0;
        v23 = v16;
        do
        {
          if (LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1))
          {
            bzero(__str, 0x410uLL);
            v24 = mach_continuous_time();
            v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,cellIdentity,%u\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v22, *(v23 - 2));
            LbsOsaTrace_WriteLog(0x12u, __str, v25, 4, 1);
          }

          result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
          if (result)
          {
            bzero(__str, 0x410uLL);
            v26 = mach_continuous_time();
            v27 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: neighbor,%zu,cellno,%zu,PrimaryScramblingCode,%u,cpich_Ec_N0,%u,RSCP,%u,pathloss,%u\n", (*&g_MacClockTicksToMsRelation * v26), "SPL", 73, "Trace_GN_SUPL_LocationId", v15, v22, *(v23 - 2), *(v23 - 2), *(v23 - 1), *v23);
            result = LbsOsaTrace_WriteLog(0x12u, __str, v27, 4, 1);
          }

          ++v22;
          v23 += 12;
        }

        while (v22 < *(v17 + 5));
      }

      else
      {
        result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v28 = mach_continuous_time();
          v29 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: wcdmaCell neighbor,%zu No list of cells\n", (*&g_MacClockTicksToMsRelation * v28), "SPL", 73, "Trace_GN_SUPL_LocationId", v15);
          result = LbsOsaTrace_WriteLog(0x12u, __str, v29, 4, 1);
        }
      }

      ++v15;
      v16 += 392;
    }

    while (v15 < *(v78 + 30));
  }

LABEL_99:
  v68 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_TimerExpiry_In(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerId,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_TimerExpiry_In", a1, a2);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Trace_GN_SUPL_PPDU_Delivery_In(int a1, unsigned int a2, const unsigned __int8 *a3, int a4, int a5, int a6, int a7)
{
  v22 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,PDU Size,%u,PDU Content Type,%u,Pos Protocol Type,%u,EncStatus,%u, isLastPos, %u\n", (*&g_MacClockTicksToMsRelation * v15), "SPL", 65, "Trace_GN_SUPL_PPDU_Delivery_In", a1, a2, a4, a5, a6, a7);
    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v16, 1, 1);
  }

  if (a3)
  {
    Instance = LcsUtils::GetInstance(IsLoggingAllowed);
    LcsUtils::TraceBuffer(Instance, a3, a2);
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "SPL", 69, "Trace_GN_SUPL_PPDU_Delivery_In", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v19, 0, 1);
  }

  v20 = *MEMORY[0x29EDCA608];
}

uint64_t Trace_GN_SUPL_Set_Config(unsigned __int16 *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: UT1,%u,UT2,%u,UT3,%u,PrefPosMthd,%u\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 65, "Trace_GN_SUPL_Set_Config", *a1, a1[1], a1[2], *(a1 + 2));
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 1, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      v6 = 70;
      if (*(a1 + 14))
      {
        v6 = 84;
      }

      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: sessionTimeout,%u,DisableMSA,%c\n", v5, "SPL", 65, "Trace_GN_SUPL_Set_Config", a1[6], v6);
      v8 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "Trace_GN_SUPL_Set_Config", 513);
      v8 = 0;
LABEL_10:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v7, v8, 1);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Extd_Set_Config(_BYTE *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (a1[2])
      {
        v4 = 84;
      }

      else
      {
        v4 = 70;
      }

      if (a1[1])
      {
        v5 = 84;
      }

      else
      {
        v5 = 70;
      }

      if (*a1)
      {
        v6 = 84;
      }

      else
      {
        v6 = 70;
      }

      if (a1[7])
      {
        v7 = 84;
      }

      else
      {
        v7 = 70;
      }

      if (a1[6])
      {
        v8 = 84;
      }

      else
      {
        v8 = 70;
      }

      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LPP Support,%c,SHA1 Overeride,%c,MSA,%c,MSB,%c,AUTO,%c\n", v3, "SPL", 65, "Trace_GN_SUPL_Extd_Set_Config", v8, v7, v6, v5, v4);
      v10 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "Trace_GN_SUPL_Extd_Set_Config", 513);
      v10 = 0;
LABEL_21:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v9, v10, 1);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_gnsDC_SlpInfo(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_17:
    v10 = v6;
    v11 = 0;
LABEL_21:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v10, v11, 1);
    goto LABEL_22;
  }

  v2 = *(a1 + 260);
  if (v2 <= 1)
  {
    if (!v2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_22;
      }

      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v17 = *(a1 + 260);
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Address Type,%u\n", (*&g_MacClockTicksToMsRelation * v9));
      goto LABEL_17;
    }

    if (v2 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v14 = *(a1 + 266);
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v4));
LABEL_20:
        v10 = v5;
        v11 = 1;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    goto LABEL_13;
  }

  if (v2 == 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v18 = *(a1 + 266);
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v12));
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v2 != 3)
  {
LABEL_13:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v16 = *(a1 + 260);
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Invalid Address Type,%u\n", (*&g_MacClockTicksToMsRelation * v8));
    goto LABEL_17;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v15 = *(a1 + 266);
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v7));
    goto LABEL_20;
  }

LABEL_22:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_SetIdParams(uint64_t result)
{
  v9 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    v2 = *(result + 23);
    if (v2 < 0)
    {
      v2 = *(result + 8);
    }

    if (v2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 1);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
        if (*(v1 + 23) < 0)
        {
          v1 = *v1;
        }

        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IMSI,%s\n", v3, "SPL", 73, "Trace_GN_SUPL_SetIdParams", v1);
        v5 = 4;
        goto LABEL_11;
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "Trace_GN_SUPL_SetIdParams", 513);
      v5 = 0;
LABEL_11:
      result = LbsOsaTrace_WriteLog(0x12u, __str, v4, v5, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Abort(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u, AbortType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_Abort", a1, a2);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_AidRequest_Out(int a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = (*&g_MacClockTicksToMsRelation * v9);
    LcsUtils::GetInstance(v9);
    v11 = mach_continuous_time();
    std::to_string(&v15, (*&g_MacClockTicksToMsRelation * v11));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,Handle,%u,Timeout,%u,PosMethod%u,AllowedGnssMask,%u\n", v10, "SPL", 65, "Trace_GN_SUPL_AidRequest_Out", v12, a1, a2, a3, a4);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    result = LbsOsaTrace_WriteLog(0x12u, __str, v13, 1, 1);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Connect_Req_Parms(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 260);
  if (v2 <= 1)
  {
    if (!v2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_19;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IP Type is DFLT\n");
      goto LABEL_14;
    }

    if (v2 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v4 = mach_continuous_time();
        v13 = *(a1 + 266);
        v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v4));
LABEL_17:
        v9 = v5;
        v10 = 1;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

LABEL_10:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_19;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v15 = *(a1 + 260);
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx IP Type,%u\n", (*&g_MacClockTicksToMsRelation * v7));
LABEL_14:
    v9 = v8;
    v10 = 0;
LABEL_18:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v9, v10, 1);
    goto LABEL_19;
  }

  if (v2 == 3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v16 = *(a1 + 266);
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v11));
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v2 != 2)
  {
    goto LABEL_10;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v14 = *(a1 + 266);
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s,Port,%u\n", (*&g_MacClockTicksToMsRelation * v6));
    goto LABEL_17;
  }

LABEL_19:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_Disconnect_Req_Out(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u\n", (*&g_MacClockTicksToMsRelation * v3), "SPL", 65, "Trace_GN_SUPL_Disconnect_Req_Out", a1);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v4, 1, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void Trace_GN_SUPL_PDU_Delivery_Out(int a1, unsigned int a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 3, 0, 0);
  if (IsLoggingAllowed)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = (*&g_MacClockTicksToMsRelation * v7);
    LcsUtils::GetInstance(v7);
    v9 = mach_continuous_time();
    std::to_string(&v14, (*&g_MacClockTicksToMsRelation * v9));
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PDU_Delivery_Out time stamp,%s,request_id,%u,buflen,%u\n", v8, "SPL", 77, "Trace_GN_SUPL_PDU_Delivery_Out", v10, a1, a2);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v11, 3, 1);
  }

  Instance = LcsUtils::GetInstance(IsLoggingAllowed);
  LcsUtils::TraceBuffer(Instance, a3, a2);
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t Trace_GN_SUPL_Position_Resp_Out(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v8 = 70;
    if (a4)
    {
      v8 = 84;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Handle,%u,NiSession,%c\n", v7, "SPL", 65, "Trace_GN_SUPL_Position_Resp_Out", a1, v8);
    LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
  }

  result = Trace_GN_SUPL_Pos_data(a3);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_TimerStart_Out(int a1, int a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u,DurationMs,%u\n", (*&g_MacClockTicksToMsRelation * v7), "SPL", 65, "Trace_GN_SUPL_TimerStart_Out", a1, a2, a3);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v8, 1, 1);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_TimerStop_Out(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TimerID,%u,Type,%u\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 65, "Trace_GN_SUPL_TimerStop_Out", a1, a2);
    result = LbsOsaTrace_WriteLog(0x12u, __str, v6, 1, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_PPDU_Decode_Out(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v22 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v12 = mach_continuous_time();
    v13 = (*&g_MacClockTicksToMsRelation * v12);
    LcsUtils::GetInstance(v12);
    v14 = mach_continuous_time();
    std::to_string(&v20, (*&g_MacClockTicksToMsRelation * v14));
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20.__r_.__value_.__r.__words[0];
    }

    v16 = 70;
    if (a6)
    {
      v17 = 84;
    }

    else
    {
      v17 = 70;
    }

    if (a5)
    {
      v16 = 84;
    }

    v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GN_SUPL_PPDU_Decode_Out time stamp,%s,Handle,%u,PDU_Size,%u,PduType,%u,LoggingDisabled,%c,Emergency,%c\n", v13, "SPL", 65, "Trace_GN_SUPL_PPDU_Decode_Out", v15, a1, a2, a4, v16, v17);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    result = LbsOsaTrace_WriteLog(0x12u, __str, v18, 1, 1);
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_PPDU_SessionEnd_Out(int a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = (*&g_MacClockTicksToMsRelation * v5);
    LcsUtils::GetInstance(v5);
    v7 = mach_continuous_time();
    std::to_string(&v11, (*&g_MacClockTicksToMsRelation * v7));
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v11;
    }

    else
    {
      v8 = v11.__r_.__value_.__r.__words[0];
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,PpduHandle,%u,status,%u\n", v6, "SPL", 65, "Trace_GN_SUPL_PPDU_SessionEnd_Out", v8, a1, a2);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    result = LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_PPDU_PduRequest_Out(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v11 = mach_continuous_time();
    v12 = (*&g_MacClockTicksToMsRelation * v11);
    LcsUtils::GetInstance(v11);
    v13 = mach_continuous_time();
    std::to_string(&v18, (*&g_MacClockTicksToMsRelation * v13));
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v18;
    }

    else
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: time stamp,%s,Handle,%u,ProtocolType,%u,ReqPduType,%u\n", v12, "SPL", 65, "Trace_GN_SUPL_PPDU_PduRequest_Out", v14, a1, a2, a3);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    LbsOsaTrace_WriteLog(0x12u, __str, v15, 1, 1);
  }

  Trace_GN_SUPL_AidReqData(a4);
  result = Trace_GN_SUPL_LocationId(a6);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_gnsSUPL_SlpInfo(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_17:
    v8 = v5;
    v9 = 0;
LABEL_21:
    result = LbsOsaTrace_WriteLog(0x12u, __str, v8, v9, 1);
    goto LABEL_22;
  }

  v2 = *(a1 + 256);
  if (v2 <= 1)
  {
    if (!v2)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
      if (!result)
      {
        goto LABEL_22;
      }

LABEL_16:
      bzero(__str, 0x410uLL);
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v7 = *(a1 + 256);
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Address Type,%u\n", v6);
      goto LABEL_17;
    }

    if (v2 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV4,%s\n");
LABEL_20:
        v8 = v4;
        v9 = 4;
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_13:
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (!result)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v2 == 2)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: IPV6,%s\n");
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v2 != 3)
  {
    goto LABEL_13;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FQDN,%s\n");
    goto LABEL_20;
  }

LABEL_22:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Trace_GN_SUPL_SuplInitInfo(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    if (*(a1 + 808))
    {
      v3 = 84;
    }

    else
    {
      v3 = 70;
    }

    v17 = *(a1 + 7);
    v18 = *(a1 + 8);
    if (*(a1 + 5))
    {
      v4 = 84;
    }

    else
    {
      v4 = 70;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ProxyMode,%c,Ver,%u,%u,%u,PosMethod,%u,ecall,%u,NotifyType,%u,posTech,%u\n", v2, "SPL", 65, "Trace_GN_SUPL_SuplInitInfo", v4, *(a1 + 6), *(a1 + 7), *(a1 + 8), *(a1 + 12), v3, *(a1 + 812), *(a1 + 816));
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 1, 1);
  }

  if (*(a1 + 272))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: v_SlpId\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v7, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 16);
  }

  if (*(a1 + 536))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: E_Slp\n", (*&g_MacClockTicksToMsRelation * v8), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v9, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 280);
  }

  if (*(a1 + 800))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: p_Slp\n", (*&g_MacClockTicksToMsRelation * v10), "SPL", 65, "Trace_GN_SUPL_SuplInitInfo");
      LbsOsaTrace_WriteLog(0x12u, __str, v11, 1, 1);
    }

    Trace_gnsSUPL_SlpInfo(a1 + 544);
  }

  result = LbsOsaTrace_IsLoggingAllowed(0x12u, 1, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v13 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v14 = 70;
    if (*(a1 + 817))
    {
      v14 = 84;
    }

    v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: QoP valid,%c,horacc,%u,veracc,%u,maxLocAge,%u,delay,%u\n", v13, "SPL", 65, "Trace_GN_SUPL_SuplInitInfo", v14, *(a1 + 820), *(a1 + 821), *(a1 + 824), *(a1 + 828));
    result = LbsOsaTrace_WriteLog(0x12u, __str, v15, 1, 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

double GAL_EphInt2Real(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = 60 * *(a1 + 18);
  v2 = *(a1 + 20);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  *&v4.f64[0] = *&vcvtq_f64_s64(v3);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4.f64[1] = vcvtq_f64_u64(v3).f64[1];
  *(a2 + 24) = vmulq_f64(v4, xmmword_2997616F0);
  v5 = *(a1 + 28);
  v3.i64[0] = v5;
  v3.i64[1] = HIDWORD(v5);
  *&v4.f64[0] = *&vcvtq_f64_u64(v3);
  v3.i64[0] = v5;
  v3.i64[1] = SHIDWORD(v5);
  v4.f64[1] = vcvtq_f64_s64(*&v3).f64[1];
  *(a2 + 40) = vmulq_f64(v4, xmmword_299761700);
  v6 = *(a1 + 36);
  v3.i64[0] = v6;
  v3.i64[1] = SHIDWORD(v6);
  *(a2 + 56) = vmulq_f64(vcvtq_f64_s64(v3), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v7.f64[0] = *(a1 + 44);
  v7.f64[1] = *(a1 + 48);
  *(a2 + 72) = vmulq_f64(v7, vdupq_n_s64(0x3D5921FB54442D28uLL));
  v8 = vmovl_s16(*(a1 + 50));
  v3.i64[0] = v8.i32[2];
  v3.i64[1] = v8.i32[3];
  v9 = vcvtq_f64_s64(v3);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  *(a2 + 104) = vmulq_f64(v9, xmmword_299761720);
  *(a2 + 88) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299761710);
  v9.f64[0] = vcvtd_n_f64_s32(*(a1 + 60), 0x1DuLL);
  *(a2 + 120) = vcvtd_n_f64_s32(*(a1 + 58), 5uLL);
  *(a2 + 128) = v9.f64[0];
  *(a2 + 136) = vcvtd_n_f64_s32(*(a1 + 62), 0x1DuLL);
  *(a2 + 144) = 60 * *(a1 + 74);
  v8.i64[0] = *(a1 + 64);
  v3.i64[0] = v8.i32[0];
  v3.i64[1] = v8.i32[1];
  *(a2 + 152) = vmulq_f64(vcvtq_f64_s64(v3), xmmword_299761730);
  v9.f64[0] = vcvtd_n_f64_s32(*(a1 + 76), 0x20uLL);
  *(a2 + 168) = *(a1 + 72) * 1.73472348e-18;
  *(a2 + 176) = v9.f64[0];
  result = vcvtd_n_f64_s32(*(a1 + 78), 0x20uLL);
  *(a2 + 184) = result;
  *(a2 + 194) = *(a1 + 16);
  *(a2 + 197) = *(a1 + 82);
  *(a2 + 198) = *(a1 + 83);
  *(a2 + 200) = *(a1 + 85);
  *(a2 + 201) = *(a1 + 86);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Nav_Kalman_Update_Wrapper(uint64_t *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper: Entry");
  Nav_Kalman_Update(a1[22], a1[29], a1[35], a1[13], a1[4], a1[12], a1[7], a1[5], a1[10], a1[9], a1[8], a1[6], a1[15]);
  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "Nav_Kalman_Update_Wrapper:  Exit");
}

uint64_t Gnm29_01RestoreVarMENv(int a1)
{
  *&v25[2036] = *MEMORY[0x29EDCA608];
  bzero(&__s, 0x7FCuLL);
  memset_s(&__s, 0x7FCuLL, 0, 0x7FCuLL);
  __s = -256;
  v23 = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:PrefLtlTable,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm29_01RestoreVarMENv", a1);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (a1 == 1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:GOOH Occured\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm29_01RestoreVarMENv");
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
    }

    if (g_PrevUsedLtl == 1)
    {
      g_PrevUsedLtl = 0;
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Swapped from Initial To Learned LTL\n");
    }

    else
    {
      g_PrevUsedLtl = 1;
      if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 3, 0, 0))
      {
        goto LABEL_12;
      }

      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Swapped from Learned To Initial LTL\n");
    }

    LbsOsaTrace_WriteLog(0xBu, __str, v8, 3, 1);
  }

LABEL_12:
  if ((Gnm53_43ComposeMeWakeMsg(v25, 2034, &v24, g_PrevUsedLtl, v2, v3) & 1) == 0)
  {
    v9 = Gnm53_25ComputeCalibVarMENv();
    if (!v9)
    {
      if (g_BootMode != 2)
      {
        result = Gnm53_31SendCalibReq();
        goto LABEL_26;
      }

      Gnm53_24ComputeDefaultVarMENv(v9, v10, v11, v12, v13, v14);
    }

    if ((Gnm53_43ComposeMeWakeMsg(v25, 2034, &v24, g_PrevUsedLtl, v13, v14) & 1) == 0)
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Sending error\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm29_01RestoreVarMENv");
        LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
      }

      v24 = 0;
    }
  }

  Gnm26_04SendXRestoreVariableMeNv(&__s);
  ++BYTE2(dword_2A19397C6);
  LOBYTE(dword_2A19397C6) = 0;
  result = AgpsFsmStartTimer(0x802E06u, 0xFAu);
  if (result)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v18 = mach_continuous_time();
      v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 87, "Gnm29_01RestoreVarMENv", 1544);
      result = LbsOsaTrace_WriteLog(0xBu, __str, v19, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
  }

  else
  {
    BYTE1(dword_2A19397C6) = 1;
  }

LABEL_26:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void *Gnm29_02HandleMeNvRestoreAck(unsigned __int8 *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1[1])
  {
    v2 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: SeqNum,%u\n", (*&g_MacClockTicksToMsRelation * v3), "GNM", 87, "Gnm29_02HandleMeNvRestoreAck", a1[1]);
      LbsOsaTrace_WriteLog(0xBu, __str, v4, 2, 1);
      v2 = 0;
    }
  }

  else
  {
    v2 = Gnm25_18CheckRestoreStatus(*a1, "LTL:Var ME");
  }

  if (BYTE1(dword_2A19397C6) == 1)
  {
    if (AgpsFsmStopTimer(8400390) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 87, "Gnm29_02HandleMeNvRestoreAck", 1545);
      LbsOsaTrace_WriteLog(0xBu, __str, v6, 2, 1);
    }

    BYTE1(dword_2A19397C6) = 0;
  }

  if (v2)
  {
    Gnm10_31SendMEWakeRsp(1);
    Gnm10_29SendFwActivity(1, 0);
LABEL_14:
    result = 0;
    goto LABEL_17;
  }

  if (BYTE2(dword_2A19397C6) <= 2u)
  {
    Gnm29_01RestoreVarMENv(0);
    goto LABEL_14;
  }

  byte_2A19397CA = 0;
  dword_2A19397C6 = 0;
  if (g_GnssHw - 1 >= 3)
  {
    snprintf(v11, 0x400uLL, "ASSERT: %s %d MWL : LTL restore failed after max attempts", "Gnm29_02HandleMeNvRestoreAck", 233);
    if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v9), "OSA", 69, "Gnm29_02HandleMeNvRestoreAck", v11);
      LbsOsaTrace_WriteLog(0xEu, __str, v10, 0, 1);
    }

    gnssOsa_FlushLog();
    __assert_rtn("Gnm29_02HandleMeNvRestoreAck", "gnm29NvMeZx.cpp", 234, "false && LTL restore failed after max attempts");
  }

  Gnm03_60BaseBandResetReq(6);
  result = &a_GnmResetState;
LABEL_17:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm29_03HandleVarMeRestoreNoAck(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_VAR_ME_NV_RESTORE_TIMER\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm29_03HandleVarMeRestoreNoAck");
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  if (a1)
  {
    if (BYTE1(dword_2A19397C6) == 1)
    {
      BYTE1(dword_2A19397C6) = 0;
      if (BYTE2(dword_2A19397C6) > 2u)
      {
        byte_2A19397CA = 0;
        dword_2A19397C6 = 0;
        snprintf(v10, 0x400uLL, "ASSERT: %s %d MWL : LTL restore timeout after max attempts", "Gnm29_03HandleVarMeRestoreNoAck", 279);
        if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v8 = mach_continuous_time();
          v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v8), "OSA", 69, "Gnm29_03HandleVarMeRestoreNoAck", v10);
          LbsOsaTrace_WriteLog(0xEu, __str, v9, 0, 1);
        }

        gnssOsa_FlushLog();
        __assert_rtn("Gnm29_03HandleVarMeRestoreNoAck", "gnm29NvMeZx.cpp", 280, "false && LTL restore timeout after max attempts");
      }

      Gnm29_01RestoreVarMENv(0);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 69, "Gnm29_03HandleVarMeRestoreNoAck", 517);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t Gnm29_04BackupMeNv(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:Len,%ubytes\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm29_04BackupMeNv", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
  }

  __dst = 0;
  memcpy_s("Gnm29_04BackupMeNv", 299, &__dst, 2u, (a1 + 8), 2uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:MENType,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm29_04BackupMeNv", __dst);
    LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
  }

  if ((~__dst & 3) != 0)
  {
    goto LABEL_20;
  }

  if ((__dst & 0x40) != 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STLDivBit set by ME\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm29_04BackupMeNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
    }

    if (g_StlDivergenceIndicator)
    {
      goto LABEL_17;
    }

    if ((dword_2A192081C & 0x10000) != 0)
    {
LABEL_16:
      if (g_IsExtClock != 1)
      {
        result = Gnm53_64CopyLearntLTL((a1 + 10), (*(a1 + 4) - 2));
        if (!result)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:STLDivBit considered by HSW\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm29_04BackupMeNv");
      LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
    }

    Gnm53_56SetStlDivInd();
  }

  if ((g_StlDivergenceIndicator & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  bzero(&g_LTLDataPPM, 0x5E2uLL);
  g_AgeingTimeGpsSeconds = 0;
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LTL:XO Learnings Dropped\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm29_04BackupMeNv");
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
  }

LABEL_20:
  if ((__dst & 0x1C) == 0 || (result = Gnm53_44BackupLearntMENv((a1 + 8), *(a1 + 4), __dst, v4, v5, v6), result))
  {
    result = 1;
  }

LABEL_23:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_Init(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_Init");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
  }

  g_HalCallbacks = 0;
  off_2A19268B0 = 0;
  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_Init");
    result = LbsOsaTrace_WriteLog(0xDu, __str, v4, 4, 1);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_DeInit(void)
{
  v7 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_DeInit");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
  }

  result = gnssOsa_Calloc("Hal_DeInit", 71, 1, 0x18uLL);
  if (result)
  {
    *(result + 16) = 0;
    AgpsSendFsmMsg(129, 129, 8454656, result);
    g_HalCallbacks = 0;
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 73, "Hal_DeInit");
      result = LbsOsaTrace_WriteLog(0xDu, __str, v4, 4, 1);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal_DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (*(a1 + 4) == 8455424)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 16) = 0;
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_DestMissingHandler", *(a1 + 4));
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t Hal00_03DefaultMsgHandler()
{
  v5 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 69, "Hal00_03DefaultMsgHandler", 519);
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 0, 1);
  }

  v2 = *MEMORY[0x29EDCA608];
  return 0;
}

void Hal_SetConfigurations(__int128 *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = gnssOsa_Calloc("Hal_SetConfigurations", 122, 1, 0x108uLL);
    if (v2)
    {
      v3 = v2;
      v4 = *a1;
      v5 = a1[1];
      v6 = a1[2];
      *(v2 + 60) = a1[3];
      *(v2 + 44) = v6;
      *(v2 + 28) = v5;
      *(v2 + 12) = v4;
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      *(v2 + 124) = a1[7];
      *(v2 + 108) = v9;
      *(v2 + 92) = v8;
      *(v2 + 76) = v7;
      v10 = a1[8];
      v11 = a1[9];
      v12 = a1[10];
      *(v2 + 188) = a1[11];
      *(v2 + 172) = v12;
      *(v2 + 156) = v11;
      *(v2 + 140) = v10;
      v13 = a1[12];
      v14 = a1[13];
      v15 = a1[14];
      *(v2 + 248) = *(a1 + 236);
      *(v2 + 236) = v15;
      *(v2 + 220) = v14;
      *(v2 + 204) = v13;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v16 = mach_continuous_time();
        v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: HAL_SET_CFG_MSG\n", (*&g_MacClockTicksToMsRelation * v16), "HAL", 73, "Hal_SetConfigurations");
        LbsOsaTrace_WriteLog(0xDu, __str, v17, 4, 1);
      }

      AgpsSendFsmMsg(129, 129, 8457728, v3);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v18 = mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx pltcnf\n", (*&g_MacClockTicksToMsRelation * v18), "HAL", 73, "Hal_SetConfigurations", 513);
    LbsOsaTrace_WriteLog(0xDu, __str, v19, 4, 1);
  }

  v20 = *MEMORY[0x29EDCA608];
}

uint64_t Hal_StartConn(int a1, char a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal_StartConn");
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
  }

  if (a3)
  {
    result = gnssOsa_Calloc("Hal_StartConn", 157, 1, 0x20uLL);
    if (result)
    {
      *(result + 16) = a3;
      *(result + 24) = a1;
      *(result + 28) = a2;
      AgpsSendFsmMsg(129, 129, 8454144, result);
      if ((a2 & 1) == 0)
      {
        GnssDbgMgr_SetPlatform(a1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal_StartConn");
        v11 = 4;
LABEL_11:
        result = LbsOsaTrace_WriteLog(0xDu, __str, v10, v11, 1);
      }
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v12 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 69, "Hal_StartConn", 516);
      v11 = 0;
      goto LABEL_11;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_StopConn(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_StopConn");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  result = gnssOsa_Calloc("Hal_StopConn", 191, 1, 0x18uLL);
  if (result)
  {
    *(result + 16) = a1;
    AgpsSendFsmMsg(129, 129, 8454656, result);
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_StopConn");
      result = LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal00_06ReadBufNtf(size_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx len\n");
LABEL_12:
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 2, 1);
    goto LABEL_13;
  }

  if (!a2)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      goto LABEL_13;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx data\n");
    goto LABEL_12;
  }

  v4 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 232, 1, 0x20uLL);
  if (!v4)
  {
LABEL_13:
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = v4;
  v6 = gnssOsa_Calloc("Hal00_06ReadBufNtf", 238, 1, a1);
  v5[2] = v6;
  if (v6)
  {
    memcpy_s("Hal00_06ReadBufNtf", 245, v6, a1, a2, a1);
    *(v5 + 12) = a1;
    v7 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(129, 129, 8455424, v5);
  }

  else
  {
    v10 = *MEMORY[0x29EDCA608];

    free(v5);
  }
}

void Hal_GnssBaseBandReset(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal_GnssBaseBandReset", 516);
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 0, 1);
    }

    goto LABEL_8;
  }

  v2 = gnssOsa_Calloc("Hal_GnssBaseBandReset", 284, 1, 0x18uLL);
  if (!v2)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  v2[2] = a1;
  v3 = *MEMORY[0x29EDCA608];

  AgpsSendFsmMsg(129, 129, 8454912, v2);
}

void Hal_SetPowerReportStatus(char a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Hal_SetPowerReportStatus", 305, 1, 0x18uLL);
  if (v4)
  {
    v4[2] = a2;
    *(v4 + 12) = a1;
    v5 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(129, 129, 8457216, v4);
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void Hal_NotifyMEInActiveStat(void (*a1)(BOOL))
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_NotifyMEInActiveStat");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    v4 = gnssOsa_Calloc("Hal_NotifyMEInActiveStat", 330, 1, 0xCuLL);
    if (v4)
    {
      off_2A19268B0 = a1;
      AgpsSendFsmMsg(129, 129, 8456448, v4);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 69, "Hal_NotifyMEInActiveStat", 516);
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 0, 1);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t Hal_TriggerTimeMarkPulse(void (*a1)(unsigned int, BOOL))
{
  v9 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_TriggerTimeMarkPulse");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if (a1)
  {
    result = gnssOsa_Calloc("Hal_TriggerTimeMarkPulse", 355, 1, 0x18uLL);
    if (result)
    {
      *(result + 16) = a1;
      AgpsSendFsmMsg(129, 129, 8457472, result);
      result = 1;
    }
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal_TriggerTimeMarkPulse", 516);
      LbsOsaTrace_WriteLog(0xDu, __str, v6, 2, 1);
      result = 0;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AscToU1(uint64_t result, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  if (result)
  {
    v2 = *result;
    if ((v2 - 48) > 9)
    {
      if ((v2 - 65) > 5 && (v2 - 97) > 5)
      {
        goto LABEL_13;
      }

      v3 = 16 * v2 - 112;
    }

    else
    {
      v3 = 16 * v2;
    }

    *a2 = v3;
    v4 = *(result + 1);
    v5 = v4 - 48;
    if ((v4 - 48) < 0xA)
    {
LABEL_12:
      *a2 = v5 + v3;
      result = 1;
      goto LABEL_14;
    }

    if ((v4 - 65) <= 5)
    {
      v5 = v4 - 55;
      goto LABEL_12;
    }

    if ((v4 - 97) <= 5)
    {
      v5 = v4 - 87;
      goto LABEL_12;
    }

LABEL_13:
    result = 0;
  }

LABEL_14:
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t GM_Adjust_AAD(unsigned int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (((a2 & a1 & 0x80000000) != 0) == v5 && ((a1 & 0x80000000) != 0 || *(a5 + 48 * a1 + 4)) && ((a2 & 0x80000000) != 0 || *(a5 + 48 * a2 + 4)))
  {
    if ((a1 & 0x80000000) != 0)
    {
      v21 = a3 + 56 * a2;
      v22 = *(v21 + 16);
      v32[0] = *v21;
      v32[1] = v22;
      v32[2] = *(v21 + 32);
      v33 = *(v21 + 48);
      v23 = a5 + 48 * a2;
      GM_Aid_NSSS_Meas(v23, 0, v32);
      v24 = vsub_s32(*&v32[0], *(v23 + 28));
      v20 = (v24.i32[1] + 1534500 * v24.i32[0]);
    }

    else
    {
      v8 = (a3 + 56 * a1);
      v9 = a5 + 48 * a1;
      v11 = *v8;
      v10 = v8[1];
      v12 = *(v9 + 28);
      v13 = *(v9 + 32);
      v14 = *v8 - v12;
      if (v14 >= 201601)
      {
        if (v14 >= 0x93A80)
        {
          v14 = 604800;
        }

        v15 = v12 + 403200 * ((~(v12 + v14) + v11 + 403200) / 0x62700u);
        v14 = v11 - 403200 - v15;
        v12 = v15 + 403200;
        *(v9 + 28) = v12;
      }

      v16 = v10 - v13;
      if (v14 <= -201601)
      {
        v17 = -604800 - v14;
        if (v14 > 0xFFF6C580)
        {
          v17 = 0;
        }

        v18 = ((__PAIR64__(v17, v14) - 4294362496u) >> 32) / 0x62700;
        if (v14 < 0xFFF6C580)
        {
          ++v18;
        }

        v19 = 403200 * v18;
        v14 += 403200 + v19;
        *(v9 + 28) = v12 - 403200 - v19;
      }

      v20 = (v16 + 1534500 * v14);
    }

    if (v20 >= 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = -v20;
    }

    v26 = (a4 - 1);
    if (a4 - 1 >= 0 && v25 >= 6)
    {
      v27 = v26 + 1;
      v28 = (a5 + 48 * v26 + 28);
      do
      {
        if (*(v28 - 24) == 1)
        {
          Inc_CA_Chips(v20, v28 + 1, v28);
        }

        v28 -= 12;
      }

      while (v27-- > 1);
    }
  }

  else
  {
    v20 = 0;
  }

  v30 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t Kep_Check_Ephemeris(int a1, int a2, int *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = a3[2];
  v4 = *(a3 + 9);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      if (v4 != 1356)
      {
        goto LABEL_21;
      }
    }

    else if (v3 != 5 || v4 != 0)
    {
      goto LABEL_21;
    }
  }

  else if (v3 == 1)
  {
    if (*(a3 + 9))
    {
      goto LABEL_21;
    }
  }

  else if (v3 != 3 || v4 != 1024)
  {
    goto LABEL_21;
  }

  *(a3 + 9) = a1;
  v6 = a2 - a3[5];
  if (v6 <= 302399)
  {
    LOWORD(v4) = a1;
    if (v6 >= -302400)
    {
      goto LABEL_21;
    }

    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  LOWORD(v4) = v7 + a1;
  *(a3 + 9) = v7 + a1;
LABEL_21:
  if (a1 - 512 <= v4)
  {
    v8 = v4;
  }

  else
  {
    do
    {
      LOWORD(v4) = v4 + 1024;
    }

    while (a1 - 512 > v4);
    v8 = v4;
    *(a3 + 9) = v4;
  }

  v9 = -604800;
  v10 = a3[5];
  v11 = v10 + 604800 * v8;
  v12 = a2 + 604800 * a1 - v11;
  if (v12 <= 302399)
  {
    if (v12 >= -302400)
    {
      goto LABEL_30;
    }

    v13 = -1;
    v14 = -604800;
    v9 = 604800;
  }

  else
  {
    v13 = 1;
    v14 = 604800;
  }

  *(a3 + 9) = v13 + v4;
  v11 += v14;
  v12 += v9;
LABEL_30:
  v15 = *a3;
  if (*a3)
  {
    v16 = v11 - v15;
    if (v16 < 0)
    {
      v16 = -v16;
    }

    v15 = v16 > 0xA8C0;
  }

  if (v12 >= 0)
  {
    v17 = v12;
  }

  else
  {
    v17 = -v12;
  }

  if (!*(a3 + 14) && v17 > 0x2A30 || *(a3 + 14) == 1 && v17 >= 0x3F49)
  {
    v15 |= 2u;
  }

  v18 = *(a3 + 12);
  if (v3 == 6 || (v19 = 4800.0, v3 == 4) && v18 <= 5)
  {
    v19 = 6300.0;
  }

  v20 = a3[6];
  v21 = 0.000000314159265;
  v22 = 7000.0;
  v23 = 0.1;
  if (v3 != 5 && (v3 != 4 || v18 <= 5))
  {
    v26 = v3 == 4 && *(a3 + 12) < 6u || v3 == 6;
    v27 = ((v18 - 14) & 0xFB) == 0 && v3 == 3;
    v23 = 0.25;
    if (!v27)
    {
      v23 = 0.03;
    }

    v22 = 6700.0;
    if (!v26)
    {
      v22 = 5800.0;
    }

    v21 = 0.000000314159265;
    if (!v26)
    {
      v21 = 0.0;
    }
  }

  v28 = *(a3 + 21);
  if (v10 <= 604799)
  {
    v29 = v15 | (4 * (v10 >> 31));
  }

  else
  {
    v29 = v15 | (4 * (v10 >> 31)) | 8;
  }

  v30 = v29 | (16 * (v20 >> 31));
  if (v20 <= 604799)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 | 0x20;
  }

  if (v28 < v19)
  {
    v31 |= 0x40u;
  }

  if (v28 > v22)
  {
    v31 |= 0x80u;
  }

  v32 = *(a3 + 25);
  v33 = *(a3 + 26);
  if (v32 < 0.0)
  {
    v31 |= 0x100u;
  }

  if (v32 > v23)
  {
    v31 |= 0x200u;
  }

  if (v33 < -0.00000198862815)
  {
    v31 |= 0x400u;
  }

  if (v33 <= v21)
  {
    result = v31;
  }

  else
  {
    result = v31 | 0x800;
  }

  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SBAS_Set_StateTable(uint64_t a1, uint64_t a2, int *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = &unk_2A192ECF0;
  v6 = 10;
  v7 = "SBAS_Set_StateTable:  Replacing Eph,  SV %3d  IOD %3d";
  while (v5[46] != 1 || *(v5 + 180) != a1)
  {
    v5 += 48;
    if (!--v6)
    {
      v5 = &unk_2A192ECF0;
      v8 = 10;
      v7 = "SBAS_Set_StateTable:  New Eph,  SV %3d  IOD %3d";
      while (v5[46])
      {
        v5 += 48;
        if (!--v8)
        {
          result = 0;
          goto LABEL_12;
        }
      }

      break;
    }
  }

  EvLog_v(v7, a1, a2);
  *(v13[0].n128_u64 + 5) = 0;
  v13[0].n128_u64[0] = 0;
  v13[1] = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  SBAS_EphInt2Real(a3, v13);
  SBAS_Eph2RefState(v13, a1, word_2A1928458, *&qword_2A1928460, v5);
  *v11 = vmovn_s64(vcvtq_s64_f64(v14));
  v12 = *&v15;
  if ((Core_Save_SBAS_Apx(a1, 0, *a3, v11) & 1) == 0)
  {
    EvCrt_v("SBAS_Set_StateTable:  Core_Save_SBAS_Apx() Failed,  SV %3d", a1);
  }

  result = 1;
LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Range_Chip_Check(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  if ((*(a2 + 233) & 1) != 0 || *(a3 + 968) != 1 || *(a3 + 24752) >= 48.8420427 || *(a3 + 12) != 11)
  {
    goto LABEL_36;
  }

  v6 = result;
  v7 = 0;
  v31 = 0;
  v8 = 0;
  memset(v32, 0, sizeof(v32));
  v9 = (result + 76);
  v28 = result + 604;
  v10 = 4832;
  do
  {
    v11 = *(a3 + v10);
    v12 = a3 + v7;
    if (fabs(v11) <= 586.104512)
    {
      v8 += *(v12 + 2960);
      goto LABEL_27;
    }

    if (*(v12 + 2960))
    {
      v13 = &v6[2 * v7];
      v14 = (*(v13 + 158) >> 12) - 1;
      v15 = 10 * *(v13 + 422);
      v16 = v15 >> v14;
      v17 = *(a3 + v10 + 2016);
      if (v17 < 21469.9062 && v16 >= 6)
      {
        *(v32 + v7) = 1;
        v30 = v9[2];
        v29 = *v9;
        v19 = GNSS_Id_To_Num_Prn_Idx(*v9);
        v20 = *(a3 + v10);
        if (v20 <= 0.0)
        {
          v21 = -0.5;
        }

        else
        {
          v21 = 0.5;
        }

        v22 = v20 + v21;
        if (v22 <= 2147483650.0)
        {
          if (v22 >= -2147483650.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0x80000000;
          }
        }

        else
        {
          v23 = 0x7FFFFFFF;
        }

        ++v31;
        result = EvCrt_v("Potential ChanReset %d : NKRCC %d %d %d Bad Chip, Resid %d Integ %d CodeLock %d LoopCl %d SNR %d", v7, v30, v29, v19, v23, 1 << v14, v15, v16, v28[v7]);
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *(a3 + v10 + 2016);
    }

    v24 = v11 * 0.5 * (v11 * 0.5);
    if (v17 > v24)
    {
      v24 = v17;
    }

    *(a3 + v10 + 2016) = v24;
LABEL_27:
    ++v7;
    v9 += 4;
    v10 += 8;
  }

  while (v7 != 48);
  if (v31 >= 1)
  {
    if (v31 > 4)
    {
      result = EvCrt_v("Skipping above ChanResets:  %d large & %d small (probably clock bias adjustment)", v31, v8);
    }

    else
    {
      result = EvCrt_v("Applying above ChanResets to %d channels, with %d not reset", v31, v8);
      for (i = 0; i != 48; ++i)
      {
        if (*(v32 + i) == 1)
        {
          *(a3 + i + 2960) = 0;
          *(a3 + 3056 + 4 * i) = 13;
          ++*(a3 + 2812);
          *(a2 + 6696 + i) = 0;
          *(a4 + i + 365) |= 1u;
          *(a4 + 416 + 4 * i) = *a3;
        }
      }
    }
  }

LABEL_36:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Comp_PR_DO_Res(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v147 = *MEMORY[0x29EDCA608];
  *(a7 + 19952) = 0u;
  *(a7 + 19936) = 0u;
  *(a7 + 19920) = 0u;
  *(a7 + 19904) = 0u;
  v116 = (a3 + 24372);
  *(a7 + 19888) = 0u;
  v12 = (a7 + 22732);
  *(a7 + 19872) = 0u;
  *(a7 + 19856) = 0u;
  *(a7 + 19840) = 0u;
  *(a7 + 19824) = 0u;
  *(a7 + 19808) = 0u;
  *(a7 + 19792) = 0u;
  *(a7 + 19776) = 0u;
  *(a7 + 19760) = 0u;
  *(a7 + 19744) = 0u;
  *(a7 + 19728) = 0u;
  *(a7 + 19712) = 0u;
  *(a7 + 19696) = 0u;
  *(a7 + 19680) = 0u;
  *(a7 + 19664) = 0u;
  *(a7 + 19648) = 0u;
  *(a7 + 19632) = 0u;
  *(a7 + 19616) = 0u;
  *(a7 + 19600) = 0u;
  *(a7 + 19584) = 0u;
  *(a7 + 5584) = 0u;
  *(a7 + 5568) = 0u;
  *(a7 + 5552) = 0u;
  *(a7 + 5536) = 0u;
  *(a7 + 5520) = 0u;
  *(a7 + 5504) = 0u;
  *(a7 + 5488) = 0u;
  *(a7 + 5472) = 0u;
  *(a7 + 5456) = 0u;
  *(a7 + 5440) = 0u;
  *(a7 + 5424) = 0u;
  *(a7 + 5408) = 0u;
  *(a7 + 5392) = 0u;
  *(a7 + 5376) = 0u;
  *(a7 + 5360) = 0u;
  *(a7 + 5344) = 0u;
  *(a7 + 5328) = 0u;
  *(a7 + 5312) = 0u;
  *(a7 + 5296) = 0u;
  *(a7 + 5280) = 0u;
  *(a7 + 5264) = 0u;
  *(a7 + 5248) = 0u;
  *(a7 + 5232) = 0u;
  *(a7 + 5216) = 0u;
  *(a7 + 11144) = 0u;
  *(a7 + 11160) = 0u;
  *(a7 + 11112) = 0u;
  *(a7 + 11128) = 0u;
  *(a7 + 11080) = 0u;
  *(a7 + 11096) = 0u;
  *(a7 + 11048) = 0u;
  *(a7 + 11064) = 0u;
  *(a7 + 11016) = 0u;
  *(a7 + 11032) = 0u;
  *(a7 + 10984) = 0u;
  *(a7 + 11000) = 0u;
  *(a7 + 10952) = 0u;
  *(a7 + 10968) = 0u;
  *(a7 + 10920) = 0u;
  *(a7 + 10936) = 0u;
  *(a7 + 10888) = 0u;
  *(a7 + 10904) = 0u;
  *(a7 + 10856) = 0u;
  *(a7 + 10872) = 0u;
  *(a7 + 10824) = 0u;
  *(a7 + 10840) = 0u;
  *(a7 + 10792) = 0u;
  *(a7 + 10808) = 0u;
  v97 = (a7 + 22732);
  if (*(a4 + 1132) != 1 || *(a7 + 24948) != 1)
  {
    goto LABEL_6;
  }

  if (*v12 >= 0xCu)
  {
    EvCrt_Illegal_Default("NK_Comp_PR_DO_Res", 0x90u);
LABEL_6:
    LOBYTE(v111) = 0;
    goto LABEL_7;
  }

  v111 = 0xF4u >> *v12;
LABEL_7:
  if ((*(a6 + 30) & 1) == 0)
  {
    v16 = 0;
    while (1)
    {
      v17 = *(a1 + 76 + 4 * v16);
      v18 = !Is_Legal(v17) || v17 == 3;
      if (!v18 && *(a7 + 2864 + v16) == 1)
      {
        break;
      }

      if (++v16 == 48)
      {
        goto LABEL_22;
      }
    }

    *(a6 + 30) = 1;
  }

  if ((*v116 - 2) > 4)
  {
LABEL_22:
    *(a7 + 608) = 0;
    *(a7 + 616) = -1;
  }

  else
  {
    if (*(v116 + 20) - *(a7 + 18) >= 0)
    {
      v13 = -((*(v116 + 20) - *(a7 + 18)) & 0x3F);
    }

    else
    {
      v13 = (*(a7 + 18) - *(v116 + 20)) & 0x3F;
    }

    if (v13 > 31)
    {
      v13 -= 64;
    }

    v14 = v116[9];
    v15 = *(a3 + 24392) + *(a3 + 24400) * (*(a7 + 24) - v14 + 604800 * v13);
    *(a7 + 608) = v15;
    *(a7 + 616) = v14;
    *(a6 + 7304) = v15 * 299792458.0;
  }

  v19 = 0;
  v130 = 0.0;
  v20 = (a6 + 1504);
  *(a6 + 1496) = 0;
  *(a6 + 1512) = 0;
  *(a6 + 1504) = 0;
  v21 = *(a7 + 816) - *(a7 + 824);
  v129 = 0;
  if (*(a7 + 644) == 1)
  {
    GPS_To_UTC_DOY(&v129, *(a7 + 646), *(a7 + 632), *(a3 + 39464));
    v19 = v129;
  }

  v22 = *(a7 + 800) * 57.2957795;
  v110 = v19;
  if (UNB_TropModel::Get_Zenith_Delays_Meter((a6 + 1520), v21, v22, v19, (a6 + 1504), (a6 + 1512)))
  {
    v23 = *v20 + *(a6 + 1512);
  }

  else
  {
    v24 = v21 * 0.001;
    if (v21 * 0.001 <= 1.0)
    {
      v23 = v24 * -0.3248 + 2.4644043 + v24 * 0.0223957 * v24;
    }

    else if (v24 <= 9.0)
    {
      v23 = (0.375 - exp((1.0 - v24) * 0.1226)) * -2.2838 + 0.732;
    }

    else
    {
      v23 = exp((v24 + -9.0) * -0.1424) * 0.7374;
    }

    *v20 = v23;
  }

  *(a6 + 1496) = v23;
  v122 = *(a6 + 1697);
  v25 = *(a6 + 1696) + v122;
  v121 = v25;
  if (v25 > 0x2Fu)
  {
    v25 = 0;
  }

  *(a6 + 1697) = v25;
  v142 = 0;
  v143 = 0;
  memset(v136, 0, sizeof(v136));
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  memset(v141, 0, 30);
  result = VecSortDscU1(a1 + 604, 0x30u, v144);
  v27 = 0;
  v28 = a1 + 76;
  v29 = v145;
  v114 = a1 + 1232;
  *(a7 + 31345) = *v144;
  *(a7 + 31361) = v29;
  v126 = a6 + 7360;
  *(a7 + 31377) = v146;
  v124 = a6 + 7552;
  v125 = a6 + 7744;
  v123 = a6 + 7840;
  v118 = a7 + 19968;
  v120 = a6 + 5928;
  v98 = a6 + 6120;
  v106 = a6 + 6696;
  v99 = a6 + 6312;
  v30 = a7 + 19536;
  v119 = a6 + 7888;
  v31 = -0.9;
  *&v32 = 90000.0;
  v33 = 0.16;
  v34 = -299792458.0;
  v35 = 0.001;
  v36 = 1.0;
  v113 = a1;
  v109 = a6 + 4008;
  v115 = a6 + 1704;
  v101 = a5 + 1960;
  v102 = a5 + 178;
  v103 = a5;
  v100 = a5 + 536;
  v37 = a7 + 2912;
  v107 = a1 + 1616;
  v108 = a6 + 2088;
  v96 = a1 + 2000;
  do
  {
    v38 = v144[v27];
    v39 = (v28 + 4 * v38);
    if (*v39 == 6)
    {
      goto LABEL_66;
    }

    v41 = v38 >= v122 && v38 < v121;
    result = Is_Legal(*v39);
    if (!result || *(a7 + 2864 + v38) != 1 || (*(a7 + 25476 + 2 * v38) & 0x8000000000000000) != 0)
    {
      goto LABEL_63;
    }

    v42 = (a2 + 192 * *(a7 + 25476 + 2 * v38));
    v43 = v42[9];
    v131[8] = v42[8];
    v131[9] = v43;
    v44 = v42[11];
    v132 = v42[10];
    v133 = v44;
    v45 = v42[5];
    v131[4] = v42[4];
    v131[5] = v45;
    v46 = v42[7];
    v131[6] = v42[6];
    v131[7] = v46;
    v47 = v42[1];
    v131[0] = *v42;
    v131[1] = v47;
    v48 = v42[3];
    v131[2] = v42[2];
    v131[3] = v48;
    if (DWORD2(v133) == 2)
    {
      if (*(a6 + 5) != 1)
      {
        goto LABEL_63;
      }

      v49 = *(a7 + 18);
      if (v49 - SWORD2(v132) > 2 || !*(a6 + 11048) && *(a7 + 964) < 2)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (DWORD2(v133) != 1)
      {
        goto LABEL_63;
      }

      LOWORD(v49) = *(a7 + 18);
    }

    result = Comp_CurrState(0x258u, v49, v131, v136, *(a7 + 24), *(v114 + 8 * v38));
    if (DWORD2(v133) != 1)
    {
      if (!result)
      {
        goto LABEL_63;
      }

LABEL_59:
      v128 = 0.0;
      if (*v39 == *(v126 + 4 * v38) && WORD6(v141[1]) == *(v125 + 2 * v38) && DWORD2(v141[1]) == *(v124 + 4 * v38))
      {
        v50 = *(v123 + v38) ^ 1;
      }

      else
      {
        v50 = 1;
      }

      *(v118 + v38) = v50 & 1;
      v112 = Comp_SVrange_Sag_Corr(&v134, &v128, (a7 + 664), &v136[0].f64[1]);
      v51 = 0;
      v52 = v134;
      v53 = (a7 + 848);
      v54 = v135;
      do
      {
        v55 = *(v53 - 1) * v52.f64[1] + *(v53 - 2) * v52.f64[0];
        v56 = *v53;
        v53 += 3;
        *(v131 + v51) = v55 + v56 * v54;
        v51 += 8;
      }

      while (v51 != 24);
      AzEl_SinCos(v131, v109 + 40 * v38, v108 + 40 * v38);
      v93 = v109 + 40 * v38;
      v104 = v108 + 40 * v38;
      AzEl_RadDeg(v93, v104);
      *(v120 + 4 * v38) = *a7;
      v57 = (v115 + 8 * v38);
      v94 = v57;
      if (((*(v118 + v38) | v41) & 1) != 0 || !*(a6 + 11048))
      {
        v58 = v108 + 40 * v38;
      }

      else
      {
        *&v127 = 0;
        if (!R8_EQ(v57, &v127) || (v58 = v108 + 40 * v38, !*(a3 + 8428)))
        {
LABEL_83:
          *&v127 = 0;
          if (R8_EQ(v94, &v127))
          {
            v64 = v108 + 40 * v38;
            v65 = 25.0 / (v36 + *(v104 + 16) * v31 * *(v104 + 16));
            v66 = 0.0;
            v67 = v110;
          }

          else
          {
            v66 = *v94;
            v65 = *v94 * 0.25 * (*v94 * 0.25);
            v67 = v110;
            v64 = v108 + 40 * v38;
          }

          if (*v39 == 3 && *(a6 + 30) == 1)
          {
            v68 = *v116;
            v69 = *&v32;
            if ((*v116 - 2) <= 4)
            {
              *(&v138 + 1) = *(&v138 + 1) - *(a7 + 608);
              v69 = 100.0;
              if (v68 != 2)
              {
                v69 = 2.25;
              }
            }

            *(a6 + 7312) = v69;
            *(&v139 + 1) = v69 + *(&v139 + 1);
          }

          NK_Comp_ith_PR_Res(v38, v67, v136, v64, v113, a6, a7, v112, v21, v22, v66, v65, v128);
          if (*(a7 + 26208 + v38) == 1)
          {
            v70 = (a7 + 26688 + 24 * v38);
            *v70 = *(v136 + 8);
            v70[1].f64[0] = v136[1].f64[1];
            v71 = a7 + 27840 + 24 * v38;
            *v71 = v137;
            *(v71 + 16) = v138;
            v72 = v139;
            *(a7 + 28992 + 8 * v38) = *(&v138 + 1);
            *(a7 + 29376 + 8 * v38) = v72;
            *(a7 + 29760 + 8 * v38) = *(&v139 + 1);
          }

          if (*(v37 + v38) == 1)
          {
            v73 = *a7;
            v74 = *(a7 + 4448 + 8 * v38) + (*(a7 + 3296 + 24 * v38) + *(a7 + 3296 + 24 * v38 + 8)) * v33 * *(a6 + 10888);
            if (*(v106 + v38) == 1 && *v39 == *(v126 + 4 * v38) && ((v75 = v73 - *(v98 + 4 * v38), v76 = *(v99 + 8 * v38), v76 < v74) ? (v77 = v75 <= 59999) : (v77 = 0), v77))
            {
              v74 = v76 + (v75 / 1000);
            }

            else
            {
              *(v106 + v38) = 1;
              *(v98 + 4 * v38) = v73;
            }

            *(v99 + 8 * v38) = v74;
          }

          if (v111)
          {
            *&v95 = v35;
            v105 = v34;
            v78 = v21;
            v79 = v22;
            v80 = v33;
            v81 = v32;
            v82 = v31;
            v83 = (v96 + 8 * v38);
            v84 = *v83;
            *(v30 + v38) = 1;
            v85 = *(v107 + 8 * v38);
            if (*v97 == 7)
            {
              v86 = 52.0;
            }

            else
            {
              v86 = 32.0;
            }

            *&v127 = 0;
            if (R8_EQ(v83, &v127))
            {
              *(v30 + v38) = 0;
              v87 = *(v113 + 78);
              v92 = *(v113 + 76);
              EvLog_v("NK_Comp_PR_DO_Meas: Ignore 0.0 AD for SV: %d, Constell: %d");
            }

            else if (fabs(v85 - v84) <= v86)
            {
              v85 = v84;
            }

            else
            {
              *(v30 + v38) = 0;
              EvLog_v("NK_Comp_PR_DO_Meas: DO-AD = %d Hz ! (%d %d %d)");
            }

            v31 = v82;
            v32 = v81;
            result = NK_Comp_ith_DO_Res(v38, v134.f64, v136, a7, &v130, v85);
            v33 = v80;
            v22 = v79;
            v21 = v78;
            v34 = v105;
            v35 = *&v95;
            v36 = 1.0;
            if (*(v30 + v38) == 1 && *(a7 + 8536 + v38) == 1)
            {
              *(a7 + 8584 + v38) = 1;
              *(a7 + 12424 + 8 * v38) = *(a7 + 12424 + 8 * v38) * 0.5;
            }
          }

          else
          {
            result = NK_Comp_ith_DO_Res(v38, v134.f64, v136, a7, &v130, *(v107 + 8 * v38));
          }

          v88 = a7 + 20032 + 56 * v38;
          *v88 = v134;
          *(v88 + 16) = v135;
          if ((*(v118 + v38) & 1) == 0)
          {
            for (i = 0; i != -24; i -= 8)
            {
              *(a7 + 20072 + 56 * v38 + i) = *(a6 + 8712 + 24 * v38 + i) - *(&v135 + i);
            }
          }

          *(v88 + 48) = (v130 + *(a7 + 760) * v34) * v35;
          *(v126 + 4 * v38) = *v39;
          *(v125 + 2 * v38) = WORD6(v141[1]);
          *(v124 + 4 * v38) = DWORD2(v141[1]);
          *(v123 + v38) = 1;
          *(v119 + 8 * v38) = v112;
          v90 = a6 + 8696 + 24 * v38;
          *(v90 + 16) = v135;
          *v90 = v134;
          goto LABEL_64;
        }
      }

      v59 = v58;
      v60 = GNSS_Id_To_Num_Prn_Idx(*v39);
      *(v102 + 2 * v60) = *v93;
      *(v103 + v60) = *v59;
      *(v101 + 8 * v60) = *(v93 + 24);
      *(v100 + 8 * v60) = *(v59 + 24);
      *(v115 + 8 * v38) = 0;
      if (*(a7 + 960) == 1 && *v59 >= 1 && *(a3 + 8428))
      {
        v127 = *(a3 + 8424);
        v61 = GPS_Klob_Iono_Delay((a7 + 800), v93, v59, &v127, *(a7 + 24));
        *(v115 + 8 * v38) = v61;
        v62 = *(v39 + 1);
        v63 = 1.0;
        if (v62 <= 0xF)
        {
          v63 = g_GPS_L1_Iono_SF_Table[v62];
        }

        *(v115 + 8 * v38) = v61 * v63;
      }

      goto LABEL_83;
    }

    *(a7 + 49 + v38) = 1;
    if (result)
    {
      goto LABEL_59;
    }

LABEL_63:
    *(v126 + 4 * v38) = 0;
    *(v125 + 2 * v38) = 0;
    *(v124 + 4 * v38) = 0;
    *(v123 + v38) = 0;
    *(v119 + 8 * v38) = 0;
    *(v120 + 4 * v38) = 0;
LABEL_64:
    if ((*(v37 + v38) & 1) == 0)
    {
      *(v118 + v38) = 1;
    }

LABEL_66:
    ++v27;
  }

  while (v27 != 48);
  v91 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplSession::SuplSession(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_2A1F8AB90;
  *(a1 + 24) = 0u;
  v8 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  ASN1T_SessionID::ASN1T_SessionID((a1 + 64));
  *(a1 + 380) = -1;
  *(a1 + 384) = -1;
  *(a1 + 396) = 0;
  *(a1 + 388) = 0;
  *(a1 + 401) = 0;
  *(a1 + 443) = 0;
  *(a1 + 450) = 0;
  *(a1 + 432) = 0x200000100000101;
  *(a1 + 440) = 0;
  *(a1 + 442) = 0;
  *(a1 + 520) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 376) = a3;
  v9 = *a4;
  *(a1 + 388) = *(a4 + 2);
  *(a1 + 380) = v9;
  *(a1 + 416) = 0;
  *(a1 + 532) = a2;
  *(a1 + 24) = a1;
  SuplSessionVer2::FillSetCapabilities(v8, a1 + 432, a2);
  *(a1 + 8) = a3;
  v10 = SuplSessionVer2::RequestLppCapPayLoad(v8, a2);
  *(a1 + 528) = 0;
  *(SuplUtils::GetInstance(v10) + 272) = a2;
  *(a1 + 424) = 0;
  v11 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2996D847C(_Unwind_Exception *exception_object)
{
  v1[3] = 0;
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v1[2] = 0;
  _Unwind_Resume(exception_object);
}

void SuplSession::~SuplSession(SuplSession *this)
{
  v13 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F8AB90;
  Instance = SuplUtils::GetInstance(this);
  if (Instance)
  {
    SuplUtils::DeleteSuplInitRecd(Instance, *(this + 94));
  }

  LcsTimer::Release((this + 392));
  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 52) = 0;
  v4 = *(this + 53);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 53) = 0;
  v5 = *(this + 62);
  if (v5)
  {
    *(this + 63) = v5;
    operator delete(v5);
  }

  v6 = *(this + 59);
  if (v6)
  {
    *(this + 60) = v6;
    operator delete(v6);
  }

  v7 = *(this + 44);
  if (v7)
  {
    *(this + 45) = v7;
    operator delete(v7);
  }

  v8 = *(this + 41);
  if (v8)
  {
    *(this + 42) = v8;
    operator delete(v8);
  }

  v9 = *(this + 38);
  if (v9)
  {
    *(this + 39) = v9;
    operator delete(v9);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  ASN1T_SETId::U::~U((this + 88));
  *(this + 3) = 0;
  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  *(this + 2) = 0;
  v12 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  SuplSession::~SuplSession(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  SuplSession::~SuplSession(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}