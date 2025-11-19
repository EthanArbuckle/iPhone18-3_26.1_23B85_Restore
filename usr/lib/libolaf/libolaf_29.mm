void sub_2996D8624(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t SuplSession::InitializeResources(SuplSession *this)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(this + 380) >= 2u)
  {
    v2 = *(this + 94);
    v3 = *(SuplUtils::GetInstance(this) + 24);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 11000;
    }

    LcsTimer::Init(this + 98, v2, 0, v4, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

void SuplSession::ProcessSuplRequest(SuplSession *this)
{
  v31 = *MEMORY[0x29EDCA608];
  Instance = SuplUtils::GetInstance(this);
  if (!Instance)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v5 = mach_continuous_time();
      v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v5), "SPL", 69, "ProcessSuplRequest", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v6, 0, 1);
    }

    goto LABEL_38;
  }

  v3 = *(this + 380);
  if (!*(this + 380))
  {
    v12 = *(this + 52);
    if (v12)
    {
      SuplState::UpdateState(v12, 7, this);
      v13 = *(this + 52);
      *(*(v13 + 5) + 432) = 18;
      *(*(v13 + 5) + 1) = 1;
      std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
      v27[0] = __str;
      v27[1] = 0;
      v28 = 0;
      SuplEndRecd::SetSessionIdPresent(v13);
      (*(*v13 + 32))(v13, v27);
      SuplEndRecd::TerminateSession(v13, 0, 3);
      if (*__str)
      {
        v30 = *__str;
        operator delete(*__str);
      }
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v16), "SPL", 69, "ProcessSuplRequest", 1028);
      LbsOsaTrace_WriteLog(0x12u, __str, v17, 0, 1);
    }

    goto LABEL_38;
  }

  if (v3 == 1)
  {
    v7 = *(this + 52);
    if (!v7)
    {
      v8 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
      v9 = v8;
      if (v8)
      {
        SuplState::SuplState(v8);
        *v9 = &unk_2A1F88940;
      }

      SuplSession::SetSuplStateObject(this, v9);
      v7 = *(this + 52);
      if (!v7)
      {
        if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }
    }

    SuplState::UpdateState(v7, 7, this);
    v10 = *(this + 52);
    v11 = *MEMORY[0x29EDCA608];

    SuplEndRecd::TerminateSession(v10, 0, 3);
  }

  else
  {
    if (v3 == 3)
    {
      v4 = *(Instance + 16);
      if (!v4)
      {
        goto LABEL_28;
      }

      while (*v4 != *(this + 94))
      {
        v4 = *(v4 + 8);
        if (!v4)
        {
          goto LABEL_28;
        }
      }

      v18 = *(v4 + 16);
      if (v18 && !*(v18 + 17))
      {
        SuplUtils::FillSetCapabilities(Instance, this + 432, *(*(v18 + 40) + 5), *(this + 133));
      }

      else
      {
LABEL_28:
        if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v19), "SPL", 69, "ProcessSuplRequest", 513);
          LbsOsaTrace_WriteLog(0x12u, __str, v20, 0, 1);
        }
      }

      v21 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
      v22 = v21;
      if (v21)
      {
        SuplState::SuplState(v21);
        *v22 = &unk_2A1F88940;
      }

      SuplSession::SetSuplStateObject(this, v22);
      v23 = *(this + 52);
      if (v23)
      {
        SuplState::UpdateState(v23, 0, this);
LABEL_38:
        v26 = *MEMORY[0x29EDCA608];
        return;
      }

      if (!LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        goto LABEL_38;
      }

LABEL_37:
      bzero(__str, 0x410uLL);
      v24 = mach_continuous_time();
      v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v24), "SPL", 69, "ProcessSuplRequest", 1537);
      LbsOsaTrace_WriteLog(0x12u, __str, v25, 0, 1);
      goto LABEL_38;
    }

    v14 = *(this + 52);
    v15 = *MEMORY[0x29EDCA608];

    SuplSessionVer2::ProcessSuplRequest((this + 24), this + 380, v14, this + 432);
  }
}

_BYTE *SuplSession::UpdateTimer(_BYTE *result, int a2)
{
  v2 = result;
  v13 = *MEMORY[0x29EDCA608];
  if (a2 == 6)
  {
    if (result[408] == 1)
    {
      v3 = *(SuplUtils::GetInstance(result) + 32);
      v4 = v3 == 0;
      v5 = 10000;
      goto LABEL_7;
    }

LABEL_13:
    v8 = *MEMORY[0x29EDCA608];
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (a2 == 4)
  {
    if (result[408] == 1)
    {
      v3 = *(SuplUtils::GetInstance(result) + 28);
      v4 = v3 == 0;
      v5 = 11000;
LABEL_7:
      if (v4)
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }

      LcsTimer::SetTimeout((v2 + 392), v6);
      v7 = *MEMORY[0x29EDCA608];

      return LcsTimer::Start((v2 + 392));
    }

    goto LABEL_13;
  }

  v10 = *MEMORY[0x29EDCA608];
  v11 = *MEMORY[0x29EDCA608];
  v12 = (result + 392);

  return LcsTimer::Stop(v12);
}

uint64_t SuplSession::ConnectInd(int *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  Instance = LcsSuplGlueLayer::GetInstance(a1);
  LcsSuplGlueLayer::SendSuplConnectionStatus(Instance, a1[94], a2);
  if (a2 == 6)
  {
    v5 = *(*SuplSession::GetSuplStateObject(a1) + 16);
    v6 = *MEMORY[0x29EDCA608];

    return v5();
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "SPL", 69, "ConnectInd", 514);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __str, v10, 0, 1);
    }

    v23 = -1;
    v22 = -17;
    *__str = -1;
    memset(v25, 0, sizeof(v25));
    v26 = -1;
    v27 = 0;
    v29 = 0;
    v30 = 0;
    v28[0] = 0;
    *(v28 + 3) = 0;
    v11 = SuplProvider::GetInstance(IsLoggingAllowed);
    v12 = a1[94];
    v13 = LcsSuplGlueLayer::GetInstance(v11);
    v14 = (**v13)(v13, &v22, __str, v12);
    *(v11 + 6) = *(v11 + 5);
    v15 = SuplPosPayloadHandler::GetInstance(v14);
    v16 = a1 + 94;
    v17 = a1[94];
    v18 = LcsSuplGlueLayer::GetInstance(v15);
    (*(*v18 + 8))(v18, v17, a2, 0);
    v19 = SuplPosPayloadHandler::ResetLppParams(v15);
    v20 = SuplProvider::GetInstance(v19);
    result = SuplProvider::Disconnect(v20, *v16);
    v21 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t SuplSession::GetSuplStateObject(SuplSession *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (!*(this + 52))
  {
    if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "GetSuplStateObject", 513);
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
    }

    v4 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
    if (v4)
    {
      v5 = v4;
      SuplState::SuplState(v4);
      *v5 = &unk_2A1F88940;
      *(this + 52) = v5;
    }

    else
    {
      *(this + 52) = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "GetSuplStateObject", 1537);
        LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
      }
    }
  }

  result = *(this + 52);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplSession::DisconnectInd(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 376);
  v4 = *(a1 + 416);
  if (v4 && *(v4 + 16) != 7)
  {
    SuplState::UpdateState(v4, 7, a1);
    v4 = SuplEndRecd::TerminateSession(*(a1 + 416), -1, a2);
  }

  Instance = SuplProvider::GetInstance(v4);
  v7 = *MEMORY[0x29EDCA608];

  return SuplProvider::Disconnect(Instance, v3);
}

uint64_t SuplSession::ReceiveDataInd(uint64_t result, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a2 == a2[1])
  {
    v6 = *MEMORY[0x29EDCA608];
    v7 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v2 = result;
    v3 = LcsTimer::Stop((result + 392));
    *(SuplUtils::GetInstance(v3) + 272) = *(v2 + 133);
    v4 = *(*SuplSession::GetSuplStateObject(v2) + 40);
    v5 = *MEMORY[0x29EDCA608];

    return v4();
  }

  return result;
}

void SuplSession::OnTimerEvent(SuplSession *this)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(this + 52))
  {
    if (*(this + 396) != 1 && LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v2), "SPL", 69, "OnTimerEvent", 1028);
      LbsOsaTrace_WriteLog(0x12u, __str, v3, 0, 1);
    }

    *(this + 396) = 0;
    std::vector<unsigned char>::vector[abi:ne200100](__str, 3000);
    v7[0] = __str;
    v7[1] = 0;
    v8 = 0;
    SuplState::UpdateState(*(this + 52), 7, this);
    (*(**(this + 52) + 32))(*(this + 52), v7);
    SuplEndRecd::TerminateSession(*(this + 52), -8, 17);
    if (*__str)
    {
      v10 = *__str;
      operator delete(*__str);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "SPL", 69, "OnTimerEvent", 513);
    LbsOsaTrace_WriteLog(0x12u, __str, v5, 0, 1);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t SuplSession::SetSuplStateObject(SuplSession *this, SuplState *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = *(this + 53);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v5 = *(this + 52);
    *(this + 52) = a2;
    *(this + 53) = v5;
  }

  else
  {
    result = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "SPL", 69, "SetSuplStateObject", 515);
      result = LbsOsaTrace_WriteLog(0x12u, __str, v7, 0, 1);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SuplSession::GetSuplInitRecd(SuplSession *this)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(SuplUtils::GetInstance(this) + 16);
  if (v2)
  {
    while (*v2 != *(this + 94))
    {
      v2 = *(v2 + 8);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    result = *(v2 + 16);
  }

  else
  {
LABEL_4:
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *SuplSession::SetAidMask(SuplSession *this, SuplAsstDataNeededInfo *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *(this + 228) = *a2;
  *(this + 58) = *(a2 + 1);
  if ((this + 456) != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 59, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 62, *(a2 + 5), *(a2 + 6), *(a2 + 6) - *(a2 + 5));
  }

  *(this + 520) = *(a2 + 64);
  v4 = *MEMORY[0x29EDCA608];

  return SuplSessionVer2::RequestLppAdPayLoad((this + 24));
}

uint64_t SuplSession::ProcessAbortRequest(SuplSession *this, int a2)
{
  __p[130] = *MEMORY[0x29EDCA608];
  v4 = *(this + 52);
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = operator new(0x168uLL, MEMORY[0x29EDC9418]);
  v6 = v5;
  if (v5)
  {
    SuplState::SuplState(v5);
    *v6 = &unk_2A1F88940;
  }

  SuplSession::SetSuplStateObject(this, v6);
  v4 = *(this + 52);
  if (v4)
  {
LABEL_5:
    SuplState::UpdateState(v4, 7, this);
    v7 = *(this + 52);
    if (!a2)
    {
      *(*(v7 + 5) + 432) = 18;
      *(*(v7 + 5) + 1) = 1;
      std::vector<unsigned char>::vector[abi:ne200100](__p, 3000);
      v18[0] = __p;
      v18[1] = 0;
      v19 = 0;
      SuplEndRecd::SetSessionIdPresent(v7);
      (*(*v7 + 32))(v7, v18);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    result = SuplEndRecd::TerminateSession(v7, 0, 3);
  }

  else
  {
    IsLoggingAllowed = LbsOsaTrace_IsLoggingAllowed(0x12u, 0, 0, 0);
    if (IsLoggingAllowed)
    {
      bzero(__p, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__p, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v11), "SPL", 69, "ProcessAbortRequest", 1537);
      IsLoggingAllowed = LbsOsaTrace_WriteLog(0x12u, __p, v12, 0, 1);
    }

    Instance = SuplPosPayloadHandler::GetInstance(IsLoggingAllowed);
    v14 = *(this + 94);
    v15 = LcsSuplGlueLayer::GetInstance(Instance);
    (*(*v15 + 8))(v15, v14, 3, 0);
    v16 = SuplPosPayloadHandler::ResetLppParams(Instance);
    v17 = SuplProvider::GetInstance(v16);
    result = SuplProvider::Disconnect(v17, *(this + 94));
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Validate_Cor(char *result, double *a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int a6, char *a7, _BYTE *a8, uint64_t a9, _WORD *a10, uint64_t a11, uint64_t a12, double *a13, double *a14, uint64_t a15, uint64_t a16, _DWORD *a17, _DWORD *a18, _DWORD *a19, _DWORD *a20, unsigned int *a21, uint64_t a22)
{
  v103 = *MEMORY[0x29EDCA608];
  *(a15 + 7) = 0;
  *a15 = 0;
  v23 = *(a12 + 16);
  *a16 = *a12;
  *(a16 + 16) = v23;
  v24 = *(a12 + 32);
  v25 = *(a12 + 48);
  v26 = *(a12 + 64);
  *(a16 + 80) = *(a12 + 80);
  *(a16 + 48) = v25;
  *(a16 + 64) = v26;
  *(a16 + 32) = v24;
  v27 = (a4 + 16);
  for (i = 40; i != 64; i += 8)
  {
    v29 = *(v27 - 1) * *(a12 + 48) + *(v27 - 2) * *(a12 + 40);
    v30 = *v27;
    v27 += 3;
    *(a16 + i) = v29 + v30 * *(a12 + 56);
  }

  v31 = (a4 + 16);
  do
  {
    v32 = *(v31 - 1) * *(a12 + 72) + *(v31 - 2) * *(a12 + 64);
    v33 = *v31;
    v31 += 3;
    *(a16 + i) = v32 + v33 * *(a12 + 80);
    i += 8;
  }

  while (i != 88);
  for (j = 0; j != 11; ++j)
  {
    v96[j] = *(a16 + j * 8) * *(a16 + j * 8);
    v91.f64[j] = *(a3 + j * 8) * 16.0;
  }

  v35 = vdupq_n_s64(0x40C3880000000000uLL);
  v36 = vmaxnmq_f64(v91, v35);
  v37 = vmaxnmq_f64(v92, xmmword_299761780);
  v91 = v36;
  v92 = v37;
  v38 = vmaxnmq_f64(v93, v35);
  v93 = v38;
  v39 = vmaxnmq_f64(v94, xmmword_299761780);
  v94 = v39;
  v40 = vmaxnmq_f64(v95, vdupq_n_s64(0x4079000000000000uLL));
  v95 = v40;
  v41 = fabs(*(a16 + 32));
  *a17 = v41;
  v42 = 0.0;
  v43 = 7;
  do
  {
    v42 = v42 + *(a16 + 8 * v43) * *(a16 + 8 * v43);
    v44 = v43 - 4;
    --v43;
  }

  while (v44 > 1);
  *a18 = sqrt(v42);
  v45 = 0.0;
  *a19 = sqrt(*(a16 + 48) * *(a16 + 48) + 0.0 + *(a16 + 40) * *(a16 + 40));
  *a20 = fabs(*(a16 + 56));
  v46 = 10;
  do
  {
    v45 = v45 + *(a16 + 8 * v46) * *(a16 + 8 * v46);
    v47 = v46 - 7;
    --v46;
  }

  while (v47 > 1);
  *a21 = sqrt(v45);
  if (*a9)
  {
    goto LABEL_156;
  }

  if (*a7)
  {
    v48 = 1;
    v49 = 1;
  }

  else
  {
    v49 = a13[1] >= 5.0;
    v48 = a13[2] >= 5.0;
    if (*a13 < 5.0 && (*a2 >= 100000000.0 || v96[0] >= v36.f64[0]))
    {
      goto LABEL_25;
    }
  }

  if (result[7] || *(result + 7) == 1 || *(result + 8) == 2 || fabs(*a16) < fmin(*a13, 5.0))
  {
    *a15 = 1;
  }

LABEL_25:
  if (v49 || (a2[1] < 100000000.0 ? (v51 = v96[1] < v36.f64[1]) : (v51 = 0), v51))
  {
    if (result[12] || *(result + 7) == 1 || *(result + 8) == 2 || fabs(*(a16 + 8)) < fmin(a13[1], 5.0))
    {
      *(a15 + 1) = 1;
    }
  }

  if (v48 || (a2[2] < 100000000.0 ? (v52 = v96[2] < v37.f64[0]) : (v52 = 0), v52))
  {
    if (result[17] || *(result + 7) == 1 || *(result + 9) == 2 || fabs(*(a16 + 16)) < fmin(a13[2], 5.0))
    {
      *(a15 + 2) = 1;
    }
  }

  v53 = *a7;
  if ((*a7 & 1) == 0 && (a2[3] >= 900.0 || v96[3] >= v37.f64[1]))
  {
    v53 = 0;
    goto LABEL_84;
  }

  if (result[5] || *(result + 10) == 1 || fabs(*(a16 + 24)) < fmin(a13[3], 0.5))
  {
    *(a15 + 3) = 1;
    v53 = *a7;
  }

  if ((v53 & 1) == 0)
  {
LABEL_84:
    if (a2[5] >= 100000000.0 || a2[6] >= 100000000.0 || a2[7] >= 100000000.0 || v97 >= v38.f64[0] || v98 >= v38.f64[1] || v99 >= v39.f64[0])
    {
      goto LABEL_90;
    }
  }

  v54 = *(result + 12);
  v55 = *(result + 13);
  if (v54 == 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = 3;
  }

  v57 = v56 - (v55 == 1);
  v58 = result[2];
  if (v57 <= v58 || v97 < a14[5] && v98 < a14[6] && v99 < a14[7])
  {
    goto LABEL_82;
  }

  if (v54)
  {
    v59 = v58 + 2;
  }

  else
  {
    v59 = result[2];
  }

  if (v55)
  {
    ++v59;
  }

  if (*(result + 7))
  {
    ++v59;
  }

  if (*(result + 15) || *(result + 16))
  {
    ++v59;
  }

  if (*(result + 17) || *(result + 19))
  {
    ++v59;
  }

  if (*(result + 18) || *(result + 20))
  {
    ++v59;
  }

  if (*(result + 21) || *(result + 22))
  {
    ++v59;
  }

  if (v59 >= 3)
  {
LABEL_82:
    *(a15 + 5) = 1;
    v53 = *a7;
  }

LABEL_90:
  if ((v53 & 1) == 0)
  {
    v64 = *a5;
    v65 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[8] >= v65)
    {
      goto LABEL_142;
    }

    v66 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[9] >= v66)
    {
      goto LABEL_142;
    }

    v70 = v64 > 8 ? 100000000.0 : dbl_299761798[v64];
    if (a2[10] >= v70 || v100 >= v39.f64[1] || v101 >= v40.f64[0] || v102 >= v40.f64[1])
    {
      goto LABEL_142;
    }
  }

  v60 = *(result + 14);
  if (v60 == 1)
  {
    v61 = 2;
  }

  else
  {
    v61 = 3;
  }

  v62 = result[5];
  if (v61 <= v62 || v100 < a14[8] && v101 < a14[9] && v102 < a14[10])
  {
    goto LABEL_126;
  }

  if (v62 >= 2 && *(a15 + 3) == 1)
  {
    v63 = (v62 - 1);
  }

  else
  {
    v63 = 0;
  }

  if (v60)
  {
    v67 = v63 + 1;
  }

  else
  {
    v67 = v63;
  }

  if (*(result + 10))
  {
    ++v67;
  }

  if (*(result + 15) || *(result + 16))
  {
    ++v67;
  }

  if (*(result + 17) || *(result + 19))
  {
    ++v67;
  }

  if (*(result + 18) || *(result + 20))
  {
    ++v67;
  }

  if (*(result + 21) || *(result + 22))
  {
    ++v67;
  }

  if (v67 > 2)
  {
LABEL_126:
    v68 = 1;
    v69 = 8;
LABEL_127:
    *(a15 + v69) = v68;
    goto LABEL_142;
  }

  if (!result[2] && *(result + 12) != 1 && *(result + 13) != 1 && *(result + 7) != 1)
  {
    v68 = 0;
    v69 = 5;
    goto LABEL_127;
  }

LABEL_142:
  if ((*(result + 6) - 1) < 2)
  {
    goto LABEL_143;
  }

  if (result[2] >= 3u && ((*a15 & 1) != 0 || (*(a15 + 1) & 1) != 0 || *(a15 + 2) == 1) && *(a15 + 5) == 1 && a2[4] < 250000.0)
  {
    v71 = 0;
    v72 = 0.0;
    do
    {
      v72 = v72 + a2[v71 + 5];
      ++v71;
    }

    while (v71 != 3);
    if (v72 < 250000.0)
    {
      goto LABEL_143;
    }
  }

  if ((*a7 & 1) == 0 && a2[4] < 100.0 && v41 < a13[4])
  {
LABEL_143:
    *(a15 + 4) = 1;
  }

LABEL_156:
  if (*a18 >= 0xC351u && *(a15 + 5) == 1 && (*a7 & 1) == 0)
  {
    v73 = 0;
    *(a15 + 7) = 0;
    *a15 = 0;
    *a9 = 1;
    *(a9 + 4) = 96;
    *a8 = 0;
    *a7 = 1;
    do
    {
      a13[v73] = 10098990.0;
      a14[v73] = 1.00979801e14;
      *(a22 + v73++) = 0;
    }

    while (v73 != 11);
    v90 = a5;
    v74 = a8;
    v75 = 0;
    *(a11 + 412) = 1;
    *&v76 = 0x101010101010101;
    *(&v76 + 1) = 0x101010101010101;
    *(a11 + 380) = v76;
    *(a11 + 396) = v76;
    *(a11 + 364) = v76;
    v77 = vdupq_n_s32(a6);
    do
    {
      *(a11 + 416 + v75) = v77;
      v75 += 16;
    }

    while (v75 != 192);
    result = EvCrt_v("ChanReset ALL : NKVC %d %d", *a18, *a21);
    a8 = v74;
    a5 = v90;
  }

  if (*a7 == 1 && *a18 >= 0x927C01u && *(a15 + 5) == 1)
  {
    v78 = 9600000.0 / *a18;
    *a12 = vmulq_n_f64(*a12, v78);
    *(a12 + 16) = v78 * *(a12 + 16);
    v79 = 7;
    do
    {
      *(a12 + 8 * v79) = v78 * *(a12 + 8 * v79);
      v80 = v79 - 4;
      --v79;
    }

    while (v80 > 1);
    v81 = 0;
    *(a15 + 3) = 0x10000;
    *a15 = 257;
    *(a15 + 2) = 1;
    v82 = *(a12 + 16);
    *a16 = *a12;
    *(a16 + 16) = v82;
    v83 = *(a12 + 32);
    v84 = *(a12 + 48);
    v85 = *(a12 + 64);
    *(a16 + 80) = *(a12 + 80);
    *(a16 + 48) = v84;
    *(a16 + 64) = v85;
    *(a16 + 32) = v83;
    *a8 = 0;
    do
    {
      a13[v81] = 10098990.0;
      a14[v81++] = 1.00979801e14;
    }

    while (v81 != 11);
  }

  if (*a5 >= 5u)
  {
    v86 = 1200;
  }

  else
  {
    v86 = 600;
  }

  if (*(a15 + 3) == 1 && fabs(*(a12 + 24)) > 15000.0 || (v87 = *(a15 + 8), v87 == 1) && *a21 > v86)
  {
    LOBYTE(v87) = 0;
    *(a15 + 3) = 0;
    *(a15 + 8) = 0;
    if (*a10 <= 2u)
    {
      LOBYTE(v87) = 0;
      *a10 = 3;
    }
  }

  if (*a18 >= 0x1D4C1u)
  {
    LOBYTE(v87) = 0;
    *(a15 + 3) = 0;
    *(a15 + 8) = 0;
  }

  v88 = *(a15 + 5);
  *(a15 + 6) = v88;
  *(a15 + 7) = v88;
  *(a15 + 9) = v87;
  *(a15 + 10) = v87;
  v89 = *MEMORY[0x29EDCA608];
  return result;
}

void Apply_Q_Boost(double a1, unsigned int a2, unsigned int a3, double *a4, unsigned int *a5, double *a6)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  do
  {
    bzero(a6, 8 * a2);
    a6[a2++] = 1.0;
    v13 = 0;
    if (a1 > 0.0)
    {
      rnk1_core(a4, a2, a1, a6, &v13);
      if (v13)
      {
        ++*a5;
      }
    }

    --v11;
  }

  while (v11);
  v12 = *MEMORY[0x29EDCA608];
}

void Hal_GpioNotification()
{
  v7 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) >= 0xFFFFFFFC)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v3 = mach_continuous_time();
      v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: No UartLp,Incorrect ntf\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal_GpioNotification");
      LbsOsaTrace_WriteLog(0xDu, __str, v4, 2, 1);
    }

    goto LABEL_11;
  }

  v0 = g_GpioNotifCB;
  if (g_IsProdMode != 1 || g_GpioNotifCB == 0)
  {
LABEL_11:
    v5 = *MEMORY[0x29EDCA608];
    return;
  }

  v2 = *MEMORY[0x29EDCA608];

  v0();
}

uint64_t Hal25_SetGetLowPowerStatus(int a1, char a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a3 || (a1 & 1) != 0)
  {
    if (gnssOsa_MacEnterCriticalSection("Hal25_SetGetLowPowerStatus", 624, &stru_2A1972028))
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a1)
      {
        _MergedGlobals_8 = a2;
      }

      else
      {
        *a3 = _MergedGlobals_8;
      }

      result = gnssOsa_MacExitCriticalSection("Hal25_SetGetLowPowerStatus", 638, &stru_2A1972028);
      if (!result)
      {
        goto LABEL_15;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        goto LABEL_15;
      }
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx UartLPState\n");
    goto LABEL_14;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
LABEL_14:
    result = LbsOsaTrace_WriteLog(0xDu, __str, v7, 0, 1);
  }

