uint64_t AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK::pack(AriSdk::ARI_IBISimTkRefreshFcnIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 4, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 0x11uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

AriOsa *AriSdk::TlvArray<IBISimTkFileIdentifier,60ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCF3CF3CF3CF3CF3DLL * (*(a2 + 1) - *a2) < 0x3D)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xCF3CF3CF3CF3CF3DLL * (*(a2 + 1) - *a2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 60;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCF3CF3CF3CF3CF3DLL * (*(a2 + 1) - *a2), 60);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961A5CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK::ARI_IBISimTkRefreshFcnRsp_SDK(AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 880967680, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 880967680, 1);
}

void AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK::ARI_IBISimTkRefreshFcnRsp_SDK(AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK::~ARI_IBISimTkRefreshFcnRsp_SDK(AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK *this)
{
  *this = &unk_2A1D36F30;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK::~ARI_IBISimTkRefreshFcnRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK::pack(AriSdk::ARI_IBISimTkRefreshFcnRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK::ARI_IBISimTkRefreshQueryIndCb_SDK(AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 897908736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 897908736, 0);
}

void AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK::ARI_IBISimTkRefreshQueryIndCb_SDK(AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK::~ARI_IBISimTkRefreshQueryIndCb_SDK(AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK *this)
{
  *this = &unk_2A1D36F68;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK::~ARI_IBISimTkRefreshQueryIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK::pack(AriSdk::ARI_IBISimTkRefreshQueryIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK::ARI_IBISimTkRefreshQueryRsp_SDK(AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881000448, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 881000448, 1);
}

void AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK::ARI_IBISimTkRefreshQueryRsp_SDK(AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK::~ARI_IBISimTkRefreshQueryRsp_SDK(AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK *this)
{
  *this = &unk_2A1D36FA0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK::~ARI_IBISimTkRefreshQueryRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK::pack(AriSdk::ARI_IBISimTkRefreshQueryRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK::ARI_IBISimTkSetRequiredFcnListReq_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881164288, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 881164288, 0);
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK::ARI_IBISimTkSetRequiredFcnListReq_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK::~ARI_IBISimTkSetRequiredFcnListReq_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK *this)
{
  *this = &unk_2A1D36FD8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK::~ARI_IBISimTkSetRequiredFcnListReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK::pack(AriSdk::ARI_IBISimTkSetRequiredFcnListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_2961A702C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK::ARI_IBISimTkSetRequiredFcnListRspCb_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 889552896, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 889552896, 0);
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK::ARI_IBISimTkSetRequiredFcnListRspCb_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK::~ARI_IBISimTkSetRequiredFcnListRspCb_SDK(AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK *this)
{
  *this = &unk_2A1D37010;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK::~ARI_IBISimTkSetRequiredFcnListRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK::pack(AriSdk::ARI_IBISimTkSetRequiredFcnListRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISimTkTerminalResponse_SDK::ARI_IBISimTkTerminalResponse_SDK(AriSdk::ARI_IBISimTkTerminalResponse_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 881131520, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 881131520, 1);
}

void AriSdk::ARI_IBISimTkTerminalResponse_SDK::ARI_IBISimTkTerminalResponse_SDK(AriSdk::ARI_IBISimTkTerminalResponse_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISimTkTerminalResponse_SDK::~ARI_IBISimTkTerminalResponse_SDK(AriSdk::ARI_IBISimTkTerminalResponse_SDK *this)
{
  *this = &unk_2A1D37048;
  v2 = *(this + 30);
  *(this + 30) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40789AEA99);
  }

  v3 = *(this + 29);
  *(this + 29) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40789AEA99);
  }

  v4 = *(this + 28);
  *(this + 28) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40789AEA99);
  }

  v5 = *(this + 27);
  *(this + 27) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40789AEA99);
  }

  v6 = *(this + 26);
  *(this + 26) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C408757D331);
  }

  v7 = *(this + 25);
  *(this + 25) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C401C9B0B8BLL);
  }

  v8 = *(this + 24);
  *(this + 24) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40789AEA99);
  }

  v9 = *(this + 23);
  *(this + 23) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40789AEA99);
  }

  v10 = *(this + 22);
  *(this + 22) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4042B6F12DLL);
  }

  v11 = *(this + 21);
  *(this + 21) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40789AEA99);
  }

  v12 = *(this + 20);
  *(this + 20) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40FFE2888BLL);
  }

  v13 = *(this + 19);
  *(this + 19) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4082D414CFLL);
  }

  v14 = *(this + 18);
  *(this + 18) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4082D414CFLL);
  }

  v15 = *(this + 17);
  *(this + 17) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C40789AEA99);
  }

  v16 = *(this + 16);
  *(this + 16) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C40789AEA99);
  }

  v17 = *(this + 15);
  *(this + 15) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C40789AEA99);
  }

  v18 = *(this + 14);
  *(this + 14) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C40789AEA99);
  }

  v19 = *(this + 13);
  *(this + 13) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4008BF3381);
  }

  v20 = *(this + 12);
  *(this + 12) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C40E458705ALL);
  }

  v21 = *(this + 11);
  *(this + 11) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C40313CD551);
  }

  v22 = *(this + 10);
  *(this + 10) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C40789AEA99);
  }

  v23 = *(this + 9);
  *(this + 9) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4052888210);
  }

  v24 = *(this + 8);
  *(this + 8) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISimTkTerminalResponse_SDK::~ARI_IBISimTkTerminalResponse_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISimTkTerminalResponse_SDK::pack(AriSdk::ARI_IBISimTkTerminalResponse_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x42CuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x42CuLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 0x42CuLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 8uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 8uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 8uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 8uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 0x10CuLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 0x10CuLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 0xCuLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 8uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 15, v19, 0x18uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 16, v20, 8uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 17, v21, 8uLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 18, v22, 0x108uLL, 0), !result))
                                    {
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 19, v23, 0x104uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 20, v24, 8uLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 21, v25, 8uLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 22, v26, 8uLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 23, v27, 8uLL, 0), !result))
                                              {
                                                result = 0;
                                                *a2 = *(this + 6);
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

void std::vector<IBISimTkFileIdentifier>::__init_with_size[abi:ne200100]<IBISimTkFileIdentifier*,IBISimTkFileIdentifier*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961A8A9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::ARI_IBIImsMEConfigureAudioMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149501440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149501440, 0);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::ARI_IBIImsMEConfigureAudioMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::~ARI_IBIImsMEConfigureAudioMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK *this)
{
  *this = &unk_2A1D38A78;
  v2 = *(this + 43);
  *(this + 43) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 40);
  if (v3)
  {
    *(this + 41) = v3;
    operator delete(v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    *(this + 38) = v4;
    operator delete(v4);
  }

  v5 = *(this + 36);
  *(this + 36) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 35);
  *(this + 35) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C405D080610);
  }

  v7 = *(this + 32);
  if (v7)
  {
    *(this + 33) = v7;
    operator delete(v7);
  }

  v8 = *(this + 31);
  *(this + 31) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 28);
  if (v9)
  {
    *(this + 29) = v9;
    operator delete(v9);
  }

  v10 = *(this + 27);
  *(this + 27) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 26);
  *(this + 26) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40CBA68D63);
  }

  v12 = *(this + 25);
  *(this + 25) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4005A209FELL);
  }

  v13 = *(this + 24);
  *(this + 24) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C40B6EABFF7);
  }

  v14 = *(this + 23);
  *(this + 23) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 22);
  *(this + 22) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 21);
  *(this + 21) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C40BDFB0063);
  }

  v17 = *(this + 18);
  if (v17)
  {
    *(this + 19) = v17;
    operator delete(v17);
  }

  v18 = *(this + 17);
  *(this + 17) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4077774924);
  }

  v19 = *(this + 16);
  *(this + 16) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 15);
  *(this + 15) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4077774924);
  }

  v21 = *(this + 14);
  *(this + 14) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4077774924);
  }

  v22 = *(this + 13);
  *(this + 13) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C40BDFB0063);
  }

  v23 = *(this + 12);
  *(this + 12) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C40BDFB0063);
  }

  v24 = *(this + 11);
  *(this + 11) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 10);
  *(this + 10) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C40BDFB0063);
  }

  v26 = *(this + 9);
  *(this + 9) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  v27 = *(this + 8);
  *(this + 8) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::~ARI_IBIImsMEConfigureAudioMediaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK::pack(AriSdk::ARI_IBIImsMEConfigureAudioMediaReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 11, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 12, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 13, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 14, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (v16 = *(this + 19), v15 == v16) || (result = AriMsg::pack(*(this + 6), 15, v15, v16 - v15, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 16, v17, 2uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 17, v18, 4uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 18, v19, 4uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (result = AriMsg::pack(*(this + 6), 19, v20, 0x11CuLL, 0), !result))
                              {
                                v21 = *(this + 25);
                                if (!v21 || (result = AriMsg::pack(*(this + 6), 20, v21, 0xCuLL, 0), !result))
                                {
                                  v22 = *(this + 26);
                                  if (!v22 || (result = AriMsg::pack(*(this + 6), 21, v22, 0xCuLL, 0), !result))
                                  {
                                    v23 = *(this + 27);
                                    if (!v23 || (result = AriMsg::pack(*(this + 6), 22, v23, 1uLL, 0), !result))
                                    {
                                      v24 = *(this + 28);
                                      if (!v24 || (v25 = *(this + 29), v24 == v25) || (result = AriMsg::pack(*(this + 6), 23, v24, v25 - v24, 0), !result))
                                      {
                                        v26 = *(this + 31);
                                        if (!v26 || (result = AriMsg::pack(*(this + 6), 24, v26, 1uLL, 0), !result))
                                        {
                                          v27 = *(this + 32);
                                          if (!v27 || (v28 = *(this + 33), v27 == v28) || (result = AriMsg::pack(*(this + 6), 25, v27, v28 - v27, 0), !result))
                                          {
                                            v29 = *(this + 35);
                                            if (!v29 || (result = AriMsg::pack(*(this + 6), 26, v29, 6uLL, 0), !result))
                                            {
                                              v30 = *(this + 36);
                                              if (!v30 || (result = AriMsg::pack(*(this + 6), 27, v30, 2uLL, 0), !result))
                                              {
                                                v31 = *(this + 37);
                                                if (!v31 || (v32 = *(this + 38), v31 == v32) || (result = AriMsg::pack(*(this + 6), 28, v31, v32 - v31, 0), !result))
                                                {
                                                  v33 = *(this + 40);
                                                  if (!v33 || (v34 = *(this + 41), v33 == v34) || (result = AriMsg::pack(*(this + 6), 29, v33, v34 - v33, 0), !result))
                                                  {
                                                    v35 = *(this + 43);
                                                    if (!v35 || (result = AriMsg::pack(*(this + 6), 30, v35, 4uLL, 0), !result))
                                                    {
                                                      result = 0;
                                                      *a2 = *(this + 6);
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

  return result;
}

AriOsa *AriSdk::TlvArray<IBIImsMEAudioCodec,4ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4) < 5)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 4;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4), 4);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961ABB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBIImsMEAudioEVSCodec,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 4) < 3)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 4);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 1) - *a2) >> 4), 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961ABD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned int,2ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 9)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 2);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961ABFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157890048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157890048, 0);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::~ARI_IBIImsMEConfigureAudioMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK *this)
{
  *this = &unk_2A1D38AB0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::~ARI_IBIImsMEConfigureAudioMediaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK::pack(AriSdk::ARI_IBIImsMEConfigureAudioMediaRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK::ARI_IBIImsMEConfigureRTTMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149599744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149599744, 0);
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK::ARI_IBIImsMEConfigureRTTMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK::~ARI_IBIImsMEConfigureRTTMediaReq_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK *this)
{
  *this = &unk_2A1D38AE8;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 19);
  *(this + 19) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 18);
  *(this + 18) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B6EABFF7);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 9);
  *(this + 9) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 8);
  *(this + 8) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK::~ARI_IBIImsMEConfigureRTTMediaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK::pack(AriSdk::ARI_IBIImsMEConfigureRTTMediaReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 8, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 2uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x11CuLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 13, v16, 1uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (v18 = *(this + 22), v17 == v18) || (result = AriMsg::pack(*(this + 6), 14, v17, v18 - v17, 0), !result))
                        {
                          result = 0;
                          *a2 = *(this + 6);
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

  return result;
}

