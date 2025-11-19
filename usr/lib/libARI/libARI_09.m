uint64_t AriSdk::ARI_IBIVinylInitPsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylInitPsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_296158E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInstallFwReq_SDK::ARI_IBIVinylInstallFwReq_SDK(AriSdk::ARI_IBIVinylInstallFwReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930676736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930676736, 0);
}

void AriSdk::ARI_IBIVinylInstallFwReq_SDK::ARI_IBIVinylInstallFwReq_SDK(AriSdk::ARI_IBIVinylInstallFwReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInstallFwReq_SDK::~ARI_IBIVinylInstallFwReq_SDK(AriSdk::ARI_IBIVinylInstallFwReq_SDK *this)
{
  *this = &unk_2A1D320B0;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 10);
  *(this + 10) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylInstallFwReq_SDK::~ARI_IBIVinylInstallFwReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInstallFwReq_SDK::pack(AriSdk::ARI_IBIVinylInstallFwReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 7, v10, v11 - v10, 0), !result))
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

void sub_2961594F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,3930ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0xF5B)
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
      v23 = 3930;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 3930);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29615973C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(AriSdk::ARI_IBIVinylInstallFwRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922288128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922288128, 0);
}

void AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::ARI_IBIVinylInstallFwRspCb_SDK(AriSdk::ARI_IBIVinylInstallFwRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::~ARI_IBIVinylInstallFwRspCb_SDK(AriSdk::ARI_IBIVinylInstallFwRspCb_SDK *this)
{
  *this = &unk_2A1D320E8;
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
  AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::~ARI_IBIVinylInstallFwRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInstallFwRspCb_SDK::pack(AriSdk::ARI_IBIVinylInstallFwRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylInstallVadReq_SDK::ARI_IBIVinylInstallVadReq_SDK(AriSdk::ARI_IBIVinylInstallVadReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930709504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930709504, 0);
}

void AriSdk::ARI_IBIVinylInstallVadReq_SDK::ARI_IBIVinylInstallVadReq_SDK(AriSdk::ARI_IBIVinylInstallVadReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInstallVadReq_SDK::~ARI_IBIVinylInstallVadReq_SDK(AriSdk::ARI_IBIVinylInstallVadReq_SDK *this)
{
  *this = &unk_2A1D32120;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylInstallVadReq_SDK::~ARI_IBIVinylInstallVadReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInstallVadReq_SDK::pack(AriSdk::ARI_IBIVinylInstallVadReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_29615A198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(AriSdk::ARI_IBIVinylInstallVadRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922320896, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922320896, 0);
}

void AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::ARI_IBIVinylInstallVadRspCb_SDK(AriSdk::ARI_IBIVinylInstallVadRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::~ARI_IBIVinylInstallVadRspCb_SDK(AriSdk::ARI_IBIVinylInstallVadRspCb_SDK *this)
{
  *this = &unk_2A1D32158;
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
  AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::~ARI_IBIVinylInstallVadRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylInstallVadRspCb_SDK::pack(AriSdk::ARI_IBIVinylInstallVadRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylLPASigningReq_SDK::ARI_IBIVinylLPASigningReq_SDK(AriSdk::ARI_IBIVinylLPASigningReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930611200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930611200, 0);
}

void AriSdk::ARI_IBIVinylLPASigningReq_SDK::ARI_IBIVinylLPASigningReq_SDK(AriSdk::ARI_IBIVinylLPASigningReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylLPASigningReq_SDK::~ARI_IBIVinylLPASigningReq_SDK(AriSdk::ARI_IBIVinylLPASigningReq_SDK *this)
{
  *this = &unk_2A1D32190;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylLPASigningReq_SDK::~ARI_IBIVinylLPASigningReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylLPASigningReq_SDK::pack(AriSdk::ARI_IBIVinylLPASigningReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_29615AC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylLPASigningRspCb_SDK::ARI_IBIVinylLPASigningRspCb_SDK(AriSdk::ARI_IBIVinylLPASigningRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922222592, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922222592, 0);
}

void AriSdk::ARI_IBIVinylLPASigningRspCb_SDK::ARI_IBIVinylLPASigningRspCb_SDK(AriSdk::ARI_IBIVinylLPASigningRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylLPASigningRspCb_SDK::~ARI_IBIVinylLPASigningRspCb_SDK(AriSdk::ARI_IBIVinylLPASigningRspCb_SDK *this)
{
  *this = &unk_2A1D321C8;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylLPASigningRspCb_SDK::~ARI_IBIVinylLPASigningRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylLPASigningRspCb_SDK::pack(AriSdk::ARI_IBIVinylLPASigningRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_29615B2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(AriSdk::ARI_IBIVinylPairingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930381824, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930381824, 0);
}

void AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(AriSdk::ARI_IBIVinylPairingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPairingReq_SDK::~ARI_IBIVinylPairingReq_SDK(AriSdk::ARI_IBIVinylPairingReq_SDK *this)
{
  *this = &unk_2A1D32200;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylPairingReq_SDK::~ARI_IBIVinylPairingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPairingReq_SDK::pack(AriSdk::ARI_IBIVinylPairingReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
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

void sub_29615BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(AriSdk::ARI_IBIVinylPairingRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -921993216, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -921993216, 0);
}

void AriSdk::ARI_IBIVinylPairingRspCb_SDK::ARI_IBIVinylPairingRspCb_SDK(AriSdk::ARI_IBIVinylPairingRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPairingRspCb_SDK::~ARI_IBIVinylPairingRspCb_SDK(AriSdk::ARI_IBIVinylPairingRspCb_SDK *this)
{
  *this = &unk_2A1D32238;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylPairingRspCb_SDK::~ARI_IBIVinylPairingRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPairingRspCb_SDK::pack(AriSdk::ARI_IBIVinylPairingRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 9, v12, v13 - v12, 0), !result))
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

void sub_29615C258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylPairingIndCb_SDK::ARI_IBIVinylPairingIndCb_SDK(AriSdk::ARI_IBIVinylPairingIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914096128, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914096128, 0);
}

void AriSdk::ARI_IBIVinylPairingIndCb_SDK::ARI_IBIVinylPairingIndCb_SDK(AriSdk::ARI_IBIVinylPairingIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPairingIndCb_SDK::~ARI_IBIVinylPairingIndCb_SDK(AriSdk::ARI_IBIVinylPairingIndCb_SDK *this)
{
  *this = &unk_2A1D32270;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylPairingIndCb_SDK::~ARI_IBIVinylPairingIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPairingIndCb_SDK::pack(AriSdk::ARI_IBIVinylPairingIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
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

void sub_29615CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::ARI_IBIVinylPartialActiveMetaDataReq_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930283520, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930283520, 0);
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::ARI_IBIVinylPartialActiveMetaDataReq_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::~ARI_IBIVinylPartialActiveMetaDataReq_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK *this)
{
  *this = &unk_2A1D322A8;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::~ARI_IBIVinylPartialActiveMetaDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::pack(AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || (result = AriMsg::pack(*(this + 6), 2, v4, v5 - v4, 0), !result))
  {
    v8 = *(this + 11);
    if (!v8 || (result = AriMsg::pack(*(this + 6), 3, v8, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK::unpack(AriSdk::ARI_IBIVinylPartialActiveMetaDataReq_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -921894912, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -921894912, 0);
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::~ARI_IBIVinylPartialActiveMetaDataRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK *this)
{
  *this = &unk_2A1D322E0;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::~ARI_IBIVinylPartialActiveMetaDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::pack(AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      v10 = *(this + 13);
      if (v9)
      {
        v11 = v9 == v10;
      }

      else
      {
        v11 = 1;
      }

      if (v11 || (result = AriMsg::pack(*(this + 6), 4, v9, v10 - v9, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK::unpack(AriSdk::ARI_IBIVinylPartialActiveMetaDataRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29615D5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK::ARI_IBIVinylPartialActiveProfileOpReq_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930316288, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930316288, 0);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK::ARI_IBIVinylPartialActiveProfileOpReq_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK::~ARI_IBIVinylPartialActiveProfileOpReq_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK *this)
{
  *this = &unk_2A1D32318;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4053E81896);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C408EEE02DCLL);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
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
    MEMORY[0x29C257E70](v9, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK::~ARI_IBIVinylPartialActiveProfileOpReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK::pack(AriSdk::ARI_IBIVinylPartialActiveProfileOpReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 1uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 9uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0x28uLL, 0), !result))
              {
                v13 = *(this + 17);
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

  return result;
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -921927680, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -921927680, 0);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK::~ARI_IBIVinylPartialActiveProfileOpRspCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK *this)
{
  *this = &unk_2A1D32350;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40424B5D19);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40F7E4D635);
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
  AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK::~ARI_IBIVinylPartialActiveProfileOpRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK::pack(AriSdk::ARI_IBIVinylPartialActiveProfileOpRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 1uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 0xE06uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 0x54uLL, 0), !result))
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

void AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914030592, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914030592, 0);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::~ARI_IBIVinylPartialActiveProfileOpIndCb_SDK(AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK *this)
{
  *this = &unk_2A1D32388;
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

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::~ARI_IBIVinylPartialActiveProfileOpIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::pack(AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || (result = AriMsg::pack(*(this + 6), 1, v4, v5 - v4, 0), !result))
  {
    v8 = *(this + 11);
    if (!v8 || (result = AriMsg::pack(*(this + 6), 2, v8, 4uLL, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK::unpack(AriSdk::ARI_IBIVinylPartialActiveProfileOpIndCb_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

void AriSdk::ARI_IBIVinylSecureAkaReq_SDK::ARI_IBIVinylSecureAkaReq_SDK(AriSdk::ARI_IBIVinylSecureAkaReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930545664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930545664, 0);
}

void AriSdk::ARI_IBIVinylSecureAkaReq_SDK::ARI_IBIVinylSecureAkaReq_SDK(AriSdk::ARI_IBIVinylSecureAkaReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSecureAkaReq_SDK::~ARI_IBIVinylSecureAkaReq_SDK(AriSdk::ARI_IBIVinylSecureAkaReq_SDK *this)
{
  *this = &unk_2A1D323C0;
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 12);
  if (v4)
  {
    *(this + 13) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylSecureAkaReq_SDK::~ARI_IBIVinylSecureAkaReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSecureAkaReq_SDK::pack(AriSdk::ARI_IBIVinylSecureAkaReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (v13 = *(this + 17), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
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

void sub_29615F3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,30ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x1F)
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
      v23 = 30;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 30);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29615F610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK::ARI_IBIVinylSecureAkaRspCb_SDK(AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922157056, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922157056, 0);
}

void AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK::ARI_IBIVinylSecureAkaRspCb_SDK(AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK::~ARI_IBIVinylSecureAkaRspCb_SDK(AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK *this)
{
  *this = &unk_2A1D323F8;
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
  AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK::~ARI_IBIVinylSecureAkaRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK::pack(AriSdk::ARI_IBIVinylSecureAkaRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK::ARI_IBIVinylSecureAkaInbCb_SDK(AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914227200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914227200, 0);
}

void AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK::ARI_IBIVinylSecureAkaInbCb_SDK(AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK::~ARI_IBIVinylSecureAkaInbCb_SDK(AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK *this)
{
  *this = &unk_2A1D32430;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK::~ARI_IBIVinylSecureAkaInbCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK::pack(AriSdk::ARI_IBIVinylSecureAkaInbCb_SDK *this, AriMsg **a2)
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
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (v12 = *(this + 15), v11 == v12) || (result = AriMsg::pack(*(this + 6), 7, v11, v12 - v11, 0), !result))
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

void sub_2961600A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylSimCardResetReq_SDK::ARI_IBIVinylSimCardResetReq_SDK(AriSdk::ARI_IBIVinylSimCardResetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930250752, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930250752, 0);
}

void AriSdk::ARI_IBIVinylSimCardResetReq_SDK::ARI_IBIVinylSimCardResetReq_SDK(AriSdk::ARI_IBIVinylSimCardResetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSimCardResetReq_SDK::~ARI_IBIVinylSimCardResetReq_SDK(AriSdk::ARI_IBIVinylSimCardResetReq_SDK *this)
{
  *this = &unk_2A1D32468;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylSimCardResetReq_SDK::~ARI_IBIVinylSimCardResetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSimCardResetReq_SDK::pack(AriSdk::ARI_IBIVinylSimCardResetReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -921862144, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -921862144, 0);
}

void AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::ARI_IBIVinylSimCardResetRspCb_SDK(AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::~ARI_IBIVinylSimCardResetRspCb_SDK(AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK *this)
{
  *this = &unk_2A1D324A0;
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
  AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::~ARI_IBIVinylSimCardResetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK::pack(AriSdk::ARI_IBIVinylSimCardResetRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylStatusReq_SDK::ARI_IBIVinylStatusReq_SDK(AriSdk::ARI_IBIVinylStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930643968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930643968, 0);
}

void AriSdk::ARI_IBIVinylStatusReq_SDK::ARI_IBIVinylStatusReq_SDK(AriSdk::ARI_IBIVinylStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylStatusReq_SDK::~ARI_IBIVinylStatusReq_SDK(AriSdk::ARI_IBIVinylStatusReq_SDK *this)
{
  *this = &unk_2A1D324D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylStatusReq_SDK::~ARI_IBIVinylStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylStatusReq_SDK::pack(AriSdk::ARI_IBIVinylStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylStatusRspCb_SDK::ARI_IBIVinylStatusRspCb_SDK(AriSdk::ARI_IBIVinylStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922255360, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922255360, 0);
}

void AriSdk::ARI_IBIVinylStatusRspCb_SDK::ARI_IBIVinylStatusRspCb_SDK(AriSdk::ARI_IBIVinylStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylStatusRspCb_SDK::~ARI_IBIVinylStatusRspCb_SDK(AriSdk::ARI_IBIVinylStatusRspCb_SDK *this)
{
  *this = &unk_2A1D32510;
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
  AriSdk::ARI_IBIVinylStatusRspCb_SDK::~ARI_IBIVinylStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylStatusRspCb_SDK::pack(AriSdk::ARI_IBIVinylStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylStatusIndCb_SDK::ARI_IBIVinylStatusIndCb_SDK(AriSdk::ARI_IBIVinylStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914325504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914325504, 0);
}

void AriSdk::ARI_IBIVinylStatusIndCb_SDK::ARI_IBIVinylStatusIndCb_SDK(AriSdk::ARI_IBIVinylStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylStatusIndCb_SDK::~ARI_IBIVinylStatusIndCb_SDK(AriSdk::ARI_IBIVinylStatusIndCb_SDK *this)
{
  *this = &unk_2A1D32548;
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
  AriSdk::ARI_IBIVinylStatusIndCb_SDK::~ARI_IBIVinylStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylStatusIndCb_SDK::pack(AriSdk::ARI_IBIVinylStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(AriSdk::ARI_IBIVinylSwitchModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930742272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930742272, 0);
}

void AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(AriSdk::ARI_IBIVinylSwitchModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSwitchModeReq_SDK::~ARI_IBIVinylSwitchModeReq_SDK(AriSdk::ARI_IBIVinylSwitchModeReq_SDK *this)
{
  *this = &unk_2A1D32580;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::~ARI_IBIVinylSwitchModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSwitchModeReq_SDK::pack(AriSdk::ARI_IBIVinylSwitchModeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 1uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922353664, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922353664, 0);
}

void AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::ARI_IBIVinylSwitchModeRspCb_SDK(AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::~ARI_IBIVinylSwitchModeRspCb_SDK(AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK *this)
{
  *this = &unk_2A1D325B8;
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
  AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::~ARI_IBIVinylSwitchModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK::pack(AriSdk::ARI_IBIVinylSwitchModeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(AriSdk::ARI_IBIVinylTapeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -931004416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -931004416, 0);
}

void AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(AriSdk::ARI_IBIVinylTapeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylTapeReq_SDK::~ARI_IBIVinylTapeReq_SDK(AriSdk::ARI_IBIVinylTapeReq_SDK *this)
{
  *this = &unk_2A1D325F0;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylTapeReq_SDK::~ARI_IBIVinylTapeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylTapeReq_SDK::pack(AriSdk::ARI_IBIVinylTapeReq_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
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

void sub_296162050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(AriSdk::ARI_IBIVinylTapeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922615808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922615808, 0);
}

void AriSdk::ARI_IBIVinylTapeRspCb_SDK::ARI_IBIVinylTapeRspCb_SDK(AriSdk::ARI_IBIVinylTapeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylTapeRspCb_SDK::~ARI_IBIVinylTapeRspCb_SDK(AriSdk::ARI_IBIVinylTapeRspCb_SDK *this)
{
  *this = &unk_2A1D32628;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylTapeRspCb_SDK::~ARI_IBIVinylTapeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylTapeRspCb_SDK::pack(AriSdk::ARI_IBIVinylTapeRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 9, v12, v13 - v12, 0), !result))
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

void sub_296162874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylTapeCapsReq_SDK::ARI_IBIVinylTapeCapsReq_SDK(AriSdk::ARI_IBIVinylTapeCapsReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930775040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930775040, 0);
}

void AriSdk::ARI_IBIVinylTapeCapsReq_SDK::ARI_IBIVinylTapeCapsReq_SDK(AriSdk::ARI_IBIVinylTapeCapsReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylTapeCapsReq_SDK::~ARI_IBIVinylTapeCapsReq_SDK(AriSdk::ARI_IBIVinylTapeCapsReq_SDK *this)
{
  *this = &unk_2A1D32660;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIVinylTapeCapsReq_SDK::~ARI_IBIVinylTapeCapsReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylTapeCapsReq_SDK::pack(AriSdk::ARI_IBIVinylTapeCapsReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK::ARI_IBIVinylTapeCapsRspCb_SDK(AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922386432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922386432, 0);
}

void AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK::ARI_IBIVinylTapeCapsRspCb_SDK(AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK::~ARI_IBIVinylTapeCapsRspCb_SDK(AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK *this)
{
  *this = &unk_2A1D32698;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 13);
  *(this + 13) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 10);
  *(this + 10) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C4077774924);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
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
  AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK::~ARI_IBIVinylTapeCapsRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK::pack(AriSdk::ARI_IBIVinylTapeCapsRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 1uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 1uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 1uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 10, v13, 1uLL, 0), !result))
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

void AriSdk::ARI_IBIVinylTapeIndCb_SDK::ARI_IBIVinylTapeIndCb_SDK(AriSdk::ARI_IBIVinylTapeIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -914292736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -914292736, 0);
}

void AriSdk::ARI_IBIVinylTapeIndCb_SDK::ARI_IBIVinylTapeIndCb_SDK(AriSdk::ARI_IBIVinylTapeIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylTapeIndCb_SDK::~ARI_IBIVinylTapeIndCb_SDK(AriSdk::ARI_IBIVinylTapeIndCb_SDK *this)
{
  *this = &unk_2A1D326D0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylTapeIndCb_SDK::~ARI_IBIVinylTapeIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylTapeIndCb_SDK::pack(AriSdk::ARI_IBIVinylTapeIndCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 2uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 8, v12, v13 - v12, 0), !result))
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

void sub_296163BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(AriSdk::ARI_IBIVinylValidatePsoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -930873344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -930873344, 0);
}

void AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(AriSdk::ARI_IBIVinylValidatePsoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylValidatePsoReq_SDK::~ARI_IBIVinylValidatePsoReq_SDK(AriSdk::ARI_IBIVinylValidatePsoReq_SDK *this)
{
  *this = &unk_2A1D32708;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylValidatePsoReq_SDK::~ARI_IBIVinylValidatePsoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylValidatePsoReq_SDK::pack(AriSdk::ARI_IBIVinylValidatePsoReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_296164218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -922484736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -922484736, 0);
}

void AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::ARI_IBIVinylValidatePsoRspCb_SDK(AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::~ARI_IBIVinylValidatePsoRspCb_SDK(AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK *this)
{
  *this = &unk_2A1D32740;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::~ARI_IBIVinylValidatePsoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK::pack(AriSdk::ARI_IBIVinylValidatePsoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 2uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_296164868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

void std::vector<IBISimInfoStruct>::__init_with_size[abi:ne200100]<IBISimInfoStruct*,IBISimInfoStruct*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_296164994(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIVinylProfilesInfoStruct>::__init_with_size[abi:ne200100]<IBIVinylProfilesInfoStruct*,IBIVinylProfilesInfoStruct*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_296164A40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiAwdsAddConfigReq_SDK::ARI_CsiAwdsAddConfigReq_SDK(AriSdk::ARI_CsiAwdsAddConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -859144192, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -859144192, 0);
}

void AriSdk::ARI_CsiAwdsAddConfigReq_SDK::ARI_CsiAwdsAddConfigReq_SDK(AriSdk::ARI_CsiAwdsAddConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsAddConfigReq_SDK::~ARI_CsiAwdsAddConfigReq_SDK(AriSdk::ARI_CsiAwdsAddConfigReq_SDK *this)
{
  *this = &unk_2A1D32CE8;
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
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
  AriSdk::ARI_CsiAwdsAddConfigReq_SDK::~ARI_CsiAwdsAddConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsAddConfigReq_SDK::pack(AriSdk::ARI_CsiAwdsAddConfigReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 1uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 4uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 4uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 2uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 1uLL, 0), !result))
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

void sub_296165170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v12);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,3840ul>::operator=(std::vector<int> *this, __n128 *__c)
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

void sub_2961653D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::ARI_CsiAwdsAddConfigRspCb_SDK(AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850755584, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850755584, 0);
}

void AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::ARI_CsiAwdsAddConfigRspCb_SDK(AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::~ARI_CsiAwdsAddConfigRspCb_SDK(AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK *this)
{
  *this = &unk_2A1D32D20;
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
  AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::~ARI_CsiAwdsAddConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK::pack(AriSdk::ARI_CsiAwdsAddConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::ARI_CsiAwdsDeleteConfigReq_SDK(AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -859111424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -859111424, 0);
}

void AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::ARI_CsiAwdsDeleteConfigReq_SDK(AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::~ARI_CsiAwdsDeleteConfigReq_SDK(AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK *this)
{
  *this = &unk_2A1D32D58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::~ARI_CsiAwdsDeleteConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK::pack(AriSdk::ARI_CsiAwdsDeleteConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::ARI_CsiAwdsDeleteConfigRspCb_SDK(AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850722816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850722816, 0);
}

void AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::ARI_CsiAwdsDeleteConfigRspCb_SDK(AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::~ARI_CsiAwdsDeleteConfigRspCb_SDK(AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK *this)
{
  *this = &unk_2A1D32D90;
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
  AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::~ARI_CsiAwdsDeleteConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK::pack(AriSdk::ARI_CsiAwdsDeleteConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK::ARI_CsiAwdsGlobalSwitchReq_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -859275264, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -859275264, 0);
}

void AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK::ARI_CsiAwdsGlobalSwitchReq_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK::~ARI_CsiAwdsGlobalSwitchReq_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK *this)
{
  *this = &unk_2A1D32DC8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
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
  AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK::~ARI_CsiAwdsGlobalSwitchReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK::pack(AriSdk::ARI_CsiAwdsGlobalSwitchReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 5, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::ARI_CsiAwdsGlobalSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850886656, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850886656, 0);
}

void AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::ARI_CsiAwdsGlobalSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::~ARI_CsiAwdsGlobalSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK *this)
{
  *this = &unk_2A1D32E00;
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
  AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::~ARI_CsiAwdsGlobalSwitchRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK::pack(AriSdk::ARI_CsiAwdsGlobalSwitchRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK::ARI_CsiAwdsMetricSubSwitchReq_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -858980352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -858980352, 0);
}

void AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK::ARI_CsiAwdsMetricSubSwitchReq_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK::~ARI_CsiAwdsMetricSubSwitchReq_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK *this)
{
  *this = &unk_2A1D32E38;
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
  AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK::~ARI_CsiAwdsMetricSubSwitchReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK::pack(AriSdk::ARI_CsiAwdsMetricSubSwitchReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::ARI_CsiAwdsMetricSubSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850591744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850591744, 0);
}

void AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::ARI_CsiAwdsMetricSubSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::~ARI_CsiAwdsMetricSubSwitchRspCb_SDK(AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK *this)
{
  *this = &unk_2A1D32E70;
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
  AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::~ARI_CsiAwdsMetricSubSwitchRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK::pack(AriSdk::ARI_CsiAwdsMetricSubSwitchRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK::ARI_CsiAwdsMetricSubTriggerInd_SDK(AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -842170368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -842170368, 0);
}

void AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK::ARI_CsiAwdsMetricSubTriggerInd_SDK(AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK::~ARI_CsiAwdsMetricSubTriggerInd_SDK(AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK *this)
{
  *this = &unk_2A1D32EA8;
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
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
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
  AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK::~ARI_CsiAwdsMetricSubTriggerInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK::pack(AriSdk::ARI_CsiAwdsMetricSubTriggerInd_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
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

void AriSdk::ARI_CsiAwdsMetricSubInd_SDK::ARI_CsiAwdsMetricSubInd_SDK(AriSdk::ARI_CsiAwdsMetricSubInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -842137600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -842137600, 0);
}

void AriSdk::ARI_CsiAwdsMetricSubInd_SDK::ARI_CsiAwdsMetricSubInd_SDK(AriSdk::ARI_CsiAwdsMetricSubInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsMetricSubInd_SDK::~ARI_CsiAwdsMetricSubInd_SDK(AriSdk::ARI_CsiAwdsMetricSubInd_SDK *this)
{
  *this = &unk_2A1D32EE0;
  v2 = *(this + 21);
  *(this + 21) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4077774924);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4077774924);
  }

  v8 = *(this + 13);
  *(this + 13) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40BDFB0063);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C4052888210);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C4052888210);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C4052888210);
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
  AriSdk::ARI_CsiAwdsMetricSubInd_SDK::~ARI_CsiAwdsMetricSubInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsMetricSubInd_SDK::pack(AriSdk::ARI_CsiAwdsMetricSubInd_SDK *this, AriMsg **a2)
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
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 2uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 1uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 1uLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 1uLL, 0), !result))
                  {
                    v14 = *(this + 17);
                    if (!v14 || (result = AriMsg::pack(*(this + 6), 10, v14, 1uLL, 0), !result))
                    {
                      v15 = *(this + 18);
                      if (!v15 || (v16 = *(this + 19), v15 == v16) || (result = AriMsg::pack(*(this + 6), 11, v15, v16 - v15, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
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

void AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::ARI_CsiAwdsPiiLocConfigReq_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -859242496, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -859242496, 0);
}

void AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::ARI_CsiAwdsPiiLocConfigReq_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::~ARI_CsiAwdsPiiLocConfigReq_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK *this)
{
  *this = &unk_2A1D32F18;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
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
  AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::~ARI_CsiAwdsPiiLocConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK::pack(AriSdk::ARI_CsiAwdsPiiLocConfigReq_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::ARI_CsiAwdsPiiLocConfigRspCb_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850853888, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850853888, 0);
}

void AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::ARI_CsiAwdsPiiLocConfigRspCb_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::~ARI_CsiAwdsPiiLocConfigRspCb_SDK(AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK *this)
{
  *this = &unk_2A1D32F50;
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
  AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::~ARI_CsiAwdsPiiLocConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK::pack(AriSdk::ARI_CsiAwdsPiiLocConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiAwdsQueryReq_SDK::ARI_CsiAwdsQueryReq_SDK(AriSdk::ARI_CsiAwdsQueryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -859013120, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -859013120, 0);
}

void AriSdk::ARI_CsiAwdsQueryReq_SDK::ARI_CsiAwdsQueryReq_SDK(AriSdk::ARI_CsiAwdsQueryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsQueryReq_SDK::~ARI_CsiAwdsQueryReq_SDK(AriSdk::ARI_CsiAwdsQueryReq_SDK *this)
{
  *this = &unk_2A1D32F88;
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
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
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
  AriSdk::ARI_CsiAwdsQueryReq_SDK::~ARI_CsiAwdsQueryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsQueryReq_SDK::pack(AriSdk::ARI_CsiAwdsQueryReq_SDK *this, AriMsg **a2)
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
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_CsiAwdsQueryRspCb_SDK::ARI_CsiAwdsQueryRspCb_SDK(AriSdk::ARI_CsiAwdsQueryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, -850624512, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, -850624512, 0);
}

void AriSdk::ARI_CsiAwdsQueryRspCb_SDK::ARI_CsiAwdsQueryRspCb_SDK(AriSdk::ARI_CsiAwdsQueryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiAwdsQueryRspCb_SDK::~ARI_CsiAwdsQueryRspCb_SDK(AriSdk::ARI_CsiAwdsQueryRspCb_SDK *this)
{
  *this = &unk_2A1D32FC0;
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
  AriSdk::ARI_CsiAwdsQueryRspCb_SDK::~ARI_CsiAwdsQueryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiAwdsQueryRspCb_SDK::pack(AriSdk::ARI_CsiAwdsQueryRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsActivationReq_SDK::ARI_IBIOgrsActivationReq_SDK(AriSdk::ARI_IBIOgrsActivationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954578432, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954578432, 0);
}

void AriSdk::ARI_IBIOgrsActivationReq_SDK::ARI_IBIOgrsActivationReq_SDK(AriSdk::ARI_IBIOgrsActivationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsActivationReq_SDK::~ARI_IBIOgrsActivationReq_SDK(AriSdk::ARI_IBIOgrsActivationReq_SDK *this)
{
  *this = &unk_2A1D34408;
  v2 = *(this + 20);
  *(this + 20) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  *(this + 16) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4077774924);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
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
  AriSdk::ARI_IBIOgrsActivationReq_SDK::~ARI_IBIOgrsActivationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsActivationReq_SDK::pack(AriSdk::ARI_IBIOgrsActivationReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      v8 = *(this + 11);
      v9 = !v7 || v7 == v8;
      if (v9 || (result = AriMsg::pack(*(this + 6), 4, v7, v8 - v7, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 5, v10, v11 - v10, 0), !result))
        {
          v12 = *(this + 16);
          if (!v12 || (result = AriMsg::pack(*(this + 6), 6, v12, 1uLL, 0), !result))
          {
            v13 = *(this + 17);
            if (!v13 || (v14 = *(this + 18), v13 == v14) || (result = AriMsg::pack(*(this + 6), 7, v13, v14 - v13, 0), !result))
            {
              v15 = *(this + 20);
              if (!v15 || (result = AriMsg::pack(*(this + 6), 8, v15, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBIRemotePeerConfiguration_t,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2)) < 0x21)
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
      v12 = 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2);
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 1) - *a2) >> 2), 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29616AFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIOgrsActivationRspCb_SDK::ARI_IBIOgrsActivationRspCb_SDK(AriSdk::ARI_IBIOgrsActivationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1962967040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1962967040, 0);
}

void AriSdk::ARI_IBIOgrsActivationRspCb_SDK::ARI_IBIOgrsActivationRspCb_SDK(AriSdk::ARI_IBIOgrsActivationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsActivationRspCb_SDK::~ARI_IBIOgrsActivationRspCb_SDK(AriSdk::ARI_IBIOgrsActivationRspCb_SDK *this)
{
  *this = &unk_2A1D34440;
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
  AriSdk::ARI_IBIOgrsActivationRspCb_SDK::~ARI_IBIOgrsActivationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsActivationRspCb_SDK::pack(AriSdk::ARI_IBIOgrsActivationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDeactivationReq_SDK::ARI_IBIOgrsDeactivationReq_SDK(AriSdk::ARI_IBIOgrsDeactivationReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954611200, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954611200, 0);
}

void AriSdk::ARI_IBIOgrsDeactivationReq_SDK::ARI_IBIOgrsDeactivationReq_SDK(AriSdk::ARI_IBIOgrsDeactivationReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDeactivationReq_SDK::~ARI_IBIOgrsDeactivationReq_SDK(AriSdk::ARI_IBIOgrsDeactivationReq_SDK *this)
{
  *this = &unk_2A1D34478;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIOgrsDeactivationReq_SDK::~ARI_IBIOgrsDeactivationReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDeactivationReq_SDK::pack(AriSdk::ARI_IBIOgrsDeactivationReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK::ARI_IBIOgrsDeactivationRspCb_SDK(AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1962999808, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1962999808, 0);
}

void AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK::ARI_IBIOgrsDeactivationRspCb_SDK(AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK::~ARI_IBIOgrsDeactivationRspCb_SDK(AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK *this)
{
  *this = &unk_2A1D344B0;
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
  AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK::~ARI_IBIOgrsDeactivationRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK::pack(AriSdk::ARI_IBIOgrsDeactivationRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK::ARI_IBIOgrsDeactivationIndCb_SDK(AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971388416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971388416, 0);
}

void AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK::ARI_IBIOgrsDeactivationIndCb_SDK(AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK::~ARI_IBIOgrsDeactivationIndCb_SDK(AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK *this)
{
  *this = &unk_2A1D344E8;
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
  AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK::~ARI_IBIOgrsDeactivationIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK::pack(AriSdk::ARI_IBIOgrsDeactivationIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK::ARI_IBIOgrsDedicatedDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954643968, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954643968, 0);
}

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK::ARI_IBIOgrsDedicatedDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK::~ARI_IBIOgrsDedicatedDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK *this)
{
  *this = &unk_2A1D34520;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK::~ARI_IBIOgrsDedicatedDiscoveryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK::pack(AriSdk::ARI_IBIOgrsDedicatedDiscoveryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 4uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963032576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963032576, 0);
}

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK::~ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK *this)
{
  *this = &unk_2A1D34558;
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
  AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK::~ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK::pack(AriSdk::ARI_IBIOgrsDedicatedDiscoveryRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::ARI_IBIOgrsDiscoveryReleaseReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954742272, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954742272, 0);
}

void AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::ARI_IBIOgrsDiscoveryReleaseReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::~ARI_IBIOgrsDiscoveryReleaseReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK *this)
{
  *this = &unk_2A1D34590;
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
  AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::~ARI_IBIOgrsDiscoveryReleaseReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::pack(AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK::unpack(AriSdk::ARI_IBIOgrsDiscoveryReleaseReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29616CE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963130880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963130880, 0);
}

void AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK::~ARI_IBIOgrsDiscoveryReleaseRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK *this)
{
  *this = &unk_2A1D345C8;
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
  AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK::~ARI_IBIOgrsDiscoveryReleaseRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK::pack(AriSdk::ARI_IBIOgrsDiscoveryReleaseRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK::ARI_IBIOgrsDiscoveryStatusReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954971648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954971648, 0);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK::ARI_IBIOgrsDiscoveryStatusReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK::~ARI_IBIOgrsDiscoveryStatusReq_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK *this)
{
  *this = &unk_2A1D34600;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK::~ARI_IBIOgrsDiscoveryStatusReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK::pack(AriSdk::ARI_IBIOgrsDiscoveryStatusReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK::ARI_IBIOgrsDiscoveryStatusRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963360256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963360256, 0);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK::ARI_IBIOgrsDiscoveryStatusRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK::~ARI_IBIOgrsDiscoveryStatusRspCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK *this)
{
  *this = &unk_2A1D34638;
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
  AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK::~ARI_IBIOgrsDiscoveryStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK::pack(AriSdk::ARI_IBIOgrsDiscoveryStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::ARI_IBIOgrsDiscoveryStatusIndCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971421184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971421184, 0);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::ARI_IBIOgrsDiscoveryStatusIndCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::~ARI_IBIOgrsDiscoveryStatusIndCb_SDK(AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK *this)
{
  *this = &unk_2A1D34670;
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
  AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::~ARI_IBIOgrsDiscoveryStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::pack(AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK::unpack(AriSdk::ARI_IBIOgrsDiscoveryStatusIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29616E03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK::ARI_IBIOgrsEmergencyReceptionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971552256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971552256, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK::ARI_IBIOgrsEmergencyReceptionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK::~ARI_IBIOgrsEmergencyReceptionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK *this)
{
  *this = &unk_2A1D346A8;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK::~ARI_IBIOgrsEmergencyReceptionIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyReceptionIndCb_SDK *this, AriMsg **a2)
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
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 2uLL, 0), !result))
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

void sub_29616E64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned char,400ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x191)
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
      v23 = 400;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 400);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29616E884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK::ARI_IBIOgrsEmergencyTransmissionReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954906112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954906112, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK::ARI_IBIOgrsEmergencyTransmissionReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK::~ARI_IBIOgrsEmergencyTransmissionReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK *this)
{
  *this = &unk_2A1D346E0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  *(this + 14) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40BDFB0063);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
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
  AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK::~ARI_IBIOgrsEmergencyTransmissionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyTransmissionReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      if (!v9 || (result = AriMsg::pack(*(this + 6), 4, v9, 2uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 5, v10, 2uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 6, v11, 2uLL, 0), !result))
          {
            v12 = *(this + 15);
            if (!v12 || (v13 = *(this + 16), v12 == v13) || (result = AriMsg::pack(*(this + 6), 7, v12, v13 - v12, 0), !result))
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

void sub_29616EF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963294720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963294720, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK::~ARI_IBIOgrsEmergencyTransmissionRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK *this)
{
  *this = &unk_2A1D34718;
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
  AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK::~ARI_IBIOgrsEmergencyTransmissionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyTransmissionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971519488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971519488, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK::~ARI_IBIOgrsEmergencyTransmissionIndCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK *this)
{
  *this = &unk_2A1D34750;
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
  AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK::~ARI_IBIOgrsEmergencyTransmissionIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyTransmissionIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954938880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954938880, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK::~ARI_IBIOgrsEmergencyTransmissionStopReq_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK *this)
{
  *this = &unk_2A1D34788;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK::~ARI_IBIOgrsEmergencyTransmissionStopReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963327488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963327488, 0);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK::~ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK *this)
{
  *this = &unk_2A1D347C0;
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
  AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK::~ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK::pack(AriSdk::ARI_IBIOgrsEmergencyTransmissionStopRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsEventFilterReq_SDK::ARI_IBIOgrsEventFilterReq_SDK(AriSdk::ARI_IBIOgrsEventFilterReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1955004416, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1955004416, 0);
}

void AriSdk::ARI_IBIOgrsEventFilterReq_SDK::ARI_IBIOgrsEventFilterReq_SDK(AriSdk::ARI_IBIOgrsEventFilterReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEventFilterReq_SDK::~ARI_IBIOgrsEventFilterReq_SDK(AriSdk::ARI_IBIOgrsEventFilterReq_SDK *this)
{
  *this = &unk_2A1D347F8;
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
  AriSdk::ARI_IBIOgrsEventFilterReq_SDK::~ARI_IBIOgrsEventFilterReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEventFilterReq_SDK::pack(AriSdk::ARI_IBIOgrsEventFilterReq_SDK *this, AriMsg **a2)
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

void sub_296170360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

AriOsa *AriSdk::TlvArray<IBIUserList_t,32ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (*(a2 + 1) - *a2 < 0x201uLL)
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, (*(a2 + 1) - *a2) >> 4, 32);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2961705BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK::ARI_IBIOgrsEventFilterRspCb_SDK(AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963393024, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963393024, 0);
}

void AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK::ARI_IBIOgrsEventFilterRspCb_SDK(AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK::~ARI_IBIOgrsEventFilterRspCb_SDK(AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK *this)
{
  *this = &unk_2A1D34830;
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
  AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK::~ARI_IBIOgrsEventFilterRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK::pack(AriSdk::ARI_IBIOgrsEventFilterRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK::ARI_IBIOgrsInterfaceStartReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954840576, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954840576, 0);
}

void AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK::ARI_IBIOgrsInterfaceStartReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK::~ARI_IBIOgrsInterfaceStartReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK *this)
{
  *this = &unk_2A1D34868;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK::~ARI_IBIOgrsInterfaceStartReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK::pack(AriSdk::ARI_IBIOgrsInterfaceStartReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    v7 = *(this + 10);
    v8 = !v6 || v6 == v7;
    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      v9 = *(this + 12);
      v10 = *(this + 13);
      if (v9)
      {
        v11 = v9 == v10;
      }

      else
      {
        v11 = 1;
      }

      if (v11 || (result = AriMsg::pack(*(this + 6), 4, v9, v10 - v9, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void sub_296170EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<char,100ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x65)
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
      v23 = 100;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 100);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2961710D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK::ARI_IBIOgrsInterfaceStartRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963229184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963229184, 0);
}

void AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK::ARI_IBIOgrsInterfaceStartRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK::~ARI_IBIOgrsInterfaceStartRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK *this)
{
  *this = &unk_2A1D348A0;
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
  AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK::~ARI_IBIOgrsInterfaceStartRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK::pack(AriSdk::ARI_IBIOgrsInterfaceStartRspCb_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::ARI_IBIOgrsInterfaceStatusIndCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971486720, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971486720, 0);
}

void AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::ARI_IBIOgrsInterfaceStatusIndCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::~ARI_IBIOgrsInterfaceStatusIndCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK *this)
{
  *this = &unk_2A1D348D8;
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
  AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::~ARI_IBIOgrsInterfaceStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::pack(AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK::unpack(AriSdk::ARI_IBIOgrsInterfaceStatusIndCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296171C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::ARI_IBIOgrsInterfaceStopReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954873344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954873344, 0);
}

void AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::ARI_IBIOgrsInterfaceStopReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::~ARI_IBIOgrsInterfaceStopReq_SDK(AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK *this)
{
  *this = &unk_2A1D34910;
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
  AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::~ARI_IBIOgrsInterfaceStopReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::pack(AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK::unpack(AriSdk::ARI_IBIOgrsInterfaceStopReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296172338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK::ARI_IBIOgrsInterfaceStopRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963261952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963261952, 0);
}

void AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK::ARI_IBIOgrsInterfaceStopRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK::~ARI_IBIOgrsInterfaceStopRspCb_SDK(AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK *this)
{
  *this = &unk_2A1D34948;
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
  AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK::~ARI_IBIOgrsInterfaceStopRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK::pack(AriSdk::ARI_IBIOgrsInterfaceStopRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK::ARI_IBIOgrsPresenceDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954676736, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954676736, 0);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK::ARI_IBIOgrsPresenceDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK::~ARI_IBIOgrsPresenceDiscoveryReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK *this)
{
  *this = &unk_2A1D34980;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
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
    MEMORY[0x29C257E70](v4, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK::~ARI_IBIOgrsPresenceDiscoveryReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK::pack(AriSdk::ARI_IBIOgrsPresenceDiscoveryReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 2uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 2uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 1uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (v10 = *(this + 13), v9 == v10) || (result = AriMsg::pack(*(this + 6), 6, v9, v10 - v9, 0), !result))
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

void sub_296172DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963065344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963065344, 0);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK::~ARI_IBIOgrsPresenceDiscoveryRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK *this)
{
  *this = &unk_2A1D349B8;
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
  AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK::~ARI_IBIOgrsPresenceDiscoveryRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK::pack(AriSdk::ARI_IBIOgrsPresenceDiscoveryRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954709504, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954709504, 0);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK::~ARI_IBIOgrsPresenceDiscoveryStopReq_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK *this)
{
  *this = &unk_2A1D349F0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK::~ARI_IBIOgrsPresenceDiscoveryStopReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK::pack(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963098112, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963098112, 0);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK::~ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK *this)
{
  *this = &unk_2A1D34A28;
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
  AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK::~ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK::pack(AriSdk::ARI_IBIOgrsPresenceDiscoveryStopRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsSetParameterReq_SDK::ARI_IBIOgrsSetParameterReq_SDK(AriSdk::ARI_IBIOgrsSetParameterReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1955037184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1955037184, 0);
}

void AriSdk::ARI_IBIOgrsSetParameterReq_SDK::ARI_IBIOgrsSetParameterReq_SDK(AriSdk::ARI_IBIOgrsSetParameterReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsSetParameterReq_SDK::~ARI_IBIOgrsSetParameterReq_SDK(AriSdk::ARI_IBIOgrsSetParameterReq_SDK *this)
{
  *this = &unk_2A1D34A60;
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
  AriSdk::ARI_IBIOgrsSetParameterReq_SDK::~ARI_IBIOgrsSetParameterReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsSetParameterReq_SDK::pack(AriSdk::ARI_IBIOgrsSetParameterReq_SDK *this, AriMsg **a2)
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
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK::ARI_IBIOgrsSetParameterRspCb_SDK(AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963425792, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963425792, 0);
}

void AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK::ARI_IBIOgrsSetParameterRspCb_SDK(AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK::~ARI_IBIOgrsSetParameterRspCb_SDK(AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK *this)
{
  *this = &unk_2A1D34A98;
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
  AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK::~ARI_IBIOgrsSetParameterRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK::pack(AriSdk::ARI_IBIOgrsSetParameterRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsStatusIndCb_SDK::ARI_IBIOgrsStatusIndCb_SDK(AriSdk::ARI_IBIOgrsStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971355648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971355648, 0);
}

void AriSdk::ARI_IBIOgrsStatusIndCb_SDK::ARI_IBIOgrsStatusIndCb_SDK(AriSdk::ARI_IBIOgrsStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsStatusIndCb_SDK::~ARI_IBIOgrsStatusIndCb_SDK(AriSdk::ARI_IBIOgrsStatusIndCb_SDK *this)
{
  *this = &unk_2A1D34AD0;
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
  AriSdk::ARI_IBIOgrsStatusIndCb_SDK::~ARI_IBIOgrsStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsStatusIndCb_SDK::pack(AriSdk::ARI_IBIOgrsStatusIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsTxDiscardReq_SDK::ARI_IBIOgrsTxDiscardReq_SDK(AriSdk::ARI_IBIOgrsTxDiscardReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1954775040, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1954775040, 0);
}

void AriSdk::ARI_IBIOgrsTxDiscardReq_SDK::ARI_IBIOgrsTxDiscardReq_SDK(AriSdk::ARI_IBIOgrsTxDiscardReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsTxDiscardReq_SDK::~ARI_IBIOgrsTxDiscardReq_SDK(AriSdk::ARI_IBIOgrsTxDiscardReq_SDK *this)
{
  *this = &unk_2A1D34B08;
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
  AriSdk::ARI_IBIOgrsTxDiscardReq_SDK::~ARI_IBIOgrsTxDiscardReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsTxDiscardReq_SDK::pack(AriSdk::ARI_IBIOgrsTxDiscardReq_SDK *this, AriMsg **a2)
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

void sub_296174AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v11, v10);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK::ARI_IBIOgrsTxDiscardRspCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1963163648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1963163648, 0);
}

void AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK::ARI_IBIOgrsTxDiscardRspCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK::~ARI_IBIOgrsTxDiscardRspCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK *this)
{
  *this = &unk_2A1D34B40;
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
  AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK::~ARI_IBIOgrsTxDiscardRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK::pack(AriSdk::ARI_IBIOgrsTxDiscardRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK::ARI_IBIOgrsTxDiscardIndCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1971453952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1971453952, 0);
}

void AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK::ARI_IBIOgrsTxDiscardIndCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK::~ARI_IBIOgrsTxDiscardIndCb_SDK(AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK *this)
{
  *this = &unk_2A1D34B78;
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
  AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK::~ARI_IBIOgrsTxDiscardIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK::pack(AriSdk::ARI_IBIOgrsTxDiscardIndCb_SDK *this, AriMsg **a2)
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

void sub_2961752F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void std::vector<IBIRemotePeerConfiguration_t>::__init_with_size[abi:ne200100]<IBIRemotePeerConfiguration_t*,IBIRemotePeerConfiguration_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_2961753F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IBIUserList_t>::__init_with_size[abi:ne200100]<IBIUserList_t*,IBIUserList_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    operator new();
  }
}

void sub_296175494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double Ari::ActorList::ActorList(Ari::ActorList *this)
{
  *this = 0;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return result;
}

{
  *this = 0;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return result;
}

void Ari::ActorList::~ActorList(Ari::ActorList *this)
{
  std::mutex::~mutex((this + 8));
  std::__forward_list_base<std::shared_ptr<Ari::Actor>>::clear(this);
}

{
  std::mutex::~mutex((this + 8));
  std::__forward_list_base<std::shared_ptr<Ari::Actor>>::clear(this);
}

uint64_t Ari::ActorList::registerActor(uint64_t a1, int ***a2)
{
  v37 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 8));
  v4 = (*(**a2 + 2))();
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v28.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v28.__r_.__value_.__l.__data_ = v5;
  }

  v6 = Ari::ActorList::contains_sync(a1, &v28);
  v7 = v6;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_21;
  }

  v8 = Ari::Actor::registerAsClient(*a2);
  if (!v8)
  {
    v9 = (***a2)();
    if (!v9)
    {
      v9 = (*(**a2 + 1))();
      if (!v9)
      {
        v19 = *a1;
        operator new();
      }
    }

    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v9);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerActor", v26);
        v20 = v27;
        v21 = v26[0];
        v22 = (*(**a2 + 2))();
        v23 = v26;
        if (v20 < 0)
        {
          v23 = v21;
        }

        v24 = *v22;
        v25 = *(v22 + 23) < 0;
        *__p = 136315906;
        if (!v25)
        {
          v24 = v22;
        }

        *&__p[4] = "ari";
        v30 = 2080;
        v31 = v23;
        v32 = 0;
        v33 = 4;
        v34 = 42;
        v35 = 2080;
        v36 = v24;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Actor %s failed to register events and/or indications", __p, 0x26u);
        if (v27 < 0)
        {
          operator delete(v26[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerActor", __p);
      v11 = v33;
      v12 = *__p;
      v13 = (*(**a2 + 2))();
      v15 = __p;
      if (v11 < 0)
      {
        v15 = v12;
      }

      if (*(v13 + 23) >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = *v13;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Actor %s failed to register events and/or indications", v14, v15, 42, v16);
      if (v33 < 0)
      {
        operator delete(*__p);
      }
    }

    Ari::Actor::deregisterAsClient(*a2);
    v8 = 0xFFFFFFFFLL;
  }

LABEL_21:
  std::mutex::unlock((a1 + 8));
  v17 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_296175E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v30 + 8));
  _Unwind_Resume(a1);
}

uint64_t Ari::ActorList::contains_sync(uint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v4 = (*(*v2[1] + 16))(v2[1]);
    v5 = *(v4 + 23);
    if (v5 >= 0)
    {
      v6 = *(v4 + 23);
    }

    else
    {
      v6 = v4[1];
    }

    v7 = *(a2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = a2[1];
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        v4 = *v4;
      }

      v9 = *a2;
      v10 = v8 >= 0 ? a2 : *a2;
      if (!memcmp(v4, v10, v6))
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Ari::Actor::registerAsClient(int **this)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = (this + 1);
  if (*(this + 2) == -1)
  {
    v17 = (*(*this + 2))(this);
    if (v17[23] < 0)
    {
      v17 = *v17;
    }

    v16 = AriHost::RegisterClient(v17, v2, this[2], 0xFFFFFFFFLL, 5);
    if (!v16)
    {
      v18 = *(this + 2);
      v35[0] = MEMORY[0x29EDCA5F8];
      v35[1] = 0x40000000;
      v35[2] = ___ZN3Ari5Actor16registerAsClientEv_block_invoke;
      v35[3] = &__block_descriptor_tmp_0;
      v35[4] = this;
      v16 = AriHost::SetRTEventHandler(v18, 5, v35);
      if (v16)
      {
        v19 = AriHost::DeregisterClient(*v2);
        if (v19 && (DefaultLogLevel & 8) != 0)
        {
          OsLog = AriOsa::GetOsLog(v19);
          if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
          {
            AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient", __p);
            v29 = v37;
            v30 = __p[0];
            v31 = (*(*this + 2))(this);
            v32 = __p;
            if (v29 < 0)
            {
              v32 = v30;
            }

            if (*(v31 + 23) >= 0)
            {
              v33 = v31;
            }

            else
            {
              v33 = *v31;
            }

            v34 = *v2;
            *buf = 136316162;
            *&buf[4] = "ari";
            v39 = 2080;
            v40 = v32;
            v41 = 0;
            v42 = 4;
            v43 = 98;
            v44 = 2080;
            v45 = v33;
            v46 = 1024;
            v47 = v34;
            _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed to deregister actor %s with CID 0x%x", buf, 0x2Cu);
            if (v37 < 0)
            {
              operator delete(__p[0]);
            }
          }

          AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient", buf);
          v21 = v42;
          v22 = *buf;
          v23 = (*(*this + 2))(this);
          v25 = buf;
          if (v21 < 0)
          {
            v25 = v22;
          }

          if (*(v23 + 23) >= 0)
          {
            v26 = v23;
          }

          else
          {
            v26 = *v23;
          }

          AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed to deregister actor %s with CID 0x%x", v24, v25, 98, v26, *v2);
          if (v42 < 0)
          {
            operator delete(*buf);
          }
        }

        *v2 = -1;
      }
    }
  }

  else
  {
    if ((DefaultLogLevel & 0x10) != 0)
    {
      v3 = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient", __p);
        v4 = v37;
        v5 = __p[0];
        v6 = (*(*this + 2))(this);
        v7 = __p;
        if (v4 < 0)
        {
          v7 = v5;
        }

        v8 = *v6;
        v9 = *(v6 + 23) < 0;
        *buf = 136315906;
        if (!v9)
        {
          v8 = v6;
        }

        *&buf[4] = "ari";
        v39 = 2080;
        v40 = v7;
        v41 = 0;
        v42 = 4;
        v43 = 83;
        v44 = 2080;
        v45 = v8;
        _os_log_impl(&dword_296048000, v3, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Register called twice on %s", buf, 0x26u);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient", buf);
      v10 = v42;
      v11 = *buf;
      v12 = (*(*this + 2))(this);
      v14 = buf;
      if (v10 < 0)
      {
        v14 = v11;
      }

      if (*(v12 + 23) >= 0)
      {
        v15 = v12;
      }

      else
      {
        v15 = *v12;
      }

      AriOsa::LogToDefaultStringLogger(0x10, "(%s:%d) Register called twice on %s", v13, v14, 83, v15);
      if (v42 < 0)
      {
        operator delete(*buf);
      }
    }

    v16 = 0;
  }

  v27 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_29617639C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *Ari::Actor::deregisterAsClient(Ari::Actor *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  if (v2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v3 = AriHost::DeregisterClient(v2);
    v4 = v3;
    if (v3 && (DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(v3);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "deregisterAsClient", v20);
        v14 = v21;
        v15 = v20[0];
        v16 = (*(*this + 16))(this);
        v17 = v20;
        if (v14 < 0)
        {
          v17 = v15;
        }

        if (*(v16 + 23) >= 0)
        {
          v18 = v16;
        }

        else
        {
          v18 = *v16;
        }

        v19 = *(this + 2);
        *__p = 136316162;
        *&__p[4] = "ari";
        v23 = 2080;
        v24 = v17;
        v25 = 0;
        v26 = 4;
        v27 = 113;
        v28 = 2080;
        v29 = v18;
        v30 = 1024;
        v31 = v19;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Actor %s with CID 0x%x failed to deregister", __p, 0x2Cu);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "deregisterAsClient", __p);
      v6 = v26;
      v7 = *__p;
      v8 = (*(*this + 16))(this);
      v10 = __p;
      if (v6 < 0)
      {
        v10 = v7;
      }

      if (*(v8 + 23) >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *v8;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Actor %s with CID 0x%x failed to deregister", v9, v10, 113, v11, *(this + 2));
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    *(this + 2) = -1;
  }

  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29617660C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Ari::ActorList::clear(Ari::ActorList *this)
{
  std::mutex::lock((this + 8));
  std::__forward_list_base<std::shared_ptr<Ari::Actor>>::clear(this);

  std::mutex::unlock((this + 8));
}

uint64_t Ari::Actor::Actor(uint64_t this)
{
  *this = &unk_2A1D354C8;
  *(this + 8) = -1;
  *(this + 16) = 0;
  return this;
}

uint64_t ___ZN3Ari5Actor16registerAsClientEv_block_invoke(AriOsa *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient_block_invoke", __p);
      v3 = v19;
      v4 = __p[0];
      v5 = (*(*v1 + 16))(v1);
      v6 = __p;
      if (v3 < 0)
      {
        v6 = v4;
      }

      v7 = *v5;
      v8 = *(v5 + 23) < 0;
      *buf = 136315906;
      if (!v8)
      {
        v7 = v5;
      }

      *&buf[4] = "ari";
      v21 = 2080;
      v22 = v6;
      v23 = 0;
      v24 = 4;
      v25 = 89;
      v26 = 2080;
      v27 = v7;
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) Actor '%s' received RT re-init event", buf, 0x26u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerAsClient_block_invoke", buf);
    v9 = v24;
    v10 = *buf;
    v11 = (*(*v1 + 16))(v1);
    v13 = buf;
    if (v9 < 0)
    {
      v13 = v10;
    }

    if (*(v11 + 23) >= 0)
    {
      v14 = v11;
    }

    else
    {
      v14 = *v11;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) Actor '%s' received RT re-init event", v12, v13, 89, v14);
    if (v24 < 0)
    {
      operator delete(*buf);
    }
  }

  v15 = (*(*v1 + 16))(v1);
  AriHost::ReRegisterClient(v15, v1 + 8, -1);
  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961768E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

Ari::IndicationReregistrationActor *Ari::IndicationReregistrationActor::IndicationReregistrationActor(Ari::IndicationReregistrationActor *this)
{
  *(this + 2) = -1;
  *(this + 2) = 0;
  *this = &unk_2A1D354F0;
  Ari::IndicationReregistrationActor::getName(this);
  if (byte_2A18990EF >= 0)
  {
    v2 = &Ari::IndicationReregistrationActor::getName(void)const::name;
  }

  else
  {
    v2 = Ari::IndicationReregistrationActor::getName(void)const::name;
  }

  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  *(this + 2) = dispatch_queue_create(v2, v3);
  return this;
}

uint64_t *Ari::IndicationReregistrationActor::getName(Ari::IndicationReregistrationActor *this)
{
  {
    operator new();
  }

  return &Ari::IndicationReregistrationActor::getName(void)const::name;
}

void Ari::IndicationReregistrationActor::~IndicationReregistrationActor(Ari::IndicationReregistrationActor *this)
{
  *this = &unk_2A1D354F0;
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 2) = 0;
  }
}

{
  *this = &unk_2A1D354F0;
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 2) = 0;
  }
}

void sub_296176B9C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_296176C44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void Ari::LowPriorityFlushActor::LowPriorityFlushActor(Ari::LowPriorityFlushActor *this)
{
  *(this + 2) = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2A1D35518;
  *(this + 4) = 0;
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create("LowPriorityFlushActor", v2);
  *(this + 2) = v3;
  AriDispatch::Timer::Create(v3, v4);
}

void sub_296176CF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void Ari::LowPriorityFlushActor::~LowPriorityFlushActor(Ari::LowPriorityFlushActor *this)
{
  *this = &unk_2A1D35518;
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t Ari::LowPriorityFlushActor::registerEvents(Ari::LowPriorityFlushActor *this)
{
  Instance = AriHost::GetInstance(this);
  if (qword_2A1899100)
  {
    v3 = std::__shared_weak_count::lock(qword_2A1899100);
    if (v3)
    {
      v4 = AriHost::SingletonWeakPtr;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(this + 2);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v22[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke;
  v22[3] = &__block_descriptor_tmp_10_0;
  v22[4] = this;
  v22[5] = v4;
  v23 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = Instance;
  v6 = AriHost::SetRTEventHandler(v5, 2, v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (!v6)
  {
    v7 = *(this + 2);
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 1174405120;
    v20[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_11;
    v20[3] = &__block_descriptor_tmp_15;
    v20[4] = this;
    v20[5] = v4;
    v21 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = AriHost::SetRTEventHandler(v7, 1, v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (!v6)
    {
      v8 = *(this + 2);
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 1174405120;
      v17[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_16;
      v17[3] = &__block_descriptor_tmp_27_0;
      v17[4] = this;
      v17[5] = v4;
      v18 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = Instance;
      v6 = AriHost::SetRTEventHandler(v8, 0, v17);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (!v6)
      {
        v9 = *(this + 2);
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 1174405120;
        v14[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_28;
        v14[3] = &__block_descriptor_tmp_37;
        v14[4] = this;
        v14[5] = v4;
        v15 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = Instance;
        v6 = AriHost::SetRTEventHandler(v9, 3, v14);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (!v6)
        {
          v10 = *(this + 2);
          v12[0] = MEMORY[0x29EDCA5F8];
          v12[1] = 1174405120;
          v12[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_38;
          v12[3] = &__block_descriptor_tmp_42;
          v12[4] = this;
          v12[5] = v4;
          v13 = v3;
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v6 = AriHost::SetRTEventHandler(v10, 4, v12);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }
        }
      }
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v6;
}

void sub_29617706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke(uint64_t a1, NSObject *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v14 = 2080;
      v15 = v6;
      v16 = 1024;
      v17 = 208;
      v18 = 2080;
      v19 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: ARI_RT_ENTER_LPM: canceling low-priority flush timer and flushing requests", buf, 0x26u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v16 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: ARI_RT_ENTER_LPM: canceling low-priority flush timer and flushing requests", v7, v8, 208, "LowPriorityFlushActor");
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*buf);
    }
  }

  AriDispatch::Timer::cancel(*(v4 + 24));
  AriHost::flushLowPriorityRequests(*(a1 + 56), a2);
  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296177270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c34_ZTSNSt3__110shared_ptrI7AriHostEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c34_ZTSNSt3__110shared_ptrI7AriHostEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_11(AriOsa *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v3 = v9 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v11 = 2080;
      v12 = v3;
      v13 = 1024;
      v14 = 219;
      v15 = 2080;
      v16 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: ARI_RT_STOP: canceling low-priority flush timer", buf, 0x26u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v13 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: ARI_RT_STOP: canceling low-priority flush timer", v4, v5, 219, "LowPriorityFlushActor");
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }

  AriDispatch::Timer::cancel(*(v1 + 24));
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296177444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_16(AriOsa *a1, dispatch_object_t object)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v6 = v20 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v22 = 2080;
      v23 = v6;
      v24 = 1024;
      v25 = 229;
      v26 = 2080;
      v27 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: ARI_RT_START", buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v24 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: ARI_RT_START", v7, v8, 229, "LowPriorityFlushActor");
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*buf);
    }
  }

  *(v4 + 40) = *(*(a1 + 7) + 696);
  *(v4 + 48) = 0;
  dispatch_retain(object);
  dispatch_group_enter(object);
  AriDispatch::Timer::cancel(*(v4 + 24));
  v9 = *(v4 + 24);
  v10 = dispatch_time(0, 1000000000);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_2;
  v15[3] = &__block_descriptor_tmp_24;
  v12 = *(a1 + 5);
  v11 = *(a1 + 6);
  v15[4] = v4;
  v15[5] = v12;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 7);
  v18 = object;
  AriDispatch::Timer::setPeriodic(v9, v10, 0x3B9ACA00uLL, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2961776BC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_2(dispatch_group_t *a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v3 = LODWORD(v2[6].isa) + 1;
  LODWORD(v2[6].isa) = v3;
  isa = a1[7][87].isa;
  if (v3 == 8)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      OsLog = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke_2", __p);
        v6 = v24 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "ari";
        v26 = 2080;
        v27 = v6;
        v28 = 1024;
        v29 = 246;
        v30 = 2080;
        v31 = "LowPriorityFlushActor";
        v32 = 1024;
        v33 = 8;
        _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: waited %u seconds and did not reach idle, flushing low-priority queue anyway", buf, 0x2Cu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
      if (v28 >= 0)
      {
        v8 = buf;
      }

      else
      {
        v8 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: waited %u seconds and did not reach idle, flushing low-priority queue anyway", v7, v8, 246, "LowPriorityFlushActor", 8);
LABEL_25:
      if (SHIBYTE(v28) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if ((isa - v2[5].isa) < 3)
  {
    if ((DefaultLogLevel & 0x20) != 0)
    {
      v9 = AriOsa::GetOsLog(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
        v10 = v24 >= 0 ? __p : __p[0];
        v11 = v2[6].isa;
        *buf = 136316162;
        *&buf[4] = "ari";
        v26 = 2080;
        v27 = v10;
        v28 = 1024;
        v29 = 248;
        v30 = 2080;
        v31 = "LowPriorityFlushActor";
        v32 = 1024;
        v33 = v11;
        _os_log_impl(&dword_296048000, v9, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: detected relatively idle ARI traffic in iteration %u; flushing low-priority queue", buf, 0x2Cu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
      if (v28 >= 0)
      {
        v13 = buf;
      }

      else
      {
        v13 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: detected relatively idle ARI traffic in iteration %u; flushing low-priority queue", v12, v13, 248, "LowPriorityFlushActor", LODWORD(v2[6].isa));
      goto LABEL_25;
    }

LABEL_27:
    AriDispatch::Timer::cancel(v2[3].isa);
    v15 = a1[8];
    v14 = a1 + 8;
    AriHost::flushLowPriorityRequests(*(v14 - 1), v15);
    dispatch_group_leave(*v14);
    dispatch_release(*v14);
    goto LABEL_28;
  }

  if ((DefaultLogLevel & 0x20) != 0)
  {
    v17 = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v18 = v24 >= 0 ? __p : __p[0];
      v19 = v2[6].isa;
      v20 = isa - v2[5].isa;
      *buf = 136316418;
      *&buf[4] = "ari";
      v26 = 2080;
      v27 = v18;
      v28 = 1024;
      v29 = 256;
      v30 = 2080;
      v31 = "LowPriorityFlushActor";
      v32 = 1024;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      _os_log_impl(&dword_296048000, v17, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: too busy to flush low-priority queue: iteration %u Msg/second=%llu", buf, 0x36u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v28 >= 0)
    {
      v22 = buf;
    }

    else
    {
      v22 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: too busy to flush low-priority queue: iteration %u Msg/second=%llu", v21, v22, 256, "LowPriorityFlushActor", LODWORD(v2[6].isa), isa - v2[5].isa);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_28:
  v2[5].isa = isa;
  v16 = *MEMORY[0x29EDCA608];
}

void sub_296177B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_28(AriOsa *a1, dispatch_object_t object)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v6 = v20 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v22 = 2080;
      v23 = v6;
      v24 = 1024;
      v25 = 269;
      v26 = 2080;
      v27 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: ARI_RT_EXIT_LPM", buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v24 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: ARI_RT_EXIT_LPM", v7, v8, 269, "LowPriorityFlushActor");
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*buf);
    }
  }

  dispatch_retain(object);
  dispatch_group_enter(object);
  AriDispatch::Timer::cancel(*(v4 + 24));
  v9 = *(v4 + 24);
  v10 = dispatch_time(0, 2000000000);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_2_30;
  v15[3] = &__block_descriptor_tmp_34_0;
  v12 = *(a1 + 5);
  v11 = *(a1 + 6);
  v15[4] = v4;
  v15[5] = v12;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 7);
  v18 = object;
  AriDispatch::Timer::setPeriodic(v9, v10, 0xFFFFFFFFFFFFFFFFLL, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296177DA8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_2_30(dispatch_group_t *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke_2", __p);
      v3 = v10 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v12 = 2080;
      v13 = v3;
      v14 = 1024;
      v15 = 279;
      v16 = 2080;
      v17 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: flushing requests", buf, 0x26u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v14 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: flushing requests", v4, v5, 279, "LowPriorityFlushActor");
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*buf);
    }
  }

  v7 = a1[8];
  v6 = a1 + 8;
  AriHost::flushLowPriorityRequests(*(v6 - 1), v7);
  dispatch_group_leave(*v6);
  dispatch_release(*v6);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_296177F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN3Ari21LowPriorityFlushActor14registerEventsEv_block_invoke_38(AriOsa *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  if ((DefaultLogLevel & 0x20) != 0)
  {
    OsLog = AriOsa::GetOsLog(a1);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_DEFAULT))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", __p);
      v3 = v9 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "ari";
      v11 = 2080;
      v12 = v3;
      v13 = 1024;
      v14 = 293;
      v15 = 2080;
      v16 = "LowPriorityFlushActor";
      _os_log_impl(&dword_296048000, OsLog, OS_LOG_TYPE_DEFAULT, "%s: (%s:%d) %s: ARI_RT_CONNECTION_ERROR: canceling low-priority flush timer", buf, 0x26u);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_host_actors.cpp", "registerEvents_block_invoke", buf);
    if (v13 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    AriOsa::LogToDefaultStringLogger(0x20, "(%s:%d) %s: ARI_RT_CONNECTION_ERROR: canceling low-priority flush timer", v4, v5, 293, "LowPriorityFlushActor");
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*buf);
    }
  }

  AriDispatch::Timer::cancel(*(v1 + 24));
  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_296178108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__forward_list_base<std::shared_ptr<Ari::Actor>>::clear(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

void std::__shared_ptr_emplace<Ari::IndicationReregistrationActor::create(void)::IndicationReregistrationActorNoPrivate,std::allocator<Ari::IndicationReregistrationActor::create(void)::IndicationReregistrationActorNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D356D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

void std::__shared_ptr_emplace<Ari::IndicationReregistrationActor::create(void)::IndicationReregistrationActorNoPrivate,std::allocator<Ari::IndicationReregistrationActor::create(void)::IndicationReregistrationActorNoPrivate>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1D354F0;
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 40) = 0;
  }
}

void std::__shared_ptr_emplace<Ari::LowPriorityFlushActor::create(void)::LowPriorityFlushActorNoPrivate,std::allocator<Ari::LowPriorityFlushActor::create(void)::LowPriorityFlushActorNoPrivate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D35760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C257E70);
}

uint64_t AriOsa::Log(AriOsa *this, const char *a2, const char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = "[OTHER]";
  if (this <= 15)
  {
    if (this > 3)
    {
      v7 = "[DEBUG]: ";
      if (this == 8)
      {
        v4 = "[ERROR]: ";
      }

      v6 = this == 4;
    }

    else
    {
      if (this == 1)
      {
        goto LABEL_11;
      }

      v6 = this == 2;
      v7 = "[BBLOG]: >>>> ";
    }
  }

  else
  {
    if (this > 63)
    {
      if (this != 64 && this != 256)
      {
        if (this == 128)
        {
          v5 = "[WEAK ]: ";
        }

        else
        {
          v5 = "[OTHER]";
        }

        goto LABEL_21;
      }

LABEL_11:
      v5 = &str_6_13;
      goto LABEL_21;
    }

    v7 = "[WARN ]: ";
    if (this == 32)
    {
      v4 = "[INFO ]: ";
    }

    v6 = this == 16;
  }

  if (v6)
  {
    v5 = v7;
  }

  else
  {
    v5 = v4;
  }

LABEL_21:
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v11 = -1431655766;
  AriOsa::OsGetCurrentThreadName(&v10, 0xC);
  result = printf("%11s%s%s", &v10, v5, a2);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

AriOsa *AriOsa::OsGetCurrentThreadName(AriOsa *this, char *a2)
{
  label = dispatch_queue_get_label(0);
  v5 = strlen(label);
  v6 = v5 - (a2 - 1);
  if (v5 < (a2 - 1))
  {
    v6 = 0;
  }

  snprintf(this, a2, "%s", &label[v6]);
  return this;
}

void *AriOsa::MemAlloc(AriOsa *this, size_t size)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = malloc_type_malloc(size, 0x9C7BAFA2uLL);
  if (!v3 && (DefaultLogLevel & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(0);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", "MemAlloc", v10);
      v9 = v11 >= 0 ? v10 : v10[0];
      *__p = 136315906;
      *&__p[4] = "ari";
      v13 = 2080;
      v14 = v9;
      v15 = 1024;
      v16 = 101;
      v17 = 2048;
      v18 = size;
      _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Failed requested len (%zu)", __p, 0x26u);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }
    }

    AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", "MemAlloc", __p);
    if (v15 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = *__p;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Failed requested len (%zu)", v5, v6, 101, size);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

void sub_29617862C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriOsa::LogSrcInfo(AriOsa *this@<X0>, std::string::value_type *__s1@<X1>, uint64_t a3@<X8>)
{
  v15[2] = *MEMORY[0x29EDCA608];
  if (this && __s1)
  {
    v6 = this;
    *(a3 + 8) = 0;
    *a3 = 0;
    *(a3 + 16) = 0;
    if (strstr(__s1, AriOsa::LogSrcInfo(char const*,char const*)::LogSrcInfo_raw_blk_suffix))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "blk@");
      v7 = strrchr(v6, 47);
      if (v7)
      {
        v6 = v7 + 1;
      }

      v8 = strlen(v6);
      v9 = std::string::append(&__p, v6, v8);
      v10 = v9->__r_.__value_.__r.__words[0];
      v15[0] = v9->__r_.__value_.__l.__size_;
      *(v15 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v10;
      *(a3 + 8) = v15[0];
      *(a3 + 15) = *(v15 + 7);
      *(a3 + 23) = v11;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::__assign_external(a3, __s1);
    }

    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];

    std::string::basic_string[abi:ne200100]<0>(a3, "NULL_FILENAME");
  }
}

void sub_2961787C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void AriOsa::MemFree(AriOsa *this, void *a2, void *a3)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t AriOsa::OsMutexCreate(AriOsa *this, dispatch_semaphore_s **a2)
{
  AriOsa::SWTrap((this == 0), "id==NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x78);
  v3 = dispatch_semaphore_create(1);
  *this = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AriOsa::OsMutexTake(NSObject *this, dispatch_semaphore_s *a2)
{
  if (a2 == -1)
  {
    v3 = -1;
  }

  else
  {
    v3 = dispatch_time(0, 1000000 * a2);
  }

  if (dispatch_semaphore_wait(this, v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void AriOsa::OsMutexFree(dispatch_object_t this, dispatch_semaphore_s *a2)
{
  if (this)
  {
    dispatch_release(this);
  }
}

void AriOsa::OsSleep(AriOsa *this)
{
  v1 = dispatch_time(0, 1000000 * this);
  v2 = dispatch_semaphore_create(0);
  AriOsa::SWTrap((v2 == 0), "id == NULL", "/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", 0x99);
  dispatch_semaphore_wait(v2, v1);
  dispatch_semaphore_signal(v2);

  dispatch_release(v2);
}

AriOsa *AriOsa::SWTrap(AriOsa *this, uint64_t a2, const char *a3, const char *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  if (this)
  {
    if ((DefaultLogLevel & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(this);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", "SWTrap", __p);
        v9 = v13 >= 0 ? __p : __p[0];
        *buf = 136316418;
        *&buf[4] = "ari";
        v15 = 2080;
        v16 = v9;
        v17 = 1024;
        v18 = 192;
        v19 = 2080;
        v20 = a2;
        v21 = 2080;
        v22 = a3;
        v23 = 1024;
        v24 = a4;
        _os_log_error_impl(&dword_296048000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Trapping: %s @ %s:%d", buf, 0x36u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      AriOsa::LogSrcInfo("/Library/Caches/com.apple.xbs/Sources/AppleRemoteInvocation/ari_host/src/ari_osa_gcd.cpp", "SWTrap", buf);
      if (v17 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Trapping: %s @ %s:%d", v10, v11, 192, a2, a3, a4);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*buf);
      }
    }

    __assert_rtn("SWTrap", "ari_osa_gcd.cpp", 193, "0");
  }

  v4 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_296178B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AriOsa::OsTimeoutCreate(AriOsa *this, dispatch_source_s **a2)
{
  v3 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, MEMORY[0x29EDCA578]);
  *this = v3;
  dispatch_retain(v3);
  if (*this)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AriOsa::OsTimeoutStart(NSObject *this, dispatch_source_s *a2, uint64_t a3, void (*a4)(void *), void *a5)
{
  v8 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(this, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN6AriOsa14OsTimeoutStartEP17dispatch_source_sjPFvPvES2__block_invoke;
  v10[3] = &__block_descriptor_tmp_1;
  v10[4] = a3;
  v10[5] = a4;
  dispatch_source_set_event_handler(this, v10);
  dispatch_resume(this);
  return 0;
}

void AriOsa::OsTimeoutDestroy(NSObject *this, dispatch_source_s *a2)
{
  if (this)
  {
    dispatch_source_cancel(this);

    dispatch_release(this);
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void AriSdk::ARI_IBICpsCellularPowerReportInd_SDK::ARI_IBICpsCellularPowerReportInd_SDK(AriSdk::ARI_IBICpsCellularPowerReportInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 1031831552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 1031831552, 0);
}

void AriSdk::ARI_IBICpsCellularPowerReportInd_SDK::ARI_IBICpsCellularPowerReportInd_SDK(AriSdk::ARI_IBICpsCellularPowerReportInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICpsCellularPowerReportInd_SDK::~ARI_IBICpsCellularPowerReportInd_SDK(AriSdk::ARI_IBICpsCellularPowerReportInd_SDK *this)
{
  *this = &unk_2A1D357F0;
  v2 = *(this + 17);
  *(this + 17) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C4052888210);
  }

  v5 = *(this + 14);
  *(this + 14) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4052888210);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
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
  AriSdk::ARI_IBICpsCellularPowerReportInd_SDK::~ARI_IBICpsCellularPowerReportInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICpsCellularPowerReportInd_SDK::pack(AriSdk::ARI_IBICpsCellularPowerReportInd_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          v10 = *(this + 14);
          if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 4uLL, 0), !result))
          {
            v11 = *(this + 15);
            if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
              {
                v13 = *(this + 17);
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

  return result;
}

std::vector<int> *AriSdk::TlvArray<unsigned int,16ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x41)
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
      v23 = 16;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 2, 16);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}