LABEL_15:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_CommsItfInitialize(void)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) > 0xFFFFFFFB)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v10 = mach_continuous_time();
      v11 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "HAL", 73, "Hal_CommsInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v11, 4, 1);
    }

    if (gp_Comm)
    {
      if (Hal25_OpenTtyPort())
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v12 = mach_continuous_time();
          v13 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "HAL", 73, "Hal_CommsInitPcie");
          LbsOsaTrace_WriteLog(0xDu, __str, v13, 4, 1);
        }

        goto LABEL_21;
      }

      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        goto LABEL_33;
      }

      bzero(__str, 0x410uLL);
      v19 = mach_continuous_time();
      v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx open port\n", (*&g_MacClockTicksToMsRelation * v19), "HAL", 69, "Hal_CommsInitPcie", 1293);
      LbsOsaTrace_WriteLog(0xDu, __str, v20, 0, 1);
    }

    else
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
      if (!result)
      {
        goto LABEL_33;
      }

      bzero(__str, 0x410uLL);
      v17 = mach_continuous_time();
      v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n", (*&g_MacClockTicksToMsRelation * v17), "HAL", 69, "Hal_CommsInitPcie", 513);
      LbsOsaTrace_WriteLog(0xDu, __str, v18, 0, 1);
    }

LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v0 = mach_continuous_time();
    v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsInitUart");
    LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
  }

  if (!gp_Gpio)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v15 = mach_continuous_time();
    v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpio obj\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal_CommsInitUart", 513);
    LbsOsaTrace_WriteLog(0xDu, __str, v16, 0, 1);
    goto LABEL_32;
  }

  if (!gp_Comm)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v21 = mach_continuous_time();
    v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n", (*&g_MacClockTicksToMsRelation * v21), "HAL", 69, "Hal_CommsInitUart", 513);
    LbsOsaTrace_WriteLog(0xDu, __str, v22, 0, 1);
    goto LABEL_32;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal25_ResetChip");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  (*(*gp_Gpio + 16))(gp_Gpio);
  usleep(0x2710u);
  (*(*gp_Gpio + 24))(gp_Gpio);
  usleep(0x2710u);
  if ((Hal25_OpenTtyPort() & 1) == 0)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_33;
    }

    bzero(__str, 0x410uLL);
    v23 = mach_continuous_time();
    v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx open port\n", (*&g_MacClockTicksToMsRelation * v23), "HAL", 69, "Hal_CommsInitUart", 1293);
    LbsOsaTrace_WriteLog(0xDu, __str, v24, 0, 1);
    goto LABEL_32;
  }

  if (g_IsProdMode == 1)
  {
    v26[0] = &unk_2A1F8ABE8;
    v26[1] = Hal_GpioNotification;
    v26[3] = v26;
    (*(*gp_Gpio + 56))(gp_Gpio, v26);
    std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v26);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = mach_continuous_time();
    v5 = *&g_MacClockTicksToMsRelation;
    v6 = (*(*gp_Comm + 136))(gp_Comm);
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: commTimeout,%fsec\n", (v5 * v4), "HAL", 73, "Hal_CommsInitUart", v6);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "HAL", 73, "Hal_CommsInitUart");
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 4, 1);
  }

LABEL_21:
  result = 1;
LABEL_33:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Hal_CommsItfUpdateStatus(int a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1 <= 1)
  {
    if (!a1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Nonfunctional\n");
        goto LABEL_14;
      }

      goto LABEL_19;
    }

    if (a1 == 1)
    {
      result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Gnss-functional\n");
LABEL_14:
        v5 = v3;
        v6 = 5;
        goto LABEL_18;
      }

      goto LABEL_19;
    }

LABEL_10:
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 2, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: default,%u\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 87, "Hal_CommsItfUpdateStatus", a1);
      v6 = 2;
LABEL_18:
      result = LbsOsaTrace_WriteLog(0xDu, __str, v5, v6, 1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (a1 == 2)
  {
    if (!(*(*gp_Comm + 120))(gp_Comm))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: enterLowPowerMode fail\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 69, "Hal_CommsItfUpdateStatus");
        LbsOsaTrace_WriteLog(0xDu, __str, v10, 0, 1);
      }

      snprintf(v13, 0x400uLL, "ASSERT: %s %d UARTLP: Gnss::Comm::enterLowPowerMode returned false", "Hal_CommsItfUpdateStatus", 250);
      if (LbsOsaTrace_IsLoggingAllowed(0xEu, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v11), "OSA", 69, "Hal_CommsItfUpdateStatus", v13);
        LbsOsaTrace_WriteLog(0xEu, __str, v12, 0, 1);
      }

      gnssOsa_FlushLog();
      __assert_rtn("Hal_CommsItfUpdateStatus", "hal25IosAdapt.cpp", 251, "false && Enter low power failed (RTS pull high)");
    }

    Hal25_SetGetLowPowerStatus(1, 2, 0);
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Sending LP ACK, enterLowPowerMode\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 73, "Hal_CommsItfUpdateStatus");
      v6 = 4;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    goto LABEL_10;
  }

  result = LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0);
  if (result)
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: LowPower\n");
    goto LABEL_14;
  }

LABEL_19:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal_CommsItfDeInitialize(void)
{
  v21 = *MEMORY[0x29EDCA608];
  if ((g_HwProduct - 5) > 0xFFFFFFFB)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v9), "HAL", 73, "Hal_CommsDeInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v10, 4, 1);
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Skipping GnssPort close\n", (*&g_MacClockTicksToMsRelation * v11), "HAL", 73, "Hal_CommsDeInitPcie");
      LbsOsaTrace_WriteLog(0xDu, __str, v12, 4, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v13 = mach_continuous_time();
      v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v13), "HAL", 73, "Hal_CommsDeInitPcie");
      result = LbsOsaTrace_WriteLog(0xDu, __str, v14, 4, 1);
    }
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v0 = mach_continuous_time();
      v1 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v1, 4, 1);
    }

    (*(*gp_Gpio + 16))(gp_Gpio);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v2 = mach_continuous_time();
      v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssEn low\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
    }

    (*(*gp_Comm + 24))(gp_Comm);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GnssPort close\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v5, 4, 1);
    }

    v19 = 0;
    v17 = 0;
    (*(*gp_Gpio + 56))(gp_Gpio, v16);
    std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v16);
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal_CommsDeinitUart");
      LbsOsaTrace_WriteLog(0xDu, __str, v7, 4, 1);
    }

    result = std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](v18);
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DBA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Hal_CommsItfWriteData(unsigned __int8 *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = g_HwProduct - 5;
  v5 = (*(*gp_Comm + 32))(gp_Comm);
  if (v4 <= 0xFFFFFFFB)
  {
    if (v5)
    {
      if ((*(*gp_Comm + 96))(gp_Comm, a1, a2))
      {
        if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Writesuccess,%u\n", v6, "HAL", 68, "Hal_CommsItfWriteDataUart", a2);
LABEL_10:
          LbsOsaTrace_WriteLog(0xDu, __str, v7, 5, 1);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_20;
    }

LABEL_14:
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_19:
    LbsOsaTrace_WriteLog(0xDu, __str, v9, 0, 1);
    goto LABEL_20;
  }

  if ((v5 & 1) == 0)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (((*(*gp_Comm + 96))(gp_Comm, a1, a2) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
LABEL_18:
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_19;
    }

LABEL_20:
    a2 = 0xFFFFFFFFLL;
    goto LABEL_21;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Writesuccess,%u\n", v8, "HAL", 68, "Hal_CommsItfWriteDataPcie", a2);
    goto LABEL_10;
  }

LABEL_21:
  v10 = *MEMORY[0x29EDCA608];
  return a2;
}

uint64_t Hal_CommsItfReadData(unsigned __int8 *a1, unsigned int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (((*(*gp_Comm + 32))(gp_Comm) & 1) == 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Port\n");
LABEL_9:
      LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
    }

LABEL_10:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  v4 = (*(*gp_Comm + 56))(gp_Comm, a1, a2);
  if (v4 < 0)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = v4;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v6 = mach_continuous_time();
    v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read,%zd\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 68, "Hal_CommsItfReadData", v5);
    LbsOsaTrace_WriteLog(0xDu, __str, v7, 5, 1);
  }

LABEL_11:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Hal_SetReadCbAsync(void (*a1)(unsigned __int8 *, unsigned int))
{
  v11[4] = *MEMORY[0x29EDCA608];
  if (!a1 || !gp_Comm)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0);
    if (!result)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v5 = mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: failed\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 73, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v11[0] = &unk_2A1F8AC98;
  v11[1] = a1;
  v11[3] = v11;
  v1 = (*(*gp_Comm + 80))(gp_Comm, v11);
  std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](v11);
  if (!v1)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_12;
    }

    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read cb set failed\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 69, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 0, 1);
    goto LABEL_11;
  }

  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: read via cb\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal_SetReadCbAsync");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  result = 1;
LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal25_TriggerTimeMarkStrobe(unsigned int *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = mach_continuous_time();
    v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: \n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 73, "Hal25_TriggerTimeMarkStrobe");
    LbsOsaTrace_WriteLog(0xDu, __str, v3, 4, 1);
  }

  if ((g_HwProduct - 5) <= 0xFFFFFFFB)
  {
    if (gp_Gpio)
    {
      (*(*gp_Gpio + 48))(__str);
      v4 = *__str;
      v5 = v13;
      if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        mach_continuous_time();
        v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TM trigger via gpio interface\n");
LABEL_10:
        LbsOsaTrace_WriteLog(0xDu, __str, v6, 4, 1);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx gpio obj\n");
LABEL_20:
    LbsOsaTrace_WriteLog(0xDu, __str, v10, 0, 1);
    result = 0;
    goto LABEL_21;
  }

  if (!gp_Comm)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xDu, 0, 0, 0);
    if (!result)
    {
      goto LABEL_21;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx comm obj\n");
    goto LABEL_20;
  }

  (*(*gp_Comm + 144))(__str);
  v4 = *__str;
  v5 = v13;
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v6 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: TM trigger via comm interface\n");
    goto LABEL_10;
  }

LABEL_11:
  if (LbsOsaTrace_IsLoggingAllowed(0xDu, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v7 = mach_continuous_time();
    v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Time LB,%llu,UB,%llu\n", (*&g_MacClockTicksToMsRelation * v7), "HAL", 68, "Hal25_TriggerTimeMarkStrobe", v4, v5);
    LbsOsaTrace_WriteLog(0xDu, __str, v8, 5, 1);
  }

  if (a1)
  {
    *a1 = (((v5 + v4) >> 1) / 1000000.0 + 0.5);
  }

  result = 1;
LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal25_OpenTtyPort(void)
{
  v4 = *MEMORY[0x29EDCA608];
  if ((*(*gp_Comm + 16))(gp_Comm))
  {
    v0 = *(*gp_Comm + 112);
    v1 = *MEMORY[0x29EDCA608];

    return v0();
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

void std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::~__func()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::__clone(uint64_t result, void *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  *a2 = &unk_2A1F8ABE8;
  a2[1] = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::destroy_deallocate(void *__p)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::operator()(uint64_t a1, unsigned int *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *MEMORY[0x29EDCA608];

  return v2(v3);
}

uint64_t std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::target(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  {
    result = a1 + 8;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__function::__func<void (*)(GnssHal::GpioNotification),std::allocator<void (*)(GnssHal::GpioNotification)>,void ()(GnssHal::GpioNotification)>::target_type()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__value_func<void ()(GnssHal::GpioNotification)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::~__func()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C29EB20);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(result + 8);
  *a2 = &unk_2A1F8AC98;
  a2[1] = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  operator delete(__p);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a3;
  v6 = *MEMORY[0x29EDCA608];

  return v3(v4, v5);
}

uint64_t std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  {
    result = a1 + 8;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::__function::__func<void (*)(unsigned char *,unsigned int),std::allocator<void (*)(unsigned char *,unsigned int)>,void ()(unsigned char *,unsigned long)>::target_type()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
}

uint64_t std::__function::__value_func<void ()(unsigned char *,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

void gnss::GnssAdaptDevice::injectAssistanceFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v8 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_18;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v13, a5);
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v14, a4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v6, v7, v7 - v6);
    dispatch_async(v8, block);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v14);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v13);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = mach_continuous_time();
    v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v9), "ADP", 69, "injectAssistanceFile", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v10, 0, 1);
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice20injectAssistanceFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS_16SvPositionSourceENS1_8functionIFvONS_24DecodedExtendedEphemerisEEEENS8_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v41[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectAssistanceFile_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v5 = v2 + 344;
    if (__str != (v2 + 344))
    {
      v6 = v40;
      v7 = *(v2 + 368);
      if (v40 == __str)
      {
        if (v7 == v5)
        {
          (*(*v40 + 24))();
          (*(*v40 + 32))(v40);
          v40 = 0;
          (*(**(v2 + 368) + 24))(*(v2 + 368), __str);
          (*(**(v2 + 368) + 32))(*(v2 + 368));
          *(v2 + 368) = 0;
          v40 = __str;
          (*(v41[0] + 24))(v41, v2 + 344);
          (*(v41[0] + 32))(v41);
        }

        else
        {
          (*(*v40 + 24))();
          (*(*v40 + 32))(v40);
          v40 = *(v2 + 368);
        }

        *(v2 + 368) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 368), __str);
        (*(**(v2 + 368) + 32))(*(v2 + 368));
        *(v2 + 368) = v40;
        v40 = __str;
      }

      else
      {
        v40 = *(v2 + 368);
        *(v2 + 368) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](__str);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 == v14)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v19 = mach_continuous_time();
        v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Prediction\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 69, "injectAssistanceFile_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v20, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 68, "injectAssistanceFile_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v22, 5, 1);
      }
    }

    else if ((v14 - v13 - 427673) >= 0xFFFFFFFFFFF979E7)
    {
      v23 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v23, v35);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
      v24 = GNS_EeInjectOrbitData(v23, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v24 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v25 = mach_continuous_time();
          v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: EESize,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 73, "injectAssistanceFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          LbsOsaTrace_WriteLog(0x18u, __str, v26, 4, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v27 = mach_continuous_time();
          v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "injectAssistanceFile_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v24, v34, "injectAssistanceFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v23);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeInjectOrbitData Resp,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectAssistanceFile_block_invoke", 257, v24);
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectAssistanceFile_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "injectAssistanceFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v15 = mach_continuous_time();
        v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx File size,%u\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "injectAssistanceFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v16, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v17 = mach_continuous_time();
        v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 68, "injectAssistanceFile_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v18, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v38, "injectAssistanceFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectAssistanceFile_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "injectAssistanceFile_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DDB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 13), *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DDC3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](a1 + 72);
  v3 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::injectRtiFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v7 = *(a1 + 288);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_1;
    block[4] = a1;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a4);
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v13, a3);
    __p = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v5, v6, v6 - v5);
    dispatch_async(v7, block);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v13);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v8 = mach_continuous_time();
    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectRtiFile", 513);
    LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice13injectRtiFileEONSt3__16vectorIhNS1_9allocatorIhEEEENS1_8functionIFvONS_10DecodedRtiEEEENS7_IFvNS_6ResultEEEE_block_invoke(uint64_t a1)
{
  v41[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v3 = mach_continuous_time();
    v4 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "injectRtiFile_block_invoke");
    LbsOsaTrace_WriteLog(0x18u, __str, v4, 5, 1);
  }

  if (*(v2 + 88))
  {
    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](__str, a1 + 72);
    v5 = v2 + 376;
    if (__str != (v2 + 376))
    {
      v6 = v40;
      v7 = *(v2 + 400);
      if (v40 == __str)
      {
        if (v7 == v5)
        {
          (*(*v40 + 24))();
          (*(*v40 + 32))(v40);
          v40 = 0;
          (*(**(v2 + 400) + 24))(*(v2 + 400), __str);
          (*(**(v2 + 400) + 32))(*(v2 + 400));
          *(v2 + 400) = 0;
          v40 = __str;
          (*(v41[0] + 24))(v41, v2 + 376);
          (*(v41[0] + 32))(v41);
        }

        else
        {
          (*(*v40 + 24))();
          (*(*v40 + 32))(v40);
          v40 = *(v2 + 400);
        }

        *(v2 + 400) = v5;
      }

      else if (v7 == v5)
      {
        (*(*v7 + 24))(*(v2 + 400), __str);
        (*(**(v2 + 400) + 32))(*(v2 + 400));
        *(v2 + 400) = v40;
        v40 = __str;
      }

      else
      {
        v40 = *(v2 + 400);
        *(v2 + 400) = v6;
      }
    }

    std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](__str);
    v13 = *(a1 + 104);
    v14 = *(a1 + 112);
    if (v13 == v14)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v37, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v37, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v37);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v21 = mach_continuous_time();
        v22 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx FileStore\n", (*&g_MacClockTicksToMsRelation * v21), "ADP", 69, "injectRtiFile_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v22, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v23 = mach_continuous_time();
        v24 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v23), "ADP", 68, "injectRtiFile_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v24, 5, 1);
      }
    }

    else if (v14 - v13 == 160)
    {
      v15 = ++gnss::GnssAdaptDevice::Ga07_00GenerateUID(void)::v_Key;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v35, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(v2, v15, v35);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v35);
      v16 = GNS_EeInjectRtiData(v15, *(a1 + 104), *(a1 + 112) - *(a1 + 104));
      if (v16 == 1)
      {
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v17 = mach_continuous_time();
          v18 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RtiSize,%u\n", (*&g_MacClockTicksToMsRelation * v17), "ADP", 73, "injectRtiFile_block_invoke", *(a1 + 112) - *(a1 + 104));
          LbsOsaTrace_WriteLog(0x18u, __str, v18, 4, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v19 = mach_continuous_time();
          v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 68, "injectRtiFile_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v20, 5, 1);
        }
      }

      else
      {
        std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v34, a1 + 40);
        gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(v2, v16, v34, "injectRtiFile_block_invoke");
        std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v34);
        gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(v2, v15);
        if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EEInjectRti,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 69, "injectRtiFile_block_invoke", 257, v16);
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 0, 1);
        }

        result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
        if (result)
        {
          bzero(__str, 0x410uLL);
          v31 = mach_continuous_time();
          v32 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v31), "ADP", 68, "injectRtiFile_block_invoke");
          result = LbsOsaTrace_WriteLog(0x18u, __str, v32, 5, 1);
        }
      }
    }

    else
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v36, a1 + 40);
      gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 4, v36, "injectRtiFile_block_invoke");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v36);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v25 = mach_continuous_time();
        v26 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Size,%u\n", (*&g_MacClockTicksToMsRelation * v25), "ADP", 69, "injectRtiFile_block_invoke", 515, *(a1 + 112) - *(a1 + 104));
        LbsOsaTrace_WriteLog(0x18u, __str, v26, 0, 1);
      }

      result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 68, "injectRtiFile_block_invoke");
        result = LbsOsaTrace_WriteLog(0x18u, __str, v28, 5, 1);
      }
    }
  }

  else
  {
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v38, a1 + 40);
    gnss::GnssAdaptDevice::Ga07_07AdaptResponse(v2, 7, v38, "injectRtiFile_block_invoke");
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v38);
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "injectRtiFile_block_invoke", 1302);
      LbsOsaTrace_WriteLog(0x18u, __str, v9, 0, 1);
    }

    result = LbsOsaTrace_IsLoggingAllowed(0x18u, 5, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 68, "injectRtiFile_block_invoke");
      result = LbsOsaTrace_WriteLog(0x18u, __str, v12, 5, 1);
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DE86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a1 + 5), a2 + 40);
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100]((a1 + 9), a2 + 72);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  result = std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 13), *(a2 + 104), *(a2 + 112), *(a2 + 112) - *(a2 + 104));
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DE950(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v1 + 72);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t __destroy_helper_block_e8_40c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE72c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE104c40_ZTSKNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](a1 + 72);
  v3 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnss::GnssAdaptDevice::Ga04_00RegisterGnsEeStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, __int128 *a3)
{
  v4 = a1;
  v25 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    if (a3)
    {
      v6 = DeviceInstance;
      v7 = *(a3 + 16);
      v14 = *a3;
      *v15 = *(a3 + 17);
      *&v15[15] = *(a3 + 4);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Api,%u,Status,%u\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse", *(a3 + 1), *(a3 + 2));
        LbsOsaTrace_WriteLog(0x18u, __str, v9, 4, 1);
      }

      v10 = *(v6 + 288);
      *__str = MEMORY[0x29EDCA5F8];
      v17 = 0x40000000;
      v18 = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke;
      v19 = &__block_descriptor_tmp_30;
      v20 = v6;
      v21 = v14;
      v22 = v7;
      *v23 = *v15;
      *&v23[15] = *&v15[15];
      v24 = v4;
      dispatch_async(v10, __str);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx EeMsgData\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse", 513);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v53 = 0;
  v2 = *(v1 + 264);
  if (!v2)
  {
    goto LABEL_43;
  }

  v4 = v1 + 264;
  v5 = *(a1 + 40);
  v6 = v1 + 264;
  v7 = *(v1 + 264);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && v5 >= *(v6 + 32))
  {
    v13 = v1 + 264;
    do
    {
      v14 = *(v2 + 32);
      v9 = v14 >= v5;
      v15 = v14 < v5;
      if (v9)
      {
        v13 = v2;
      }

      v2 = *(v2 + 8 * v15);
    }

    while (v2);
    if (v13 == v4 || v5 < *(v13 + 32))
    {
      v13 = v1 + 264;
    }

    std::function<void ()(gnss::Result)>::operator=(v52, v13 + 40);
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__remove_node_pointer((v1 + 256), v6);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v6 + 40);
    operator delete(v6);
    if (v53)
    {
      v16 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(v1, *(a1 + 48));
      v17 = *(a1 + 44);
      if (v17)
      {
        if (v17 == 1)
        {
          if (*(v1 + 368))
          {
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v50, v1 + 344);
            v36 = 0;
            v37 = &v36;
            v38 = 0x4802000000;
            v39 = __Block_byref_object_copy__4;
            v40 = __Block_byref_object_dispose__4;
            LOBYTE(v41) = 0;
            v43 = *(a1 + 56);
            v42 = *(a1 + 64);
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v24 = mach_continuous_time();
              v25 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ORB Data StartGpsSecs,%llu,EndGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v24), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v37[6], v37[7]);
              LbsOsaTrace_WriteLog(0x18u, __str, v25, 4, 1);
            }

            v26 = *(v1 + 296);
            v48[0] = MEMORY[0x29EDCA5F8];
            v48[1] = 1174405120;
            v48[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2;
            v48[3] = &unk_2A1F8ADA0;
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v49, v50);
            v48[4] = &v36;
            dispatch_async(v26, v48);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v49);
            _Block_object_dispose(&v36, 8);
            std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v50);
          }
        }

        else if (v17 == 2)
        {
          if (*(v1 + 400))
          {
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v50, v1 + 376);
            v36 = 0;
            v37 = &v36;
            v38 = 0x3802000000;
            v39 = __Block_byref_object_copy__21_0;
            LOBYTE(v42) = *(a1 + 56);
            v18 = *(a1 + 64);
            v40 = __Block_byref_object_dispose__22_0;
            v41 = v18;
            if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
            {
              bzero(__str, 0x410uLL);
              v19 = mach_continuous_time();
              v20 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: RTI Data StartGpsSecs,%llu\n", (*&g_MacClockTicksToMsRelation * v19), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", v37[5]);
              LbsOsaTrace_WriteLog(0x18u, __str, v20, 4, 1);
            }

            v21 = *(v1 + 296);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24;
            block[3] = &unk_2A1F8ADD8;
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v47, v50);
            block[4] = &v36;
            dispatch_async(v21, block);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v47);
            _Block_object_dispose(&v36, 8);
            std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v50);
          }
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v29 = mach_continuous_time();
          v30 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ApiState,%u\n", (*&g_MacClockTicksToMsRelation * v29), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 262, *(a1 + 44));
          LbsOsaTrace_WriteLog(0x18u, __str, v30, 2, 1);
        }
      }

      else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v27 = mach_continuous_time();
        v28 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ApiType\n", (*&g_MacClockTicksToMsRelation * v27), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 515);
        LbsOsaTrace_WriteLog(0x18u, __str, v28, 0, 1);
      }

      v31 = *(v1 + 296);
      v44[0] = MEMORY[0x29EDCA5F8];
      v44[1] = 1174405120;
      v44[2] = ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27;
      v44[3] = &__block_descriptor_tmp_28_0;
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v45, v52);
      v45[8] = v16;
      dispatch_async(v31, v44);
      if (LbsOsaTrace_IsLoggingAllowed(0x18u, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v32 = mach_continuous_time();
        v33 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Ee Type,%u,ID,%u\n", (*&g_MacClockTicksToMsRelation * v32), "ADP", 73, "Ga04_01HandleGnsEeStatusResponse_block_invoke", *(a1 + 80), *(a1 + 44));
        LbsOsaTrace_WriteLog(0x18u, __str, v33, 4, 1);
      }

      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v45);
    }

    else if (LbsOsaTrace_IsLoggingAllowed(0x18u, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v22 = mach_continuous_time();
      v23 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lut Hdl NULL\n", (*&g_MacClockTicksToMsRelation * v22), "ADP", 87, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 516);
      LbsOsaTrace_WriteLog(0x18u, __str, v23, 2, 1);
    }
  }

  else
  {
LABEL_43:
    if (LbsOsaTrace_IsLoggingAllowed(0x18u, 0, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx Lut Hdl\n", (*&g_MacClockTicksToMsRelation * v11), "ADP", 69, "Ga04_01HandleGnsEeStatusResponse_block_invoke", 770);
      LbsOsaTrace_WriteLog(0x18u, __str, v12, 0, 1);
    }
  }

  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v52);
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2996DF380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  _Block_object_dispose(&a16, 8);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](&a52);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v52 - 104);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  result = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 40) = result;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  v6 = *(*(a1 + 32) + 8) + 40;

  return v3();
}