void sub_2961ACE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBIImsMERTTCodec,2ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x21uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 4;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 2;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 4, 2);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961AD174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157988352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157988352, 0);
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK::~ARI_IBIImsMEConfigureRTTMediaRspCb_SDK(AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK *this)
{
  *this = &unk_2A1D38B20;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK::~ARI_IBIImsMEConfigureRTTMediaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK::pack(AriSdk::ARI_IBIImsMEConfigureRTTMediaRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::ARI_IBIImsMECreateAudioMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149468672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149468672, 0);
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::ARI_IBIImsMECreateAudioMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::~ARI_IBIImsMECreateAudioMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK *this)
{
  *this = &unk_2A1D38B58;
  v2 = *(this + 49);
  *(this + 49) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 46);
  if (v3)
  {
    *(this + 47) = v3;
    operator delete(v3);
  }

  v4 = *(this + 43);
  if (v4)
  {
    *(this + 44) = v4;
    operator delete(v4);
  }

  v5 = *(this + 42);
  *(this + 42) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 41);
  *(this + 41) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 40);
  *(this + 40) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C405D080610);
  }

  v8 = *(this + 37);
  if (v8)
  {
    *(this + 38) = v8;
    operator delete(v8);
  }

  v9 = *(this + 36);
  *(this + 36) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  v11 = *(this + 32);
  *(this + 32) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4077774924);
  }

  v12 = *(this + 31);
  *(this + 31) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40CBA68D63);
  }

  v13 = *(this + 30);
  *(this + 30) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4005A209FELL);
  }

  v14 = *(this + 29);
  *(this + 29) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C40B6EABFF7);
  }

  v15 = *(this + 28);
  *(this + 28) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 27);
  *(this + 27) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 26);
  *(this + 26) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C40BDFB0063);
  }

  v18 = *(this + 23);
  if (v18)
  {
    *(this + 24) = v18;
    operator delete(v18);
  }

  v19 = *(this + 22);
  *(this + 22) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4077774924);
  }

  v20 = *(this + 21);
  *(this + 21) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 20);
  *(this + 20) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4077774924);
  }

  v22 = *(this + 19);
  *(this + 19) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4077774924);
  }

  v23 = *(this + 18);
  *(this + 18) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C40BDFB0063);
  }

  v24 = *(this + 17);
  *(this + 17) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40BDFB0063);
  }

  v25 = *(this + 16);
  *(this + 16) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 15);
  *(this + 15) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C40BDFB0063);
  }

  v27 = *(this + 12);
  if (v27)
  {
    *(this + 13) = v27;
    operator delete(v27);
  }

  v28 = *(this + 11);
  *(this + 11) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4077774924);
  }

  v29 = *(this + 10);
  *(this + 10) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  v30 = *(this + 9);
  *(this + 9) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4052888210);
  }

  v31 = *(this + 8);
  *(this + 8) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::~ARI_IBIImsMECreateAudioMediaSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK::pack(AriSdk::ARI_IBIImsMECreateAudioMediaSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 2uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 2uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 1uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 1uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 1uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (v20 = *(this + 24), v19 == v20) || (result = AriMsg::pack(*(this + 6), 15, v19, v20 - v19, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (result = AriMsg::pack(*(this + 6), 16, v21, 2uLL, 0), !result))
                              {
                                v22 = *(this + 27);
                                if (!v22 || (result = AriMsg::pack(*(this + 6), 17, v22, 4uLL, 0), !result))
                                {
                                  v23 = *(this + 28);
                                  if (!v23 || (result = AriMsg::pack(*(this + 6), 18, v23, 4uLL, 0), !result))
                                  {
                                    v24 = *(this + 29);
                                    if (!v24 || (result = AriMsg::pack(*(this + 6), 19, v24, 0x11CuLL, 0), !result))
                                    {
                                      v25 = *(this + 30);
                                      if (!v25 || (result = AriMsg::pack(*(this + 6), 20, v25, 0xCuLL, 0), !result))
                                      {
                                        v26 = *(this + 31);
                                        if (!v26 || (result = AriMsg::pack(*(this + 6), 21, v26, 0xCuLL, 0), !result))
                                        {
                                          v27 = *(this + 32);
                                          if (!v27 || (result = AriMsg::pack(*(this + 6), 22, v27, 1uLL, 0), !result))
                                          {
                                            v28 = *(this + 33);
                                            if (!v28 || (v29 = *(this + 34), v28 == v29) || (result = AriMsg::pack(*(this + 6), 23, v28, v29 - v28, 0), !result))
                                            {
                                              v30 = *(this + 36);
                                              if (!v30 || (result = AriMsg::pack(*(this + 6), 24, v30, 1uLL, 0), !result))
                                              {
                                                v31 = *(this + 37);
                                                if (!v31 || (v32 = *(this + 38), v31 == v32) || (result = AriMsg::pack(*(this + 6), 25, v31, v32 - v31, 0), !result))
                                                {
                                                  v33 = *(this + 40);
                                                  if (!v33 || (result = AriMsg::pack(*(this + 6), 26, v33, 6uLL, 0), !result))
                                                  {
                                                    v34 = *(this + 41);
                                                    if (!v34 || (result = AriMsg::pack(*(this + 6), 27, v34, 4uLL, 0), !result))
                                                    {
                                                      v35 = *(this + 42);
                                                      if (!v35 || (result = AriMsg::pack(*(this + 6), 28, v35, 2uLL, 0), !result))
                                                      {
                                                        v36 = *(this + 43);
                                                        if (!v36 || (v37 = *(this + 44), v36 == v37) || (result = AriMsg::pack(*(this + 6), 29, v36, v37 - v36, 0), !result))
                                                        {
                                                          v38 = *(this + 46);
                                                          if (!v38 || (v39 = *(this + 47), v38 == v39) || (result = AriMsg::pack(*(this + 6), 30, v38, v39 - v38, 0), !result))
                                                          {
                                                            v40 = *(this + 49);
                                                            if (!v40 || (result = AriMsg::pack(*(this + 6), 31, v40, 4uLL, 0), !result))
                                                            {
                                                              result = 0;
                                                              *a2 = *(this + 6);
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
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157857280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157857280, 0);
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::~ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK *this)
{
  *this = &unk_2A1D38B90;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::~ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK::pack(AriSdk::ARI_IBIImsMECreateAudioMediaSessionRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK::ARI_IBIImsMECreateRTTMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149566976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149566976, 0);
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK::ARI_IBIImsMECreateRTTMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK::~ARI_IBIImsMECreateRTTMediaSessionReq_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK *this)
{
  *this = &unk_2A1D38BC8;
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  *(this + 25) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 24);
  *(this + 24) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 23);
  *(this + 23) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 22);
  *(this + 22) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B6EABFF7);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  v8 = *(this + 18);
  if (v8)
  {
    *(this + 19) = v8;
    operator delete(v8);
  }

  v9 = *(this + 17);
  *(this + 17) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 16);
  *(this + 16) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 15);
  *(this + 15) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 12);
  if (v12)
  {
    *(this + 13) = v12;
    operator delete(v12);
  }

  v13 = *(this + 11);
  *(this + 11) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4077774924);
  }

  v14 = *(this + 10);
  *(this + 10) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 9);
  *(this + 9) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK::~ARI_IBIImsMECreateRTTMediaSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK::pack(AriSdk::ARI_IBIImsMECreateRTTMediaSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (v15 = *(this + 19), v14 == v15) || (result = AriMsg::pack(*(this + 6), 10, v14, v15 - v14, 0), !result))
                  {
                    v16 = *(this + 21);
                    if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 2uLL, 0), !result))
                    {
                      v17 = *(this + 22);
                      if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 0x11CuLL, 0), !result))
                      {
                        v18 = *(this + 23);
                        if (!v18 || (result = AriMsg::pack(*(this + 6), 13, v18, 4uLL, 0), !result))
                        {
                          v19 = *(this + 24);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 4uLL, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 15, v20, 1uLL, 0), !result))
                            {
                              v21 = *(this + 26);
                              if (!v21 || (v22 = *(this + 27), v21 == v22) || (result = AriMsg::pack(*(this + 6), 16, v21, v22 - v21, 0), !result))
                              {
                                result = 0;
                                *a2 = *(this + 6);
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
  }

  return result;
}

void sub_2961AFFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157955584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157955584, 0);
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK::~ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK *this)
{
  *this = &unk_2A1D38C00;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK::~ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK::pack(AriSdk::ARI_IBIImsMECreateRTTMediaSessionRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK::ARI_IBIImsMEGetMediaCapabilityReq_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149272064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149272064, 0);
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK::ARI_IBIImsMEGetMediaCapabilityReq_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK::~ARI_IBIImsMEGetMediaCapabilityReq_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK *this)
{
  *this = &unk_2A1D38C38;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK::~ARI_IBIImsMEGetMediaCapabilityReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK::pack(AriSdk::ARI_IBIImsMEGetMediaCapabilityReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157660672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157660672, 0);
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::~ARI_IBIImsMEGetMediaCapabilityRspCb_SDK(AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK *this)
{
  *this = &unk_2A1D38C70;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C400DDB7D95);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::~ARI_IBIImsMEGetMediaCapabilityRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK::pack(AriSdk::ARI_IBIImsMEGetMediaCapabilityRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 0x69CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::ARI_IBIImsMEMediaSessionErrIndCb_SDK(AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1166049280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1166049280, 0);
}

void AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::ARI_IBIImsMEMediaSessionErrIndCb_SDK(AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::~ARI_IBIImsMEMediaSessionErrIndCb_SDK(AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK *this)
{
  *this = &unk_2A1D38CA8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::~ARI_IBIImsMEMediaSessionErrIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK::pack(AriSdk::ARI_IBIImsMEMediaSessionErrIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::ARI_IBIImsMERtcpReceiverReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1166114816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1166114816, 0);
}

void AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::ARI_IBIImsMERtcpReceiverReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::~ARI_IBIImsMERtcpReceiverReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK *this)
{
  *this = &unk_2A1D38CE0;
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 17);
  *(this + 17) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 15);
  *(this + 15) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 14);
  *(this + 14) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::~ARI_IBIImsMERtcpReceiverReportIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK::pack(AriSdk::ARI_IBIImsMERtcpReceiverReportIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 4uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 4uLL, 0), !result))
                      {
                        result = 0;
                        *a2 = *(this + 6);
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

  return result;
}

void AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::ARI_IBIImsMERtcpSDESReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1166147584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1166147584, 0);
}

void AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::ARI_IBIImsMERtcpSDESReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::~ARI_IBIImsMERtcpSDESReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK *this)
{
  *this = &unk_2A1D38D18;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::~ARI_IBIImsMERtcpSDESReportIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK::pack(AriSdk::ARI_IBIImsMERtcpSDESReportIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 8, v11, v12 - v11, 0), !result))
              {
                result = 0;
                *a2 = *(this + 6);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2961B202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<char,256ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x101)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 256;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 256);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961B2280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::ARI_IBIImsMERtcpSenderReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1166082048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1166082048, 0);
}

void AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::ARI_IBIImsMERtcpSenderReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::~ARI_IBIImsMERtcpSenderReportIndCb_SDK(AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK *this)
{
  *this = &unk_2A1D38D50;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 8);
  *(this + 8) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::~ARI_IBIImsMERtcpSenderReportIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK::pack(AriSdk::ARI_IBIImsMERtcpSenderReportIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 4uLL, 0), !result))
                {
                  result = 0;
                  *a2 = *(this + 6);
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

void AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::ARI_IBIImsMEStartDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149403136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149403136, 0);
}

void AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::ARI_IBIImsMEStartDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::~ARI_IBIImsMEStartDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK *this)
{
  *this = &unk_2A1D38D88;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::~ARI_IBIImsMEStartDTMFCodeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK::pack(AriSdk::ARI_IBIImsMEStartDTMFCodeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::ARI_IBIImsMEStartDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157791744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157791744, 0);
}

void AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::ARI_IBIImsMEStartDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::~ARI_IBIImsMEStartDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK *this)
{
  *this = &unk_2A1D38DC0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::~ARI_IBIImsMEStartDTMFCodeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK::pack(AriSdk::ARI_IBIImsMEStartDTMFCodeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStartMediaReq_SDK::ARI_IBIImsMEStartMediaReq_SDK(AriSdk::ARI_IBIImsMEStartMediaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149304832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149304832, 0);
}

void AriSdk::ARI_IBIImsMEStartMediaReq_SDK::ARI_IBIImsMEStartMediaReq_SDK(AriSdk::ARI_IBIImsMEStartMediaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStartMediaReq_SDK::~ARI_IBIImsMEStartMediaReq_SDK(AriSdk::ARI_IBIImsMEStartMediaReq_SDK *this)
{
  *this = &unk_2A1D38DF8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStartMediaReq_SDK::~ARI_IBIImsMEStartMediaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStartMediaReq_SDK::pack(AriSdk::ARI_IBIImsMEStartMediaReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::ARI_IBIImsMEStartMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157693440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157693440, 0);
}

void AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::ARI_IBIImsMEStartMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::~ARI_IBIImsMEStartMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK *this)
{
  *this = &unk_2A1D38E30;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::~ARI_IBIImsMEStartMediaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK::pack(AriSdk::ARI_IBIImsMEStartMediaRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::ARI_IBIImsMEStopDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149435904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149435904, 0);
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::ARI_IBIImsMEStopDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::~ARI_IBIImsMEStopDTMFCodeReq_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK *this)
{
  *this = &unk_2A1D38E68;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::~ARI_IBIImsMEStopDTMFCodeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK::pack(AriSdk::ARI_IBIImsMEStopDTMFCodeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::ARI_IBIImsMEStopDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157824512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157824512, 0);
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::ARI_IBIImsMEStopDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::~ARI_IBIImsMEStopDTMFCodeRspCb_SDK(AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK *this)
{
  *this = &unk_2A1D38EA0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::~ARI_IBIImsMEStopDTMFCodeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK::pack(AriSdk::ARI_IBIImsMEStopDTMFCodeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStopMediaReq_SDK::ARI_IBIImsMEStopMediaReq_SDK(AriSdk::ARI_IBIImsMEStopMediaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149337600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149337600, 0);
}

void AriSdk::ARI_IBIImsMEStopMediaReq_SDK::ARI_IBIImsMEStopMediaReq_SDK(AriSdk::ARI_IBIImsMEStopMediaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStopMediaReq_SDK::~ARI_IBIImsMEStopMediaReq_SDK(AriSdk::ARI_IBIImsMEStopMediaReq_SDK *this)
{
  *this = &unk_2A1D38ED8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStopMediaReq_SDK::~ARI_IBIImsMEStopMediaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStopMediaReq_SDK::pack(AriSdk::ARI_IBIImsMEStopMediaReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::ARI_IBIImsMEStopMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157726208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157726208, 0);
}

void AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::ARI_IBIImsMEStopMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::~ARI_IBIImsMEStopMediaRspCb_SDK(AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK *this)
{
  *this = &unk_2A1D38F10;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::~ARI_IBIImsMEStopMediaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK::pack(AriSdk::ARI_IBIImsMEStopMediaRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::ARI_IBIImsMETerminateMediaSessionReq_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149370368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149370368, 0);
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::ARI_IBIImsMETerminateMediaSessionReq_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::~ARI_IBIImsMETerminateMediaSessionReq_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK *this)
{
  *this = &unk_2A1D38F48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::~ARI_IBIImsMETerminateMediaSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK::pack(AriSdk::ARI_IBIImsMETerminateMediaSessionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::ARI_IBIImsMETerminateMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1157758976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1157758976, 0);
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::ARI_IBIImsMETerminateMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::~ARI_IBIImsMETerminateMediaSessionRspCb_SDK(AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK *this)
{
  *this = &unk_2A1D38F80;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::~ARI_IBIImsMETerminateMediaSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK::pack(AriSdk::ARI_IBIImsMETerminateMediaSessionRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149632512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149632512, 0);
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::~ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK *this)
{
  *this = &unk_2A1D38FB8;
  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 19);
  *(this + 19) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 18);
  *(this + 18) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  v9 = *(this + 14);
  *(this + 14) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 13);
  *(this + 13) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4077774924);
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 10);
  *(this + 10) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 9);
  *(this + 9) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 8);
  *(this + 8) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::~ARI_IBISipMsgInjectToCpIMSTraceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK::pack(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 9, v12, v13 - v12, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 2uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (v18 = *(this + 22), v17 == v18) || (result = AriMsg::pack(*(this + 6), 13, v17, v18 - v17, 0), !result))
                        {
                          v19 = *(this + 24);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 4uLL, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (result = AriMsg::pack(*(this + 6), 15, v20, 4uLL, 0), !result))
                            {
                              result = 0;
                              *a2 = *(this + 6);
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

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned char,129ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x82)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 129;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 129);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961B59BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,2001ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x7D2)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 2001;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 2001);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961B5BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1158021120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1158021120, 0);
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK::~ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK *this)
{
  *this = &unk_2A1D38FF0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK::~ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK::pack(AriSdk::ARI_IBISipMsgInjectToCpIMSTraceRsbCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::ARI_IBISipMessageInjectToCpTrace_SDK(AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1149534208, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 1149534208, 1);
}

void AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::ARI_IBISipMessageInjectToCpTrace_SDK(AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::~ARI_IBISipMessageInjectToCpTrace_SDK(AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK *this)
{
  *this = &unk_2A1D39028;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 18);
  *(this + 18) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 17);
  *(this + 17) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 13);
  *(this + 13) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 12);
  *(this + 12) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 11);
  *(this + 11) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40BDFB0063);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 9);
  *(this + 9) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::~ARI_IBISipMessageInjectToCpTrace_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK::pack(AriSdk::ARI_IBISipMessageInjectToCpTrace_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 9, v11, v12 - v11, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 4uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 4uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 12, v15, 2uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (v17 = *(this + 21), v16 == v17) || (result = AriMsg::pack(*(this + 6), 13, v16, v17 - v16, 0), !result))
                      {
                        result = 0;
                        *a2 = *(this + 6);
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

  return result;
}

void sub_2961B6958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void std::vector<IBIImsMEAudioCodec>::__init_with_size[abi:ne200100]<IBIImsMEAudioCodec*,IBIImsMEAudioCodec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961B6AF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIImsMEAudioEVSCodec>::__init_with_size[abi:ne200100]<IBIImsMEAudioEVSCodec*,IBIImsMEAudioEVSCodec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961B6BA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIImsMERTTCodec>::__init_with_size[abi:ne200100]<IBIImsMERTTCodec*,IBIImsMERTTCodec*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961B6C44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiTraceAddMasksReq_SDK::ARI_CsiTraceAddMasksReq_SDK(AriSdk::ARI_CsiTraceAddMasksReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552023552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552023552, 0);
}

void AriSdk::ARI_CsiTraceAddMasksReq_SDK::ARI_CsiTraceAddMasksReq_SDK(AriSdk::ARI_CsiTraceAddMasksReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceAddMasksReq_SDK::~ARI_CsiTraceAddMasksReq_SDK(AriSdk::ARI_CsiTraceAddMasksReq_SDK *this)
{
  *this = &unk_2A1D39678;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceAddMasksReq_SDK::~ARI_CsiTraceAddMasksReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceAddMasksReq_SDK::pack(AriSdk::ARI_CsiTraceAddMasksReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_2961B73FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<char,960ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x3C1)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 960;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 960);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961B7614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiTraceAddMasksRspCb_SDK::ARI_CsiTraceAddMasksRspCb_SDK(AriSdk::ARI_CsiTraceAddMasksRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560412160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560412160, 0);
}

