uint64_t std::weak_ptr<AriHost>::~weak_ptr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void $_0::~$_0($_0 *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void AriSdk::ARI_AriBBLogInd_SDK::ARI_AriBBLogInd_SDK(AriSdk::ARI_AriBBLogInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67469312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67469312, 0);
}

void AriSdk::ARI_AriBBLogInd_SDK::ARI_AriBBLogInd_SDK(AriSdk::ARI_AriBBLogInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriBBLogInd_SDK::~ARI_AriBBLogInd_SDK(AriSdk::ARI_AriBBLogInd_SDK *this)
{
  *this = &unk_2A1D1DEB0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C400BDB4DB4);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriBBLogInd_SDK::~ARI_AriBBLogInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriBBLogInd_SDK::pack(AriSdk::ARI_AriBBLogInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x108uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriGrpAttribReq_SDK::ARI_AriGrpAttribReq_SDK(AriSdk::ARI_AriGrpAttribReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67731456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67731456, 0);
}

void AriSdk::ARI_AriGrpAttribReq_SDK::ARI_AriGrpAttribReq_SDK(AriSdk::ARI_AriGrpAttribReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriGrpAttribReq_SDK::~ARI_AriGrpAttribReq_SDK(AriSdk::ARI_AriGrpAttribReq_SDK *this)
{
  *this = &unk_2A1D1DEE8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriGrpAttribReq_SDK::~ARI_AriGrpAttribReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriGrpAttribReq_SDK::pack(AriSdk::ARI_AriGrpAttribReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x14uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriGrpAttribResp_SDK::ARI_AriGrpAttribResp_SDK(AriSdk::ARI_AriGrpAttribResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 68255744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 68255744, 0);
}

void AriSdk::ARI_AriGrpAttribResp_SDK::ARI_AriGrpAttribResp_SDK(AriSdk::ARI_AriGrpAttribResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriGrpAttribResp_SDK::~ARI_AriGrpAttribResp_SDK(AriSdk::ARI_AriGrpAttribResp_SDK *this)
{
  *this = &unk_2A1D1DF20;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriGrpAttribResp_SDK::~ARI_AriGrpAttribResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriGrpAttribResp_SDK::pack(AriSdk::ARI_AriGrpAttribResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x14uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriGrpMsgsAttribReq_SDK::ARI_AriGrpMsgsAttribReq_SDK(AriSdk::ARI_AriGrpMsgsAttribReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67698688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67698688, 0);
}

void AriSdk::ARI_AriGrpMsgsAttribReq_SDK::ARI_AriGrpMsgsAttribReq_SDK(AriSdk::ARI_AriGrpMsgsAttribReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriGrpMsgsAttribReq_SDK::~ARI_AriGrpMsgsAttribReq_SDK(AriSdk::ARI_AriGrpMsgsAttribReq_SDK *this)
{
  *this = &unk_2A1D1DF58;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408E9EA8C0);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriGrpMsgsAttribReq_SDK::~ARI_AriGrpMsgsAttribReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriGrpMsgsAttribReq_SDK::pack(AriSdk::ARI_AriGrpMsgsAttribReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x7E0uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriGrpMsgsAttribResp_SDK::ARI_AriGrpMsgsAttribResp_SDK(AriSdk::ARI_AriGrpMsgsAttribResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 68222976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 68222976, 0);
}

void AriSdk::ARI_AriGrpMsgsAttribResp_SDK::ARI_AriGrpMsgsAttribResp_SDK(AriSdk::ARI_AriGrpMsgsAttribResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriGrpMsgsAttribResp_SDK::~ARI_AriGrpMsgsAttribResp_SDK(AriSdk::ARI_AriGrpMsgsAttribResp_SDK *this)
{
  *this = &unk_2A1D1DF90;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408E9EA8C0);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriGrpMsgsAttribResp_SDK::~ARI_AriGrpMsgsAttribResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriGrpMsgsAttribResp_SDK::pack(AriSdk::ARI_AriGrpMsgsAttribResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x7E0uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriMsgAttribReq_SDK::ARI_AriMsgAttribReq_SDK(AriSdk::ARI_AriMsgAttribReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67665920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67665920, 0);
}

void AriSdk::ARI_AriMsgAttribReq_SDK::ARI_AriMsgAttribReq_SDK(AriSdk::ARI_AriMsgAttribReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriMsgAttribReq_SDK::~ARI_AriMsgAttribReq_SDK(AriSdk::ARI_AriMsgAttribReq_SDK *this)
{
  *this = &unk_2A1D1DFC8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40451B5BE8);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriMsgAttribReq_SDK::~ARI_AriMsgAttribReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriMsgAttribReq_SDK::pack(AriSdk::ARI_AriMsgAttribReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x10uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriMsgAttribResp_SDK::ARI_AriMsgAttribResp_SDK(AriSdk::ARI_AriMsgAttribResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 68190208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 68190208, 0);
}

void AriSdk::ARI_AriMsgAttribResp_SDK::ARI_AriMsgAttribResp_SDK(AriSdk::ARI_AriMsgAttribResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriMsgAttribResp_SDK::~ARI_AriMsgAttribResp_SDK(AriSdk::ARI_AriMsgAttribResp_SDK *this)
{
  *this = &unk_2A1D1E000;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40451B5BE8);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriMsgAttribResp_SDK::~ARI_AriMsgAttribResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriMsgAttribResp_SDK::pack(AriSdk::ARI_AriMsgAttribResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x10uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriACK_SDK::ARI_AriACK_SDK(AriSdk::ARI_AriACK_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67436544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67436544, 0);
}

void AriSdk::ARI_AriACK_SDK::ARI_AriACK_SDK(AriSdk::ARI_AriACK_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriACK_SDK::~ARI_AriACK_SDK(AriSdk::ARI_AriACK_SDK *this)
{
  *this = &unk_2A1D1E038;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriACK_SDK::~ARI_AriACK_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriACK_SDK::pack(AriSdk::ARI_AriACK_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriNACK_SDK::ARI_AriNACK_SDK(AriSdk::ARI_AriNACK_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 67600384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 67600384, 0);
}

void AriSdk::ARI_AriNACK_SDK::ARI_AriNACK_SDK(AriSdk::ARI_AriNACK_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriNACK_SDK::~ARI_AriNACK_SDK(AriSdk::ARI_AriNACK_SDK *this)
{
  *this = &unk_2A1D1E070;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriNACK_SDK::~ARI_AriNACK_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriNACK_SDK::pack(AriSdk::ARI_AriNACK_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiBSPBBDumpInd_SDK::ARI_CsiBSPBBDumpInd_SDK(AriSdk::ARI_CsiBSPBBDumpInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 92798976, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 92798976, 0);
}

void AriSdk::ARI_CsiBSPBBDumpInd_SDK::ARI_CsiBSPBBDumpInd_SDK(AriSdk::ARI_CsiBSPBBDumpInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBSPBBDumpInd_SDK::~ARI_CsiBSPBBDumpInd_SDK(AriSdk::ARI_CsiBSPBBDumpInd_SDK *this)
{
  *this = &unk_2A1D1E0A8;
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
  AriSdk::ARI_CsiBSPBBDumpInd_SDK::~ARI_CsiBSPBBDumpInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBSPBBDumpInd_SDK::pack(AriSdk::ARI_CsiBSPBBDumpInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBSPBBDumpInd_SDK::unpack(AriSdk::ARI_CsiBSPBBDumpInd_SDK *this)
{
  v2 = 0;
  v1 = 0xAAAAAAAAAAAAAAAALL;
  operator new[]();
}

std::vector<int> *AriSdk::TlvArray<char,1024ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x401)
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
      v23 = 1024;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 1024);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29604CEF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::ARI_CsiBmmProvideBootTimeInfoReq_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 80936960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 80936960, 0);
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::ARI_CsiBmmProvideBootTimeInfoReq_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::~ARI_CsiBmmProvideBootTimeInfoReq_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBmmProvideBootTimeInfoReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 89325568, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 89325568, 0);
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::~ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1E118;
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
    MEMORY[0x29C257E70](v3, 0x1000C409BFB5D93);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::~ARI_CsiBmmProvideBootTimeInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::pack(AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0xE1CuLL, 0), !result))
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

void AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK::unpack(AriSdk::ARI_CsiBmmProvideBootTimeInfoRspCb_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_29604D6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_CsiBspDebugJtagModeReq_SDK::ARI_CsiBspDebugJtagModeReq_SDK(AriSdk::ARI_CsiBspDebugJtagModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 80969728, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 80969728, 0);
}

void AriSdk::ARI_CsiBspDebugJtagModeReq_SDK::ARI_CsiBspDebugJtagModeReq_SDK(AriSdk::ARI_CsiBspDebugJtagModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspDebugJtagModeReq_SDK::~ARI_CsiBspDebugJtagModeReq_SDK(AriSdk::ARI_CsiBspDebugJtagModeReq_SDK *this)
{
  *this = &unk_2A1D1E150;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspDebugJtagModeReq_SDK::~ARI_CsiBspDebugJtagModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspDebugJtagModeReq_SDK::pack(AriSdk::ARI_CsiBspDebugJtagModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK::ARI_CsiBspDebugJtagModeRspCb_SDK(AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 89358336, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 89358336, 0);
}

void AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK::ARI_CsiBspDebugJtagModeRspCb_SDK(AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK::~ARI_CsiBspDebugJtagModeRspCb_SDK(AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK *this)
{
  *this = &unk_2A1D1E188;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK::~ARI_CsiBspDebugJtagModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK::pack(AriSdk::ARI_CsiBspDebugJtagModeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBspStateGetReq_SDK::ARI_CsiBspStateGetReq_SDK(AriSdk::ARI_CsiBspStateGetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75825152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75825152, 0);
}

void AriSdk::ARI_CsiBspStateGetReq_SDK::ARI_CsiBspStateGetReq_SDK(AriSdk::ARI_CsiBspStateGetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspStateGetReq_SDK::~ARI_CsiBspStateGetReq_SDK(AriSdk::ARI_CsiBspStateGetReq_SDK *this)
{
  *this = &unk_2A1D1E1C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspStateGetReq_SDK::~ARI_CsiBspStateGetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspStateGetReq_SDK::pack(AriSdk::ARI_CsiBspStateGetReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBspStateGetRspCb_SDK::ARI_CsiBspStateGetRspCb_SDK(AriSdk::ARI_CsiBspStateGetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84213760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84213760, 0);
}

void AriSdk::ARI_CsiBspStateGetRspCb_SDK::ARI_CsiBspStateGetRspCb_SDK(AriSdk::ARI_CsiBspStateGetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspStateGetRspCb_SDK::~ARI_CsiBspStateGetRspCb_SDK(AriSdk::ARI_CsiBspStateGetRspCb_SDK *this)
{
  *this = &unk_2A1D1E1F8;
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
  AriSdk::ARI_CsiBspStateGetRspCb_SDK::~ARI_CsiBspStateGetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspStateGetRspCb_SDK::pack(AriSdk::ARI_CsiBspStateGetRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBspStateSetReq_SDK::ARI_CsiBspStateSetReq_SDK(AriSdk::ARI_CsiBspStateSetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75857920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75857920, 0);
}

void AriSdk::ARI_CsiBspStateSetReq_SDK::ARI_CsiBspStateSetReq_SDK(AriSdk::ARI_CsiBspStateSetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspStateSetReq_SDK::~ARI_CsiBspStateSetReq_SDK(AriSdk::ARI_CsiBspStateSetReq_SDK *this)
{
  *this = &unk_2A1D1E230;
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
  AriSdk::ARI_CsiBspStateSetReq_SDK::~ARI_CsiBspStateSetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspStateSetReq_SDK::pack(AriSdk::ARI_CsiBspStateSetReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiBspStateSetRspCb_SDK::ARI_CsiBspStateSetRspCb_SDK(AriSdk::ARI_CsiBspStateSetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84246528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84246528, 0);
}

void AriSdk::ARI_CsiBspStateSetRspCb_SDK::ARI_CsiBspStateSetRspCb_SDK(AriSdk::ARI_CsiBspStateSetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiBspStateSetRspCb_SDK::~ARI_CsiBspStateSetRspCb_SDK(AriSdk::ARI_CsiBspStateSetRspCb_SDK *this)
{
  *this = &unk_2A1D1E268;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiBspStateSetRspCb_SDK::~ARI_CsiBspStateSetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiBspStateSetRspCb_SDK::pack(AriSdk::ARI_CsiBspStateSetRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiDelayedOutstandingReq_SDK::ARI_CsiDelayedOutstandingReq_SDK(AriSdk::ARI_CsiDelayedOutstandingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 76054528, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 76054528, 0);
}

void AriSdk::ARI_CsiDelayedOutstandingReq_SDK::ARI_CsiDelayedOutstandingReq_SDK(AriSdk::ARI_CsiDelayedOutstandingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiDelayedOutstandingReq_SDK::~ARI_CsiDelayedOutstandingReq_SDK(AriSdk::ARI_CsiDelayedOutstandingReq_SDK *this)
{
  *this = &unk_2A1D1E2A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiDelayedOutstandingReq_SDK::~ARI_CsiDelayedOutstandingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiDelayedOutstandingReq_SDK::pack(AriSdk::ARI_CsiDelayedOutstandingReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiDelayedOutstandingResp_SDK::ARI_CsiDelayedOutstandingResp_SDK(AriSdk::ARI_CsiDelayedOutstandingResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84443136, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84443136, 0);
}

void AriSdk::ARI_CsiDelayedOutstandingResp_SDK::ARI_CsiDelayedOutstandingResp_SDK(AriSdk::ARI_CsiDelayedOutstandingResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiDelayedOutstandingResp_SDK::~ARI_CsiDelayedOutstandingResp_SDK(AriSdk::ARI_CsiDelayedOutstandingResp_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiDelayedOutstandingResp_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiGetCurrentBootStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75923456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75923456, 0);
}

void AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::ARI_CsiGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiGetCurrentBootStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::~ARI_CsiGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiGetCurrentBootStateReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiGetCurrentBootStateReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84312064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84312064, 0);
}

void AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::ARI_CsiGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::~ARI_CsiGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK *this)
{
  *this = &unk_2A1D1E348;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::~ARI_CsiGetCurrentBootStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK::pack(AriSdk::ARI_CsiGetCurrentBootStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiGetSystemTimeReq_SDK::ARI_CsiGetSystemTimeReq_SDK(AriSdk::ARI_CsiGetSystemTimeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75956224, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75956224, 0);
}

void AriSdk::ARI_CsiGetSystemTimeReq_SDK::ARI_CsiGetSystemTimeReq_SDK(AriSdk::ARI_CsiGetSystemTimeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiGetSystemTimeReq_SDK::~ARI_CsiGetSystemTimeReq_SDK(AriSdk::ARI_CsiGetSystemTimeReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiGetSystemTimeReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiGetSystemTimeResp_SDK::ARI_CsiGetSystemTimeResp_SDK(AriSdk::ARI_CsiGetSystemTimeResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84344832, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84344832, 0);
}

void AriSdk::ARI_CsiGetSystemTimeResp_SDK::ARI_CsiGetSystemTimeResp_SDK(AriSdk::ARI_CsiGetSystemTimeResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiGetSystemTimeResp_SDK::~ARI_CsiGetSystemTimeResp_SDK(AriSdk::ARI_CsiGetSystemTimeResp_SDK *this)
{
  *this = &unk_2A1D1E3B8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiGetSystemTimeResp_SDK::~ARI_CsiGetSystemTimeResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiGetSystemTimeResp_SDK::pack(AriSdk::ARI_CsiGetSystemTimeResp_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiModeGetReq_SDK::ARI_CsiModeGetReq_SDK(AriSdk::ARI_CsiModeGetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75988992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75988992, 0);
}

void AriSdk::ARI_CsiModeGetReq_SDK::ARI_CsiModeGetReq_SDK(AriSdk::ARI_CsiModeGetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiModeGetReq_SDK::~ARI_CsiModeGetReq_SDK(AriSdk::ARI_CsiModeGetReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiModeGetReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiModeGetRspCb_SDK::ARI_CsiModeGetRspCb_SDK(AriSdk::ARI_CsiModeGetRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84377600, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84377600, 0);
}

void AriSdk::ARI_CsiModeGetRspCb_SDK::ARI_CsiModeGetRspCb_SDK(AriSdk::ARI_CsiModeGetRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiModeGetRspCb_SDK::~ARI_CsiModeGetRspCb_SDK(AriSdk::ARI_CsiModeGetRspCb_SDK *this)
{
  *this = &unk_2A1D1E428;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40504FFAC1);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiModeGetRspCb_SDK::~ARI_CsiModeGetRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiModeGetRspCb_SDK::pack(AriSdk::ARI_CsiModeGetRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x18uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiModeSetReq_SDK::ARI_CsiModeSetReq_SDK(AriSdk::ARI_CsiModeSetReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75890688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75890688, 0);
}

void AriSdk::ARI_CsiModeSetReq_SDK::ARI_CsiModeSetReq_SDK(AriSdk::ARI_CsiModeSetReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiModeSetReq_SDK::~ARI_CsiModeSetReq_SDK(AriSdk::ARI_CsiModeSetReq_SDK *this)
{
  *this = &unk_2A1D1E460;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiModeSetReq_SDK::~ARI_CsiModeSetReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiModeSetReq_SDK::pack(AriSdk::ARI_CsiModeSetReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiModeSetRespCb_SDK::ARI_CsiModeSetRespCb_SDK(AriSdk::ARI_CsiModeSetRespCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84279296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84279296, 0);
}

void AriSdk::ARI_CsiModeSetRespCb_SDK::ARI_CsiModeSetRespCb_SDK(AriSdk::ARI_CsiModeSetRespCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiModeSetRespCb_SDK::~ARI_CsiModeSetRespCb_SDK(AriSdk::ARI_CsiModeSetRespCb_SDK *this)
{
  *this = &unk_2A1D1E498;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiModeSetRespCb_SDK::~ARI_CsiModeSetRespCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiModeSetRespCb_SDK::pack(AriSdk::ARI_CsiModeSetRespCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiModeSetIndCb_SDK::ARI_CsiModeSetIndCb_SDK(AriSdk::ARI_CsiModeSetIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 92766208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 92766208, 0);
}

void AriSdk::ARI_CsiModeSetIndCb_SDK::ARI_CsiModeSetIndCb_SDK(AriSdk::ARI_CsiModeSetIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiModeSetIndCb_SDK::~ARI_CsiModeSetIndCb_SDK(AriSdk::ARI_CsiModeSetIndCb_SDK *this)
{
  *this = &unk_2A1D1E4D0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiModeSetIndCb_SDK::~ARI_CsiModeSetIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiModeSetIndCb_SDK::pack(AriSdk::ARI_CsiModeSetIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK::ARI_CsiMsCpsGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75563008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75563008, 0);
}

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK::ARI_CsiMsCpsGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK::~ARI_CsiMsCpsGetCurrentBootStateReq_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK *this)
{
  *this = &unk_2A1D1E508;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK::~ARI_CsiMsCpsGetCurrentBootStateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK::pack(AriSdk::ARI_CsiMsCpsGetCurrentBootStateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 83951616, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 83951616, 0);
}

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK::~ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK(AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK *this)
{
  *this = &unk_2A1D1E540;
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
  AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK::~ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK::pack(AriSdk::ARI_CsiMsCpsGetCurrentBootStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiMsCpsReadMeidReq_SDK::ARI_CsiMsCpsReadMeidReq_SDK(AriSdk::ARI_CsiMsCpsReadMeidReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 76087296, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 76087296, 0);
}

void AriSdk::ARI_CsiMsCpsReadMeidReq_SDK::ARI_CsiMsCpsReadMeidReq_SDK(AriSdk::ARI_CsiMsCpsReadMeidReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsReadMeidReq_SDK::~ARI_CsiMsCpsReadMeidReq_SDK(AriSdk::ARI_CsiMsCpsReadMeidReq_SDK *this)
{
  *this = &unk_2A1D1E578;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMsCpsReadMeidReq_SDK::~ARI_CsiMsCpsReadMeidReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsReadMeidReq_SDK::pack(AriSdk::ARI_CsiMsCpsReadMeidReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK::ARI_CsiMsCpsReadMeidRspCb_SDK(AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84475904, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84475904, 0);
}

void AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK::ARI_CsiMsCpsReadMeidRspCb_SDK(AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK::~ARI_CsiMsCpsReadMeidRspCb_SDK(AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK *this)
{
  *this = &unk_2A1D1E5B0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C402C707793);
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
  AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK::~ARI_CsiMsCpsReadMeidRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK::pack(AriSdk::ARI_CsiMsCpsReadMeidRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x18uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_CsiMsSimCardPresenceReq_SDK::ARI_CsiMsSimCardPresenceReq_SDK(AriSdk::ARI_CsiMsSimCardPresenceReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75792384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75792384, 0);
}

void AriSdk::ARI_CsiMsSimCardPresenceReq_SDK::ARI_CsiMsSimCardPresenceReq_SDK(AriSdk::ARI_CsiMsSimCardPresenceReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsSimCardPresenceReq_SDK::~ARI_CsiMsSimCardPresenceReq_SDK(AriSdk::ARI_CsiMsSimCardPresenceReq_SDK *this)
{
  *this = &unk_2A1D1E5E8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMsSimCardPresenceReq_SDK::~ARI_CsiMsSimCardPresenceReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsSimCardPresenceReq_SDK::pack(AriSdk::ARI_CsiMsSimCardPresenceReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK::ARI_CsiMsSimCardPresenceRspCb_SDK(AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84180992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84180992, 0);
}

void AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK::ARI_CsiMsSimCardPresenceRspCb_SDK(AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK::~ARI_CsiMsSimCardPresenceRspCb_SDK(AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK *this)
{
  *this = &unk_2A1D1E620;
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
  AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK::~ARI_CsiMsSimCardPresenceRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK::pack(AriSdk::ARI_CsiMsSimCardPresenceRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSecGetFusingStateReq_SDK::ARI_CsiSecGetFusingStateReq_SDK(AriSdk::ARI_CsiSecGetFusingStateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75595776, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75595776, 0);
}

void AriSdk::ARI_CsiSecGetFusingStateReq_SDK::ARI_CsiSecGetFusingStateReq_SDK(AriSdk::ARI_CsiSecGetFusingStateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetFusingStateReq_SDK::~ARI_CsiSecGetFusingStateReq_SDK(AriSdk::ARI_CsiSecGetFusingStateReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetFusingStateReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK::ARI_CsiSecGetFusingStateRspCb_SDK(AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 83984384, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 83984384, 0);
}

void AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK::ARI_CsiSecGetFusingStateRspCb_SDK(AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK::~ARI_CsiSecGetFusingStateRspCb_SDK(AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK *this)
{
  *this = &unk_2A1D1E690;
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
  AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK::~ARI_CsiSecGetFusingStateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK::pack(AriSdk::ARI_CsiSecGetFusingStateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(AriSdk::ARI_CsiSecGetRandomNumReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75694080, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75694080, 0);
}

void AriSdk::ARI_CsiSecGetRandomNumReq_SDK::ARI_CsiSecGetRandomNumReq_SDK(AriSdk::ARI_CsiSecGetRandomNumReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetRandomNumReq_SDK::~ARI_CsiSecGetRandomNumReq_SDK(AriSdk::ARI_CsiSecGetRandomNumReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetRandomNumReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84082688, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84082688, 0);
}

void AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::ARI_CsiSecGetRandomNumRspCb_SDK(AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::~ARI_CsiSecGetRandomNumRspCb_SDK(AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK *this)
{
  *this = &unk_2A1D1E700;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C408AA14F5FLL);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::~ARI_CsiSecGetRandomNumRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK::pack(AriSdk::ARI_CsiSecGetRandomNumRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x24uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSecGetSNUMReq_SDK::ARI_CsiSecGetSNUMReq_SDK(AriSdk::ARI_CsiSecGetSNUMReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75628544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75628544, 0);
}

void AriSdk::ARI_CsiSecGetSNUMReq_SDK::ARI_CsiSecGetSNUMReq_SDK(AriSdk::ARI_CsiSecGetSNUMReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetSNUMReq_SDK::~ARI_CsiSecGetSNUMReq_SDK(AriSdk::ARI_CsiSecGetSNUMReq_SDK *this)
{
  AriSdk::MsgBase::~MsgBase(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetSNUMReq_SDK::pack(uint64_t a1, void *a2)
{
  *a2 = 0;
  *a2 = *(a1 + 48);
  return 0;
}

void AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::ARI_CsiSecGetSNUMRspCb_SDK(AriSdk::ARI_CsiSecGetSNUMRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84017152, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84017152, 0);
}

void AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::ARI_CsiSecGetSNUMRspCb_SDK(AriSdk::ARI_CsiSecGetSNUMRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::~ARI_CsiSecGetSNUMRspCb_SDK(AriSdk::ARI_CsiSecGetSNUMRspCb_SDK *this)
{
  *this = &unk_2A1D1E770;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4040E6D4D8);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::~ARI_CsiSecGetSNUMRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSecGetSNUMRspCb_SDK::pack(AriSdk::ARI_CsiSecGetSNUMRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x18uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSysGetInfoReq_SDK::ARI_CsiSysGetInfoReq_SDK(AriSdk::ARI_CsiSysGetInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75661312, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75661312, 0);
}

void AriSdk::ARI_CsiSysGetInfoReq_SDK::ARI_CsiSysGetInfoReq_SDK(AriSdk::ARI_CsiSysGetInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSysGetInfoReq_SDK::~ARI_CsiSysGetInfoReq_SDK(AriSdk::ARI_CsiSysGetInfoReq_SDK *this)
{
  *this = &unk_2A1D1E7A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSysGetInfoReq_SDK::~ARI_CsiSysGetInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSysGetInfoReq_SDK::pack(AriSdk::ARI_CsiSysGetInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSysGetInfoRspCb_SDK::ARI_CsiSysGetInfoRspCb_SDK(AriSdk::ARI_CsiSysGetInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84049920, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84049920, 0);
}

void AriSdk::ARI_CsiSysGetInfoRspCb_SDK::ARI_CsiSysGetInfoRspCb_SDK(AriSdk::ARI_CsiSysGetInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSysGetInfoRspCb_SDK::~ARI_CsiSysGetInfoRspCb_SDK(AriSdk::ARI_CsiSysGetInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1E7E0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40F139FF95);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSysGetInfoRspCb_SDK::~ARI_CsiSysGetInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSysGetInfoRspCb_SDK::pack(AriSdk::ARI_CsiSysGetInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x6CuLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiSysGetInfoReqV2_SDK::ARI_CsiSysGetInfoReqV2_SDK(AriSdk::ARI_CsiSysGetInfoReqV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 76021760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 76021760, 0);
}

void AriSdk::ARI_CsiSysGetInfoReqV2_SDK::ARI_CsiSysGetInfoReqV2_SDK(AriSdk::ARI_CsiSysGetInfoReqV2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSysGetInfoReqV2_SDK::~ARI_CsiSysGetInfoReqV2_SDK(AriSdk::ARI_CsiSysGetInfoReqV2_SDK *this)
{
  *this = &unk_2A1D1E818;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSysGetInfoReqV2_SDK::~ARI_CsiSysGetInfoReqV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSysGetInfoReqV2_SDK::pack(AriSdk::ARI_CsiSysGetInfoReqV2_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84410368, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84410368, 0);
}

void AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::ARI_CsiSysGetInfoRspCbV2_SDK(AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::~ARI_CsiSysGetInfoRspCbV2_SDK(AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK *this)
{
  *this = &unk_2A1D1E850;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40EE8C0CC6);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::~ARI_CsiSysGetInfoRspCbV2_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK::pack(AriSdk::ARI_CsiSysGetInfoRspCbV2_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 0x208uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75530240, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75530240, 0);
}

void AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::ARI_CsiMsCpsReadImeiReq_SDK(AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::~ARI_CsiMsCpsReadImeiReq_SDK(AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *this)
{
  *this = &unk_2A1D1E888;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::~ARI_CsiMsCpsReadImeiReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsReadImeiReq_SDK::pack(AriSdk::ARI_CsiMsCpsReadImeiReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 83918848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 83918848, 0);
}

void AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::ARI_CsiMsCpsReadImeiRspCb_SDK(AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::~ARI_CsiMsCpsReadImeiRspCb_SDK(AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK *this)
{
  *this = &unk_2A1D1E8C0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4075806E5BLL);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4075806E5BLL);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C402C707793);
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
  AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::~ARI_CsiMsCpsReadImeiRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK::pack(AriSdk::ARI_CsiMsCpsReadImeiRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x18uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 0x11uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 4, v8, 0x11uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::ARI_IBIRfSetAntennaPortMappingReq_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 76120064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 76120064, 0);
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::ARI_IBIRfSetAntennaPortMappingReq_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::~ARI_IBIRfSetAntennaPortMappingReq_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK *this)
{
  *this = &unk_2A1D1E8F8;
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
  AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::~ARI_IBIRfSetAntennaPortMappingReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::pack(AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 2, v4, 4uLL, 0), !result))
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

    if (v8 || (result = AriMsg::pack(*(this + 6), 3, v6, v7 - v6, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK::unpack(AriSdk::ARI_IBIRfSetAntennaPortMappingReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296053F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::ARI_IBIRfSetAntennaPortMappingResp_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84508672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84508672, 0);
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::ARI_IBIRfSetAntennaPortMappingResp_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::~ARI_IBIRfSetAntennaPortMappingResp_SDK(AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK *this)
{
  *this = &unk_2A1D1E930;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::~ARI_IBIRfSetAntennaPortMappingResp_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK::pack(AriSdk::ARI_IBIRfSetAntennaPortMappingResp_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISIMCardPresentReq_SDK::ARI_IBISIMCardPresentReq_SDK(AriSdk::ARI_IBISIMCardPresentReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 76578816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 76578816, 0);
}

void AriSdk::ARI_IBISIMCardPresentReq_SDK::ARI_IBISIMCardPresentReq_SDK(AriSdk::ARI_IBISIMCardPresentReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISIMCardPresentReq_SDK::~ARI_IBISIMCardPresentReq_SDK(AriSdk::ARI_IBISIMCardPresentReq_SDK *this)
{
  *this = &unk_2A1D1E968;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISIMCardPresentReq_SDK::~ARI_IBISIMCardPresentReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISIMCardPresentReq_SDK::pack(AriSdk::ARI_IBISIMCardPresentReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBISIMCardPresentRspCb_SDK::ARI_IBISIMCardPresentRspCb_SDK(AriSdk::ARI_IBISIMCardPresentRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84967424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84967424, 0);
}

void AriSdk::ARI_IBISIMCardPresentRspCb_SDK::ARI_IBISIMCardPresentRspCb_SDK(AriSdk::ARI_IBISIMCardPresentRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBISIMCardPresentRspCb_SDK::~ARI_IBISIMCardPresentRspCb_SDK(AriSdk::ARI_IBISIMCardPresentRspCb_SDK *this)
{
  *this = &unk_2A1D1E9A0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBISIMCardPresentRspCb_SDK::~ARI_IBISIMCardPresentRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBISIMCardPresentRspCb_SDK::pack(AriSdk::ARI_IBISIMCardPresentRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK(AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 92700672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 92700672, 0);
}

void AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK(AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK::~ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK(AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK *this)
{
  *this = &unk_2A1D1E9D8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK::~ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK::pack(AriSdk::ARI_AriUtaModeInitialSwitchCompleteIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 8uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_UtaMsCpsSetSvnReq_SDK::ARI_UtaMsCpsSetSvnReq_SDK(AriSdk::ARI_UtaMsCpsSetSvnReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 75726848, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 75726848, 0);
}

void AriSdk::ARI_UtaMsCpsSetSvnReq_SDK::ARI_UtaMsCpsSetSvnReq_SDK(AriSdk::ARI_UtaMsCpsSetSvnReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_UtaMsCpsSetSvnReq_SDK::~ARI_UtaMsCpsSetSvnReq_SDK(AriSdk::ARI_UtaMsCpsSetSvnReq_SDK *this)
{
  *this = &unk_2A1D1EA10;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4077774924);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_UtaMsCpsSetSvnReq_SDK::~ARI_UtaMsCpsSetSvnReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_UtaMsCpsSetSvnReq_SDK::pack(AriSdk::ARI_UtaMsCpsSetSvnReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 1uLL, 0), !result))
  {
    result = 0;
    *a2 = *(this + 6);
  }

  return result;
}

void AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK::ARI_AriUtaMsCpsSetSvnRspCb_SDK(AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 84115456, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 84115456, 0);
}

void AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK::ARI_AriUtaMsCpsSetSvnRspCb_SDK(AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK::~ARI_AriUtaMsCpsSetSvnRspCb_SDK(AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK *this)
{
  *this = &unk_2A1D1EA48;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK::~ARI_AriUtaMsCpsSetSvnRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK::pack(AriSdk::ARI_AriUtaMsCpsSetSvnRspCb_SDK *this, AriMsg **a2)
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

uint64_t ARI_AriMsgAttribResp_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 68190208)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x10uLL);
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

uint64_t ARI_AriMsgAttribReq_ENC(char *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v7;
  *v14 = v7;
  v11 = v7;
  v12 = v7;
  AriMsg::AriMsg(&v11, 0x4088000u);
  v8 = AriMsg::packParam(&v11, 1, a1, 0x10uLL);
  if (!v8)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v11, a4);
      *a3 = EncodedBuf;
      if (EncodedBuf)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return v8;
}

uint64_t ARI_AriMsgAttribReq_BLK(char *a1, int *a2, uint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0x4088000u);
  Ctx = AriMsg::packParam(&v9, 1, a1, 0x10uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v9, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v9, a2);
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return Ctx;
}

uint64_t ARI_AriACK_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 67436544)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 8uLL);
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

uint64_t ARI_AriNACK_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 67600384)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 8uLL);
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

uint64_t ARI_CsiBmmProvideBootTimeInfoRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 89325568)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 0xE1CuLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0x5A0uLL);
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

uint64_t ARI_CsiBmmProvideBootTimeInfoReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x4D30000u);
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

uint64_t ARI_CsiBmmProvideBootTimeInfoReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x4D30000u);
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

uint64_t ARI_CsiBspDebugJtagModeRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 89358336)
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

uint64_t ARI_CsiBspDebugJtagModeReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4D38000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiBspDebugJtagModeReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4D38000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiBspStateGetRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 84213760)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 4uLL);
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

uint64_t ARI_CsiBspStateGetReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4850000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiBspStateGetReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4850000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiBspStateSetRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84246528)
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

uint64_t ARI_CsiBspStateSetReq_ENC(int a1, int a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v16 = a2;
  v17 = a1;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v7;
  *v14 = v7;
  v11 = v7;
  v12 = v7;
  AriMsg::AriMsg(&v11, 0x4858000u);
  v8 = AriMsg::packParam(&v11, 1, &v17, 4uLL);
  if (!v8)
  {
    v8 = AriMsg::packParam(&v11, 2, &v16, 4uLL);
    if (!v8)
    {
      if (a4)
      {
        EncodedBuf = AriMsg::getEncodedBuf(&v11, a5);
        *a4 = EncodedBuf;
        if (EncodedBuf)
        {
          v8 = 0;
        }

        else
        {
          v8 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return v8;
}

uint64_t ARI_CsiBspStateSetReq_BLK(int a1, int a2, int *a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0x4858000u);
  Ctx = AriMsg::packParam(&v9, 1, &v15, 4uLL);
  if (!Ctx)
  {
    Ctx = AriMsg::packParam(&v9, 2, &v14, 4uLL);
    if (!Ctx)
    {
      Ctx = AriHost::Send(&v9, *a3, a4, 0, 20000);
      if (!Ctx)
      {
        Ctx = AriMsg::extractCtx(&v9, a3);
      }
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return Ctx;
}

uint64_t ARI_CsiGetCurrentBootStateRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84312064)
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

uint64_t ARI_CsiGetCurrentBootStateReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x4868000u);
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

uint64_t ARI_CsiGetCurrentBootStateReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x4868000u);
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

uint64_t ARI_CsiMsCpsGetCurrentBootStateRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 83951616)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 4uLL);
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

uint64_t ARI_CsiMsCpsReadMeidRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 84475904)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 0x18uLL);
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

uint64_t ARI_CsiMsCpsReadMeidReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4890000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiMsCpsReadMeidReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4890000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiMsSimCardPresenceRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 84180992)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 4uLL);
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

uint64_t ARI_CsiMsSimCardPresenceReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4848000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiMsSimCardPresenceReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4848000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiSecGetFusingStateRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4)
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
    if (((DWORD1(v9) << 15) | (v9 << 26)) == 83984384)
    {
      v7 = AriMsg::unparam(&v9, 1, a3, 4uLL);
      if (!v7)
      {
        v7 = AriMsg::unparam(&v9, 2, a4, 4uLL);
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

uint64_t ARI_CsiSecGetFusingStateReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x4818000u);
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

uint64_t ARI_CsiSecGetFusingStateReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x4818000u);
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

uint64_t ARI_CsiSecGetRandomNumRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84082688)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x24uLL);
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

uint64_t ARI_CsiSecGetRandomNumReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x4830000u);
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

uint64_t ARI_CsiSecGetRandomNumReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x4830000u);
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

uint64_t ARI_CsiSecGetSNUMRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84017152)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x18uLL);
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

uint64_t ARI_CsiSecGetSNUMReq_ENC(uint64_t a1, void *a2, unsigned int *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v5;
  *v12 = v5;
  v9 = v5;
  v10 = v5;
  AriMsg::AriMsg(&v9, 0x4820000u);
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

uint64_t ARI_CsiSecGetSNUMReq_BLK(int *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  *v10 = v4;
  v7 = v4;
  v8 = v4;
  AriMsg::AriMsg(&v7, 0x4820000u);
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

uint64_t ARI_CsiSysGetInfoRspCbV2_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84410368)
    {
      v5 = AriMsg::unparam(&v7, 1, a3, 0x208uLL);
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

uint64_t ARI_CsiSysGetInfoReqV2_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4880000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiSysGetInfoReqV2_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4880000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_CsiMsCpsReadImeiRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3, char *a4, char *a5, char *a6)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v10;
  *v16 = v10;
  v13 = v10;
  v14 = v10;
  AriMsg::AriMsg(&v13, a1, a2);
  v11 = HIDWORD(v17);
  if (!HIDWORD(v17))
  {
    if (((DWORD1(v13) << 15) | (v13 << 26)) == 83918848)
    {
      v11 = AriMsg::unparam(&v13, 1, a3, 4uLL);
      if (!v11)
      {
        v11 = AriMsg::unparam(&v13, 2, a4, 0x18uLL);
        if (!v11)
        {
          v11 = AriMsg::unparam(&v13, 3, a5, 0x11uLL);
          if (!v11)
          {
            v11 = AriMsg::unparam(&v13, 4, a6, 0x11uLL);
          }
        }
      }
    }

    else
    {
      v11 = 4294967223;
    }
  }

  v16[0] = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  AriMsg::FreeTlvList(v16[1]);
  return v11;
}

uint64_t ARI_CsiMsCpsReadImeiReq_ENC(int a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = a1;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v6;
  *v13 = v6;
  v10 = v6;
  v11 = v6;
  AriMsg::AriMsg(&v10, 0x4808000u);
  v7 = AriMsg::packParam(&v10, 1, &v15, 4uLL);
  if (!v7)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v10, a4);
      *a3 = EncodedBuf;
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
  }

  v13[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  AriMsg::FreeTlvList(v13[1]);
  return v7;
}

uint64_t ARI_CsiMsCpsReadImeiReq_BLK(int a1, int *a2, uint64_t a3)
{
  v13 = a1;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v5;
  *v11 = v5;
  v8 = v5;
  v9 = v5;
  AriMsg::AriMsg(&v8, 0x4808000u);
  Ctx = AriMsg::packParam(&v8, 1, &v13, 4uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v8, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v8, a2);
    }
  }

  v11[0] = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  AriMsg::FreeTlvList(v11[1]);
  return Ctx;
}

uint64_t ARI_AriUtaMsCpsSetSvnRspCb_Extract(const unsigned __int8 *a1, uint64_t a2, char *a3)
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
    if (((DWORD1(v7) << 15) | (v7 << 26)) == 84115456)
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

uint64_t ARI_UtaMsCpsSetSvnReq_ENC(char *a1, uint64_t a2, void *a3, unsigned int *a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v7;
  *v14 = v7;
  v11 = v7;
  v12 = v7;
  AriMsg::AriMsg(&v11, 0x4838000u);
  v8 = AriMsg::packParam(&v11, 1, a1, 1uLL);
  if (!v8)
  {
    if (a3)
    {
      EncodedBuf = AriMsg::getEncodedBuf(&v11, a4);
      *a3 = EncodedBuf;
      if (EncodedBuf)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  v14[0] = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  AriMsg::FreeTlvList(v14[1]);
  return v8;
}

uint64_t ARI_UtaMsCpsSetSvnReq_BLK(char *a1, int *a2, uint64_t a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  *v12 = v6;
  v9 = v6;
  v10 = v6;
  AriMsg::AriMsg(&v9, 0x4838000u);
  Ctx = AriMsg::packParam(&v9, 1, a1, 1uLL);
  if (!Ctx)
  {
    Ctx = AriHost::Send(&v9, *a2, a3, 0, 20000);
    if (!Ctx)
    {
      Ctx = AriMsg::extractCtx(&v9, a2);
    }
  }

  v12[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  AriMsg::FreeTlvList(v12[1]);
  return Ctx;
}

uint64_t std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29605770C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDEE3E8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

__n128 std::vector<char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK::ARI_IBINetDcIMSRegInformationUpdateReq_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679772160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679772160, 0);
}

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK::ARI_IBINetDcIMSRegInformationUpdateReq_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK::~ARI_IBINetDcIMSRegInformationUpdateReq_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK *this)
{
  *this = &unk_2A1D1EF90;
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
  AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK::~ARI_IBINetDcIMSRegInformationUpdateReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK::pack(AriSdk::ARI_IBINetDcIMSRegInformationUpdateReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 688160768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 688160768, 0);
}

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK::~ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK(AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK *this)
{
  *this = &unk_2A1D1EFC8;
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
  AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK::~ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK::pack(AriSdk::ARI_IBINetDcIMSRegInformationUpdateRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679542784, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679542784, 0);
}

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK::~ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK *this)
{
  *this = &unk_2A1D1F000;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK::~ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK::pack(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 687931392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 687931392, 0);
}

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK::~ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1F038;
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
  AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK::~ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK::pack(AriSdk::ARI_IBINetDcImsGetImsRegStatusInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679510016, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679510016, 0);
}

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK::~ARI_IBINetDcImsProvideImsRegStatusInfo_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK *this)
{
  *this = &unk_2A1D1F070;
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
  AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK::~ARI_IBINetDcImsProvideImsRegStatusInfo_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK::pack(AriSdk::ARI_IBINetDcImsProvideImsRegStatusInfo_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 687898624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 687898624, 0);
}

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK::~ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK(AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK *this)
{
  *this = &unk_2A1D1F0A8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK::~ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK::pack(AriSdk::ARI_IBINetDcImsProvideImsRegStatusRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679673856, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679673856, 0);
}

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::~ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK *this)
{
  *this = &unk_2A1D1F0E0;
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
  AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::~ARI_IBINetDcImsRegistrationStatusInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK::pack(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 688062464, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 688062464, 0);
}

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::~ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1F118;
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
  AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::~ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK::pack(AriSdk::ARI_IBINetDcImsRegistrationStatusInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::ARI_IBINetDcImsSignallingStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679706624, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679706624, 0);
}

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::ARI_IBINetDcImsSignallingStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::~ARI_IBINetDcImsSignallingStatusInfoReq_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK *this)
{
  *this = &unk_2A1D1F150;
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
  AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::~ARI_IBINetDcImsSignallingStatusInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK::pack(AriSdk::ARI_IBINetDcImsSignallingStatusInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 688095232, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 688095232, 0);
}

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::~ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK(AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK *this)
{
  *this = &unk_2A1D1F188;
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
  AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::~ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK::pack(AriSdk::ARI_IBINetDcImsSignallingStatusInfoRspcb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679608320, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679608320, 0);
}

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK::~ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK *this)
{
  *this = &unk_2A1D1F1C0;
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
    MEMORY[0x29C257E70](v8, 0x1000C4052888210);
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
  AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK::~ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK::pack(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 687996928, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 687996928, 0);
}

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK::~ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK *this)
{
  *this = &unk_2A1D1F1F8;
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
  AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK::~ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK::pack(AriSdk::ARI_IBINetDcSetVoiceDomainPreferenceConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::ARI_IBINetDcSsacBarringInfoReq_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679575552, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679575552, 0);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::ARI_IBINetDcSsacBarringInfoReq_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::~ARI_IBINetDcSsacBarringInfoReq_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK *this)
{
  *this = &unk_2A1D1F230;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::~ARI_IBINetDcSsacBarringInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK::pack(AriSdk::ARI_IBINetDcSsacBarringInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::ARI_IBINetDcSsacBarringInfoRspCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 687964160, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 687964160, 0);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::ARI_IBINetDcSsacBarringInfoRspCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::~ARI_IBINetDcSsacBarringInfoRspCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1F268;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
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
  AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::~ARI_IBINetDcSsacBarringInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK::pack(AriSdk::ARI_IBINetDcSsacBarringInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 4uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 8uLL, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::ARI_IBINetDcSsacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 696320000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 696320000, 0);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::ARI_IBINetDcSsacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::~ARI_IBINetDcSsacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK *this)
{
  *this = &unk_2A1D1F2A0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4000313F17);
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
  AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::~ARI_IBINetDcSsacBarringInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK::pack(AriSdk::ARI_IBINetDcSsacBarringInfoIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 3, v7, 8uLL, 0), !result))
      {
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::ARI_IBINetDcUacAccessCheckReq_SDK(AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 679739392, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 679739392, 0);
}

void AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::ARI_IBINetDcUacAccessCheckReq_SDK(AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::~ARI_IBINetDcUacAccessCheckReq_SDK(AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK *this)
{
  *this = &unk_2A1D1F2D8;
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
  AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::~ARI_IBINetDcUacAccessCheckReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK::pack(AriSdk::ARI_IBINetDcUacAccessCheckReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::ARI_IBINetDcUacAccessCheckRspCb_SDK(AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 688128000, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 688128000, 0);
}

void AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::ARI_IBINetDcUacAccessCheckRspCb_SDK(AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::~ARI_IBINetDcUacAccessCheckRspCb_SDK(AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK *this)
{
  *this = &unk_2A1D1F310;
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
  AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::~ARI_IBINetDcUacAccessCheckRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK::pack(AriSdk::ARI_IBINetDcUacAccessCheckRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::ARI_IBINetDcUacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 696352768, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 696352768, 0);
}

void AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::ARI_IBINetDcUacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::~ARI_IBINetDcUacBarringInfoIndCb_SDK(AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK *this)
{
  *this = &unk_2A1D1F348;
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
  AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::~ARI_IBINetDcUacBarringInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK::pack(AriSdk::ARI_IBINetDcUacBarringInfoIndCb_SDK *this, AriMsg **a2)
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
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK::ARI_IBICallPsActivateStatusIndCb_SDK(AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226525184, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226525184, 0);
}

void AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK::ARI_IBICallPsActivateStatusIndCb_SDK(AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK::~ARI_IBICallPsActivateStatusIndCb_SDK(AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK *this)
{
  *this = &unk_2A1D1F530;
  v2 = *(this + 59);
  *(this + 59) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 58);
  *(this + 58) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4052888210);
  }

  v4 = *(this + 55);
  if (v4)
  {
    *(this + 56) = v4;
    operator delete(v4);
  }

  v5 = *(this + 54);
  *(this + 54) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C4077774924);
  }

  v6 = *(this + 53);
  *(this + 53) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4045BD7913);
  }

  v7 = *(this + 52);
  *(this + 52) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4052888210);
  }

  v8 = *(this + 51);
  *(this + 51) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C40AC189338);
  }

  v9 = *(this + 50);
  *(this + 50) = 0;
  if (v9)
  {
    MEMORY[0x29C257E70](v9, 0x1000C40AC189338);
  }

  v10 = *(this + 49);
  *(this + 49) = 0;
  if (v10)
  {
    MEMORY[0x29C257E70](v10, 0x1000C40AC189338);
  }

  v11 = *(this + 48);
  *(this + 48) = 0;
  if (v11)
  {
    MEMORY[0x29C257E70](v11, 0x1000C40AC189338);
  }

  v12 = *(this + 47);
  *(this + 47) = 0;
  if (v12)
  {
    MEMORY[0x29C257E70](v12, 0x1000C40BDFB0063);
  }

  v13 = *(this + 46);
  *(this + 46) = 0;
  if (v13)
  {
    MEMORY[0x29C257E70](v13, 0x1000C4052888210);
  }

  v14 = *(this + 45);
  *(this + 45) = 0;
  if (v14)
  {
    MEMORY[0x29C257E70](v14, 0x1000C4000313F17);
  }

  v15 = *(this + 44);
  *(this + 44) = 0;
  if (v15)
  {
    MEMORY[0x29C257E70](v15, 0x1000C4080B1215BLL);
  }

  v16 = *(this + 43);
  *(this + 43) = 0;
  if (v16)
  {
    MEMORY[0x29C257E70](v16, 0x1000C4052888210);
  }

  v17 = *(this + 42);
  *(this + 42) = 0;
  if (v17)
  {
    MEMORY[0x29C257E70](v17, 0x1000C4052888210);
  }

  v18 = *(this + 39);
  if (v18)
  {
    *(this + 40) = v18;
    operator delete(v18);
  }

  v19 = *(this + 38);
  *(this + 38) = 0;
  if (v19)
  {
    MEMORY[0x29C257E70](v19, 0x1000C4077774924);
  }

  v20 = *(this + 37);
  *(this + 37) = 0;
  if (v20)
  {
    MEMORY[0x29C257E70](v20, 0x1000C4077774924);
  }

  v21 = *(this + 36);
  *(this + 36) = 0;
  if (v21)
  {
    MEMORY[0x29C257E70](v21, 0x1000C4077774924);
  }

  v22 = *(this + 35);
  *(this + 35) = 0;
  if (v22)
  {
    MEMORY[0x29C257E70](v22, 0x1000C40B04AA6E5);
  }

  v23 = *(this + 34);
  *(this + 34) = 0;
  if (v23)
  {
    MEMORY[0x29C257E70](v23, 0x1000C40FF89C88ELL);
  }

  v24 = *(this + 33);
  *(this + 33) = 0;
  if (v24)
  {
    MEMORY[0x29C257E70](v24, 0x1000C40B8E3674DLL);
  }

  v25 = *(this + 32);
  *(this + 32) = 0;
  if (v25)
  {
    MEMORY[0x29C257E70](v25, 0x1000C4052888210);
  }

  v26 = *(this + 29);
  if (v26)
  {
    *(this + 30) = v26;
    operator delete(v26);
  }

  v27 = *(this + 28);
  *(this + 28) = 0;
  if (v27)
  {
    MEMORY[0x29C257E70](v27, 0x1000C4077774924);
  }

  v28 = *(this + 27);
  *(this + 27) = 0;
  if (v28)
  {
    MEMORY[0x29C257E70](v28, 0x1000C4052888210);
  }

  v29 = *(this + 26);
  *(this + 26) = 0;
  if (v29)
  {
    MEMORY[0x29C257E70](v29, 0x1000C4052888210);
  }

  v30 = *(this + 25);
  *(this + 25) = 0;
  if (v30)
  {
    MEMORY[0x29C257E70](v30, 0x1000C4000313F17);
  }

  v31 = *(this + 24);
  *(this + 24) = 0;
  if (v31)
  {
    MEMORY[0x29C257E70](v31, 0x1000C4052888210);
  }

  v32 = *(this + 23);
  *(this + 23) = 0;
  if (v32)
  {
    MEMORY[0x29C257E70](v32, 0x1000C4052888210);
  }

  v33 = *(this + 22);
  *(this + 22) = 0;
  if (v33)
  {
    MEMORY[0x29C257E70](v33, 0x1000C4052888210);
  }

  v34 = *(this + 21);
  *(this + 21) = 0;
  if (v34)
  {
    MEMORY[0x29C257E70](v34, 0x1000C4052888210);
  }

  v35 = *(this + 20);
  *(this + 20) = 0;
  if (v35)
  {
    MEMORY[0x29C257E70](v35, 0x1000C40B4868423);
  }

  v36 = *(this + 19);
  *(this + 19) = 0;
  if (v36)
  {
    MEMORY[0x29C257E70](v36, 0x1000C4052888210);
  }

  v37 = *(this + 18);
  *(this + 18) = 0;
  if (v37)
  {
    MEMORY[0x29C257E70](v37, 0x1000C40FF89C88ELL);
  }

  v38 = *(this + 17);
  *(this + 17) = 0;
  if (v38)
  {
    MEMORY[0x29C257E70](v38, 0x1000C4052888210);
  }

  v39 = *(this + 16);
  *(this + 16) = 0;
  if (v39)
  {
    MEMORY[0x29C257E70](v39, 0x1000C40A86A77D5);
  }

  v40 = *(this + 13);
  if (v40)
  {
    *(this + 14) = v40;
    operator delete(v40);
  }

  v41 = *(this + 12);
  *(this + 12) = 0;
  if (v41)
  {
    MEMORY[0x29C257E70](v41, 0x1000C40504FFAC1);
  }

  v42 = *(this + 11);
  *(this + 11) = 0;
  if (v42)
  {
    MEMORY[0x29C257E70](v42, 0x1000C4052888210);
  }

  v43 = *(this + 10);
  *(this + 10) = 0;
  if (v43)
  {
    MEMORY[0x29C257E70](v43, 0x1000C4052888210);
  }

  v44 = *(this + 9);
  *(this + 9) = 0;
  if (v44)
  {
    MEMORY[0x29C257E70](v44, 0x1000C4052888210);
  }

  v45 = *(this + 8);
  *(this + 8) = 0;
  if (v45)
  {
    MEMORY[0x29C257E70](v45, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK::~ARI_IBICallPsActivateStatusIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK::pack(AriSdk::ARI_IBICallPsActivateStatusIndCb_SDK *this, AriMsg **a2)
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
          if (!v9 || (result = AriMsg::pack(*(this + 6), 5, v9, 0x18uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 6, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 7, v12, 0x14uLL, 0), !result))
              {
                v13 = *(this + 17);
                if (!v13 || (result = AriMsg::pack(*(this + 6), 8, v13, 4uLL, 0), !result))
                {
                  v14 = *(this + 18);
                  if (!v14 || (result = AriMsg::pack(*(this + 6), 9, v14, 0x48uLL, 0), !result))
                  {
                    v15 = *(this + 19);
                    if (!v15 || (result = AriMsg::pack(*(this + 6), 10, v15, 4uLL, 0), !result))
                    {
                      v16 = *(this + 20);
                      if (!v16 || (result = AriMsg::pack(*(this + 6), 11, v16, 0x14uLL, 0), !result))
                      {
                        v17 = *(this + 21);
                        if (!v17 || (result = AriMsg::pack(*(this + 6), 12, v17, 4uLL, 0), !result))
                        {
                          v18 = *(this + 22);
                          if (!v18 || (result = AriMsg::pack(*(this + 6), 13, v18, 4uLL, 0), !result))
                          {
                            v19 = *(this + 23);
                            if (!v19 || (result = AriMsg::pack(*(this + 6), 14, v19, 4uLL, 0), !result))
                            {
                              v20 = *(this + 24);
                              if (!v20 || (result = AriMsg::pack(*(this + 6), 15, v20, 4uLL, 0), !result))
                              {
                                v21 = *(this + 25);
                                if (!v21 || (result = AriMsg::pack(*(this + 6), 16, v21, 8uLL, 0), !result))
                                {
                                  v22 = *(this + 26);
                                  if (!v22 || (result = AriMsg::pack(*(this + 6), 17, v22, 4uLL, 0), !result))
                                  {
                                    v23 = *(this + 27);
                                    if (!v23 || (result = AriMsg::pack(*(this + 6), 18, v23, 4uLL, 0), !result))
                                    {
                                      v24 = *(this + 28);
                                      if (!v24 || (result = AriMsg::pack(*(this + 6), 19, v24, 1uLL, 0), !result))
                                      {
                                        v25 = *(this + 29);
                                        if (!v25 || (v26 = *(this + 30), v25 == v26) || (result = AriMsg::pack(*(this + 6), 20, v25, v26 - v25, 0), !result))
                                        {
                                          v27 = *(this + 32);
                                          if (!v27 || (result = AriMsg::pack(*(this + 6), 21, v27, 4uLL, 0), !result))
                                          {
                                            v28 = *(this + 33);
                                            if (!v28 || (result = AriMsg::pack(*(this + 6), 22, v28, 0x480uLL, 0), !result))
                                            {
                                              v29 = *(this + 34);
                                              if (!v29 || (result = AriMsg::pack(*(this + 6), 23, v29, 0x48uLL, 0), !result))
                                              {
                                                v30 = *(this + 35);
                                                if (!v30 || (result = AriMsg::pack(*(this + 6), 24, v30, 0x24uLL, 0), !result))
                                                {
                                                  v31 = *(this + 36);
                                                  if (!v31 || (result = AriMsg::pack(*(this + 6), 25, v31, 1uLL, 0), !result))
                                                  {
                                                    v32 = *(this + 37);
                                                    if (!v32 || (result = AriMsg::pack(*(this + 6), 26, v32, 1uLL, 0), !result))
                                                    {
                                                      v33 = *(this + 38);
                                                      if (!v33 || (result = AriMsg::pack(*(this + 6), 27, v33, 1uLL, 0), !result))
                                                      {
                                                        v34 = *(this + 39);
                                                        if (!v34 || (v35 = *(this + 40), v34 == v35) || (result = AriMsg::pack(*(this + 6), 28, v34, v35 - v34, 0), !result))
                                                        {
                                                          v36 = *(this + 42);
                                                          if (!v36 || (result = AriMsg::pack(*(this + 6), 29, v36, 4uLL, 0), !result))
                                                          {
                                                            v37 = *(this + 43);
                                                            if (!v37 || (result = AriMsg::pack(*(this + 6), 30, v37, 4uLL, 0), !result))
                                                            {
                                                              v38 = *(this + 44);
                                                              if (!v38 || (result = AriMsg::pack(*(this + 6), 31, v38, 0xAuLL, 0), !result))
                                                              {
                                                                v39 = *(this + 45);
                                                                if (!v39 || (result = AriMsg::pack(*(this + 6), 32, v39, 8uLL, 0), !result))
                                                                {
                                                                  v40 = *(this + 46);
                                                                  if (!v40 || (result = AriMsg::pack(*(this + 6), 33, v40, 4uLL, 0), !result))
                                                                  {
                                                                    v41 = *(this + 47);
                                                                    if (!v41 || (result = AriMsg::pack(*(this + 6), 34, v41, 2uLL, 0), !result))
                                                                    {
                                                                      v42 = *(this + 48);
                                                                      if (!v42 || (result = AriMsg::pack(*(this + 6), 35, v42, 0x102uLL, 0), !result))
                                                                      {
                                                                        v43 = *(this + 49);
                                                                        if (!v43 || (result = AriMsg::pack(*(this + 6), 36, v43, 0x102uLL, 0), !result))
                                                                        {
                                                                          v44 = *(this + 50);
                                                                          if (!v44 || (result = AriMsg::pack(*(this + 6), 37, v44, 0x102uLL, 0), !result))
                                                                          {
                                                                            v45 = *(this + 51);
                                                                            if (!v45 || (result = AriMsg::pack(*(this + 6), 38, v45, 0x102uLL, 0), !result))
                                                                            {
                                                                              v46 = *(this + 52);
                                                                              if (!v46 || (result = AriMsg::pack(*(this + 6), 39, v46, 4uLL, 0), !result))
                                                                              {
                                                                                v47 = *(this + 53);
                                                                                if (!v47 || (result = AriMsg::pack(*(this + 6), 40, v47, 0x28uLL, 0), !result))
                                                                                {
                                                                                  v48 = *(this + 54);
                                                                                  if (!v48 || (result = AriMsg::pack(*(this + 6), 41, v48, 1uLL, 0), !result))
                                                                                  {
                                                                                    v49 = *(this + 55);
                                                                                    if (!v49 || (v50 = *(this + 56), v49 == v50) || (result = AriMsg::pack(*(this + 6), 42, v49, v50 - v49, 0), !result))
                                                                                    {
                                                                                      v51 = *(this + 58);
                                                                                      if (!v51 || (result = AriMsg::pack(*(this + 6), 43, v51, 4uLL, 0), !result))
                                                                                      {
                                                                                        v52 = *(this + 59);
                                                                                        if (!v52 || (result = AriMsg::pack(*(this + 6), 44, v52, 4uLL, 0), !result))
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

  return result;
}

std::vector<int> *AriSdk::TlvArray<char,101ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x66)
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
      v23 = 101;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, __c->n128_u64[1] - __c->n128_u64[0], 101);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29605EFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICallPsPacketFilter,16ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0x8F9C18F9C18F9C19 * ((*(a2 + 1) - *a2) >> 2) < 0x11)
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
      v12 = 0x8F9C18F9C18F9C19 * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 16;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0x8F9C18F9C18F9C19 * ((*(a2 + 1) - *a2) >> 2), 16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29605F368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICallPsQosRule,3ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xC15367A74ABA181BLL * ((*(a2 + 1) - *a2) >> 2) < 4)
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
      v12 = 0xC15367A74ABA181BLL * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 3;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xC15367A74ABA181BLL * ((*(a2 + 1) - *a2) >> 2), 3);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29605F698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AriOsa *AriSdk::TlvArray<IBICallPsPacketFilter_V2,16ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if ((0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2)) < 0x11)
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
      v12 = 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2);
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
      v25 = 16;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xF83E0F83E0F83E1 * ((*(a2 + 1) - *a2) >> 2), 16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29605FAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210042880, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210042880, 0);
}

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK::~ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK *this)
{
  *this = &unk_2A1D1F568;
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
  AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK::~ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK::pack(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218431488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218431488, 0);
}

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK::~ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK *this)
{
  *this = &unk_2A1D1F5A0;
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
  AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK::~ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK::pack(AriSdk::ARI_IBICallPsAllowMultiplePDNToSameApnRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::ARI_IBICallPsBandwidthEstimationInd_SDK(AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227573760, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227573760, 0);
}

void AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::ARI_IBICallPsBandwidthEstimationInd_SDK(AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::~ARI_IBICallPsBandwidthEstimationInd_SDK(AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK *this)
{
  *this = &unk_2A1D1F5D8;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40BDFB0063);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C4005A209FELL);
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
    MEMORY[0x29C257E70](v5, 0x1000C40616D9E62);
  }

  v6 = *(this + 12);
  *(this + 12) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C40789AEA99);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4087442A64);
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
    MEMORY[0x29C257E70](v9, 0x1000C408AA14F5FLL);
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
  AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::~ARI_IBICallPsBandwidthEstimationInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK::pack(AriSdk::ARI_IBICallPsBandwidthEstimationInd_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 0x24uLL, 0), !result))
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
            if (!v10 || (result = AriMsg::pack(*(this + 6), 6, v10, 0x24uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 7, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 0xCuLL, 0), !result))
                {
                  v13 = *(this + 16);
                  if (!v13 || (result = AriMsg::pack(*(this + 6), 9, v13, 2uLL, 0), !result))
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

void AriSdk::ARI_IBICallPsSBipConfigReq_SDK::ARI_IBICallPsSBipConfigReq_SDK(AriSdk::ARI_IBICallPsSBipConfigReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211746816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211746816, 0);
}

void AriSdk::ARI_IBICallPsSBipConfigReq_SDK::ARI_IBICallPsSBipConfigReq_SDK(AriSdk::ARI_IBICallPsSBipConfigReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsSBipConfigReq_SDK::~ARI_IBICallPsSBipConfigReq_SDK(AriSdk::ARI_IBICallPsSBipConfigReq_SDK *this)
{
  *this = &unk_2A1D1F610;
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
  AriSdk::ARI_IBICallPsSBipConfigReq_SDK::~ARI_IBICallPsSBipConfigReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsSBipConfigReq_SDK::pack(AriSdk::ARI_IBICallPsSBipConfigReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsSBipConfigReq_SDK::unpack(AriSdk::ARI_IBICallPsSBipConfigReq_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_2960613BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBICallPsBipConfigRspCb_SDK::ARI_IBICallPsBipConfigRspCb_SDK(AriSdk::ARI_IBICallPsBipConfigRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220135424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220135424, 0);
}

void AriSdk::ARI_IBICallPsBipConfigRspCb_SDK::ARI_IBICallPsBipConfigRspCb_SDK(AriSdk::ARI_IBICallPsBipConfigRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsBipConfigRspCb_SDK::~ARI_IBICallPsBipConfigRspCb_SDK(AriSdk::ARI_IBICallPsBipConfigRspCb_SDK *this)
{
  *this = &unk_2A1D1F648;
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
  AriSdk::ARI_IBICallPsBipConfigRspCb_SDK::~ARI_IBICallPsBipConfigRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsBipConfigRspCb_SDK::pack(AriSdk::ARI_IBICallPsBipConfigRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsBipQueryIndCb_SDK::ARI_IBICallPsBipQueryIndCb_SDK(AriSdk::ARI_IBICallPsBipQueryIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227180544, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227180544, 0);
}

void AriSdk::ARI_IBICallPsBipQueryIndCb_SDK::ARI_IBICallPsBipQueryIndCb_SDK(AriSdk::ARI_IBICallPsBipQueryIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsBipQueryIndCb_SDK::~ARI_IBICallPsBipQueryIndCb_SDK(AriSdk::ARI_IBICallPsBipQueryIndCb_SDK *this)
{
  *this = &unk_2A1D1F680;
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
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
  }

  v4 = *(this + 12);
  *(this + 12) = 0;
  if (v4)
  {
    MEMORY[0x29C257E70](v4, 0x1000C40504FFAC1);
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
  AriSdk::ARI_IBICallPsBipQueryIndCb_SDK::~ARI_IBICallPsBipQueryIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsBipQueryIndCb_SDK::pack(AriSdk::ARI_IBICallPsBipQueryIndCb_SDK *this, AriMsg **a2)
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
      if (!v9 || (result = AriMsg::pack(*(this + 6), 3, v9, 0x18uLL, 0), !result))
      {
        v10 = *(this + 13);
        if (!v10 || (result = AriMsg::pack(*(this + 6), 4, v10, 2uLL, 0), !result))
        {
          v11 = *(this + 14);
          if (!v11 || (result = AriMsg::pack(*(this + 6), 5, v11, 4uLL, 0), !result))
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

void AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::ARI_IBICallPsBreadButterModeReq_SDK(AriSdk::ARI_IBICallPsBreadButterModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211484672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211484672, 0);
}

void AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::ARI_IBICallPsBreadButterModeReq_SDK(AriSdk::ARI_IBICallPsBreadButterModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::~ARI_IBICallPsBreadButterModeReq_SDK(AriSdk::ARI_IBICallPsBreadButterModeReq_SDK *this)
{
  *this = &unk_2A1D1F6B8;
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
  AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::~ARI_IBICallPsBreadButterModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsBreadButterModeReq_SDK::pack(AriSdk::ARI_IBICallPsBreadButterModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219873280, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219873280, 0);
}

void AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::~ARI_IBICallPsBreadButterModeRspCb_SDK(AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK *this)
{
  *this = &unk_2A1D1F6F0;
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
  AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::~ARI_IBICallPsBreadButterModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::pack(AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK::ARI_IBICallPsCriticalPsSessionReq_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211615744, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211615744, 0);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK::ARI_IBICallPsCriticalPsSessionReq_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK::~ARI_IBICallPsCriticalPsSessionReq_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK *this)
{
  *this = &unk_2A1D1F728;
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
  AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK::~ARI_IBICallPsCriticalPsSessionReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK::pack(AriSdk::ARI_IBICallPsCriticalPsSessionReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK::ARI_IBICallPsCriticalPsSessionRspCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220004352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220004352, 0);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK::ARI_IBICallPsCriticalPsSessionRspCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK::~ARI_IBICallPsCriticalPsSessionRspCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK *this)
{
  *this = &unk_2A1D1F760;
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
  AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK::~ARI_IBICallPsCriticalPsSessionRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK::pack(AriSdk::ARI_IBICallPsCriticalPsSessionRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK::ARI_IBICallPsCriticalPsSessionIndCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227115008, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227115008, 0);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK::ARI_IBICallPsCriticalPsSessionIndCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK::~ARI_IBICallPsCriticalPsSessionIndCb_SDK(AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK *this)
{
  *this = &unk_2A1D1F798;
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
  AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK::~ARI_IBICallPsCriticalPsSessionIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK::pack(AriSdk::ARI_IBICallPsCriticalPsSessionIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK::ARI_IBICallPsDataBearerInfoIndCb_SDK(AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227540992, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227540992, 0);
}

void AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK::ARI_IBICallPsDataBearerInfoIndCb_SDK(AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK::~ARI_IBICallPsDataBearerInfoIndCb_SDK(AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK *this)
{
  *this = &unk_2A1D1F7D0;
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
  AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK::~ARI_IBICallPsDataBearerInfoIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK::pack(AriSdk::ARI_IBICallPsDataBearerInfoIndCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK::ARI_IBICallPsDataCallStoppedIndCb_SDK(AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226557952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226557952, 0);
}

void AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK::ARI_IBICallPsDataCallStoppedIndCb_SDK(AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK::~ARI_IBICallPsDataCallStoppedIndCb_SDK(AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK *this)
{
  *this = &unk_2A1D1F808;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4000313F17);
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
  AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK::~ARI_IBICallPsDataCallStoppedIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK::pack(AriSdk::ARI_IBICallPsDataCallStoppedIndCb_SDK *this, AriMsg **a2)
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
        result = 0;
        *a2 = *(this + 6);
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK::ARI_IBICallPsDataPathCleanupReq_SDK(AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210403328, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210403328, 0);
}

void AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK::ARI_IBICallPsDataPathCleanupReq_SDK(AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK::~ARI_IBICallPsDataPathCleanupReq_SDK(AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK *this)
{
  *this = &unk_2A1D1F840;
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
  AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK::~ARI_IBICallPsDataPathCleanupReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK::pack(AriSdk::ARI_IBICallPsDataPathCleanupReq_SDK *this, AriMsg **a2)
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

void sub_296063E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

std::vector<int> *AriSdk::TlvArray<unsigned short,8ul>::operator=(std::vector<int> *this, __n128 *__c)
{
  v24 = *MEMORY[0x29EDCA608];
  if (__c->n128_u64[1] - __c->n128_u64[0] < 0x11)
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
      v10 = (__c->n128_u64[1] - __c->n128_u64[0]) >> 1;
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
      v23 = 8;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v5, v6, 360, this, (__c->n128_u64[1] - __c->n128_u64[0]) >> 1, 8);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_2960640A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK::ARI_IBICallPsDataPathCleanupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218791936, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218791936, 0);
}

void AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK::ARI_IBICallPsDataPathCleanupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK::~ARI_IBICallPsDataPathCleanupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK *this)
{
  *this = &unk_2A1D1F878;
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
  AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK::~ARI_IBICallPsDataPathCleanupRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK::pack(AriSdk::ARI_IBICallPsDataPathCleanupRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataPathSetupReq_SDK::ARI_IBICallPsDataPathSetupReq_SDK(AriSdk::ARI_IBICallPsDataPathSetupReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209977344, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 209977344, 0);
}

void AriSdk::ARI_IBICallPsDataPathSetupReq_SDK::ARI_IBICallPsDataPathSetupReq_SDK(AriSdk::ARI_IBICallPsDataPathSetupReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataPathSetupReq_SDK::~ARI_IBICallPsDataPathSetupReq_SDK(AriSdk::ARI_IBICallPsDataPathSetupReq_SDK *this)
{
  *this = &unk_2A1D1F8B0;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
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
  AriSdk::ARI_IBICallPsDataPathSetupReq_SDK::~ARI_IBICallPsDataPathSetupReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataPathSetupReq_SDK::pack(AriSdk::ARI_IBICallPsDataPathSetupReq_SDK *this, AriMsg **a2)
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
            if (!v10 || (v11 = *(this + 14), v10 == v11) || (result = AriMsg::pack(*(this + 6), 7, v10, v11 - v10, 0), !result))
            {
              v12 = *(this + 16);
              if (!v12 || (result = AriMsg::pack(*(this + 6), 8, v12, 4uLL, 0), !result))
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

AriOsa *AriSdk::TlvArray<IBICallPsPipeInfo,8ul>::operator=(AriOsa *a1, __int128 *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  if (0xE21A291C077975B9 * ((*(a2 + 1) - *a2) >> 3) < 9)
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
      v12 = 0xE21A291C077975B9 * ((*(a2 + 1) - *a2) >> 3);
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
      v25 = 8;
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

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v6, v7, 360, a1, 0xE21A291C077975B9 * ((*(a2 + 1) - *a2) >> 3), 8);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*__p);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296064E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK::ARI_IBICallPsDataPathSetupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218365952, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218365952, 0);
}

void AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK::ARI_IBICallPsDataPathSetupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK::~ARI_IBICallPsDataPathSetupRspCb_SDK(AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK *this)
{
  *this = &unk_2A1D1F8E8;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    MEMORY[0x29C257E70](v3, 0x1000C40BDFB0063);
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
  AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK::~ARI_IBICallPsDataPathSetupRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK::pack(AriSdk::ARI_IBICallPsDataPathSetupRspCb_SDK *this, AriMsg **a2)
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
        if (!v8 || (v9 = *(this + 12), v8 == v9) || (result = AriMsg::pack(*(this + 6), 5, v8, v9 - v8, 0), !result))
        {
          result = 0;
          *a2 = *(this + 6);
        }
      }
    }
  }

  return result;
}

void sub_296065370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C257E50](v12, v11);
  _Unwind_Resume(a1);
}

void AriSdk::ARI_IBICallPsDataStallInfoReq_SDK::ARI_IBICallPsDataStallInfoReq_SDK(AriSdk::ARI_IBICallPsDataStallInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211517440, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211517440, 0);
}

void AriSdk::ARI_IBICallPsDataStallInfoReq_SDK::ARI_IBICallPsDataStallInfoReq_SDK(AriSdk::ARI_IBICallPsDataStallInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataStallInfoReq_SDK::~ARI_IBICallPsDataStallInfoReq_SDK(AriSdk::ARI_IBICallPsDataStallInfoReq_SDK *this)
{
  *this = &unk_2A1D1F920;
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
  AriSdk::ARI_IBICallPsDataStallInfoReq_SDK::~ARI_IBICallPsDataStallInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataStallInfoReq_SDK::pack(AriSdk::ARI_IBICallPsDataStallInfoReq_SDK *this, AriMsg **a2)
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
            result = 0;
            *a2 = *(this + 6);
          }
        }
      }
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK::ARI_IBICallPsDataStallInfoRsbCb_SDK(AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219906048, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219906048, 0);
}

void AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK::ARI_IBICallPsDataStallInfoRsbCb_SDK(AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK::~ARI_IBICallPsDataStallInfoRsbCb_SDK(AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK *this)
{
  *this = &unk_2A1D1F958;
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
  AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK::~ARI_IBICallPsDataStallInfoRsbCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK::pack(AriSdk::ARI_IBICallPsDataStallInfoRsbCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataStallRegReq_SDK::ARI_IBICallPsDataStallRegReq_SDK(AriSdk::ARI_IBICallPsDataStallRegReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211550208, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211550208, 0);
}

void AriSdk::ARI_IBICallPsDataStallRegReq_SDK::ARI_IBICallPsDataStallRegReq_SDK(AriSdk::ARI_IBICallPsDataStallRegReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataStallRegReq_SDK::~ARI_IBICallPsDataStallRegReq_SDK(AriSdk::ARI_IBICallPsDataStallRegReq_SDK *this)
{
  *this = &unk_2A1D1F990;
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
  AriSdk::ARI_IBICallPsDataStallRegReq_SDK::~ARI_IBICallPsDataStallRegReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataStallRegReq_SDK::pack(AriSdk::ARI_IBICallPsDataStallRegReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK::ARI_IBICallPsDataStallRegRspCb_SDK(AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219938816, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219938816, 0);
}

void AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK::ARI_IBICallPsDataStallRegRspCb_SDK(AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK::~ARI_IBICallPsDataStallRegRspCb_SDK(AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK *this)
{
  *this = &unk_2A1D1F9C8;
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
  AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK::~ARI_IBICallPsDataStallRegRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK::pack(AriSdk::ARI_IBICallPsDataStallRegRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK::ARI_IBICallPsDataStallRegIndCb_SDK(AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 227049472, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 227049472, 0);
}

void AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK::ARI_IBICallPsDataStallRegIndCb_SDK(AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK::~ARI_IBICallPsDataStallRegIndCb_SDK(AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK *this)
{
  *this = &unk_2A1D1FA00;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C404A09149ALL);
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
  AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK::~ARI_IBICallPsDataStallRegIndCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK::pack(AriSdk::ARI_IBICallPsDataStallRegIndCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 2, v6, 8uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK::ARI_IBICallPsDataTransferTimeReq_SDK(AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210239488, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210239488, 0);
}

void AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK::ARI_IBICallPsDataTransferTimeReq_SDK(AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK::~ARI_IBICallPsDataTransferTimeReq_SDK(AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK *this)
{
  *this = &unk_2A1D1FA38;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C403E1C8BA9);
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
  AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK::~ARI_IBICallPsDataTransferTimeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK::pack(AriSdk::ARI_IBICallPsDataTransferTimeReq_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0xCuLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK::ARI_IBICallPsDataTransferTimeRspCb_SDK(AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218628096, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218628096, 0);
}

void AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK::ARI_IBICallPsDataTransferTimeRspCb_SDK(AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK::~ARI_IBICallPsDataTransferTimeRspCb_SDK(AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK *this)
{
  *this = &unk_2A1D1FA70;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C40A86A77D5);
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
  AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK::~ARI_IBICallPsDataTransferTimeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK::pack(AriSdk::ARI_IBICallPsDataTransferTimeRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x14uLL, 0), !result))
    {
      result = 0;
      *a2 = *(this + 6);
    }
  }

  return result;
}

void AriSdk::ARI_IBICallPsDeRegisterFT_SDK::ARI_IBICallPsDeRegisterFT_SDK(AriSdk::ARI_IBICallPsDeRegisterFT_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209879040, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 209879040, 1);
}

void AriSdk::ARI_IBICallPsDeRegisterFT_SDK::ARI_IBICallPsDeRegisterFT_SDK(AriSdk::ARI_IBICallPsDeRegisterFT_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDeRegisterFT_SDK::~ARI_IBICallPsDeRegisterFT_SDK(AriSdk::ARI_IBICallPsDeRegisterFT_SDK *this)
{
  *this = &unk_2A1D1FAA8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsDeRegisterFT_SDK::~ARI_IBICallPsDeRegisterFT_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDeRegisterFT_SDK::pack(AriSdk::ARI_IBICallPsDeRegisterFT_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDropIPPackets_SDK::ARI_IBICallPsDropIPPackets_SDK(AriSdk::ARI_IBICallPsDropIPPackets_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 209911808, 1);
}

{
  AriSdk::MsgBase::MsgBase(this, 209911808, 1);
}

void AriSdk::ARI_IBICallPsDropIPPackets_SDK::ARI_IBICallPsDropIPPackets_SDK(AriSdk::ARI_IBICallPsDropIPPackets_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsDropIPPackets_SDK::~ARI_IBICallPsDropIPPackets_SDK(AriSdk::ARI_IBICallPsDropIPPackets_SDK *this)
{
  *this = &unk_2A1D1FAE0;
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
  AriSdk::ARI_IBICallPsDropIPPackets_SDK::~ARI_IBICallPsDropIPPackets_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsDropIPPackets_SDK::pack(AriSdk::ARI_IBICallPsDropIPPackets_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsDropIPPackets_SDK::unpack(AriSdk::ARI_IBICallPsDropIPPackets_SDK *this)
{
  v2 = *MEMORY[0x29EDCA608];
  LOBYTE(__p) = 0;
  operator new();
}

void sub_296067868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK::ARI_IBICallPsFDBackOffTimeInd_SDK(AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 226885632, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 226885632, 0);
}

void AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK::ARI_IBICallPsFDBackOffTimeInd_SDK(AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK::~ARI_IBICallPsFDBackOffTimeInd_SDK(AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK *this)
{
  *this = &unk_2A1D1FB18;
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
  AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK::~ARI_IBICallPsFDBackOffTimeInd_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK::pack(AriSdk::ARI_IBICallPsFDBackOffTimeInd_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsFlushDataReq_SDK::ARI_IBICallPsFlushDataReq_SDK(AriSdk::ARI_IBICallPsFlushDataReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210075648, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210075648, 0);
}

void AriSdk::ARI_IBICallPsFlushDataReq_SDK::ARI_IBICallPsFlushDataReq_SDK(AriSdk::ARI_IBICallPsFlushDataReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsFlushDataReq_SDK::~ARI_IBICallPsFlushDataReq_SDK(AriSdk::ARI_IBICallPsFlushDataReq_SDK *this)
{
  *this = &unk_2A1D1FB50;
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
  AriSdk::ARI_IBICallPsFlushDataReq_SDK::~ARI_IBICallPsFlushDataReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsFlushDataReq_SDK::pack(AriSdk::ARI_IBICallPsFlushDataReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsFlushDataRspCb_SDK::ARI_IBICallPsFlushDataRspCb_SDK(AriSdk::ARI_IBICallPsFlushDataRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218464256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218464256, 0);
}

void AriSdk::ARI_IBICallPsFlushDataRspCb_SDK::ARI_IBICallPsFlushDataRspCb_SDK(AriSdk::ARI_IBICallPsFlushDataRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsFlushDataRspCb_SDK::~ARI_IBICallPsFlushDataRspCb_SDK(AriSdk::ARI_IBICallPsFlushDataRspCb_SDK *this)
{
  *this = &unk_2A1D1FB88;
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
  AriSdk::ARI_IBICallPsFlushDataRspCb_SDK::~ARI_IBICallPsFlushDataRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsFlushDataRspCb_SDK::pack(AriSdk::ARI_IBICallPsFlushDataRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK::ARI_IBICallPsFreePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211943424, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211943424, 0);
}

void AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK::ARI_IBICallPsFreePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK::~ARI_IBICallPsFreePDUSessionIDReq_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK *this)
{
  *this = &unk_2A1D1FBC0;
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
  AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK::~ARI_IBICallPsFreePDUSessionIDReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK::pack(AriSdk::ARI_IBICallPsFreePDUSessionIDReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK::ARI_IBICallPsFreePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220332032, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220332032, 0);
}

void AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK::ARI_IBICallPsFreePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK::~ARI_IBICallPsFreePDUSessionIDRspCb_SDK(AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK *this)
{
  *this = &unk_2A1D1FBF8;
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
  AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK::~ARI_IBICallPsFreePDUSessionIDRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK::pack(AriSdk::ARI_IBICallPsFreePDUSessionIDRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 212336640, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 212336640, 0);
}

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK::~ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK *this)
{
  *this = &unk_2A1D1FC30;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK::~ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK::pack(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220725248, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220725248, 0);
}

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK::~ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1FC68;
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4005A209FELL);
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
    MEMORY[0x29C257E70](v4, 0x1000C40616D9E62);
  }

  v5 = *(this + 12);
  *(this + 12) = 0;
  if (v5)
  {
    MEMORY[0x29C257E70](v5, 0x1000C40789AEA99);
  }

  v6 = *(this + 11);
  *(this + 11) = 0;
  if (v6)
  {
    MEMORY[0x29C257E70](v6, 0x1000C4087442A64);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    MEMORY[0x29C257E70](v7, 0x1000C4000313F17);
  }

  v8 = *(this + 9);
  *(this + 9) = 0;
  if (v8)
  {
    MEMORY[0x29C257E70](v8, 0x1000C408AA14F5FLL);
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
  AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK::~ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK::pack(AriSdk::ARI_IBICallPsGetBandwidthEstimationInfoRspCb_SDK *this, AriMsg **a2)
{
  *a2 = 0;
  v4 = *(this + 8);
  if (!v4 || (result = AriMsg::pack(*(this + 6), 1, v4, 4uLL, 0), !result))
  {
    v6 = *(this + 9);
    if (!v6 || (result = AriMsg::pack(*(this + 6), 3, v6, 0x24uLL, 0), !result))
    {
      v7 = *(this + 10);
      if (!v7 || (result = AriMsg::pack(*(this + 6), 4, v7, 8uLL, 0), !result))
      {
        v8 = *(this + 11);
        if (!v8 || (result = AriMsg::pack(*(this + 6), 5, v8, 8uLL, 0), !result))
        {
          v9 = *(this + 12);
          if (!v9 || (result = AriMsg::pack(*(this + 6), 6, v9, 8uLL, 0), !result))
          {
            v10 = *(this + 13);
            if (!v10 || (result = AriMsg::pack(*(this + 6), 7, v10, 0x24uLL, 0), !result))
            {
              v11 = *(this + 14);
              if (!v11 || (result = AriMsg::pack(*(this + 6), 8, v11, 4uLL, 0), !result))
              {
                v12 = *(this + 15);
                if (!v12 || (result = AriMsg::pack(*(this + 6), 9, v12, 0xCuLL, 0), !result))
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

void AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK::ARI_IBICallPsGetDataBearerInfoReq_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211812352, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211812352, 0);
}

void AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK::ARI_IBICallPsGetDataBearerInfoReq_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK::~ARI_IBICallPsGetDataBearerInfoReq_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK *this)
{
  *this = &unk_2A1D1FCA0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    MEMORY[0x29C257E70](v2, 0x1000C4052888210);
  }

  AriSdk::MsgBase::~MsgBase(this);
}

{
  AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK::~ARI_IBICallPsGetDataBearerInfoReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK::pack(AriSdk::ARI_IBICallPsGetDataBearerInfoReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK::ARI_IBICallPsGetDataBearerInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 220200960, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 220200960, 0);
}

void AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK::ARI_IBICallPsGetDataBearerInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK::~ARI_IBICallPsGetDataBearerInfoRspCb_SDK(AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK *this)
{
  *this = &unk_2A1D1FCD8;
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
  AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK::~ARI_IBICallPsGetDataBearerInfoRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK::pack(AriSdk::ARI_IBICallPsGetDataBearerInfoRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 211288064, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 211288064, 0);
}

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK::~ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK *this)
{
  *this = &unk_2A1D1FD10;
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
  AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK::~ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK::pack(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 219676672, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 219676672, 0);
}

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK::~ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK *this)
{
  *this = &unk_2A1D1FD48;
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
  AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK::~ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK::pack(AriSdk::ARI_IBICallPsIPV6AddrFormationSuccessRspCb_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsImsTestModeReq_SDK::ARI_IBICallPsImsTestModeReq_SDK(AriSdk::ARI_IBICallPsImsTestModeReq_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 210272256, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 210272256, 0);
}

void AriSdk::ARI_IBICallPsImsTestModeReq_SDK::ARI_IBICallPsImsTestModeReq_SDK(AriSdk::ARI_IBICallPsImsTestModeReq_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsImsTestModeReq_SDK::~ARI_IBICallPsImsTestModeReq_SDK(AriSdk::ARI_IBICallPsImsTestModeReq_SDK *this)
{
  *this = &unk_2A1D1FD80;
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
    MEMORY[0x29C257E70](v3, 0x1000C4077774924);
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
  AriSdk::ARI_IBICallPsImsTestModeReq_SDK::~ARI_IBICallPsImsTestModeReq_SDK(this);

  JUMPOUT(0x29C257E70);
}

uint64_t AriSdk::ARI_IBICallPsImsTestModeReq_SDK::pack(AriSdk::ARI_IBICallPsImsTestModeReq_SDK *this, AriMsg **a2)
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

void AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK::ARI_IBICallPsImsTestModeRspCb_SDK(AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK *this)
{
  AriSdk::MsgBase::MsgBase(this, 218660864, 0);
}

{
  AriSdk::MsgBase::MsgBase(this, 218660864, 0);
}

void AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK::ARI_IBICallPsImsTestModeRspCb_SDK(AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK *this, const unsigned __int8 *a2, int a3)
{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

{
  AriSdk::MsgBase::MsgBase(this, a2, a3);
}

void AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK::~ARI_IBICallPsImsTestModeRspCb_SDK(AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK *this)
{
  *this = &unk_2A1D1FDB8;
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
  AriSdk::ARI_IBICallPsImsTestModeRspCb_SDK::~ARI_IBICallPsImsTestModeRspCb_SDK(this);

  JUMPOUT(0x29C257E70);
}