uint64_t __copy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c60_ZTSNSt3__18functionIFvON4gnss24DecodedExtendedEphemerisEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](v2);
}

uint64_t __Block_byref_object_copy__21_0(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_24(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  v6 = *(*(a1 + 32) + 8) + 40;

  return v3();
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 40;
  v4 = a2 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](v3, v4);
}

uint64_t __destroy_helper_block_e8_40c46_ZTSNSt3__18functionIFvON4gnss10DecodedRtiEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];
  v2 = a1 + 40;

  return std::__function::__value_func<void ()(gnss::DecodedRti &&)>::~__value_func[abi:ne200100](v2);
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga04_01HandleGnsEeStatusResponseE15e_gnsEE_MsgTypejP17s_gnsEE_ApiStatus_block_invoke_2_27(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 64);
  v2 = *MEMORY[0x29EDCA608];
  v3 = a1 + 32;

  return std::function<void ()(gnss::Result)>::operator()(v3, v1);
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::__function::__value_func<void ()(gnss::DecodedRti &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t DD_Delete_Bad_BDS_Data(uint64_t result, uint64_t a2, void *a3)
{
  v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
  v4 = a3 + 3065;
  v5 = a3 + 3990;
  v6 = 12952;
  v7 = 15024;
  do
  {
    v8 = a3[3056];
    if (*(v8 + v3) == 1)
    {
      *(result + 2 * v3) = 255;
      *(v8 + v3) = 0;
      *(a3[3054] + v3) = 0;
      *(a3[3058] + v3) = 0;
      *(v4 + 24) = 0;
      *(v4 + 4) = 0uLL;
      *(v4 + 5) = 0uLL;
      *(v4 + 2) = 0uLL;
      *(v4 + 3) = 0uLL;
      *v4 = 0uLL;
      *(v4 + 1) = 0uLL;
      *(a3[3064] + v3) = 0;
      *(a3[3061] + v3) = 1;
      v9 = p_NV + v7;
      *(v9 - 8) = 0xFFFFFFFFLL;
      *v9 = 0uLL;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 0uLL;
      *(v9 + 48) = 0uLL;
      *(v9 + 64) = 0uLL;
      *(v9 + 80) = 0uLL;
      *(v9 + 96) = 0;
    }

    if (*(a3[3057] + v3) == 1)
    {
      *(a2 + v3) = -1;
      *(a3[3057] + v3) = 0;
      *(a3[3055] + v3) = 0;
      *(a3[3060] + v3) = 0;
      *(v5 + 28) = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(a3[3064] + v3) = 0;
      v10 = (p_NV + v6);
      *(v10 - 1) = 0xFFFFFFFFLL;
      *v10 = 0uLL;
      v10[1] = 0uLL;
      *(v10 + 28) = 0uLL;
    }

    ++v3;
    v6 += 56;
    v7 += 112;
    v5 = (v5 + 44);
    v4 = (v4 + 100);
  }

  while (v3 != 37);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_BDS_Data(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v5 = a4 + 28220;
  v6 = a4 + 3990;
  v7 = 15024;
  v8 = 12952;
  do
  {
    if (*(result + v4) == 1)
    {
      *(a2 + 2 * v4) = 255;
      *(a4[3056] + v4) = 0;
      *(a4[3054] + v4) = 0;
      *(a4[3058] + v4) = 0;
      v9 = v5 - 3700;
      *(v9 + 24) = 0;
      *(v9 + 4) = 0uLL;
      *(v9 + 5) = 0uLL;
      *(v9 + 2) = 0uLL;
      *(v9 + 3) = 0uLL;
      *v9 = 0uLL;
      *(v9 + 1) = 0uLL;
      *(a4[3059] + v4) = 0;
      *(v5 + 24) = 0;
      *(v5 + 4) = 0uLL;
      *(v5 + 5) = 0uLL;
      *(v5 + 2) = 0uLL;
      *(v5 + 3) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 1) = 0uLL;
      *(a4[3064] + v4) = 0;
      *(a4[3061] + v4) = 1;
      v10 = p_NV + v7;
      *(v10 - 8) = 0xFFFFFFFFLL;
      *v10 = 0uLL;
      *(v10 + 16) = 0uLL;
      *(v10 + 32) = 0uLL;
      *(v10 + 48) = 0uLL;
      *(v10 + 64) = 0uLL;
      *(v10 + 80) = 0uLL;
      *(v10 + 96) = 0;
      *(a3 + v4) = -1;
      *(a4[3057] + v4) = 0;
      *(a4[3055] + v4) = 0;
      *(a4[3060] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      v11 = (p_NV + v8);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      *(v11 + 28) = 0uLL;
    }

    ++v4;
    v7 += 112;
    v8 += 56;
    v6 = (v6 + 44);
    v5 += 100;
  }

  while (v4 != 37);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_BDS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
LABEL_53:
    v26 = *MEMORY[0x29EDCA608];
    return result;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v27 = (a5 + 33548);
  v10 = result + 900;
  if (result <= 0x15180)
  {
    v11 = 86400;
  }

  else
  {
    v11 = result;
  }

  v12 = v11 - 86400;
  v13 = *(a5 + 24464);
  v30 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  v14 = 24520;
  do
  {
    if (*(v13 + v7) != 1)
    {
      goto LABEL_17;
    }

    v15 = *(a5 + v14);
    if (v15 < v12 && v15 >= 1)
    {
LABEL_15:
      v9 = 1;
      *(*(a5 + 24448) + v7) = 1;
      goto LABEL_17;
    }

    if (v15)
    {
      if (v15 > v10)
      {
        ++v8;
        if ((*(a5 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *(a5 + v14) = v30;
    }

LABEL_17:
    ++v7;
    v14 += 100;
  }

  while (v7 != 37);
  v28 = a3;
  if (v8 >= 1)
  {
    EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future EPH, %d", v8);
    if (*(a5 + 39302) == 1)
    {
      EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
    }
  }

  v17 = 0;
  v18 = 0;
  if (v6 <= 15724800)
  {
    v19 = 15724800;
  }

  else
  {
    v19 = v6;
  }

  v20 = v19 - 15724800;
  v21 = 31920;
  do
  {
    if (*(*(a5 + 24480) + v17) == 1)
    {
      v22 = *(a5 + v21);
      if (v22 >= v20 || v22 < 1)
      {
        if (v22)
        {
          if (v22 > v10)
          {
            ++v18;
            EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, SV %d age %d thresh %d %d %d", v17 + 1, (v6 - v22) / 604800, 0, v27, v28);
            if ((*(a5 + 39302) & 1) == 0)
            {
              v9 = 1;
              *(*(a5 + 24456) + v17) = 1;
            }
          }
        }

        else
        {
          *(a5 + v21) = v30;
        }
      }

      else
      {
        v9 = 1;
        *(*(a5 + 24456) + v17) = 1;
        EvLog_v("DD_Check_Age_BDS_Data:  Deleting Old ALM, SV %d age %d thresh %d %d %d", v17 + 1, (v6 - v22) / 604800, (v6 - v20) / 604800, v27, v28);
      }
    }

    ++v17;
    v21 += 44;
  }

  while (v17 != 37);
  if (v18 >= 1)
  {
    EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future ALM, %d", v18);
    if (*(a5 + 39302) == 1)
    {
      EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
    }
  }

  if (v27[1])
  {
    v24 = *v27;
    if (*v27 >= v20 || v24 < 1)
    {
      if (v24)
      {
        if (v24 > v10)
        {
          EvLog_v("DD_Check_Age_BDS_Data:  Deleting Future BGTO, %d %d", *v27, v10);
          if ((*(a5 + 39302) & 1) == 0)
          {
            goto LABEL_43;
          }

          EvLog("DD_Check_Age_BDS_Data:  Skip Future Check");
        }
      }

      else
      {
        *v27 = v30;
      }
    }

    else
    {
LABEL_43:
      *v27 = 0;
      *(v27 + 1) = 0;
      v27[4] = 0;
    }
  }

  result = v28;
  if ((v9 & 1) == 0)
  {
    goto LABEL_53;
  }

  v25 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_BDS_Data(v28, a4, a5);
}

char *DD_Proc_BDS_Data(char *result, uint64_t a2, double *a3, int *a4, void *a5)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a2 + 6) < 6u)
  {
    goto LABEL_11;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 16);
  if (v5)
  {
    v7 = (v6 >> 8) & 7;
    if ((v7 - 1) >= 5)
    {
      goto LABEL_10;
    }

    *(a2 + 12) = v7;
    if (v5 != 1023)
    {
LABEL_11:
      v9 = *MEMORY[0x29EDCA608];
      return result;
    }

    v8 = *MEMORY[0x29EDCA608];

    return DD_Proc_BDS_D1_Data(result, a2, a3, a4, a5);
  }

  else
  {
    if ((v6 & 0x3FF8000) == 0x3890000)
    {
      v7 = 0;
LABEL_10:
      result = EvLog_v("DD_BDS_Data:  Bad SF Num %d", v7);
      goto LABEL_11;
    }

    v10 = *MEMORY[0x29EDCA608];
    v11 = *MEMORY[0x29EDCA608];

    return EvCrt_v("DD_BDS_Data:  Preamble Fail");
  }
}

char *DD_Proc_BDS_D1_Data(char *result, uint64_t a2, double *a3, int *a4, void *a5)
{
  v9 = result;
  v61 = *MEMORY[0x29EDCA608];
  v10 = *(a2 + 12);
  if (*(a2 + 12) && *a3 >= 4)
  {
    v11 = a3[3] + -14.0;
    if (v11 < 0.0)
    {
      v11 = v11 + 604800.0;
    }

    v12 = -0.5;
    if (v11 > 0.0)
    {
      v12 = 0.5;
    }

    v13 = v11 + v12;
    v14 = 7.0;
    if (v13 <= 2147483650.0)
    {
      v14 = -8.0;
      if (v13 >= -2147483650.0)
      {
        v14 = (v13 % 30);
      }
    }

    v15 = v14 * 0.166666667 + 4.5;
    if (v10 != (v15 - 5 * ((((103 * v15) & 0x8000) != 0) + (((103 * v15) >> 8) >> 1)) + 1))
    {
      result = EvCrt_v("DD_Proc_BDS_D1_Data:  SF Num Error %d %d", *(a2 + 12), (v15 - 5 * ((((103 * v15) & 0x8000) != 0) + (((103 * v15) >> 8) >> 1)) + 1));
      v10 = 0;
      *(a2 + 12) = 0;
    }
  }

  v16 = *(a2 + 56);
  if ((v16 & 2) == 0)
  {
    goto LABEL_74;
  }

  v17 = v10 >= 4 ? (*(a2 + 20) >> 2) & 0x7F : 0;
  *(a2 + 13) = v17;
  v18 = *(a2 + 8);
  if (v18 > 0x24)
  {
    goto LABEL_74;
  }

  if (v10 <= 3)
  {
    v19 = (v10 - 1);
    if (v19 < 3)
    {
      if (v18 <= 4)
      {
        result = EvLog_v("DD_BDS_D1_Eph_SF:  bad SV, SV %d ");
LABEL_74:
        v44 = *MEMORY[0x29EDCA608];
        return result;
      }

      if ((~v16 & 3) != 0)
      {
        if (*a3 < 6)
        {
          goto LABEL_43;
        }

        v22 = a3[3] + -14.0;
        if (v22 < 0.0)
        {
          v22 = v22 + 604800.0;
        }

        v21 = 6 * (v22 % 6);
      }

      else
      {
        v21 = (*(a2 + 16) << 12) | (*(a2 + 20) >> 10) & 0xFFF;
        if (v21 == 0xFFFF)
        {
LABEL_43:
          if ((~v16 & 0xC) != 0 || v10 != 1)
          {
            v43 = *a3;
            v49 = *(a2 + 16);
            v50 = *(a2 + 20);
            result = EvLog_v("DD_BDS_D1_Eph_SF:  bad Eph IOD, IOD %d  TOW sts %d  Wd[0,1] %x %x ");
            goto LABEL_74;
          }

          v23 = (9544372 * ((*(a2 + 28) >> 14) & 0xFE | ((*(a2 + 24) & 0x1FFu) << 8))) >> 32;
LABEL_46:
          v57 = v18 + 1;
          v51 = v23 + 1;
          if (*(v9 + v18 + 3254) != (v23 + 1))
          {
            v24 = &v9[27 * (v18 - 5) + 1646];
            *(v24 + 23) = 0u;
            *(v24 + 4) = 0u;
            *(v24 + 5) = 0u;
            *(v24 + 2) = 0u;
            *(v24 + 3) = 0u;
            *v24 = 0u;
            *(v24 + 1) = 0u;
            v25 = v9 + 6 * (v18 - 5);
            *(v25 + 5022) = 0;
            *(v25 + 2510) = 0;
            *(v25 + 2558) = 0;
            *(v25 + 5118) = 0;
            *(v9 + v18 + 12972) = 0;
            *(v9 + v18 + 3254) = v23 + 1;
          }

          v26 = &v9[27 * (v18 - 5) + 9 * v19];
          v60 = *(v26 + 6616);
          v27 = *(v26 + 6600);
          v53 = v26 + 6584;
          v58 = *(v26 + 6584);
          v59 = v27;
          v28 = v9 + 6 * (v18 - 5);
          v52 = (v28 + 10040);
          v29 = *&v28[2 * v19 + 10040];
          v30 = v28 + 10232;
          v55 = v10 - 1;
          v56 = v9;
          v54 = (v28 + 10232);
          if (*&v28[2 * v19 + 10040])
          {
            v31 = 0;
            v32 = *&v30[2 * v19];
            v33 = &D1_MaskToSubFrCheck + 36 * v19;
            v34 = &v9[27 * (v18 - 5) + 1646 + 9 * v19];
            v35 = a2 + 20;
            do
            {
              v36 = v31 + 1;
              v37 = 1 << (v31 + 1);
              if ((v37 & v16) != 0)
              {
                v38 = *(v35 + 4 * v31);
                if ((v37 & v29) != 0)
                {
                  v39 = *(v34 + 4 * v31);
                  v40 = v37 & v32;
                  if ((*&v33[4 * v31] & (v39 ^ v38)) != 0)
                  {
                    if (!v40)
                    {
                      *(&v58 + v31) = v38;
                    }

                    result = EvLog_v("DD_BDS_D1_Eph_SF:  Diff SF Words, SV %d  SF %d  Wd %d 0x%x 0x%x  CrosChked? %d  SFmsk 0x%x 0x%x", v57, v10, v31 + 1, v38, v39, v40 != 0, v16, v29);
                  }

                  else if (!v40)
                  {
                    v32 |= (1 << (v31 + 1));
                  }
                }

                else
                {
                  *(&v58 + v31) = v38;
                  v29 |= (1 << (v31 + 1));
                }
              }

              v31 = v36;
            }

            while (v36 != 9);
          }

          else
          {
            LOWORD(v32) = 0;
            v45 = *(a2 + 36);
            v58 = *(a2 + 20);
            v59 = v45;
            v60 = *(a2 + 52);
            LOWORD(v29) = v16 & 0x3FE;
          }

          if (v10 == 1 && (v32 & 0x39E) != 0x39E && (v29 & 2) != 0 && (v58 & 0x200) != 0)
          {
            if (*(a5[3052] + v18) == 1)
            {
              result = EvLog_v("DD_BDS_D1_Eph_SF:  EPH H->U, SV %d  IOD %d", v57, v51);
              *(a5[3052] + v18) = 0;
            }

            *(a5[3053] + 20 * v18) = 2;
          }

          v46 = v59;
          *v53 = v58;
          *(v53 + 16) = v46;
          *(v53 + 32) = v60;
          v52[v55] = v29;
          v54[v55] = v32;
          if ((~*v52 & 0x39E) == 0 && (~v52[1] & 0x3FE) == 0 && (~v52[2] & 0x3FE) == 0)
          {
            if ((~*v54 & 0x39E) != 0 || (~v54[1] & 0x3FE) != 0 || (~v54[2] & 0x3FE) != 0)
            {
              v47 = v56 + v18;
              v48 = 1;
            }

            else
            {
              v47 = v56 + v18;
              v48 = 2;
            }

            v47[12972] = v48;
          }

          goto LABEL_74;
        }
      }

      LODWORD(v23) = v21 / 0xE10;
      if (v10 >= 2 && v21 % 0xE10 >= 0xDF2 && (~*(v9 + 3 * (v18 - 5) + 5020) & 0x39E) != 0)
      {
        goto LABEL_74;
      }

      goto LABEL_46;
    }

    if (!v10)
    {
      v20 = *MEMORY[0x29EDCA608];

      return EvLog("DD_Proc_BDS_D1_Data:  Bad SF Num!");
    }

LABEL_32:
    result = EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF Num %d");
    goto LABEL_74;
  }

  if (v10 == 4)
  {
    if (v17 - 25 <= 0xFFFFFFE7)
    {
      result = EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF4 Pg %d  SV %d");
      goto LABEL_74;
    }

    if ((~v16 & 0x3FE) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

  if (v10 != 5)
  {
    goto LABEL_32;
  }

  if (v17 - 25 <= 0xFFFFFFE7)
  {
    result = EvLog_v("DD_Proc_BDS_D1_Data:  Bad SF5 Pg %d  SV %d");
    goto LABEL_74;
  }

  if (v17 > 0x18 || ((1 << v17) & 0x1000180) == 0)
  {
    if ((~v16 & 0x3FE) != 0 || v17 > 6)
    {
      goto LABEL_74;
    }

LABEL_70:
    v42 = *MEMORY[0x29EDCA608];

    return DD_Check_BDS_Alm_AmEpID(a2, a5);
  }

  if ((~v16 & 0x3FE) != 0 || *(a5[3058] + v18) == 1 && *(a5 + 100 * *(a2 + 8) + 24542) == 1)
  {
    goto LABEL_74;
  }

  v41 = *MEMORY[0x29EDCA608];

  return DD_Proc_BDS_Health_Subframe(a4, a2, a5, v9);
}

char *DD_Check_BDS_Alm_AmEpID(char *result, uint64_t a2)
{
  v2 = result;
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2 + 33568;
  v4 = result[8];
  v5 = *(a2 + 33568 + v4);
  if ((*(result + 13) & 3) == 3)
  {
    if (v5 < 0)
    {
      result = EvLog_v("DD_Check_BDS_Alm_AmEpID: PRN %d AmEpID change from %d to 11", result[8], 3);
      v4 = v2[8];
      v6 = 1;
      goto LABEL_8;
    }

    if (v5 <= 1)
    {
      v6 = v5 + 1;
LABEL_8:
      *(v3 + v4) = v6;
    }
  }

  else
  {
    if (v5 >= 1)
    {
      result = EvLog_v("DD_Check_BDS_Alm_AmEpID: PRN %d AmEpID change from 11 to %d", result[8], *(result + 13) & 3);
      v4 = v2[8];
      v6 = -1;
      goto LABEL_8;
    }

    if (v5 >= -1)
    {
      *(v3 + v4) = v5 - 1;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

int *DD_Proc_BDS_Health_Subframe(int *result, uint64_t a2, void *a3, int *a4)
{
  v51 = result;
  v56 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 13);
  memset(v55, 0, 37);
  v8 = *(a2 + 8);
  if (v8 >= 5)
  {
    if (v7 == 7)
    {
LABEL_24:
      if ((~*(a2 + 56) & 0x3FE) != 0)
      {
        goto LABEL_68;
      }

      v14 = *(a2 + 36);
      __b[0] = *(a2 + 20);
      __b[1] = v14;
      v54 = *(a2 + 52);
      memset_pattern16(v52, &unk_299761940, 0x26uLL);
      Decode_BDS_1st_Health_SF(__b, v52);
      for (i = 0; i != 19; ++i)
      {
        if (Decode_BDS_Alm_Health_Sts(*&v52[2 * i]) >= 4)
        {
          *(v55 + i) = 1;
        }
      }

      __n_4 = 0;
      v10 = 0;
      v11 = 19;
      goto LABEL_30;
    }

    if (v7 == 8)
    {
      goto LABEL_17;
    }

    if (v7 != 24)
    {
      goto LABEL_68;
    }

LABEL_9:
    if ((~*(a2 + 56) & 0x3FE) != 0 || *(a3 + v8 + 33568) < 2 || (*(a2 + 44) & 0x18000) != 0x8000)
    {
      goto LABEL_68;
    }

    *v52 = *(a2 + 20);
    *&v52[12] = *(a2 + 32);
    memset_pattern16(__b, &unk_299761940, 0x1AuLL);
    Decode_BDS_3rd_Health_SF(v52, __b);
    for (j = 0; j != 7; ++j)
    {
      if (Decode_BDS_Alm_Health_Sts(*(__b + j)) >= 4)
      {
        *(&v55[1] + j + 14) = 1;
      }
    }

    v10 = 30;
    v11 = 7;
    v12 = 2;
    goto LABEL_23;
  }

  if (v7 == 116)
  {
    goto LABEL_9;
  }

  if (v7 != 36)
  {
    if (v7 != 35)
    {
      goto LABEL_68;
    }

    goto LABEL_24;
  }

LABEL_17:
  if ((~*(a2 + 56) & 0xFE) != 0)
  {
    goto LABEL_68;
  }

  *v52 = *(a2 + 20);
  *&v52[16] = *(a2 + 36);
  memset_pattern16(__b, &unk_299761940, 0x16uLL);
  Decode_BDS_2nd_Health_SF(v52, __b);
  for (k = 0; k != 11; ++k)
  {
    if (Decode_BDS_Alm_Health_Sts(*(__b + k)) >= 4)
    {
      *(&v55[1] + k + 3) = 1;
    }
  }

  v10 = 19;
  v11 = 11;
  v12 = 1;
LABEL_23:
  __n_4 = v12;
LABEL_30:
  __n = v11;
  v16 = v10 + v11;
  v17 = v10;
  v18 = 56 * v10 + 12952;
  v19 = v17;
  do
  {
    if (*(a3[3060] + v19) == 1 && (*(v55 + v19) & 1) == 0)
    {
      v20 = a3 + 44 * v19 + 31920;
      if (*(v20 + 42) == 1)
      {
        v21 = 0;
        LODWORD(v22) = 0;
        *(v20 + 42) = 0;
        v23 = p_NV;
        v24 = p_NV + 56 * v19 + 12944;
        v25 = *v20;
        v26 = *(v20 + 16);
        *(v24 + 36) = *(v20 + 28);
        *(v24 + 24) = v26;
        *(v24 + 8) = v25;
        v27 = v23 + v18;
        v28 = 55665;
        do
        {
          v29 = *(v27 + v21) ^ BYTE1(v28);
          v28 = 52845 * (v28 + v29) + 22719;
          v22 = (v22 + v29);
          ++v21;
        }

        while (v21 != 48);
        *v24 = v22;
      }
    }

    ++v19;
    v18 += 56;
  }

  while (v19 < v16);
  v49 = a4;
  v50 = a4 + 1627;
  v30 = 20 * v17 + 4;
  v31 = a3 + 100 * v17 + 24520;
  v32 = a3 + 11 * v17 + 7980;
  v33 = v17;
  do
  {
    if (*(a3[3052] + v33))
    {
      v34 = a3[3058];
    }

    else
    {
      v34 = a3[3058];
      if (*(v55 + v33) == 1)
      {
        if (*(v34 + v33) == 1 && *(v31 + 22) == 1 && *v31 + 3600 > *v51)
        {
          *(v55 + v33) = 0;
        }

        else
        {
          v35 = a3[3060];
          if (*(v35 + v33) == 1 && *v32 + 100 < *v51)
          {
            *(a3[3055] + v33) = 0;
            *(v35 + v33) = 0;
            *(v50 + v33 - 52) = -1;
            v34 = a3[3058];
            if ((*(v34 + v33) & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (!*(v34 + v33))
          {
            goto LABEL_54;
          }

          if (*(v31 + 22) == 1 && *v31 + 100 < *v51)
          {
            *(a3[3054] + v33) = 0;
            *(v34 + v33) = 0;
            *(v50 + v33) = 255;
          }
        }
      }
    }

LABEL_54:
    if (*(v34 + v33) == 1 && *(a3[3052] + v33) == 1 && (*(v55 + v33) & 1) == 0)
    {
      EvLog_v("BDS_Health_SF:  ALM H->U, SV %d  SF5_PG7_wd[0-1] %x %x", v33 + 1, *(a2 + 16), *(a2 + 20));
    }

    if (*(v55 + v33))
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    *(a3[3053] + v30) = v36;
    ++v33;
    v30 += 20;
    v31 += 100;
    v32 += 11;
  }

  while (v33 < v16);
  result = memcpy((a3[3052] + v17), v55 + v17, __n);
  v49[__n_4 + 1624] = *v51;
  if (v49[1624] >= 1 && v49[1625] >= 1 && v49[1626] >= 1)
  {
    v37 = 0;
    LODWORD(v38) = 0;
    v39 = a3[3052];
    v40 = p_NV;
    v41 = p_NV + 12868;
    v42 = *(v39 + 29);
    v43 = *(v39 + 16);
    *(p_NV + 12868) = *v39;
    *(v41 + 16) = v43;
    *(v41 + 29) = v42;
    v44 = 55665;
    do
    {
      v45 = *(v40 + 12864 + v37) ^ BYTE1(v44);
      v44 = 52845 * (v44 + v45) + 22719;
      v38 = (v38 + v45);
      ++v37;
    }

    while (v37 != 48);
    *(v40 + 12856) = v38;
  }

LABEL_68:
  v46 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL DD_Save_New_BDS_D1_Eph(int a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = 0;
    v50 = a3 + 6584;
    v49 = a3 + 10040;
    v48 = a3 + 10232;
    if (a1 % 604800 >= 14)
    {
      v5 = -14;
    }

    else
    {
      v5 = 604786;
    }

    v46 = a1;
    v47 = a1 % 604800 + v5 + 3600;
    v6 = a2 + 25020;
    v7 = a3 + 6518;
    v8 = a2 + 32182;
    v9 = a3 + 12977;
    v10 = 100;
    v11 = 0uLL;
    while (1)
    {
      if (!*(v9 + v4) || *(v9 + v4) == 1 && (*(a2[3058] + v4 + 5) & 1) != 0)
      {
        goto LABEL_17;
      }

      if ((v4 + 6) <= 5)
      {
        v12 = -1;
      }

      else
      {
        v12 = -6;
      }

      v13 = v12 + v4 + 6;
      v56 = 0;
      memset(v51, 0, 23);
      v52 = v11;
      v53 = v11;
      v54 = v11;
      *v55 = v11;
      *&v55[14] = 0;
      v14 = *(v7 + 2 * v4);
      if (v14 == 255)
      {
        goto LABEL_15;
      }

      v15 = v47 - 3600 * v14 + (v47 - 3600 * v14 < 0 ? 0x93A80 : 0);
      if (v15 >= 3661)
      {
        break;
      }

      v58 = 1;
      v57 = 257;
      v19 = (v50 + 108 * v13);
      v20 = v19[5];
      v59[4] = v19[4];
      v60[0] = v20;
      *(v60 + 12) = *(v19 + 92);
      v21 = v19[1];
      v59[0] = *v19;
      v59[1] = v21;
      v22 = v19[3];
      v59[2] = v19[2];
      v59[3] = v22;
      BDS_D1_EphBin2Int(&v57, v59, v51);
      BYTE4(v51[2]) = v4 + 6;
      v51[0] = v46 | 0x400000000;
      if (*(v9 + v4) <= 1u)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFF;
      }

      v56 = v23;
      v24 = v4 + 6;
      v25 = SLOWORD(v51[2]) < 3073;
      if (SLOWORD(v51[2]) >= 3073)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  WeekNo = %d > 3072, Out of range !", v4 + 6, SLOWORD(v51[2]));
        v24 = BYTE4(v51[2]);
      }

      if (HIDWORD(v51[1]) >= 0x12751)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  toe = %d > 604800 s, Out of range !", v24, 8 * HIDWORD(v51[1]));
        v25 = 0;
        v24 = BYTE4(v51[2]);
      }

      if (DWORD1(v52) >= 0x1999999B)
      {
        EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  e = %g > 0.05 ", v24, DWORD1(v52) * 1.16415322e-10);
        v25 = 0;
        v24 = BYTE4(v51[2]);
      }

      v11 = 0uLL;
      if ((v24 - 1) <= 4u)
      {
        if ((DWORD2(v52) + 777519103) <= 0xF3F7FFFE)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  sqrtA = %g, Out of [6709 .. 6324 m^0.5]", v24, vcvtd_n_f64_u32(DWORD2(v52), 0x13uLL));
          v25 = 0;
          v24 = BYTE4(v51[2]);
        }

        if ((v53 - 119304648) < 0xF1C71C71)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  i0 = %f, Out of [-10 .. 10 deg]", v24, v53 * 0.0000000838190317);
          v25 = 0;
          v24 = BYTE4(v51[2]);
        }

        v11 = 0uLL;
      }

      if ((v24 - 6) <= 0x1Fu)
      {
        if ((DWORD2(v52) + 777519103) <= 0xCDAFFFFE)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  sqrtA = %g, Out of [5099 .. 6324 m^0.5]", v24, vcvtd_n_f64_u32(DWORD2(v52), 0x13uLL));
          v11 = 0uLL;
          v25 = 0;
        }

        if ((v53 - 775480207) < 0xF1C71C71)
        {
          EvCrt_v("DD_BDS_IntEph_Valid:  FAILED:  SV %d  i0 = %f, Out of [45 .. 65 deg]", BYTE4(v51[2]), v53 * 0.0000000838190317);
          goto LABEL_65;
        }
      }

      if (v25)
      {
        if (*(a2[3058] + v4 + 5) != 1)
        {
          goto LABEL_45;
        }

        v26 = *(v6 + 8);
        if (LODWORD(v51[1]) != v26 && g_Enable_Event_Log >= 6u)
        {
          EvLog_v("DD_Val_BDS_Eph:  New Eph SV %d %d %d %d", BYTE4(v51[2]), HIDWORD(v51[1]), *(v6 + 18), *(v6 + 19));
          v11 = 0uLL;
LABEL_45:
          v27 = 6504;
          if ((v4 - 14) < 0xB)
          {
            v27 = 6500;
          }

          v28 = 6496;
          if ((v4 + 5) >= 0x13)
          {
            v28 = v27;
          }

          v29 = *(a3 + v28);
          v30 = a2[3052];
          if (v29 < 1 || *(v30 + v4 + 5) | BYTE6(v51[2]))
          {
LABEL_51:
            v31 = BYTE6(v51[2]);
            *(v30 + v4 + 5) = BYTE6(v51[2]) == 0;
            if (v31)
            {
              goto LABEL_52;
            }

LABEL_59:
            v32 = 1;
          }

          else
          {
            if ((*v8 & 1) != 0 || v29 + 3600 <= v46)
            {
              v33 = a2[3060] + v4;
              if (*(v33 + 5) != 1 || v29 + 100 >= v46)
              {
                goto LABEL_51;
              }

              *(a2[3055] + v4 + 5) = 0;
              *(v33 + 5) = 0;
              *(v7 + v4 - 57) = -1;
              *(a2[3052] + v4 + 5) = 1;
              goto LABEL_59;
            }

            *(v30 + v4 + 5) = 0;
LABEL_52:
            v32 = 2;
          }

          *(a2[3053] + v10) = v32;
          if (*(a2[3058] + v4 + 5) == 1 && BYTE6(v51[2]))
          {
            *(v6 + 22) = BYTE6(v51[2]);
          }

          if (v46 < 1)
          {
            goto LABEL_16;
          }

          *(a2[3061] + v4 + 5) = 1;
          Core_Save_BDS_Eph((v4 + 6), 0, v6);
LABEL_65:
          v11 = 0uLL;
          goto LABEL_16;
        }

        if (LODWORD(v51[1]) != v26)
        {
          goto LABEL_45;
        }
      }

LABEL_16:
      *(v9 + v4) = 0;
LABEL_17:
      ++v4;
      v6 += 100;
      v10 += 20;
      v8 += 44;
      if (v4 == 32)
      {
        v34 = 0;
        LODWORD(v35) = 0;
        v36 = a2[3052];
        v37 = p_NV;
        v38 = p_NV + 12868;
        v39 = *(v36 + 29);
        v40 = *(v36 + 16);
        *(p_NV + 12868) = *v36;
        *(v38 + 16) = v40;
        *(v38 + 29) = v39;
        v41 = 55665;
        do
        {
          v42 = *(v37 + 12864 + v34) ^ BYTE1(v41);
          v41 = 52845 * (v41 + v42) + 22719;
          v35 = (v35 + v42);
          ++v34;
        }

        while (v34 != 48);
        *(v37 + 12856) = v35;
        a1 = v46;
        goto LABEL_68;
      }
    }

    EvLog_v("DD_Save_New_BDS_D1_Eph:  Old SF in SD, SV %d, IOD %d  Age %d  ", v4 + 6, *(v7 + 2 * v4), v15);
    v11 = 0uLL;
LABEL_15:
    v16 = (v50 + 108 * v13);
    *(v16 + 92) = v11;
    v16[4] = v11;
    v16[5] = v11;
    v16[2] = v11;
    v16[3] = v11;
    *v16 = v11;
    v16[1] = v11;
    v17 = v49 + 6 * v13;
    *(v17 + 4) = 0;
    *v17 = 0;
    v18 = v48 + 6 * v13;
    *v18 = 0;
    *(v18 + 4) = 0;
    goto LABEL_16;
  }

LABEL_68:
  result = a1 != 0;
  v44 = *MEMORY[0x29EDCA608];
  return result;
}

char **Sen_Aug_FPE_ReInit(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  g_p_CB_LCD_SA_Dbg = a3;
  g_TCU = a1[5492].i64;
  g_FPE_LogSeverity = *(a2 + 4);
  g_DBfd = a4;
  if ((g_FPE_LogSeverity & 8) != 0)
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

    LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f ReInit function was called", "Sen_Aug_FPE_ReInit", 153, v8, v9);
  }

  v16 = *(a2 + 55);
  v17 = *(a2 + 71);
  v18 = *(a2 + 87);
  v19 = *(a2 + 103);
  v13 = *(a2 + 7);
  v14 = *(a2 + 23);
  v15 = *(a2 + 39);
  v12 = 12;
  result = FPE_ApplyNewMeas(0xD, &v12, a2, a1, 0, a3, a4, 0);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

char **Sen_Aug_FPE_Update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64x2_t *a5, _DWORD *a6, char **a7, _DWORD *a8, uint64_t a9)
{
  v39[3] = *MEMORY[0x29EDCA608];
  bzero(a6, 0x5F70uLL);
  *a6 = *(a2 + 4);
  *(a6 + 49) = *(a2 + 8);
  v31 = a4;
  SA_Interface_Logger(a2, a5, a1, a3, a4, a7);
  *a8 = 0;
  FPE_ApplyNewMeas(0xA, a2, a3, a5, a6, a7, a8, a9);
  v17 = 0;
  v39[0] = a1 + 240;
  v39[1] = a1 + 336;
  v39[2] = a1 + 432;
  do
  {
    memset(__dst, 0, 32);
    v18 = v39[v17];
    v19 = Cyc_Record_Count_Occupied(v18, 1u);
    v32 = dword_29976195C[v17];
    if ((a5[132943].i8[1] & 1) == 0)
    {
      v20 = v19;
      v21 = v19 - v32;
      if (v19 > v32)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v22 = mach_continuous_time();
          if (g_TCU)
          {
            v23 = *(g_TCU + 8);
          }

          else
          {
            v23 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractSensorData", 267, (*&g_MacClockTicksToMsRelation * v22), v23, v20);
        }

        do
        {
          Cyc_Record_Read(v18, 1u, __dst);
          --v21;
        }

        while (v21);
      }
    }

    if (v32 < Cyc_Record_Count_Occupied(v18, 1u))
    {
      if (g_FPE_LogSeverity)
      {
        v24 = mach_continuous_time();
        if (g_TCU)
        {
          v25 = *(g_TCU + 8);
        }

        else
        {
          v25 = 0.0;
        }

        LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f num new samples is bigger than max allowed = %d.measTypeTble[i]=%d", "FpeAdapter_extractSensorData", 280, (*&g_MacClockTicksToMsRelation * v24), v25, v32, dword_299761950[v17]);
      }

      g_FPE_AssertFlag = 1;
    }

    v26 = 0;
    if ((Cyc_Record_IsEmpty(v18, 1u) & 1) == 0)
    {
      do
      {
        Cyc_Record_Read(v18, 1u, __dst);
        FPE_ApplyNewMeas(dword_299761950[v17], __dst, a3, a5, a6, a7, a8, a9);
        ++v26;
      }

      while (!Cyc_Record_IsEmpty(v18, 1u));
    }

    if ((g_FPE_LogSeverity & 8) != 0)
    {
      v27 = mach_continuous_time();
      if (g_TCU)
      {
        v28 = *(g_TCU + 8);
      }

      else
      {
        v28 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f \tNum new_Samples =%d for measType = %d", "FpeAdapter_extractSensorData", 301, (*&g_MacClockTicksToMsRelation * v27), v28, v26, dword_299761950[v17]);
    }

    ++v17;
  }

  while (v17 != 3);
  FpeAdapter_extractAssistMeasData(0, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(1, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(2, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(4, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(5, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(0xA, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(3, a5, v31, a3, a5, a6, a7, a8, a9);
  FpeAdapter_extractAssistMeasData(0xB, a5, v31, a3, a5, a6, a7, a8, a9);
  *__dst = 12;
  v35 = *(a3 + 55);
  v36 = *(a3 + 71);
  v37 = *(a3 + 87);
  v38 = *(a3 + 103);
  *&__dst[2] = *(a3 + 7);
  *&__dst[18] = *(a3 + 23);
  v34 = *(a3 + 39);
  result = FPE_ApplyNewMeas(0xC, __dst, a3, a5, a6, a7, a8, a9);
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

void *FpeAdapter_extractAssistMeasData(void *result, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int64x2_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = result;
  v51 = *MEMORY[0x29EDCA608];
  if (result < 0xC && ((0xC3Fu >> result) & 1) != 0)
  {
    v16 = dword_299761A28[result];
    v17 = dword_299761A58[result];
    v18 = **&a3[qword_2997619C8[result]];
    v19 = *&a3[qword_299761968[result]];
    v20 = v18 - *(a2 + 2 * result);
    if ((a5[132943].i8[1] & 1) == 0)
    {
      if (result == 10)
      {
        v28 = *a3;
        if (v28 < v20)
        {
          if ((g_FPE_LogSeverity & 8) != 0)
          {
            v48 = **&a3[qword_2997619C8[result]];
            v29 = a2;
            v30 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
            if (g_TCU)
            {
              v31 = *(g_TCU + 8);
            }

            else
            {
              v31 = 0.0;
            }

            result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new Ext_Pos samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractAssistMeasData", 425, v30, v31, v28);
            a2 = v29;
            v18 = v48;
            v16 = 80;
          }

          v22 = (v19 + (v28 - 1) * v16);
          v21 = v28;
          if (!v28)
          {
            goto LABEL_38;
          }

LABEL_29:
          v50 = v18;
          v46 = a2;
          v40 = v9;
          v35 = -v16;
          v43 = v21;
          v36 = v21;
          do
          {
            result = FPE_ApplyNewMeas(v17, v22, a4, a5, a6, a7, a8, a9);
            v22 = (v22 + v35);
            --v36;
          }

          while (v36);
          v9 = v40;
          a2 = v46;
          v18 = v50;
          if (v43 >= 0x21)
          {
            if (g_FPE_LogSeverity)
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

              result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f FPE_MAX_ASSIST_IN_EPOCH = %d, but %d new samples were sent to FPE Manager", "FpeAdapter_extractAssistMeasData", 465, v37, v38, 32, v43);
              a2 = v46;
              v18 = v50;
            }

            g_FPE_AssertFlag = 1;
          }

LABEL_38:
          *(a2 + 2 * v9) = v18;
          goto LABEL_39;
        }
      }

      v32 = a3[1];
      if (v32 < v20)
      {
        if ((g_FPE_LogSeverity & 8) != 0)
        {
          v42 = dword_299761A28[result];
          v45 = a2;
          v49 = **&a3[qword_2997619C8[result]];
          v33 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
          if (g_TCU)
          {
            v34 = *(g_TCU + 8);
          }

          else
          {
            v34 = 0.0;
          }

          result = LC_LOG_SEVERITY_GENERIC("DBG:[%s() #%d] TT = %d, %0.3f num new ExtA samples is large, and limited to maximum, numNewSamples = %d", "FpeAdapter_extractAssistMeasData", 430, v33, v34, v32);
          v20 = v32;
          v16 = v42;
          a2 = v45;
          v18 = v49;
        }

        else
        {
          v20 = a3[1];
        }
      }
    }

    v21 = v20;
    v22 = (v19 + (v20 - 1) * v16);
    if (!v9 && v20 > a3[1])
    {
      if (g_FPE_LogSeverity)
      {
        v23 = v20;
        v41 = v16;
        v44 = a2;
        v47 = v18;
        v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        if (g_TCU)
        {
          v25 = *(g_TCU + 8);
        }

        else
        {
          v25 = 0.0;
        }

        result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f numNewSamples = %d, (counter delta) of DMS assistance is bigger than PE array size = %d", "FpeAdapter_extractAssistMeasData", 441, v24, v25, v23, a3[1]);
        v21 = v23;
        v16 = v41;
        a2 = v44;
        v18 = v47;
      }

      g_FPE_AssertFlag = 1;
    }

    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (g_FPE_LogSeverity)
  {
    v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v27 = *(g_TCU + 8);
    }

    else
    {
      v27 = 0.0;
    }

    result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f meas type %d is not supported ", "FpeAdapter_extractAssistMeasData", 409, v26, v27, v9);
  }

  g_FPE_AssertFlag = 1;
LABEL_39:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NK_Check_TOW_Adjust(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 40);
  if (v2)
  {
    if (*(result + 128) == 1)
    {
      *(a2 + 792) = 0;
    }

    else
    {
      if (v2 >= 0)
      {
        v3 = *(a2 + 40);
      }

      else
      {
        v3 = -v2;
      }

      v4 = *(a2 + 640);
      if (v4 >= 3 && v3 >= TOW_stat_DeltaTOW_Limit[v4] || (v5 = *(a2 + 12), v5 >= 3) && v3 >= TOW_stat_DeltaTOW_Limit[v5])
      {
        *(a2 + 792) = 0;
        *(result + 132) = 24;
        *(result + 128) = 1;
        *(a2 + 640) = v4 - 1;
      }

      else
      {
        *(a2 + 792) = *(a2 + 792) - v2;
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm13_00SendGnssReqCnf(int a1, int a2, int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a3 == 2)
  {
    v10 = gnssOsa_Calloc("Gnm13_00SendGnssReqCnf", 82, 1, 0x14uLL);
    if (v10)
    {
      v6 = v10;
      *(v10 + 3) = a2;
      *(v10 + 4) = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v11 = mach_continuous_time();
        v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSA_GNSS_CNF =>LSIM AssistId,%u,Result,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm13_00SendGnssReqCnf", a2, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
      }

      v9 = 8596481;
      goto LABEL_11;
    }
  }

  else if (a3 == 4)
  {
    v5 = gnssOsa_Calloc("Gnm13_00SendGnssReqCnf", 61, 1, 0x14uLL);
    if (v5)
    {
      v6 = v5;
      *(v5 + 3) = a2;
      *(v5 + 4) = a1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v7 = mach_continuous_time();
        v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_START_MSB_GNSS_CNF =>LSIM AssistId,%u,Result,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm13_00SendGnssReqCnf", a2, a1);
        LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
      }

      v9 = 8597249;
LABEL_11:
      AgpsSendFsmMsg(128, 131, v9, v6);
    }
  }

  else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v13 = mach_continuous_time();
    v14 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType\n", (*&g_MacClockTicksToMsRelation * v13), "GNM", 87, "Gnm13_00SendGnssReqCnf", 515);
    LbsOsaTrace_WriteLog(0xBu, __str, v14, 2, 1);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm13_01EarlyRespCriteriaMet(uint64_t result)
{
  v10 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    if (*(result + 7) == 4 && ((v2 = *(result + 24), v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time()) - v2, v4 = *(v1 + 44), v3 < v4) ? (v5 = v3 + 1000 > v4) : (v5 = 0), v5))
    {
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ElapsedTime,%ums,EarlyRespTime,%ums,SafetyMargin,%ums\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_01EarlyRespCriteriaMet", v3, *(v1 + 44), 1000);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
      }

      *(v1 + 44) = v3;
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm13_02SendMsbGnssResp(_DWORD *a1, uint64_t a2, char a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_02SendMsbGnssResp", 152, 1, 0x88uLL);
  if (v6)
  {
    v7 = v6;
    *(v6 + 33) = *a1;
    v6[16] = a3;
    if (a2)
    {
      v8 = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      *(v6 + 60) = *(a2 + 48);
      *(v6 + 44) = v10;
      *(v6 + 28) = v9;
      *(v6 + 12) = v8;
      v11 = *(a2 + 64);
      v12 = *(a2 + 80);
      v13 = *(a2 + 96);
      *(v6 + 124) = *(a2 + 112);
      *(v6 + 108) = v13;
      *(v6 + 92) = v12;
      *(v6 + 76) = v11;
      Gnm05_32PrintGadData(a2);
    }

    else
    {
      *(v6 + 8) = 7;
    }

    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v14 = mach_continuous_time();
      v15 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_POS_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v14), "GNM", 73, "Gnm13_02SendMsbGnssResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v15, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8596995, v7);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void Gnm13_03SendAbortCnf(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("Gnm13_03SendAbortCnf", 188, 1, 0x14uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 3) = a1;
    *(v4 + 4) = a2;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_POSN_ABORT_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_03SendAbortCnf");
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8591873, v5);
  }

  v8 = *MEMORY[0x29EDCA608];
}

void Gnm13_04SendGnssPosAidReq(int a1, _BYTE *a2, int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_04SendGnssPosAidReq", 215, 1, 0x50uLL);
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v6[18] = a1;
  if (a2)
  {
    if (Gnm05_25PopulateGnssAidReq(a2, v6 + 2, a3))
    {
LABEL_4:
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v8 = mach_continuous_time();
        v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_AID_REQ_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm13_04SendGnssPosAidReq");
        LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8596739, v7);
      goto LABEL_22;
    }
  }

  else if (Gnm05_27PopulateDefaultGnssAidReq(v6 + 2, a3))
  {
    goto LABEL_4;
  }

  v10 = *(v7 + 3);
  if (v10)
  {
    free(v10);
  }

  *(v7 + 3) = 0;
  v11 = *(v7 + 4);
  if (v11)
  {
    free(v11);
  }

  *(v7 + 4) = 0;
  v12 = *(v7 + 5);
  if (v12)
  {
    free(v12);
  }

  *(v7 + 5) = 0;
  v13 = *(v7 + 6);
  if (v13)
  {
    free(v13);
  }

  *(v7 + 6) = 0;
  v14 = *(v7 + 7);
  if (v14)
  {
    free(v14);
  }

  *(v7 + 7) = 0;
  v15 = *(v7 + 8);
  if (v15)
  {
    free(v15);
  }

  free(v7);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v16 = mach_continuous_time();
    v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Aid not required\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm13_04SendGnssPosAidReq");
    LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
  }

LABEL_22:
  v18 = *MEMORY[0x29EDCA608];
}

void Gnm13_05AssistHandleAssistStatus(uint64_t a1, _BYTE *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = *(a1 + 8);
    v6 = *(v5 + 6);
    v7 = *(v5 + 58) == 0;
    v8 = 78;
    if (!v7)
    {
      v8 = 89;
    }

    v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqType,%u,AssistAllwd,%c\n", v4, "GNM", 73, "Gnm13_05AssistHandleAssistStatus", v6, v8);
    LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
  }

  v10 = *(a1 + 8);
  if (*(v10 + 58) == 1 && (*(v10 + 6) & 0x10) != 0)
  {
    Gnm13_04SendGnssPosAidReq(*v10, a2, *(v10 + 20));
  }

  v11 = *MEMORY[0x29EDCA608];
}

void Gnm13_07SendAidStatusCnf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5, a6);
  v23 = *MEMORY[0x29EDCA608];
  __dst[0] = 0;
  *&__dst[8] = 0;
  *&__dst[4] = 0;
  *&__dst[16] = 0;
  *&__dst[23] = 0;
  memset(&__dst[28], 0, 18);
  memset(&__dst[48], 0, 262);
  bzero(&__dst[312], 0x28CuLL);
  for (i = 0; i != 384; i += 3)
  {
    v8 = &__dst[i];
    *(v8 + 482) = 0;
    v8[966] = __dst[i + 966] & 0xE0;
  }

  memset(&__dst[1348], 0, 256);
  bzero(&__dst[1608], 0x1100uLL);
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v9 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v10 = 78;
    if (BYTE1(g_AssistReq))
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    if (g_AssistReq)
    {
      v10 = 89;
    }

    v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistStatusCnf ExtReq,%c,IntReq,%c\n", v9, "GNM", 73, "Gnm13_07SendAidStatusCnf", v10, v11);
    LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
  }

  if (g_AssistReq == 1)
  {
    v13 = gnssOsa_Calloc("Gnm13_07SendAidStatusCnf", 300, 1, 0xA0uLL);
    if (v13)
    {
      v14 = v13;
      if (v6)
      {
        if (AgpsFsmStopTimer(8399366) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v15 = mach_continuous_time();
          v16 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v15), "GNM", 87, "Gnm13_07SendAidStatusCnf", 1545);
          LbsOsaTrace_WriteLog(0xBu, __str, v16, 2, 1);
        }

        v17 = Gnm05_25PopulateGnssAidReq(v6, v14 + 2, 255);
      }

      else
      {
        v17 = Gnm05_27PopulateDefaultGnssAidReq(v13 + 2, 33);
      }

      *(v14 + 72) = v17;
      *(v14 + 152) = 0;
      if (g_PosEstimate == 1)
      {
        memcpy(__dst, &g_PosEstimate, sizeof(__dst));
        Gnm05_43ConvertNavToGpsGad((v14 + 10), v14 + 132, &__dst[16], *&__dst[4]);
        *(v14 + 152) = *(v14 + 21) == 1;
      }

      *(v14 + 19) = HIDWORD(g_AssistReq);
      HIDWORD(g_AssistReq) = -1;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v18 = mach_continuous_time();
        v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 73, "Gnm13_07SendAidStatusCnf");
        LbsOsaTrace_WriteLog(0xBu, __str, v19, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8591361, v14);
      LOBYTE(g_AssistReq) = 0;
    }
  }

  v20 = *MEMORY[0x29EDCA608];
}