void AriSdk::ARI_CsiTraceAddMasksRspCb_SDK::ARI_CsiTraceAddMasksRspCb_SDK(AriSdk::ARI_CsiTraceAddMasksRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceAddMasksRspCb_SDK::~ARI_CsiTraceAddMasksRspCb_SDK(AriSdk::ARI_CsiTraceAddMasksRspCb_SDK *this)
{
  *this = &unk_2A1D396B0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceAddMasksRspCb_SDK::~ARI_CsiTraceAddMasksRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceAddMasksRspCb_SDK::pack(AriSdk::ARI_CsiTraceAddMasksRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiTraceModeInitReq_SDK::ARI_CsiTraceModeInitReq_SDK(AriSdk::ARI_CsiTraceModeInitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1551958016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1551958016, 0);
}

void AriSdk::ARI_CsiTraceModeInitReq_SDK::ARI_CsiTraceModeInitReq_SDK(AriSdk::ARI_CsiTraceModeInitReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceModeInitReq_SDK::~ARI_CsiTraceModeInitReq_SDK(AriSdk::ARI_CsiTraceModeInitReq_SDK *this)
{
  *this = &unk_2A1D396E8;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceModeInitReq_SDK::~ARI_CsiTraceModeInitReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceModeInitReq_SDK::pack(AriSdk::ARI_CsiTraceModeInitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiTraceModeInitRspCb_SDK::ARI_CsiTraceModeInitRspCb_SDK(AriSdk::ARI_CsiTraceModeInitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560346624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560346624, 0);
}

void AriSdk::ARI_CsiTraceModeInitRspCb_SDK::ARI_CsiTraceModeInitRspCb_SDK(AriSdk::ARI_CsiTraceModeInitRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceModeInitRspCb_SDK::~ARI_CsiTraceModeInitRspCb_SDK(AriSdk::ARI_CsiTraceModeInitRspCb_SDK *this)
{
  *this = &unk_2A1D39720;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceModeInitRspCb_SDK::~ARI_CsiTraceModeInitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceModeInitRspCb_SDK::pack(AriSdk::ARI_CsiTraceModeInitRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiTraceProfileInitReq_SDK::ARI_CsiTraceProfileInitReq_SDK(AriSdk::ARI_CsiTraceProfileInitReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1551925248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1551925248, 0);
}

void AriSdk::ARI_CsiTraceProfileInitReq_SDK::ARI_CsiTraceProfileInitReq_SDK(AriSdk::ARI_CsiTraceProfileInitReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfileInitReq_SDK::~ARI_CsiTraceProfileInitReq_SDK(AriSdk::ARI_CsiTraceProfileInitReq_SDK *this)
{
  *this = &unk_2A1D39758;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfileInitReq_SDK::~ARI_CsiTraceProfileInitReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfileInitReq_SDK::pack(AriSdk::ARI_CsiTraceProfileInitReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 4uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 4, v10, v11 - v10, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_2961B8674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::ARI_CsiTraceProfileInitRspCb_SDK(AriSdk::ARI_CsiTraceProfileInitRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560313856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560313856, 0);
}

void AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::ARI_CsiTraceProfileInitRspCb_SDK(AriSdk::ARI_CsiTraceProfileInitRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::~ARI_CsiTraceProfileInitRspCb_SDK(AriSdk::ARI_CsiTraceProfileInitRspCb_SDK *this)
{
  *this = &unk_2A1D39790;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::~ARI_CsiTraceProfileInitRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::pack(AriSdk::ARI_CsiTraceProfileInitRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::ARI_CsiTraceProfilePacketsReq_SDK(AriSdk::ARI_CsiTraceProfilePacketsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552056320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552056320, 0);
}

void AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::ARI_CsiTraceProfilePacketsReq_SDK(AriSdk::ARI_CsiTraceProfilePacketsReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::~ARI_CsiTraceProfilePacketsReq_SDK(AriSdk::ARI_CsiTraceProfilePacketsReq_SDK *this)
{
  *this = &unk_2A1D397C8;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::~ARI_CsiTraceProfilePacketsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfilePacketsReq_SDK::pack(AriSdk::ARI_CsiTraceProfilePacketsReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 2uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 6, v10, v11 - v10, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2961B9030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<char,3840ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF01)
  {
    std::vector<char>::__move_assign(this, __c);
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(this);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v11);
      v9 = v12 >= 0 ? v11 : v11[0];
      v10 = __c->n128_u64[1] - __c->n128_u64[0];
      *__p = 136316418;
      *&__p[4] = "ari";
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = 360;
      v18 = 2048;
      v19 = this;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = 3840;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v16 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3840);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961B9284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::ARI_CsiTraceProfilePacketsRspCb_SDK(AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560444928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560444928, 0);
}

void AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::ARI_CsiTraceProfilePacketsRspCb_SDK(AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::~ARI_CsiTraceProfilePacketsRspCb_SDK(AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK *this)
{
  *this = &unk_2A1D39800;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::~ARI_CsiTraceProfilePacketsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::pack(AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiTraceProfileSelectReq_SDK::ARI_CsiTraceProfileSelectReq_SDK(AriSdk::ARI_CsiTraceProfileSelectReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1551990784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1551990784, 0);
}

void AriSdk::ARI_CsiTraceProfileSelectReq_SDK::ARI_CsiTraceProfileSelectReq_SDK(AriSdk::ARI_CsiTraceProfileSelectReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfileSelectReq_SDK::~ARI_CsiTraceProfileSelectReq_SDK(AriSdk::ARI_CsiTraceProfileSelectReq_SDK *this)
{
  *this = &unk_2A1D39838;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfileSelectReq_SDK::~ARI_CsiTraceProfileSelectReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfileSelectReq_SDK::pack(AriSdk::ARI_CsiTraceProfileSelectReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::ARI_CsiTraceProfileSelectRspCb_SDK(AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560379392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560379392, 0);
}

void AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::ARI_CsiTraceProfileSelectRspCb_SDK(AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::~ARI_CsiTraceProfileSelectRspCb_SDK(AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK *this)
{
  *this = &unk_2A1D39870;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::~ARI_CsiTraceProfileSelectRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::pack(AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiXsioGetReq_SDK::ARI_CsiXsioGetReq_SDK(AriSdk::ARI_CsiXsioGetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552482304, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552482304, 0);
}

void AriSdk::ARI_CsiXsioGetReq_SDK::ARI_CsiXsioGetReq_SDK(AriSdk::ARI_CsiXsioGetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiXsioGetReq_SDK::~ARI_CsiXsioGetReq_SDK(AriSdk::ARI_CsiXsioGetReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiXsioGetReq_SDK::pack(AriSdk::ARI_CsiXsioGetReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiXsioGetRspCb_SDK::ARI_CsiXsioGetRspCb_SDK(AriSdk::ARI_CsiXsioGetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560870912, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560870912, 0);
}

void AriSdk::ARI_CsiXsioGetRspCb_SDK::ARI_CsiXsioGetRspCb_SDK(AriSdk::ARI_CsiXsioGetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiXsioGetRspCb_SDK::~ARI_CsiXsioGetRspCb_SDK(AriSdk::ARI_CsiXsioGetRspCb_SDK *this)
{
  *this = &unk_2A1D398E0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiXsioGetRspCb_SDK::~ARI_CsiXsioGetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiXsioGetRspCb_SDK::pack(AriSdk::ARI_CsiXsioGetRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiXsioSetReq_SDK::ARI_CsiXsioSetReq_SDK(AriSdk::ARI_CsiXsioSetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552449536, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552449536, 0);
}

void AriSdk::ARI_CsiXsioSetReq_SDK::ARI_CsiXsioSetReq_SDK(AriSdk::ARI_CsiXsioSetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiXsioSetReq_SDK::~ARI_CsiXsioSetReq_SDK(AriSdk::ARI_CsiXsioSetReq_SDK *this)
{
  *this = &unk_2A1D39918;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiXsioSetReq_SDK::~ARI_CsiXsioSetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiXsioSetReq_SDK::pack(AriSdk::ARI_CsiXsioSetReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiXsioSetRspCb_SDK::ARI_CsiXsioSetRspCb_SDK(AriSdk::ARI_CsiXsioSetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560838144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560838144, 0);
}

void AriSdk::ARI_CsiXsioSetRspCb_SDK::ARI_CsiXsioSetRspCb_SDK(AriSdk::ARI_CsiXsioSetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiXsioSetRspCb_SDK::~ARI_CsiXsioSetRspCb_SDK(AriSdk::ARI_CsiXsioSetRspCb_SDK *this)
{
  *this = &unk_2A1D39950;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiXsioSetRspCb_SDK::~ARI_CsiXsioSetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiXsioSetRspCb_SDK::pack(AriSdk::ARI_CsiXsioSetRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceFlushReq_SDK::ARI_TraceFlushReq_SDK(AriSdk::ARI_TraceFlushReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552154624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552154624, 0);
}

void AriSdk::ARI_TraceFlushReq_SDK::ARI_TraceFlushReq_SDK(AriSdk::ARI_TraceFlushReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceFlushReq_SDK::~ARI_TraceFlushReq_SDK(AriSdk::ARI_TraceFlushReq_SDK *this)
{
  *this = &unk_2A1D39988;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceFlushReq_SDK::~ARI_TraceFlushReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceFlushReq_SDK::pack(AriSdk::ARI_TraceFlushReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(AriSdk::ARI_TraceFlushRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560543232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560543232, 0);
}

void AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(AriSdk::ARI_TraceFlushRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceFlushRspCb_SDK::~ARI_TraceFlushRspCb_SDK(AriSdk::ARI_TraceFlushRspCb_SDK *this)
{
  *this = &unk_2A1D399C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceFlushRspCb_SDK::~ARI_TraceFlushRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceFlushRspCb_SDK::pack(AriSdk::ARI_TraceFlushRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(AriSdk::ARI_TraceFlushCompleteInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1568735232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1568735232, 0);
}

void AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(AriSdk::ARI_TraceFlushCompleteInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceFlushCompleteInd_SDK::~ARI_TraceFlushCompleteInd_SDK(AriSdk::ARI_TraceFlushCompleteInd_SDK *this)
{
  *this = &unk_2A1D399F8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceFlushCompleteInd_SDK::~ARI_TraceFlushCompleteInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceFlushCompleteInd_SDK::pack(AriSdk::ARI_TraceFlushCompleteInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceGetConfigReq_SDK::ARI_TraceGetConfigReq_SDK(AriSdk::ARI_TraceGetConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552121856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552121856, 0);
}

void AriSdk::ARI_TraceGetConfigReq_SDK::ARI_TraceGetConfigReq_SDK(AriSdk::ARI_TraceGetConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceGetConfigReq_SDK::~ARI_TraceGetConfigReq_SDK(AriSdk::ARI_TraceGetConfigReq_SDK *this)
{
  *this = &unk_2A1D39A30;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceGetConfigReq_SDK::~ARI_TraceGetConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceGetConfigReq_SDK::pack(AriSdk::ARI_TraceGetConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_2961BB26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_TraceGetConfigRspCb_SDK::ARI_TraceGetConfigRspCb_SDK(AriSdk::ARI_TraceGetConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560510464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560510464, 0);
}

void AriSdk::ARI_TraceGetConfigRspCb_SDK::ARI_TraceGetConfigRspCb_SDK(AriSdk::ARI_TraceGetConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceGetConfigRspCb_SDK::~ARI_TraceGetConfigRspCb_SDK(AriSdk::ARI_TraceGetConfigRspCb_SDK *this)
{
  *this = &unk_2A1D39A68;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceGetConfigRspCb_SDK::~ARI_TraceGetConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceGetConfigRspCb_SDK::pack(AriSdk::ARI_TraceGetConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_TraceGetConfigRspCb_SDK::unpack(AriSdk::ARI_TraceGetConfigRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2961BB8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  MEMORY[0x29C257E50](v29, v28);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_TraceIQStopCompleteInd_SDK::ARI_TraceIQStopCompleteInd_SDK(AriSdk::ARI_TraceIQStopCompleteInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1568669696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1568669696, 0);
}

void AriSdk::ARI_TraceIQStopCompleteInd_SDK::ARI_TraceIQStopCompleteInd_SDK(AriSdk::ARI_TraceIQStopCompleteInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceIQStopCompleteInd_SDK::~ARI_TraceIQStopCompleteInd_SDK(AriSdk::ARI_TraceIQStopCompleteInd_SDK *this)
{
  *this = &unk_2A1D39AA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceIQStopCompleteInd_SDK::~ARI_TraceIQStopCompleteInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceIQStopCompleteInd_SDK::pack(AriSdk::ARI_TraceIQStopCompleteInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceOutputIdleInd_SDK::ARI_TraceOutputIdleInd_SDK(AriSdk::ARI_TraceOutputIdleInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1568702464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1568702464, 0);
}

void AriSdk::ARI_TraceOutputIdleInd_SDK::ARI_TraceOutputIdleInd_SDK(AriSdk::ARI_TraceOutputIdleInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceOutputIdleInd_SDK::~ARI_TraceOutputIdleInd_SDK(AriSdk::ARI_TraceOutputIdleInd_SDK *this)
{
  *this = &unk_2A1D39AD8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceOutputIdleInd_SDK::~ARI_TraceOutputIdleInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceOutputIdleInd_SDK::pack(AriSdk::ARI_TraceOutputIdleInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_TraceSetConfigReq_SDK::ARI_TraceSetConfigReq_SDK(AriSdk::ARI_TraceSetConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1552089088, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1552089088, 0);
}

void AriSdk::ARI_TraceSetConfigReq_SDK::ARI_TraceSetConfigReq_SDK(AriSdk::ARI_TraceSetConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceSetConfigReq_SDK::~ARI_TraceSetConfigReq_SDK(AriSdk::ARI_TraceSetConfigReq_SDK *this)
{
  *this = &unk_2A1D39B10;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceSetConfigReq_SDK::~ARI_TraceSetConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceSetConfigReq_SDK::pack(AriSdk::ARI_TraceSetConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 1uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 1uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 4uLL, 0), !result))
          {
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(AriSdk::ARI_TraceSetConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1560477696, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1560477696, 0);
}

void AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(AriSdk::ARI_TraceSetConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_TraceSetConfigRspCb_SDK::~ARI_TraceSetConfigRspCb_SDK(AriSdk::ARI_TraceSetConfigRspCb_SDK *this)
{
  *this = &unk_2A1D39B48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_TraceSetConfigRspCb_SDK::~ARI_TraceSetConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_TraceSetConfigRspCb_SDK::pack(AriSdk::ARI_TraceSetConfigRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIpcGetLogBufferReq_SDK::ARI_CsiIpcGetLogBufferReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2004811776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2004811776, 0);
}

void AriSdk::ARI_CsiIpcGetLogBufferReq_SDK::ARI_CsiIpcGetLogBufferReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcGetLogBufferReq_SDK::~ARI_CsiIpcGetLogBufferReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferReq_SDK *this)
{
  *this = &unk_2A1D39F88;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcGetLogBufferReq_SDK::~ARI_CsiIpcGetLogBufferReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcGetLogBufferReq_SDK::pack(AriSdk::ARI_CsiIpcGetLogBufferReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK::ARI_CsiIpcGetLogBufferRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1996423168, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1996423168, 0);
}

void AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK::ARI_CsiIpcGetLogBufferRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK::~ARI_CsiIpcGetLogBufferRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK *this)
{
  *this = &unk_2A1D39FC0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK::~ARI_CsiIpcGetLogBufferRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK::pack(AriSdk::ARI_CsiIpcGetLogBufferRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK::ARI_CsiIpcGetLogBufferListReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -2004844544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -2004844544, 0);
}

void AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK::ARI_CsiIpcGetLogBufferListReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK::~ARI_CsiIpcGetLogBufferListReq_SDK(AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK::pack(AriSdk::ARI_CsiIpcGetLogBufferListReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  *a2 = *(this + 6);
  return 0;
}

void AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK::ARI_CsiIpcGetLogBufferListRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -1996455936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -1996455936, 0);
}

void AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK::ARI_CsiIpcGetLogBufferListRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK::~ARI_CsiIpcGetLogBufferListRsp_SDK(AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK *this)
{
  *this = &unk_2A1D3A030;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK::~ARI_CsiIpcGetLogBufferListRsp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK::pack(AriSdk::ARI_CsiIpcGetLogBufferListRsp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    if (v6)
    {
      v8 = v6 == v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || (result = AriMsg::pack(*(this + 6), 2, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void sub_2961BD584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<CsiIceIpcLogBufferList,5ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 6)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 5;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 5);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961BD7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ARI_CsiIpcGetLogBufferRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, a1, a2);
  v5 = HIDWORD(v11);
  if (!HIDWORD(v11))
  {
    if (((DWORD1(v7) << 15) | (v7 << 26)) == -1996423168)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 4uLL);
    }

    else
    {
      v5 = 4294967223;
    }
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return v5;
}

uint64_t ARI_CsiIpcGetLogBufferReq_ENC(int a1, int a2, int a3, uint64_t a4, void *a5, unsigned int *a6)
{
  v18 = a2;
  v19 = a1;
  v17 = a3;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v8;
  *v15 = v8;
  v12 = v8;
  v13 = v8;
  AriMsg::AriMsg(&v12, 0x88810000);
  v9 = AriMsg::packParam(&v12, 1, &v19, 4uLL);
  if (!v9)
  {
    v9 = AriMsg::packParam(&v12, 2, &v18, 4uLL);
    if (!v9)
    {
      v9 = AriMsg::packParam(&v12, 3, &v17, 4uLL);
      if (!v9)
      {
        if (a5)
        {
          EncodedBuf = AriMsg::getEncodedBuf(&v12, a6);
          *a5 = EncodedBuf;
          if (EncodedBuf)
          {
            v9 = 0;
          }

          else
          {
            v9 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v9 = 0xFFFFFFFFLL;
        }
      }
    }
  }

  v15[0] = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  AriMsg::FreeTlvList(v15[1]);
  return v9;
}

uint64_t ARI_CsiIpcGetLogBufferReq_BLK(int a1, int a2, int a3, int *a4, uint64_t a5)
{
  v16 = a2;
  v17 = a1;
  v15 = a3;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v7;
  *v13 = v7;
  v10 = v7;
  v11 = v7;
  AriMsg::AriMsg(&v10, 0x88810000);
  Ctx = AriMsg::packParam(&v10, 1, &v17, 4uLL);
  if (!Ctx)
  {
    Ctx = AriMsg::packParam(&v10, 2, &v16, 4uLL);
    if (!Ctx)
    {
      Ctx = AriMsg::packParam(&v10, 3, &v15, 4uLL);
      if (!Ctx)
      {
        Ctx = AriHost::Send(&v10, *a4, a5, 0, 20000);
        if (!Ctx)
        {
          Ctx = AriMsg::extractCtx(&v10, a4);
        }
      }
    }
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return Ctx;
}

uint64_t ARI_CsiIpcGetLogBufferListRsp_Extract(unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, a1, a2);
  v7 = HIDWORD(v13);
  if (!HIDWORD(v13))
  {
    if (((DWORD1(v9) << 15) | (v9 << 26)) == -1996455936)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0x78uLL);
      }
    }

    else
    {
      v7 = 4294967223;
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return v7;
}

uint64_t ARI_CsiIpcGetLogBufferListReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x88808000);
  if (a2)
  {
    EncodedBuf = AriMsg::getEncodedBuf(&v9, a3);
    *a2 = EncodedBuf;
    if (EncodedBuf)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return v7;
}

uint64_t ARI_CsiIpcGetLogBufferListReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x88808000);
  Ctx = AriHost::Send(&v7, *a1, a2, 0, 20000);
  if (!Ctx)
  {
    Ctx = AriMsg::extractCtx(&v7, a1);
  }

  v10[0] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AriMsg::FreeTlvList(v10[1]);
  return Ctx;
}

uint64_t std::vector<CsiIceIpcLogBufferList>::__init_with_size[abi:ne200100]<CsiIceIpcLogBufferList*,CsiIceIpcLogBufferList*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CsiIceIpcLogBufferList>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2961BDDE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::ARI_IBIMsAccCurrentFreqInfoReq_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613416960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613416960, 0);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::ARI_IBIMsAccCurrentFreqInfoReq_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::~ARI_IBIMsAccCurrentFreqInfoReq_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK *this)
{
  *this = &unk_2A1D3A0C8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::~ARI_IBIMsAccCurrentFreqInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::pack(AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621805568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621805568, 0);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK *this)
{
  *this = &unk_2A1D3A100;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408D6E4E1BLL);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C408D6E4E1BLL);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C403C0FF12CLL);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40670FB0B0);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B6FBB774);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C400BC65CE5);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4093615F26);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40340FE481);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::~ARI_IBIMsAccCurrentFreqInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK::pack(AriSdk::ARI_IBIMsAccCurrentFreqInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 5, v7, 0x34uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 6, v8, 0x1CuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 7, v9, 0xF4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 8, v10, 0x304uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 9, v11, 0x4B4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 10, v12, 0x34CuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 11, v13, 0x7CuLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 12, v14, 0x7CuLL, 0), !result))
                    {
                      result = 0;
                      *a2 = *(this + 6);
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

void AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630194176, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630194176, 0);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::~ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK *this)
{
  *this = &unk_2A1D3A138;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408D6E4E1BLL);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C408D6E4E1BLL);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C403C0FF12CLL);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40670FB0B0);
  }

  v6 = *(this + 13);
  *(this + 13) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40B6FBB774);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C400BC65CE5);
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4093615F26);
  }

  v9 = *(this + 10);
  *(this + 10) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40340FE481);
  }

  v10 = *(this + 9);
  *(this + 9) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 8);
  *(this + 8) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::~ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::pack(AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0x34uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 0x1CuLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 0xF4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x304uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 0x4B4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0x34CuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 0x7CuLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 11, v14, 0x7CuLL, 0), !result))
                    {
                      result = 0;
                      *a2 = *(this + 6);
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

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613646336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613646336, 0);
}

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK::~ARI_IBIMsNetGetEmergencyCellInfoReq_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK *this)
{
  *this = &unk_2A1D3A170;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK::~ARI_IBIMsNetGetEmergencyCellInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK::pack(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 622034944, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 622034944, 0);
}

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK::~ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK *this)
{
  *this = &unk_2A1D3A1A8;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK::~ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK::pack(AriSdk::ARI_IBIMsNetGetEmergencyCellInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetBBTurboModeReq_SDK::ARI_IBINetBBTurboModeReq_SDK(AriSdk::ARI_IBINetBBTurboModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613744640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613744640, 0);
}

void AriSdk::ARI_IBINetBBTurboModeReq_SDK::ARI_IBINetBBTurboModeReq_SDK(AriSdk::ARI_IBINetBBTurboModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetBBTurboModeReq_SDK::~ARI_IBINetBBTurboModeReq_SDK(AriSdk::ARI_IBINetBBTurboModeReq_SDK *this)
{
  *this = &unk_2A1D3A1E0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetBBTurboModeReq_SDK::~ARI_IBINetBBTurboModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetBBTurboModeReq_SDK::pack(AriSdk::ARI_IBINetBBTurboModeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetBBTurboModeRspCb_SDK::ARI_IBINetBBTurboModeRspCb_SDK(AriSdk::ARI_IBINetBBTurboModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 622133248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 622133248, 0);
}

void AriSdk::ARI_IBINetBBTurboModeRspCb_SDK::ARI_IBINetBBTurboModeRspCb_SDK(AriSdk::ARI_IBINetBBTurboModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetBBTurboModeRspCb_SDK::~ARI_IBINetBBTurboModeRspCb_SDK(AriSdk::ARI_IBINetBBTurboModeRspCb_SDK *this)
{
  *this = &unk_2A1D3A218;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetBBTurboModeRspCb_SDK::~ARI_IBINetBBTurboModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetBBTurboModeRspCb_SDK::pack(AriSdk::ARI_IBINetBBTurboModeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetCaConfigIndCb_SDK::ARI_IBINetCaConfigIndCb_SDK(AriSdk::ARI_IBINetCaConfigIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629440512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629440512, 0);
}

void AriSdk::ARI_IBINetCaConfigIndCb_SDK::ARI_IBINetCaConfigIndCb_SDK(AriSdk::ARI_IBINetCaConfigIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCaConfigIndCb_SDK::~ARI_IBINetCaConfigIndCb_SDK(AriSdk::ARI_IBINetCaConfigIndCb_SDK *this)
{
  *this = &unk_2A1D3A250;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCaConfigIndCb_SDK::~ARI_IBINetCaConfigIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCaConfigIndCb_SDK::pack(AriSdk::ARI_IBINetCaConfigIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 3, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 4, v10, v11 - v10, 0), !result))
        {
          v12 = *(this + 16);
          if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 5, v12, v13 - v12, 0), !result))
          {
            v14 = *(this + 19);
            if (!v14 || (result = AriMsg::pack(*(this + 6), 6, v14, 8uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetCellBBSignatureReq_SDK::ARI_IBINetCellBBSignatureReq_SDK(AriSdk::ARI_IBINetCellBBSignatureReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613679104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613679104, 0);
}

void AriSdk::ARI_IBINetCellBBSignatureReq_SDK::ARI_IBINetCellBBSignatureReq_SDK(AriSdk::ARI_IBINetCellBBSignatureReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellBBSignatureReq_SDK::~ARI_IBINetCellBBSignatureReq_SDK(AriSdk::ARI_IBINetCellBBSignatureReq_SDK *this)
{
  *this = &unk_2A1D3A288;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCellBBSignatureReq_SDK::~ARI_IBINetCellBBSignatureReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellBBSignatureReq_SDK::pack(AriSdk::ARI_IBINetCellBBSignatureReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK::ARI_IBINetCellBBSignatureRspCb_SDK(AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 622067712, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 622067712, 0);
}

void AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK::ARI_IBINetCellBBSignatureRspCb_SDK(AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK::~ARI_IBINetCellBBSignatureRspCb_SDK(AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK *this)
{
  *this = &unk_2A1D3A2C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK::~ARI_IBINetCellBBSignatureRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK::pack(AriSdk::ARI_IBINetCellBBSignatureRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetCellBBSignatureInd_SDK::ARI_IBINetCellBBSignatureInd_SDK(AriSdk::ARI_IBINetCellBBSignatureInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629669888, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629669888, 0);
}

void AriSdk::ARI_IBINetCellBBSignatureInd_SDK::ARI_IBINetCellBBSignatureInd_SDK(AriSdk::ARI_IBINetCellBBSignatureInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellBBSignatureInd_SDK::~ARI_IBINetCellBBSignatureInd_SDK(AriSdk::ARI_IBINetCellBBSignatureInd_SDK *this)
{
  *this = &unk_2A1D3A2F8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40FB23B837);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCellBBSignatureInd_SDK::~ARI_IBINetCellBBSignatureInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellBBSignatureInd_SDK::pack(AriSdk::ARI_IBINetCellBBSignatureInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x2CuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetCellInfoIndCb_SDK::ARI_IBINetCellInfoIndCb_SDK(AriSdk::ARI_IBINetCellInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629178368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629178368, 0);
}

void AriSdk::ARI_IBINetCellInfoIndCb_SDK::ARI_IBINetCellInfoIndCb_SDK(AriSdk::ARI_IBINetCellInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellInfoIndCb_SDK::~ARI_IBINetCellInfoIndCb_SDK(AriSdk::ARI_IBINetCellInfoIndCb_SDK *this)
{
  *this = &unk_2A1D3A330;
  v2 = *(this + 32);
  *(this + 32) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 30);
  *(this + 30) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4000313F17);
  }

  v5 = *(this + 29);
  *(this + 29) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 28);
  *(this + 28) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BD32EBF2);
  }

  v7 = *(this + 27);
  *(this + 27) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40B2B1FC38);
  }

  v8 = *(this + 26);
  *(this + 26) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
  }

  v9 = *(this + 25);
  *(this + 25) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 24);
  *(this + 24) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 23);
  *(this + 23) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40BDFB0063);
  }

  v12 = *(this + 22);
  *(this + 22) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C4052888210);
  }

  v13 = *(this + 21);
  *(this + 21) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 20);
  *(this + 20) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4052888210);
  }

  v15 = *(this + 19);
  *(this + 19) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4052888210);
  }

  v16 = *(this + 18);
  *(this + 18) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 17);
  *(this + 17) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 16);
  *(this + 16) = 0;
  if (v18)
  {
    MEMORY[0x29C257E70](v18, 0x1000C4052888210);
  }

  v19 = *(this + 15);
  *(this + 15) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 14);
  *(this + 14) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4052888210);
  }

  v21 = *(this + 13);
  *(this + 13) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4052888210);
  }

  v22 = *(this + 12);
  *(this + 12) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 11);
  *(this + 11) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C40BDFB0063);
  }

  v24 = *(this + 10);
  *(this + 10) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C4052888210);
  }

  v25 = *(this + 9);
  *(this + 9) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4000313F17);
  }

  v26 = *(this + 8);
  *(this + 8) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCellInfoIndCb_SDK::~ARI_IBINetCellInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellInfoIndCb_SDK::pack(AriSdk::ARI_IBINetCellInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 4uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (result = AriMsg::pack(*(this + 6), 11, v15, 4uLL, 0), !result))
                      {
                        v16 = *(this + 19);
                        if (!v16 || (result = AriMsg::pack(*(this + 6), 12, v16, 4uLL, 0), !result))
                        {
                          v17 = *(this + 20);
                          if (!v17 || (result = AriMsg::pack(*(this + 6), 13, v17, 4uLL, 0), !result))
                          {
                            v18 = *(this + 21);
                            if (!v18 || (result = AriMsg::pack(*(this + 6), 14, v18, 4uLL, 0), !result))
                            {
                              v19 = *(this + 22);
                              if (!v19 || (result = AriMsg::pack(*(this + 6), 15, v19, 4uLL, 0), !result))
                              {
                                v20 = *(this + 23);
                                if (!v20 || (result = AriMsg::pack(*(this + 6), 16, v20, 2uLL, 0), !result))
                                {
                                  v21 = *(this + 24);
                                  if (!v21 || (result = AriMsg::pack(*(this + 6), 17, v21, 4uLL, 0), !result))
                                  {
                                    v22 = *(this + 25);
                                    if (!v22 || (result = AriMsg::pack(*(this + 6), 18, v22, 4uLL, 0), !result))
                                    {
                                      v23 = *(this + 26);
                                      if (!v23 || (result = AriMsg::pack(*(this + 6), 19, v23, 4uLL, 0), !result))
                                      {
                                        v24 = *(this + 27);
                                        if (!v24 || (result = AriMsg::pack(*(this + 6), 20, v24, 0x10uLL, 0), !result))
                                        {
                                          v25 = *(this + 28);
                                          if (!v25 || (result = AriMsg::pack(*(this + 6), 21, v25, 0x18uLL, 0), !result))
                                          {
                                            v26 = *(this + 29);
                                            if (!v26 || (result = AriMsg::pack(*(this + 6), 22, v26, 4uLL, 0), !result))
                                            {
                                              v27 = *(this + 30);
                                              if (!v27 || (result = AriMsg::pack(*(this + 6), 23, v27, 8uLL, 0), !result))
                                              {
                                                v28 = *(this + 31);
                                                if (!v28 || (result = AriMsg::pack(*(this + 6), 24, v28, 4uLL, 0), !result))
                                                {
                                                  v29 = *(this + 32);
                                                  if (!v29 || (result = AriMsg::pack(*(this + 6), 25, v29, 4uLL, 0), !result))
                                                  {
                                                    result = 0;
                                                    *a2 = *(this + 6);
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

  return result;
}

void AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::ARI_IBINetCellLteAcBarringStatusIndCb_SDK(AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630358016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630358016, 0);
}

void AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::ARI_IBINetCellLteAcBarringStatusIndCb_SDK(AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::~ARI_IBINetCellLteAcBarringStatusIndCb_SDK(AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK *this)
{
  *this = &unk_2A1D3A368;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4000313F17);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4000313F17);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4000313F17);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  v10 = *(this + 8);
  *(this + 8) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::~ARI_IBINetCellLteAcBarringStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK::pack(AriSdk::ARI_IBINetCellLteAcBarringStatusIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 4uLL, 0), !result))
                  {
                    result = 0;
                    *a2 = *(this + 6);
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

void AriSdk::ARI_IBINetConnectionInfoIndCb_SDK::ARI_IBINetConnectionInfoIndCb_SDK(AriSdk::ARI_IBINetConnectionInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629211136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629211136, 0);
}

void AriSdk::ARI_IBINetConnectionInfoIndCb_SDK::ARI_IBINetConnectionInfoIndCb_SDK(AriSdk::ARI_IBINetConnectionInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetConnectionInfoIndCb_SDK::~ARI_IBINetConnectionInfoIndCb_SDK(AriSdk::ARI_IBINetConnectionInfoIndCb_SDK *this)
{
  *this = &unk_2A1D3A3A0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetConnectionInfoIndCb_SDK::~ARI_IBINetConnectionInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetConnectionInfoIndCb_SDK::pack(AriSdk::ARI_IBINetConnectionInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK::ARI_IBINetEmergencyApacsScanFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630521856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630521856, 0);
}

void AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK::ARI_IBINetEmergencyApacsScanFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK::~ARI_IBINetEmergencyApacsScanFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK *this)
{
  *this = &unk_2A1D3A3D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK::~ARI_IBINetEmergencyApacsScanFailIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK::pack(AriSdk::ARI_IBINetEmergencyApacsScanFailIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyCellEndReq_SDK::ARI_IBINetEmergencyCellEndReq_SDK(AriSdk::ARI_IBINetEmergencyCellEndReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613482496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613482496, 0);
}

void AriSdk::ARI_IBINetEmergencyCellEndReq_SDK::ARI_IBINetEmergencyCellEndReq_SDK(AriSdk::ARI_IBINetEmergencyCellEndReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyCellEndReq_SDK::~ARI_IBINetEmergencyCellEndReq_SDK(AriSdk::ARI_IBINetEmergencyCellEndReq_SDK *this)
{
  *this = &unk_2A1D3A410;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyCellEndReq_SDK::~ARI_IBINetEmergencyCellEndReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyCellEndReq_SDK::pack(AriSdk::ARI_IBINetEmergencyCellEndReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK::ARI_IBINetEmergencyCellEndRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621871104, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621871104, 0);
}

void AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK::ARI_IBINetEmergencyCellEndRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK::~ARI_IBINetEmergencyCellEndRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK *this)
{
  *this = &unk_2A1D3A448;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK::~ARI_IBINetEmergencyCellEndRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK::pack(AriSdk::ARI_IBINetEmergencyCellEndRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK::ARI_IBINetEmergencyCellSearchFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 630423552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 630423552, 0);
}

void AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK::ARI_IBINetEmergencyCellSearchFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK::~ARI_IBINetEmergencyCellSearchFailIndCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK *this)
{
  *this = &unk_2A1D3A480;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK::~ARI_IBINetEmergencyCellSearchFailIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK::pack(AriSdk::ARI_IBINetEmergencyCellSearchFailIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::ARI_IBINetEmergencyCellSearchReq_SDK(AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613580800, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613580800, 0);
}

void AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::ARI_IBINetEmergencyCellSearchReq_SDK(AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::~ARI_IBINetEmergencyCellSearchReq_SDK(AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK *this)
{
  *this = &unk_2A1D3A4B8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::~ARI_IBINetEmergencyCellSearchReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::pack(AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 3, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 4, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      if (v7)
      {
        v9 = v7 == v8;
      }

      else
      {
        v9 = 1;
      }

      if (v9 || (result = AriMsg::pack(*(this + 6), 5, v7, v8 - v7, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK::unpack(AriSdk::ARI_IBINetEmergencyCellSearchReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2961C4C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  MEMORY[0x29C257E50](v25, v24);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK::ARI_IBINetEmergencyCellSearchRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621969408, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621969408, 0);
}

void AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK::ARI_IBINetEmergencyCellSearchRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK::~ARI_IBINetEmergencyCellSearchRspCb_SDK(AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK *this)
{
  *this = &unk_2A1D3A4F0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK::~ARI_IBINetEmergencyCellSearchRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK::pack(AriSdk::ARI_IBINetEmergencyCellSearchRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::ARI_IBINetGetAcBarringInfoReq_SDK(AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 613548032, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 613548032, 0);
}

void AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::ARI_IBINetGetAcBarringInfoReq_SDK(AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::~ARI_IBINetGetAcBarringInfoReq_SDK(AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK *this)
{
  *this = &unk_2A1D3A528;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::~ARI_IBINetGetAcBarringInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK::pack(AriSdk::ARI_IBINetGetAcBarringInfoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::ARI_IBINetGetAcBarringInfoRspCb_SDK(AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 621936640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 621936640, 0);
}

void AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::ARI_IBINetGetAcBarringInfoRspCb_SDK(AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::~ARI_IBINetGetAcBarringInfoRspCb_SDK(AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK *this)
{
  *this = &unk_2A1D3A560;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C403E1C8BA9);
  }

  v6 = *(this + 9);
  *(this + 9) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4052888210);
  }

  v7 = *(this + 8);
  *(this + 8) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::~ARI_IBINetGetAcBarringInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK::pack(AriSdk::ARI_IBINetGetAcBarringInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 0xCuLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 4uLL, 0), !result))
            {
              result = 0;
              *a2 = *(this + 6);
            }
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetGetCellInfoIndCb_SDK::ARI_IBINetGetCellInfoIndCb_SDK(AriSdk::ARI_IBINetGetCellInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 629374976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 629374976, 0);
}

void AriSdk::ARI_IBINetGetCellInfoIndCb_SDK::ARI_IBINetGetCellInfoIndCb_SDK(AriSdk::ARI_IBINetGetCellInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetGetCellInfoIndCb_SDK::~ARI_IBINetGetCellInfoIndCb_SDK(AriSdk::ARI_IBINetGetCellInfoIndCb_SDK *this)
{
  *this = &unk_2A1D3A598;
  v2 = *(this + 105);
  if (v2)
  {
    *(this + 106) = v2;
    operator delete(v2);
  }

  v3 = *(this + 102);
  if (v3)
  {
    *(this + 103) = v3;
    operator delete(v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    *(this + 100) = v4;
    operator delete(v4);
  }

  v5 = *(this + 96);
  if (v5)
  {
    *(this + 97) = v5;
    operator delete(v5);
  }

  v6 = *(this + 93);
  if (v6)
  {
    *(this + 94) = v6;
    operator delete(v6);
  }

  v7 = *(this + 90);
  if (v7)
  {
    *(this + 91) = v7;
    operator delete(v7);
  }

  v8 = *(this + 87);
  if (v8)
  {
    *(this + 88) = v8;
    operator delete(v8);
  }

  v9 = *(this + 86);
  *(this + 86) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 83);
  if (v10)
  {
    *(this + 84) = v10;
    operator delete(v10);
  }

  v11 = *(this + 82);
  *(this + 82) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
  }

  v12 = *(this + 79);
  if (v12)
  {
    *(this + 80) = v12;
    operator delete(v12);
  }

  v13 = *(this + 76);
  if (v13)
  {
    *(this + 77) = v13;
    operator delete(v13);
  }

  v14 = *(this + 73);
  if (v14)
  {
    *(this + 74) = v14;
    operator delete(v14);
  }

  v15 = *(this + 70);
  if (v15)
  {
    *(this + 71) = v15;
    operator delete(v15);
  }

  v16 = *(this + 69);
  *(this + 69) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 68);
  *(this + 68) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4077774924);
  }

  v18 = *(this + 65);
  if (v18)
  {
    *(this + 66) = v18;
    operator delete(v18);
  }

  v19 = *(this + 64);
  *(this + 64) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4052888210);
  }

  v20 = *(this + 63);
  *(this + 63) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4077774924);
  }

  v21 = *(this + 60);
  if (v21)
  {
    *(this + 61) = v21;
    operator delete(v21);
  }

  v22 = *(this + 59);
  *(this + 59) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C4052888210);
  }

  v23 = *(this + 58);
  *(this + 58) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C4077774924);
  }

  v24 = *(this + 55);
  if (v24)
  {
    *(this + 56) = v24;
    operator delete(v24);
  }

  v25 = *(this + 54);
  *(this + 54) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 53);
  *(this + 53) = 0;
  if (v26)
  {
    MEMORY[0x29C257E70](v26, 0x1000C4077774924);
  }

  v27 = *(this + 50);
  if (v27)
  {
    *(this + 51) = v27;
    operator delete(v27);
  }

  v28 = *(this + 49);
  *(this + 49) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 48);
  *(this + 48) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4077774924);
  }

  v30 = *(this + 45);
  if (v30)
  {
    *(this + 46) = v30;
    operator delete(v30);
  }

  v31 = *(this + 44);
  *(this + 44) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  v32 = *(this + 43);
  *(this + 43) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4077774924);
  }

  v33 = *(this + 40);
  if (v33)
  {
    *(this + 41) = v33;
    operator delete(v33);
  }

  v34 = *(this + 39);
  *(this + 39) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C4052888210);
  }

  v35 = *(this + 38);
  *(this + 38) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C4077774924);
  }

  v36 = *(this + 35);
  if (v36)
  {
    *(this + 36) = v36;
    operator delete(v36);
  }

  v37 = *(this + 34);
  *(this + 34) = 0;
  if (v37)
  {
    MEMORY[0x29C257E70](v37, 0x1000C4052888210);
  }

  v38 = *(this + 33);
  *(this + 33) = 0;
  if (v38)
  {
    MEMORY[0x29C257E70](v38, 0x1000C4077774924);
  }

  v39 = *(this + 30);
  if (v39)
  {
    *(this + 31) = v39;
    operator delete(v39);
  }

  v40 = *(this + 29);
  *(this + 29) = 0;
  if (v40)
  {
    MEMORY[0x29C257E70](v40, 0x1000C4052888210);
  }

  v41 = *(this + 28);
  *(this + 28) = 0;
  if (v41)
  {
    MEMORY[0x29C257E70](v41, 0x1000C4077774924);
  }

  v42 = *(this + 25);
  if (v42)
  {
    *(this + 26) = v42;
    operator delete(v42);
  }

  v43 = *(this + 24);
  *(this + 24) = 0;
  if (v43)
  {
    MEMORY[0x29C257E70](v43, 0x1000C4052888210);
  }

  v44 = *(this + 23);
  *(this + 23) = 0;
  if (v44)
  {
    MEMORY[0x29C257E70](v44, 0x1000C4077774924);
  }

  v45 = *(this + 20);
  if (v45)
  {
    *(this + 21) = v45;
    operator delete(v45);
  }

  v46 = *(this + 19);
  *(this + 19) = 0;
  if (v46)
  {
    MEMORY[0x29C257E70](v46, 0x1000C4052888210);
  }

  v47 = *(this + 18);
  *(this + 18) = 0;
  if (v47)
  {
    MEMORY[0x29C257E70](v47, 0x1000C4077774924);
  }

  v48 = *(this + 15);
  if (v48)
  {
    *(this + 16) = v48;
    operator delete(v48);
  }

  v49 = *(this + 14);
  *(this + 14) = 0;
  if (v49)
  {
    MEMORY[0x29C257E70](v49, 0x1000C4052888210);
  }

  v50 = *(this + 13);
  *(this + 13) = 0;
  if (v50)
  {
    MEMORY[0x29C257E70](v50, 0x1000C4077774924);
  }

  v51 = *(this + 12);
  *(this + 12) = 0;
  if (v51)
  {
    MEMORY[0x29C257E70](v51, 0x1000C4052888210);
  }

  v52 = *(this + 11);
  *(this + 11) = 0;
  if (v52)
  {
    MEMORY[0x29C257E70](v52, 0x1000C4077774924);
  }

  v53 = *(this + 10);
  *(this + 10) = 0;
  if (v53)
  {
    MEMORY[0x29C257E70](v53, 0x1000C4077774924);
  }

  v54 = *(this + 9);
  *(this + 9) = 0;
  if (v54)
  {
    MEMORY[0x29C257E70](v54, 0x1000C4077774924);
  }

  v55 = *(this + 8);
  *(this + 8) = 0;
  if (v55)
  {
    MEMORY[0x29C257E70](v55, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetGetCellInfoIndCb_SDK::~ARI_IBINetGetCellInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetGetCellInfoIndCb_SDK::pack(AriSdk::ARI_IBINetGetCellInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 4uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 1uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (v17 = *(this + 21), v16 == v17) || (result = AriMsg::pack(*(this + 6), 11, v16, v17 - v16, 0), !result))
                      {
                        v18 = *(this + 23);
                        if (!v18 || (result = AriMsg::pack(*(this + 6), 12, v18, 1uLL, 0), !result))
                        {
                          v19 = *(this + 24);
                          if (!v19 || (result = AriMsg::pack(*(this + 6), 13, v19, 4uLL, 0), !result))
                          {
                            v20 = *(this + 25);
                            if (!v20 || (v21 = *(this + 26), v20 == v21) || (result = AriMsg::pack(*(this + 6), 14, v20, v21 - v20, 0), !result))
                            {
                              v22 = *(this + 28);
                              if (!v22 || (result = AriMsg::pack(*(this + 6), 15, v22, 1uLL, 0), !result))
                              {
                                v23 = *(this + 29);
                                if (!v23 || (result = AriMsg::pack(*(this + 6), 16, v23, 4uLL, 0), !result))
                                {
                                  v24 = *(this + 30);
                                  if (!v24 || (v25 = *(this + 31), v24 == v25) || (result = AriMsg::pack(*(this + 6), 17, v24, v25 - v24, 0), !result))
                                  {
                                    v26 = *(this + 33);
                                    if (!v26 || (result = AriMsg::pack(*(this + 6), 18, v26, 1uLL, 0), !result))
                                    {
                                      v27 = *(this + 34);
                                      if (!v27 || (result = AriMsg::pack(*(this + 6), 19, v27, 4uLL, 0), !result))
                                      {
                                        v28 = *(this + 35);
                                        if (!v28 || (v29 = *(this + 36), v28 == v29) || (result = AriMsg::pack(*(this + 6), 20, v28, v29 - v28, 0), !result))
                                        {
                                          v30 = *(this + 38);
                                          if (!v30 || (result = AriMsg::pack(*(this + 6), 21, v30, 1uLL, 0), !result))
                                          {
                                            v31 = *(this + 39);
                                            if (!v31 || (result = AriMsg::pack(*(this + 6), 22, v31, 4uLL, 0), !result))
                                            {
                                              v32 = *(this + 40);
                                              if (!v32 || (v33 = *(this + 41), v32 == v33) || (result = AriMsg::pack(*(this + 6), 23, v32, v33 - v32, 0), !result))
                                              {
                                                v34 = *(this + 43);
                                                if (!v34 || (result = AriMsg::pack(*(this + 6), 24, v34, 1uLL, 0), !result))
                                                {
                                                  v35 = *(this + 44);
                                                  if (!v35 || (result = AriMsg::pack(*(this + 6), 25, v35, 4uLL, 0), !result))
                                                  {
                                                    v36 = *(this + 45);
                                                    if (!v36 || (v37 = *(this + 46), v36 == v37) || (result = AriMsg::pack(*(this + 6), 26, v36, v37 - v36, 0), !result))
                                                    {
                                                      v38 = *(this + 48);
                                                      if (!v38 || (result = AriMsg::pack(*(this + 6), 27, v38, 1uLL, 0), !result))
                                                      {
                                                        v39 = *(this + 49);
                                                        if (!v39 || (result = AriMsg::pack(*(this + 6), 28, v39, 4uLL, 0), !result))
                                                        {
                                                          v40 = *(this + 50);
                                                          if (!v40 || (v41 = *(this + 51), v40 == v41) || (result = AriMsg::pack(*(this + 6), 29, v40, v41 - v40, 0), !result))
                                                          {
                                                            v42 = *(this + 53);
                                                            if (!v42 || (result = AriMsg::pack(*(this + 6), 30, v42, 1uLL, 0), !result))
                                                            {
                                                              v43 = *(this + 54);
                                                              if (!v43 || (result = AriMsg::pack(*(this + 6), 31, v43, 4uLL, 0), !result))
                                                              {
                                                                v44 = *(this + 55);
                                                                if (!v44 || (v45 = *(this + 56), v44 == v45) || (result = AriMsg::pack(*(this + 6), 32, v44, v45 - v44, 0), !result))
                                                                {
                                                                  v46 = *(this + 58);
                                                                  if (!v46 || (result = AriMsg::pack(*(this + 6), 33, v46, 1uLL, 0), !result))
                                                                  {
                                                                    v47 = *(this + 59);
                                                                    if (!v47 || (result = AriMsg::pack(*(this + 6), 34, v47, 4uLL, 0), !result))
                                                                    {
                                                                      v48 = *(this + 60);
                                                                      if (!v48 || (v49 = *(this + 61), v48 == v49) || (result = AriMsg::pack(*(this + 6), 35, v48, v49 - v48, 0), !result))
                                                                      {
                                                                        v50 = *(this + 63);
                                                                        if (!v50 || (result = AriMsg::pack(*(this + 6), 36, v50, 1uLL, 0), !result))
                                                                        {
                                                                          v51 = *(this + 64);
                                                                          if (!v51 || (result = AriMsg::pack(*(this + 6), 37, v51, 4uLL, 0), !result))
                                                                          {
                                                                            v52 = *(this + 65);
                                                                            if (!v52 || (v53 = *(this + 66), v52 == v53) || (result = AriMsg::pack(*(this + 6), 38, v52, v53 - v52, 0), !result))
                                                                            {
                                                                              v54 = *(this + 68);
                                                                              if (!v54 || (result = AriMsg::pack(*(this + 6), 39, v54, 1uLL, 0), !result))
                                                                              {
                                                                                v55 = *(this + 69);
                                                                                if (!v55 || (result = AriMsg::pack(*(this + 6), 40, v55, 4uLL, 0), !result))
                                                                                {
                                                                                  v56 = *(this + 70);
                                                                                  if (!v56 || (v57 = *(this + 71), v56 == v57) || (result = AriMsg::pack(*(this + 6), 41, v56, v57 - v56, 0), !result))
                                                                                  {
                                                                                    v58 = *(this + 73);
                                                                                    if (!v58 || (v59 = *(this + 74), v58 == v59) || (result = AriMsg::pack(*(this + 6), 42, v58, v59 - v58, 0), !result))
                                                                                    {
                                                                                      v60 = *(this + 76);
                                                                                      if (!v60 || (v61 = *(this + 77), v60 == v61) || (result = AriMsg::pack(*(this + 6), 43, v60, v61 - v60, 0), !result))
                                                                                      {
                                                                                        v62 = *(this + 79);
                                                                                        if (!v62 || (v63 = *(this + 80), v62 == v63) || (result = AriMsg::pack(*(this + 6), 44, v62, v63 - v62, 0), !result))
                                                                                        {
                                                                                          v64 = *(this + 82);
                                                                                          if (!v64 || (result = AriMsg::pack(*(this + 6), 45, v64, 4uLL, 0), !result))
                                                                                          {
                                                                                            v65 = *(this + 83);
                                                                                            if (!v65 || (v66 = *(this + 84), v65 == v66) || (result = AriMsg::pack(*(this + 6), 46, v65, v66 - v65, 0), !result))
                                                                                            {
                                                                                              v67 = *(this + 86);
                                                                                              if (!v67 || (result = AriMsg::pack(*(this + 6), 47, v67, 4uLL, 0), !result))
                                                                                              {
                                                                                                v68 = *(this + 87);
                                                                                                if (!v68 || (v69 = *(this + 88), v68 == v69) || (result = AriMsg::pack(*(this + 6), 48, v68, v69 - v68, 0), !result))
                                                                                                {
                                                                                                  v70 = *(this + 90);
                                                                                                  if (!v70 || (v71 = *(this + 91), v70 == v71) || (result = AriMsg::pack(*(this + 6), 49, v70, v71 - v70, 0), !result))
                                                                                                  {
                                                                                                    v72 = *(this + 93);
                                                                                                    if (!v72 || (v73 = *(this + 94), v72 == v73) || (result = AriMsg::pack(*(this + 6), 50, v72, v73 - v72, 0), !result))
                                                                                                    {
                                                                                                      v74 = *(this + 96);
                                                                                                      if (!v74 || (v75 = *(this + 97), v74 == v75) || (result = AriMsg::pack(*(this + 6), 51, v74, v75 - v74, 0), !result))
                                                                                                      {
                                                                                                        v76 = *(this + 99);
                                                                                                        if (!v76 || (v77 = *(this + 100), v76 == v77) || (result = AriMsg::pack(*(this + 6), 52, v76, v77 - v76, 0), !result))
                                                                                                        {
                                                                                                          v78 = *(this + 102);
                                                                                                          if (!v78 || (v79 = *(this + 103), v78 == v79) || (result = AriMsg::pack(*(this + 6), 53, v78, v79 - v78, 0), !result))
                                                                                                          {
                                                                                                            v80 = *(this + 105);
                                                                                                            if (!v80 || (v81 = *(this + 106), v80 == v81) || (result = AriMsg::pack(*(this + 6), 54, v80, v81 - v80, 0), !result))
                                                                                                            {
                                                                                                              result = 0;
                                                                                                              *a2 = *(this + 6);
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

  return result;
}

void sub_2961C854C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v10, v11);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBIUmtsCellInfoT,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2)) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 1) - *a2) >> 2), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C8AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBIGsmCellInfoT,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3) < 2)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3);
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3), 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C8D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteCellInfoT,1ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x21uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 5;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 1;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 5, 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C8F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBIUmtsNeighborCellInfoT,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x101uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C9164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBIGsmNeighborCellInfoT,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x81uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 2;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 2, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C9388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBILteNeighborCellInfoT,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x101uLL)
  {
    v8 = *a1;
    if (*a1)
    {
      *(a1 + 1) = v8;
      operator delete(v8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      v4 = *a2;
    }

    *a1 = v4;
    *(a1 + 2) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
  }

  else if ((DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", v13);
      v11 = v14 >= 0 ? v13 : v13[0];
      v12 = (*(a2 + 1) - *a2) >> 3;
      *__p = 136316418;
      *&__p[4] = "ari";
      v16 = 2080;
      v17 = v11;
      v18 = 1024;
      v19 = 360;
      v20 = 2048;
      v21 = a1;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = 32;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/common/inc/ari_sdk_msg.h", "operator=", __p);
    if (v18 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 3, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961C95AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}