void Gnm13_08SendErrAssistStatus(void)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_AssistReq == 1)
  {
    v0 = gnssOsa_Calloc("Gnm13_08SendErrAssistStatus", 363, 1, 0xA0uLL);
    if (v0)
    {
      v1 = v0;
      v0[72] = 0;
      v0[152] = 0;
      if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v2 = mach_continuous_time();
        v3 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:LSIM_GNM_AID_STATUS_CNF =>LSIM\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm13_08SendErrAssistStatus");
        LbsOsaTrace_WriteLog(0xBu, __str, v3, 4, 1);
      }

      AgpsSendFsmMsg(128, 131, 8591361, v1);
      LOBYTE(g_AssistReq) = 0;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

unint64_t Gnm13_09SendAsstGadData(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  v15 = *MEMORY[0x29EDCA608];
  v5 = *(result + 2);
  if (v5 == 3)
  {
    result = LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0);
    if (result)
    {
      bzero(__str, 0x410uLL);
      v11 = mach_continuous_time();
      v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: GADPos ignored Ecall pre-emptive sess\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm13_09SendAsstGadData");
      result = LbsOsaTrace_WriteLog(0xBu, __str, v12, 4, 1);
    }

    if (a3)
    {
      result = Gnm10_28StopPositioning(v4);
    }
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 8);
    v7 = *(v6 + 6);
    if ((v7 & 0x10) != 0)
    {
      if (!*(v6 + 44) || (a3 & 1) != 0 || (result = Gnm13_01EarlyRespCriteriaMet(*(result + 8)), result))
      {
        Gnm13_02SendMsbGnssResp(v6, a2, a3);
        result = mach_continuous_time();
        *(v6 + 52) = (*&g_MacClockTicksToMsRelation * result);
      }
    }

    if (a3)
    {
      Gnm10_28StopPositioning(v4);
      result = Gnm02_21DeleteInstn(v4);
    }

    if ((v7 & 0x10) == 0)
    {
LABEL_11:
      result = LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0);
      if (result)
      {
        bzero(__str, 0x410uLL);
        v9 = mach_continuous_time();
        v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm13_09SendAsstGadData", 2052);
        result = LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm13_10SendMsaGnssResp(_DWORD *a1, const void *a2, char a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = gnssOsa_Calloc("Gnm13_10SendMsaGnssResp", 461, 1, 0x285ACuLL);
  if (v6)
  {
    v7 = v6;
    v6[41322] = *a1;
    if (a2)
    {
      Gnm05_35PrintMeas(a2);
      memcpy(v7 + 12, a2, 0x2859CuLL);
    }

    else
    {
      v6[173] = 7;
      v6[11] = 7;
    }

    v7[16] = a3;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v8 = mach_continuous_time();
      v9 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_POSN_GNSS_MSR_RESULT_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm13_10SendMsaGnssResp");
      LbsOsaTrace_WriteLog(0xBu, __str, v9, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8596227, v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

unint64_t Gnm13_11SendAsstGnssMeas(unint64_t result, const void *a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(result + 2) == 2)
  {
    v5 = result;
    v6 = *(result + 8);
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: ReqType,%u,AllwdGnss,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm13_11SendAsstGnssMeas", *(v6 + 6), *(v6 + 20));
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 4, 1);
    }

    if (!*(v6 + 44) || (a3 & 1) != 0 || (result = Gnm13_01EarlyRespCriteriaMet(v6), result))
    {
      Gnm13_10SendMsaGnssResp(v6, a2, a3);
      result = mach_continuous_time();
      *(v6 + 52) = (*&g_MacClockTicksToMsRelation * result);
    }

    if (a3)
    {
      Gnm10_28StopPositioning(v5);
      result = Gnm02_21DeleteInstn(v5);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm13_13HandleAssistStatus(_BYTE *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
  {
    bzero(__str, 0x410uLL);
    v2 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v3 = 78;
    if (BYTE1(g_AssistReq))
    {
      v4 = 89;
    }

    else
    {
      v4 = 78;
    }

    if (g_AssistReq)
    {
      v3 = 89;
    }

    v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: AssistStatus ExtRequest,%c,IntRequest,%c\n", v2, "GNM", 73, "Gnm13_13HandleAssistStatus", v3, v4);
    LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
  }

  if (BYTE1(g_AssistReq) == 1)
  {
    BYTE1(g_AssistReq) = 0;
    if (a1)
    {
      if (AgpsFsmStopTimer(8399366) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
      {
        bzero(__str, 0x410uLL);
        v6 = mach_continuous_time();
        v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm13_13HandleAssistStatus", 1545);
        LbsOsaTrace_WriteLog(0xBu, __str, v7, 2, 1);
      }

      InstnAssistReq = Gnm02_37GetInstnAssistReq();
      if (InstnAssistReq)
      {
        v9 = InstnAssistReq;
        v10 = *(InstnAssistReq + 2);
        if (v10 == 2)
        {
          *(*(InstnAssistReq + 8) + 59) = 0;
          Gnm13_05AssistHandleAssistStatus(InstnAssistReq, a1);
        }

        else if (v10 == 1)
        {
          *(*(InstnAssistReq + 8) + 5) = 0;
        }

        else if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
        {
          bzero(__str, 0x410uLL);
          v11 = mach_continuous_time();
          v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm13_13HandleAssistStatus", 2052, *(v9 + 2));
          LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void Gnm13_15StartPosResp(unsigned __int16 *a1, int a2)
{
  v2 = a2;
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 1);
  v5 = *v4;
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v6 = mach_continuous_time();
      v7 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success AssistId,%u,InstId,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm13_15StartPosResp", v5, *a1);
      v8 = 1;
      LbsOsaTrace_WriteLog(0xBu, __str, v7, 4, 1);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v9 = mach_continuous_time();
      v10 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Fail AssistId,%u,InstId,%u\n", (*&g_MacClockTicksToMsRelation * v9), "GNM", 87, "Gnm13_15StartPosResp", v5, *a1);
      LbsOsaTrace_WriteLog(0xBu, __str, v10, 2, 1);
      v8 = 0;
    }
  }

  if ((*(v4 + 6) & 4) != 0)
  {
    Gnm13_00SendGnssReqCnf(v8, *v4, 4);
    goto LABEL_13;
  }

  if ((*(v4 + 6) & 2) != 0)
  {
    Gnm13_00SendGnssReqCnf(v8, *v4, 2);
    if (v2)
    {
      goto LABEL_14;
    }

LABEL_20:
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v16 = mach_continuous_time();
      v17 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Clearing Assist Session AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v16), "GNM", 73, "Gnm13_15StartPosResp", *v4);
      LbsOsaTrace_WriteLog(0xBu, __str, v17, 4, 1);
    }

    Gnm02_21DeleteInstn(a1);
    goto LABEL_23;
  }

  if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
  {
LABEL_13:
    if (v2)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  bzero(__str, 0x410uLL);
  v11 = mach_continuous_time();
  v12 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx ReqType,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 87, "Gnm13_15StartPosResp", 770, *(v4 + 6));
  LbsOsaTrace_WriteLog(0xBu, __str, v12, 2, 1);
  if ((v2 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v4[17])
  {
    goto LABEL_23;
  }

  v13 = *(a1 + 1);
  if (!v13)
  {
    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    mach_continuous_time();
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnInfo\n");
    goto LABEL_36;
  }

  v14 = *(a1 + 2);
  if (v14 != 1)
  {
    if (v14 == 2)
    {
      v15 = 59;
      goto LABEL_27;
    }

    if (!LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      goto LABEL_23;
    }

    bzero(__str, 0x410uLL);
    v22 = mach_continuous_time();
    v23 = *(a1 + 2);
    v19 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx InstnType,%hhu\n", (*&g_MacClockTicksToMsRelation * v22));
LABEL_36:
    LbsOsaTrace_WriteLog(0xBu, __str, v19, 2, 1);
    goto LABEL_23;
  }

  v15 = 5;
LABEL_27:
  *(v13 + v15) = 1;
  if ((g_AssistReq & 0x100) == 0 && (g_AssistReq & 1) == 0)
  {
    if (AgpsFsmStartTimer(0x802A06u, 0x1388u) && LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v20 = mach_continuous_time();
      v21 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v20), "GNM", 87, "Gnm13_14HandleIntlAssistStatusReq", 1544);
      LbsOsaTrace_WriteLog(0xBu, __str, v21, 2, 1);
    }

    Gnm17_13SendPollAssistStatus();
  }

  BYTE1(g_AssistReq) = 1;
LABEL_23:
  v18 = *MEMORY[0x29EDCA608];
}

void Gnm13_16StopPosResp(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = **(a1 + 8);
  if (a2)
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Success AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm13_16StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    v6 = Gnm02_21DeleteInstn(a1);
  }

  else
  {
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 2, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v7 = mach_continuous_time();
      v8 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: Error AssistId,%u\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm13_16StopPosResp", v3);
      LbsOsaTrace_WriteLog(0xBu, __str, v8, 2, 1);
    }

    Gnm02_21DeleteInstn(a1);
    v6 = 0;
  }

  Gnm13_03SendAbortCnf(v3, v6);
  v9 = *MEMORY[0x29EDCA608];
}

void Gnm13_17SendClearCacheInd(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = gnssOsa_Calloc("Gnm13_17SendClearCacheInd", 738, 1, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    *(v2 + 3) = a1;
    if (LbsOsaTrace_IsLoggingAllowed(0xBu, 4, 0, 0))
    {
      bzero(__str, 0x410uLL);
      v4 = mach_continuous_time();
      v5 = snprintf(__str, 0x40FuLL, "%10u %s%c %s: FSM:GNM_LSIM_CLEAR_DATA_IND =>LSIM\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm13_17SendClearCacheInd");
      LbsOsaTrace_WriteLog(0xBu, __str, v5, 4, 1);
    }

    AgpsSendFsmMsg(128, 131, 8604675, v3);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t DD_Delete_Bad_QZSS_Data(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v5 = a4 + 1076;
  v6 = a4 + 1346;
  v7 = (a1 + 4);
  v8 = 5848;
  v9 = 6408;
  result = 0xFFFFFFFFLL;
  do
  {
    v11 = a4[1067];
    if (*(v11 + v4) == 1)
    {
      *(v7 - 1) = 16777472;
      *v7 = 256;
      *(a2 + 2 * v4) = 256;
      *(v11 + v4) = 0;
      *(a4[1065] + v4) = 0;
      *(a4[1069] + v4) = 0;
      *(v5 + 92) = 0uLL;
      v5[4] = 0uLL;
      v5[5] = 0uLL;
      v5[2] = 0uLL;
      v5[3] = 0uLL;
      *v5 = 0uLL;
      v5[1] = 0uLL;
      *(a4[1075] + v4) = 0;
      *(a4[1072] + v4) = 1;
      v12 = (p_NV + v9);
      *(v12 - 1) = 0xFFFFFFFFLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      v12[2] = 0uLL;
      v12[3] = 0uLL;
      v12[4] = 0uLL;
      v12[5] = 0uLL;
      *(v12 + 92) = 0uLL;
    }

    if (*(a4[1068] + v4) == 1)
    {
      *(a3 + v4) = -1;
      *(a4[1068] + v4) = 0;
      *(a4[1066] + v4) = 0;
      *(a4[1071] + v4) = 0;
      *(v6 + 28) = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a4[1075] + v4) = 0;
      v13 = (p_NV + v8);
      *(v13 - 1) = 0xFFFFFFFFLL;
      *v13 = 0uLL;
      v13[1] = 0uLL;
      *(v13 + 28) = 0uLL;
    }

    ++v4;
    v8 += 56;
    v9 += 120;
    v6 = (v6 + 44);
    v5 = (v5 + 108);
    v7 += 3;
  }

  while (v4 != 10);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Delete_Inhib_QZSS_Data(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v6 = a5 + 1076;
  v7 = a5 + 1346;
  v8 = a2 + 2;
  v9 = 6408;
  v10 = 5848;
  do
  {
    if (*(result + v5) == 1)
    {
      *(v8 - 2) = 16777472;
      *(v8 + 2) = 256;
      *(a3 + 2 * v5) = 256;
      *(a5[1067] + v5) = 0;
      *(a5[1065] + v5) = 0;
      *(a5[1069] + v5) = 0;
      *(v6 + 92) = 0uLL;
      v6[4] = 0uLL;
      v6[5] = 0uLL;
      v6[2] = 0uLL;
      v6[3] = 0uLL;
      *v6 = 0uLL;
      v6[1] = 0uLL;
      *(a5[1070] + v5) = 0;
      *(v6 + 1172) = 0uLL;
      *(v6 + 1144) = 0uLL;
      *(v6 + 1160) = 0uLL;
      *(v6 + 1112) = 0uLL;
      *(v6 + 1128) = 0uLL;
      *(v6 + 1080) = 0uLL;
      *(v6 + 1096) = 0uLL;
      *(a5[1075] + v5) = 0;
      *(a5[1072] + v5) = 1;
      v11 = (p_NV + v9);
      *(v11 - 1) = 0xFFFFFFFFLL;
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v11[2] = 0uLL;
      v11[3] = 0uLL;
      v11[4] = 0uLL;
      v11[5] = 0uLL;
      *(v11 + 92) = 0uLL;
      *(a4 + v5) = -1;
      *(a5[1068] + v5) = 0;
      *(a5[1066] + v5) = 0;
      *(a5[1071] + v5) = 0;
      *(v7 + 28) = 0uLL;
      *v7 = 0uLL;
      v7[1] = 0uLL;
      v12 = (p_NV + v10);
      *(v12 - 1) = 0xFFFFFFFFLL;
      *v12 = 0uLL;
      v12[1] = 0uLL;
      *(v12 + 28) = 0uLL;
    }

    ++v5;
    v9 += 120;
    v10 += 56;
    v7 = (v7 + 44);
    v6 = (v6 + 108);
    v8 += 6;
  }

  while (v5 != 10);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Check_Age_QZSS_Data(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x29EDCA608];
  if (result < 1)
  {
LABEL_44:
    v26 = *MEMORY[0x29EDCA608];
    return result;
  }

  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = result + 900;
  if (result <= 0x15180)
  {
    v12 = 86400;
  }

  else
  {
    v12 = result;
  }

  v13 = v12 - 86400;
  v14 = *(a6 + 8552);
  v30 = (result - a2 / 0x3E8) & ~((result - a2 / 0x3E8) >> 31);
  v15 = 8608;
  do
  {
    if (*(v14 + v8) != 1)
    {
      goto LABEL_17;
    }

    v16 = *(a6 + v15);
    if (v16 < v13 && v16 >= 1)
    {
LABEL_15:
      v10 = 1;
      *(*(a6 + 8536) + v8) = 1;
      goto LABEL_17;
    }

    if (v16)
    {
      if (v16 > v11)
      {
        v9 = (v9 + 1);
        if ((*(a6 + 39302) & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      *(a6 + v15) = v30;
    }

LABEL_17:
    ++v8;
    v15 += 108;
  }

  while (v8 != 10);
  if (v9 >= 1)
  {
    EvLog_nd("DD_Check_Age_QZSS_Data: Deleting EPH since in the future", 1, a3, v9);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_QZSS_Data: Skipping since SkipFutureCheck set");
    }
  }

  v18 = 0;
  v19 = 0;
  if (v7 <= 15724800)
  {
    v20 = 15724800;
  }

  else
  {
    v20 = v7;
  }

  v21 = v20 - 15724800;
  v22 = 10768;
  do
  {
    if (*(*(a6 + 8568) + v18) == 1)
    {
      v23 = *(a6 + v22);
      if (v23 >= v21 || v23 < 1)
      {
        if (v23)
        {
          if (v23 > v11)
          {
            v19 = (v19 + 1);
            EvLog_v("DD_Check_Age_QZSS_Data: Future almanac deleted SV %d age %d thresh %d", v18 + 193, (v7 - v23) / 604800, 0);
            if ((*(a6 + 39302) & 1) == 0)
            {
              v10 = 1;
              *(*(a6 + 8544) + v18) = 1;
            }
          }
        }

        else
        {
          *(a6 + v22) = v30;
        }
      }

      else
      {
        v10 = 1;
        *(*(a6 + 8544) + v18) = 1;
        EvLog_v("DD_Check_Age_QZSS_Data: Old almanac deleted SV %d age %d thresh %d", v18 + 193, (v7 - v23) / 604800, (v7 - v21) / 604800);
      }
    }

    ++v18;
    v22 += 44;
  }

  while (v18 != 10);
  if (v19 >= 1)
  {
    EvLog_nd("DD_Check_Age_QZSS_Data: Deleting ALM since in the future", 1, a3, v19);
    if (*(a6 + 39302) == 1)
    {
      EvLog("DD_Check_Age_QZSS_Data: Skipping since SkipFutureCheck set");
    }
  }

  result = a3;
  if ((v10 & 1) == 0)
  {
    goto LABEL_44;
  }

  v25 = *MEMORY[0x29EDCA608];

  return DD_Delete_Bad_QZSS_Data(a3, a4, a5, a6);
}

unint64_t DD_Proc_QZSS_Data(unint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5, void *a6)
{
  v146 = result;
  v9 = a2;
  v172 = *MEMORY[0x29EDCA608];
  *v149 = 0;
  v10 = *(a2 + 8);
  v144 = a6 + 1076;
  if (!*(a6 + 27 * v10 + 2178))
  {
    *(a6[1075] + v10) = 0;
  }

  v11 = *(a2 + 56);
  if ((v11 & 1) == 0)
  {
    goto LABEL_178;
  }

  v12 = (a2 + 16);
  if (*(a2 + 18) << 16 != 9109504)
  {
    goto LABEL_178;
  }

  if ((v11 & 2) == 0)
  {
    v13 = (a2 + 12);
LABEL_7:
    v14 = 0;
    *v13 = 0;
    goto LABEL_18;
  }

  v15 = (*(a2 + 20) >> 2) & 7;
  *(a2 + 12) = (*(a2 + 20) >> 2) & 7;
  v13 = (a2 + 12);
  if (v15)
  {
    result = DD_Predict_Subframe_Number(a4, v149);
    if (result)
    {
      v14 = v15;
      v9 = a2;
      if (v15 != v149[0] && !*a3 && (*(a6[6] + v10) & 1) == 0)
      {
        if (v15 == 1 && v149[0] == 2)
        {
          v14 = 1;
        }

        else if (v15 == 2 && v149[0] == 3)
        {
          v14 = 2;
        }

        else
        {
          if (v15 != 3 || v149[0] != 4)
          {
            result = EvCrt_v("DD_Proc_QZSS_Data:  SV %2d Subframe Number Error - decoded %d  expected %d", v10 + 1, v15, v149[0]);
            v9 = a2;
            goto LABEL_7;
          }

          v14 = 3;
        }
      }
    }

    else
    {
      v9 = a2;
      v14 = v15;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  if (g_Enable_Event_Log >= 4u)
  {
    EvLog_nd("QZS Subf ", 4, v9, *(v9 + 6), v14, *(a4 + 24), *(a4 + 8));
    v16 = (v146 + 6 * *(a2 + 8));
    result = EvLog_nd("QZS Subf masks", 3, v17, v16[2318], v16[2319], v16[2320]);
    v9 = a2;
    v14 = *(a2 + 12);
  }

  if ((v14 - 1) < 3)
  {
    *(v9 + 13) = 0;
    v25 = *(v9 + 8);
    v26 = *(v144 + 27 * v25 + 26);
    v140 = a6;
    v141 = a5;
    v138 = v14 - 1;
    v139 = v12;
    if (v26 == 0xFFFFFF || (*(a6[1063] + v25) & 1) == 0)
    {
      v133 = 0;
      v134 = (v26 == 0xFFFFFF) & *(a6[1063] + v25);
      v27 = *(v9 + 56);
    }

    else
    {
      v27 = *(v9 + 56);
      if (*(a6[1069] + v25) == 1)
      {
        v28 = 0;
        v29 = v144 + 108 * v25;
        do
        {
          v30 = 1 << (8 * v14 - 8 + v28);
          if ((v26 & v30) == 0 && ((v27 >> v28) & 1) != 0 && *(v9 + 24 + 4 * v28) == *&v29[4 * (8 * v14 - 8) + 8 + 4 * v28])
          {
            v26 |= v30;
            *(v29 + 26) = v26;
          }

          ++v28;
        }

        while (v28 != 8);
        v133 = v26 == 0xFFFFFF;
        v134 = 1;
      }

      else
      {
        v133 = 0;
        v134 = 1;
      }
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v135 = v14;
    v136 = v146 + 3676;
    v37 = v14 - 1;
    v137 = v146 + 4636;
    v38 = v146 + 4636 + 6 * v25;
    v142 = v25;
    v143 = v25 + 193;
    v39 = 32 * v14 + 96 * v25 + v146 + 3644;
    v40 = v9 + 24;
    do
    {
      v41 = 1 << (v32 + 2);
      v42 = (v41 & *(v38 + 2 * v37));
      if (v42)
      {
        ++v33;
      }

      if ((v41 & v27) != 0)
      {
        ++v34;
        v43 = v42 == 0;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        ++v35;
        v44 = *(v39 + 4 * v32);
        if (*(v40 + 4 * v32) != v44)
        {
          v45 = v36 + 1;
          v46 = v14;
          v47 = v37;
          v48 = v27;
          v49 = v35;
          v148 = v33;
          EvLog_v("GPS_Data_Decode: SV %d SF %d Diff Wd %d 0x%x 0x%x", v143, v14, v32 + 2, *(v40 + 4 * v32), v44);
          v33 = v148;
          v35 = v49;
          v36 = v45;
          v27 = v48;
          v37 = v47;
          v14 = v46;
          v9 = a2;
        }
      }

      ++v32;
    }

    while (v32 != 8);
    v50 = v146;
    v51 = v146 + 3584;
    v52 = v141;
    result = v139;
    if (v36 >= 1)
    {
      if (v36 == 1 && v35 >= 4 && (v14 == 1 && (v27 & 0x3C4) != 0x3C4 || v14 >= 2 && (v27 & 0x3FC) != 0x3FC))
      {
        goto LABEL_178;
      }

      v33 = 0;
      v53 = 2 * v14 - 2;
      *(v137 + 6 * v142 + v53) = 0;
      *(v51 + 6 * v142 + v53) = 256;
      v50 = v146;
    }

    if (v35 - v36 <= 1)
    {
      if (v34 >= v33)
      {
        *(v137 + 6 * v142 + 2 * (v135 - 1)) = v27;
        v64 = *(v9 + 40);
        v65 = (v136 + 96 * v142 + 32 * (v135 - 1));
        *v65 = *(v9 + 24);
        v65[1] = v64;
      }
    }

    else
    {
      v54 = 0;
      v55 = v137 + 6 * v142 + 2 * v14;
      v58 = *(v55 - 2);
      v56 = (v55 - 2);
      v57 = v58;
      v59 = v9 + 24;
      v60 = 32 * v14 + 96 * v142 + v50 + 3644;
      do
      {
        v61 = 1 << (v54 + 2);
        v62 = v61 & v57;
        if ((v61 & v27) != 0 && v62 == 0)
        {
          *(v60 + 4 * v54) = *(v59 + 4 * v54);
          v57 |= (1 << (v54 + 2));
          *v56 = v57;
        }

        else if ((v61 & v27) == 0 && v62)
        {
          *(v59 + 4 * v54) = *(v60 + 4 * v54);
          LODWORD(v27) = v27 | (1 << (v54 + 2));
        }

        ++v54;
      }

      while (v54 != 8);
    }

    if (v138 > 2)
    {
      goto LABEL_178;
    }

    v66 = 0x90207u >> (8 * (v138 & 0x1F));
    if (((v27 >> (v66 & 0xF)) & 1) == 0)
    {
      goto LABEL_178;
    }

    v67 = BYTE2(v139[v66 & 0xF]);
    if (v14 == 1 && (v27 & 0x3C4) != 0x3C4)
    {
      goto LABEL_178;
    }

    if (v14 >= 2 && (v27 & 0x3FC) != 0x3FC)
    {
      goto LABEL_178;
    }

    v68 = v146 + 3654;
    v69 = (v51 + 6 * v142);
    v70 = v69[v37];
    if (v67 != v70)
    {
      v69[v37] = v67;
    }

    v71 = v142;
    if (v67 != *(v68 + 2 * v142))
    {
      for (i = 0; i != 6; i += 2)
      {
        if (2 * v37 != i)
        {
          *(v146 + 6 * v142 + 4636 + i) = 0;
        }
      }

      v71 = v142;
      *(v68 + 2 * v142) = v67;
    }

    v73 = (v137 + 6 * v71);
    v74 = *v73;
    if ((~v74 & 0x3C4) != 0 || (~v73[1] & 0x3FC) != 0 || (~v73[2] & 0x3FC) != 0 || (v75 = *v69, v75 != v69[1]) || v75 != v69[2])
    {
LABEL_143:
      if ((~v74 & 0x3C4) != 0)
      {
        goto LABEL_178;
      }

      if ((~v73[1] & 0x3FC) != 0)
      {
        goto LABEL_178;
      }

      if ((~v73[2] & 0x3FC) != 0)
      {
        goto LABEL_178;
      }

      v115 = *v69;
      if (v115 != v69[1] || v115 != v69[2])
      {
        goto LABEL_178;
      }

      v116 = v146 + 4696;
      v117 = *(v136 + 96 * v142);
      if (v67 == v70)
      {
        v118 = v134;
        if ((0xE4FE7F3uLL >> ((v117 >> 2) & 0x1F)))
        {
          v119 = v134;
        }

        else
        {
          v119 = 1;
        }

        if (v119 == 1)
        {
          v120 = v142;
          v121 = *(v116 + v142) == 0;
        }

        else
        {
          v121 = 0;
          v120 = v142;
          *(v116 + v142) = 1;
        }
      }

      else
      {
        v121 = 0;
        v120 = v142;
        *(v116 + v142) = 1;
        v118 = v134;
      }

      *v73 = 0;
      v73[2] = 0;
      v122 = v118 ^ 1;
      if (((0xE4FE7F3uLL >> ((v117 >> 2) & 0x1F)) & 1) == 0)
      {
        v122 = 1;
      }

      if (v122)
      {
        goto LABEL_173;
      }

      v123 = (v117 >> 14) & 0x3FF;
      if (*(a4 + 5))
      {
        do
        {
          v124 = v123;
          v123 += 1024;
        }

        while (*(a4 + 16) - 512 > v124);
        v52 = v141;
        v120 = v142;
        v9 = a2;
        if (*(a4 + 16) == v124)
        {
          goto LABEL_173;
        }

        if (*a4 < 3)
        {
          goto LABEL_173;
        }

        v125 = *(a4 + 24);
        if ((v125 - 32) >= 0x93A41)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v126 = *(*(p_api + 72) + 1026);
        if (v123 > v126)
        {
          LOWORD(v126) = v123;
        }

        v124 = ((v123 ^ 0x3FF) + v126) & 0xFC00 | v123;
        v125 = *(a4 + 24);
      }

      v127 = v124;
      result = DD_Submit_WeekNum((v120 - 63), v124, v140, v136, a4);
      v9 = a2;
      if (result)
      {
        v128 = v125 + 604800 * v127;
        if (*a4 <= 2)
        {
          v128 = 0;
        }

        *v52 = v128;
        if (!v121)
        {
          goto LABEL_178;
        }

        goto LABEL_175;
      }

LABEL_173:
      if (!v121)
      {
        goto LABEL_178;
      }

      v128 = *v52;
LABEL_175:
      v129 = *(v9 + 8);
      v130 = (v144 + 108 * v129);
      v131 = *v130 != 0;
      *v130 = v128;
      if ((v131 & ~v133 & 1) == 0 && *v52 >= 1)
      {
        *(*(v140 + 8576) + v129) = 1;
        result = Core_Save_QZSS_Eph((v129 - 63), 0, v130);
      }

      goto LABEL_178;
    }

    v76 = (v136 + 96 * v142);
    v77 = v76[3];
    v167 = v76[2];
    v168 = v77;
    v78 = v76[5];
    v169 = v76[4];
    v170 = v78;
    v79 = v76[1];
    v165 = *v76;
    v171 = 0;
    v164[0] = *v141;
    v164[1] = 4;
    v166 = v79;
    memset(v150, 0, sizeof(v150));
    v151 = 0;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0;
    Get_GPS_Kep_Ephemeris(5, v142 - 63, v164, v150);
    v80 = Kep_Check_Ephemeris(*v141 / 604800, *v141 % 604800, v150);
    v81 = v80;
    result = ST_Check_Eph_Kep_Err("DD_Proc_QZSS_Eph_Subframe", v80, v150);
    if ((result & 1) == 0)
    {
      if ((v81 & 0xC) != 0)
      {
        *v73 = 0;
      }

      if ((v81 & 0x3F0) != 0)
      {
        v73[1] = 0;
      }

      if ((v81 & 0xC00) != 0)
      {
        v73[2] = 0;
        v52 = v141;
LABEL_141:
        *(*(v140 + 8600) + v142) = 1;
        goto LABEL_142;
      }

      v52 = v141;
      if ((v81 & 0x3FC) != 0)
      {
        goto LABEL_141;
      }
    }

LABEL_142:
    v74 = *v73;
    v9 = a2;
    goto LABEL_143;
  }

  if ((v14 - 4) < 2)
  {
    if ((~*(v9 + 56) & 0x3FE) == 0 && *(a4 + 5) == 1)
    {
      v18 = *(a4 + 16);
      if (v18 >= 1025)
      {
        v19 = *(v9 + 24);
        v20 = HIWORD(v19) & 0x3F;
        *(v9 + 13) = BYTE2(v19) & 0x3F;
        v21 = (v19 >> 22) & 3;
        *(v9 + 14) = v21;
        if (!v21)
        {
          v22 = (v20 - 1);
          if (v22 <= 0x1F)
          {
            v23 = v9;
            result = Decode_GPS_Check_Alm_TOA(v12, *(*a6 + v22), v18, (v146 + v22 + 192), (v9 + 10), &v149[1]);
            if (result)
            {
              v24 = *(v23 + 32);
              if ((v24 & 0x1F) == 0x1F || (v24 & 0x1F) == 3)
              {
                v24 &= 0xFFFFFFE0;
                *(v23 + 32) = v24;
              }

              if ((v24 & 0xE0) != 0)
              {
                *(v23 + 32) = v24 & 0xFFFFFF1F;
              }

              result = DD_Proc_GPS_Alm_Subframe(*(v23 + 13), *(v23 + 10), v12, *a5, v146, v146 + 224, a6);
              v9 = a2;
            }

            else
            {
              v9 = v23;
              if (v149[1])
              {
                v82 = *(v23 + 13);
                v83 = a6 + 44 * (v82 - 1);
                v84 = *(v83 + 1754);
                v85 = *a5;
                *(v83 + 1754) = *a5;
                if (!v84 && v85 >= 1)
                {
                  v86 = 0;
                  LODWORD(v87) = 0;
                  v88 = (v83 + 7016);
                  v89 = p_NV;
                  v90 = p_NV + 56 * (v82 - 1);
                  v91 = *v88;
                  v92 = v88[1];
                  *(v90 + 220) = *(v88 + 28);
                  *(v90 + 192) = v91;
                  *(v90 + 208) = v92;
                  v93 = v89 + 56 * v82 + 136;
                  v94 = 55665;
                  do
                  {
                    v95 = *(v93 + v86) ^ BYTE1(v94);
                    v94 = 52845 * (v94 + v95) + 22719;
                    v87 = (v87 + v95);
                    ++v86;
                  }

                  while (v86 != 48);
                  *(v90 + 184) = v87;
                }
              }
            }
          }

          v21 = *(v9 + 14);
        }

        if (v21 == 3)
        {
          v96 = *(v9 + 13);
          if ((v96 - 1) <= 9)
          {
            v97 = v9;
            result = Decode_GPS_Check_Alm_TOA(v12, *(a6[1063] + (v96 - 1)), v18, (v146 + (v96 - 1) + 3644), (v9 + 10), &v149[1]);
            if (result)
            {
              result = DD_Proc_QZSS_Alm_Subframe(*(v97 + 13), *(v97 + 10), v12, *a5, v146 + 3584, v146 + 3654, a6);
              v9 = v97;
            }

            else
            {
              v9 = v97;
              if (v149[1])
              {
                v98 = *(v97 + 13);
                v99 = a6 + 44 * v98;
                v100 = *(v99 + 2681);
                v101 = *a5;
                *(v99 + 2681) = *a5;
                if (!v100 && v101 >= 1)
                {
                  v103 = 0;
                  LODWORD(v104) = 0;
                  v105 = (v99 + 10724);
                  v106 = p_NV + 56 * (v98 - 64);
                  v107 = v106 - 4968;
                  v108 = *v105;
                  v109 = v105[1];
                  *(v107 + 36) = *(v105 + 28);
                  *(v107 + 24) = v109;
                  *(v107 + 8) = v108;
                  v110 = v106 - 4960;
                  v111 = 55665;
                  do
                  {
                    v112 = *(v110 + v103) ^ BYTE1(v111);
                    v111 = 52845 * (v111 + v112) + 22719;
                    v104 = (v104 + v112);
                    ++v103;
                  }

                  while (v103 != 48);
                  *v107 = v104;
                }
              }
            }
          }
        }

        v113 = *(v9 + 14);
        if (*(v9 + 14))
        {
          goto LABEL_133;
        }

        if (*(v9 + 13) == 56)
        {
          result = DD_Proc_GPS_ION_UTC_Subframe(*(v9 + 8), v12, *a5, v18, a6[1075], a6);
          v9 = a2;
          v113 = *(a2 + 14);
LABEL_133:
          if (v113 == 3 && *(v9 + 13) == 51)
          {
            result = DD_Proc_QZSS_Health_Subframe(v12, *a5, v146 + 3584, v146 + 3654, v146 + 3644, a6);
            v114 = a6[1075];
            *(v114 + 8) = 0;
            *v114 = 0;
          }
        }
      }
    }

LABEL_178:
    v132 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (!v14)
  {
    goto LABEL_178;
  }

  v31 = *MEMORY[0x29EDCA608];

  return EvCrt_Illegal_Default("DD_Proc_QZSS_Data", 0x3B5u);
}

BOOL DD_Proc_QZSS_Alm_Subframe(char a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v53 = *MEMORY[0x29EDCA608];
  v12 = ((*(a3 + 16) & 0xE0) == 0) & (0xE4FE7F3uLL >> *(a3 + 16));
  v13 = (a1 - 1);
  v14 = *(a7[1063] + v13);
  if (v14 == 1 && v12 == 0)
  {
    goto LABEL_9;
  }

  if (((v14 == 0) & v12) != 1)
  {
    goto LABEL_13;
  }

  v16 = a7[1069];
  if (*(v16 + v13) == 1)
  {
    v17 = a7 + 108 * (a1 - 1);
    v18 = *(v17 + 2152);
    if (((0xE4FE7F3uLL >> ((*(v17 + 2154) >> 2) & 0x1F)) & 1) == 0 && v18 + 3600 > a4)
    {
LABEL_9:
      LOBYTE(v12) = 0;
      goto LABEL_13;
    }

    if (v18 + 100 < a4)
    {
      *(a7[1065] + v13) = 0;
      *(v16 + v13) = 0;
      v19 = a5 + 6 * (a1 - 1);
      *v19 = 16777472;
      *(v19 + 4) = 256;
      *(a6 + 2 * v13) = 256;
    }
  }

  LOBYTE(v12) = 1;
LABEL_13:
  v50 = 0;
  v49 = a4;
  v51 = *(a3 + 8);
  v52 = *(a3 + 24);
  v44 = 0;
  memset(v43, 0, 15);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  Get_GPS_Kep_Almanac(&v49, v43);
  LODWORD(v43[1]) = 5;
  v20 = Kep_Check_Almanac(a4 / 604800, v43);
  if (v20)
  {
    *(a7[1075] + v13) = 1;
  }

  result = ST_Check_Alm_Kep_Err("DD_Proc_QZSS_Alm_Subframe:", v20, v43);
  if (result)
  {
    v22 = a7[1063];
    *(v22 + v13) = v12;
    v23 = a7 + 44 * v13;
    v24 = (v23 + 10768);
    *(v23 + 5389) = a2;
    v25 = *(a3 + 8);
    *(v23 + 10796) = *(a3 + 24);
    *(v23 + 10780) = v25;
    *(v23 + 2692) = a4;
    *(v23 + 2693) = 4;
    *(a7[1066] + v13) = 1;
    *(a7[1071] + v13) = 1;
    if (*(v22 + v13))
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    *(a7[1064] + 20 * v13 + 4) = v26;
    if (a4 >= 1)
    {
      v27 = 0;
      LODWORD(v28) = 0;
      v29 = p_NV + 56 * (a1 - 64);
      v30 = v29 - 4968;
      v31 = *v24;
      v32 = v24[1];
      *(v30 + 36) = *(v24 + 28);
      *(v30 + 24) = v32;
      *(v30 + 8) = v31;
      v33 = v29 - 4960;
      v34 = 55665;
      do
      {
        v35 = *(v33 + v27) ^ BYTE1(v34);
        v34 = 52845 * (v34 + v35) + 22719;
        v28 = (v28 + v35);
        ++v27;
      }

      while (v27 != 48);
      *v30 = v28;
      v22 = a7[1063];
    }

    v36 = 0;
    LODWORD(v37) = 0;
    v38 = p_NV;
    v39 = *(v22 + 8);
    *(p_NV + 5828) = *v22;
    *(v38 + 5836) = v39;
    v40 = 55665;
    do
    {
      v41 = *(v38 + 5824 + v36) ^ BYTE1(v40);
      v40 = 52845 * (v40 + v41) + 22719;
      v37 = (v37 + v41);
      ++v36;
    }

    while (v36 != 40);
    *(v38 + 5816) = v37;
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t DD_Proc_QZSS_Health_Subframe(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v33 = *MEMORY[0x29EDCA608];
  result = Decode_QZSS_Health_Subframe(a1, v31);
  v12 = 0;
  v13 = a6 + 1076;
  v14 = (a3 + 4);
  v15 = a6 + 2697;
  v16 = 4;
  do
  {
    v17 = v31[v12];
    if (*(a6[1063] + v12))
    {
      if (v31[v12])
      {
        goto LABEL_4;
      }
    }

    else if (v31[v12])
    {
      result = *v15;
      v19 = a6[1069];
      if (*(v19 + v12) != 1 || ((0xE4FE7F3uLL >> ((v13[2] >> 2) & 0x1F)) & 1) != 0 || *v13 + 3600 <= a2)
      {
        v20 = a6[1071];
        if (*(v20 + v12) != 1)
        {
          goto LABEL_19;
        }

        v21 = 0xE4FE7F3uLL >> (result & 0x1F);
        result = *(v15 - 5);
        if ((v21 & 1) != 0 || result + 3600 <= a2)
        {
          result = (result + 100);
          if (result >= a2)
          {
LABEL_19:
            if (*(v19 + v12))
            {
LABEL_20:
              if (*v13 + 100 < a2)
              {
                *(a6[1065] + v12) = 0;
                *(v19 + v12) = 0;
                *(v14 - 1) = 16777472;
                *v14 = 256;
                *(a4 + 2 * v12) = 256;
              }
            }
          }

          else
          {
            *(a6[1066] + v12) = 0;
            *(v20 + v12) = 0;
            *(a5 + v12) = -1;
            v19 = a6[1069];
            if (*(v19 + v12))
            {
              goto LABEL_20;
            }
          }

LABEL_4:
          v18 = 1;
          goto LABEL_14;
        }
      }

      v31[v12] = 0;
    }

    v18 = 2;
LABEL_14:
    *(a6[1064] + v16) = v18;
    ++v12;
    v16 += 20;
    v14 += 3;
    v15 += 11;
    v13 += 27;
  }

  while (v12 != 10);
  v22 = 0;
  LODWORD(v23) = 0;
  v24 = a6[1063];
  *v24 = *v31;
  *(v24 + 8) = v32;
  v25 = a6[1063];
  v26 = p_NV;
  v27 = *(v25 + 8);
  *(p_NV + 5828) = *v25;
  *(v26 + 5836) = v27;
  v28 = 55665;
  do
  {
    v29 = *(v26 + 5824 + v22) ^ BYTE1(v28);
    v28 = 52845 * (v28 + v29) + 22719;
    v23 = (v23 + v29);
    ++v22;
  }

  while (v22 != 40);
  *(v26 + 5816) = v23;
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DD_Save_New_QZSS_Eph(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v28 = *MEMORY[0x29EDCA608];
  v11 = a5 + 1076;
  v12 = 10788;
  do
  {
    if (*(a3 + v10) != 1)
    {
      goto LABEL_19;
    }

    v13 = (a2 + v8);
    v14 = *(a2 + v8);
    if (!DD_Check_New_QZSS_Eph(v10, a2, a5))
    {
      *(a3 + v10) = 0;
      v13[4] = 0u;
      v13[5] = 0u;
      v13[2] = 0u;
      v13[3] = 0u;
      *v13 = 0u;
      v13[1] = 0u;
      goto LABEL_19;
    }

    v15 = (a5[1063] + v10);
    v16 = (0xE4FE7F3uLL >> ((v14 >> 2) & 0x1F)) & 1;
    if (!v16 || (*v15 & 1) != 0)
    {
      *v15 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = a5[1071];
      if (*(v17 + v10) == 1)
      {
        v18 = *(a5 + v12 - 20);
        if (((0xE4FE7F3uLL >> (*(a5 + v12) & 0x1F)) & 1) == 0 && v18 + 3600 > a1)
        {
          *v15 = 0;
LABEL_12:
          v19 = 2;
          goto LABEL_17;
        }

        if (v18 + 100 < a1)
        {
          *(a5[1066] + v10) = 0;
          *(v17 + v10) = 0;
          *(a4 + v10) = -1;
          v15 = (a5[1063] + v10);
        }
      }

      *v15 = 1;
    }

    v19 = 1;
LABEL_17:
    *(a5[1064] + v9) = v19;
    v20 = *v13;
    *(v11 + 3) = v13[1];
    *(v11 + 1) = v20;
    v21 = v13[2];
    v22 = v13[3];
    v23 = v13[4];
    *(v11 + 11) = v13[5];
    *(v11 + 9) = v23;
    *(v11 + 7) = v22;
    *(v11 + 5) = v21;
    *v11 = a1;
    *(v11 + 1) = 4;
    *(a5[1065] + v10) = 1;
    *(a5[1069] + v10) = 1;
    *(v11 + 26) = 0;
    *(a5[1074] + v10) = 0;
    *(a3 + v10) = 0;
    if (a1 >= 1)
    {
      *(a5[1072] + v10) = 1;
      Core_Save_QZSS_Eph((v10 - 63), 0, v11);
    }

LABEL_19:
    ++v10;
    v11 = (v11 + 108);
    v9 += 20;
    v12 += 44;
    v8 += 96;
  }

  while (v10 != 10);
  v24 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t DD_Check_New_QZSS_Eph(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(*(a3 + 8552) + a1);
  v4 = a3 + 108 * a1;
  v5 = *(v4 + 8664);
  v17 = *(v4 + 8648);
  v18 = v5;
  v6 = *(v4 + 8696);
  v19 = *(v4 + 8680);
  v20 = v6;
  v7 = *(v4 + 8632);
  v15 = *(v4 + 8616);
  v16 = v7;
  if (v3 == 1 && (v8 = a2 + 96 * a1, ((*(v8 + 20) ^ DWORD1(v16)) & 0xFF0000) == 0))
  {
    v11 = 0;
    v12 = *(v4 + 8712);
    v13 = 0uLL;
    do
    {
      v13 = vsubq_s32(v13, vmvnq_s8(vceqq_s32(*(&v15 + v11), *(v8 + v11))));
      v11 += 16;
    }

    while (v11 != 96);
    if (vaddvq_s32(v13))
    {
      v14 = v12 == 0xFFFFFF;
    }

    else
    {
      v14 = 0;
    }

    result = !v14;
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SA_Interface_Logger(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  v225 = *MEMORY[0x29EDCA608];
  if ((g_FPE_LogSeverity & 0x20) != 0)
  {
    v8 = result;
    *(a2 + 2127104) = *(a2 + 2127104) + *(result + 24);
    LCD_SA_Debug_Ctl(a6);
    v9 = *a6;
    v10 = 76;
    v11 = 1u;
    do
    {
      *a6 = v9 + 1;
      *v9 = v10;
      v9 = *a6;
      if (*a6 >= a6[3])
      {
        v9 = a6[2];
        *a6 = v9;
      }

      v10 = aLcdKfsol[v11++];
    }

    while (v11 != 12);
    v214 = a2;
    v222 = 0;
    v221 = 0;
    v223 = 0.0;
    v219 = *(v8 + 128);
    v220 = *(v8 + 144);
    v12 = &v221;
    ECEF2Geo(&v219, &WGS84_Datum, &v221);
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *v12 * 57.2957795;
      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = *v12 * 57.2957795;
      }

      v18 = v17;
      v19 = (v17 - v17) * 60.0;
      v20 = v19;
      v21 = (v19 - v19) * 60.0;
      sprintf_4d(a6, v18);
      sprintf_3d(a6, v20);
      if (v21 * 100000.0 <= 0.0)
      {
        v22 = -0.5;
      }

      else
      {
        v22 = 0.5;
      }

      v23 = v21 * 100000.0 + v22;
      if (v23 <= 2147483650.0)
      {
        if (v23 >= -2147483650.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0x80000000;
        }
      }

      else
      {
        v24 = 0x7FFFFFFF;
      }

      sprintf_8f(a6, v24, 6);
      v25 = &ch_NSEW + 8 * v13;
      if (*v12 < 0.0)
      {
        v25 += 4;
      }

      v26 = *v25;
      if (*v25)
      {
        v27 = *a6;
        v28 = v25 + 1;
        do
        {
          *a6 = v27 + 1;
          *v27 = v26;
          v27 = *a6;
          if (*a6 >= a6[3])
          {
            v27 = a6[2];
            *a6 = v27;
          }

          v29 = *v28++;
          v26 = v29;
        }

        while (v29);
      }

      v14 = 0;
      v12 = &v222;
      v13 = 1;
    }

    while ((v15 & 1) != 0);
    sprintf_13f3(a6, v223);
    sprintf_gR8(a6, *(v8 + 800));
    v30 = *a6;
    v31 = &ch_TOW_Status[10 * *(v8 + 16) + 1];
    v32 = 32;
    do
    {
      *a6 = v30 + 1;
      *v30 = v32;
      v30 = *a6;
      if (*a6 >= a6[3])
      {
        v30 = a6[2];
        *a6 = v30;
      }

      v33 = *v31++;
      v32 = v33;
    }

    while (v33);
    sprintf_13f3(a6, *(v8 + 96) + *(v214 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 104) + *(v214 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 112) + *(v214 + 2127104) * 299792.458);
    sprintf_13f3(a6, *(v8 + 120));
    v34 = *a6;
    v35 = 32;
    v36 = 1u;
    do
    {
      *a6 = v34 + 1;
      *v34 = v35;
      v34 = *a6;
      if (*a6 >= a6[3])
      {
        v34 = a6[2];
        *a6 = v34;
      }

      v35 = aPosEcef[v36++];
    }

    while (v36 != 11);
    sprintf_13f3(a6, *(v8 + 128));
    sprintf_13f3(a6, *(v8 + 136));
    sprintf_13f3(a6, *(v8 + 144));
    v37 = *a6;
    v38 = 32;
    v39 = 1u;
    do
    {
      *a6 = v37 + 1;
      *v37 = v38;
      v37 = *a6;
      if (*a6 >= a6[3])
      {
        v37 = a6[2];
        *a6 = v37;
      }

      v38 = aVelEcef[v39++];
    }

    while (v39 != 11);
    sprintf_13f3(a6, *(v8 + 152));
    sprintf_13f3(a6, *(v8 + 160));
    sprintf_13f3(a6, *(v8 + 168));
    v40 = 0;
    v41 = *a6;
    v42 = 32;
    do
    {
      *a6 = v41 + 1;
      *v41 = v42;
      v41 = *a6;
      if (*a6 >= a6[3])
      {
        v41 = a6[2];
        *a6 = v41;
      }

      v42 = aSlewedPeBias[++v40];
    }

    while (v40 != 16);
    sprintf_13f3(a6, *(v8 + 96));
    sprintf_13f3(a6, *(v8 + 104));
    sprintf_13f3(a6, *(v8 + 112));
    ud2cov((v8 + 256), v218, 0xBu);
    v43 = *a6;
    v44 = 32;
    v45 = 1u;
    do
    {
      *a6 = v43 + 1;
      *v43 = v44;
      v43 = *a6;
      if (*a6 >= a6[3])
      {
        v43 = a6[2];
        *a6 = v43;
      }

      v44 = aPosEcefVar[v45++];
    }

    while (v45 != 15);
    sprintf_sgR8(a6, v218[20]);
    sprintf_sgR8(a6, v218[27]);
    sprintf_sgR8(a6, v218[35]);
    sprintf_sgR8(a6, v218[26]);
    sprintf_sgR8(a6, v218[33]);
    sprintf_sgR8(a6, v218[34]);
    v46 = *a6;
    v47 = 32;
    v48 = 1u;
    do
    {
      *a6 = v46 + 1;
      *v46 = v47;
      v46 = *a6;
      if (*a6 >= a6[3])
      {
        v46 = a6[2];
        *a6 = v46;
      }

      v47 = aVelEcefVar[v48++];
    }

    while (v48 != 15);
    sprintf_sgR8(a6, v218[44]);
    sprintf_sgR8(a6, v218[54]);
    sprintf_sgR8(a6, v218[65]);
    sprintf_sgR8(a6, v218[53]);
    sprintf_sgR8(a6, v218[63]);
    sprintf_sgR8(a6, v218[64]);
    v49 = *a6;
    v50 = 32;
    v51 = 1u;
    do
    {
      *a6 = v49 + 1;
      *v49 = v50;
      v49 = *a6;
      if (*a6 >= a6[3])
      {
        v49 = a6[2];
        *a6 = v49;
      }

      v50 = aAcc_0[v51++];
    }

    while (v51 != 6);
    sprintf_ACC(a6, *(v8 + 176));
    sprintf_ACC(a6, *(v8 + 184));
    sprintf_ACC(a6, *(v8 + 192));
    sprintf_ACC(a6, *(v8 + 200));
    sprintf_ACC(a6, *(v8 + 208));
    sprintf_gR8(a6, *(v8 + 216));
    sprintf_ACC(a6, *(v8 + 224));
    sprintf_ACC(a6, *(v8 + 232));
    sprintf_ACC(a6, *(v8 + 240));
    sprintf_gR8(a6, *(v8 + 248));
    v52 = *a6;
    v53 = 32;
    v54 = 1u;
    do
    {
      *a6 = v52 + 1;
      *v52 = v53;
      v52 = *a6;
      if (*a6 >= a6[3])
      {
        v52 = a6[2];
        *a6 = v52;
      }

      v53 = aBiasVar[v54++];
    }

    while (v54 != 11);
    sprintf_sgR8(a6, v218[0]);
    sprintf_sgR8(a6, v218[2]);
    sprintf_sgR8(a6, v218[5]);
    sprintf_sgR8(a6, v218[9]);
    v55 = *a6;
    v56 = 32;
    v57 = 1u;
    do
    {
      *a6 = v55 + 1;
      *v55 = v56;
      v55 = *a6;
      if (*a6 >= a6[3])
      {
        v55 = a6[2];
        *a6 = v55;
      }

      v56 = aTimeSlewMs[v57++];
    }

    while (v57 != 15);
    sprintf_3d(a6, *(v8 + 24));
    v58 = 0;
    v59 = *a6;
    v60 = 32;
    do
    {
      *a6 = v59 + 1;
      *v59 = v60;
      v59 = *a6;
      if (*a6 >= a6[3])
      {
        v59 = a6[2];
        *a6 = v59;
      }

      v60 = aAs[++v58];
    }

    while (v58 != 4);
    sprintf_3d(a6, *(v214 + 2127104));
    v61 = 0;
    v62 = *a6;
    v63 = 32;
    do
    {
      *a6 = v62 + 1;
      *v62 = v63;
      v62 = *a6;
      if (*a6 >= a6[3])
      {
        v62 = a6[2];
        *a6 = v62;
      }

      v63 = asc_29976B20A[++v61];
    }

    while (v61 != 2);
    sprintf_gR8(a6, *(v8 + 808));
    v64 = (*a6)++;
    *v64 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, *(v8 + 816));
    v65 = (*a6)++;
    *v65 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, *(v8 + 824));
    v67 = (*a6)++;
    *v67 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    LOBYTE(v66) = *(v8 + 1200);
    sprintf_gR8(a6, v66);
    v68 = (*a6)++;
    *v68 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, *(v8 + 80));
    v69 = (*a6)++;
    *v69 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, *(v8 + 88));
    v70 = (*a6)++;
    *v70 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    v71 = 4;
    do
    {
      sprintf_gR8(a6, 0.0);
      v73 = (*a6)++;
      *v73 = 32;
      if (*a6 >= a6[3])
      {
        *a6 = a6[2];
      }

      --v71;
    }

    while (v71);
    LOBYTE(v72) = *(v8 + 1201);
    sprintf_gR8(a6, v72);
    v74 = (*a6)++;
    *v74 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_3d(a6, *(v8 + 1204));
    v75 = (*a6)++;
    *v75 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, 0.0);
    v76 = (*a6)++;
    *v76 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, 0.0);
    v77 = (*a6)++;
    *v77 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_gR8(a6, 1.0);
    v78 = (*a6)++;
    *v78 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_2d(a6, *(v8 + 784));
    v79 = (*a6)++;
    *v79 = 32;
    v80 = *a6;
    if (*a6 >= a6[3])
    {
      v80 = a6[2];
    }

    *a6 = v80 + 1;
    *v80 = 10;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    LCD_SA_Debug_Ctl(a6);
    v81 = *a6;
    v82 = 76;
    v83 = 1u;
    do
    {
      *a6 = v81 + 1;
      *v81 = v82;
      v81 = *a6;
      if (*a6 >= a6[3])
      {
        v81 = a6[2];
        *a6 = v81;
      }

      v82 = aLcdGBgto[v83++];
    }

    while (v83 != 14);
    sprintf_2d(a6, *(v8 + 32));
    sprintf_gR8(a6, *(v8 + 40));
    sprintf_gR8(a6, *(v8 + 48));
    sprintf_2d(a6, *(v8 + 56));
    sprintf_gR8(a6, *(v8 + 64));
    sprintf_gR8(a6, *(v8 + 72));
    v84 = (*a6)++;
    *v84 = 10;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    for (i = 0; i != 48; ++i)
    {
      v86 = (v8 + 1208 + 144 * i);
      if (Is_Legal(*v86))
      {
        v87 = v86[7];
        v88 = v86[8];
        v89 = v86[9];
        v90 = *(v214 + 2127104);
        v91 = 76;
        v92 = 1u;
        v93 = *a6;
        do
        {
          *a6 = v93 + 1;
          *v93 = v91;
          v93 = *a6;
          if (*a6 >= a6[3])
          {
            v93 = a6[2];
            *a6 = v93;
          }

          v91 = aLcdSvmeas[v92++];
        }

        while (v92 != 14);
        v94 = *v86;
        if (v94 >= 7)
        {
          v95 = 42;
        }

        else
        {
          v95 = 0x53514245524758uLL >> (8 * v94);
        }

        *a6 = v93 + 1;
        *v93 = v95;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        v96 = v87 + v90 * 299792.458;
        sprintf_4d(a6, *(v86 + 2));
        sprintf_14f3(a6, v96);
        sprintf_14f3(a6, v88 / 0.190293673);
        v97 = 0;
        v98 = *a6;
        v99 = 32;
        do
        {
          *a6 = v98 + 1;
          *v98 = v99;
          v98 = *a6;
          if (*a6 >= a6[3])
          {
            v98 = a6[2];
            *a6 = v98;
          }

          v99 = asc_2997C321C[++v97];
        }

        while (v97 != 4);
        sprintf_gR8(a6, v89);
        v100 = 0;
        v101 = *a6;
        v102 = 32;
        do
        {
          *a6 = v101 + 1;
          *v101 = v102;
          v101 = *a6;
          if (*a6 >= a6[3])
          {
            v101 = a6[2];
            *a6 = v101;
          }

          v102 = asc_2997C321C[++v100];
        }

        while (v100 != 4);
        sprintf_14f3(a6, v86[10]);
        sprintf_14f3(a6, v86[11]);
        sprintf_gR8(a6, v86[12]);
        sprintf_3d(a6, *(v86 + 136));
        v103 = (*a6)++;
        *v103 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_3d(a6, *(v86 + 137));
        v104 = (*a6)++;
        *v104 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_3d(a6, *(v86 + 138));
        v105 = (*a6)++;
        *v105 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_3d(a6, v86[16]);
        v106 = (*a6)++;
        *v106 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_3d(a6, v86[15]);
        v107 = (*a6)++;
        *v107 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[1]);
        v108 = (*a6)++;
        *v108 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[2]);
        v109 = (*a6)++;
        *v109 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[3]);
        v110 = (*a6)++;
        *v110 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[4]);
        v111 = (*a6)++;
        *v111 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[5]);
        v112 = (*a6)++;
        *v112 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_14f3(a6, v86[6]);
        v113 = (*a6)++;
        *v113 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_gR8(a6, 0.0);
        v114 = (*a6)++;
        *v114 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_gR8(a6, 0.0);
        sprintf_2d(a6, *(v86 + 104));
        v115 = (*a6)++;
        *v115 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_2d(a6, *(v86 + 105));
        v116 = (*a6)++;
        *v116 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_2d(a6, *(v86 + 106));
        v117 = (*a6)++;
        *v117 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_2d(a6, *(v86 + 110));
        v118 = (*a6)++;
        *v118 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_2d(a6, *(v86 + 111));
        v119 = (*a6)++;
        *v119 = 32;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }

        sprintf_2d(a6, *(v86 + 112));
        v120 = (*a6)++;
        *v120 = 32;
        v121 = *a6;
        if (*a6 >= a6[3])
        {
          v121 = a6[2];
        }

        v122 = *(v86 + 107);
        if (v122)
        {
          *a6 = v121 + 1;
          *v121 = v122;
          v121 = *a6;
          if (*a6 >= a6[3])
          {
            v121 = a6[2];
          }
        }

        else
        {
          strcpy(v224, " 0");
          LOBYTE(v123) = 32;
          v124 = 1;
          do
          {
            *a6 = v121 + 1;
            *v121 = v123;
            v121 = *a6;
            if (*a6 >= a6[3])
            {
              v121 = a6[2];
              *a6 = v121;
            }

            v123 = *(v224 + v124++);
          }

          while (v123);
        }

        *a6 = v121 + 1;
        *v121 = 32;
        v125 = *a6;
        if (*a6 >= a6[3])
        {
          v125 = a6[2];
        }

        v126 = *(v86 + 108);
        if (v126)
        {
          *a6 = v125 + 1;
          *v125 = v126;
          v125 = *a6;
          if (*a6 >= a6[3])
          {
            v125 = a6[2];
          }
        }

        else
        {
          strcpy(v224, " 0");
          LOBYTE(v127) = 32;
          v128 = 1;
          do
          {
            *a6 = v125 + 1;
            *v125 = v127;
            v125 = *a6;
            if (*a6 >= a6[3])
            {
              v125 = a6[2];
              *a6 = v125;
            }

            v127 = *(v224 + v128++);
          }

          while (v127);
        }

        v129 = *(v86 + 109);
        if (v129)
        {
          *a6 = v125 + 1;
          *v125 = v129;
          v125 = *a6;
          if (*a6 >= a6[3])
          {
            v125 = a6[2];
          }
        }

        else
        {
          strcpy(v224, " 0");
          LOBYTE(v130) = 32;
          v131 = 1;
          do
          {
            *a6 = v125 + 1;
            *v125 = v130;
            v125 = *a6;
            if (*a6 >= a6[3])
            {
              v125 = a6[2];
              *a6 = v125;
            }

            v130 = *(v224 + v131++);
          }

          while (v130);
        }

        *a6 = v125 + 1;
        *v125 = 32;
        v132 = *a6;
        if (*a6 >= a6[3])
        {
          v132 = a6[2];
        }

        for (j = 0; j != 20; ++j)
        {
          strcpy(v224, "    0");
          LOBYTE(v134) = 32;
          v135 = 1;
          do
          {
            *a6 = v132 + 1;
            *v132 = v134;
            v132 = *a6;
            if (*a6 >= a6[3])
            {
              v132 = a6[2];
              *a6 = v132;
            }

            v134 = *(v224 + v135++);
          }

          while (v134);
          *a6 = v132 + 1;
          *v132 = 32;
          v132 = *a6;
          if (*a6 >= a6[3])
          {
            v132 = a6[2];
            *a6 = v132;
          }
        }

        v136 = 32;
        v137 = 1u;
        do
        {
          *a6 = v132 + 1;
          *v132 = v136;
          v132 = *a6;
          if (*a6 >= a6[3])
          {
            v132 = a6[2];
            *a6 = v132;
          }

          v136 = aSlewedPr[v137++];
        }

        while (v137 != 12);
        sprintf_14f3(a6, v87);
        v138 = (*a6)++;
        *v138 = 10;
        if (*a6 >= a6[3])
        {
          *a6 = a6[2];
        }
      }

      LCD_SA_Debug_Ctl(a6);
    }

    v139 = *a6;
    v140 = 76;
    v141 = 1u;
    do
    {
      *a6 = v139 + 1;
      *v139 = v140;
      v139 = *a6;
      if (*a6 >= a6[3])
      {
        v139 = a6[2];
        *a6 = v139;
      }

      v140 = aLcdEpoch[v141++];
    }

    while (v141 != 11);
    v142 = *(v8 + 4);
    *a6 = v139 + 1;
    *v139 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_10u(a6, v142);
    sprintf_12f3(a6, *(v8 + 8));
    v143 = (*a6)++;
    *v143 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    v224[0] = 0;
    *v216 = 0;
    *v217 = 0;
    *v215 = 0;
    GPS_To_UTC_Time(v217, &v217[1], v224, &v216[1], v216, &v215[1], v215, *(v8 + 22), *(v8 + 8), *(v8 + 792));
    sprintf_02d(a6, v216[1]);
    sprintf_02d(a6, v216[0]);
    sprintf_02d(a6, v215[1]);
    v144 = (*a6)++;
    *v144 = 46;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_03d(a6, v215[0]);
    v145 = (*a6)++;
    *v145 = 44;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, v224[0]);
    sprintf_02d(a6, v217[1]);
    sprintf_02d(a6, v217[0] - 2000);
    v146 = (*a6)++;
    *v146 = 32;
    v147 = *a6;
    if (*a6 >= a6[3])
    {
      v147 = a6[2];
    }

    v148 = *v8;
    *a6 = v147 + 1;
    *v147 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_10d(a6, v148);
    v149 = (*a6)++;
    *v149 = 10;
    v150 = *a6;
    if (*a6 >= a6[3])
    {
      v150 = a6[2];
    }

    v151 = 76;
    v152 = 1u;
    do
    {
      *a6 = v150 + 1;
      *v150 = v151;
      v150 = *a6;
      if (*a6 >= a6[3])
      {
        v150 = a6[2];
        *a6 = v150;
      }

      v151 = aLcdLsq[v152++];
    }

    while (v152 != 12);
    v153 = 0;
    v154 = v8 + 832;
    v155 = 1;
    do
    {
      v156 = v155;
      v157 = *(v154 + 8 * v153) * 57.2957795;
      v158 = -v157;
      if (v157 >= 0.0)
      {
        v158 = *(v154 + 8 * v153) * 57.2957795;
      }

      v159 = v158;
      v160 = (v158 - v158) * 60.0;
      v161 = v160;
      v162 = (v160 - v160) * 60.0;
      sprintf_4d(a6, v159);
      sprintf_3d(a6, v161);
      if (v162 * 100000.0 <= 0.0)
      {
        v163 = -0.5;
      }

      else
      {
        v163 = 0.5;
      }

      v164 = v162 * 100000.0 + v163;
      if (v164 <= 2147483650.0)
      {
        if (v164 >= -2147483650.0)
        {
          v165 = v164;
        }

        else
        {
          v165 = 0x80000000;
        }
      }

      else
      {
        v165 = 0x7FFFFFFF;
      }

      sprintf_8f(a6, v165, 6);
      v166 = &ch_NSEW + 8 * v153;
      if (*(v154 + 8 * v153) < 0.0)
      {
        v166 += 4;
      }

      v167 = *v166;
      if (*v166)
      {
        v168 = *a6;
        v169 = v166 + 1;
        do
        {
          *a6 = v168 + 1;
          *v168 = v167;
          v168 = *a6;
          if (*a6 >= a6[3])
          {
            v168 = a6[2];
            *a6 = v168;
          }

          v170 = *v169++;
          v167 = v170;
        }

        while (v170);
      }

      v155 = 0;
      v153 = 1;
    }

    while ((v156 & 1) != 0);
    sprintf_13f3(a6, *(v8 + 848));
    sprintf_gR8(a6, *(v8 + 800));
    v171 = *a6;
    v172 = 32;
    v173 = 1u;
    do
    {
      *a6 = v171 + 1;
      *v171 = v172;
      v171 = *a6;
      if (*a6 >= a6[3])
      {
        v171 = a6[2];
        *a6 = v171;
      }

      v172 = aLsqVel[v173++];
    }

    while (v173 != 10);
    sprintf_sgR8(a6, *(v8 + 856));
    sprintf_sgR8(a6, *(v8 + 864));
    sprintf_sgR8(a6, *(v8 + 872));
    v174 = *a6;
    v175 = 32;
    v176 = 1u;
    do
    {
      *a6 = v174 + 1;
      *v174 = v175;
      v174 = *a6;
      if (*a6 >= a6[3])
      {
        v174 = a6[2];
        *a6 = v174;
      }

      v175 = aLsqClkbGpsGloB[v176++];
    }

    while (v176 != 24);
    sprintf_sgR8(a6, *(v8 + 880));
    sprintf_sgR8(a6, *(v8 + 888));
    sprintf_sgR8(a6, *(v8 + 896));
    v177 = 0;
    v178 = *a6;
    v179 = 32;
    do
    {
      *a6 = v178 + 1;
      *v178 = v179;
      v178 = *a6;
      if (*a6 >= a6[3])
      {
        v178 = a6[2];
        *a6 = v178;
      }

      v179 = aLsqDt[++v177];
    }

    while (v177 != 8);
    sprintf_sgR8(a6, *(v8 + 904));
    v180 = 0;
    v181 = *a6;
    v182 = 32;
    do
    {
      *a6 = v181 + 1;
      *v181 = v182;
      v181 = *a6;
      if (*a6 >= a6[3])
      {
        v181 = a6[2];
        *a6 = v181;
      }

      v182 = aNumUsedPrDo[++v180];
    }

    while (v180 != 16);
    sprintf_02d(a6, *(v8 + 912));
    v183 = (*a6)++;
    *v183 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 913));
    v184 = *a6;
    v185 = 32;
    v186 = 1u;
    do
    {
      *a6 = v184 + 1;
      *v184 = v185;
      v184 = *a6;
      if (*a6 >= a6[3])
      {
        v184 = a6[2];
        *a6 = v184;
      }

      v185 = aAccPos[v186++];
    }

    while (v186 != 10);
    for (k = 0; k != 56; k += 8)
    {
      sprintf_ACC(a6, *(v8 + 920 + k));
      v188 = (*a6)++;
      *v188 = 32;
      v189 = *a6;
      if (*a6 >= a6[3])
      {
        v189 = a6[2];
        *a6 = v189;
      }
    }

    v190 = 32;
    v191 = 1u;
    do
    {
      *a6 = v189 + 1;
      *v189 = v190;
      v189 = *a6;
      if (*a6 >= a6[3])
      {
        v189 = a6[2];
        *a6 = v189;
      }

      v190 = aAccVel[v191++];
    }

    while (v191 != 10);
    for (m = 0; m != 32; m += 8)
    {
      sprintf_ACC(a6, *(v8 + 976 + m));
      v193 = (*a6)++;
      *v193 = 32;
      v194 = *a6;
      if (*a6 >= a6[3])
      {
        v194 = a6[2];
        *a6 = v194;
      }
    }

    v195 = 32;
    v196 = 1u;
    do
    {
      *a6 = v194 + 1;
      *v194 = v195;
      v194 = *a6;
      if (*a6 >= a6[3])
      {
        v194 = a6[2];
        *a6 = v194;
      }

      v195 = aArpPos[v196++];
    }

    while (v196 != 10);
    sprintf_02d(a6, *(v8 + 1008));
    v197 = (*a6)++;
    *v197 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1009));
    v198 = (*a6)++;
    *v198 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1010));
    v199 = (*a6)++;
    *v199 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1011));
    v200 = (*a6)++;
    *v200 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_sgR8(a6, *(v8 + 1016));
    sprintf_sgR8(a6, *(v8 + 1024));
    sprintf_sgR8(a6, *(v8 + 1032));
    sprintf_sgR8(a6, *(v8 + 1040));
    sprintf_sgR8(a6, *(v8 + 1048));
    sprintf_sgR8(a6, *(v8 + 1056));
    sprintf_sgR8(a6, *(v8 + 1064));
    sprintf_sgR8(a6, *(v8 + 1072));
    sprintf_2d(a6, *(v8 + 1080));
    v201 = (*a6)++;
    *v201 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_sgR8(a6, *(v8 + 1088));
    v202 = (*a6)++;
    *v202 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_2d(a6, *(v8 + 1096));
    v203 = *a6;
    v204 = 32;
    v205 = 1u;
    do
    {
      *a6 = v203 + 1;
      *v203 = v204;
      v203 = *a6;
      if (*a6 >= a6[3])
      {
        v203 = a6[2];
        *a6 = v203;
      }

      v204 = aArpVel[v205++];
    }

    while (v205 != 10);
    sprintf_02d(a6, *(v8 + 1104));
    v206 = (*a6)++;
    *v206 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1105));
    v207 = (*a6)++;
    *v207 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1106));
    v208 = (*a6)++;
    *v208 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_02d(a6, *(v8 + 1107));
    v209 = (*a6)++;
    *v209 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_sgR8(a6, *(v8 + 1112));
    sprintf_sgR8(a6, *(v8 + 1120));
    sprintf_sgR8(a6, *(v8 + 1128));
    sprintf_sgR8(a6, *(v8 + 1136));
    sprintf_sgR8(a6, *(v8 + 1144));
    sprintf_sgR8(a6, *(v8 + 1152));
    sprintf_sgR8(a6, *(v8 + 1160));
    sprintf_sgR8(a6, *(v8 + 1168));
    sprintf_2d(a6, *(v8 + 1176));
    v210 = (*a6)++;
    *v210 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_sgR8(a6, *(v8 + 1184));
    v211 = (*a6)++;
    *v211 = 32;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    sprintf_2d(a6, *(v8 + 1192));
    v212 = (*a6)++;
    *v212 = 10;
    if (*a6 >= a6[3])
    {
      *a6 = a6[2];
    }

    result = LCD_SA_Debug_Ctl(a6);
  }

  v213 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_UTC_Leap_Second_For_GLON_Day_4yrBlk(int a1, int a2, double a3)
{
  if (a3 + -10800.0 < 0.0)
  {
    v3 = a2 < 2;
    if (a2 >= 2)
    {
      --a2;
    }

    else
    {
      a2 = 1461;
    }

    a1 -= v3;
  }

  v4 = a2 + 1461 * a1;
  v5 = &byte_299761B32;
  v6 = 8;
  while (v4 < *(v5 - 1) + 1461 * *(v5 - 4) || v4 >= *(v5 + 5) + 1461 * v5[8])
  {
    v5 += 12;
    if (!--v6)
    {
      v7 = -99;
      goto LABEL_12;
    }
  }

  v7 = *v5;
LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t U4sqrt(unsigned int a1)
{
  v1 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  if (v1 * v1 <= a1)
  {
    v2 = (((a1 & 0xC0000000) != 0) << 15) | 0x4000;
  }

  else
  {
    v2 = ((a1 & 0xC0000000) != 0) << 15;
  }

  if ((v2 | 0x2000) * (v2 | 0x2000) <= a1)
  {
    v2 |= 0x2000u;
  }

  if ((v2 | 0x1000) * (v2 | 0x1000) <= a1)
  {
    v2 |= 0x1000u;
  }

  if ((v2 + 2048) * (v2 + 2048) <= a1)
  {
    v2 += 2048;
  }

  if ((v2 + 1024) * (v2 + 1024) <= a1)
  {
    v2 += 1024;
  }

  if ((v2 + 512) * (v2 + 512) <= a1)
  {
    v2 += 512;
  }

  if ((v2 + 256) * (v2 + 256) <= a1)
  {
    v2 += 256;
  }

  if ((v2 + 128) * (v2 + 128) <= a1)
  {
    v2 += 128;
  }

  if ((v2 + 64) * (v2 + 64) <= a1)
  {
    v2 += 64;
  }

  if ((v2 + 32) * (v2 + 32) <= a1)
  {
    v2 += 32;
  }

  if ((v2 + 16) * (v2 + 16) <= a1)
  {
    v2 += 16;
  }

  if ((v2 + 8) * (v2 + 8) <= a1)
  {
    v2 += 8;
  }

  if ((v2 + 4) * (v2 + 4) <= a1)
  {
    v2 += 4;
  }

  if ((v2 + 2) * (v2 + 2) <= a1)
  {
    v2 += 2;
  }

  if ((v2 + 1) * (v2 + 1) > a1)
  {
    result = v2;
  }

  else
  {
    result = v2 + 1;
  }

  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void skewSimMat(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v5[0] = 0x300000003;
  v5[1] = 0;
  v2 = *(a1 + 24);
  *&v5[2] = -v2;
  *&v5[4] = v2;
  v5[5] = 0;
  v3 = *(a1 + 8);
  v5[3] = *(a1 + 16);
  v6 = vnegq_f64(v3);
  v7 = v3.f64[0];
  v8 = 0;
  Copy_Mat(9, v5, 9, a2);
  v4 = *MEMORY[0x29EDCA608];
}

void CreateC_e_n(uint64_t a1, int *a2)
{
  v7[10] = *MEMORY[0x29EDCA608];
  v4 = __sincos_stret(*(a1 + 16));
  v5 = __sincos_stret(*(a1 + 8));
  v7[0] = 0x300000003;
  *&v7[1] = -(v4.__sinval * v5.__cosval);
  *&v7[2] = -(v4.__sinval * v5.__sinval);
  v7[3] = *&v4.__cosval;
  *&v7[4] = -v5.__sinval;
  v7[5] = *&v5.__cosval;
  v7[6] = 0;
  *&v7[7] = -(v4.__cosval * v5.__cosval);
  *&v7[8] = -(v4.__cosval * v5.__sinval);
  *&v7[9] = -v4.__sinval;
  Copy_Mat(9, v7, 9, a2);
  v6 = *MEMORY[0x29EDCA608];
}

double CreateG_0(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = sin(*(a1 + 16));
  v2 = v1 * v1;
  v3 = v1 * v1 * -0.00669437999 + 1.0;
  if (v3 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v5 = *(g_TCU + 8);
      }

      else
      {
        v5 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CreateG_0", 122, v4, v5, v2 * -0.00669437999 + 1.0);
    }

    g_FPE_AssertFlag = 1;
    v3 = 1.0;
  }

  v6 = sqrt(v3);
  if (fabs(v6) <= 1.0e-30)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CreateG_0", 124, v7, v8, v6, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v6 = 1.0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return (v2 * 0.001931853 + 1.0) * 9.78032534 / v6;
}

const char *extractOfromC_b_n(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = (a1 + 8);
  v4 = *(a1 + 4);
  v5 = *(a1 + 8 + 8 * ((2 * v4) | 1u));
  v6 = *(a1 + 8 + 8 * (2 * v4 + 2));
  v7 = *(a1 + 8 + 8 * (2 * v4));
  if (fabs(v7) > 1.0)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to asin number %f that is abs larger than 1.0", "extractOfromC_b_n", 162, v9, v10, v7);
      v4 = *(a1 + 4);
    }

    g_FPE_AssertFlag = 1;
    v7 = 1.0;
  }

  v11 = atan2(v5, v6);
  v12 = asin(v7);
  v13 = atan2(v3[v4], *v3);
  v14 = *MEMORY[0x29EDCA608];

  return VecSet_3x1(3, a2, v11, -v12, v13);
}

const char *extractOfromC(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 4);
  v5 = *(a1 + 8 + 8 * (v4 + 2));
  v6 = *(a1 + 8 + 8 * (2 * v4 + 2));
  v7 = *(a1 + 24);
  if (fabs(v7) > 1.0)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to asin number %f that is abs larger than 1.0", "extractOfromC", 182, v8, v9, v7);
    }

    g_FPE_AssertFlag = 1;
    v7 = 1.0;
  }

  v10 = atan2(v5, v6);
  v11 = asin(v7);
  v12 = atan2(*(a1 + 16), *(a1 + 8));
  v13 = *MEMORY[0x29EDCA608];

  return VecSet_3x1(3, a2, v10, -v11, v12);
}

void CreateC_b_n(double *a1, int *a2)
{
  v8[10] = *MEMORY[0x29EDCA608];
  v4 = __sincos_stret(a1[1]);
  v5 = __sincos_stret(a1[2]);
  v6 = __sincos_stret(a1[3]);
  v8[0] = 0x300000003;
  *&v8[1] = v5.__cosval * v6.__cosval;
  *&v8[2] = v4.__sinval * v5.__sinval * v6.__cosval - v4.__cosval * v6.__sinval;
  *&v8[3] = v4.__cosval * v5.__sinval * v6.__cosval + v4.__sinval * v6.__sinval;
  *&v8[4] = v5.__cosval * v6.__sinval;
  *&v8[5] = v4.__sinval * v5.__sinval * v6.__sinval + v4.__cosval * v6.__cosval;
  *&v8[6] = v4.__cosval * v5.__sinval * v6.__sinval - v4.__sinval * v6.__cosval;
  *&v8[7] = -v5.__sinval;
  *&v8[8] = v4.__sinval * v5.__cosval;
  *&v8[9] = v4.__cosval * v5.__cosval;
  Copy_Mat(9, v8, 9, a2);
  v7 = *MEMORY[0x29EDCA608];
}

double InsUtil_ECEF2Geo_Iterative(double *a1, uint64_t a2, double a3)
{
  v3 = a3;
  v4 = 0;
  v34 = *MEMORY[0x29EDCA608];
  v5 = a1[3];
  v30 = a1[1];
  v31 = a1[2];
  v6 = sqrt(v31 * v31 + v30 * v30);
  do
  {
    v33 = v4;
    v7 = v3;
    v8 = 1.57079633;
    v9 = v3 * 0.99330562 - v3;
    v10 = 0.0;
    v11 = -1;
    do
    {
      v12 = v6 + v9 * cos(v10);
      if (fabs(v12) <= 1.0e-30)
      {
        if (g_FPE_LogSeverity)
        {
          v13 = mach_continuous_time();
          if (g_TCU)
          {
            v14 = *(g_TCU + 8);
          }

          else
          {
            v14 = 0.0;
          }

          LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "InsUtil_ECEF2Geo_Iterative", 289, (*&g_MacClockTicksToMsRelation * v13), v14, v12, 1.0e-30);
        }

        g_FPE_AssertFlag = 1;
        v12 = 1.0;
      }

      ++v11;
      v10 = atan(v5 / v12);
      v15 = v10 - v8;
      if (v10 - v8 < 0.0)
      {
        v15 = -v15;
      }

      v16 = v15 < 1.0e-13 || v11 >= 0xE;
      v8 = v10;
    }

    while (!v16);
    ++v4;
    v3 = calcRe(v10);
    v17 = v7 - v3;
    if (v7 - v3 < 0.0)
    {
      v17 = -v17;
    }
  }

  while (v17 >= 1.0e-13 && v33 < 0xB);
  v19 = atan2(v31, v30);
  v20 = cos(v10);
  if (fabs(v20) <= 1.0e-30)
  {
    v21 = v33;
    if (g_FPE_LogSeverity)
    {
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      else
      {
        v23 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "InsUtil_ECEF2Geo_Iterative", 317, v22, v23, v20, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v20 = 1.0;
  }

  else
  {
    v21 = v33;
  }

  VecSet_3x1(3, a2, v19, v10, v6 / v20 - v7);
  if ((v21 > 0xA || v11 >= 0xE) && (g_FPE_LogSeverity & 4) != 0)
  {
    v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    if (g_TCU)
    {
      v25 = *(g_TCU + 8);
    }

    else
    {
      v25 = 0.0;
    }

    LC_LOG_SEVERITY_GENERIC("WRN:[%s() #%d] TT = %d, %0.3f Exit due to loop limit k1,k2 = %d,%d when running with args: [pOut,Ro]=ECEF2Geo([%f %f %f],%f)", "InsUtil_ECEF2Geo_Iterative", 327, v24, v25, v4, v11 + 1, a1[1], a1[2], a1[3], a3);
  }

  v26 = *MEMORY[0x29EDCA608];
  return v3;
}

double calcRe(long double a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = sin(a1);
  v2 = v1 * v1 * -0.00669437999 + 1.0;
  if (v2 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v4 = *(g_TCU + 8);
      }

      else
      {
        v4 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcRe", 588, v3, v4, v2);
    }

    g_FPE_AssertFlag = 1;
    v2 = 1.0;
  }

  v5 = sqrt(v2);
  if (fabs(v5) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v6 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v7 = *(g_TCU + 8);
      }

      else
      {
        v7 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "calcRe", 590, v6, v7, v5, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v5 = 1.0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return 6378137.0 / v5;
}

const char *InsUtil_Geo2ECEF_Iterative(double *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = a1[1] * 0.0174532925;
  v4 = a1[2] * 0.0174532925;
  v5 = a1[3];
  v6 = calcRe(v3);
  v7 = __sincos_stret(v3);
  v8 = __sincos_stret(v4);
  v9 = *MEMORY[0x29EDCA608];

  return VecSet_3x1(3, a2, v8.__cosval * (v7.__cosval * (v5 + v6)), v8.__sinval * (v7.__cosval * (v5 + v6)), v7.__sinval * (v5 + v6 * 0.99330562));
}

void createC_e_map(int *a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v28 = *MEMORY[0x29EDCA608];
  memset(v27, 0, sizeof(v27));
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v27;
  }

  Sub_Mat(3, a2, 3, a1, 3, v7);
  v8 = Norma_Vec(3, v7);
  if (fabs(v8) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "createC_e_map", 391, v9, v10, v8, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v8 = 1.0;
  }

  memset(v26, 0, sizeof(v26));
  Mult_Mat_scalar(1.0 / v8, 3, v7, 3, v26);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  Mult_Mat_Mat(9, a3, 3, v26, 9, &v21);
  *(&v22 + 1) = 0;
  v11 = Norma_Vec(9, &v21);
  if (fabs(v11) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v12 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v13 = *(g_TCU + 8);
      }

      else
      {
        v13 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "createC_e_map", 402, v12, v13, v11, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v11 = 1.0;
  }

  Mult_Mat_scalar(1.0 / v11, 9, &v21, 9, &v21);
  v19 = 0u;
  v20 = 0u;
  Set_Mat_Const(3, 1u, 3, &v19, 0.0);
  *(&v20 + 1) = 0x3FF0000000000000;
  memset(v18, 0, sizeof(v18));
  Cross_Vec_Vec(9, &v21, 3, &v19, 3, v18);
  Mult_Mat_scalar(-1.0, 3, v18, 3, v18);
  memset(v17, 0, sizeof(v17));
  Set_Mat_Size(9, v17, 3, 3);
  Copy_SubMat_to_Mat(1.0, 9, &v21, 0, 0, 9, v17);
  Copy_SubMat_to_Mat(1.0, 3, v18, 0, 1, 9, v17);
  Copy_SubMat_to_Mat(1.0, 3, &v19, 0, 2, 9, v17);
  Transpose_Mat(9, v17, 9, v17, v14, v15);
  Mult_Mat_Mat(9, v17, 9, a3, 9, a4);
  v16 = *MEMORY[0x29EDCA608];
}

const char *calcElipseParams(double *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, double *a6, uint64_t a7, int *a8)
{
  v35 = *MEMORY[0x29EDCA608];
  InsUtil_ECEF2Geo_Iterative(a1, a4, 6378137.0);
  CreateC_e_n(a4, a8);
  Mult_Mat_Mat(9, a8, 9, a2, 9, a3);
  Mult_Mat_MatT(9, a3, 9, a8, 9, a3);
  memset(v34, 0, sizeof(v34));
  Transpose_Mat(9, a3, 9, v34, v15, v16);
  Add_Mat(9, a3, 9, v34, 9, a3);
  Mult_Mat_scalar(0.5, 9, a3, 9, a3);
  memset(v33, 0, sizeof(v33));
  Copy_Mat(9, a3, 9, v33);
  Copy_SubMat_from_Mat(1.0, 9, a3, 0, 0, 2, 2u, 9, v33);
  memset(v32, 0, sizeof(v32));
  Eig2x2(9, v33, 9, a7, 9, v32);
  v17 = *(v32 + (DWORD1(v32[0]) + 1) + 1);
  if (v17 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 463, v18, v19, v17);
    }

    g_FPE_AssertFlag = 1;
    v17 = 1.0;
  }

  v20 = *(v32 + 1);
  if (*(v32 + 1) < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v21 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v22 = *(g_TCU + 8);
      }

      else
      {
        v22 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 466, v21, v22, v20);
    }

    g_FPE_AssertFlag = 1;
    v20 = 1.0;
  }

  v23 = *&a3[2 * (2 * a3[1] + 2) + 2];
  if (v23 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v24 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v25 = *(g_TCU + 8);
      }

      else
      {
        v25 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "calcElipseParams", 469, v24, v25, v23);
    }

    g_FPE_AssertFlag = 1;
    v23 = 1.0;
  }

  v26 = sqrt(v20);
  *a6 = sqrt(v23);
  v27 = sqrt(v17);
  v28 = atan2(*(a7 + 8 + 8 * *(a7 + 4)), *(a7 + 8));
  if (v28 < 0.0)
  {
    v28 = v28 + 3.14159265;
  }

  v29 = v28 * 57.2957795;
  result = Set_Mat_Size(3, a5, 1, 3);
  *(a5 + 8) = v26;
  *(a5 + 16) = v27;
  *(a5 + 24) = v29;
  v31 = *MEMORY[0x29EDCA608];
  return result;
}

const char *InsUtil_mat2quat(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  result = Set_Mat_Const(4, 1u, 6, a2, 0.0);
  v5 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(a1 + 4);
  v8 = *(a1 + 8 + 8 * (v7 + 1));
  v9 = 2 * v7;
  v10 = *(a1 + 8 + 8 * (2 * v7 + 2));
  v11 = v6 + 1.0 + v8 + v10;
  if (v11 > 0.1)
  {
    v12 = sqrt(v11) * 0.5;
    *(a2 + 8) = v12;
    v13 = v12 * 4.0;
    *(a2 + 16) = (*(v5 + 8 * (v7 + 2)) - *(v5 + 8 * (v9 | 1))) / v13;
    *(a2 + 24) = (*(v5 + 8 * v9) - *(a1 + 24)) / v13;
    v14 = *(a1 + 16) - *(v5 + 8 * v7);
LABEL_8:
    *(a2 + 32) = v14 / v13;
    goto LABEL_9;
  }

  v15 = v6 + 1.0 - v8 - v10;
  if (v15 > 0.1)
  {
    v16 = sqrt(v15) * 0.5;
    *(a2 + 16) = v16;
    v13 = v16 * 4.0;
    *(a2 + 8) = (*(v5 + 8 * (v7 + 2)) - *(v5 + 8 * (v9 | 1))) / v13;
    *(a2 + 24) = (*(v5 + 8 * v7) + *(a1 + 16)) / v13;
    v17 = *(v5 + 8 * v9);
    v18 = *(a1 + 24);
LABEL_7:
    v14 = v17 + v18;
    goto LABEL_8;
  }

  v19 = 1.0 - v6;
  v20 = v19 + v8 - v10;
  if (v20 > 0.1)
  {
    v21 = sqrt(v20) * 0.5;
    *(a2 + 24) = v21;
    v13 = v21 * 4.0;
    *(a2 + 8) = -(*(a1 + 24) - *(v5 + 8 * v9)) / v13;
    *(a2 + 16) = (*(a1 + 16) + *(v5 + 8 * v7)) / v13;
    v17 = *(v5 + 8 * (v7 + 2));
    v18 = *(v5 + 8 * (v9 | 1));
    goto LABEL_7;
  }

  v23 = v19 - v8 + v10;
  if (v23 <= 0.1)
  {
    if (g_FPE_LogSeverity)
    {
      v26 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v27 = *(g_TCU + 8);
      }

      else
      {
        v27 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f not a stable rotation matrix", "InsUtil_mat2quat", 542, v26, v27);
    }

    g_FPE_AssertFlag = 1;
  }

  else
  {
    v24 = sqrt(v23) * 0.5;
    *(a2 + 32) = v24;
    v25 = v24 * 4.0;
    *(a2 + 8) = -(*(v5 + 8 * v7) - *(a1 + 16)) / v25;
    *(a2 + 16) = (*(a1 + 24) + *(v5 + 8 * v9)) / v25;
    *(a2 + 24) = (*(v5 + 8 * (v7 + 2)) + *(v5 + 8 * (v9 | 1))) / v25;
  }

LABEL_9:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

double InsUtil_quat2mat(double *a1, int *a2)
{
  v2 = a2;
  v13 = *MEMORY[0x29EDCA608];
  Set_Mat_Const(3, 3u, 9, a2, 0.0);
  *(v2 + 1) = a1[2] * a1[2] + a1[1] * a1[1] - a1[3] * a1[3] - a1[4] * a1[4];
  v2 += 2;
  v4 = *(v2 - 1);
  *&v2[2 * (v4 + 1)] = a1[1] * a1[1] - a1[2] * a1[2] + a1[3] * a1[3] - a1[4] * a1[4];
  *&v2[2 * (2 * v4 + 2)] = a1[1] * a1[1] - a1[2] * a1[2] - a1[3] * a1[3] + a1[4] * a1[4];
  v5 = a1[4] * a1[1] + a1[2] * a1[3];
  *(v2 + 1) = v5 + v5;
  v6 = a1[2] * a1[3] - a1[4] * a1[1];
  *&v2[2 * v4] = v6 + v6;
  v7 = a1[2] * a1[4] - a1[3] * a1[1];
  *(v2 + 2) = v7 + v7;
  v8 = a1[3] * a1[1] + a1[2] * a1[4];
  *&v2[2 * (2 * v4)] = v8 + v8;
  v9 = a1[2] * a1[1] + a1[3] * a1[4];
  *&v2[2 * (v4 + 2)] = v9 + v9;
  v10 = a1[3] * a1[4] - a1[2] * a1[1];
  result = v10 + v10;
  *&v2[2 * ((2 * v4) | 1)] = result;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

const char *CovMatToVec(uint64_t a1, uint64_t a2, double a3)
{
  v31 = *MEMORY[0x29EDCA608];
  result = Set_Mat_Size(6, a2, 6, 1);
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (v8 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v10 = *(g_TCU + 8);
      }

      else
      {
        v10 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 642, v9, v10, v8);
    }

    g_FPE_AssertFlag = 1;
    v8 = 1.0;
  }

  v11 = *(a1 + 4);
  v12 = *(v7 + 8 * (v11 + 1));
  if (v12 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v13 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v14 = *(g_TCU + 8);
      }

      else
      {
        v14 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 645, v13, v14, v12);
      v11 = *(a1 + 4);
    }

    g_FPE_AssertFlag = 1;
    v12 = 1.0;
  }

  v15 = sqrt(v8);
  v16 = *(v7 + 8 * (2 * v11 + 2));
  v17 = sqrt(v12);
  if (v16 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v18 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v19 = *(g_TCU + 8);
      }

      else
      {
        v19 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "CovMatToVec", 648, v18, v19, v16);
    }

    g_FPE_AssertFlag = 1;
    v16 = 1.0;
  }

  v20 = sqrt(v16);
  *(a2 + 8) = v15 * a3;
  *(a2 + 16) = v17 * a3;
  *(a2 + 24) = v20 * a3;
  v21 = v15 * v17;
  if (fabs(v15 * v17) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v23 = *(g_TCU + 8);
      }

      else
      {
        v23 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 657, v22, v23, v15 * v17, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v21 = 1.0;
  }

  *(a2 + 32) = *(a1 + 16) / v21;
  v24 = v15 * v20;
  if (fabs(v24) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v25 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v26 = *(g_TCU + 8);
      }

      else
      {
        v26 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 660, v25, v26, v24, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v24 = 1.0;
  }

  *(a2 + 40) = *(a1 + 24) / v24;
  v27 = v17 * v20;
  if (fabs(v27) <= 1.0e-30)
  {
    if (g_FPE_LogSeverity)
    {
      v28 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v29 = *(g_TCU + 8);
      }

      else
      {
        v29 = 0.0;
      }

      result = LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to divide by number %e that is smaller than eps=%e", "CovMatToVec", 663, v28, v29, v27, 1.0e-30);
    }

    g_FPE_AssertFlag = 1;
    v27 = 1.0;
  }

  *(a2 + 48) = *(v7 + 8 * (*(a1 + 4) + 2)) / v27;
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

long double distLLA(double *a1, double *a2, double *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = a1[1] * 0.0174532925;
  v7 = a2[1] * 0.0174532925;
  v8 = a2[2] * 0.0174532925 - a1[2] * 0.0174532925;
  v9 = sin((v7 - v6) * 0.5);
  v10 = cos(v6);
  v11 = v10 * cos(v7);
  v12 = sin(v8 * 0.5);
  v13 = v11 * (v12 * v12) + v9 * v9;
  v14 = 1.0 - v13;
  if (v13 < 0.0)
  {
    if (g_FPE_LogSeverity)
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

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "distLLA", 690, v15, v16, v13);
    }

    g_FPE_AssertFlag = 1;
    v13 = 1.0;
  }

  if (v14 < 0.0)
  {
    if (g_FPE_LogSeverity)
    {
      v17 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      if (g_TCU)
      {
        v18 = *(g_TCU + 8);
      }

      else
      {
        v18 = 0.0;
      }

      LC_LOG_SEVERITY_GENERIC("CRIT:[%s() #%d] TT = %d, %0.3f Trying to sqrt a negative number %f", "distLLA", 691, v17, v18, v14);
    }

    g_FPE_AssertFlag = 1;
    v14 = 1.0;
  }

  v19 = atan2(sqrt(v13), sqrt(v14));
  *a3 = a1[3] - a2[3];
  v20 = *MEMORY[0x29EDCA608];
  return (v19 + v19) * 6371008.8;
}

uint64_t asn1PD_IPAddress_ipv4Address(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x20u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PD_IPAddress_ipv6Address(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x80u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_IPAddress(uint64_t a1, unsigned __int8 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2 - 1);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_3:
    SuplAsn1Logger::TraceError(v4, v6, v7);
    goto LABEL_4;
  }

  v10 = *a2;
  if (v10 == 2)
  {
    v11 = Asn1Coder::EncodeOctetString(a1, 0, 0, 16, a2 + 4, 1, 0);
    v5 = v11;
    if (!v11)
    {
      goto LABEL_4;
    }

    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
    goto LABEL_11;
  }

  if (v10 != 1)
  {
    SuplAsn1Logger::TraceError(0, *(a1 + 8), *(a1 + 12));
    v5 = 0;
    goto LABEL_4;
  }

  v11 = Asn1Coder::EncodeOctetString(a1, 0, 0, 4, a2 + 1, 1, 0);
  v5 = v11;
  if (v11)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 12);
LABEL_11:
    SuplAsn1Logger::TraceError(v11, v12, v13);
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v4) = v5;
    goto LABEL_3;
  }

LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_IPAddress(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v4 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v11);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v10 = v11;
    *a2 = v11 + 1;
    if (v10 == 1)
    {
      v4 = asn1PD_IPAddress_ipv6Address(a1, (a2 + 32));
    }

    else
    {
      if (v10)
      {
        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        v5 = 4;
        LODWORD(v4) = 4;
        goto LABEL_3;
      }

      v4 = asn1PD_IPAddress_ipv4Address(a1, (a2 + 8));
    }

    v5 = v4;
    if (!v4)
    {
      goto LABEL_4;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v4, v6, v7);
LABEL_4:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PD_FQDN(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = 0;
  v3 = Asn1Coder::DecodeVisibleStringSubType(a1, 1, 0xFFu, &v7, a2, 0x40u, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PE_SLPAddress(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
  }

  else
  {
    v7 = Asn1Coder::EncodeInteger(a1, 0, 1, *a2 - 1);
    if (!v7)
    {
      v10 = *a2;
      switch(v10)
      {
        case 1:
          v4 = asn1PE_IPAddress(a1, a2 + 8);
          if (!v4)
          {
            goto LABEL_6;
          }

          break;
        case 255:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 1;
          LODWORD(v7) = 1;
          goto LABEL_5;
        case 2:
          v11 = Asn1Coder::EncodeVisibleStringSubType(a1, 1, 0xFFu, *(a2 + 18) - *(a2 + 16), a2 + 8, 64, "-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", 0);
          v4 = v11;
          if (!v11)
          {
            goto LABEL_6;
          }

          SuplAsn1Logger::TraceError(v11, *(a1 + 8), *(a1 + 12));
          break;
        default:
          v5 = *(a1 + 8);
          v6 = *(a1 + 12);
          v4 = 4;
          LODWORD(v7) = 4;
          goto LABEL_5;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      LODWORD(v7) = v4;
      goto LABEL_5;
    }

    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
  }

LABEL_5:
  SuplAsn1Logger::TraceError(v7, v5, v6);
LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SLPAddress(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (BitFromBuffer)
  {
    v8 = Asn1Coder::SkipChoiceExtension(a1);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v12 = 0;
    v8 = Asn1Coder::DecodeInteger(a1, 0, 1u, &v12);
    if (v8)
    {
      v5 = v8;
      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
    }

    else
    {
      v11 = v12;
      *a2 = v12 + 1;
      if (v11 != 254)
      {
        if (v11 == 1)
        {
          v8 = asn1PD_FQDN(a1, (a2 + 64));
        }

        else
        {
          if (v11)
          {
            v6 = *(a1 + 8);
            v7 = *(a1 + 12);
            v5 = 4;
            LODWORD(v8) = 4;
            goto LABEL_3;
          }

          v8 = asn1PD_IPAddress(a1, a2 + 8);
        }

        v5 = v8;
        if (!v8)
        {
          goto LABEL_4;
        }

        v6 = *(a1 + 8);
        v7 = *(a1 + 12);
        goto LABEL_3;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      v5 = 1;
      LODWORD(v8) = 1;
    }
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t asn1PE_SETId_msisdn(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SETId_msisdn(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_SETId_mdn(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 0);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SETId_mdn(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_SETId_min(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeBitString(a1, 0, 0, 0x22u, a2, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SETId_min(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x22u, a2, 0);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_SETId_imsi(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = Asn1Coder::EncodeOctetString(a1, 0, 0, 8, a2, 1, 1);
  v4 = v3;
  if (v3)
  {
    SuplAsn1Logger::TraceError(v3, *(a1 + 8), *(a1 + 12));
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SETId_imsi(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  Asn1Coder::GetBitStringFromBuffer(a1, 0x40u, a2, 1);
  v3 = *(a1 + 16);
  if (*(a1 + 16))
  {
    SuplAsn1Logger::TraceError(*(a1 + 16), *(a1 + 8), *(a1 + 12));
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t asn1PE_SETId(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  Asn1Coder::AddBitToBuffer(a1, 0);
  v4 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    LODWORD(v7) = *(a1 + 16);
LABEL_24:
    SuplAsn1Logger::TraceError(v7, v5, v6);
    goto LABEL_25;
  }

  v7 = Asn1Coder::EncodeInteger(a1, 0, 5, *a2 - 1);
  if (v7)
  {
    v4 = v7;
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

  v8 = *a2;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v7 = asn1PE_SETId_msisdn(a1, a2 + 1);
        break;
      case 2u:
        v7 = asn1PE_SETId_mdn(a1, a2 + 4);
        break;
      case 3u:
        v7 = asn1PE_SETId_min(a1, a2 + 7);
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (*a2 > 5u)
  {
    if (v8 != 6)
    {
      if (v8 == 255)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 12);
        v4 = 1;
        LODWORD(v7) = 1;
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v7 = asn1PE_IPAddress(a1, a2 + 128);
  }

  else
  {
    if (v8 != 4)
    {
      if (v8 == 5)
      {
        v7 = Asn1Coder::EncodeVisibleString7(a1, 1, 1000, *(a2 + 28) - *(a2 + 26), a2 + 13, 0);
        goto LABEL_22;
      }

LABEL_18:
      v5 = *(a1 + 8);
      v6 = *(a1 + 12);
      v4 = 4;
      LODWORD(v7) = 4;
      goto LABEL_24;
    }

    v7 = asn1PE_SETId_imsi(a1, a2 + 10);
  }

LABEL_22:
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
    goto LABEL_24;
  }

LABEL_25:
  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t asn1PD_SETId(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  BitFromBuffer = Asn1Coder::GetBitFromBuffer(a1);
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    LODWORD(v8) = *(a1 + 16);
  }

  else if (BitFromBuffer)
  {
    v8 = Asn1Coder::SkipChoiceExtension(a1);
    v5 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

  else
  {
    v13 = 0;
    v8 = Asn1Coder::DecodeInteger(a1, 0, 5u, &v13);
    if (!v8)
    {
      v11 = v13;
      *a2 = v13 + 1;
      if (v11 <= 2)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            v8 = asn1PD_SETId_mdn(a1, (a2 + 32));
          }

          else
          {
            v8 = asn1PD_SETId_min(a1, (a2 + 56));
          }
        }

        else
        {
          v8 = asn1PD_SETId_msisdn(a1, (a2 + 8));
        }
      }

      else if (v11 > 4)
      {
        if (v11 != 5)
        {
          v6 = *(a1 + 8);
          v7 = *(a1 + 12);
          if (v11 == 254)
          {
            v5 = 1;
            LODWORD(v8) = 1;
          }

          else
          {
            v5 = 4;
            LODWORD(v8) = 4;
          }

          goto LABEL_3;
        }

        v8 = asn1PD_IPAddress(a1, a2 + 128);
      }

      else if (v11 == 3)
      {
        v8 = asn1PD_SETId_imsi(a1, (a2 + 80));
      }

      else
      {
        v12 = 0;
        v8 = Asn1Coder::DecodeVisibleString7(a1, 1, 0x3E8u, &v12, (a2 + 104), 0);
      }

      v5 = v8;
      if (!v8)
      {
        goto LABEL_4;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 12);
      goto LABEL_3;
    }

    v5 = v8;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
  }

LABEL_3:
  SuplAsn1Logger::TraceError(v8, v6, v7);
LABEL_4:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}